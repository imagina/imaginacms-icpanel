-- --------------------------------------------------------
-- Host:                         app.imagina.com.co
-- Server version:               5.7.26 - MySQL Community Server (GPL)
-- Server OS:                    Linux
-- HeidiSQL Version:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table appimagi_enbogot.activations
CREATE TABLE IF NOT EXISTS `activations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.activations: ~7 rows (approximately)
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
INSERT INTO `activations` (`id`, `user_id`, `code`, `completed`, `completed_at`, `created_at`, `updated_at`) VALUES
	(1, 1, 'tiK4XxlRN6N09dXIQ2v0V75Jzs1z63PP', 1, '2019-04-16 16:21:49', '2019-04-16 16:21:49', '2019-04-16 16:21:49'),
	(2, 2, 'w3UggxxVrSWUX7BzVUPLq0QmmLkimmnS', 1, '2019-05-06 15:03:25', '2019-05-06 15:03:25', '2019-05-06 15:03:25'),
	(3, 3, 'YIQTjBuJ4sCrdmw662I58KVzHrWew62B', 1, '2019-05-07 23:49:03', '2019-05-07 23:49:03', '2019-05-07 23:49:03'),
	(4, 4, 'wlvoxgeuiTI4xUfJn2BIyqnn6LslUqqg', 1, '2019-06-14 18:45:11', '2019-06-14 18:45:11', '2019-06-14 18:45:11'),
	(5, 5, '1HacTadtusbyQN9E5qBYPe8gcHewszaZ', 1, '2019-08-03 10:35:04', '2019-08-03 10:35:04', '2019-08-03 10:35:04'),
	(6, 6, '2Fl7nwsTln3dvzT76YxVj6zyoT0RdD3U', 1, '2019-08-03 10:38:19', '2019-08-03 10:38:19', '2019-08-03 10:38:19'),
	(7, 7, '43LD6RisQMJydyKRmxdA3hTmJ2chE1yS', 1, '2019-08-12 09:50:42', '2019-08-12 09:50:42', '2019-08-12 09:50:42');
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.dashboard__widgets
CREATE TABLE IF NOT EXISTS `dashboard__widgets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `widgets` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dashboard__widgets_user_id_foreign` (`user_id`),
  CONSTRAINT `dashboard__widgets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.dashboard__widgets: ~0 rows (approximately)
/*!40000 ALTER TABLE `dashboard__widgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard__widgets` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.ibanners__banners
CREATE TABLE IF NOT EXISTS `ibanners__banners` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` text COLLATE utf8mb4_unicode_ci,
  `options` text COLLATE utf8mb4_unicode_ci,
  `status` int(10) unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.ibanners__banners: ~0 rows (approximately)
/*!40000 ALTER TABLE `ibanners__banners` DISABLE KEYS */;
/*!40000 ALTER TABLE `ibanners__banners` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.ibanners__banner__category
CREATE TABLE IF NOT EXISTS `ibanners__banner__category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `banner_id` int(10) unsigned NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.ibanners__banner__category: 0 rows
/*!40000 ALTER TABLE `ibanners__banner__category` DISABLE KEYS */;
/*!40000 ALTER TABLE `ibanners__banner__category` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.ibanners__categories
CREATE TABLE IF NOT EXISTS `ibanners__categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `lft` int(10) unsigned DEFAULT NULL,
  `rgt` int(10) unsigned DEFAULT NULL,
  `depth` int(10) unsigned DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ibanners__categories_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.ibanners__categories: ~0 rows (approximately)
/*!40000 ALTER TABLE `ibanners__categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ibanners__categories` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.iblog__categories
CREATE TABLE IF NOT EXISTS `iblog__categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `lft` int(10) unsigned DEFAULT NULL,
  `rgt` int(10) unsigned DEFAULT NULL,
  `depth` int(10) unsigned DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.iblog__categories: ~0 rows (approximately)
/*!40000 ALTER TABLE `iblog__categories` DISABLE KEYS */;
INSERT INTO `iblog__categories` (`id`, `parent_id`, `lft`, `rgt`, `depth`, `options`, `created_at`, `updated_at`) VALUES
	(1, 0, NULL, NULL, NULL, '{"masterRecord":1}', '2019-07-23 16:56:44', '2019-08-13 16:13:20');
/*!40000 ALTER TABLE `iblog__categories` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.iblog__category_translations
CREATE TABLE IF NOT EXISTS `iblog__category_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `translatable_options` text COLLATE utf8mb4_unicode_ci,
  `category_id` int(10) unsigned NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `iblog__category_translations_category_id_locale_unique` (`category_id`,`locale`),
  KEY `iblog__category_translations_slug_index` (`slug`),
  KEY `iblog__category_translations_locale_index` (`locale`),
  CONSTRAINT `iblog__category_translations_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `iblog__categories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.iblog__category_translations: ~0 rows (approximately)
/*!40000 ALTER TABLE `iblog__category_translations` DISABLE KEYS */;
INSERT INTO `iblog__category_translations` (`id`, `title`, `slug`, `description`, `meta_title`, `meta_description`, `meta_keywords`, `translatable_options`, `category_id`, `locale`) VALUES
	(1, 'De interes', 'de-interes', 'De interes', 'De interes', 'De interes', NULL, NULL, 1, 'es');
/*!40000 ALTER TABLE `iblog__category_translations` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.iblog__posts
CREATE TABLE IF NOT EXISTS `iblog__posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `options` text COLLATE utf8mb4_unicode_ci,
  `status` int(10) unsigned NOT NULL DEFAULT '0',
  `category_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `iblog__posts_category_id_foreign` (`category_id`),
  KEY `iblog__posts_user_id_foreign` (`user_id`),
  CONSTRAINT `iblog__posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `iblog__categories` (`id`),
  CONSTRAINT `iblog__posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.iblog__posts: ~2 rows (approximately)
/*!40000 ALTER TABLE `iblog__posts` DISABLE KEYS */;
INSERT INTO `iblog__posts` (`id`, `options`, `status`, `category_id`, `user_id`, `created_at`, `updated_at`) VALUES
	(1, '{"masterRecord":0}', 3, 1, 1, '2019-07-23 16:57:01', '2019-08-03 12:21:30'),
	(2, '{"masterRecord":0}', 2, 1, 1, '2019-07-23 17:00:57', '2019-08-03 12:16:13');
/*!40000 ALTER TABLE `iblog__posts` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.iblog__post_translations
CREATE TABLE IF NOT EXISTS `iblog__post_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `translatable_options` text COLLATE utf8mb4_unicode_ci,
  `post_id` int(10) unsigned NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `iblog__post_translations_post_id_locale_unique` (`post_id`,`locale`),
  KEY `iblog__post_translations_slug_index` (`slug`),
  KEY `iblog__post_translations_locale_index` (`locale`),
  CONSTRAINT `iblog__post_translations_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `iblog__posts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.iblog__post_translations: ~2 rows (approximately)
/*!40000 ALTER TABLE `iblog__post_translations` DISABLE KEYS */;
INSERT INTO `iblog__post_translations` (`id`, `title`, `slug`, `description`, `summary`, `meta_title`, `meta_description`, `meta_keywords`, `translatable_options`, `post_id`, `locale`) VALUES
	(1, 'Acerca de', 'acerca-de', '<div style="text-align: justify;"><font color="#777777" face="Open Sans, Helvetica Neue, Helvetica, Arial, sans-serif"><span style="font-size: 13px;">IMAGINA COLOMBIA es una empresa con una trayectoria de más de 10 años,&nbsp; dedicada al desarrollo de sitios&nbsp; Web personalizados totalmente administrables, desarrollo de aplicaciones web y&nbsp; móviles (Smartphone, Tablets), tiendas virtuales y&nbsp; venta de servicios de Hosting y Dominio. Integramos sistemas abiertos de CMS como WordPress, Joomla, Drupal y sistemas de venta y catálogos en línea Magento, Prestashop, Opencart, Zen Cart, Oscommerce; Contamos con un equipo de trabajo con un alto grado de profesionalidad, íntegro y responsable.</span></font></div>', 'IMAGINA COLOMBIA', 'Acerca de', 'IMAGINA COLOMBIA', NULL, NULL, 1, 'es'),
	(2, 'Trabaja con nosotros', 'trabaja-con-nosotros', '<div>Si crees que tienes el talento como programador web, diseñador web y/o gráfico o quieres hacer parte del equipo de ventas envíanos tu hoja de vida o habla con nosotros.</div><div><br></div><div>Ofertas de Empleo disponibles:</div><div>Desarrollador / Programador Web</div><div>Detalles adicionales de la oferta de empleo:</div><div><br></div><div>Se necesita programador con experiencia para realizar proyectos web en Javascript/PHP/HTML5/Mysql</div><div><br></div><div>Las siguientes competencias son complementarias y un +plus para el proceso de selección:</div><div><br></div><div>VueJS</div><div>Framework Laravel 5+</div><div>PHP7 y Orientación a Objetos / MVC.</div><div>HTML5</div><div>CSS</div><div>Eloquent Sql</div><div>Sistema de Plantillas BLADE</div><div>Bootstrap 3 y/o 4</div><div>Disponibilidad de Tiempo: Completo (Posibilidad de horario flexible)</div><div>Lugar de Trabajo: Ibagué</div><div>¿Qué buscamos en nuestro equipo?</div><div><br></div><div>Responsabilidad.</div><div>Capacidad para trabajar de modo autónomo en proyectos simples.</div><div>Capacidad de Trabajo en Equipo para proyectos de gran envergadura.</div><div>Capacitación constante.</div><div>IMPORTANTE: Bonificaciones por resultados y crecimiento.</div>', 'Si crees que tienes el talento como programador web, diseñador web y/o gráfico o quieres hacer parte del equipo de ventas envíanos tu hoja de vida o habla con nosotros.', 'Trabaja con nosotros', 'Si crees que tienes el talento como programador web, diseñador web y/o gráfico o quieres hacer parte del equipo de ventas envíanos tu hoja de vida o habla con nosotros.', NULL, NULL, 2, 'es');
/*!40000 ALTER TABLE `iblog__post_translations` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.iblog__post__category
CREATE TABLE IF NOT EXISTS `iblog__post__category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(10) unsigned NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.iblog__post__category: 3 rows
/*!40000 ALTER TABLE `iblog__post__category` DISABLE KEYS */;
INSERT INTO `iblog__post__category` (`id`, `post_id`, `category_id`) VALUES
	(1, 1, 1),
	(2, 2, 1),
	(3, 3, 1);
/*!40000 ALTER TABLE `iblog__post__category` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.iblog__post__tag
CREATE TABLE IF NOT EXISTS `iblog__post__tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(10) unsigned NOT NULL,
  `tag_id` int(10) unsigned NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.iblog__post__tag: 0 rows
/*!40000 ALTER TABLE `iblog__post__tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `iblog__post__tag` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.iblog__tags
CREATE TABLE IF NOT EXISTS `iblog__tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.iblog__tags: 0 rows
/*!40000 ALTER TABLE `iblog__tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `iblog__tags` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.icommerce__carts
CREATE TABLE IF NOT EXISTS `icommerce__carts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `total` double(50,2) NOT NULL DEFAULT '0.00',
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `icommerce__carts_user_id_foreign` (`user_id`),
  CONSTRAINT `icommerce__carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.icommerce__carts: ~0 rows (approximately)
/*!40000 ALTER TABLE `icommerce__carts` DISABLE KEYS */;
/*!40000 ALTER TABLE `icommerce__carts` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.icommerce__cart_product
CREATE TABLE IF NOT EXISTS `icommerce__cart_product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cart_id` int(10) unsigned DEFAULT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `product_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '1',
  `price` double(50,2) NOT NULL DEFAULT '0.00',
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `icommerce__cart_product_cart_id_foreign` (`cart_id`),
  KEY `icommerce__cart_product_product_id_foreign` (`product_id`),
  CONSTRAINT `icommerce__cart_product_cart_id_foreign` FOREIGN KEY (`cart_id`) REFERENCES `icommerce__carts` (`id`),
  CONSTRAINT `icommerce__cart_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `icommerce__products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.icommerce__cart_product: ~0 rows (approximately)
/*!40000 ALTER TABLE `icommerce__cart_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `icommerce__cart_product` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.icommerce__cart_product_options
CREATE TABLE IF NOT EXISTS `icommerce__cart_product_options` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cart_product_id` int(10) unsigned NOT NULL,
  `product_option_id` int(10) unsigned DEFAULT NULL,
  `product_option_value_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `icommerce__cart_product_options_cart_product_id_foreign` (`cart_product_id`),
  KEY `icommerce__cart_product_options_product_option_id_foreign` (`product_option_id`),
  KEY `icommerce__cart_product_options_product_option_value_id_foreign` (`product_option_value_id`),
  CONSTRAINT `icommerce__cart_product_options_cart_product_id_foreign` FOREIGN KEY (`cart_product_id`) REFERENCES `icommerce__cart_product` (`id`),
  CONSTRAINT `icommerce__cart_product_options_product_option_id_foreign` FOREIGN KEY (`product_option_id`) REFERENCES `icommerce__product_option` (`id`),
  CONSTRAINT `icommerce__cart_product_options_product_option_value_id_foreign` FOREIGN KEY (`product_option_value_id`) REFERENCES `icommerce__product_option_value` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.icommerce__cart_product_options: ~0 rows (approximately)
/*!40000 ALTER TABLE `icommerce__cart_product_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `icommerce__cart_product_options` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.icommerce__categories
CREATE TABLE IF NOT EXISTS `icommerce__categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `options` text COLLATE utf8mb4_unicode_ci,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `lft` int(10) unsigned DEFAULT NULL,
  `rgt` int(10) unsigned DEFAULT NULL,
  `depth` int(10) unsigned DEFAULT NULL,
  `show_menu` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.icommerce__categories: ~5 rows (approximately)
/*!40000 ALTER TABLE `icommerce__categories` DISABLE KEYS */;
INSERT INTO `icommerce__categories` (`id`, `options`, `parent_id`, `lft`, `rgt`, `depth`, `show_menu`, `created_at`, `updated_at`) VALUES
	(1, NULL, 0, NULL, NULL, NULL, 1, '2019-04-23 21:00:19', '2019-05-22 10:38:11'),
	(19, NULL, 0, NULL, NULL, NULL, 1, '2019-05-22 11:40:26', '2019-05-22 11:40:26'),
	(20, NULL, 0, NULL, NULL, NULL, 1, '2019-05-22 11:40:58', '2019-05-22 11:40:58'),
	(22, NULL, 0, NULL, NULL, NULL, 1, '2019-05-22 11:42:53', '2019-05-22 11:42:53'),
	(23, '{"masterRecord":0}', 0, NULL, NULL, NULL, 1, '2019-06-06 13:02:29', '2019-08-15 10:18:22');
/*!40000 ALTER TABLE `icommerce__categories` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.icommerce__category_translations
CREATE TABLE IF NOT EXISTS `icommerce__category_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `meta_title` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `category_id` int(10) unsigned NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `icommerce__category_translations_category_id_locale_unique` (`category_id`,`locale`),
  KEY `icommerce__category_translations_locale_index` (`locale`),
  CONSTRAINT `icommerce__category_translations_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `icommerce__categories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.icommerce__category_translations: ~8 rows (approximately)
/*!40000 ALTER TABLE `icommerce__category_translations` DISABLE KEYS */;
INSERT INTO `icommerce__category_translations` (`id`, `title`, `slug`, `description`, `meta_title`, `meta_description`, `category_id`, `locale`) VALUES
	(1, 'Entradas', 'entradas', 'Entradas', NULL, NULL, 1, 'es'),
	(35, 'Entradas', 'entradas', 'Entradas', 'Entradas', NULL, 1, 'ace'),
	(36, 'Entradas', 'entradas', 'Entradas', 'Entradas', NULL, 1, 'af'),
	(37, 'Entradas', 'entradas', 'Entradas', 'Entradas', NULL, 1, 'en'),
	(70, 'Menú Infantil', 'menu-infantil', 'Menú Infantil', NULL, NULL, 19, 'es'),
	(71, 'Adición', 'adicion', 'Adición', NULL, NULL, 20, 'es'),
	(73, 'Bebidas', 'bebidas', 'Bebidas', NULL, NULL, 22, 'es'),
	(74, 'Promociones', 'promociones', 'Promociones', NULL, NULL, 23, 'es');
/*!40000 ALTER TABLE `icommerce__category_translations` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.icommerce__coupons
CREATE TABLE IF NOT EXISTS `icommerce__coupons` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` double(8,2) NOT NULL,
  `logged` tinyint(3) unsigned NOT NULL,
  `shipping` tinyint(3) unsigned NOT NULL,
  `total` double(8,2) NOT NULL,
  `date_start` date NOT NULL,
  `date_end` date NOT NULL,
  `uses_total` int(10) unsigned NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `customer_id` int(10) unsigned DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `icommerce__coupons_customer_id_foreign` (`customer_id`),
  CONSTRAINT `icommerce__coupons_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.icommerce__coupons: ~0 rows (approximately)
/*!40000 ALTER TABLE `icommerce__coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `icommerce__coupons` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.icommerce__coupon_category
CREATE TABLE IF NOT EXISTS `icommerce__coupon_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `coupon_id` int(10) unsigned NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `icommerce__coupon_category_coupon_id_foreign` (`coupon_id`),
  KEY `icommerce__coupon_category_category_id_foreign` (`category_id`),
  CONSTRAINT `icommerce__coupon_category_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `icommerce__categories` (`id`),
  CONSTRAINT `icommerce__coupon_category_coupon_id_foreign` FOREIGN KEY (`coupon_id`) REFERENCES `icommerce__coupons` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.icommerce__coupon_category: ~0 rows (approximately)
/*!40000 ALTER TABLE `icommerce__coupon_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `icommerce__coupon_category` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.icommerce__coupon_order_history
CREATE TABLE IF NOT EXISTS `icommerce__coupon_order_history` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `coupon_id` int(10) unsigned NOT NULL,
  `order_id` int(10) unsigned NOT NULL,
  `customer_id` int(10) unsigned NOT NULL,
  `amount` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `icommerce__coupon_order_history_coupon_id_foreign` (`coupon_id`),
  KEY `icommerce__coupon_order_history_order_id_foreign` (`order_id`),
  KEY `icommerce__coupon_order_history_customer_id_foreign` (`customer_id`),
  CONSTRAINT `icommerce__coupon_order_history_coupon_id_foreign` FOREIGN KEY (`coupon_id`) REFERENCES `icommerce__coupons` (`id`),
  CONSTRAINT `icommerce__coupon_order_history_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `users` (`id`),
  CONSTRAINT `icommerce__coupon_order_history_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `icommerce__orders` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.icommerce__coupon_order_history: ~0 rows (approximately)
/*!40000 ALTER TABLE `icommerce__coupon_order_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `icommerce__coupon_order_history` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.icommerce__coupon_product
CREATE TABLE IF NOT EXISTS `icommerce__coupon_product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `coupon_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `icommerce__coupon_product_coupon_id_foreign` (`coupon_id`),
  KEY `icommerce__coupon_product_product_id_foreign` (`product_id`),
  CONSTRAINT `icommerce__coupon_product_coupon_id_foreign` FOREIGN KEY (`coupon_id`) REFERENCES `icommerce__coupons` (`id`),
  CONSTRAINT `icommerce__coupon_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `icommerce__products` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.icommerce__coupon_product: ~0 rows (approximately)
/*!40000 ALTER TABLE `icommerce__coupon_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `icommerce__coupon_product` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.icommerce__coupon_translations
CREATE TABLE IF NOT EXISTS `icommerce__coupon_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_id` int(10) unsigned NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `icommerce__coupon_translations_coupon_id_locale_unique` (`coupon_id`,`locale`),
  KEY `icommerce__coupon_translations_locale_index` (`locale`),
  CONSTRAINT `icommerce__coupon_translations_coupon_id_foreign` FOREIGN KEY (`coupon_id`) REFERENCES `icommerce__coupons` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.icommerce__coupon_translations: ~0 rows (approximately)
/*!40000 ALTER TABLE `icommerce__coupon_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `icommerce__coupon_translations` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.icommerce__currencies
CREATE TABLE IF NOT EXISTS `icommerce__currencies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol_left` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `symbol_right` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `decimal_place` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` double(15,8) NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.icommerce__currencies: ~0 rows (approximately)
/*!40000 ALTER TABLE `icommerce__currencies` DISABLE KEYS */;
/*!40000 ALTER TABLE `icommerce__currencies` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.icommerce__currency_translations
CREATE TABLE IF NOT EXISTS `icommerce__currency_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_id` int(10) unsigned NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `icommerce__currency_translations_currency_id_locale_unique` (`currency_id`,`locale`),
  KEY `icommerce__currency_translations_locale_index` (`locale`),
  CONSTRAINT `icommerce__currency_translations_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `icommerce__currencies` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.icommerce__currency_translations: ~0 rows (approximately)
/*!40000 ALTER TABLE `icommerce__currency_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `icommerce__currency_translations` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.icommerce__item_types
CREATE TABLE IF NOT EXISTS `icommerce__item_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.icommerce__item_types: ~0 rows (approximately)
/*!40000 ALTER TABLE `icommerce__item_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `icommerce__item_types` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.icommerce__item_type_translations
CREATE TABLE IF NOT EXISTS `icommerce__item_type_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_type_id` int(10) unsigned NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `icommerce__item_type_translations_item_type_id_locale_unique` (`item_type_id`,`locale`),
  KEY `icommerce__item_type_translations_locale_index` (`locale`),
  CONSTRAINT `icommerce__item_type_translations_item_type_id_foreign` FOREIGN KEY (`item_type_id`) REFERENCES `icommerce__item_types` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.icommerce__item_type_translations: ~0 rows (approximately)
/*!40000 ALTER TABLE `icommerce__item_type_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `icommerce__item_type_translations` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.icommerce__manufacturers
CREATE TABLE IF NOT EXISTS `icommerce__manufacturers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `options` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.icommerce__manufacturers: ~0 rows (approximately)
/*!40000 ALTER TABLE `icommerce__manufacturers` DISABLE KEYS */;
/*!40000 ALTER TABLE `icommerce__manufacturers` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.icommerce__manufacturer_trans
CREATE TABLE IF NOT EXISTS `icommerce__manufacturer_trans` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `manufacturer_id` int(10) unsigned NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `icommerce__manufacturer_trans_manufacturer_id_locale_unique` (`manufacturer_id`,`locale`),
  KEY `icommerce__manufacturer_trans_locale_index` (`locale`),
  CONSTRAINT `icommerce__manufacturer_trans_manufacturer_id_foreign` FOREIGN KEY (`manufacturer_id`) REFERENCES `icommerce__manufacturers` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.icommerce__manufacturer_trans: ~0 rows (approximately)
/*!40000 ALTER TABLE `icommerce__manufacturer_trans` DISABLE KEYS */;
/*!40000 ALTER TABLE `icommerce__manufacturer_trans` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.icommerce__mapareas
CREATE TABLE IF NOT EXISTS `icommerce__mapareas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `polygon` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(30,2) NOT NULL DEFAULT '0.00',
  `minimum` int(11) NOT NULL DEFAULT '0',
  `store_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `icommerce__mapareas_store_id_foreign` (`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.icommerce__mapareas: 0 rows
/*!40000 ALTER TABLE `icommerce__mapareas` DISABLE KEYS */;
/*!40000 ALTER TABLE `icommerce__mapareas` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.icommerce__options
CREATE TABLE IF NOT EXISTS `icommerce__options` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.icommerce__options: ~4 rows (approximately)
/*!40000 ALTER TABLE `icommerce__options` DISABLE KEYS */;
INSERT INTO `icommerce__options` (`id`, `type`, `sort_order`, `options`, `created_at`, `updated_at`) VALUES
	(3, 'checkbox', 1, NULL, '2019-05-09 16:51:24', '2019-05-09 21:16:38'),
	(4, 'select', 1, NULL, '2019-05-09 16:54:46', '2019-05-09 21:17:06'),
	(11, 'radio', 1, NULL, '2019-05-28 08:47:08', '2019-06-08 15:39:18'),
	(12, 'radio', 0, NULL, '2019-05-28 10:11:52', '2019-06-08 15:49:46');
/*!40000 ALTER TABLE `icommerce__options` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.icommerce__option_translations
CREATE TABLE IF NOT EXISTS `icommerce__option_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_id` int(10) unsigned NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `icommerce__option_translations_option_id_locale_unique` (`option_id`,`locale`),
  KEY `icommerce__option_translations_locale_index` (`locale`),
  CONSTRAINT `icommerce__option_translations_option_id_foreign` FOREIGN KEY (`option_id`) REFERENCES `icommerce__options` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.icommerce__option_translations: ~10 rows (approximately)
/*!40000 ALTER TABLE `icommerce__option_translations` DISABLE KEYS */;
INSERT INTO `icommerce__option_translations` (`id`, `description`, `option_id`, `locale`) VALUES
	(2, 'Colors', 3, 'ace'),
	(3, 'Colors', 3, 'af'),
	(4, 'Colors', 3, 'en'),
	(5, 'Colores', 3, 'es'),
	(6, 'textures', 4, 'ace'),
	(7, 'textures', 4, 'af'),
	(8, 'textures', 4, 'en'),
	(9, 'texturas', 4, 'es'),
	(20, 'Porcion', 11, 'es'),
	(21, 'Tamaño', 12, 'es');
/*!40000 ALTER TABLE `icommerce__option_translations` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.icommerce__option_values
CREATE TABLE IF NOT EXISTS `icommerce__option_values` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `option_id` int(10) unsigned DEFAULT NULL,
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `icommerce__option_values_option_id_foreign` (`option_id`),
  CONSTRAINT `icommerce__option_values_option_id_foreign` FOREIGN KEY (`option_id`) REFERENCES `icommerce__options` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.icommerce__option_values: ~16 rows (approximately)
/*!40000 ALTER TABLE `icommerce__option_values` DISABLE KEYS */;
INSERT INTO `icommerce__option_values` (`id`, `option_id`, `sort_order`, `options`, `created_at`, `updated_at`) VALUES
	(5, 3, 0, NULL, '2019-05-09 21:17:45', '2019-05-09 21:17:45'),
	(6, 3, 0, NULL, '2019-05-09 21:18:01', '2019-05-09 21:18:01'),
	(7, 3, 0, NULL, '2019-05-09 21:18:16', '2019-05-09 21:18:16'),
	(8, 4, 0, NULL, '2019-05-09 21:22:41', '2019-05-09 21:22:41'),
	(15, 4, 0, NULL, '2019-05-16 14:56:14', '2019-05-16 14:56:14'),
	(17, 4, 0, NULL, '2019-05-16 15:11:25', '2019-05-16 15:11:25'),
	(19, 11, 1, NULL, '2019-05-28 08:47:28', '2019-05-28 08:47:28'),
	(20, 11, 2, NULL, '2019-05-28 08:47:38', '2019-05-28 08:47:38'),
	(21, 11, 6, NULL, '2019-05-28 08:47:49', '2019-05-28 08:47:49'),
	(22, 12, 0, NULL, '2019-06-08 13:14:50', '2019-06-08 13:14:50'),
	(23, 12, 0, NULL, '2019-06-08 13:14:57', '2019-06-08 13:14:57'),
	(24, 12, 0, NULL, '2019-06-08 13:15:07', '2019-06-08 13:15:07'),
	(25, 12, 0, NULL, '2019-06-08 13:15:16', '2019-06-08 13:15:16'),
	(26, 11, 0, NULL, '2019-06-08 15:40:40', '2019-06-08 15:40:40'),
	(27, 11, 0, NULL, '2019-06-08 15:40:50', '2019-06-08 15:40:50'),
	(28, 11, 0, NULL, '2019-06-08 15:40:56', '2019-06-08 15:40:56');
/*!40000 ALTER TABLE `icommerce__option_values` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.icommerce__option_value_trans
CREATE TABLE IF NOT EXISTS `icommerce__option_value_trans` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_value_id` int(10) unsigned NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `icommerce__option_value_trans_option_value_id_locale_unique` (`option_value_id`,`locale`),
  KEY `icommerce__option_value_trans_locale_index` (`locale`),
  CONSTRAINT `icommerce__option_value_trans_option_value_id_foreign` FOREIGN KEY (`option_value_id`) REFERENCES `icommerce__option_values` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.icommerce__option_value_trans: ~34 rows (approximately)
/*!40000 ALTER TABLE `icommerce__option_value_trans` DISABLE KEYS */;
INSERT INTO `icommerce__option_value_trans` (`id`, `description`, `option_value_id`, `locale`) VALUES
	(13, 'yellow', 5, 'ace'),
	(14, 'yellow', 5, 'af'),
	(15, 'yellow', 5, 'en'),
	(16, 'amarillo', 5, 'es'),
	(17, 'red', 6, 'ace'),
	(18, 'red', 6, 'af'),
	(19, 'red', 6, 'en'),
	(20, 'rojo', 6, 'es'),
	(21, 'grey', 7, 'ace'),
	(22, 'grey', 7, 'af'),
	(23, 'grey', 7, 'en'),
	(24, 'gris', 7, 'es'),
	(25, 'liso', 8, 'ace'),
	(26, 'liso', 8, 'af'),
	(27, 'liso', 8, 'en'),
	(28, 'liso', 8, 'es'),
	(53, 'croma', 15, 'ace'),
	(54, 'croma', 15, 'af'),
	(55, 'croma', 15, 'en'),
	(56, 'croma', 15, 'es'),
	(61, 'puntos', 17, 'ace'),
	(62, 'puntos', 17, 'af'),
	(63, 'puntos', 17, 'en'),
	(64, 'puntos', 17, 'es'),
	(69, 'Familiar', 19, 'es'),
	(70, 'Pareja', 20, 'es'),
	(71, 'Individual', 21, 'es'),
	(72, 'Personal', 22, 'es'),
	(73, 'Pareja', 23, 'es'),
	(74, 'Familiar: 3-4 Personas', 24, 'es'),
	(75, 'Mega: 6 Personas', 25, 'es'),
	(76, 'Unidad', 26, 'es'),
	(77, '*6', 27, 'es'),
	(78, '*12', 28, 'es');
/*!40000 ALTER TABLE `icommerce__option_value_trans` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.icommerce__orders
CREATE TABLE IF NOT EXISTS `icommerce__orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `invoice_nro` int(10) unsigned DEFAULT NULL,
  `invoice_prefix` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total` double(50,2) NOT NULL,
  `status_id` int(10) unsigned NOT NULL,
  `customer_id` int(10) unsigned DEFAULT NULL,
  `added_by_id` int(10) unsigned DEFAULT NULL,
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
  `currency_id` int(10) unsigned NOT NULL,
  `currency_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_value` double(15,8) NOT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `icommerce__orders_status_id_foreign` (`status_id`),
  KEY `icommerce__orders_customer_id_foreign` (`customer_id`),
  KEY `icommerce__orders_added_by_id_foreign` (`added_by_id`),
  KEY `icommerce__orders_currency_id_foreign` (`currency_id`),
  CONSTRAINT `icommerce__orders_added_by_id_foreign` FOREIGN KEY (`added_by_id`) REFERENCES `users` (`id`),
  CONSTRAINT `icommerce__orders_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `icommerce__currencies` (`id`),
  CONSTRAINT `icommerce__orders_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `users` (`id`),
  CONSTRAINT `icommerce__orders_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `icommerce__order_statuses` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.icommerce__orders: ~0 rows (approximately)
/*!40000 ALTER TABLE `icommerce__orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `icommerce__orders` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.icommerce__order_item
CREATE TABLE IF NOT EXISTS `icommerce__order_item` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned DEFAULT NULL,
  `item_type_id` int(10) unsigned DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(10) unsigned NOT NULL,
  `price` double(30,2) NOT NULL,
  `total` double(30,2) NOT NULL,
  `tax` double(30,2) NOT NULL,
  `reward` int(10) unsigned NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `icommerce__order_item_order_id_foreign` (`order_id`),
  KEY `icommerce__order_item_product_id_foreign` (`product_id`),
  KEY `icommerce__order_item_item_type_id_foreign` (`item_type_id`),
  CONSTRAINT `icommerce__order_item_item_type_id_foreign` FOREIGN KEY (`item_type_id`) REFERENCES `icommerce__item_types` (`id`),
  CONSTRAINT `icommerce__order_item_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `icommerce__orders` (`id`),
  CONSTRAINT `icommerce__order_item_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `icommerce__products` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.icommerce__order_item: ~0 rows (approximately)
/*!40000 ALTER TABLE `icommerce__order_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `icommerce__order_item` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.icommerce__order_options
CREATE TABLE IF NOT EXISTS `icommerce__order_options` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(10) unsigned NOT NULL,
  `order_item_id` int(10) unsigned DEFAULT NULL,
  `parent_option_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `option_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double(50,2) DEFAULT NULL,
  `price_prefix` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `points` int(10) unsigned DEFAULT NULL,
  `points_prefix` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` double(8,2) DEFAULT NULL,
  `weight_prefix` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `required` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `icommerce__order_options_order_id_foreign` (`order_id`),
  KEY `icommerce__order_options_order_item_id_foreign` (`order_item_id`),
  CONSTRAINT `icommerce__order_options_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `icommerce__orders` (`id`),
  CONSTRAINT `icommerce__order_options_order_item_id_foreign` FOREIGN KEY (`order_item_id`) REFERENCES `icommerce__order_item` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.icommerce__order_options: ~0 rows (approximately)
/*!40000 ALTER TABLE `icommerce__order_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `icommerce__order_options` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.icommerce__order_statuses
CREATE TABLE IF NOT EXISTS `icommerce__order_statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `status` int(10) unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.icommerce__order_statuses: ~0 rows (approximately)
/*!40000 ALTER TABLE `icommerce__order_statuses` DISABLE KEYS */;
/*!40000 ALTER TABLE `icommerce__order_statuses` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.icommerce__order_status_history
CREATE TABLE IF NOT EXISTS `icommerce__order_status_history` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(10) unsigned NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `notify` int(10) unsigned NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `icommerce__order_status_history_order_id_foreign` (`order_id`),
  CONSTRAINT `icommerce__order_status_history_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `icommerce__orders` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.icommerce__order_status_history: ~0 rows (approximately)
/*!40000 ALTER TABLE `icommerce__order_status_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `icommerce__order_status_history` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.icommerce__order_status_trans
CREATE TABLE IF NOT EXISTS `icommerce__order_status_trans` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status_id` int(10) unsigned NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `icommerce__order_status_trans_order_status_id_locale_unique` (`order_status_id`,`locale`),
  KEY `icommerce__order_status_trans_locale_index` (`locale`),
  CONSTRAINT `icommerce__order_status_trans_order_status_id_foreign` FOREIGN KEY (`order_status_id`) REFERENCES `icommerce__order_statuses` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.icommerce__order_status_trans: ~0 rows (approximately)
/*!40000 ALTER TABLE `icommerce__order_status_trans` DISABLE KEYS */;
/*!40000 ALTER TABLE `icommerce__order_status_trans` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.icommerce__payment_methods
CREATE TABLE IF NOT EXISTS `icommerce__payment_methods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.icommerce__payment_methods: ~0 rows (approximately)
/*!40000 ALTER TABLE `icommerce__payment_methods` DISABLE KEYS */;
/*!40000 ALTER TABLE `icommerce__payment_methods` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.icommerce__payment_methods_geozones
CREATE TABLE IF NOT EXISTS `icommerce__payment_methods_geozones` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `payment_method_id` int(10) unsigned NOT NULL,
  `geozone_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `icommerce__payment_methods_geozones_payment_method_id_foreign` (`payment_method_id`),
  KEY `icommerce__payment_methods_geozones_geozone_id_foreign` (`geozone_id`),
  CONSTRAINT `icommerce__payment_methods_geozones_geozone_id_foreign` FOREIGN KEY (`geozone_id`) REFERENCES `ilocations__geozones` (`id`),
  CONSTRAINT `icommerce__payment_methods_geozones_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `icommerce__payment_methods` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.icommerce__payment_methods_geozones: ~0 rows (approximately)
/*!40000 ALTER TABLE `icommerce__payment_methods_geozones` DISABLE KEYS */;
/*!40000 ALTER TABLE `icommerce__payment_methods_geozones` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.icommerce__payment_method_translations
CREATE TABLE IF NOT EXISTS `icommerce__payment_method_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method_id` int(10) unsigned NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_payment_method_id` (`payment_method_id`,`locale`),
  KEY `icommerce__payment_method_translations_locale_index` (`locale`),
  CONSTRAINT `icommerce__payment_method_translations_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `icommerce__payment_methods` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.icommerce__payment_method_translations: ~0 rows (approximately)
/*!40000 ALTER TABLE `icommerce__payment_method_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `icommerce__payment_method_translations` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.icommerce__price_lists
CREATE TABLE IF NOT EXISTS `icommerce__price_lists` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `status` int(11) NOT NULL DEFAULT '1',
  `criteria` enum('percentage','fixed') COLLATE utf8mb4_unicode_ci NOT NULL,
  `related_id` int(11) DEFAULT NULL,
  `related_entity` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.icommerce__price_lists: ~0 rows (approximately)
/*!40000 ALTER TABLE `icommerce__price_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `icommerce__price_lists` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.icommerce__price_list_translations
CREATE TABLE IF NOT EXISTS `icommerce__price_list_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price_list_id` int(10) unsigned NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `icommerce__price_list_translations_price_list_id_locale_unique` (`price_list_id`,`locale`),
  KEY `icommerce__price_list_translations_locale_index` (`locale`),
  CONSTRAINT `icommerce__price_list_translations_price_list_id_foreign` FOREIGN KEY (`price_list_id`) REFERENCES `icommerce__price_lists` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.icommerce__price_list_translations: ~0 rows (approximately)
/*!40000 ALTER TABLE `icommerce__price_list_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `icommerce__price_list_translations` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.icommerce__products
CREATE TABLE IF NOT EXISTS `icommerce__products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `options` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `added_by_id` int(10) unsigned NOT NULL,
  `category_id` int(10) unsigned DEFAULT NULL,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `related_ids` text COLLATE utf8mb4_unicode_ci,
  `tax_class_id` int(10) unsigned DEFAULT NULL,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(10) unsigned NOT NULL DEFAULT '0',
  `stock_status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `manufacturer_id` int(10) unsigned DEFAULT NULL,
  `shipping` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `price` double(30,2) NOT NULL DEFAULT '0.00',
  `points` int(10) unsigned NOT NULL DEFAULT '0',
  `date_available` date DEFAULT NULL,
  `weight` double(8,2) DEFAULT NULL,
  `length` double(8,2) DEFAULT NULL,
  `width` double(8,2) DEFAULT NULL,
  `height` double(8,2) DEFAULT NULL,
  `subtract` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `minimum` int(10) unsigned NOT NULL DEFAULT '1',
  `reference` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` text COLLATE utf8mb4_unicode_ci,
  `order_weight` int(11) DEFAULT NULL,
  `freeshipping` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `icommerce__products_added_by_id_foreign` (`added_by_id`),
  KEY `icommerce__products_category_id_foreign` (`category_id`),
  KEY `icommerce__products_tax_class_id_foreign` (`tax_class_id`),
  KEY `icommerce__products_manufacturer_id_foreign` (`manufacturer_id`),
  CONSTRAINT `icommerce__products_added_by_id_foreign` FOREIGN KEY (`added_by_id`) REFERENCES `users` (`id`),
  CONSTRAINT `icommerce__products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `icommerce__categories` (`id`),
  CONSTRAINT `icommerce__products_manufacturer_id_foreign` FOREIGN KEY (`manufacturer_id`) REFERENCES `icommerce__manufacturers` (`id`),
  CONSTRAINT `icommerce__products_tax_class_id_foreign` FOREIGN KEY (`tax_class_id`) REFERENCES `icommerce__tax_classes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.icommerce__products: ~10 rows (approximately)
/*!40000 ALTER TABLE `icommerce__products` DISABLE KEYS */;
INSERT INTO `icommerce__products` (`id`, `options`, `status`, `added_by_id`, `category_id`, `parent_id`, `related_ids`, `tax_class_id`, `sku`, `quantity`, `stock_status`, `manufacturer_id`, `shipping`, `price`, `points`, `date_available`, `weight`, `length`, `width`, `height`, `subtract`, `minimum`, `reference`, `rating`, `order_weight`, `freeshipping`, `created_at`, `updated_at`) VALUES
	(88, '{"masterRecord":1,"video":null}', 1, 1, 1, 0, NULL, NULL, 's5d447a403aefd', 0, 1, NULL, 0, 0.00, 0, '2019-08-02', 0.00, 0.00, 0.00, 0.00, 0, 1, NULL, '3', 0, 0, '2019-08-02 13:00:32', '2019-08-02 13:08:23'),
	(89, '{"masterRecord":0,"video":null}', 1, 1, 1, 0, NULL, NULL, 's5d447af77d90d', 0, 1, NULL, 0, 0.00, 0, '2019-08-02', 0.00, 0.00, 0.00, 0.00, 0, 1, NULL, '3', 0, 0, '2019-08-02 13:03:35', '2019-08-02 13:08:32'),
	(90, '{"masterRecord":0,"video":null}', 1, 1, 19, 0, NULL, NULL, 's5d447b0cebc0a', 0, 1, NULL, 0, 0.00, 0, '2019-08-02', 0.00, 0.00, 0.00, 0.00, 0, 1, NULL, '3', 0, 0, '2019-08-02 13:03:56', '2019-08-02 13:08:49'),
	(91, '{"masterRecord":0,"video":null}', 1, 1, 19, 0, NULL, NULL, 's5d447b229d8c6', 0, 1, NULL, 0, 0.00, 0, '2019-08-02', 0.00, 0.00, 0.00, 0.00, 0, 1, NULL, '3', 0, 0, '2019-08-02 13:04:18', '2019-08-02 13:09:03'),
	(92, '{"masterRecord":0,"video":null}', 1, 1, 20, 0, NULL, NULL, 's5d447b3eb6287', 0, 1, NULL, 0, 0.00, 0, '2019-08-02', 0.00, 0.00, 0.00, 0.00, 0, 1, NULL, '3', 0, 0, '2019-08-02 13:04:46', '2019-08-02 13:09:39'),
	(93, '{"masterRecord":0,"video":null}', 1, 1, 20, 0, NULL, NULL, 's5d447b4f736a6', 0, 1, NULL, 0, 0.00, 0, '2019-08-02', 0.00, 0.00, 0.00, 0.00, 0, 1, NULL, '3', 0, 0, '2019-08-02 13:05:03', '2019-08-02 13:09:57'),
	(94, '{"masterRecord":0,"video":null}', 1, 1, 22, 0, NULL, NULL, 's5d447b6172c9b', 0, 1, NULL, 0, 0.00, 0, '2019-08-02', 0.00, 0.00, 0.00, 0.00, 0, 1, NULL, '3', 0, 0, '2019-08-02 13:05:21', '2019-08-02 13:11:12'),
	(95, '{"masterRecord":0,"video":null}', 1, 1, 22, 0, NULL, NULL, 's5d447b6ea03a3', 0, 1, NULL, 0, 0.00, 0, '2019-08-02', 0.00, 0.00, 0.00, 0.00, 0, 1, NULL, '3', 0, 0, '2019-08-02 13:05:34', '2019-08-02 13:11:26'),
	(96, '{"masterRecord":0,"video":null}', 1, 1, 23, 0, NULL, NULL, 's5d447b7df0221', 0, 1, NULL, 0, 0.00, 0, '2019-08-02', 0.00, 0.00, 0.00, 0.00, 0, 1, NULL, '3', 0, 0, '2019-08-02 13:05:49', '2019-08-02 13:10:09'),
	(97, '{"masterRecord":0,"video":null}', 1, 1, 23, 0, NULL, NULL, 's5d447b92aeff8', 0, 1, NULL, 0, 0.00, 0, '2019-08-02', 0.00, 0.00, 0.00, 0.00, 0, 1, NULL, '3', 0, 0, '2019-08-02 13:06:10', '2019-08-02 13:10:18');
/*!40000 ALTER TABLE `icommerce__products` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.icommerce__product_category
CREATE TABLE IF NOT EXISTS `icommerce__product_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `icommerce__product_category_category_id_foreign` (`category_id`),
  KEY `icommerce__product_category_product_id_foreign` (`product_id`),
  CONSTRAINT `icommerce__product_category_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `icommerce__categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `icommerce__product_category_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `icommerce__products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.icommerce__product_category: ~10 rows (approximately)
/*!40000 ALTER TABLE `icommerce__product_category` DISABLE KEYS */;
INSERT INTO `icommerce__product_category` (`id`, `product_id`, `category_id`, `created_at`, `updated_at`) VALUES
	(45, 88, 1, '2019-08-02 13:00:32', '2019-08-02 13:00:32'),
	(46, 89, 1, '2019-08-02 13:03:35', '2019-08-02 13:03:35'),
	(47, 90, 19, '2019-08-02 13:03:56', '2019-08-02 13:03:56'),
	(48, 91, 19, '2019-08-02 13:04:18', '2019-08-02 13:04:18'),
	(49, 92, 20, '2019-08-02 13:04:46', '2019-08-02 13:04:46'),
	(50, 93, 20, '2019-08-02 13:05:03', '2019-08-02 13:05:03'),
	(51, 94, 22, '2019-08-02 13:05:21', '2019-08-02 13:05:21'),
	(52, 95, 22, '2019-08-02 13:05:34', '2019-08-02 13:05:34'),
	(53, 96, 23, '2019-08-02 13:05:49', '2019-08-02 13:05:49'),
	(54, 97, 23, '2019-08-02 13:06:10', '2019-08-02 13:06:10');
/*!40000 ALTER TABLE `icommerce__product_category` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.icommerce__product_discounts
CREATE TABLE IF NOT EXISTS `icommerce__product_discounts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned NOT NULL,
  `product_option_value_id` int(10) unsigned DEFAULT NULL,
  `product_option_id` int(10) unsigned DEFAULT NULL,
  `quantity` int(10) unsigned NOT NULL DEFAULT '0',
  `priority` int(10) unsigned NOT NULL DEFAULT '1',
  `discount` double(20,2) NOT NULL,
  `criteria` enum('percentage','fixed') COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_start` date NOT NULL,
  `date_end` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `icommerce__product_discounts_product_id_foreign` (`product_id`),
  KEY `icommerce__product_discounts_product_option_value_id_foreign` (`product_option_value_id`),
  KEY `icommerce__product_discounts_product_option_id_foreign` (`product_option_id`),
  CONSTRAINT `icommerce__product_discounts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `icommerce__products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `icommerce__product_discounts_product_option_id_foreign` FOREIGN KEY (`product_option_id`) REFERENCES `icommerce__product_option` (`id`) ON DELETE CASCADE,
  CONSTRAINT `icommerce__product_discounts_product_option_value_id_foreign` FOREIGN KEY (`product_option_value_id`) REFERENCES `icommerce__product_option_value` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.icommerce__product_discounts: ~0 rows (approximately)
/*!40000 ALTER TABLE `icommerce__product_discounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `icommerce__product_discounts` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.icommerce__product_lists
CREATE TABLE IF NOT EXISTS `icommerce__product_lists` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned NOT NULL,
  `price_list_id` int(10) unsigned NOT NULL,
  `price` decimal(20,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `icommerce__product_lists_product_id_foreign` (`product_id`),
  KEY `icommerce__product_lists_price_list_id_foreign` (`price_list_id`),
  CONSTRAINT `icommerce__product_lists_price_list_id_foreign` FOREIGN KEY (`price_list_id`) REFERENCES `icommerce__price_lists` (`id`),
  CONSTRAINT `icommerce__product_lists_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `icommerce__products` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.icommerce__product_lists: ~0 rows (approximately)
/*!40000 ALTER TABLE `icommerce__product_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `icommerce__product_lists` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.icommerce__product_option
CREATE TABLE IF NOT EXISTS `icommerce__product_option` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned NOT NULL,
  `option_id` int(10) unsigned NOT NULL,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(10) unsigned DEFAULT NULL,
  `rgt` int(10) unsigned DEFAULT NULL,
  `depth` int(10) unsigned DEFAULT NULL,
  `parent_option_value_id` int(10) unsigned DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `required` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `icommerce__product_option_product_id_foreign` (`product_id`),
  KEY `icommerce__product_option_option_id_foreign` (`option_id`),
  KEY `icommerce__product_option_parent_option_value_id_foreign` (`parent_option_value_id`),
  CONSTRAINT `icommerce__product_option_option_id_foreign` FOREIGN KEY (`option_id`) REFERENCES `icommerce__options` (`id`) ON DELETE CASCADE,
  CONSTRAINT `icommerce__product_option_parent_option_value_id_foreign` FOREIGN KEY (`parent_option_value_id`) REFERENCES `icommerce__option_values` (`id`),
  CONSTRAINT `icommerce__product_option_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `icommerce__products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.icommerce__product_option: ~0 rows (approximately)
/*!40000 ALTER TABLE `icommerce__product_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `icommerce__product_option` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.icommerce__product_option_value
CREATE TABLE IF NOT EXISTS `icommerce__product_option_value` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_option_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `option_id` int(10) unsigned NOT NULL,
  `option_value_id` int(10) unsigned NOT NULL,
  `parent_option_value_id` int(10) unsigned DEFAULT NULL,
  `quantity` int(10) unsigned NOT NULL,
  `subtract` tinyint(3) unsigned NOT NULL,
  `price` double(50,2) NOT NULL,
  `price_prefix` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `points` int(10) unsigned NOT NULL,
  `points_prefix` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` double(8,2) NOT NULL,
  `weight_prefix` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `icommerce__product_option_value_product_option_id_foreign` (`product_option_id`),
  KEY `icommerce__product_option_value_product_id_foreign` (`product_id`),
  KEY `icommerce__product_option_value_option_id_foreign` (`option_id`),
  KEY `icommerce__product_option_value_option_value_id_foreign` (`option_value_id`),
  KEY `icommerce__product_option_value_parent_option_value_id_foreign` (`parent_option_value_id`),
  CONSTRAINT `icommerce__product_option_value_option_id_foreign` FOREIGN KEY (`option_id`) REFERENCES `icommerce__options` (`id`) ON DELETE CASCADE,
  CONSTRAINT `icommerce__product_option_value_option_value_id_foreign` FOREIGN KEY (`option_value_id`) REFERENCES `icommerce__option_values` (`id`) ON DELETE CASCADE,
  CONSTRAINT `icommerce__product_option_value_parent_option_value_id_foreign` FOREIGN KEY (`parent_option_value_id`) REFERENCES `icommerce__option_values` (`id`) ON DELETE CASCADE,
  CONSTRAINT `icommerce__product_option_value_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `icommerce__products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `icommerce__product_option_value_product_option_id_foreign` FOREIGN KEY (`product_option_id`) REFERENCES `icommerce__product_option` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.icommerce__product_option_value: ~0 rows (approximately)
/*!40000 ALTER TABLE `icommerce__product_option_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `icommerce__product_option_value` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.icommerce__product_tag
CREATE TABLE IF NOT EXISTS `icommerce__product_tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned NOT NULL,
  `tag_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `icommerce__product_tag_product_id_foreign` (`product_id`),
  KEY `icommerce__product_tag_tag_id_foreign` (`tag_id`),
  CONSTRAINT `icommerce__product_tag_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `icommerce__products` (`id`),
  CONSTRAINT `icommerce__product_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `icommerce__tags` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.icommerce__product_tag: ~0 rows (approximately)
/*!40000 ALTER TABLE `icommerce__product_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `icommerce__product_tag` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.icommerce__product_translations
CREATE TABLE IF NOT EXISTS `icommerce__product_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `product_id` int(10) unsigned NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `icommerce__product_translations_product_id_locale_unique` (`product_id`,`locale`),
  KEY `icommerce__product_translations_locale_index` (`locale`),
  CONSTRAINT `icommerce__product_translations_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `icommerce__products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=240 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.icommerce__product_translations: ~10 rows (approximately)
/*!40000 ALTER TABLE `icommerce__product_translations` DISABLE KEYS */;
INSERT INTO `icommerce__product_translations` (`id`, `name`, `slug`, `description`, `summary`, `meta_title`, `meta_description`, `product_id`, `locale`) VALUES
	(229, 'Entrada N°1', 'entrada-n01', 'entrada-n°1', 'entrada-n°1', NULL, NULL, 88, 'es'),
	(230, 'Entrada N°2', 'entrada-n02', 'entrada-n°2', 'entrada-n°2', NULL, NULL, 89, 'es'),
	(231, 'Menu Infantil N°1', 'menu-infantil-n01', 'menu-infantil-n°1', 'menu-infantil-n°1', NULL, NULL, 90, 'es'),
	(232, 'Menu infantil n°2', 'menu-infantil-n02', 'menu-infantil-n°2', 'menu-infantil-n°2', NULL, NULL, 91, 'es'),
	(233, 'Adicional N°1', 'adicional-n01', 'adicional-n°1', 'adicional-n°1', NULL, NULL, 92, 'es'),
	(234, 'Adicional N°2', 'adicional-n02', 'adicional-n°2', 'adicional-n°2', NULL, NULL, 93, 'es'),
	(235, 'Bebida N°1', 'bebida-n01', 'bebida-n°1', 'bebida-n°1', NULL, NULL, 94, 'es'),
	(236, 'Bebida N°2', 'bebida-n02', 'bebida-n°2', 'bebida-n°2', NULL, NULL, 95, 'es'),
	(237, 'Promocion N°1', 'promocion-n01', 'promocion-n°1', 'promocion-n°1', NULL, NULL, 96, 'es'),
	(238, 'Promocion N°2', 'promocion-n02', 'promocion-n°2', 'promocion-n°2', NULL, NULL, 97, 'es');
/*!40000 ALTER TABLE `icommerce__product_translations` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.icommerce__related_product
CREATE TABLE IF NOT EXISTS `icommerce__related_product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned DEFAULT NULL,
  `related_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `icommerce__related_product_product_id_foreign` (`product_id`),
  KEY `icommerce__related_product_related_id_foreign` (`related_id`),
  CONSTRAINT `icommerce__related_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `icommerce__products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `icommerce__related_product_related_id_foreign` FOREIGN KEY (`related_id`) REFERENCES `icommerce__products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.icommerce__related_product: ~0 rows (approximately)
/*!40000 ALTER TABLE `icommerce__related_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `icommerce__related_product` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.icommerce__shipping_methods
CREATE TABLE IF NOT EXISTS `icommerce__shipping_methods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(10) unsigned NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.icommerce__shipping_methods: ~0 rows (approximately)
/*!40000 ALTER TABLE `icommerce__shipping_methods` DISABLE KEYS */;
/*!40000 ALTER TABLE `icommerce__shipping_methods` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.icommerce__shipping_methods_geozones
CREATE TABLE IF NOT EXISTS `icommerce__shipping_methods_geozones` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shipping_method_id` int(10) unsigned NOT NULL,
  `geozone_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `icommerce__shipping_methods_geozones_shipping_method_id_foreign` (`shipping_method_id`),
  KEY `icommerce__shipping_methods_geozones_geozone_id_foreign` (`geozone_id`),
  CONSTRAINT `icommerce__shipping_methods_geozones_geozone_id_foreign` FOREIGN KEY (`geozone_id`) REFERENCES `ilocations__geozones` (`id`),
  CONSTRAINT `icommerce__shipping_methods_geozones_shipping_method_id_foreign` FOREIGN KEY (`shipping_method_id`) REFERENCES `icommerce__shipping_methods` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.icommerce__shipping_methods_geozones: ~0 rows (approximately)
/*!40000 ALTER TABLE `icommerce__shipping_methods_geozones` DISABLE KEYS */;
/*!40000 ALTER TABLE `icommerce__shipping_methods_geozones` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.icommerce__shipping_method_translations
CREATE TABLE IF NOT EXISTS `icommerce__shipping_method_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_method_id` int(10) unsigned NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_shipping_method_id` (`shipping_method_id`,`locale`),
  KEY `icommerce__shipping_method_translations_locale_index` (`locale`),
  CONSTRAINT `sm_id_foreing` FOREIGN KEY (`shipping_method_id`) REFERENCES `icommerce__shipping_methods` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.icommerce__shipping_method_translations: ~0 rows (approximately)
/*!40000 ALTER TABLE `icommerce__shipping_method_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `icommerce__shipping_method_translations` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.icommerce__stores
CREATE TABLE IF NOT EXISTS `icommerce__stores` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.icommerce__stores: 0 rows
/*!40000 ALTER TABLE `icommerce__stores` DISABLE KEYS */;
/*!40000 ALTER TABLE `icommerce__stores` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.icommerce__tags
CREATE TABLE IF NOT EXISTS `icommerce__tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.icommerce__tags: ~0 rows (approximately)
/*!40000 ALTER TABLE `icommerce__tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `icommerce__tags` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.icommerce__tag_translations
CREATE TABLE IF NOT EXISTS `icommerce__tag_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag_id` int(10) unsigned NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `icommerce__tag_translations_tag_id_locale_unique` (`tag_id`,`locale`),
  KEY `icommerce__tag_translations_locale_index` (`locale`),
  CONSTRAINT `icommerce__tag_translations_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `icommerce__tags` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.icommerce__tag_translations: ~0 rows (approximately)
/*!40000 ALTER TABLE `icommerce__tag_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `icommerce__tag_translations` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.icommerce__tax_classes
CREATE TABLE IF NOT EXISTS `icommerce__tax_classes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.icommerce__tax_classes: ~0 rows (approximately)
/*!40000 ALTER TABLE `icommerce__tax_classes` DISABLE KEYS */;
/*!40000 ALTER TABLE `icommerce__tax_classes` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.icommerce__tax_class_rate
CREATE TABLE IF NOT EXISTS `icommerce__tax_class_rate` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tax_class_id` int(10) unsigned NOT NULL,
  `tax_rate_id` int(10) unsigned NOT NULL,
  `based` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `priority` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `icommerce__tax_class_rate_tax_class_id_foreign` (`tax_class_id`),
  KEY `icommerce__tax_class_rate_tax_rate_id_foreign` (`tax_rate_id`),
  CONSTRAINT `icommerce__tax_class_rate_tax_class_id_foreign` FOREIGN KEY (`tax_class_id`) REFERENCES `icommerce__tax_classes` (`id`),
  CONSTRAINT `icommerce__tax_class_rate_tax_rate_id_foreign` FOREIGN KEY (`tax_rate_id`) REFERENCES `icommerce__tax_rates` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.icommerce__tax_class_rate: ~0 rows (approximately)
/*!40000 ALTER TABLE `icommerce__tax_class_rate` DISABLE KEYS */;
/*!40000 ALTER TABLE `icommerce__tax_class_rate` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.icommerce__tax_class_translations
CREATE TABLE IF NOT EXISTS `icommerce__tax_class_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_class_id` int(10) unsigned NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `icommerce__tax_class_translations_tax_class_id_locale_unique` (`tax_class_id`,`locale`),
  KEY `icommerce__tax_class_translations_locale_index` (`locale`),
  CONSTRAINT `icommerce__tax_class_translations_tax_class_id_foreign` FOREIGN KEY (`tax_class_id`) REFERENCES `icommerce__tax_classes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.icommerce__tax_class_translations: ~0 rows (approximately)
/*!40000 ALTER TABLE `icommerce__tax_class_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `icommerce__tax_class_translations` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.icommerce__tax_rates
CREATE TABLE IF NOT EXISTS `icommerce__tax_rates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rate` decimal(50,2) NOT NULL,
  `type` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `geozone_id` int(10) unsigned NOT NULL,
  `customer` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `icommerce__tax_rates_geozone_id_foreign` (`geozone_id`),
  CONSTRAINT `icommerce__tax_rates_geozone_id_foreign` FOREIGN KEY (`geozone_id`) REFERENCES `ilocations__geozones` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.icommerce__tax_rates: ~0 rows (approximately)
/*!40000 ALTER TABLE `icommerce__tax_rates` DISABLE KEYS */;
/*!40000 ALTER TABLE `icommerce__tax_rates` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.icommerce__tax_rate_translations
CREATE TABLE IF NOT EXISTS `icommerce__tax_rate_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` int(10) unsigned NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `icommerce__tax_rate_translations_tax_rate_id_locale_unique` (`tax_rate_id`,`locale`),
  KEY `icommerce__tax_rate_translations_locale_index` (`locale`),
  CONSTRAINT `icommerce__tax_rate_translations_tax_rate_id_foreign` FOREIGN KEY (`tax_rate_id`) REFERENCES `icommerce__tax_rates` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.icommerce__tax_rate_translations: ~0 rows (approximately)
/*!40000 ALTER TABLE `icommerce__tax_rate_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `icommerce__tax_rate_translations` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.icommerce__transactions
CREATE TABLE IF NOT EXISTS `icommerce__transactions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `external_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` int(10) unsigned NOT NULL,
  `payment_method_id` int(10) unsigned NOT NULL,
  `amount` decimal(20,2) NOT NULL,
  `status` int(10) unsigned NOT NULL,
  `external_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `icommerce__transactions_order_id_foreign` (`order_id`),
  KEY `icommerce__transactions_payment_method_id_foreign` (`payment_method_id`),
  CONSTRAINT `icommerce__transactions_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `icommerce__orders` (`id`),
  CONSTRAINT `icommerce__transactions_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `icommerce__payment_methods` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.icommerce__transactions: ~0 rows (approximately)
/*!40000 ALTER TABLE `icommerce__transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `icommerce__transactions` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.icommerce__wishlists
CREATE TABLE IF NOT EXISTS `icommerce__wishlists` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `icommerce__wishlists_user_id_foreign` (`user_id`),
  KEY `icommerce__wishlists_product_id_foreign` (`product_id`),
  CONSTRAINT `icommerce__wishlists_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `icommerce__products` (`id`),
  CONSTRAINT `icommerce__wishlists_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.icommerce__wishlists: ~0 rows (approximately)
/*!40000 ALTER TABLE `icommerce__wishlists` DISABLE KEYS */;
/*!40000 ALTER TABLE `icommerce__wishlists` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.icustom__tasks
CREATE TABLE IF NOT EXISTS `icustom__tasks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `dependencies` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.icustom__tasks: ~6 rows (approximately)
/*!40000 ALTER TABLE `icustom__tasks` DISABLE KEYS */;
INSERT INTO `icustom__tasks` (`id`, `title`, `description`, `duration`, `dependencies`, `created_at`, `updated_at`) VALUES
	(1, 'Compra Boletos', 'comprar los boletos mas economicos posible', 3, '5', '2019-05-13 05:00:00', '2019-05-13 05:00:00'),
	(2, 'Armar Maletas', 'reunir todos los objetos para llevar en el viaje', 2, '', '2019-05-13 05:00:00', '2019-05-13 05:00:00'),
	(3, 'Vacaciones', 'solicitar las vacaciones al jefe', 4, '', '2019-05-13 05:00:00', '2019-05-13 05:00:00'),
	(4, 'Viajar', 'tomar el vuelo a la playa, por fin!', 9, '1,2,3', '2019-05-13 05:00:00', '2019-05-13 05:00:00'),
	(5, 'Prestamo', 'pedir prestamo al banco', 7, '6', '2019-05-13 05:00:00', '2019-05-13 05:00:00'),
	(6, 'Papeles', 'reunir los papeles completos para el prestamo', 9, '', '2019-05-13 05:00:00', '2019-05-13 05:00:00');
/*!40000 ALTER TABLE `icustom__tasks` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.iforms_forms
CREATE TABLE IF NOT EXISTS `iforms_forms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `fields` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `iforms_forms_user_id_foreign` (`user_id`),
  CONSTRAINT `iforms_forms_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.iforms_forms: ~2 rows (approximately)
/*!40000 ALTER TABLE `iforms_forms` DISABLE KEYS */;
INSERT INTO `iforms_forms` (`id`, `user_id`, `title`, `options`, `fields`, `created_at`, `updated_at`) VALUES
	(1, NULL, 'Reservaciones', '"{\\"destination_email\\":\\"slimarias1987@gmail.com\\"}"', '[{"name":"name","label":"Nombre","type":"text","description":"Nombre"},{"name":"phone","label":"Telefono","type":"text","description":"Telefono"},{"name":"email","label":"Correo Electr\\u00f3nico","type":"email","description":"Correo Electr\\u00f3nico"},{"name":"people_number","label":"N\\u00famero de Personas","type":"number","description":"N\\u00famero de Personas"},{"name":"reservation_date","label":"Fecha y Hora","type":"datetime","description":"Fecha y Hora"},{"name":"reservation_info","label":"Datos de la Reserva","type":"textarea","description":"Datos de la Reserva"},{"name":"comment","label":"Comentario","type":"textarea","description":"Comentario"}]', '2019-04-23 16:39:43', '2019-04-23 16:42:03'),
	(2, NULL, 'Contacto', '"{\\"destination_email\\":\\"slimarias1987@gmail.com\\"}"', '[{"name":"name","label":"nombre","type":"text","description":"Nombre"},{"name":"phone","label":"Tel\\u00e9fono","type":"tel","description":"Tel\\u00e9fono"},{"name":"email","label":"Correo Electr\\u00f3nico","type":"email","description":"Correo Electr\\u00f3nico"},{"name":"message","label":"Mensaje","type":"textarea","description":"mensaje"}]', '2019-05-02 15:50:59', '2019-05-02 15:50:59');
/*!40000 ALTER TABLE `iforms_forms` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.iforms_leads
CREATE TABLE IF NOT EXISTS `iforms_leads` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` int(10) unsigned NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `iforms_leads_form_id_foreign` (`form_id`),
  CONSTRAINT `iforms_leads_form_id_foreign` FOREIGN KEY (`form_id`) REFERENCES `iforms_forms` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.iforms_leads: ~54 rows (approximately)
/*!40000 ALTER TABLE `iforms_leads` DISABLE KEYS */;
INSERT INTO `iforms_leads` (`id`, `form_id`, `options`, `created_at`, `updated_at`) VALUES
	(1, 1, '"{\\"name\\":\\"prueba\\",\\"phone\\":3216819256,\\"email\\":\\"prueba@prueba.com\\",\\"comment\\":\\"mesa\\"}"', '2019-05-28 08:40:38', '2019-05-28 08:40:38'),
	(2, 2, '"{\\"name\\":\\"prueba\\",\\"phone\\":3216548965,\\"email\\":\\"prueba@prueba.com\\",\\"message\\":\\"prueba\\"}"', '2019-06-10 14:52:14', '2019-06-10 14:52:14'),
	(3, 2, '"{\\"name\\":\\"fdsfdsf\\",\\"phone\\":231532,\\"email\\":\\"dsfds@dsfsd.com\\",\\"message\\":\\"dsfdfsd\\"}"', '2019-06-10 14:53:38', '2019-06-10 14:53:38'),
	(4, 1, '"{\\"name\\":\\"prueba\\",\\"phone\\":3215863,\\"email\\":\\"prueba@prueba.com\\",\\"comment\\":\\"dfdsds\\"}"', '2019-06-10 14:54:30', '2019-06-10 14:54:30'),
	(5, 2, '"{\\"name\\":\\"fgfdgdf\\",\\"phone\\":4553145,\\"email\\":\\"fdgf@jfgf.com\\",\\"message\\":\\"thtgfhftg\\"}"', '2019-06-10 14:56:01', '2019-06-10 14:56:01'),
	(6, 1, '"{\\"name\\":\\"prueba\\",\\"phone\\":32568459,\\"email\\":\\"prueba@prueba.com\\",\\"comment\\":\\"asdasdas\\"}"', '2019-06-10 14:58:18', '2019-06-10 14:58:18'),
	(7, 1, '"{\\"name\\":\\"juana bravo\\",\\"phone\\":32568459,\\"email\\":\\"prueba@prueba.com\\",\\"comment\\":\\"hjhj\\"}"', '2019-06-10 14:59:59', '2019-06-10 14:59:59'),
	(8, 2, '"{\\"name\\":\\"jgjgh\\",\\"phone\\":4554,\\"email\\":\\"fhdgd@fdsf.com\\",\\"message\\":\\"ghgfhgf\\"}"', '2019-06-10 15:00:30', '2019-06-10 15:00:30'),
	(9, 1, '"{\\"name\\":\\"Slim Arias\\",\\"phone\\":1251212151425,\\"email\\":\\"slimarias1987@gmail.com\\",\\"comment\\":\\"kljlskjldhjldjhdhjdhjd\\"}"', '2019-06-10 15:07:20', '2019-06-10 15:07:20'),
	(10, 2, '"{\\"name\\":\\"Slim\\",\\"phone\\":3104445566,\\"email\\":\\"slimarias1987@gmail.com\\",\\"message\\":\\"\\\\u00f1skjlshkdgdgdhdghjd\\"}"', '2019-06-10 15:13:55', '2019-06-10 15:13:55'),
	(11, 2, '"{\\"name\\":\\"Slim\\",\\"phone\\":2020202020,\\"email\\":\\"slimarias1987@gmail.com\\",\\"message\\":\\"\\\\u00f1kahkshkjdgkfegkjdfghkdrgfhjdrdf\\"}"', '2019-06-10 15:34:01', '2019-06-10 15:34:01'),
	(12, 2, '"{\\"name\\":\\"Slim Arias\\",\\"phone\\":21213245131321,\\"email\\":\\"slimarias1987@gmail.com\\",\\"message\\":\\"kljslkhjdlshdhdjd\\"}"', '2019-06-10 15:35:05', '2019-06-10 15:35:05'),
	(13, 2, '"{\\"name\\":\\"Slim\\",\\"phone\\":3030303030,\\"email\\":\\"slimarias1987@gmail.com\\",\\"message\\":\\"sjkslhjdlhkjdfhkjfhrgkdgfhjdgscvfdsbhjcvhjdeswvcdhjvdfjsas\\"}"', '2019-06-10 15:36:34', '2019-06-10 15:36:34'),
	(14, 2, '"{\\"name\\":\\"slim\\",\\"phone\\":3014545454564956,\\"email\\":\\"slimarias1987@gmail.com\\",\\"message\\":\\"jkljlhksjghdsghdkgd\\"}"', '2019-06-10 15:37:18', '2019-06-10 15:37:18'),
	(15, 2, '"{\\"name\\":\\"Slim Arias\\",\\"phone\\":3014556677,\\"email\\":\\"slimarias1987@gmail.com\\",\\"message\\":\\"1212121212\\"}"', '2019-06-10 15:38:17', '2019-06-10 15:38:17'),
	(16, 2, '"{\\"name\\":\\"Slim Arias\\",\\"phone\\":3014445566,\\"email\\":\\"slimarias1987@gmail.com\\",\\"message\\":\\"kjskjskjhskshhddfghf\\"}"', '2019-06-10 15:39:32', '2019-06-10 15:39:32'),
	(17, 2, '"{\\"name\\":\\"Slim\\",\\"phone\\":3014445566,\\"email\\":\\"slimarias1987@gmail.com\\",\\"message\\":\\"20202020aswdsdkljshkjdghdgfd\\"}"', '2019-06-10 15:40:26', '2019-06-10 15:40:26'),
	(18, 2, '"{\\"name\\":\\"Slim\\",\\"phone\\":3014789632,\\"email\\":\\"slimarias1987@gmail.com\\",\\"message\\":\\"Sacmcdkbkjcfhdghcdvhjvfjvhjdda\\"}"', '2019-06-10 15:41:20', '2019-06-10 15:41:20'),
	(19, 2, '"{\\"name\\":\\"Slim\\",\\"phone\\":3017891234,\\"email\\":\\"slimarias1987@gmail.com\\",\\"message\\":\\"21212121\\"}"', '2019-06-10 15:42:06', '2019-06-10 15:42:06'),
	(20, 2, '"{\\"name\\":\\"Slim\\",\\"phone\\":3014789632,\\"email\\":\\"slimarias1987@gmail.com\\",\\"message\\":\\"2020201121sksjhkjshkjdghjd\\"}"', '2019-06-10 15:43:12', '2019-06-10 15:43:12'),
	(21, 2, '"{\\"name\\":\\"Slim Arias\\",\\"phone\\":3012369874,\\"email\\":\\"slimarias1987@gmail.com\\",\\"message\\":\\"a1a1a21a214s21a21a54s51s514s51s5s\\"}"', '2019-06-10 15:45:31', '2019-06-10 15:45:31'),
	(22, 2, '"{\\"name\\":\\"Slim Arias\\",\\"phone\\":3012369874,\\"email\\":\\"slimarias1987@gmail.com\\",\\"message\\":\\"askhndkdekjhecdhksjgsghjsgsdhjgdfjsf\\"}"', '2019-06-10 15:49:36', '2019-06-10 15:49:36'),
	(23, 2, '"{\\"name\\":\\"Slim Arias\\",\\"phone\\":3012369874,\\"email\\":\\"slimarias1987@gmail.com\\",\\"message\\":\\"Slim Arias\\"}"', '2019-06-10 15:51:56', '2019-06-10 15:51:56'),
	(24, 2, '"{\\"name\\":\\"Slim Arias\\",\\"phone\\":3012369874,\\"email\\":\\"slimarias1987@gmail.com\\",\\"message\\":\\"slim arias sanchez\\"}"', '2019-06-10 15:52:52', '2019-06-10 15:52:52'),
	(25, 2, '"{\\"name\\":\\"Slim\\",\\"phone\\":3014567890,\\"email\\":\\"slimarias1987@gmail.com\\",\\"message\\":\\"Slim Arias Sanchez\\"}"', '2019-06-10 15:55:18', '2019-06-10 15:55:18'),
	(26, 2, '"{\\"name\\":\\"Slim Arias\\",\\"phone\\":3017391910,\\"email\\":\\"slimarias1987@gmail.com\\",\\"message\\":\\"slim arias\\"}"', '2019-06-10 15:58:03', '2019-06-10 15:58:03'),
	(27, 2, '"{\\"name\\":\\"Slim Arias\\",\\"phone\\":3017391910,\\"email\\":\\"slimarias1987@gmail.com\\",\\"message\\":\\"Slim\\"}"', '2019-06-10 15:59:23', '2019-06-10 15:59:23'),
	(28, 1, '"{\\"name\\":\\"Slim Arias\\",\\"phone\\":3017391910,\\"email\\":\\"slimarias1987@gmail.com\\",\\"reservation_date\\":\\"2019-06-10T16:00:42.918-05:00\\",\\"reservation_info\\":\\"Slim\\",\\"comment\\":\\"Slim\\"}"', '2019-06-10 16:00:49', '2019-06-10 16:00:49'),
	(29, 1, '"{\\"name\\":\\"Slim Arias\\",\\"phone\\":3017391910,\\"email\\":\\"slimarias1987@gmail.com\\",\\"people_number\\":30,\\"reservation_date\\":\\"2019-06-10T16:30:15.923-05:00\\",\\"reservation_info\\":\\"Slim\\",\\"comment\\":\\"Arias\\"}"', '2019-06-10 16:03:29', '2019-06-10 16:03:29'),
	(30, 2, '"{\\"name\\":\\"sdfasfdsf\\",\\"phone\\":2342342,\\"email\\":\\"dsadadad@asd.com\\",\\"message\\":\\"asdasdasdasd\\"}"', '2019-06-14 09:44:38', '2019-06-14 09:44:38'),
	(31, 1, '"{\\"name\\":\\"prueba imagina\\",\\"phone\\":3216549875,\\"email\\":\\"prueba@prueba.com\\",\\"people_number\\":6,\\"reservation_date\\":\\"2019-06-15T02:10:00.000-05:00\\",\\"reservation_info\\":\\"dfsf\\",\\"comment\\":\\"dsffsd\\"}"', '2019-06-14 10:21:21', '2019-06-14 10:21:21'),
	(32, 1, '"{\\"name\\":\\"Exdjdjx\\",\\"phone\\":\\"(374) 745-7473\\",\\"email\\":\\"Fkfjd@ddjd.xom\\",\\"people_number\\":4,\\"reservation_date\\":\\"2019-06-22T11:40:09.490-05:00\\",\\"reservation_info\\":\\"Djfjf\\",\\"comment\\":\\"Djdjejfjcjjcff\\"}"', '2019-06-22 11:40:23', '2019-06-22 11:40:23'),
	(33, 1, '"{\\"name\\":\\"Imagina Colombia\\",\\"phone\\":\\"(321) 658-7198\\",\\"email\\":\\"prueba@prueba.com\\",\\"people_number\\":4,\\"reservation_date\\":\\"2019-06-28T03:10:00.000-05:00\\",\\"reservation_info\\":\\"kjiyghujg\\",\\"comment\\":\\"ujygujgy\\"}"', '2019-06-22 12:11:22', '2019-06-22 12:11:22'),
	(34, 1, '"{\\"name\\":\\"Imagina Colombia\\",\\"phone\\":\\"(325) 684-59\\",\\"email\\":\\"prueba@prueba.com\\",\\"people_number\\":5,\\"reservation_date\\":\\"2019-06-26T03:25:00.000-05:00\\",\\"reservation_info\\":\\"dgfsgfs\\",\\"comment\\":\\"dfgdfgfd\\"}"', '2019-06-22 12:13:14', '2019-06-22 12:13:14'),
	(35, 1, '"{\\"name\\":\\"fdgdfgfd\\",\\"phone\\":\\"(321) 654-9875\\",\\"email\\":\\"prueba@prueba.com\\",\\"people_number\\":6,\\"reservation_date\\":\\"2019-06-27T03:15:00.000-05:00\\",\\"reservation_info\\":\\"9\\",\\"comment\\":\\"fdgdfgdffd\\"}"', '2019-06-22 12:13:48', '2019-06-22 12:13:48'),
	(36, 1, '"{\\"name\\":\\"Imagina Colombia\\",\\"phone\\":\\"(325) 684-5924\\",\\"email\\":\\"prueba@prueba.com\\",\\"people_number\\":4,\\"reservation_date\\":\\"2019-06-27T04:15:00.000-05:00\\",\\"reservation_info\\":\\"reserva\\",\\"comment\\":\\"reserva\\"}"', '2019-06-26 14:43:01', '2019-06-26 14:43:01'),
	(37, 1, '"{\\"name\\":\\"Imagina Colombia\\",\\"phone\\":\\"(325) 684-593\\",\\"email\\":\\"prueba@prueba.com\\",\\"people_number\\":6,\\"reservation_date\\":\\"2019-06-27T03:15:00.000-05:00\\",\\"reservation_info\\":\\"Imagina Colombia\\",\\"comment\\":\\"Imagina Colombia\\"}"', '2019-06-26 14:44:25', '2019-06-26 14:44:25'),
	(38, 1, '"{\\"name\\":\\"ghgfh\\",\\"phone\\":\\"(321) 456-9874\\",\\"email\\":\\"gfhgfgf@fdghdfg.com\\",\\"people_number\\":5,\\"reservation_date\\":\\"2019-06-28T03:20:00.000-05:00\\",\\"reservation_info\\":\\"5\\",\\"comment\\":\\"gfhgf\\"}"', '2019-06-27 11:51:29', '2019-06-27 11:51:29'),
	(39, 1, '"{\\"name\\":\\"A\\",\\"phone\\":\\"(121) 545-4545\\",\\"email\\":\\"slimarias1987@gmail.com\\",\\"people_number\\":22,\\"reservation_date\\":\\"2019-06-27T12:00:13.718-05:00\\",\\"reservation_info\\":\\"154545454545\\",\\"comment\\":\\"4+6+6654654\\"}"', '2019-06-27 11:53:37', '2019-06-27 11:53:37'),
	(40, 1, '"{\\"name\\":\\"juana bravo\\",\\"phone\\":\\"(325) 684-59\\",\\"email\\":\\"prueba@prueba.com\\",\\"people_number\\":5,\\"reservation_date\\":\\"2019-06-28T03:20:00.000-05:00\\",\\"reservation_info\\":\\"jljklh\\",\\"comment\\":\\"hjghjgh\\"}"', '2019-06-27 11:55:30', '2019-06-27 11:55:30'),
	(41, 1, '"{\\"name\\":\\"ksahkjshdgdg\\",\\"phone\\":\\"(131) 564-6165\\",\\"email\\":\\"slimarias1987@gmail.com\\",\\"people_number\\":21,\\"reservation_date\\":\\"2019-06-27T12:00:09.771-05:00\\",\\"reservation_info\\":\\"1321361465456\\",\\"comment\\":\\"5645s6456456464\\"}"', '2019-06-27 11:57:21', '2019-06-27 11:57:21'),
	(42, 1, '"{\\"name\\":\\"Askddkjhkjhf\\",\\"phone\\":\\"(121) 212-1212\\",\\"email\\":\\"slimarias1987@gmail.com\\",\\"people_number\\":10,\\"reservation_date\\":\\"2019-06-27T12:31:40.837-05:00\\",\\"reservation_info\\":\\"qaqqqq\\",\\"comment\\":\\"aaaaaaaaaaaa\\"}"', '2019-06-27 12:01:47', '2019-06-27 12:01:47'),
	(43, 1, '"{\\"name\\":\\"Slim\\",\\"phone\\":\\"(320) 145-6897\\",\\"email\\":\\"slimarias1987@gmail.com\\",\\"people_number\\":10,\\"reservation_date\\":\\"2019-06-27T12:30:35.905-05:00\\",\\"reservation_info\\":\\"aaaaaa\\",\\"comment\\":\\"aaaaaaaaaaaaa\\"}"', '2019-06-27 12:02:41', '2019-06-27 12:02:41'),
	(44, 1, '"{\\"name\\":\\"slim\\",\\"phone\\":\\"(320) 789-4561\\",\\"email\\":\\"slimarias1987@gmail.com\\",\\"people_number\\":100,\\"reservation_date\\":\\"2019-06-27T12:30:03.320-05:00\\",\\"reservation_info\\":\\"aaaaaa\\",\\"comment\\":\\"aaaaaaaaaaa\\"}"', '2019-06-27 12:04:16', '2019-06-27 12:04:16'),
	(45, 1, '"{\\"name\\":\\"Slim Arias\\",\\"phone\\":\\"(310) 456-7891\\",\\"email\\":\\"slimarias1987@gmail.com\\",\\"people_number\\":10,\\"reservation_date\\":\\"2019-06-27T18:00:48.247-05:00\\",\\"reservation_info\\":\\"12121212121212\\",\\"comment\\":\\"121212121212\\"}"', '2019-06-27 12:06:04', '2019-06-27 12:06:04'),
	(46, 1, '"{\\"name\\":\\"Slim\\",\\"phone\\":\\"(323) 232-3253\\",\\"email\\":\\"slimarias1987@gmail.com\\",\\"people_number\\":10,\\"reservation_date\\":\\"2019-06-27T18:30:57.071-05:00\\",\\"reservation_info\\":\\"12121212\\",\\"comment\\":\\"12121212\\"}"', '2019-06-27 12:08:07', '2019-06-27 12:08:07'),
	(47, 1, '"{\\"name\\":\\"Slim\\",\\"phone\\":\\"(132) 323-1313\\",\\"email\\":\\"slimarias1987@gmail.com\\",\\"people_number\\":10,\\"reservation_date\\":\\"2019-06-27T18:30:08.940-05:00\\",\\"reservation_info\\":\\"10\\",\\"comment\\":\\"Slimakdhjhdfkjfjgfjh\\"}"', '2019-06-27 12:12:21', '2019-06-27 12:12:21'),
	(48, 1, '"{\\"name\\":\\"Slim\\",\\"phone\\":\\"(121) 421-5454\\",\\"email\\":\\"slimarias1987@gmail.com\\",\\"people_number\\":10,\\"reservation_date\\":\\"2019-06-27T18:30:08.860-05:00\\",\\"reservation_info\\":\\"10\\",\\"comment\\":\\"sslsks\\\\u00f1lks\\\\u00f1s\\"}"', '2019-06-27 12:13:18', '2019-06-27 12:13:18'),
	(49, 1, '"{\\"name\\":\\"Slim\\",\\"phone\\":\\"(310) 456-7890\\",\\"email\\":\\"slimarias1987@gmail.com\\",\\"people_number\\":10,\\"reservation_date\\":\\"2019-06-27T18:30:57.547-05:00\\",\\"reservation_info\\":\\"10\\",\\"comment\\":\\"dsmjdjldjjdld\\"}"', '2019-06-27 12:14:07', '2019-06-27 12:14:07'),
	(50, 1, '"{\\"name\\":\\"slim\\",\\"phone\\":\\"(310) 456-7890\\",\\"email\\":\\"slimarias1987@gmail.com\\",\\"people_number\\":10,\\"reservation_date\\":\\"2019-06-27T18:30:20.315-05:00\\",\\"reservation_info\\":\\"10\\",\\"comment\\":\\"1212121458465164\\"}"', '2019-06-27 12:15:29', '2019-06-27 12:15:29'),
	(51, 1, '"{\\"name\\":\\"Imagina Colombia\\",\\"phone\\":\\"(321) 654-8951\\",\\"email\\":\\"prueba@prueba.com\\",\\"people_number\\":4,\\"reservation_date\\":\\"2019-06-28T10:56:17.416-05:00\\",\\"reservation_info\\":\\"dsfdfsd\\",\\"comment\\":\\"dsfdsfds\\"}"', '2019-06-28 10:56:37', '2019-06-28 10:56:37'),
	(52, 1, '"{\\"name\\":\\"Imagina Colombia\\",\\"phone\\":\\"(325) 684-5945\\",\\"email\\":\\"prueba@prueba.com\\",\\"people_number\\":4,\\"reservation_date\\":\\"2019-06-28T10:57:27.063-05:00\\",\\"reservation_info\\":\\"sfdfs\\",\\"comment\\":\\"Imagina Colombia\\"}"', '2019-06-28 10:57:49', '2019-06-28 10:57:49'),
	(53, 2, '"{\\"name\\":\\"prueba\\",\\"phone\\":\\"(321) 654-4758\\",\\"email\\":\\"hgbh@jghkjg.com\\",\\"message\\":\\"hghghj\\"}"', '2019-06-28 10:58:35', '2019-06-28 10:58:35'),
	(54, 1, '"{\\"name\\":\\"fdgdfg\\",\\"phone\\":\\"(321) 546-8578\\",\\"email\\":\\"fdgddgf@fgdfg.com\\",\\"people_number\\":5,\\"reservation_date\\":\\"2019-06-28T14:39:33.282-05:00\\",\\"reservation_info\\":\\"jjkk\\",\\"comment\\":\\"kkjj\\"}"', '2019-06-28 14:39:47', '2019-06-28 14:39:47');
/*!40000 ALTER TABLE `iforms_leads` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.iforms_lead_details
CREATE TABLE IF NOT EXISTS `iforms_lead_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` int(10) unsigned NOT NULL,
  `lead_id` int(10) unsigned NOT NULL,
  `field_id` int(11) NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `iforms_lead_details_form_id_foreign` (`form_id`),
  KEY `iforms_lead_details_lead_id_foreign` (`lead_id`),
  CONSTRAINT `iforms_lead_details_form_id_foreign` FOREIGN KEY (`form_id`) REFERENCES `iforms_forms` (`id`),
  CONSTRAINT `iforms_lead_details_lead_id_foreign` FOREIGN KEY (`lead_id`) REFERENCES `iforms_leads` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.iforms_lead_details: ~0 rows (approximately)
/*!40000 ALTER TABLE `iforms_lead_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `iforms_lead_details` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.ilocations__cities
CREATE TABLE IF NOT EXISTS `ilocations__cities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` int(10) unsigned NOT NULL,
  `province_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ilocations__cities_country_id_foreign` (`country_id`),
  KEY `ilocations__cities_province_id_foreign` (`province_id`),
  CONSTRAINT `ilocations__cities_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `ilocations__countries` (`id`) ON DELETE CASCADE,
  CONSTRAINT `ilocations__cities_province_id_foreign` FOREIGN KEY (`province_id`) REFERENCES `ilocations__provinces` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.ilocations__cities: ~0 rows (approximately)
/*!40000 ALTER TABLE `ilocations__cities` DISABLE KEYS */;
INSERT INTO `ilocations__cities` (`id`, `code`, `country_id`, `province_id`, `created_at`, `updated_at`) VALUES
	(1, '730001', 1, 1, '2019-04-30 21:43:57', '2019-04-30 21:43:57');
/*!40000 ALTER TABLE `ilocations__cities` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.ilocations__city_translations
CREATE TABLE IF NOT EXISTS `ilocations__city_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_id` int(10) unsigned NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ilocations__city_translations_city_id_locale_unique` (`city_id`,`locale`),
  KEY `ilocations__city_translations_locale_index` (`locale`),
  CONSTRAINT `ilocations__city_translations_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `ilocations__cities` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.ilocations__city_translations: ~0 rows (approximately)
/*!40000 ALTER TABLE `ilocations__city_translations` DISABLE KEYS */;
INSERT INTO `ilocations__city_translations` (`id`, `name`, `city_id`, `locale`) VALUES
	(1, 'Ibagué', 1, 'es');
/*!40000 ALTER TABLE `ilocations__city_translations` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.ilocations__countries
CREATE TABLE IF NOT EXISTS `ilocations__countries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_symbol` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_sub_unit` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `region_code` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_region_code` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_code` int(10) unsigned NOT NULL,
  `iso_2` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `iso_3` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `calling_code` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.ilocations__countries: ~0 rows (approximately)
/*!40000 ALTER TABLE `ilocations__countries` DISABLE KEYS */;
INSERT INTO `ilocations__countries` (`id`, `status`, `currency`, `currency_symbol`, `currency_code`, `currency_sub_unit`, `region_code`, `sub_region_code`, `country_code`, `iso_2`, `iso_3`, `calling_code`, `created_at`, `updated_at`) VALUES
	(1, 1, '', '', '', '', '', '', 0, 'CO', '', 0, '2019-04-30 21:29:10', '2019-04-30 21:29:10');
/*!40000 ALTER TABLE `ilocations__countries` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.ilocations__country_translations
CREATE TABLE IF NOT EXISTS `ilocations__country_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `full_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` int(10) unsigned NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ilocations__country_translations_country_id_locale_unique` (`country_id`,`locale`),
  KEY `ilocations__country_translations_locale_index` (`locale`),
  CONSTRAINT `ilocations__country_translations_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `ilocations__countries` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.ilocations__country_translations: ~0 rows (approximately)
/*!40000 ALTER TABLE `ilocations__country_translations` DISABLE KEYS */;
INSERT INTO `ilocations__country_translations` (`id`, `name`, `full_name`, `country_id`, `locale`) VALUES
	(1, 'Colombia', 'Colombia', 1, 'es');
/*!40000 ALTER TABLE `ilocations__country_translations` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.ilocations__geozones
CREATE TABLE IF NOT EXISTS `ilocations__geozones` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.ilocations__geozones: ~0 rows (approximately)
/*!40000 ALTER TABLE `ilocations__geozones` DISABLE KEYS */;
INSERT INTO `ilocations__geozones` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
	(1, 'Ibague', 'Ibague', '2019-04-30 21:49:50', '2019-04-30 21:49:50');
/*!40000 ALTER TABLE `ilocations__geozones` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.ilocations__geozones_countries_provinces
CREATE TABLE IF NOT EXISTS `ilocations__geozones_countries_provinces` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `geozone_id` int(10) unsigned NOT NULL,
  `country_id` int(10) unsigned DEFAULT NULL,
  `province_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ilocations__geozones_countries_provinces_geozone_id_foreign` (`geozone_id`),
  KEY `ilocations__geozones_countries_provinces_country_id_foreign` (`country_id`),
  KEY `ilocations__geozones_countries_provinces_province_id_foreign` (`province_id`),
  CONSTRAINT `ilocations__geozones_countries_provinces_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `ilocations__countries` (`id`) ON DELETE CASCADE,
  CONSTRAINT `ilocations__geozones_countries_provinces_geozone_id_foreign` FOREIGN KEY (`geozone_id`) REFERENCES `ilocations__geozones` (`id`) ON DELETE CASCADE,
  CONSTRAINT `ilocations__geozones_countries_provinces_province_id_foreign` FOREIGN KEY (`province_id`) REFERENCES `ilocations__provinces` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.ilocations__geozones_countries_provinces: ~0 rows (approximately)
/*!40000 ALTER TABLE `ilocations__geozones_countries_provinces` DISABLE KEYS */;
INSERT INTO `ilocations__geozones_countries_provinces` (`id`, `geozone_id`, `country_id`, `province_id`, `created_at`, `updated_at`) VALUES
	(2, 1, 1, NULL, '2019-04-30 21:49:52', '2019-04-30 21:49:52');
/*!40000 ALTER TABLE `ilocations__geozones_countries_provinces` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.ilocations__provinces
CREATE TABLE IF NOT EXISTS `ilocations__provinces` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `iso_2` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ilocations__provinces_country_id_foreign` (`country_id`),
  CONSTRAINT `ilocations__provinces_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `ilocations__countries` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.ilocations__provinces: ~0 rows (approximately)
/*!40000 ALTER TABLE `ilocations__provinces` DISABLE KEYS */;
INSERT INTO `ilocations__provinces` (`id`, `iso_2`, `country_id`, `created_at`, `updated_at`) VALUES
	(1, '', 1, '2019-04-30 21:37:58', '2019-04-30 21:37:58');
/*!40000 ALTER TABLE `ilocations__provinces` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.ilocations__province_translations
CREATE TABLE IF NOT EXISTS `ilocations__province_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province_id` int(10) unsigned NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ilocations__province_translations_province_id_locale_unique` (`province_id`,`locale`),
  KEY `ilocations__province_translations_locale_index` (`locale`),
  CONSTRAINT `ilocations__province_translations_province_id_foreign` FOREIGN KEY (`province_id`) REFERENCES `ilocations__provinces` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.ilocations__province_translations: ~0 rows (approximately)
/*!40000 ALTER TABLE `ilocations__province_translations` DISABLE KEYS */;
INSERT INTO `ilocations__province_translations` (`id`, `name`, `province_id`, `locale`) VALUES
	(1, 'Tolima', 1, 'es');
/*!40000 ALTER TABLE `ilocations__province_translations` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.iplaces__categories
CREATE TABLE IF NOT EXISTS `iplaces__categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `status` int(10) unsigned NOT NULL,
  `lft` int(10) unsigned DEFAULT NULL,
  `rgt` int(10) unsigned DEFAULT NULL,
  `depth` int(10) unsigned DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.iplaces__categories: ~0 rows (approximately)
/*!40000 ALTER TABLE `iplaces__categories` DISABLE KEYS */;
INSERT INTO `iplaces__categories` (`id`, `parent_id`, `status`, `lft`, `rgt`, `depth`, `options`, `created_at`, `updated_at`) VALUES
	(4, 0, 1, NULL, NULL, NULL, '{"masterRecord":0}', '2019-05-22 10:51:14', '2019-08-03 12:36:41');
/*!40000 ALTER TABLE `iplaces__categories` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.iplaces__category_translations
CREATE TABLE IF NOT EXISTS `iplaces__category_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `iplaces__category_translations_category_id_locale_unique` (`category_id`,`locale`),
  KEY `iplaces__category_translations_locale_index` (`locale`),
  CONSTRAINT `iplaces__category_translations_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `iplaces__categories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.iplaces__category_translations: ~4 rows (approximately)
/*!40000 ALTER TABLE `iplaces__category_translations` DISABLE KEYS */;
INSERT INTO `iplaces__category_translations` (`id`, `title`, `slug`, `description`, `meta_title`, `meta_keywords`, `meta_description`, `category_id`, `locale`) VALUES
	(13, 'test', 'test', 'test', 'test', '', 'test', 4, 'ace'),
	(14, 'test', 'test', 'test', 'test', '', 'test', 4, 'af'),
	(15, 'test', 'test', 'test', 'test', '', 'test', 4, 'en'),
	(16, 'Sucursales', 'sucursales', 'Sucursales', 'sucursales', '', 'sucursales', 4, 'es');
/*!40000 ALTER TABLE `iplaces__category_translations` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.iplaces__cities
CREATE TABLE IF NOT EXISTS `iplaces__cities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `province_id` int(10) unsigned NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.iplaces__cities: ~0 rows (approximately)
/*!40000 ALTER TABLE `iplaces__cities` DISABLE KEYS */;
/*!40000 ALTER TABLE `iplaces__cities` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.iplaces__city_translations
CREATE TABLE IF NOT EXISTS `iplaces__city_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_id` int(10) unsigned NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `iplaces__city_translations_city_id_locale_unique` (`city_id`,`locale`),
  KEY `iplaces__city_translations_locale_index` (`locale`),
  CONSTRAINT `iplaces__city_translations_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `iplaces__cities` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.iplaces__city_translations: ~0 rows (approximately)
/*!40000 ALTER TABLE `iplaces__city_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `iplaces__city_translations` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.iplaces__places
CREATE TABLE IF NOT EXISTS `iplaces__places` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `options` text COLLATE utf8mb4_unicode_ci,
  `schedules` text COLLATE utf8mb4_unicode_ci,
  `city_id` int(10) unsigned NOT NULL DEFAULT '0',
  `province_id` int(10) unsigned NOT NULL DEFAULT '0',
  `status` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id` int(10) unsigned NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `zone_id` int(10) unsigned NOT NULL,
  `service_id` int(10) unsigned NOT NULL,
  `schedule_id` int(10) unsigned NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_1` int(10) unsigned NOT NULL,
  `phone_2` int(10) unsigned NOT NULL DEFAULT '0',
  `phone_3` int(10) unsigned NOT NULL DEFAULT '0',
  `range_id` int(10) unsigned NOT NULL,
  `gama` int(10) unsigned NOT NULL DEFAULT '0',
  `quantity_person` int(10) unsigned NOT NULL DEFAULT '0',
  `weather` int(10) unsigned NOT NULL DEFAULT '0',
  `housing` int(10) unsigned NOT NULL DEFAULT '0',
  `transport` int(10) unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `rating` double(3,2) NOT NULL DEFAULT '3.00',
  `validated` tinyint(1) NOT NULL DEFAULT '0',
  `site_id` int(10) unsigned NOT NULL,
  `order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `iplaces__places_user_id_foreign` (`user_id`),
  CONSTRAINT `iplaces__places_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.iplaces__places: ~2 rows (approximately)
/*!40000 ALTER TABLE `iplaces__places` DISABLE KEYS */;
INSERT INTO `iplaces__places` (`id`, `options`, `schedules`, `city_id`, `province_id`, `status`, `user_id`, `category_id`, `zone_id`, `service_id`, `schedule_id`, `address`, `phone_1`, `phone_2`, `phone_3`, `range_id`, `gama`, `quantity_person`, `weather`, `housing`, `transport`, `created_at`, `updated_at`, `rating`, `validated`, `site_id`, `order`) VALUES
	(4, '{"phone1":2664999,"phone2":3163961295,"phone3":null}', '[{"name":"monday","iso":1,"schedules":"1"},{"name":"tuesday","iso":2,"schedules":"1"},{"name":"wednesday","iso":3,"schedules":"1"},{"name":"thursday","iso":4,"schedules":[{"from":"2019-07-16T08:00:00.000-05:00","to":"2019-07-16T20:00:00.000-05:00"}]},{"name":"friday","iso":5,"schedules":"1"},{"name":"saturday","iso":6,"schedules":"1"},{"name":"sunday","iso":7,"schedules":"1"}]', 0, 0, 0, 1, 4, 0, 0, 0, '{"address":"Cl. 29 #7-54, Ibagu\\u00e9, Tolima","longitude":-75.2061764000000039231963455677032470703125,"latitude":4.4371644999999997338591128936968743801116943359375}', 345345345, 54645645, 546456, 0, 0, 0, 0, 0, 0, '2019-05-20 15:56:05', '2019-08-15 11:35:12', 3.00, 0, 0, 0),
	(8, '{"mainimage":null}', '[{"name":"monday","iso":1,"schedules":"1"},{"name":"tuesday","iso":2,"schedules":[{"from":"2019-07-16T08:00:00.000-05:00","to":"2019-07-16T20:00:00.000-05:00"},{"from":"2019-08-15T01:00:00.000-05:00","to":"2019-08-15T05:00:00.000-05:00"}]},{"name":"wednesday","iso":3,"schedules":"1"},{"name":"thursday","iso":4,"schedules":"1"},{"name":"friday","iso":5,"schedules":"1"},{"name":"saturday","iso":6,"schedules":"1"},{"name":"sunday","iso":7,"schedules":"1"}]', 0, 0, 0, 1, 4, 0, 0, 0, '{"address":"Cl. 29 #7-54, Ibagu\\u00e9, Tolima","latitude":null,"longitude":null}', 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-06-29 11:30:28', '2019-08-15 11:35:48', 3.00, 0, 0, 0);
/*!40000 ALTER TABLE `iplaces__places` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.iplaces__place_category
CREATE TABLE IF NOT EXISTS `iplaces__place_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `place_id` int(10) unsigned NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.iplaces__place_category: ~3 rows (approximately)
/*!40000 ALTER TABLE `iplaces__place_category` DISABLE KEYS */;
INSERT INTO `iplaces__place_category` (`id`, `place_id`, `category_id`) VALUES
	(1, 4, 4),
	(2, 8, 4),
	(3, 9, 4);
/*!40000 ALTER TABLE `iplaces__place_category` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.iplaces__place_schedule
CREATE TABLE IF NOT EXISTS `iplaces__place_schedule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `place_id` int(10) unsigned NOT NULL,
  `schedule_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.iplaces__place_schedule: 6 rows
/*!40000 ALTER TABLE `iplaces__place_schedule` DISABLE KEYS */;
INSERT INTO `iplaces__place_schedule` (`id`, `place_id`, `schedule_id`, `created_at`, `updated_at`) VALUES
	(1, 4, 4, NULL, NULL),
	(4, 5, 7, NULL, NULL),
	(7, 8, 4, NULL, NULL),
	(5, 5, 8, NULL, NULL),
	(6, 5, 9, NULL, NULL),
	(8, 8, 5, NULL, NULL);
/*!40000 ALTER TABLE `iplaces__place_schedule` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.iplaces__place_service
CREATE TABLE IF NOT EXISTS `iplaces__place_service` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `place_id` int(10) unsigned NOT NULL,
  `service_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.iplaces__place_service: 0 rows
/*!40000 ALTER TABLE `iplaces__place_service` DISABLE KEYS */;
/*!40000 ALTER TABLE `iplaces__place_service` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.iplaces__place_space
CREATE TABLE IF NOT EXISTS `iplaces__place_space` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `place_id` int(10) unsigned NOT NULL,
  `space_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.iplaces__place_space: 0 rows
/*!40000 ALTER TABLE `iplaces__place_space` DISABLE KEYS */;
/*!40000 ALTER TABLE `iplaces__place_space` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.iplaces__place_translations
CREATE TABLE IF NOT EXISTS `iplaces__place_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `place_id` int(10) unsigned NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `iplaces__place_translations_place_id_locale_unique` (`place_id`,`locale`),
  KEY `iplaces__place_translations_locale_index` (`locale`),
  CONSTRAINT `iplaces__place_translations_place_id_foreign` FOREIGN KEY (`place_id`) REFERENCES `iplaces__places` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.iplaces__place_translations: ~5 rows (approximately)
/*!40000 ALTER TABLE `iplaces__place_translations` DISABLE KEYS */;
INSERT INTO `iplaces__place_translations` (`id`, `title`, `slug`, `summary`, `description`, `meta_title`, `meta_keywords`, `meta_description`, `place_id`, `locale`) VALUES
	(5, 'RINCON DE PIEDRAPINTADA', '', '.', '.', 'test', NULL, 'test', 4, 'ace'),
	(6, 'RINCON DE PIEDRAPINTADA', '', '.', '.', 'tes', NULL, 'test', 4, 'af'),
	(7, 'RINCON DE PIEDRAPINTADA', '', '.', '.', 'test', NULL, 'test', 4, 'en'),
	(8, 'Imagina Colombia', 'imagina-colombia', '.', '.', 'test', NULL, 'test', 4, 'es'),
	(13, 'Imagina', 'Imagina', 'Imagina', 'Imagina<br>', 'gkjhkhj', NULL, 'jkhjkhjkhj', 8, 'es');
/*!40000 ALTER TABLE `iplaces__place_translations` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.iplaces__place_zone
CREATE TABLE IF NOT EXISTS `iplaces__place_zone` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `place_id` int(10) unsigned NOT NULL,
  `zone_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.iplaces__place_zone: 0 rows
/*!40000 ALTER TABLE `iplaces__place_zone` DISABLE KEYS */;
/*!40000 ALTER TABLE `iplaces__place_zone` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.iplaces__related_place
CREATE TABLE IF NOT EXISTS `iplaces__related_place` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `place_id` int(10) unsigned NOT NULL,
  `related_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.iplaces__related_place: 0 rows
/*!40000 ALTER TABLE `iplaces__related_place` DISABLE KEYS */;
/*!40000 ALTER TABLE `iplaces__related_place` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.iplaces__schedules
CREATE TABLE IF NOT EXISTS `iplaces__schedules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.iplaces__schedules: ~5 rows (approximately)
/*!40000 ALTER TABLE `iplaces__schedules` DISABLE KEYS */;
INSERT INTO `iplaces__schedules` (`id`, `options`, `created_at`, `updated_at`) VALUES
	(4, '[{"from":"2019-05-20T11:00:00.000-05:00","to":"2019-05-20T22:00:00.000-05:00"}]', '2019-05-20 18:34:49', '2019-05-21 17:59:26'),
	(5, '[{"from":"2019-05-20T11:00:00.000-05:00","to":"2019-05-20T20:00:00.000-05:00"}]', '2019-05-20 18:46:38', '2019-05-21 18:00:02'),
	(7, '[{"from":"2019-05-21T11:00:00.000-05:00","to":"2019-05-21T21:00:00.000-05:00"}]', '2019-05-21 18:01:05', '2019-05-21 18:01:05'),
	(8, '[{"from":"2019-05-21T11:00:00.000-05:00","to":"2019-05-21T21:00:00.000-05:00"}]', '2019-05-21 18:01:38', '2019-05-21 18:01:38'),
	(9, '[{"from":"2019-05-21T11:00:00.000-05:00","to":"2019-05-21T20:00:00.000-05:00"}]', '2019-05-21 18:02:08', '2019-05-21 18:02:08');
/*!40000 ALTER TABLE `iplaces__schedules` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.iplaces__schedule_translations
CREATE TABLE IF NOT EXISTS `iplaces__schedule_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `schedule_id` int(10) unsigned NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `iplaces__schedule_translations_schedule_id_locale_unique` (`schedule_id`,`locale`),
  KEY `iplaces__schedule_translations_locale_index` (`locale`),
  CONSTRAINT `iplaces__schedule_translations_schedule_id_foreign` FOREIGN KEY (`schedule_id`) REFERENCES `iplaces__schedules` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.iplaces__schedule_translations: ~20 rows (approximately)
/*!40000 ALTER TABLE `iplaces__schedule_translations` DISABLE KEYS */;
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
/*!40000 ALTER TABLE `iplaces__schedule_translations` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.iplaces__services
CREATE TABLE IF NOT EXISTS `iplaces__services` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `status` int(10) unsigned NOT NULL DEFAULT '0',
  `options` text COLLATE utf8mb4_unicode_ci,
  `serv_type` int(10) unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.iplaces__services: ~0 rows (approximately)
/*!40000 ALTER TABLE `iplaces__services` DISABLE KEYS */;
/*!40000 ALTER TABLE `iplaces__services` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.iplaces__service_translations
CREATE TABLE IF NOT EXISTS `iplaces__service_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `service_id` int(10) unsigned NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `iplaces__service_translations_service_id_locale_unique` (`service_id`,`locale`),
  KEY `iplaces__service_translations_locale_index` (`locale`),
  CONSTRAINT `iplaces__service_translations_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `iplaces__services` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.iplaces__service_translations: ~0 rows (approximately)
/*!40000 ALTER TABLE `iplaces__service_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `iplaces__service_translations` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.iplaces__spaces
CREATE TABLE IF NOT EXISTS `iplaces__spaces` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `status` int(10) unsigned NOT NULL DEFAULT '0',
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.iplaces__spaces: ~0 rows (approximately)
/*!40000 ALTER TABLE `iplaces__spaces` DISABLE KEYS */;
/*!40000 ALTER TABLE `iplaces__spaces` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.iplaces__space_translations
CREATE TABLE IF NOT EXISTS `iplaces__space_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `space_id` int(10) unsigned NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `iplaces__space_translations_space_id_locale_unique` (`space_id`,`locale`),
  KEY `iplaces__space_translations_locale_index` (`locale`),
  CONSTRAINT `iplaces__space_translations_space_id_foreign` FOREIGN KEY (`space_id`) REFERENCES `iplaces__spaces` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.iplaces__space_translations: ~0 rows (approximately)
/*!40000 ALTER TABLE `iplaces__space_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `iplaces__space_translations` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.iplaces__zones
CREATE TABLE IF NOT EXISTS `iplaces__zones` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.iplaces__zones: ~0 rows (approximately)
/*!40000 ALTER TABLE `iplaces__zones` DISABLE KEYS */;
/*!40000 ALTER TABLE `iplaces__zones` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.iplaces__zone_translations
CREATE TABLE IF NOT EXISTS `iplaces__zone_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `zone_id` int(10) unsigned NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `iplaces__zone_translations_zone_id_locale_unique` (`zone_id`,`locale`),
  KEY `iplaces__zone_translations_locale_index` (`locale`),
  CONSTRAINT `iplaces__zone_translations_zone_id_foreign` FOREIGN KEY (`zone_id`) REFERENCES `iplaces__zones` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.iplaces__zone_translations: ~0 rows (approximately)
/*!40000 ALTER TABLE `iplaces__zone_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `iplaces__zone_translations` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.iprofile__addresses
CREATE TABLE IF NOT EXISTS `iprofile__addresses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
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
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `iprofile__addresses_user_id_foreign` (`user_id`),
  CONSTRAINT `iprofile__addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.iprofile__addresses: ~0 rows (approximately)
/*!40000 ALTER TABLE `iprofile__addresses` DISABLE KEYS */;
INSERT INTO `iprofile__addresses` (`id`, `user_id`, `first_name`, `last_name`, `company`, `address_1`, `address_2`, `city`, `zip_code`, `country`, `state`, `type`, `app_suit`, `created_at`, `updated_at`) VALUES
	(1, 1, '', '', NULL, 'Calle 29 #7-54', NULL, 'Ibagué', '57', NULL, 'Tolima', NULL, 0, '2019-08-09 14:58:42', '2019-08-09 14:59:14');
/*!40000 ALTER TABLE `iprofile__addresses` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.iprofile__departments
CREATE TABLE IF NOT EXISTS `iprofile__departments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `lft` int(10) unsigned DEFAULT NULL,
  `rgt` int(10) unsigned DEFAULT NULL,
  `depth` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.iprofile__departments: ~0 rows (approximately)
/*!40000 ALTER TABLE `iprofile__departments` DISABLE KEYS */;
INSERT INTO `iprofile__departments` (`id`, `title`, `options`, `parent_id`, `lft`, `rgt`, `depth`, `created_at`, `updated_at`) VALUES
	(1, 'Users', NULL, 0, NULL, NULL, NULL, '2019-04-29 21:42:37', '2019-04-29 21:42:37');
/*!40000 ALTER TABLE `iprofile__departments` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.iprofile__fields
CREATE TABLE IF NOT EXISTS `iprofile__fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `iprofile__fields_user_id_foreign` (`user_id`),
  CONSTRAINT `iprofile__fields_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.iprofile__fields: ~4 rows (approximately)
/*!40000 ALTER TABLE `iprofile__fields` DISABLE KEYS */;
INSERT INTO `iprofile__fields` (`id`, `user_id`, `name`, `value`, `type`, `created_at`, `updated_at`) VALUES
	(14, 1, 'cellularPhone', '"(038) 266-4999"', NULL, '2019-08-06 10:21:41', '2019-08-09 14:55:42'),
	(15, 1, 'birthday', '"2019-09-24T00:00:00.000-05:00"', NULL, '2019-08-06 10:21:41', '2019-08-06 10:21:41'),
	(26, 1, 'mainImage', '"assets\\/iprofiles\\/1.jpg"', NULL, '2019-08-09 14:58:05', '2019-08-09 14:58:05'),
	(27, 1, 'socialNetworks', '[{"options":[],"id":null,"user_id":1,"type":"Facebook","value":"\\/imaginacolombia","es":[]},{"options":[],"id":null,"user_id":1,"type":"Google+","value":"\\/imaginacolombia","es":[]}]', NULL, '2019-08-09 14:58:53', '2019-08-09 14:59:06');
/*!40000 ALTER TABLE `iprofile__fields` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.iprofile__settings
CREATE TABLE IF NOT EXISTS `iprofile__settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `related_id` int(10) unsigned NOT NULL,
  `entity_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.iprofile__settings: ~0 rows (approximately)
/*!40000 ALTER TABLE `iprofile__settings` DISABLE KEYS */;
INSERT INTO `iprofile__settings` (`id`, `related_id`, `entity_name`, `name`, `value`, `type`, `created_at`, `updated_at`) VALUES
	(5, 3, 'role', 'assignedSettings', '["core::site-name","core::site-name-mini","core::site-description","icommerce::form-emails","iforms::from-email","isite::logo1","isite::logo2","isite::favicon","isite::phones","isite::addresses","isite::emails","isite::socialNetworks"]', NULL, '2019-05-07 23:47:56', '2019-05-07 23:47:56');
/*!40000 ALTER TABLE `iprofile__settings` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.iprofile__user_department
CREATE TABLE IF NOT EXISTS `iprofile__user_department` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `department_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `iprofile__user_department_user_id_foreign` (`user_id`),
  KEY `iprofile__user_department_department_id_foreign` (`department_id`),
  CONSTRAINT `iprofile__user_department_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `iprofile__departments` (`id`) ON DELETE CASCADE,
  CONSTRAINT `iprofile__user_department_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.iprofile__user_department: ~0 rows (approximately)
/*!40000 ALTER TABLE `iprofile__user_department` DISABLE KEYS */;
INSERT INTO `iprofile__user_department` (`id`, `user_id`, `department_id`, `created_at`, `updated_at`) VALUES
	(1, 1, 1, '2019-04-29 21:42:37', '2019-04-29 21:42:37');
/*!40000 ALTER TABLE `iprofile__user_department` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.media__files
CREATE TABLE IF NOT EXISTS `media__files` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `is_folder` tinyint(1) NOT NULL DEFAULT '0',
  `filename` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extension` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mimetype` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filesize` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folder_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.media__files: ~14 rows (approximately)
/*!40000 ALTER TABLE `media__files` DISABLE KEYS */;
INSERT INTO `media__files` (`id`, `is_folder`, `filename`, `path`, `extension`, `mimetype`, `filesize`, `folder_id`, `created_at`, `updated_at`) VALUES
	(104, 0, 'img1.jpg', '/assets/media/img1.jpg', 'jpg', 'image/jpeg', '428543', '0', '2019-06-19 14:26:51', '2019-06-19 14:26:51'),
	(105, 0, 'img2.jpg', '/assets/media/img2.jpg', 'jpg', 'image/jpeg', '459572', '0', '2019-06-19 14:27:17', '2019-06-19 14:27:17'),
	(106, 0, 'img3.jpg', '/assets/media/img3.jpg', 'jpg', 'image/jpeg', '845079', '0', '2019-06-19 14:28:29', '2019-06-19 14:28:29'),
	(107, 0, 'img4.jpg', '/assets/media/img4.jpg', 'jpg', 'image/jpeg', '1092716', '0', '2019-06-19 14:28:48', '2019-06-19 14:28:48'),
	(108, 0, 'img5.jpg', '/assets/media/img5.jpg', 'jpg', 'image/jpeg', '755582', '0', '2019-06-19 14:33:03', '2019-06-19 14:33:03'),
	(109, 0, 'img6.jpg', '/assets/media/img6.jpg', 'jpg', 'image/jpeg', '303692', '0', '2019-06-19 14:33:21', '2019-06-19 14:33:21'),
	(110, 0, 'img7.jpg', '/assets/media/img7.jpg', 'jpg', 'image/jpeg', '373363', '0', '2019-06-19 14:37:55', '2019-06-19 14:37:55'),
	(111, 0, 'img8.jpg', '/assets/media/img8.jpg', 'jpg', 'image/jpeg', '180539', '0', '2019-06-19 14:38:13', '2019-06-19 14:38:13'),
	(115, 0, 'parallax-sucursales.jpg', '/assets/media/parallax-sucursales.jpg', 'jpg', 'image/jpeg', '287918', '0', '2019-06-27 11:18:40', '2019-06-27 11:18:40'),
	(117, 0, 'banner3-m2.jpg', '/assets/media/banner3-m2.jpg', 'jpg', 'image/jpeg', '51220', '0', '2019-06-29 11:14:53', '2019-06-29 11:14:53'),
	(121, 0, 'favicon-16x16.png', '/assets/media/favicon-16x16.png', 'png', 'image/png', '1210', '0', '2019-08-02 11:00:05', '2019-08-02 11:00:05'),
	(122, 0, 'logo.png', '/assets/media/logo.png', 'png', 'image/png', '47990', '0', '2019-08-02 11:13:32', '2019-08-02 11:13:32'),
	(123, 0, 'bebida-1.jpg', '/assets/media/bebida-1.jpg', 'jpg', 'image/jpeg', '11550', '0', '2019-08-02 13:11:05', '2019-08-02 13:11:05'),
	(124, 0, 'bebida-2.jpg', '/assets/media/bebida-2.jpg', 'jpg', 'image/jpeg', '53851', '0', '2019-08-02 13:11:21', '2019-08-02 13:11:21'),
	(131, 0, '04135700-360.jpg', '/assets/media/04135700-360.jpg', 'jpg', 'image/jpeg', '235511', '0', '2019-08-15 11:44:48', '2019-08-15 11:44:48');
/*!40000 ALTER TABLE `media__files` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.media__file_translations
CREATE TABLE IF NOT EXISTS `media__file_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `file_id` int(10) unsigned NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt_attribute` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `media__file_translations_file_id_locale_unique` (`file_id`,`locale`),
  KEY `media__file_translations_locale_index` (`locale`),
  CONSTRAINT `media__file_translations_file_id_foreign` FOREIGN KEY (`file_id`) REFERENCES `media__files` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.media__file_translations: ~0 rows (approximately)
/*!40000 ALTER TABLE `media__file_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `media__file_translations` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.media__imageables
CREATE TABLE IF NOT EXISTS `media__imageables` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `file_id` int(11) NOT NULL,
  `imageable_id` int(11) NOT NULL,
  `imageable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=244 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.media__imageables: ~68 rows (approximately)
/*!40000 ALTER TABLE `media__imageables` DISABLE KEYS */;
INSERT INTO `media__imageables` (`id`, `file_id`, `imageable_id`, `imageable_type`, `zone`, `order`, `created_at`, `updated_at`) VALUES
	(1, 11, 2, 'Modules\\Page\\Entities\\Page', 'image', NULL, '2019-04-30 20:46:03', '2019-04-30 20:46:03'),
	(2, 11, 2, 'Modules\\Page\\Entities\\Page', 'image', NULL, NULL, NULL),
	(27, 64, 137, 'Modules\\Setting\\Entities\\Setting', 'isite::favicon', NULL, '2019-05-07 20:32:26', '2019-05-07 20:32:26'),
	(29, 59, 136, 'Modules\\Setting\\Entities\\Setting', 'isite::logo3', NULL, '2019-05-07 20:34:46', '2019-05-07 20:34:46'),
	(32, 70, 134, 'Modules\\Setting\\Entities\\Setting', 'isite::logo1', NULL, '2019-05-07 22:25:03', '2019-05-17 12:17:04'),
	(63, 62, 19, 'Modules\\Slider\\Entities\\Slide', 'slideimage', NULL, '2019-05-09 16:03:16', '2019-05-09 16:06:44'),
	(65, 37, 18, 'Modules\\Slider\\Entities\\Slide', 'slideimage', NULL, '2019-05-09 16:10:17', '2019-05-09 16:10:17'),
	(70, 82, 22, 'Modules\\Slider\\Entities\\Slide', 'slideimage', NULL, '2019-05-10 00:54:24', '2019-05-10 00:54:24'),
	(72, 83, 24, 'Modules\\Slider\\Entities\\Slide', 'slideimage', NULL, '2019-05-10 20:59:37', '2019-05-10 20:59:46'),
	(79, 89, 26, 'Modules\\Slider\\Entities\\Slide', 'slideimage', NULL, '2019-05-10 21:27:37', '2019-05-10 21:27:37'),
	(121, 89, 15, 'Modules\\Icommerce\\Entities\\OptionValue', 'mainimage', NULL, '2019-05-16 14:56:14', '2019-05-16 14:56:14'),
	(124, 89, 17, 'Modules\\Icommerce\\Entities\\OptionValue', 'mainimage', NULL, '2019-05-16 15:11:25', '2019-05-16 15:11:25'),
	(138, 89, 2, 'Modules\\Iblog\\Entities\\Category', 'mainimage', NULL, '2019-05-20 19:25:10', '2019-06-26 17:56:30'),
	(139, 88, 1, 'Modules\\Iblog\\Entities\\Category', 'secondaryimage', NULL, '2019-05-21 13:50:37', '2019-06-29 11:05:16'),
	(140, 89, 2, 'Modules\\Iblog\\Entities\\Post', 'gallery', 0, '2019-05-21 14:01:01', '2019-05-21 14:01:01'),
	(141, 87, 2, 'Modules\\Iblog\\Entities\\Post', 'gallery', 1, '2019-05-21 14:01:01', '2019-05-21 14:01:01'),
	(142, 88, 2, 'Modules\\Iblog\\Entities\\Post', 'gallery', 2, '2019-05-21 14:01:01', '2019-05-21 14:01:01'),
	(143, 86, 2, 'Modules\\Iblog\\Entities\\Post', 'gallery', 3, '2019-05-21 14:01:01', '2019-05-21 14:01:01'),
	(144, 89, 2, 'Modules\\Iblog\\Entities\\Post', 'slideimage', NULL, '2019-05-21 14:01:01', '2019-05-21 14:01:01'),
	(150, 94, 1, 'Modules\\Iblog\\Entities\\Category', 'mainimage', NULL, '2019-05-21 14:34:02', '2019-06-29 11:05:16'),
	(157, 89, 4, 'Modules\\Iblog\\Entities\\Post', 'mainimage', NULL, '2019-05-21 14:57:38', '2019-06-29 11:05:35'),
	(160, 97, 20, 'Modules\\Slider\\Entities\\Slide', 'slideimage', NULL, '2019-05-22 13:03:32', '2019-05-22 13:03:32'),
	(162, 100, 20, 'Modules\\Icommerce\\Entities\\OptionValue', 'mainimage', NULL, '2019-05-28 10:29:22', '2019-05-28 10:29:22'),
	(163, 100, 19, 'Modules\\Icommerce\\Entities\\OptionValue', 'mainimage', NULL, '2019-05-28 10:29:30', '2019-05-28 10:29:30'),
	(164, 100, 21, 'Modules\\Icommerce\\Entities\\OptionValue', 'mainimage', NULL, '2019-05-28 10:29:37', '2019-05-28 10:29:37'),
	(170, 105, 27, 'Modules\\Slider\\Entities\\Slide', 'slideimage', NULL, '2019-06-19 14:27:25', '2019-06-19 14:30:25'),
	(171, 104, 21, 'Modules\\Slider\\Entities\\Slide', 'slideimage', NULL, '2019-06-19 14:28:01', '2019-08-03 11:53:33'),
	(172, 106, 28, 'Modules\\Slider\\Entities\\Slide', 'slideimage', NULL, '2019-06-19 14:28:34', '2019-06-19 14:30:38'),
	(173, 107, 29, 'Modules\\Slider\\Entities\\Slide', 'slideimage', NULL, '2019-06-19 14:28:55', '2019-06-19 14:30:31'),
	(174, 108, 30, 'Modules\\Slider\\Entities\\Slide', 'slideimage', NULL, '2019-06-19 14:33:08', '2019-06-19 14:33:40'),
	(175, 109, 31, 'Modules\\Slider\\Entities\\Slide', 'slideimage', NULL, '2019-06-19 14:33:29', '2019-06-19 14:33:36'),
	(176, 110, 32, 'Modules\\Slider\\Entities\\Slide', 'slideimage', NULL, '2019-06-19 14:38:02', '2019-06-19 14:38:02'),
	(177, 111, 33, 'Modules\\Slider\\Entities\\Slide', 'slideimage', NULL, '2019-06-19 14:38:22', '2019-06-19 14:38:22'),
	(179, 113, 6, 'Modules\\Iblog\\Entities\\Post', 'mainimage', NULL, '2019-06-20 17:53:26', '2019-06-28 11:41:22'),
	(180, 114, 7, 'Modules\\Iblog\\Entities\\Post', 'mainimage', NULL, '2019-06-20 18:04:29', '2019-06-28 11:41:30'),
	(191, 111, 88, 'Modules\\Icommerce\\Entities\\Product', 'mainimage', NULL, '2019-08-02 13:08:23', '2019-08-02 13:08:23'),
	(192, 110, 89, 'Modules\\Icommerce\\Entities\\Product', 'mainimage', NULL, '2019-08-02 13:08:32', '2019-08-02 13:08:32'),
	(193, 110, 90, 'Modules\\Icommerce\\Entities\\Product', 'mainimage', NULL, '2019-08-02 13:08:49', '2019-08-02 13:08:49'),
	(194, 108, 91, 'Modules\\Icommerce\\Entities\\Product', 'mainimage', NULL, '2019-08-02 13:09:03', '2019-08-02 13:09:03'),
	(195, 107, 92, 'Modules\\Icommerce\\Entities\\Product', 'mainimage', NULL, '2019-08-02 13:09:39', '2019-08-02 13:09:39'),
	(196, 106, 93, 'Modules\\Icommerce\\Entities\\Product', 'mainimage', NULL, '2019-08-02 13:09:57', '2019-08-02 13:09:57'),
	(197, 105, 96, 'Modules\\Icommerce\\Entities\\Product', 'mainimage', NULL, '2019-08-02 13:10:09', '2019-08-02 13:10:09'),
	(198, 104, 97, 'Modules\\Icommerce\\Entities\\Product', 'mainimage', NULL, '2019-08-02 13:10:18', '2019-08-02 13:10:18'),
	(199, 123, 94, 'Modules\\Icommerce\\Entities\\Product', 'mainimage', NULL, '2019-08-02 13:11:12', '2019-08-02 13:11:12'),
	(200, 124, 95, 'Modules\\Icommerce\\Entities\\Product', 'mainimage', NULL, '2019-08-02 13:11:26', '2019-08-02 13:11:26'),
	(201, 115, 35, 'Modules\\Slider\\Entities\\Slide', 'slideimage', NULL, '2019-08-03 11:19:59', '2019-08-03 11:19:59'),
	(209, 125, 38, 'Modules\\Slider\\Entities\\Slide', 'slideimage', NULL, '2019-08-03 11:54:52', '2019-08-03 11:54:52'),
	(210, 123, 39, 'Modules\\Slider\\Entities\\Slide', 'slideimage', NULL, '2019-08-03 11:56:37', '2019-08-03 11:56:37'),
	(213, 107, 23, 'Modules\\Slider\\Entities\\Slide', 'slideimage', NULL, '2019-08-03 12:01:45', '2019-08-03 12:01:45'),
	(218, 108, 1, 'Modules\\Iblog\\Entities\\Post', 'mainimage', NULL, '2019-08-03 12:15:59', '2019-08-03 12:15:59'),
	(219, 105, 2, 'Modules\\Iblog\\Entities\\Post', 'mainimage', NULL, '2019-08-03 12:16:13', '2019-08-03 12:16:13'),
	(223, 115, 4, 'Modules\\Iplaces\\Entities\\Category', 'mainimage', NULL, '2019-08-03 12:36:41', '2019-08-03 12:36:41'),
	(226, 121, 158, 'Modules\\Setting\\Entities\\Setting', 'isite::favicon', NULL, '2019-08-05 14:55:50', '2019-08-09 16:33:20'),
	(227, 117, 1, 'Modules\\Slider\\Entities\\Slide', 'slideimage', NULL, '2019-08-09 15:31:42', '2019-08-13 17:43:30'),
	(228, 104, 2, 'Modules\\Slider\\Entities\\Slide', 'slideimage', NULL, '2019-08-14 09:41:09', '2019-08-14 09:41:09'),
	(229, 105, 3, 'Modules\\Slider\\Entities\\Slide', 'slideimage', NULL, '2019-08-14 09:41:17', '2019-08-14 09:41:17'),
	(230, 106, 4, 'Modules\\Slider\\Entities\\Slide', 'slideimage', NULL, '2019-08-14 09:41:23', '2019-08-14 09:41:23'),
	(231, 107, 5, 'Modules\\Slider\\Entities\\Slide', 'slideimage', NULL, '2019-08-14 09:41:31', '2019-08-14 09:41:31'),
	(232, 108, 6, 'Modules\\Slider\\Entities\\Slide', 'slideimage', NULL, '2019-08-14 09:41:38', '2019-08-14 09:41:38'),
	(233, 109, 7, 'Modules\\Slider\\Entities\\Slide', 'slideimage', NULL, '2019-08-14 09:41:48', '2019-08-14 09:41:48'),
	(234, 110, 8, 'Modules\\Slider\\Entities\\Slide', 'slideimage', NULL, '2019-08-14 09:41:57', '2019-08-14 09:41:57'),
	(235, 111, 9, 'Modules\\Slider\\Entities\\Slide', 'slideimage', NULL, '2019-08-14 09:42:03', '2019-08-14 09:42:03'),
	(237, 131, 11, 'Modules\\Slider\\Entities\\Slide', 'slideimage', NULL, '2019-08-15 11:44:56', '2019-08-15 11:44:56'),
	(238, 104, 12, 'Modules\\Slider\\Entities\\Slide', 'slideimage', NULL, '2019-08-15 11:46:39', '2019-08-15 11:46:39'),
	(239, 105, 13, 'Modules\\Slider\\Entities\\Slide', 'slideimage', NULL, '2019-08-15 11:46:45', '2019-08-15 11:46:45'),
	(240, 106, 14, 'Modules\\Slider\\Entities\\Slide', 'slideimage', NULL, '2019-08-15 11:46:50', '2019-08-15 11:46:50'),
	(241, 107, 15, 'Modules\\Slider\\Entities\\Slide', 'slideimage', NULL, '2019-08-15 11:47:01', '2019-08-15 11:47:01'),
	(242, 108, 16, 'Modules\\Slider\\Entities\\Slide', 'slideimage', NULL, '2019-08-15 11:47:07', '2019-08-15 11:47:07'),
	(243, 111, 17, 'Modules\\Slider\\Entities\\Slide', 'slideimage', NULL, '2019-08-15 11:47:16', '2019-08-15 11:47:16');
/*!40000 ALTER TABLE `media__imageables` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.menu__menuitems
CREATE TABLE IF NOT EXISTS `menu__menuitems` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) unsigned NOT NULL,
  `page_id` int(10) unsigned DEFAULT NULL,
  `position` int(10) unsigned NOT NULL DEFAULT '0',
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
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu__menuitems_menu_id_foreign` (`menu_id`),
  CONSTRAINT `menu__menuitems_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menu__menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.menu__menuitems: ~0 rows (approximately)
/*!40000 ALTER TABLE `menu__menuitems` DISABLE KEYS */;
/*!40000 ALTER TABLE `menu__menuitems` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.menu__menuitem_translations
CREATE TABLE IF NOT EXISTS `menu__menuitem_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menuitem_id` int(10) unsigned NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uri` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menu__menuitem_translations_menuitem_id_locale_unique` (`menuitem_id`,`locale`),
  KEY `menu__menuitem_translations_locale_index` (`locale`),
  CONSTRAINT `menu__menuitem_translations_menuitem_id_foreign` FOREIGN KEY (`menuitem_id`) REFERENCES `menu__menuitems` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.menu__menuitem_translations: ~0 rows (approximately)
/*!40000 ALTER TABLE `menu__menuitem_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `menu__menuitem_translations` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.menu__menus
CREATE TABLE IF NOT EXISTS `menu__menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `primary` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.menu__menus: ~0 rows (approximately)
/*!40000 ALTER TABLE `menu__menus` DISABLE KEYS */;
/*!40000 ALTER TABLE `menu__menus` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.menu__menu_translations
CREATE TABLE IF NOT EXISTS `menu__menu_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) unsigned NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menu__menu_translations_menu_id_locale_unique` (`menu_id`,`locale`),
  KEY `menu__menu_translations_locale_index` (`locale`),
  CONSTRAINT `menu__menu_translations_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menu__menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.menu__menu_translations: ~0 rows (approximately)
/*!40000 ALTER TABLE `menu__menu_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `menu__menu_translations` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=212 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.migrations: 31 rows
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
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
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.oauth_access_tokens
CREATE TABLE IF NOT EXISTS `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.oauth_access_tokens: 135 rows
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
	('24238f697ee3740f648235a0d19c3e67f58d4460d11767378f80a70ec26d38db3bfcd5fa4fd86031', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-04-29 23:44:55', '2019-04-29 23:44:55', '2020-04-29 23:44:55'),
	('bbf9296808dc0c53640b1319cb1bd2760ae24b8333ded066a0af0831d9fe9e57242993837f9ba20b', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-04-29 23:44:48', '2019-04-29 23:44:48', '2020-04-29 23:44:48'),
	('2ff9b1cef9e2861fe2c2e41737929c7a039c8a7183bbc58742550c131eedb775ff1a23d7e119dbca', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-04-29 23:44:41', '2019-04-29 23:44:41', '2020-04-29 23:44:41'),
	('24a2e08c0daa90d3a22f67c332dd92fc98cb3822db6069608d9486cb96376fc567ff94447ebb4ac6', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-04-29 23:43:08', '2019-04-29 23:43:08', '2020-04-29 23:43:08'),
	('41a2cd23b6fc9d54e31f163eee8b994145298201cef8a68ad7ed61554e108a59120ddd4f1a777836', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-04-29 23:14:30', '2019-04-29 23:14:30', '2020-04-29 23:14:30'),
	('3d1f15cf9a05444b80b681c3f93102c2573009ec8693b72cf563152e064e60885cb1704094c171ea', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-04-29 23:14:09', '2019-04-29 23:14:09', '2020-04-29 23:14:09'),
	('887d6e06233ad9431c2ae4f75635ff633f43a13868511abf4754cb03759f3bf2316ef95f6175fae5', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-04-29 23:09:21', '2019-04-29 23:09:21', '2020-04-29 23:09:21'),
	('65e1d1517a0ff0f52c0544657a648573cc61392aa2b855b80ac31c3e1581caf85a5dc6c62c978838', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-04-29 23:09:12', '2019-04-29 23:09:12', '2020-04-29 23:09:12'),
	('2655bb1fa76aeec8ce48bafbc7df2a84c8de580ac770dfdaa5c9f56addd5208d441f36c956e3bd70', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-04-29 23:08:17', '2019-04-29 23:08:17', '2020-04-29 23:08:17'),
	('2d8a41a32e96701d5df3e6a75c54388e11315c8f70d0328443fe3d60cb3b740656cc60c7cb0bcd13', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-04-29 23:06:51', '2019-04-29 23:06:51', '2020-04-29 23:06:51'),
	('4babed4ea6818484f88a65584cc9b8ec693ddd6a96491c20c02d03a106f705da6b05be92783d6411', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-04-29 23:06:13', '2019-04-29 23:06:13', '2020-04-29 23:06:13'),
	('778b5aac938b787841e15cd7340c8688a2e297729d0b130cef9c7b97e5952bec6a42d5ef6b51e44e', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-04-29 23:14:05', '2019-04-29 23:14:05', '2020-04-29 23:14:05'),
	('46d8a53e939a79a53ae0fef0f658cd1261c104df7196e22c533d38f34be740937d5a125cd3c38c16', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-04-27 19:24:19', '2019-04-27 19:24:19', '2020-04-27 19:24:19'),
	('b8a3a2a2a58e492b162ef1ab85537ee587e921568bee12c691f4608a97b0428ce673f325d7bfe309', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-04-26 21:03:19', '2019-04-26 21:03:19', '2020-04-26 21:03:19'),
	('e66d0bea10407b0185ee73d5b368783193b088b8b1e34bd0c94e627881d62284c2132164360c8090', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-04-26 20:14:50', '2019-04-26 20:14:50', '2020-04-26 20:14:50'),
	('53a4f2a257062987257e0f2c3a529dfd1aa085dbc07d26d1e34b400b92b8b62ce5ee2e77312fdf41', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-04-26 20:12:34', '2019-04-26 20:12:34', '2020-04-26 20:12:34'),
	('28c345ceb144a7d6597869756e4210aa3ffeea226447e449dd185bd1e4dd00214bdf82816f9f3d61', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-04-25 21:47:11', '2019-04-25 21:47:11', '2020-04-25 21:47:11'),
	('036ad02e23202f8d9bfec2b1747e1ffb3621a6fc68cc617ac98a4a0f6b39674a79b2d1e8c672feed', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-04-24 22:52:10', '2019-04-24 22:52:10', '2020-04-24 22:52:10'),
	('07aaf79781fd241029bb0e8e51ff5468774fcc7053809a7f225caa2bb50b69fc0f67084f82fef6f8', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-04-29 23:45:43', '2019-04-29 23:45:43', '2020-04-29 23:45:43'),
	('b93c02fd03b67dd4546a0bda1dcda4b52cc8eab3ac19d6ccc2330e5c1c7455c4c5ec2141197a887d', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-04-29 23:45:57', '2019-04-29 23:45:57', '2020-04-29 23:45:57'),
	('dd3ad5fdccd896d1230da952b896d3751c49fa2f4cdc2c46b4f72c3232dfff0ab395993164c67a87', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-04-29 23:46:09', '2019-04-29 23:46:09', '2020-04-29 23:46:09'),
	('e89c62e8292891e74a38b704c017f23b4b7b0e489370e6ac332e5270952de2ce74b10442ae2e00ff', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-04-29 23:47:02', '2019-04-29 23:47:02', '2020-04-29 23:47:02'),
	('41ee4fae422b443939f2b1c93c1b78b1ef5b0ccf8bdd5a552ff115861076bcfda2bea9ee927a75af', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-04-29 23:48:24', '2019-04-29 23:48:24', '2020-04-29 23:48:24'),
	('8cbe90892faaa626c86d1cf18cc52c667188d16918d7cfe46ed37d146dfc9978f2988b9478663020', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-04-29 23:48:34', '2019-04-29 23:48:34', '2020-04-29 23:48:34'),
	('ae3b3bd3555b6703b8aac7df3c1c6c50f9737505636e8534f13fc3e23a64c378902399a9481cbe18', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-04-29 23:49:04', '2019-04-29 23:49:04', '2020-04-29 23:49:04'),
	('a4a5f2c2171914ce741b16f772f854a6b12b70502a701d128047e45d19d0260671a29e1a40d82b57', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-04-30 00:09:32', '2019-04-30 00:09:32', '2020-04-30 00:09:32'),
	('1197e31596918430d7de80ec0dc4811824f9ea48758e571043c8cd0271cba2afe69ea69e913de254', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-04-30 00:09:44', '2019-04-30 00:09:44', '2020-04-30 00:09:44'),
	('0b4153189f2addaf5175c7fa5fdb66b726105c02262091320f6aaaa9c450d43b46e73ef8c986ad32', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-04-30 00:10:11', '2019-04-30 00:10:11', '2020-04-30 00:10:11'),
	('a3804ac03a7a59db0f5bee9f32d5725968ae533393cad0d212d825c1db15dc0af1ee1aa1225f468d', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-04-30 00:11:02', '2019-04-30 00:11:02', '2020-04-30 00:11:02'),
	('be1ed6140e27f7a4ae31fa5385e73e9beef9c30e22c0c08b779e7f18a68332f97d8e6240b87fbea0', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-04-30 00:11:13', '2019-04-30 00:11:13', '2020-04-30 00:11:13'),
	('a01432a9077398f2441def5b7da890efae5c33862eeabbdf66dab67ca07c2dc83454f421955fc308', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-04-30 00:12:36', '2019-04-30 00:12:36', '2020-04-30 00:12:36'),
	('ef6440e6b728a16063ed8c5ef0aa8b4094b2efd48473730a7a3b5cf79167364e27d6b0cbfe3e1c99', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-04-30 15:04:29', '2019-04-30 15:04:29', '2020-04-30 15:04:29'),
	('96f7b5721926c35bd1cb2e19760cea39af0369296c8c3011e958aaf5a9f57c934e6af44875e417ba', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-05-02 23:37:38', '2019-05-02 23:37:38', '2020-05-02 23:37:38'),
	('fa7ab18570f2e77d711cf236241d30c336e5cd6c8a2366eafc34a36b5b4dad0c1580e6f40454da7b', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-05-10 15:13:37', '2019-05-10 15:13:37', '2020-05-10 15:13:37'),
	('80676ce3363601ff266db610aa9c21a025f8b6b94fe1ffaebe2f105109b66a6a5c2e3759b5f1d3d4', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-05-17 17:56:59', '2019-05-17 17:56:59', '2020-05-17 17:56:59'),
	('bea90275e23723c3624de063b6f428a702c64aaa6f12772a42b961447291d7f082febc05347d9356', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-05-06 15:25:09', '2019-05-06 15:25:09', '2020-05-06 15:25:09'),
	('22b7ec997c6dbc44f46dd66e7a910b69a5d3f9a2bb5a7b27129ab72312bfb5bbf0711ce9765e1657', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-05-06 15:32:49', '2019-05-06 15:32:49', '2020-05-06 15:32:49'),
	('27ae096085c0539be94733962d896fb8c29cc1a18339d84d4cc371b95caf1046e516b9d6d4c7f800', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-05-06 21:52:58', '2019-05-06 21:52:58', '2020-05-06 21:52:58'),
	('92a25ba41ee7f662510c049bf1dacf86fbcc83b8908a3dc810ed657785863726be1f5a5bb04503dd', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-05-07 14:20:59', '2019-05-07 14:20:59', '2020-05-07 14:20:59'),
	('08d140059b8e9f09901ec8203e75cda646c54afd4483b775ef4446956bab42cc997fadc0924b988f', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-05-07 21:13:57', '2019-05-07 21:13:57', '2020-05-07 21:13:57'),
	('349113f62df6712aac2fb8910bf24c112a81e00e699afbbba6a68d533c900853704e193a7164b244', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-05-08 14:35:10', '2019-05-08 14:35:10', '2020-05-08 14:35:10'),
	('f56e3785d68a0206e55f3bebb0f19bb4c0146d6ea3f538c08d54424f9862fb087ccb65e9c0889fd4', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-05-07 23:50:07', '2019-05-07 23:50:07', '2020-05-07 23:50:07'),
	('90dda02b232eba574cef0c5f25cc761d6e463110bd95760e37a8dc91b8e0e92f5961d2a43513872d', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-05-08 00:13:28', '2019-05-08 00:13:28', '2020-05-08 00:13:28'),
	('7eee97e1239def87883c2ef72698fe68fa6b50b5d63c96d871ddc5af60f95cfc3bb98200cffd9e5d', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-05-08 17:35:20', '2019-05-08 17:35:20', '2020-05-08 17:35:20'),
	('142fe27db4ef5cad521802fb3f2333efd07c61c11f7a1805f9991db94b1f1cf723a46f2ee555af82', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-05-08 17:35:54', '2019-05-08 17:35:54', '2020-05-08 17:35:54'),
	('084d03cb3c810e0fe7c8f39ecef65bddff18221bfb214929f7349e1213e0d27db0683ba8c3624de6', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-05-08 17:36:40', '2019-05-08 17:36:40', '2020-05-08 17:36:40'),
	('51654a32122e31eb9d168a9804ed638da67aa56ea6345fe9b83fb6efaf181aec170e79c72632549b', 2, 1, 'Laravel Password Grant Client', '[]', 0, '2019-05-08 19:55:44', '2019-05-08 19:55:44', '2020-05-08 19:55:44'),
	('3a679efb5c79ef61fa6711448a693f9958f7fcfcc409d25aa04246948e2ebc7be03aac7b563349b9', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-05-08 20:42:48', '2019-05-08 20:42:48', '2020-05-08 20:42:48'),
	('11a52c3ea27c55eb2e42392951fec6f0a280a430e23f0d31dbeace335d16992ade8576e0329e2894', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-05-08 22:35:09', '2019-05-08 22:35:09', '2020-05-08 22:35:09'),
	('e4f3b1b28905c9d35f7374ec89edd602cf97679d25b969aabd0f431b393ad570f6c007d1ccdfa214', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-05-08 22:38:16', '2019-05-08 22:38:16', '2020-05-08 22:38:16'),
	('b4bb2bc7e7a3b33a68bf0653c53bb47d90b3ea406f7d035a5fe7714a8ac6f3c952fcea998bebc21a', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-05-08 22:39:34', '2019-05-08 22:39:34', '2020-05-08 22:39:34'),
	('577b90e97c0dd705b224cf2309347f5c16d20039516ea6e3b010aa74a7a7fe6a96e146b3aa9abbab', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-05-09 19:15:36', '2019-05-09 19:15:36', '2020-05-09 19:15:36'),
	('dd3db13042d39ac4efbc449e6dc303f4a97128fe3067c31661a16b69945440ace38d6eac3245c953', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-05-10 14:22:00', '2019-05-10 14:22:00', '2020-05-10 14:22:00'),
	('09277904c648da7173fe3f0d41ef124253ce85552bd719098eeefab1987a3f4f04bcf8c3ade690aa', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-05-10 14:26:38', '2019-05-10 14:26:38', '2020-05-10 14:26:38'),
	('bc6efae2502292a612ca1956995bc1a64b89a1e3963464e3d530cc2acab30a4f757025726ba965c9', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-05-10 22:00:24', '2019-05-10 22:00:24', '2020-05-10 22:00:24'),
	('90955a0240707ac8214fa0a1a5f4dcf8baa4f82899f5cb8785cf24bc630a14727ca0584350d8ab06', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-05-10 22:07:25', '2019-05-10 22:07:25', '2020-05-10 22:07:25'),
	('e616654bcf45a2dee79c851dacb1754f9bc4d3a4f01015639af2c453cbbf8b63c32b137c7b5edcad', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-05-11 16:16:44', '2019-05-11 16:16:44', '2020-05-11 16:16:44'),
	('98603070d06844e2e2bd0b225175380fc19e8280cb9c68e6ed15fb968d77c4edeb59fedd9a018a74', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-05-11 17:45:09', '2019-05-11 17:45:09', '2020-05-11 17:45:09'),
	('0117b7acf9591404c65ea097b95972addc5b96e0c1a85fceeb6c9fef35d071ece92c0cc1ecc7df59', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-05-11 17:53:58', '2019-05-11 17:53:58', '2020-05-11 17:53:58'),
	('1a397c3ddc37376865cb1e97d970b95e7b278b1cc5d9308c24f607fa3e7d599aef5894c8b0b615c9', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-05-11 13:50:32', '2019-05-11 13:50:32', '2020-05-11 13:50:32'),
	('69ab143f9beee5284eba0dafbe8bc126049c8ac1bd958530d4cb73eb174f4ca14dbb1765767e9d9d', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-05-13 16:17:15', '2019-05-13 16:17:15', '2020-05-13 16:17:15'),
	('a3e0806be960cb9273c8c7142812cc19ffd56d0dd1852828d1b63bab0963055099af93bef871b644', 3, 1, 'Laravel Password Grant Client', '[]', 0, '2019-05-13 16:17:26', '2019-05-13 16:17:26', '2020-05-13 16:17:26'),
	('3a9a6e647591e48c045850c33b65bea8f754555a49233153aec3441e540bf948d4e94aad4ae4748b', 3, 1, 'Laravel Password Grant Client', '[]', 0, '2019-05-14 10:08:20', '2019-05-14 10:08:20', '2020-05-14 10:08:20'),
	('514059ac41f033109fdf5f8a60f8c1069a05010bf3586ba7afda755e586a8ba47b7393f04049ec83', 3, 1, 'Laravel Password Grant Client', '[]', 0, '2019-05-14 10:15:49', '2019-05-14 10:15:49', '2020-05-14 10:15:49'),
	('4fb283d1c6bdbf38f144789600184ba4b3bf90cf1b0ed84b3ec7edb4c3d242996ff142714ae0115a', 2, 1, 'Laravel Password Grant Client', '[]', 0, '2019-05-14 11:58:30', '2019-05-14 11:58:30', '2020-05-14 11:58:30'),
	('b0620871513bb82c641b14970a2e13ef1724c3f67ddc8eb1e558880e6cda4f3ad787a21460f7e773', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-05-14 15:53:18', '2019-05-14 15:53:18', '2020-05-14 15:53:18'),
	('806a37cc1df03cc3e3d5f7e85533c1c2a80efea52703528d7f2e88d54ebf1bd4f5bdc3e61b3f9fba', 2, 1, 'Laravel Password Grant Client', '[]', 0, '2019-05-15 18:29:42', '2019-05-15 18:29:42', '2020-05-15 18:29:42'),
	('6c4020e003cf8dbb747041827622114389d9235d90f735cec1e051efcf35cb050662778f046af890', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-05-16 09:17:33', '2019-05-16 09:17:33', '2020-05-16 09:17:33'),
	('93f0ccac019781f2776690563d85303d5754bf6655f9ad05000630dcc7f24dba009417a7a151c360', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-05-16 10:11:43', '2019-05-16 10:11:43', '2020-05-16 10:11:43'),
	('eae18dcaa10e120044a9a5a047f1f2a47e06a5c5d25cc4fc47fb92e4d2e784ccadec983d72adafd8', 2, 1, 'Laravel Password Grant Client', '[]', 0, '2019-05-17 18:59:53', '2019-05-17 18:59:53', '2020-05-17 18:59:53'),
	('3e5f86c8a1d14cacdc7b7159d86c6cfea99347723dde52fac923674c7a35d01810c0d0b7c33fe3f0', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-05-16 12:21:01', '2019-05-16 12:21:01', '2020-05-16 12:21:01'),
	('e9844a5289008bdd244b215f95d9825312e62701f0ff9505c862ddc78e65d8c88048912ffe15976f', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-05-16 12:22:58', '2019-05-16 12:22:58', '2020-05-16 12:22:58'),
	('b5470be5f1ab2e9d4de4faf34e24152d8b71a642e6ec512e9f44472c8546e0fecc6c1fe3fdaf5f6e', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-05-16 12:34:20', '2019-05-16 12:34:20', '2020-05-16 12:34:20'),
	('1a66628f4191d70d6c980787e03580754d1c1b5cbb0225fde3629f7c041e4e04852643aaad232205', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-05-16 12:40:39', '2019-05-16 12:40:39', '2020-05-16 12:40:39'),
	('1e1509037e8ebd1a5628579b7a01c5c72de7eee3e0345568a8c461ef1bed80a377e386b023f91a2d', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-05-16 12:40:50', '2019-05-16 12:40:50', '2020-05-16 12:40:50'),
	('b58158cf0c1acc54f28c1b52242ccb5d17eb49d8f73c964212f20caceb73d522102c0f5e4c3484b6', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-05-16 12:41:23', '2019-05-16 12:41:23', '2020-05-16 12:41:23'),
	('b80ca05055df1d0784c4afef0e4ce62f0cbdac26267a8cbf1f46e043298c14c12b7ed3075a1c483c', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-05-16 12:42:22', '2019-05-16 12:42:22', '2020-05-16 12:42:22'),
	('afda3eea2b5021554a373b49d6dd30010c9788267764312862d2b9c842b3dedbce20507b2f478538', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-05-16 15:31:42', '2019-05-16 15:31:42', '2020-05-16 15:31:42'),
	('ccc1b62fbe47c4b471d7fd3436f8c3d9cf18d9ee6e038b055a9e441bdd4d92a5b5c2a617ce5a8d51', 2, 1, 'Laravel Password Grant Client', '[]', 0, '2019-05-20 17:57:53', '2019-05-20 17:57:53', '2020-05-20 17:57:53'),
	('bf8a9a3f65ba08213cdae1abd2316edd5904936ece3c27f5feed7809ebbcb1eb9dbe7d0b59c7ac7b', 2, 1, 'Laravel Password Grant Client', '[]', 0, '2019-05-28 08:55:53', '2019-05-28 08:55:53', '2020-05-28 08:55:53'),
	('dd11e3d7416ff7a6fbeb526e5d3326fd6edb4909f2f1417706fcafa2294533e5f6f1f7024b60757f', 2, 1, 'Laravel Password Grant Client', '[]', 0, '2019-05-20 09:32:45', '2019-05-20 09:32:45', '2020-05-20 09:32:45'),
	('567177f94f876e47c96176964fc74e150e090e72a180fe18f106d0676fd03c308c7081689ce7ab2b', 2, 1, 'Laravel Password Grant Client', '[]', 0, '2019-05-21 14:38:09', '2019-05-21 14:38:09', '2020-05-21 14:38:09'),
	('4be562d26e4d66a20873c2e8b3e2402a1faffe38082401f10556737a2087f3064e0cf220ea296194', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-05-20 15:50:07', '2019-05-20 15:50:07', '2020-05-20 15:50:07'),
	('e41e9366bb975bf52f6616b137a5d07d361a85b31bd857c9b055ebdc6acb6fbdf5a526aa9b7a0202', 2, 1, 'Laravel Password Grant Client', '[]', 0, '2019-05-20 16:12:44', '2019-05-20 16:12:44', '2020-05-20 16:12:44'),
	('754612c2c50c48639005c2ee24f50f5cbd9104ac875a2c653b2e745aff4924f6dcef176c5b7962dd', 2, 1, 'Laravel Password Grant Client', '[]', 0, '2019-05-21 11:46:38', '2019-05-21 11:46:38', '2020-05-21 11:46:38'),
	('ef254469f9c3ff7384b15d70799167b331b73c46685b26fdd4e2df45f26600fff3482308ccd0a503', 2, 1, 'Laravel Password Grant Client', '[]', 0, '2019-05-21 11:46:58', '2019-05-21 11:46:58', '2020-05-21 11:46:58'),
	('68c179cd78bcc0594ec38db9d7ff497c1c1b9bae68b61835b0b0e12e688943c9527701309b51ebef', 2, 1, 'Laravel Password Grant Client', '[]', 0, '2019-05-21 12:07:58', '2019-05-21 12:07:58', '2020-05-21 12:07:58'),
	('6946dd613843582769a9b7a274526e1d18d41b5c3a20acc1b18728d7586d4dab37e1f7ad0aba6914', 2, 1, 'Laravel Password Grant Client', '[]', 0, '2019-05-21 17:37:08', '2019-05-21 17:37:08', '2020-05-21 17:37:08'),
	('05bcf6ea3f82756cd80e4273ab6d8035fbdd575a8e8f0598dcef5a8ff87383f4ffcbf8d11c2650a3', 2, 1, 'Laravel Password Grant Client', '[]', 0, '2019-06-04 10:42:21', '2019-06-04 10:42:21', '2020-06-04 10:42:21'),
	('c2820a0ef389a5046ed48a58e61219a4b6223dac63a66f9c1e079229d8f422c21d0b3fd2e2244804', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-05-22 10:24:23', '2019-05-22 10:24:23', '2020-05-22 10:24:23'),
	('ced571d39316ef31a9a189d6709c4629280351d50f913dd4a7a3f38d9e02306bd086c9792e58ddbd', 2, 1, 'Laravel Password Grant Client', '[]', 0, '2019-05-22 10:40:01', '2019-05-22 10:40:01', '2020-05-22 10:40:01'),
	('1a92e10073b251ab84a45498caff930f362b6118e99e68df2759ca1c44d20de099d09d5c175e1900', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-05-22 10:40:46', '2019-05-22 10:40:46', '2020-05-22 10:40:46'),
	('221d83a027db00e8b134ebf6755cf0c027d1922e372e8f09bc3fcc44f81e631de55d3764790cdd8f', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-05-22 10:42:34', '2019-05-22 10:42:34', '2020-05-22 10:42:34'),
	('ef30a958b5faf95333e9352af76a2c853ea3d7cfb36a4cee8b37d936f0a3c7d1fe3e2cd11aec353c', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-05-22 15:23:50', '2019-05-22 15:23:50', '2020-05-22 15:23:50'),
	('a578c8dce6b3d28335ecdf3c38f085d312738f12fcbb3c33fd98754fb5a220c827d4796164ec325e', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-05-22 15:00:27', '2019-05-22 15:00:27', '2020-05-22 15:00:27'),
	('1e6c6e22204463ab3262d02b5062ab019a470951b3f8f13f72154a76363f593358eb944a3e75bb4b', 3, 1, 'Laravel Password Grant Client', '[]', 0, '2019-05-22 15:01:31', '2019-05-22 15:01:31', '2020-05-22 15:01:31'),
	('441029705659d0a99e7a54eda79b0f7b39a3d05b15bfad828e2dbde3ae33416a4bd4407c58339625', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-06-07 18:58:06', '2019-06-07 18:58:06', '2020-06-07 18:58:06'),
	('6cac5f4cf15236300884a0dad4115d2f54054382c4a2bac34b5a8426108b5f3c997581f3944ca485', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-05-22 18:33:09', '2019-05-22 18:33:09', '2020-05-22 18:33:09'),
	('ebe47c0da8f33ecdd3accdb2340aa09b9b276ca7bfccef0fc85c26d6a2ab7969e3b017c69466674a', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-06-07 19:03:05', '2019-06-07 19:03:05', '2020-06-07 19:03:05'),
	('b9f2be57a62c294baadf09097f7f0afebf05b140ae2077dd27a7d7dd4d131f5d359c876bf4b9e84a', 4, 1, 'Laravel Password Grant Client', '[]', 0, '2019-06-14 18:57:34', '2019-06-14 18:57:34', '2020-06-14 18:57:34'),
	('fe387b930bf14951ff2443dc3857123059882c71b8558f6729010b258ae31c8cfa9e5d7b06b8eb3d', 4, 1, 'Laravel Password Grant Client', '[]', 0, '2019-06-15 09:30:38', '2019-06-15 09:30:38', '2020-06-15 09:30:38'),
	('80cd2a749b6bb267a2257e1f9c7eef94140a034344be9d3d04488c2d790dd747a7d7ac99e939b5f6', 4, 1, 'Laravel Password Grant Client', '[]', 0, '2019-06-15 11:44:00', '2019-06-15 11:44:00', '2020-06-15 11:44:00'),
	('a8f8acceec716082366bf0de6d911d959c82ac7ffb746fd299a26dd27edd3437fca226cb27c34d0b', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-06-20 14:16:26', '2019-06-20 14:16:26', '2020-06-20 14:16:26'),
	('44b3761987c89c0d23719ace05578873f6a9800ace766e5ca7aef01d88ac9aec5b1942226d1b50d9', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-06-22 10:43:07', '2019-06-22 10:43:07', '2020-06-22 10:43:07'),
	('848dd16659cda6c3458018af1cde6f331636c941a00770b0795ce56c00402ce1db20ce1b9c5e5fdc', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-06-22 10:49:59', '2019-06-22 10:49:59', '2020-06-22 10:49:59'),
	('900812652b19f6b5b7ceccf5f4539077d7ca6eaafe058effc0d82eaa216afed59d8e050760f2f95f', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-06-22 11:50:42', '2019-06-22 11:50:42', '2020-06-22 11:50:42'),
	('bf99b0f2b37fbd6ed4eea0ac038e86ded7eff912c69ea6dd68167a7fe7f56f8a0c7419c4cb986bf5', 4, 1, 'Laravel Password Grant Client', '[]', 0, '2019-06-23 19:45:10', '2019-06-23 19:45:10', '2020-06-23 19:45:10'),
	('344220ef6bfb73d79671daae2dcfb5de678fe3d2bd6c83671611db5ad81b41bd4768a234d7830f48', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-06-25 09:13:57', '2019-06-25 09:13:57', '2020-06-25 09:13:57'),
	('fb23510846dcd1d0649e56a88decb77620cd466daea180b74e3b46653cb4ae40a632cf72c2c27808', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-06-25 17:18:43', '2019-06-25 17:18:43', '2020-06-25 17:18:43'),
	('137b85657d6fee601ff885426a75630f7761399e8b839c7606d97cc81c806e4caed779b786cc236f', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-06-26 14:42:08', '2019-06-26 14:42:08', '2020-06-26 14:42:08'),
	('e065d4d4c793ac9043638db4e76d84088bb3bd3d90c71c0ebc9c864a0c0101335194105fd56f65cb', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-06-26 16:47:46', '2019-06-26 16:47:46', '2020-06-26 16:47:46'),
	('95272820497378896b23310c1e01e4441d1c39ec4d2bed08b0975e6edecbda2e7475d5a134a9b390', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-06-29 10:40:20', '2019-06-29 10:40:20', '2020-06-29 10:40:20'),
	('370ec8f428017f576dc9fb42fda17c22f1f8666ef65a0b7c62fb8e0aa65f4442cf87c87987bdf840', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-06-29 10:41:35', '2019-06-29 10:41:35', '2020-06-29 10:41:35'),
	('8f878e10026d9a3678c666375a7acaf7ecc5eb8905d1e8488117a7947cc380ab928ca13832566b7d', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-07-23 15:25:29', '2019-07-23 15:25:29', '2020-07-23 15:25:29'),
	('313cac9fc91351684ccd503154ea02ac0118f71a3e4be54609545f77d6c50acafc566b5255eef466', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-07-23 15:46:20', '2019-07-23 15:46:20', '2020-07-23 15:46:20'),
	('bbc972ba6cec288890b7813fa50d28b44258628301d58105c16c8959e2ded3cb706c61fa853de61d', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-07-23 16:47:30', '2019-07-23 16:47:30', '2020-07-23 16:47:30'),
	('94156840450b7eaaccc2105810a142c62269bfb11c83b794e16f5157bb3db2230f1eb579b7c368a5', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-07-27 11:20:09', '2019-07-27 11:20:09', '2020-07-27 11:20:09'),
	('cac80b8a19def76a0816f3b7f3e6de3a3ce04db0d3c154f98e610ece59e7b6fa53e8bbefbd9f2f12', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-08-03 10:39:49', '2019-08-03 10:39:49', '2020-08-03 10:39:49'),
	('6241392fa073e8cb632664133e619d1884217f7aa1ace85456a92aa8d1915ef7b68f3a0dd287b7af', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-08-01 18:14:53', '2019-08-01 18:14:53', '2020-08-01 18:14:53'),
	('0099a570e4c350c625e44b6fde2e42933f499ef79a55dd421246f17c77621a2cc7503b89d637605b', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-08-02 10:34:16', '2019-08-02 10:34:16', '2020-08-02 10:34:16'),
	('08bee2117b897979b477d586190729dfe8644e4e75131229fa1dbf7c0a306bdcf1b8dfa0c8214754', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-08-02 10:24:24', '2019-08-02 10:24:24', '2020-08-02 10:24:24'),
	('b4869c262f61df59e15d0761d92f36353f62df1615ca61356aebca2b2288f4aeb911cddc716831c9', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-08-02 12:50:07', '2019-08-02 12:50:07', '2020-08-02 12:50:07'),
	('5845ca640ec296d5649752e70a1c3746ed0e205cc0c39cb49ae5d3facc99160a484e58db1584649e', 5, 1, 'Laravel Password Grant Client', '[]', 0, '2019-08-03 10:38:05', '2019-08-03 10:38:05', '2020-08-03 10:38:05'),
	('f20a847eb9066af8d9505c37f51cff2d3ebc79b05c8ec492a8406bf51a039734dc6e3721eec7b92c', 5, 1, 'Laravel Password Grant Client', '[]', 0, '2019-08-03 10:41:13', '2019-08-03 10:41:13', '2020-08-03 10:41:13'),
	('e7034755f678205956b2f30738d543855c6550c43c5d00f55a525f987fb460323d382f4b3e0c6e3c', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-08-03 11:05:57', '2019-08-03 11:05:57', '2020-08-03 11:05:57'),
	('54fa3dad51a248f5e8364478c9dcdfa2619d85ece6b7083d23afce48f321a2fd19935b3507152258', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-08-03 11:16:09', '2019-08-03 11:16:09', '2020-08-03 11:16:09'),
	('46598e192da07dd94175e6b806f27f52e7d05db74158e90bc65299deb8874d2982998e95e61712f7', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-08-03 11:18:32', '2019-08-03 11:18:32', '2020-08-03 11:18:32'),
	('0f1885af73ddeef7eac5ab73184ce22e72e8ca03a91431a00398911b63e7ac6f5e1cc6acf0487aa7', 6, 1, 'Laravel Password Grant Client', '[]', 0, '2019-08-03 11:39:06', '2019-08-03 11:39:06', '2020-08-03 11:39:06'),
	('4c7411b34719b238ac48eb4f0a01fe793ea678004ac2beb82dd1cafca023ae153891803ccdce4d7b', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-08-05 09:52:58', '2019-08-05 09:52:58', '2020-08-05 09:52:58'),
	('99ddace8d006c36eb9d8ae17bb8cc0554c795bb99fcf44c281ef3fb574cc2710faf2e2db1dc04474', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-08-06 12:18:51', '2019-08-06 12:18:51', '2020-08-06 12:18:51'),
	('da29a09af347de61fb4ea8fd95437ca622d5f627341623296976045c254cc228168dfd2688faf696', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-08-05 15:44:12', '2019-08-05 15:44:12', '2020-08-05 15:44:12'),
	('ba511f2df615a68f019e0f1fe5bfb95c6c2c45b641444fa25cbc230804acb0244ae3c5879e0b58d5', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-08-12 09:51:31', '2019-08-12 09:51:31', '2020-08-12 09:51:31'),
	('114e08e4c948b49d11e7576955a075a29dbd52a81d81c9de5abd09ba3a90662d4d76be33fb8a1e33', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-08-13 08:36:24', '2019-08-13 08:36:24', '2020-08-13 08:36:24'),
	('370a97dec21ae1af9998150aac00bd423c69975d8dd75281f640862188fa7864abc1d757188ca170', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-08-15 11:44:08', '2019-08-15 11:44:08', '2020-08-15 11:44:08'),
	('f7e0c6aa2d10c710f4c540455123ba01d4e035e0988c601fff5971fcea4d049b465163079b0cdc93', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-08-15 17:13:17', '2019-08-15 17:13:17', '2020-08-15 17:13:17');
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.oauth_auth_codes
CREATE TABLE IF NOT EXISTS `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.oauth_auth_codes: 0 rows
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.oauth_clients
CREATE TABLE IF NOT EXISTS `oauth_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.oauth_clients: 2 rows
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
	(1, NULL, 'My Application Personal Access Client', 'l5qt4WvtBnj6NMxXZquf7YDr377rXaSzBD6wbGcV', 'http://localhost', 1, 0, 0, '2019-04-16 17:09:09', '2019-04-16 17:09:09'),
	(2, NULL, 'My Application Password Grant Client', 'nroAjqYnultjwDkUOxap8GPsEk0wwiehDvyeJlrY', 'http://localhost', 0, 1, 0, '2019-04-16 17:09:09', '2019-04-16 17:09:09');
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.oauth_personal_access_clients
CREATE TABLE IF NOT EXISTS `oauth_personal_access_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_personal_access_clients_client_id_index` (`client_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.oauth_personal_access_clients: 1 rows
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
	(1, 1, '2019-04-16 17:09:09', '2019-04-16 17:09:09');
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.oauth_refresh_tokens
CREATE TABLE IF NOT EXISTS `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.oauth_refresh_tokens: 0 rows
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.page__pages
CREATE TABLE IF NOT EXISTS `page__pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `is_home` tinyint(1) NOT NULL DEFAULT '0',
  `template` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.page__pages: ~2 rows (approximately)
/*!40000 ALTER TABLE `page__pages` DISABLE KEYS */;
INSERT INTO `page__pages` (`id`, `is_home`, `template`, `created_at`, `updated_at`) VALUES
	(1, 1, 'home', '2019-04-16 16:21:51', '2019-04-16 16:21:51'),
	(2, 0, 'default', '2019-04-30 20:45:24', '2019-04-30 20:45:24');
/*!40000 ALTER TABLE `page__pages` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.page__page_translations
CREATE TABLE IF NOT EXISTS `page__page_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `page_id` int(10) unsigned NOT NULL,
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
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `page__page_translations_page_id_locale_unique` (`page_id`,`locale`),
  KEY `page__page_translations_locale_index` (`locale`),
  CONSTRAINT `page__page_translations_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `page__pages` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.page__page_translations: ~2 rows (approximately)
/*!40000 ALTER TABLE `page__page_translations` DISABLE KEYS */;
INSERT INTO `page__page_translations` (`id`, `page_id`, `locale`, `title`, `slug`, `status`, `body`, `meta_title`, `meta_description`, `og_title`, `og_description`, `og_image`, `og_type`, `created_at`, `updated_at`) VALUES
	(1, 1, 'en', 'Home page', 'home', '1', '<p><strong>You made it!</strong></p>\n<p>You&#39;ve installed AsgardCMS and are ready to proceed to the <a href="/en/backend">administration area</a>.</p>\n<h2>What&#39;s next ?</h2>\n<p>Learn how you can develop modules for AsgardCMS by reading our <a href="https://github.com/AsgardCms/Documentation">documentation</a>.</p>\n', 'Home page', NULL, NULL, NULL, NULL, NULL, '2019-04-16 16:21:51', '2019-04-16 16:21:51'),
	(2, 2, 'es', 'teert', 'teert', '1', '<p>dfdgfdgf</p>', NULL, NULL, NULL, NULL, NULL, NULL, '2019-04-30 20:45:24', '2019-04-30 20:45:24');
/*!40000 ALTER TABLE `page__page_translations` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.persistences
CREATE TABLE IF NOT EXISTS `persistences` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `persistences_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=2969 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.persistences: ~2,876 rows (approximately)
/*!40000 ALTER TABLE `persistences` DISABLE KEYS */;
INSERT INTO `persistences` (`id`, `user_id`, `code`, `created_at`, `updated_at`) VALUES
	(1, 1, 'jkeDliGX6dLIBQtVFjEsSDKbkLvoK4RX', '2019-05-21 14:00:22', '2019-05-21 14:00:22'),
	(2, 1, '47FHMgxFObuVUauK5vTo2PgWNUkiAfbi', '2019-05-21 14:00:23', '2019-05-21 14:00:23'),
	(3, 1, 'oIImIhMYhMfSbtC4hiSfQstrqzLAqH9J', '2019-05-21 14:04:33', '2019-05-21 14:04:33'),
	(4, 1, 'ltZjP2lYhz7WXi5j4rmagUuqTvCLMySz', '2019-05-21 14:04:34', '2019-05-21 14:04:34'),
	(5, 2, 'sFfAEgFcuG5LuatZtiMrbDqsnkhzhl37', '2019-05-21 14:22:25', '2019-05-21 14:22:25'),
	(6, 1, '8LFOlyucwCOnieTFFUwwfEh1P8t4CrCi', '2019-05-21 14:32:10', '2019-05-21 14:32:10'),
	(7, 1, 'ruRFzaWImJrirayvgUIcdvovImgf9gtq', '2019-05-21 14:32:11', '2019-05-21 14:32:11'),
	(8, 1, 'JA7pTYkfXUihixR8rUXsDKZyCAgCooel', '2019-05-21 14:32:32', '2019-05-21 14:32:32'),
	(9, 1, 'SNHhHIUtuUNpq3qWkbxqM1ErIkD0CYEJ', '2019-05-21 14:32:32', '2019-05-21 14:32:32'),
	(10, 1, 'kp68OsU621cYCwT3Ol1pIJ1KGldrQG68', '2019-05-21 14:33:35', '2019-05-21 14:33:35'),
	(11, 1, 'tnDwBY49t9mCST0qlOiHqeWeqncS2YJL', '2019-05-21 14:33:35', '2019-05-21 14:33:35'),
	(12, 1, 'H6FwcEkordbdXJSjWb93RRxpZnGipIae', '2019-05-21 14:34:09', '2019-05-21 14:34:09'),
	(13, 1, 'vW0yZiWvM5hYecpRzp56h8lXHWd7OvuJ', '2019-05-21 14:34:09', '2019-05-21 14:34:09'),
	(14, 1, 'WftMbwr3TKfgaRpeQFlUXYh5o1gwR5ej', '2019-05-21 14:35:06', '2019-05-21 14:35:06'),
	(15, 1, 'wacQ4GvP1u09yT9iSLyMLpstVy73Eacc', '2019-05-21 14:35:07', '2019-05-21 14:35:07'),
	(16, 1, 'OdGxWHoGCbcIOYEBVJZYYor7ZRcRH5PD', '2019-05-21 14:35:08', '2019-05-21 14:35:08'),
	(17, 1, 'kYPLH2UywKB5hu1QrXaAR7cNEq2HIfVH', '2019-05-21 14:35:08', '2019-05-21 14:35:08'),
	(18, 1, 'gtl569dGIaJ4W0JJrJLHVyZC7AU0cv55', '2019-05-21 14:36:07', '2019-05-21 14:36:07'),
	(19, 1, '8ngkVVNyvybynXR38PtGuyrfhkBtt0Vq', '2019-05-21 14:36:07', '2019-05-21 14:36:07'),
	(20, 1, 'Z3LyOzNwk3YwLrs1DLNT11IOozanvlkL', '2019-05-21 14:36:07', '2019-05-21 14:36:07'),
	(21, 1, '3debeytbU4sBYuA3MyZxpUiw4UeLngUO', '2019-05-21 14:36:08', '2019-05-21 14:36:08'),
	(22, 2, 'jIuWd62vxbJoAGpxBoC5InnXIVDlI9ok', '2019-05-21 14:38:09', '2019-05-21 14:38:09'),
	(23, 1, 'ODibTwSISDCakIVL5ZtvUnn3MSFuHrSD', '2019-05-21 14:41:07', '2019-05-21 14:41:07'),
	(24, 1, 'W7T1vLqYDKoK4A7ox6YGo2PRu8YwzZk3', '2019-05-21 14:41:10', '2019-05-21 14:41:10'),
	(25, 1, 'fEmfrQZtmi2RFosMlrq9TfUxnz6a71dS', '2019-05-21 14:41:37', '2019-05-21 14:41:37'),
	(26, 1, 'nr1sbKQtGrmY2Fd4TyhKvb7fuz6Vr5aV', '2019-05-21 14:54:10', '2019-05-21 14:54:10'),
	(27, 1, 'gsoRa5DAYWdCMb4xzLXwy2i7M0yG8yQw', '2019-05-21 14:54:10', '2019-05-21 14:54:10'),
	(28, 1, 'uVkjm33GkonPXqHiY1cfuvLCMuYVKHvB', '2019-05-21 14:55:26', '2019-05-21 14:55:26'),
	(29, 1, '3WYRu7IzC3bz7b3sxj2bJW5npOsdOlo9', '2019-05-21 14:55:26', '2019-05-21 14:55:26'),
	(30, 1, 'qEjOLB8431X8pMMbG0EvkUMGQaGihfEg', '2019-05-21 14:55:26', '2019-05-21 14:55:26'),
	(31, 1, 'ylxqXHnxfWqXgpa6gU6WqLv68AXS3W9L', '2019-05-21 14:55:27', '2019-05-21 14:55:27'),
	(32, 1, '48dPrG0YmqqEYTawJ03HUtWTOJZIAEXn', '2019-05-21 15:02:29', '2019-05-21 15:02:29'),
	(33, 1, 'CGuHzLgj4lJIv2ft13jB4QQekSie5llE', '2019-05-21 15:02:29', '2019-05-21 15:02:29'),
	(34, 1, 'Q7uIMXF5JwlR6hfctYEEZGRDGqiUyFQR', '2019-05-21 15:04:56', '2019-05-21 15:04:56'),
	(35, 1, 'nqBIQdvZ00toTOlo3dwzHthlgayBIMIK', '2019-05-21 15:04:57', '2019-05-21 15:04:57'),
	(36, 1, 'dNssa63yYbUA3f3BsTS5T6SvDBInvwsn', '2019-05-21 15:04:57', '2019-05-21 15:04:57'),
	(37, 1, 'AsnH6sd4MhAYjaRdqN069diO08cV7E2W', '2019-05-21 15:04:57', '2019-05-21 15:04:57'),
	(38, 1, '63MyWoppjxLBt1UADMvxH6yOwdhdmvnp', '2019-05-21 15:04:59', '2019-05-21 15:04:59'),
	(39, 1, '9ytPkDA7w9jEe3olgyraLkSzVmbA6xWd', '2019-05-21 15:04:59', '2019-05-21 15:04:59'),
	(40, 1, 'C55MypEpZhPLERZQJh7YjqW7iWPUs6Oz', '2019-05-21 15:05:04', '2019-05-21 15:05:04'),
	(41, 1, 'GNHzD5GdNvpXExE3lGp43jnOQQXoRilr', '2019-05-21 15:05:04', '2019-05-21 15:05:04'),
	(42, 1, '4EMlwq6t8VJVpXOw4WD2TIBWDkvNT1cH', '2019-05-21 15:13:29', '2019-05-21 15:13:29'),
	(43, 1, 'bTk4eI7gW03SGKovzL4F2nike6zgTHdO', '2019-05-21 15:13:29', '2019-05-21 15:13:29'),
	(44, 1, 'TR4LeX1gjSRg9rdNtpXuKAUfUkLicfRc', '2019-05-21 15:16:22', '2019-05-21 15:16:22'),
	(45, 1, '6qWBMPwPDPesFS04rkh0hU5lJ9tGO0Hd', '2019-05-21 15:16:22', '2019-05-21 15:16:22'),
	(46, 1, 'Jjx1rLo3oc3n4ay2KmDnb0lm2n4sOo94', '2019-05-21 15:18:13', '2019-05-21 15:18:13'),
	(47, 1, 'gJ6YG9VHGw5bT3LOWbiQQMUZ1AwfqNSe', '2019-05-21 15:18:13', '2019-05-21 15:18:13'),
	(48, 1, 'd6b5GgoswDk3zBk420KOOj0xzWmipMud', '2019-05-21 15:18:13', '2019-05-21 15:18:13'),
	(49, 1, '8s8TJzXz600lF552xxeJXCqzOpZ8Gd6m', '2019-05-21 15:18:14', '2019-05-21 15:18:14'),
	(50, 1, 'mLGQ8mxv1z5EM4xW5684vVqB1URv19gm', '2019-05-21 15:18:15', '2019-05-21 15:18:15'),
	(51, 1, 'v7pjGloWVxOHxjFVea0MqA2fn3B2nch3', '2019-05-21 15:18:15', '2019-05-21 15:18:15'),
	(52, 1, 'bz2vaR3HAB1uZuMSbgkEintkUy7ccwYR', '2019-05-21 15:18:18', '2019-05-21 15:18:18'),
	(53, 1, 'AdG5REuaMpSJNZ4elkUSOxuuYEkPWEhf', '2019-05-21 15:18:18', '2019-05-21 15:18:18'),
	(54, 1, 'vAT86msjFWLXgpEmE699T8jz9GO9ze9t', '2019-05-21 15:27:25', '2019-05-21 15:27:25'),
	(55, 1, 'LjBR3GjnPY71jDMDgvcwsKk40hH0HuxR', '2019-05-21 15:27:25', '2019-05-21 15:27:25'),
	(56, 1, 'rYGgAtrz99QpLY4zXHPTXNrC5F8rf5cp', '2019-05-21 15:29:29', '2019-05-21 15:29:29'),
	(57, 1, 'K5i9faNo5LXT1dAesFKssjVIMAHRN6pD', '2019-05-21 15:29:29', '2019-05-21 15:29:29'),
	(58, 1, 'Bx3eJ0l6yTklLmBgpZ4ExPdF0HkeaOc9', '2019-05-21 15:29:30', '2019-05-21 15:29:30'),
	(59, 1, 'Ga8NmqkYr6k8YJUV2Jmg9Z9vfy1yrykA', '2019-05-21 15:29:30', '2019-05-21 15:29:30'),
	(60, 1, 'GBcH6RpzFwaaL21hG0I5z4GiboDGLkST', '2019-05-21 15:29:32', '2019-05-21 15:29:32'),
	(61, 1, '17vPjUkdl1JqZJqX3fttgIbs54Zrf7iz', '2019-05-21 15:29:32', '2019-05-21 15:29:32'),
	(62, 1, 'vrFlHpQh7hEMIJ6KDnjhpsxmkfYot4Hh', '2019-05-21 15:37:44', '2019-05-21 15:37:44'),
	(63, 1, 'Xa43w4Gzg8ZSnKEZWNSzZxIdG54hz9Kr', '2019-05-21 15:37:44', '2019-05-21 15:37:44'),
	(64, 1, 'b4b31hYRh9JYYq6HtZ7VHep4r3vWpf24', '2019-05-21 15:37:50', '2019-05-21 15:37:50'),
	(65, 1, 'UfCDLI5qc7t0Ij72wFzvbOn1yJG2v8vN', '2019-05-21 15:37:50', '2019-05-21 15:37:50'),
	(66, 1, 'HzYVkPGUygH9q65fNW9CXMjwgMAZy3RK', '2019-05-21 15:40:05', '2019-05-21 15:40:05'),
	(67, 1, 'dgBj7e8YUMTzFaqZv3KluJFNQwrN6hOZ', '2019-05-21 15:40:05', '2019-05-21 15:40:05'),
	(68, 1, 'DjxAmPWNCQw5mNNBf3hbH5ue87Mk05y6', '2019-05-21 15:40:06', '2019-05-21 15:40:06'),
	(69, 1, 'QmWpnqWw5H7nDCmKuykqN5Fmf7XxPGfZ', '2019-05-21 15:40:06', '2019-05-21 15:40:06'),
	(70, 1, 'V11uAyHzVuGxxbxGaIHmzO162AtAeXiQ', '2019-05-21 15:40:08', '2019-05-21 15:40:08'),
	(71, 1, '535akJCUNwkOdEMXVK40lG7p1bCWA0nb', '2019-05-21 15:40:08', '2019-05-21 15:40:08'),
	(72, 1, 'Jd9XgNMqRbxjyopgZ6GGCKOazTky2mWn', '2019-05-21 15:43:56', '2019-05-21 15:43:56'),
	(73, 1, 'hKXRBqSahwDxPb4AmPH6GEXHBhXYVkld', '2019-05-21 15:43:56', '2019-05-21 15:43:56'),
	(74, 1, 'e8aKs0TEZAtGwFGew9DtoAblO4RUl6A9', '2019-05-21 15:43:57', '2019-05-21 15:43:57'),
	(75, 1, 'jhJDCL5imUUk4jaqfkPLbIHWxa8j77q6', '2019-05-21 15:43:57', '2019-05-21 15:43:57'),
	(76, 1, '34NUtvwayj84GkTpuminJgg7hCl2eEow', '2019-05-21 15:44:05', '2019-05-21 15:44:05'),
	(77, 1, 'wl8MWunGInywIoZ6gxOAaNYjbTN7p9xS', '2019-05-21 15:44:05', '2019-05-21 15:44:05'),
	(78, 1, 'FDNNiTVxORnToCbJAH0F4AFGRGslx9De', '2019-05-21 15:48:09', '2019-05-21 15:48:09'),
	(79, 1, 'pZmWHbLjR2g6WxybSiqVranFYu5EhSY8', '2019-05-21 15:48:10', '2019-05-21 15:48:10'),
	(80, 1, 'vSA543vmBAg2fSBU1H0mAEs6ZW6rE8zR', '2019-05-21 15:48:10', '2019-05-21 15:48:10'),
	(81, 1, '9hp71vJ6lTDix4tLuWSX2FbzSqKsVRpF', '2019-05-21 15:48:10', '2019-05-21 15:48:10'),
	(82, 1, 'CRC4eXwa2BoB0u6EjMNJJUeK0xinhg1M', '2019-05-21 15:48:11', '2019-05-21 15:48:11'),
	(83, 1, 'CmB8yckN49ghseSemWqscqszzBlxIAGA', '2019-05-21 15:48:11', '2019-05-21 15:48:11'),
	(84, 1, 'VK75MeBvxWzn0CoEXfN244q4BHKIvqws', '2019-05-21 15:48:55', '2019-05-21 15:48:55'),
	(85, 1, 'v4ZsNYt831d9satA0Lw94zP4QE0RvUDV', '2019-05-21 15:48:55', '2019-05-21 15:48:55'),
	(86, 1, 'wJJsq71m0OjeIgHQXJNzs0F58Ae2sz0I', '2019-05-21 15:48:55', '2019-05-21 15:48:55'),
	(87, 1, 'bxyFhURqN3Z1dAE9A6eOMgRSTmNIhVTq', '2019-05-21 15:48:55', '2019-05-21 15:48:55'),
	(88, 1, 'VLeUvmwTngkFP0fPGtRzwmenZd4aWkAV', '2019-05-21 15:48:57', '2019-05-21 15:48:57'),
	(89, 1, 'VYz2pW39YMraNOkjnd7qiAhLPlSKrQkK', '2019-05-21 15:48:57', '2019-05-21 15:48:57'),
	(90, 1, '6KCoPOunSzlnLDhg1tQ1a7UsMZgfrn9W', '2019-05-21 15:49:24', '2019-05-21 15:49:24'),
	(91, 1, 'g1Vk2l9VRoIP7oVHMDN37szVPUWoZgkh', '2019-05-21 15:49:25', '2019-05-21 15:49:25'),
	(92, 1, 'ekcOPXKYzbBFtrc72nr4r5FBgmHaF2wk', '2019-05-21 15:49:25', '2019-05-21 15:49:25'),
	(93, 1, 'b4RZyu6PYtabGz8ei2Qp2XQaqfAEGGTR', '2019-05-21 15:49:25', '2019-05-21 15:49:25'),
	(94, 1, 'PNiZfHKQdUjkZ9E8FzMtkBolBYDcNeXg', '2019-05-21 15:50:32', '2019-05-21 15:50:32'),
	(95, 1, '7u6BEohWpZeCuYvcin0oKf3rAZf3Movc', '2019-05-21 15:50:32', '2019-05-21 15:50:32'),
	(96, 1, 'XrLdCmLUsNc5bGD259IvKqBR3y4KVPj0', '2019-05-21 15:50:32', '2019-05-21 15:50:32'),
	(97, 1, 'Bsppw3AVcGgIhIBu236NrrrXkjdEZbLH', '2019-05-21 15:50:33', '2019-05-21 15:50:33'),
	(98, 1, 'VkNx4EDN1tWv9qHjyw0c4K7lFP9MqXCx', '2019-05-21 15:50:34', '2019-05-21 15:50:34'),
	(99, 1, 'y5Fn7PAQRu9RB61IubQOacQoDeaauPvX', '2019-05-21 15:50:34', '2019-05-21 15:50:34'),
	(100, 1, 'F2dq1mdjWiMrBYRQJ7PfSDd7FVTzk0EJ', '2019-05-21 15:51:27', '2019-05-21 15:51:27'),
	(101, 1, 'NggUarnxMjT7bAcu9boWUXNReLPn5MAl', '2019-05-21 15:51:27', '2019-05-21 15:51:27'),
	(102, 1, 'C2EuvibjxYMqJqYWARyMzUkrQnmclPMx', '2019-05-21 15:51:27', '2019-05-21 15:51:27'),
	(103, 1, 'dHiWomROiVsTdXwTQJ2gbS2K7T7Q8H6Z', '2019-05-21 15:51:28', '2019-05-21 15:51:28'),
	(104, 1, 'CMRZprxB0Km95zKDaOOS75mW71iitKAm', '2019-05-21 15:51:30', '2019-05-21 15:51:30'),
	(105, 1, '6OZfnW1kLPZAaoUBhRiiiYbTOYSuxGNT', '2019-05-21 15:51:30', '2019-05-21 15:51:30'),
	(106, 1, 'jC2UzgaYs4OA5AF988jN2MeRMNnkxExT', '2019-05-21 15:53:19', '2019-05-21 15:53:19'),
	(107, 1, 'b7gWFDHv4Y30q6EKJdKiYN5ipZCuSDC1', '2019-05-21 15:53:19', '2019-05-21 15:53:19'),
	(108, 1, 'Tz5YCdQwVVEqOuNt0yijPJ6vmEgFBhHB', '2019-05-21 15:53:19', '2019-05-21 15:53:19'),
	(109, 1, 'towM4gXpy1GyDNPQb0AtPphdWAmWg9eb', '2019-05-21 15:53:19', '2019-05-21 15:53:19'),
	(110, 1, '9YGGypZZVWC9IqsJtC7nhZ6dmriPJ6tg', '2019-05-21 15:53:30', '2019-05-21 15:53:30'),
	(111, 1, 'DZ57jRvn1227vETUUAbCtZVpVltOnlcA', '2019-05-21 15:53:30', '2019-05-21 15:53:30'),
	(112, 1, '4VFdcNkUrNgQQQtHKtqOpSxYGbcd3Zfd', '2019-05-21 15:53:30', '2019-05-21 15:53:30'),
	(113, 1, 'yMtkYIVQEchsSKPyTAxYDf9uxEl8om0p', '2019-05-21 15:53:30', '2019-05-21 15:53:30'),
	(114, 1, 'A8LNVHCLYWJUxb6eYAhykFC8mbHpm1iO', '2019-05-21 15:55:55', '2019-05-21 15:55:55'),
	(115, 1, 'FO2Wwim83hyQBOqBlOQjNGn0RFrymTQH', '2019-05-21 15:55:55', '2019-05-21 15:55:55'),
	(116, 1, 'OeWtgm031YCKJz10NIEiqkMHUmX8IQDj', '2019-05-21 15:55:55', '2019-05-21 15:55:55'),
	(117, 1, 'c2KUoIzFQIJFVmQZDFy6JEfdZJ1FWpIs', '2019-05-21 15:55:55', '2019-05-21 15:55:55'),
	(118, 1, '3qsYCcqB3JWlSca2FLNV4Vx0V0LO081e', '2019-05-21 15:55:57', '2019-05-21 15:55:57'),
	(119, 1, 'WWomoAkR31anrisGGknDiA8BUEti35SU', '2019-05-21 15:55:57', '2019-05-21 15:55:57'),
	(120, 1, 'JQSN9Tnueb8lV0RKlKk7jbNTH5WmOYYf', '2019-05-21 15:56:45', '2019-05-21 15:56:45'),
	(121, 1, 'XF49QgUUPnt6gaqby6V8BFcKs5U89r75', '2019-05-21 15:56:45', '2019-05-21 15:56:45'),
	(122, 1, 'o5NKpzRdJZsNHBh6SGwj6LpN8omcYfr0', '2019-05-21 15:56:45', '2019-05-21 15:56:45'),
	(123, 1, 'HmpLtdcpnWBIdWSrn9JPzXKcc2PzgnxS', '2019-05-21 15:56:45', '2019-05-21 15:56:45'),
	(124, 1, 'zCvmZkeqtOdclYHkOXNJIdgGPamBzTnJ', '2019-05-21 15:56:46', '2019-05-21 15:56:46'),
	(125, 1, 'uIA2tGor1SZ4QZyRXcIgfsYtV1gst1PF', '2019-05-21 15:56:46', '2019-05-21 15:56:46'),
	(126, 1, 'kXXdprgFDp2hFNAheq5mXRllPGhmsGZC', '2019-05-21 15:58:07', '2019-05-21 15:58:07'),
	(127, 1, 'MiOzzLU8rdzTX6D5kfR6kMujmlQ69MhU', '2019-05-21 15:58:07', '2019-05-21 15:58:07'),
	(128, 1, 'd2D0WsEULHSku4GfiXpj0mCkjVLjkAqi', '2019-05-21 15:58:07', '2019-05-21 15:58:07'),
	(129, 1, 'd0yNWKKyRnkJOfepdO7O5SZbeRhQvsf2', '2019-05-21 15:58:08', '2019-05-21 15:58:08'),
	(130, 1, 'Cih7C6ajFFQTvG6jy7AjagWhbhkuKsvk', '2019-05-21 15:58:08', '2019-05-21 15:58:08'),
	(131, 1, '1NsGb8OFWryWzr7EAaOk8QW5jMJ94eNm', '2019-05-21 15:58:08', '2019-05-21 15:58:08'),
	(132, 1, 'w0zDK2iqPWQjmSEm05aOuyVLTEqTbaPw', '2019-05-21 15:58:33', '2019-05-21 15:58:33'),
	(133, 1, '3bcxpD9n2jp8kZxXUHDDLXDLmoeF99H7', '2019-05-21 15:58:33', '2019-05-21 15:58:33'),
	(134, 1, 'yObMwaNkHy88hWYL4K14hWcLz8Xi7C6j', '2019-05-21 15:58:33', '2019-05-21 15:58:33'),
	(135, 1, 'JRCq8FGiVj53h2Q0SIvF2GLOUN9n64NI', '2019-05-21 15:58:38', '2019-05-21 15:58:38'),
	(136, 1, 'dG2kvuBFqfynRRsJtqpmawNApU0UJIoJ', '2019-05-21 15:58:39', '2019-05-21 15:58:39'),
	(137, 1, 'IjzrRzEwYNKO53My9OcxLeQImVMTgPeS', '2019-05-21 15:58:39', '2019-05-21 15:58:39'),
	(138, 1, 'RlnNeDR1qgwz2DRbv46yENTepgFZ2puP', '2019-05-21 15:58:39', '2019-05-21 15:58:39'),
	(139, 1, 'mYVX3UGYOlIyL4iiGvA5bWuNb7MASx3v', '2019-05-21 15:58:41', '2019-05-21 15:58:41'),
	(140, 1, 'pzzkwDwmQcktuyUy53Laa4PwtjhLUCJV', '2019-05-21 15:58:41', '2019-05-21 15:58:41'),
	(141, 1, 'ioPYSXIPAIHHBajeQMmq1vS1qXkxVgg1', '2019-05-21 16:00:14', '2019-05-21 16:00:14'),
	(142, 1, '21XgPNjbsEhKzLO2mg5eH0kVg6EcMR5v', '2019-05-21 16:00:14', '2019-05-21 16:00:14'),
	(143, 1, 'ngyBGJ7gcVvZejZrGoRRBywDOy9OnmSz', '2019-05-21 16:00:14', '2019-05-21 16:00:14'),
	(144, 1, '4CKmFJgM4P6UWRf2TnLY8YxUpyUnRm62', '2019-05-21 16:00:14', '2019-05-21 16:00:14'),
	(145, 1, 'r4233b0vS2cT0hb17NQEe30r22rJBoqh', '2019-05-21 16:00:39', '2019-05-21 16:00:39'),
	(146, 1, 'IvyrWHWxH6rNvMB2GH9MQuoCIrLtSHwY', '2019-05-21 16:00:39', '2019-05-21 16:00:39'),
	(147, 1, 'MzOczdxie7QO2KKOBOKOkcpNTcgPa8Lc', '2019-05-21 16:00:39', '2019-05-21 16:00:39'),
	(148, 1, 'tS2pvxIkksnglC1K8kdKMAvrf8MpAVLn', '2019-05-21 16:00:39', '2019-05-21 16:00:39'),
	(149, 1, '0Vrzc8iqG5wCO073pwhH6WfmA5SBgaV3', '2019-05-21 16:00:45', '2019-05-21 16:00:45'),
	(150, 1, '1F16LtosSp9k8PXh6PpD7eCzwhpZYvHl', '2019-05-21 16:00:45', '2019-05-21 16:00:45'),
	(151, 1, '0QJPyi9yHkuTFohxss08W6tgkjMHrZbc', '2019-05-21 16:01:36', '2019-05-21 16:01:36'),
	(152, 1, 'LVK3kxSvgugcrExY9bmzwdNakDezHVyW', '2019-05-21 16:01:36', '2019-05-21 16:01:36'),
	(153, 1, '9K8W4w2YLLVxCfnf7jl9srL4aMD57PoU', '2019-05-21 16:01:36', '2019-05-21 16:01:36'),
	(154, 1, 'VFpWpej0Wp6knxNja5pg1ISpXUP6eb7N', '2019-05-21 16:01:37', '2019-05-21 16:01:37'),
	(155, 1, 'pzebY8bl351xKsL517H3G6IHfltD8MN9', '2019-05-21 16:02:21', '2019-05-21 16:02:21'),
	(156, 1, 'JkDSSGs02OwzVAnLpNLQAiyYxnMFZbhE', '2019-05-21 16:02:21', '2019-05-21 16:02:21'),
	(157, 1, '7qOAUHlKqbvBCwuVxcey2QIPOkuiZaM0', '2019-05-21 16:02:21', '2019-05-21 16:02:21'),
	(158, 1, 'WoUlWKfFqaXiqtp7EhuZHnXT8KrIHnZC', '2019-05-21 16:02:21', '2019-05-21 16:02:21'),
	(159, 1, 'PMhXOZt8WLQ6fNilBlfrUtiTQIoNd7Wt', '2019-05-21 16:02:34', '2019-05-21 16:02:34'),
	(160, 1, 'gmGzVt4ev6n3x1aS1yJXiWVFODYCSQeh', '2019-05-21 16:02:34', '2019-05-21 16:02:34'),
	(161, 1, 'IokNZ964r1u4Dul8HVynEsRIEfJJ5BJd', '2019-05-21 16:02:34', '2019-05-21 16:02:34'),
	(162, 1, '9kXknqjPJhnzbcQfmPVqKHZMo4hHrW79', '2019-05-21 16:02:34', '2019-05-21 16:02:34'),
	(163, 1, '0tROoItdGWos75VfzvlbGGG60po25ziu', '2019-05-21 16:03:51', '2019-05-21 16:03:51'),
	(164, 1, '9JRiLQBe5b2eDaS5kI9HsjXuPLc2XzSQ', '2019-05-21 16:03:51', '2019-05-21 16:03:51'),
	(165, 1, 'piX5MdS5yTg1iiIErFBMgZMYyPlKU8i3', '2019-05-21 16:03:51', '2019-05-21 16:03:51'),
	(166, 1, 'moSdWygB0nPPpsCPsz36L45zEvONFYnO', '2019-05-21 16:03:58', '2019-05-21 16:03:58'),
	(167, 1, 'N1Y5a3sISmK3pKPnpsMLKtssawUZ02Ty', '2019-05-21 16:03:58', '2019-05-21 16:03:58'),
	(168, 1, 'AAIInJhU6GN05s8pIFtaHihBodZAdexb', '2019-05-21 16:03:58', '2019-05-21 16:03:58'),
	(169, 1, 'H55LLFrRAHbQY9XpKOfz5xt1OOWY6aPR', '2019-05-21 16:03:59', '2019-05-21 16:03:59'),
	(170, 1, 'cmgblhBhGxOz8P9fE3zayefONbzXngo1', '2019-05-21 16:04:42', '2019-05-21 16:04:42'),
	(171, 1, 'p4vINC9tiVmRa6dayTJ7u3njgCCQPmCc', '2019-05-21 16:04:42', '2019-05-21 16:04:42'),
	(172, 1, 'r1LrMV2KR33BcKsF4j6bTuDrJ5l74Hrf', '2019-05-21 16:04:42', '2019-05-21 16:04:42'),
	(173, 1, 'JH6gGEQl7YPXsseqWNMe76pqKqAlOW7J', '2019-05-21 16:04:42', '2019-05-21 16:04:42'),
	(174, 1, 'p3Dr9j8uegZNXgVxxaUK6HWFAL1y5GRe', '2019-05-21 16:04:50', '2019-05-21 16:04:50'),
	(175, 1, 'N7H5f3zDoGQYwdeThHb0pLxyhvyk5va6', '2019-05-21 16:04:50', '2019-05-21 16:04:50'),
	(176, 1, 'rmsjoDKu873yMlpG67IXFLvI0iG2WSnD', '2019-05-21 16:05:33', '2019-05-21 16:05:33'),
	(177, 1, 'd4TTuUsmB9n3IB9JvzqYGyqUK0X73utr', '2019-05-21 16:05:33', '2019-05-21 16:05:33'),
	(178, 1, '5abUr7bGefIQZZagTnASm2VVHVDqq6Ci', '2019-05-21 16:05:33', '2019-05-21 16:05:33'),
	(179, 1, 'vefJehikSNuEnpmpDKvchmNyyrdwm6qz', '2019-05-21 16:05:34', '2019-05-21 16:05:34'),
	(180, 1, '7G967faWHVvHb0mXoweGA6Gxg9gHzuIA', '2019-05-21 16:05:35', '2019-05-21 16:05:35'),
	(181, 1, '49iHCab62ytJEaV6HpgTnfRCBhvkvexK', '2019-05-21 16:05:35', '2019-05-21 16:05:35'),
	(182, 1, 'LwKGpyxnZl7v6T0JgDI5hIQJAxE3KnaK', '2019-05-21 16:05:58', '2019-05-21 16:05:58'),
	(183, 1, 'Ph107G3yDp9LgyWU5iyxz9bMnl4ok2r2', '2019-05-21 16:05:58', '2019-05-21 16:05:58'),
	(184, 1, 'hXOGoLzTpYdjun6FeYM11twk5X7uQwXD', '2019-05-21 16:05:58', '2019-05-21 16:05:58'),
	(185, 1, 'fKRpQ7lxhYmvd1MsVxNFgcWIUW22MBwT', '2019-05-21 16:05:58', '2019-05-21 16:05:58'),
	(186, 1, 'FhReiQ5OY6DZBcHctG1ofUCVntvoMd8t', '2019-05-21 16:06:02', '2019-05-21 16:06:02'),
	(187, 1, '4EiaJP5BqgQ6ci3FeYdnVGY50g7DHAfs', '2019-05-21 16:06:02', '2019-05-21 16:06:02'),
	(188, 1, 'ipvFkDEufxtSMq0BoNJn6Rr2GuoBqajq', '2019-05-21 16:06:02', '2019-05-21 16:06:02'),
	(189, 1, 'yxz0h8Xghq4xV3RP0PM47YCikuby9Vbs', '2019-05-21 16:06:03', '2019-05-21 16:06:03'),
	(190, 1, 'UWV3pBdxZMmOLOZvs6gNYielxDa5HPan', '2019-05-21 16:06:05', '2019-05-21 16:06:05'),
	(191, 1, 'kL1vPoTqcpv7JDkKOB6wkpMYTHvwOjEg', '2019-05-21 16:06:05', '2019-05-21 16:06:05'),
	(192, 1, 'w8qt98DfQ1IQnxXcby6zyv5nEzkJqphi', '2019-05-21 16:07:03', '2019-05-21 16:07:03'),
	(193, 1, 'nesdNmZxCOjWHiHQ4x5mwnD7DTlJE07a', '2019-05-21 16:07:03', '2019-05-21 16:07:03'),
	(194, 1, 'DmIMDHuekWxzo5vTitvkbnaeIAs2CJCU', '2019-05-21 16:07:03', '2019-05-21 16:07:03'),
	(195, 1, 'f08dlh5kloHvpO1rbd4lIAqnTr7CIHby', '2019-05-21 16:07:03', '2019-05-21 16:07:03'),
	(196, 1, 'SjJzkrxggxBHkCeZANrHNzYqIzsAjeu8', '2019-05-21 16:07:30', '2019-05-21 16:07:30'),
	(197, 1, 'AqN4eibaMq4RBDkkl4glxMxNJave4xa5', '2019-05-21 16:07:30', '2019-05-21 16:07:30'),
	(198, 1, 'WcHLz8W6nfwCMgVpERAeNz653wy7eQfa', '2019-05-21 16:07:30', '2019-05-21 16:07:30'),
	(199, 1, 'C81SGLmp00KGdT38RyeFZfc1yup7n7xg', '2019-05-21 16:07:30', '2019-05-21 16:07:30'),
	(200, 1, 'Ml8kG1fAgFMzfEgaTEYaX7VyJKeeQx4i', '2019-05-21 16:07:32', '2019-05-21 16:07:32'),
	(201, 1, '7tUBLG3wKb0ZEe5weNLxxP6CQriPEuQL', '2019-05-21 16:07:32', '2019-05-21 16:07:32'),
	(202, 1, 'D9p5UrvQ6D1aDjqgdxURVl6Y0mhxCRIl', '2019-05-21 16:07:48', '2019-05-21 16:07:48'),
	(203, 1, 'f79nyCo8J5WqjQOUJVNl1mS6TS9cuPA4', '2019-05-21 16:07:48', '2019-05-21 16:07:48'),
	(204, 1, '0Gq2rJhiGAp7hsL3gr2GRtpasaHVUBw7', '2019-05-21 16:07:48', '2019-05-21 16:07:48'),
	(205, 1, 'eAyYtMVShxKXHhVDeEBW3z1lff5jfroJ', '2019-05-21 16:07:49', '2019-05-21 16:07:49'),
	(206, 1, '6mzQlkG9Oxwsj6bYehnRJNgPMmr3GYma', '2019-05-21 16:07:52', '2019-05-21 16:07:52'),
	(207, 1, 'pkBovrYl9fi7LxYwPWY5zfloQ2X3K6AO', '2019-05-21 16:07:52', '2019-05-21 16:07:52'),
	(208, 1, '7X9J7UMtKzBEhXhMKIBvf5sIRKJE3b9s', '2019-05-21 16:08:50', '2019-05-21 16:08:50'),
	(209, 1, 'WJ24O1AwkYlP3ujMvhh13Qi4fYjRLqQN', '2019-05-21 16:08:50', '2019-05-21 16:08:50'),
	(210, 1, 'I0e2aMLGrt2yGVnHcowAcd0fW0HebT1F', '2019-05-21 16:08:50', '2019-05-21 16:08:50'),
	(211, 1, '9blrCAz6UsRS4OFAIBl93rF3JljuihdJ', '2019-05-21 16:08:51', '2019-05-21 16:08:51'),
	(212, 1, 'HpYMpONX8LadexteIMTWfIMtg17bN3VL', '2019-05-21 16:08:51', '2019-05-21 16:08:51'),
	(213, 1, 'YcXxioyhpOXToZV6GOMEGGFHwFGnrRGP', '2019-05-21 16:08:52', '2019-05-21 16:08:52'),
	(214, 1, 'JWlj9YFDLovSbdBOBakjRzE4sCJpAkxb', '2019-05-21 16:10:11', '2019-05-21 16:10:11'),
	(215, 1, 'qnarhZeLFgrYA3AATRYxBosx3G8APOME', '2019-05-21 16:10:11', '2019-05-21 16:10:11'),
	(216, 1, '6M90sIDiHguR0grXvQHubhHA8LGc9Ru6', '2019-05-21 16:10:12', '2019-05-21 16:10:12'),
	(217, 1, 'F3OHo1KX1tAQksUdMypZ6x8sdDZ2TUpe', '2019-05-21 16:10:12', '2019-05-21 16:10:12'),
	(218, 1, 'LpRgWgFsO3V5TLQg5p6thVfuxf85WNIL', '2019-05-21 16:10:28', '2019-05-21 16:10:28'),
	(219, 1, 'NMGhGH8F9HNn3RwlAlCMxEiqtLnjzRcX', '2019-05-21 16:10:28', '2019-05-21 16:10:28'),
	(220, 1, 'rDUWr3FxUoygOY3jKzxLO0cuAoVHZnUu', '2019-05-21 16:10:29', '2019-05-21 16:10:29'),
	(221, 1, 'bXBTyiRAIDqm0zEN9iwxx65mCvoJesIu', '2019-05-21 16:10:29', '2019-05-21 16:10:29'),
	(222, 1, 'zQUGHttifboSXwLMWXwnMBSI0f8lJuIm', '2019-05-21 16:10:32', '2019-05-21 16:10:32'),
	(223, 1, 'aNDxBCf9cuRdaja8KXMW6l9wvm3D85U3', '2019-05-21 16:10:32', '2019-05-21 16:10:32'),
	(224, 1, 'J09BfdDXulYl4S5wdnnQu3NZwcqQUXMu', '2019-05-21 16:10:33', '2019-05-21 16:10:33'),
	(225, 1, 'ovQw2qmik5l5MDga786rVGza92HwQ2MU', '2019-05-21 16:10:33', '2019-05-21 16:10:33'),
	(226, 1, 'vIEevrJIF7teF48zqEJNWGoj4hlgPaMZ', '2019-05-21 16:10:35', '2019-05-21 16:10:35'),
	(227, 1, 'fxo4tgsipLgocQ7C9OFegz4opOKZuB6m', '2019-05-21 16:10:35', '2019-05-21 16:10:35'),
	(228, 1, '9WVSZIDMu4fmvJUSMlNkQCnyA75B7OCp', '2019-05-21 16:11:06', '2019-05-21 16:11:06'),
	(229, 1, 'SH49blX662jvXU1qEUW8szp1o6D4DVk9', '2019-05-21 16:11:06', '2019-05-21 16:11:06'),
	(230, 1, 'xdxXO2b8pKgb2jcQZ0OajOcjtzyWfZDY', '2019-05-21 16:11:06', '2019-05-21 16:11:06'),
	(231, 1, 'tWsMDQMIyEgONyBZJJqgttU909Dh9XGz', '2019-05-21 16:11:07', '2019-05-21 16:11:07'),
	(232, 1, 'oACHvRCCB2gTnvHdCcYujs6CScgjUipC', '2019-05-21 16:11:10', '2019-05-21 16:11:10'),
	(233, 1, 'q4ujD5CT4YuoSp1gyNDIYiERofHAZJz0', '2019-05-21 16:11:10', '2019-05-21 16:11:10'),
	(234, 1, 'auGEpSm1AmBZy555DJEashz2YMKJU0an', '2019-05-21 16:11:48', '2019-05-21 16:11:48'),
	(235, 1, '4o6pVHNISwxgR1t3yRhtoML9F5KGXBGR', '2019-05-21 16:11:48', '2019-05-21 16:11:48'),
	(236, 1, 'fCGleDvLTQWQ9qmL05gZb4LOFP36JSti', '2019-05-21 16:11:48', '2019-05-21 16:11:48'),
	(237, 1, 'yZeI6CC3feC1uVV79Zexm4RtxGmwzv9u', '2019-05-21 16:11:49', '2019-05-21 16:11:49'),
	(238, 1, 'N04cBiPSS2YGsWNxSGXcN9szRIZDARfs', '2019-05-21 16:11:50', '2019-05-21 16:11:50'),
	(239, 1, 'uuUWhGO2rm1SsRSzUcogmY7pUlgJAYQ6', '2019-05-21 16:11:50', '2019-05-21 16:11:50'),
	(240, 1, '4yk2x8sns0rAE4uImhIzvWCQHYO1qo0Y', '2019-05-21 16:12:39', '2019-05-21 16:12:39'),
	(241, 1, '7tfEfonvxmL5WG7Jf1l5iCWgPv8jaPvo', '2019-05-21 16:12:39', '2019-05-21 16:12:39'),
	(242, 1, 'I6QOmo1sjrTOAYmtLSjMRxqC02K19q3H', '2019-05-21 16:12:39', '2019-05-21 16:12:39'),
	(243, 1, 'CPbXzwHSPIvb2q5g1uWNjr33gTdTM1jN', '2019-05-21 16:12:39', '2019-05-21 16:12:39'),
	(244, 1, 'UegLLSwlwj8oeSrCZnfYywOeBRXgbeVs', '2019-05-21 16:12:42', '2019-05-21 16:12:42'),
	(245, 1, 'GjKzS9zpfbvc7lOVwzfoJv0bITJgwqey', '2019-05-21 16:12:43', '2019-05-21 16:12:43'),
	(246, 1, 'y8HuO3mZeiPgIilyBIXmCVur7hV5vzOH', '2019-05-21 16:13:15', '2019-05-21 16:13:15'),
	(247, 1, '1X5XXZjAWYjKqbu3tXb2FmYwKLr3L8m2', '2019-05-21 16:13:15', '2019-05-21 16:13:15'),
	(248, 1, 'LnGVUNg3fP80nKKylseY2OFlWBvkzMDF', '2019-05-21 16:13:16', '2019-05-21 16:13:16'),
	(249, 1, '2lAik4oXtZOUWkIF2afW8wtXCg5RUYta', '2019-05-21 16:13:16', '2019-05-21 16:13:16'),
	(250, 1, 'IUcE2Wdr2b8sfQHzk339sNWPubc7YWA2', '2019-05-21 16:13:18', '2019-05-21 16:13:18'),
	(251, 1, 'tVmwJWSQs8oab3xlxzyb9IqmyBobiKP8', '2019-05-21 16:13:18', '2019-05-21 16:13:18'),
	(252, 1, 'ZTCb3I9QysEOFXpuSaRJn6gNS1eb5EGK', '2019-05-21 16:14:03', '2019-05-21 16:14:03'),
	(253, 1, 'rwRdyS67Kgtn4mDHPfmNFYVGYTzjuQMg', '2019-05-21 16:14:03', '2019-05-21 16:14:03'),
	(254, 1, 'aNZHXf0chUG5iFUJYCxybqbTpPSoJcYw', '2019-05-21 16:14:03', '2019-05-21 16:14:03'),
	(255, 1, 'FZzYwUlgthK41dEUCMwfUOXraZzFryNt', '2019-05-21 16:14:03', '2019-05-21 16:14:03'),
	(256, 1, '9W5dCoU3iTb9qFC539ibSwth7dALncWR', '2019-05-21 16:14:06', '2019-05-21 16:14:06'),
	(257, 1, 'jL84kmfioWzTBvm3325wDwXBIOk6pGBH', '2019-05-21 16:14:06', '2019-05-21 16:14:06'),
	(258, 1, '17WGyKJcZXsKFxWtzTZBrLqcbviUTv40', '2019-05-21 16:14:41', '2019-05-21 16:14:41'),
	(259, 1, '4Bd4IObJdHkaV8V5zTrlpqvTnDOmh326', '2019-05-21 16:14:41', '2019-05-21 16:14:41'),
	(260, 1, 'FMKW1vsXDrRiRju70vyFmK7JtWcSEl0K', '2019-05-21 16:14:41', '2019-05-21 16:14:41'),
	(261, 1, 'DliRkaObkLgbcje3nHoqkHw1VG2VZ7Ab', '2019-05-21 16:14:42', '2019-05-21 16:14:42'),
	(262, 1, 'RVKcDd6bggzxtcsQ2OCDdgdSLJd7ADoe', '2019-05-21 16:14:45', '2019-05-21 16:14:45'),
	(263, 1, 'oR93C9MqbFzi2HjSK4x8HxOzZF1xFAZX', '2019-05-21 16:14:45', '2019-05-21 16:14:45'),
	(264, 1, 'q5Ac5jSJrQjy7e83bdYIKDPWdnmQIDXu', '2019-05-21 16:15:57', '2019-05-21 16:15:57'),
	(265, 1, 'TDEuo7j8QHfcykVg5AQEbtA22yPkiyCb', '2019-05-21 16:15:58', '2019-05-21 16:15:58'),
	(266, 1, 'Lq5Bxs3sQ8LHBXCR9iTQma3mtpT1amhq', '2019-05-21 16:15:58', '2019-05-21 16:15:58'),
	(267, 1, 'xz8RtIklOWAqwmTvNqeALBb1U5d9CAcS', '2019-05-21 16:15:58', '2019-05-21 16:15:58'),
	(268, 1, 'kmBsrulq2iL7K8lb3c6UaJ7L56e3PukH', '2019-05-21 16:15:59', '2019-05-21 16:15:59'),
	(269, 1, '95zvJKc3zFlnIigksAtFSj2FXEGNndcg', '2019-05-21 16:16:00', '2019-05-21 16:16:00'),
	(270, 1, '0vTgvGNV1OF2JYqql5CWZxB6ny4IejgK', '2019-05-21 16:16:59', '2019-05-21 16:16:59'),
	(271, 1, 'ReTjmyqsyfaWMlxA5g97LQ6L9vxDq0T2', '2019-05-21 16:16:59', '2019-05-21 16:16:59'),
	(272, 1, '9X3jRa8TNLCQS342pLSQLpcDxqD5mdIZ', '2019-05-21 16:17:00', '2019-05-21 16:17:00'),
	(273, 1, 'TpSuSny7xK6kbYVhA6WR4jw9fSiWwOc5', '2019-05-21 16:17:00', '2019-05-21 16:17:00'),
	(274, 1, 'sh0oTGzHl98dPrF6nanPJcC5axrvWPWT', '2019-05-21 16:17:05', '2019-05-21 16:17:05'),
	(275, 1, 'iWgA7ILev2qVcFNCPi3qKuZLyRTgndCE', '2019-05-21 16:17:05', '2019-05-21 16:17:05'),
	(276, 1, '59IJOVK473En7xWz1b56GBBOEG6VGAa8', '2019-05-21 16:17:43', '2019-05-21 16:17:43'),
	(277, 1, 'oDJJktUZHoPFWhoLAR0XqeXIE9MnCJhq', '2019-05-21 16:17:43', '2019-05-21 16:17:43'),
	(278, 1, '9Uji0MZcUdQhOBNCH8bQWZazuZNd37FH', '2019-05-21 16:17:43', '2019-05-21 16:17:43'),
	(279, 1, 'pcQ0tWfnBQkfkCnYo1JlJYNXZbYlpuy3', '2019-05-21 16:17:43', '2019-05-21 16:17:43'),
	(280, 1, 'cspRTXcmlmpfvyjWjnw59qE0n1gH5bnM', '2019-05-21 16:17:47', '2019-05-21 16:17:47'),
	(281, 1, 'I4qrQp6xovbTFLwrqxf5opu9Xp0Aou3k', '2019-05-21 16:17:47', '2019-05-21 16:17:47'),
	(282, 1, 'bhlPLq8FcSpbpE76aGztngfeMXeUCnCj', '2019-05-21 16:18:48', '2019-05-21 16:18:48'),
	(283, 1, '7PkiqcBtweKb4rXvr0kVQojgxHoTPrdy', '2019-05-21 16:18:48', '2019-05-21 16:18:48'),
	(284, 1, 'CHVNQH9zu13b0fd7qjSWyLfk4nGEhSy4', '2019-05-21 16:18:48', '2019-05-21 16:18:48'),
	(285, 1, 'MwpjXB0P1REdTgCnoONy2xlFie55qDuH', '2019-05-21 16:18:48', '2019-05-21 16:18:48'),
	(286, 1, 'ttsFXyMoKjCRew1l8wDaxFZAH27kleKj', '2019-05-21 16:18:49', '2019-05-21 16:18:49'),
	(287, 1, '6h7AefngcSUJEor4ohHkQo8a6FXjJuTO', '2019-05-21 16:18:49', '2019-05-21 16:18:49'),
	(288, 1, '4vxiBVQ3vJ75rZD4LMAXborIXEdbrAmb', '2019-05-21 16:21:16', '2019-05-21 16:21:16'),
	(289, 1, 'WuTtmlDV0giMGRZwNvoKhc8LO6tSFniW', '2019-05-21 16:21:16', '2019-05-21 16:21:16'),
	(290, 1, 'L6Yhd6nAMTuHwRqPQlWaIGwTMdyhdXzv', '2019-05-21 16:21:16', '2019-05-21 16:21:16'),
	(291, 1, '1VVPtokVrTUxiLEbGzHAaic5RgKuwJdY', '2019-05-21 16:21:16', '2019-05-21 16:21:16'),
	(292, 1, 'ozYsTLRqhOnztCGVHk5pSArhk99YdAPi', '2019-05-21 16:21:30', '2019-05-21 16:21:30'),
	(293, 1, 'M4Pd0htgN4HmsNpLFlHJDXcPl7G8FlFy', '2019-05-21 16:21:30', '2019-05-21 16:21:30'),
	(294, 1, '0QVYg10Isp5Uqrw5jypP88gT8WibDt6n', '2019-05-21 16:39:20', '2019-05-21 16:39:20'),
	(295, 1, 'KoXrxgU9WjOsqt2VhtULjUwlLDRpQezx', '2019-05-21 16:39:20', '2019-05-21 16:39:20'),
	(296, 1, 'vrVVP8snExLjGUHPLfXxTBGwh4XG2fMQ', '2019-05-21 16:42:46', '2019-05-21 16:42:46'),
	(297, 1, '3ZyD0v2jIqfLitEY0BcE2vfbLsW16Rgu', '2019-05-21 16:42:46', '2019-05-21 16:42:46'),
	(298, 1, '2bTBb8fdPeTneLwDimWGH3le2FpZ9hW4', '2019-05-21 16:42:46', '2019-05-21 16:42:46'),
	(299, 1, 'mRKHz1hlHQWZHSTFzoEdDRuqmsdanRqj', '2019-05-21 16:42:47', '2019-05-21 16:42:47'),
	(300, 1, 'LuZERxzZCo1JF4EOP5aBODrbXdXlVQgv', '2019-05-21 16:49:23', '2019-05-21 16:49:23'),
	(301, 1, '8IK3BILcwVTVt5t6YRWaLxwpW4qHneq2', '2019-05-21 16:49:23', '2019-05-21 16:49:23'),
	(302, 1, 'mrH6MSL7tK8N8XaDtmPWMaMl1DeAXqoK', '2019-05-21 16:53:43', '2019-05-21 16:53:43'),
	(303, 1, 'Q6gTYa4Um92dSgbGLgAaIcZcXTz3INzh', '2019-05-21 16:53:43', '2019-05-21 16:53:43'),
	(304, 1, 'ppZ3FiUrRWXErsXfSsKVU7eEIa4qALg5', '2019-05-21 16:53:43', '2019-05-21 16:53:43'),
	(305, 1, 'zP9Xp9dObWrQWZfrujnhm3zNxjBEtsPA', '2019-05-21 16:53:43', '2019-05-21 16:53:43'),
	(306, 1, 'MfGg8Njh9BJmJSw6hP0trXq4RtGtBOWP', '2019-05-21 16:54:08', '2019-05-21 16:54:08'),
	(307, 1, 'hn0WmRYy9XM3id0TB1eVu2TjDDHPeL8a', '2019-05-21 16:54:08', '2019-05-21 16:54:08'),
	(308, 1, 'yhiFJpT0nVR33m6HBfXvaJFBLN9E3O1P', '2019-05-21 16:54:08', '2019-05-21 16:54:08'),
	(309, 1, 'PqWZjHBiTtofbLvAZtZBFEZ60KdNhMib', '2019-05-21 16:54:08', '2019-05-21 16:54:08'),
	(310, 1, 'aWRRXL0Wopks9Kr57jSc562jQ2R3bCvj', '2019-05-21 16:54:11', '2019-05-21 16:54:11'),
	(311, 1, 'NJh6Jmfhn3TK2TlsdFWr2Q5tVNdceJNf', '2019-05-21 16:54:11', '2019-05-21 16:54:11'),
	(312, 1, 'gwfxM7PPJvEIcRDsXPMBbZpMGUw8e9Z2', '2019-05-21 16:56:04', '2019-05-21 16:56:04'),
	(313, 1, 'W9PCSl9p5R3s51u2QpcchcfDofU95jmN', '2019-05-21 16:56:04', '2019-05-21 16:56:04'),
	(314, 1, 'bvDMyDAfUEA6y7c87tKVQmoSX15ZsVAH', '2019-05-21 16:56:04', '2019-05-21 16:56:04'),
	(315, 1, '2RATKUkV1EpvVSUCCUPZZO1Dzl2D2NHj', '2019-05-21 16:56:04', '2019-05-21 16:56:04'),
	(316, 1, 'T3vTPMI12SrKWXvFkYLxirhlyjNQQZFK', '2019-05-21 16:56:05', '2019-05-21 16:56:05'),
	(317, 1, 'DbkbizydvP7NWmfZrk7IdBdwGp6WB8dq', '2019-05-21 16:56:05', '2019-05-21 16:56:05'),
	(318, 1, 'Cj2UXMlqqNZr2gqWdAE8bmsW6O4xRdHG', '2019-05-21 16:57:51', '2019-05-21 16:57:51'),
	(319, 1, 'SraDmpuZm74VOBs1uYfPNUMeHxnxGgP1', '2019-05-21 16:57:51', '2019-05-21 16:57:51'),
	(320, 1, 'jT6ftk626ZL7CmnT8fPmyz7PmmkAh3xV', '2019-05-21 16:57:51', '2019-05-21 16:57:51'),
	(321, 1, 'sQa9SWH6sdlLQzmTf7ywfPCDB91OMM4P', '2019-05-21 16:57:52', '2019-05-21 16:57:52'),
	(322, 1, '96A4VZwgYjPj7PaDsdsRtb4S5oOMi1mk', '2019-05-21 16:58:25', '2019-05-21 16:58:25'),
	(323, 1, 'ZdUzGrFw8jlcGz37KR63zqmd4VahLRT4', '2019-05-21 16:58:25', '2019-05-21 16:58:25'),
	(324, 1, 'sypPeQb4z0Y0jX8scav0L8j5K7LEFg3i', '2019-05-21 16:58:25', '2019-05-21 16:58:25'),
	(325, 1, '4fOkl44GjV0t7svS08yFGTNPZTYOyziQ', '2019-05-21 16:58:25', '2019-05-21 16:58:25'),
	(326, 1, 'wGOUWvW8NwVfcEGnhPP3pu5l3wI2ussW', '2019-05-21 16:58:25', '2019-05-21 16:58:25'),
	(327, 1, 'FThE518rajxkmZiWI0TGgoiGp5hIJGcC', '2019-05-21 16:58:26', '2019-05-21 16:58:26'),
	(328, 1, 'RHbvnIi0MbB3hMcthmZaaqgqBqYI8C7T', '2019-05-21 17:02:27', '2019-05-21 17:02:27'),
	(329, 1, 'K1PNQFNSwJ6LoUgdGmFYvTfNWHOimzl7', '2019-05-21 17:02:27', '2019-05-21 17:02:27'),
	(330, 1, 'zqdHruff5a9GogSh4BvrRFON5Nm7wuRc', '2019-05-21 17:10:05', '2019-05-21 17:10:05'),
	(331, 1, 'rfmajHHgM4RoHc6Jmr3JxyjFtArLn48Q', '2019-05-21 17:10:05', '2019-05-21 17:10:05'),
	(332, 1, 'sRc4h9rGYq3spGUIkRvTGMsJKvAeISvl', '2019-05-21 17:16:35', '2019-05-21 17:16:35'),
	(333, 1, '1FRzNco0HPaYrT7Bk60Zrv1EjKk676hP', '2019-05-21 17:16:36', '2019-05-21 17:16:36'),
	(334, 1, 'lHfSGNhqoQ7QJE2iFcgnOwiq8q3pdSWG', '2019-05-21 17:18:47', '2019-05-21 17:18:47'),
	(335, 1, 'WIRhFhZLe4NyIpcCuY1ilWBpUmROl1vB', '2019-05-21 17:24:02', '2019-05-21 17:24:02'),
	(336, 1, 'igFwBrBlmqzAgzjPbL2K1JAW4T80OsPb', '2019-05-21 17:24:03', '2019-05-21 17:24:03'),
	(337, 1, 'VFLxj5NiM9MJDI3qIsGYM2mAT2WBdaLB', '2019-05-21 17:24:03', '2019-05-21 17:24:03'),
	(338, 1, 'JthX9q4p9nVMe98gYDVlDXTdGTELarJo', '2019-05-21 17:24:03', '2019-05-21 17:24:03'),
	(339, 1, 'NBfmhPDY455sXhz4vWvTQ630HBpcDTf7', '2019-05-21 17:24:05', '2019-05-21 17:24:05'),
	(340, 1, 'aKjaNRt7P4yndC9EY8HZnme0l7JsuSNy', '2019-05-21 17:24:05', '2019-05-21 17:24:05'),
	(341, 1, 'OPE6m6KbpzAcMq0F653odd0AEESO8AhI', '2019-05-21 17:25:29', '2019-05-21 17:25:29'),
	(342, 1, 'OOchhli7qTTBOkuHGXrXbRbq8hqlZDlP', '2019-05-21 17:25:29', '2019-05-21 17:25:29'),
	(343, 1, '3Nsj8SEfkDtSGHnWPThb9ycZqkTQYCUl', '2019-05-21 17:25:29', '2019-05-21 17:25:29'),
	(344, 1, 'xThrXtpJiJbFudYTq3IdMWPC8fP1APbd', '2019-05-21 17:25:30', '2019-05-21 17:25:30'),
	(345, 1, 'LMAbYuV8LUpWfjSBPA51JDQYglqSP4rI', '2019-05-21 17:25:57', '2019-05-21 17:25:57'),
	(346, 1, '4gmpylOG1bv6sSIG8nZ5Y2jTeJhtYHNy', '2019-05-21 17:25:58', '2019-05-21 17:25:58'),
	(347, 1, '65ZafeaYdJ1R8X7Z1p2TFSOTtqQgKAaH', '2019-05-21 17:34:37', '2019-05-21 17:34:37'),
	(348, 2, 'Pv5jX5QJA7lzAhVZg4ayu0paDBxf0fxz', '2019-05-21 17:37:08', '2019-05-21 17:37:08'),
	(349, 2, 'txHgmou8tBxOyZ9K0DvnduSNFls7UbLQ', '2019-05-21 17:37:33', '2019-05-21 17:37:33'),
	(350, 1, 'PL6jTzcUcFuS4XOBqsxz7UVBI7wJWYZx', '2019-05-21 17:54:23', '2019-05-21 17:54:23'),
	(351, 1, 'EdJC2mljsjGvoCjza0ETdvZfPBxNk8xj', '2019-05-21 17:54:23', '2019-05-21 17:54:23'),
	(352, 1, 'vvxoHKUoYtNmYahWRe95XQzxzoE7ZBfu', '2019-05-21 17:54:26', '2019-05-21 17:54:26'),
	(353, 1, 'ByD0iaQyIFca9itwspFk7jOkBRX3ZxZn', '2019-05-21 17:54:27', '2019-05-21 17:54:27'),
	(354, 1, 'Wsg4H6M51zCOFn26Fz9qFO5i11XU9QcE', '2019-05-21 17:54:36', '2019-05-21 17:54:36'),
	(355, 1, 'FkmSMkr3aFFmPpOW7q8hupykOpuSqsr1', '2019-05-21 17:54:36', '2019-05-21 17:54:36'),
	(356, 2, 'UeOc3KFTU7uvVoTHjkxa1JZR8wlvR9eY', '2019-05-21 17:55:13', '2019-05-21 17:55:13'),
	(357, 2, '4lLix9y4am8ojNb1lu6cCFirLvWWGJOt', '2019-05-21 17:55:22', '2019-05-21 17:55:22'),
	(358, 2, 'lxyLIo3tHd6We6PThTbOHENsdjZ9EkxY', '2019-05-21 17:58:08', '2019-05-21 17:58:08'),
	(359, 2, 'nu1EBcDkyHyanhdkMOsViNDLiCbuzze3', '2019-05-21 18:01:46', '2019-05-21 18:01:46'),
	(360, 1, 'j2QYBWRyLVpuHGD1o8oUn0mbXYRQrnyr', '2019-05-21 18:02:20', '2019-05-21 18:02:20'),
	(361, 1, 'cdJmiLEA27yVGCSjOeEKqRdzO62bJBwr', '2019-05-21 18:02:20', '2019-05-21 18:02:20'),
	(362, 1, 'oC1GJ617pTOTiUkMaUCLUFm6S33yKmT8', '2019-05-21 18:02:22', '2019-05-21 18:02:22'),
	(363, 1, 'bmIEndZPQP5Y4uh3cFto5IIWGfGQAUV1', '2019-05-21 18:02:22', '2019-05-21 18:02:22'),
	(364, 2, 'vXAcoySWcfU7aFzfEU0XqcnIfUlUm7vP', '2019-05-21 18:02:51', '2019-05-21 18:02:51'),
	(365, 2, 'DuZmJtiiPxWi7u2aRBYaAqmwrKILmIaY', '2019-05-21 18:03:23', '2019-05-21 18:03:23'),
	(366, 2, 'P2ZnyVxmHwo6W1HJoyjWLP1l4LQke7R3', '2019-05-21 18:04:17', '2019-05-21 18:04:17'),
	(367, 1, 'QuC9ami1PMkiZESXF2Jc5O8jxkuqelmZ', '2019-05-21 18:06:04', '2019-05-21 18:06:04'),
	(368, 1, 'JEVScaiO0WgghWIbovJWZQbvMiuGkdtL', '2019-05-21 18:08:28', '2019-05-21 18:08:28'),
	(369, 1, 'Y5PHPmdiC96ImaPAD5OWRUg0uTx9204D', '2019-05-21 18:08:28', '2019-05-21 18:08:28'),
	(370, 2, 'qXbYszyA0gZhOwdguNWjkeiyGWuNJieT', '2019-05-21 18:16:53', '2019-05-21 18:16:53'),
	(371, 2, 'wXbb1cnF2CLYykbTd0P6Jf3QvIMVIFNi', '2019-05-21 18:23:36', '2019-05-21 18:23:36'),
	(372, 2, '1EZoAmZpLtwasoFBZbySUWzpZWrREUC2', '2019-05-21 18:24:08', '2019-05-21 18:24:08'),
	(373, 1, '7mp7V6nTr7D1FJgTABWHTk6Wo4ybwDc0', '2019-05-21 18:27:34', '2019-05-21 18:27:34'),
	(374, 1, 'Fj8ClGvbm63UvmP641dh12qyLoMMy98a', '2019-05-21 18:27:34', '2019-05-21 18:27:34'),
	(375, 1, 'pfQ84mCbmg9pINygZ7FQK3O0n11IhyD6', '2019-05-21 18:27:34', '2019-05-21 18:27:34'),
	(376, 1, '1kMqO3IJayBgUcKjKFe19KNuz8ufqH1n', '2019-05-21 18:27:34', '2019-05-21 18:27:34'),
	(377, 2, 'HAovD7rRfLycINbMtaFeRoIv3xLh5fz1', '2019-05-21 18:30:29', '2019-05-21 18:30:29'),
	(378, 2, 'fItV4p8KYvd9URpSnUbOB3S5z6UdcQBe', '2019-05-21 18:30:29', '2019-05-21 18:30:29'),
	(379, 2, '2QBjpnyUXiggbqlTi9yZgP15XiYR9yhn', '2019-05-21 18:31:10', '2019-05-21 18:31:10'),
	(380, 2, 'CAnWaAKPmcFb31f81U22esh6JE15tHcm', '2019-05-21 18:31:12', '2019-05-21 18:31:12'),
	(381, 2, 'bQfSlzH1wc4Szfk6xGeuo1ACn0hO6GSR', '2019-05-21 18:31:13', '2019-05-21 18:31:13'),
	(382, 2, 'qX3iLSF7lNoyd2SdYW6DpskHR8xQxi89', '2019-05-21 18:31:37', '2019-05-21 18:31:37'),
	(383, 2, 'njtpa8N58eLD1SoE6eBDObyFWLXqAzjd', '2019-05-21 18:34:58', '2019-05-21 18:34:58'),
	(384, 2, 'yBf2FIqWzZvY3FFlvCNnIJkvUMAh1Ccy', '2019-05-21 18:36:00', '2019-05-21 18:36:00'),
	(385, 2, 'TmSQCtxxfW1OFfWqb7hkZVYrCt6O7hBK', '2019-05-21 18:42:40', '2019-05-21 18:42:40'),
	(386, 2, '5y9hb26SUegTBlAzBvNOblJSIt6fmpAH', '2019-05-21 18:42:57', '2019-05-21 18:42:57'),
	(387, 2, 'ptPnDzV6DGCfBuHKIwyynf5XcY7RLDOz', '2019-05-21 18:43:16', '2019-05-21 18:43:16'),
	(388, 2, '85aD1P6FNbSgHT7ofxe9E1Yd1t2zwSVF', '2019-05-21 18:43:41', '2019-05-21 18:43:41'),
	(389, 2, 'p80sn068nXTLEo54y2ia3uIfgtOCZG54', '2019-05-21 18:45:35', '2019-05-21 18:45:35'),
	(390, 2, 'uipi1ARg8FpkTfPmGN24fa4tkDT9qjlR', '2019-05-21 18:45:36', '2019-05-21 18:45:36'),
	(391, 2, 'g7aptjd2X6sKpajYkT0nnvzrrz4BGmyM', '2019-05-21 18:46:21', '2019-05-21 18:46:21'),
	(392, 1, 'UthMkMm0NeEa66KnM9v4SSWTCn7mjbER', '2019-05-21 18:59:01', '2019-05-21 18:59:01'),
	(393, 1, 'R1trtxlJ8JyMZWgGkoWKhS2lZKHSnfd3', '2019-05-21 18:59:01', '2019-05-21 18:59:01'),
	(394, 2, 'KEjrTgruFAYdY5riXzpi2RfAHebLj1E6', '2019-05-21 18:59:40', '2019-05-21 18:59:40'),
	(395, 2, 'DD9k05qF6CFCjydW5fVitdreUt5SledG', '2019-05-21 18:59:40', '2019-05-21 18:59:40'),
	(396, 2, '13alKkwtEEqnaPT6kZNQFSf51y7FmFGw', '2019-05-21 19:00:29', '2019-05-21 19:00:29'),
	(397, 2, 'LUnHZXteAnYtg7qDnvNXWxRPbR2G4Vkx', '2019-05-21 19:00:30', '2019-05-21 19:00:30'),
	(398, 2, 'dRvuNrabsuJerGcMnAlohFXddPizTN32', '2019-05-21 19:16:19', '2019-05-21 19:16:19'),
	(399, 2, 'oI1sTSkorWOPsGWbk351Io0TTmpN1Xfp', '2019-05-21 19:17:50', '2019-05-21 19:17:50'),
	(400, 2, 'PRNaHg06e0lwzRttWVjBw1qG4Ki3Qpen', '2019-05-21 19:18:14', '2019-05-21 19:18:14'),
	(401, 2, '5DKaJfZ025FryyGDHgkXnKScUxojnyjj', '2019-05-21 19:18:17', '2019-05-21 19:18:17'),
	(402, 2, 'VvHg3w7IFCbJrq3sCVy1Z07LncR5cSKv', '2019-05-21 19:18:28', '2019-05-21 19:18:28'),
	(403, 2, 'rryrJikprrfTn7shdDiHNfk5GNG7ieyr', '2019-05-21 19:25:21', '2019-05-21 19:25:21'),
	(404, 2, 'jVrizMIVU0JYuJkMlwvXUUqULI1c6TPM', '2019-05-21 19:25:21', '2019-05-21 19:25:21'),
	(405, 2, 'Kw4dILjAbRr40lXdHopn1addc2VGaN2F', '2019-05-21 19:25:22', '2019-05-21 19:25:22'),
	(406, 2, 'oYCfNnRZjc45nBU3pnrElXERpDVoogIO', '2019-05-21 19:25:22', '2019-05-21 19:25:22'),
	(407, 2, '8vFss3EogQaidopUSdB3ZnekGn45UpHy', '2019-05-21 19:25:22', '2019-05-21 19:25:22'),
	(408, 2, 'swvnWRnqs79viTG6uICi6XJJ3njEeLml', '2019-05-21 19:25:22', '2019-05-21 19:25:22'),
	(409, 2, 'w6bQQnjeYzt4knSy0PYpYscryvpw20bE', '2019-05-21 19:25:22', '2019-05-21 19:25:22'),
	(410, 2, 'R5WZxep6GfQ8RPE2KOFIjQyx6Mk753Qa', '2019-05-21 19:25:22', '2019-05-21 19:25:22'),
	(411, 2, 'KOnkjkVJ9gguXD15KIKxucWCHWrdmFya', '2019-05-21 19:25:22', '2019-05-21 19:25:22'),
	(412, 2, '7YL1elT7eZ9DT7s9bvJMJjIfFuPyeb23', '2019-05-21 19:25:23', '2019-05-21 19:25:23'),
	(413, 2, 'H7bVIke4ZEnM7MBTL0BLUapw43j64pJT', '2019-05-21 19:25:23', '2019-05-21 19:25:23'),
	(414, 2, 'Ag0qj6k2hdzvGBjWBjMltGdPmBrULxfQ', '2019-05-21 19:25:23', '2019-05-21 19:25:23'),
	(415, 2, 'u3zeJuH21iBft7nXiVsHEHmK4PHcWOt6', '2019-05-21 19:25:23', '2019-05-21 19:25:23'),
	(416, 2, 'dkayCTs8e2ODNr6LB8DTFXn8NjmkV3MQ', '2019-05-21 19:25:23', '2019-05-21 19:25:23'),
	(417, 2, 'pNUvU3sgiiR9fXCbELk650vjke8MH1VD', '2019-05-21 19:25:23', '2019-05-21 19:25:23'),
	(418, 2, 'fQaA4IK9UPi0GC78MD8bk5Q0ku0jaGPU', '2019-05-21 19:25:24', '2019-05-21 19:25:24'),
	(419, 2, 'Da1MxwEgZEA53iIrIj8K4JIoVq6LHzJj', '2019-05-21 19:25:24', '2019-05-21 19:25:24'),
	(420, 2, 'C2OJf8f4v8cDQhFrtunYxoaB1DRnZkZe', '2019-05-21 19:25:24', '2019-05-21 19:25:24'),
	(421, 2, 'hgMuUEoU5dUlUacZlqHVse1hNsZJ1dD9', '2019-05-22 08:55:28', '2019-05-22 08:55:28'),
	(422, 2, 'lPFPnokQXiUPK2xezGlrxeC8b6ki3383', '2019-05-22 08:56:08', '2019-05-22 08:56:08'),
	(423, 2, 'WDsqiueFlBlZgfwcIOed3FYkd21c8cbC', '2019-05-22 09:08:25', '2019-05-22 09:08:25'),
	(424, 2, 't68vetQlJSEXTRLM2vPDPnvRrYY7YuDp', '2019-05-22 09:08:25', '2019-05-22 09:08:25'),
	(425, 2, 'gzAaLZzAA5W5HEviFSNKO7HASkHZqkQO', '2019-05-22 09:08:34', '2019-05-22 09:08:34'),
	(426, 2, '76Mfs4JowbOUiyxXPO79OM5Y4eHUzbub', '2019-05-22 09:08:38', '2019-05-22 09:08:38'),
	(427, 2, 'maVncfMyHvjzSOAo8xaWjWmuLkx7aJz0', '2019-05-22 09:08:41', '2019-05-22 09:08:41'),
	(428, 2, 'LORYGW7ujDpb4SCw0HxAbPOptOMx3We1', '2019-05-22 09:08:54', '2019-05-22 09:08:54'),
	(429, 2, '25GkskNzzX6ip4fSmLQpFtjEGgVaOCm0', '2019-05-22 09:09:00', '2019-05-22 09:09:00'),
	(430, 2, 'weunrbNAgywJuRHfDncrHFpO71z4XEw7', '2019-05-22 09:09:40', '2019-05-22 09:09:40'),
	(431, 2, '0KMhj1ZuF7kjOAyKezrGdCcSYKMmsRwY', '2019-05-22 09:10:05', '2019-05-22 09:10:05'),
	(432, 2, 'un5rCbrpzaAJOMF3FfXgLX49P9eaTk6D', '2019-05-22 09:10:06', '2019-05-22 09:10:06'),
	(433, 2, 'IhKEPh12EeezqmUObG0GjrySsQJBaRar', '2019-05-22 09:12:13', '2019-05-22 09:12:13'),
	(434, 2, 'W1cf3nkhL0GRf8cf06kWjZubu0mfZCPn', '2019-05-22 09:12:41', '2019-05-22 09:12:41'),
	(435, 2, 'FgEznRH03B4XrZo89dqaAajgcAEFheQJ', '2019-05-22 09:15:00', '2019-05-22 09:15:00'),
	(436, 2, 'laUUght7Cj5zcbw2G0NOy5ksjCgxSdVE', '2019-05-22 09:15:00', '2019-05-22 09:15:00'),
	(437, 2, 'gYjKlg2vQ2N5tPKf6TxBCD36Gz6NJRAu', '2019-05-22 09:15:04', '2019-05-22 09:15:04'),
	(438, 2, 'vis0c7zgKBRe9J7dGVwKOShlSUjxsZaH', '2019-05-22 09:15:04', '2019-05-22 09:15:04'),
	(439, 2, 'sXWFMdmianjtG3HOZDhmkcaaaTkaIiIO', '2019-05-22 09:19:09', '2019-05-22 09:19:09'),
	(440, 2, 'mb6cMXXX8FaBplbcLLUb147B65BmFDVb', '2019-05-22 09:19:09', '2019-05-22 09:19:09'),
	(441, 2, 'qmips0CMauhfz9HkTZEAH0hRbSTKtdBA', '2019-05-22 09:19:09', '2019-05-22 09:19:09'),
	(442, 2, 'venOO0Fdhd3R6Vm5SHcyUibnsK7zTj6G', '2019-05-22 09:19:09', '2019-05-22 09:19:09'),
	(443, 2, 'Y9m2CzXLAThUSdnSmmDUTqxTcamFu6Ul', '2019-05-22 09:19:09', '2019-05-22 09:19:09'),
	(444, 2, 'POKLIdATEAYSKdMJMTBNzqyjdmOZDEvo', '2019-05-22 09:19:10', '2019-05-22 09:19:10'),
	(445, 2, 'vzoGF04S6ZBcz6ELcePU3BJrlgJHYxWo', '2019-05-22 09:19:10', '2019-05-22 09:19:10'),
	(446, 2, 't7tH2NxgSFmpMkZtBGCL79R5uGO6Y9z5', '2019-05-22 09:19:10', '2019-05-22 09:19:10'),
	(447, 2, 'kRToLPdRNVjAaEm8VB2pyqgEcqLM0is1', '2019-05-22 09:21:13', '2019-05-22 09:21:13'),
	(448, 2, 'C7TwiYccEqAqhTfKHr1WITdOHfMpf9jp', '2019-05-22 09:21:13', '2019-05-22 09:21:13'),
	(449, 2, 'LdqVaSjzLfoEuVfOO35sbC0YmQTtjThr', '2019-05-22 09:21:13', '2019-05-22 09:21:13'),
	(450, 2, 'B3Au5bRvt5VcNGLW6WrXJthFDnCy5jtF', '2019-05-22 09:21:13', '2019-05-22 09:21:13'),
	(451, 2, 'iTNYS0k6SuFV81Tw9F4YaDItWdUMmT0q', '2019-05-22 09:21:13', '2019-05-22 09:21:13'),
	(452, 2, 'rNxIOJGnruwuNw8aq51uEKOC835Fh500', '2019-05-22 09:21:13', '2019-05-22 09:21:13'),
	(453, 2, '2zwZcI2Ma0jJgaS2sE4vb9T3TnycSjLF', '2019-05-22 09:21:14', '2019-05-22 09:21:14'),
	(454, 2, 'C467o5vuuffeOxQtmvNyuPlKbxkP6qab', '2019-05-22 09:21:14', '2019-05-22 09:21:14'),
	(455, 2, 'wqYnVr6mq67edUeY5EwJOL5ObdwYQBWn', '2019-05-22 09:21:14', '2019-05-22 09:21:14'),
	(456, 2, '2oBMsJkdlwXX9JkkxjIeJ2iBSCObGtN9', '2019-05-22 09:26:30', '2019-05-22 09:26:30'),
	(457, 2, '9GNhcQkfu1xgvfaGeWkn4rXzKzGtJRz2', '2019-05-22 09:30:56', '2019-05-22 09:30:56'),
	(458, 2, 'GMCxgTzcCgPYfCfxU5R9wLmm5HFCbej7', '2019-05-22 09:30:57', '2019-05-22 09:30:57'),
	(459, 2, 'nEEcNN9JO4zcPse7s3g9enFpWfRWklzp', '2019-05-22 09:36:29', '2019-05-22 09:36:29'),
	(460, 2, 'pvWXudT1nLmtkI11cbGvqmsjTIVAbmA5', '2019-05-22 09:36:30', '2019-05-22 09:36:30'),
	(461, 1, 'Jh50nELpqMWxydqbxy5vIhyeta36aKcO', '2019-05-22 10:18:57', '2019-05-22 10:18:57'),
	(462, 1, 'BkEIwv1Xvin5L6kVZILceEOGrc96SzIK', '2019-05-22 10:18:57', '2019-05-22 10:18:57'),
	(463, 1, 'Aacyer7RYSzpd6RVnBlrkgjtDZetvPwb', '2019-05-22 10:18:57', '2019-05-22 10:18:57'),
	(464, 1, 'rPp3OmjR4uUtGwNsEHH4OfdvacT6fjll', '2019-05-22 10:18:57', '2019-05-22 10:18:57'),
	(465, 1, 'r3APMnXdKnKjAG1VrNoDgJaGhmOXmwqt', '2019-05-22 10:18:57', '2019-05-22 10:18:57'),
	(466, 1, 'hslH6Dq1FUOGf9WVmByndZyk6HIWFN4T', '2019-05-22 10:18:58', '2019-05-22 10:18:58'),
	(467, 1, 'J26AHGmORD3yavi9BX1xqNjPqLRD05iD', '2019-05-22 10:18:59', '2019-05-22 10:18:59'),
	(468, 1, 'CbyI26apxULcueD8SbkGIO9npWkjalcd', '2019-05-22 10:18:59', '2019-05-22 10:18:59'),
	(469, 1, 'UZDk5OeNg4CHD2VFC6OMNGzyBGFhN9iB', '2019-05-22 10:19:42', '2019-05-22 10:19:42'),
	(470, 1, 'kTaGZ2S49K27jcgNdCbOcJ2ZkE3LzcIu', '2019-05-22 10:19:42', '2019-05-22 10:19:42'),
	(471, 1, '7OYJ8imOeYownRuVsgT42fP6wEjyGW9P', '2019-05-22 10:19:49', '2019-05-22 10:19:49'),
	(472, 1, 'HGsvg58lAQDfazUL3G9KRiGLkcxIi1SC', '2019-05-22 10:19:49', '2019-05-22 10:19:49'),
	(473, 1, 'Op8vhRo1CCxa3mFpvkH6hV3QhTdZaB8d', '2019-05-22 10:22:36', '2019-05-22 10:22:36'),
	(474, 1, 'bUk1k8ZlS0vjwwyNnEAHsLs9VjhQEQ73', '2019-05-22 10:22:39', '2019-05-22 10:22:39'),
	(475, 1, 'M54XreGcaQoYPqMIWETlggm51ghvjecd', '2019-05-22 10:22:55', '2019-05-22 10:22:55'),
	(476, 1, 'uQB5NpiwVV1NnFMmEzgPR4Hq8GbPEDUr', '2019-05-22 10:23:00', '2019-05-22 10:23:00'),
	(477, 1, '6XTpneb2YSfIRTmaKQsm3PCIlCuq0A0o', '2019-05-22 10:23:09', '2019-05-22 10:23:09'),
	(478, 1, 'cn6nRHi3HAttuupIHwqI2RQgpQl8apqS', '2019-05-22 10:23:20', '2019-05-22 10:23:20'),
	(479, 1, 'YlWAd7KQjaJqvHTeXSmh03L7yQcy8TFl', '2019-05-22 10:23:24', '2019-05-22 10:23:24'),
	(480, 1, 'CkJ5eEr8NAQWPMcF6dyJwceyb1uai62b', '2019-05-22 10:23:28', '2019-05-22 10:23:28'),
	(481, 1, 'O3eMCTFCb347A6O9noJ1uAhf4RfB4o1M', '2019-05-22 10:23:32', '2019-05-22 10:23:32'),
	(482, 1, 'tnSB8Rc2EX9D86jp9i52Kvfl7amJSgt4', '2019-05-22 10:23:52', '2019-05-22 10:23:52'),
	(483, 1, 'zMouqSBQFSILFAZKujygbSxYmOx3FbQD', '2019-05-22 10:23:54', '2019-05-22 10:23:54'),
	(484, 1, 'bIVqW8IbRTML9vGhM7bmvzcj7HfVJhav', '2019-05-22 10:24:22', '2019-05-22 10:24:22'),
	(485, 1, '95zErRJSi06euSlBBCnJhW7t1ccyHc9P', '2019-05-22 10:24:31', '2019-05-22 10:24:31'),
	(486, 1, '6eFnFgZusw2GIlz1qydPszlkLtaVNya9', '2019-05-22 10:24:31', '2019-05-22 10:24:31'),
	(487, 1, '1JnGVciaS6WirQn9fVkIFT40zXubVoGS', '2019-05-22 10:24:35', '2019-05-22 10:24:35'),
	(488, 1, 'GoAtQlRnTqC5e63UsEeZ91drXms0DnG6', '2019-05-22 10:24:35', '2019-05-22 10:24:35'),
	(489, 1, 'P6xtvYVKAJMcBkWALCNpcxWDNO1cFgtJ', '2019-05-22 10:24:57', '2019-05-22 10:24:57'),
	(490, 1, 'IkyWIvJ34XvVrUKlVXJGztJkn8GBigZ1', '2019-05-22 10:25:18', '2019-05-22 10:25:18'),
	(491, 1, 'pFDFDM5q4ZEFOkNMQyuDYnRUvjkAiRDj', '2019-05-22 10:25:18', '2019-05-22 10:25:18'),
	(492, 1, '5RpPD0Dat8mwWvQpohpwYTjln13SrXKI', '2019-05-22 10:25:21', '2019-05-22 10:25:21'),
	(493, 1, 'MqapC6fZ0q7pix7gfe5uDXVOtpDY7oE8', '2019-05-22 10:25:22', '2019-05-22 10:25:22'),
	(494, 1, 'IkxEliLD28cLEBAGKsg8IEjX0xqnK44H', '2019-05-22 10:25:24', '2019-05-22 10:25:24'),
	(495, 1, 'l4aUZdfqiA6gZswsloAlt3KdCclJ340R', '2019-05-22 10:25:25', '2019-05-22 10:25:25'),
	(496, 1, 'u7t2kwkt5b4RuWGPGF1By0NYHZYSIzWA', '2019-05-22 10:25:32', '2019-05-22 10:25:32'),
	(497, 1, 'RSobaK5vCKrdVgIE9EyPWNqSvGOMoo8B', '2019-05-22 10:25:34', '2019-05-22 10:25:34'),
	(498, 1, 'GH9PFCmJEoof22PO2XN3eOlyePLOmUSi', '2019-05-22 10:25:35', '2019-05-22 10:25:35'),
	(499, 1, 'HD2kl4k8oe9xtvTJMwadQocFcQ74HAwk', '2019-05-22 10:25:38', '2019-05-22 10:25:38'),
	(500, 1, 'uZxRuzy9GCA85aBF4xrlWYPKWtsqmV1R', '2019-05-22 10:25:38', '2019-05-22 10:25:38'),
	(501, 1, 'jCWocF4DIB1racPcNTHKVd329IvTh81K', '2019-05-22 10:25:40', '2019-05-22 10:25:40'),
	(502, 1, 'lhNxIikqpdTc0nBlKbknCQK57lhJkasZ', '2019-05-22 10:25:41', '2019-05-22 10:25:41'),
	(503, 1, 'zu0tnU6Cp4aYH09FhvMQTQZcpgMy3n90', '2019-05-22 10:25:47', '2019-05-22 10:25:47'),
	(504, 1, 'TP1znxWxPxs6ZcxNOlFNCFdrLPHzr3Vu', '2019-05-22 10:25:51', '2019-05-22 10:25:51'),
	(505, 2, 'q7C1WdPt3QTsAq1ScR89Dlx25HKE4GR4', '2019-05-22 10:32:01', '2019-05-22 10:32:01'),
	(506, 2, 'D07KSDL1DlMccNIu4W07vHVVlPXaY2ll', '2019-05-22 10:32:05', '2019-05-22 10:32:05'),
	(507, 2, '2790KEzN8OgQZhXl7QH9okrbnyBFB3Gd', '2019-05-22 10:32:05', '2019-05-22 10:32:05'),
	(508, 1, 'A6U1w477cZpMluLMOmiezrKmjHAM18KO', '2019-05-22 10:34:05', '2019-05-22 10:34:05'),
	(509, 2, 'BGkASGk4AY3JSJmO8cGoe2p22oEBNbx9', '2019-05-22 10:38:05', '2019-05-22 10:38:05'),
	(510, 2, 'MpL2QWeSv3kbwFlmrgFIOE3NrkQ7m2MX', '2019-05-22 10:38:08', '2019-05-22 10:38:08'),
	(511, 2, 'PePnxiXt2VBHSWxocaffLlKuEGejABAL', '2019-05-22 10:38:08', '2019-05-22 10:38:08'),
	(512, 2, 'wbKix2DFlVRVi2kraWoamz0aDcyNwfO9', '2019-05-22 10:40:01', '2019-05-22 10:40:01'),
	(513, 1, 'BWB91l1OmSiAn4Y6P69y6FhnnAW5b2Uq', '2019-05-22 10:40:46', '2019-05-22 10:40:46'),
	(514, 1, 'uE4whvsSg5lNsIXVuuk2J1Y4bqf0XGa2', '2019-05-22 10:41:02', '2019-05-22 10:41:02'),
	(515, 1, 'B5UKSZDhmG5kTzNcAfRxO3hDBXikAlFd', '2019-05-22 10:42:34', '2019-05-22 10:42:34'),
	(516, 1, 'gaYDWgArOe5Is9xhOe6rxtaoBb2tdUHH', '2019-05-22 10:42:44', '2019-05-22 10:42:44'),
	(517, 1, 'GX7gft0TRM8YYVZ4EWixNxqw5nW8voIG', '2019-05-22 10:42:44', '2019-05-22 10:42:44'),
	(518, 1, 'kBZOpye3148BqAckqQ7wdMYNnwj5zwfH', '2019-05-22 10:42:44', '2019-05-22 10:42:44'),
	(519, 1, '6rHcZFGxR2wA27Lu0i23ePgaCzslNKOh', '2019-05-22 10:42:44', '2019-05-22 10:42:44'),
	(520, 1, 'OYINiYKp31Oc056n4tKC92mXNGAKoOuv', '2019-05-22 10:42:45', '2019-05-22 10:42:45'),
	(521, 1, 'DxUoIfzoc3HB8qFAAGuu8Wphyfwhbker', '2019-05-22 10:42:45', '2019-05-22 10:42:45'),
	(522, 1, 'JBO7JdRETOPfhDpEiMRq63MVLLjtJ8sD', '2019-05-22 10:42:45', '2019-05-22 10:42:45'),
	(523, 1, '6ESULC9HiuFvWJU6BRv0cE71y8FGBzDG', '2019-05-22 10:42:46', '2019-05-22 10:42:46'),
	(524, 2, '0WoXnOlVKQGS67UgM0dIb38QdxfCQ2jv', '2019-05-22 10:43:54', '2019-05-22 10:43:54'),
	(525, 2, 'sIMNJ8swvkDDxYArMlmF1Ln78ct2F7Jv', '2019-05-22 10:44:10', '2019-05-22 10:44:10'),
	(526, 2, 'TpQ6u9n5Z0zr7EjSMpuT8zJTBCcvxpqk', '2019-05-22 10:45:04', '2019-05-22 10:45:04'),
	(527, 1, 'm0z66eaUJMP3CnAgaLXxL3XuXB0wa0Nc', '2019-05-22 10:47:51', '2019-05-22 10:47:51'),
	(528, 1, 'YyngBPvRV60yhJgu757lEmGvkyHhdBSn', '2019-05-22 10:47:52', '2019-05-22 10:47:52'),
	(529, 2, '01rbXbtRL8D0LfayCX7b2gIiojs73N3L', '2019-05-22 10:49:04', '2019-05-22 10:49:04'),
	(530, 2, 'KkCvSs4JDLY7t2NIP5obxLfgTvEvTFiZ', '2019-05-22 10:49:41', '2019-05-22 10:49:41'),
	(531, 2, '64B8mYXy2sEHiPKJwEOT7d2p2XQT5v8i', '2019-05-22 10:49:53', '2019-05-22 10:49:53'),
	(532, 2, 'fuJkKk9okMg7FZ6dcOU65cvbmvS7Lcpf', '2019-05-22 10:49:53', '2019-05-22 10:49:53'),
	(533, 2, 'aVRPunU4bhMA1W1HwD0j4lJeTX8VoLL2', '2019-05-22 10:50:54', '2019-05-22 10:50:54'),
	(534, 2, 'aXuvwbbTCUnC4Q0bCz9MLlzaQdmDbbK1', '2019-05-22 10:51:20', '2019-05-22 10:51:20'),
	(535, 2, 'Ia5ksELBT6n5pHw4ygZrNUQrVJ04Po9Z', '2019-05-22 10:51:21', '2019-05-22 10:51:21'),
	(536, 1, 'cQPBa2wQzAealL5fi2toaNMmKPkvxfA2', '2019-05-22 10:53:05', '2019-05-22 10:53:05'),
	(537, 1, '7RPe8tYsFrUiKwKIa6eePFqnPp3eVp9a', '2019-05-22 10:53:06', '2019-05-22 10:53:06'),
	(538, 1, 'i4unAqpYI3L0YnhW1UDl8xMShPDfYNfd', '2019-05-22 10:53:06', '2019-05-22 10:53:06'),
	(539, 1, 'rTWw6ZF37FqSpjLxNK1FKcsRjIys3jcg', '2019-05-22 10:53:06', '2019-05-22 10:53:06'),
	(540, 2, 'qWCoSE409rGJGXrOKS6URpI1VDU1Hz6u', '2019-05-22 10:53:41', '2019-05-22 10:53:41'),
	(541, 2, '0PmEKAWFwkaN77NvSNhDOvWHSmgim7N3', '2019-05-22 10:53:41', '2019-05-22 10:53:41'),
	(542, 2, 'i0saRO5XO54JysUn9G7xzyoXGhO1zkPm', '2019-05-22 10:53:41', '2019-05-22 10:53:41'),
	(543, 2, 'u3DXtB7LJCNkh1CvbMBLwZiISNi3KvpY', '2019-05-22 10:53:42', '2019-05-22 10:53:42'),
	(544, 2, 'cFXTgu13H92AR3cIWhYxs7rjVJx0UHfX', '2019-05-22 10:54:28', '2019-05-22 10:54:28'),
	(545, 2, 'GZhrIRhb7ch2JZOyQHdzsbHB3XmeEFNe', '2019-05-22 10:54:28', '2019-05-22 10:54:28'),
	(546, 2, 'nP4v7k5cBWE9bdx8VVc2nCs2dY3qXW2i', '2019-05-22 10:54:55', '2019-05-22 10:54:55'),
	(547, 2, 'a78WazDQdOWrBqb8Qwr6iWCXoR4W8iNz', '2019-05-22 10:55:46', '2019-05-22 10:55:46'),
	(548, 2, 'xZxNUFDgqaYsv8Jobg9r2LxNyG4SVcTs', '2019-05-22 10:55:49', '2019-05-22 10:55:49'),
	(549, 2, 'VsRMcoj1VGyA8rnTwrJ0CQJH8TavJPxe', '2019-05-22 10:55:50', '2019-05-22 10:55:50'),
	(550, 2, 'W85Yltvc1Hug2FZ4viwkTbXF7XmCIjVb', '2019-05-22 10:56:47', '2019-05-22 10:56:47'),
	(551, 2, 'AtiOtNY4i5jOJe3gRv5f3nhkwDyc0nFd', '2019-05-22 10:56:47', '2019-05-22 10:56:47'),
	(552, 2, 'JiUlvijsP3HaJuiKkCLZ1Lur9uOPM38I', '2019-05-22 10:58:06', '2019-05-22 10:58:06'),
	(553, 2, 'YHNKPXCgPNKR7NKrJmBuRWxbbmDaYUyn', '2019-05-22 10:58:06', '2019-05-22 10:58:06'),
	(554, 2, '0sxyAqpScW9fkiB8CeRbypjtV1zCoyiF', '2019-05-22 10:58:10', '2019-05-22 10:58:10'),
	(555, 2, 'fdmxiiGdZlL0g3RDA4eVmJn5IIS9xq30', '2019-05-22 10:58:10', '2019-05-22 10:58:10'),
	(556, 1, 'PXOTilPs3EEQXFHuZsLq7Zj0NtFl3lqU', '2019-05-22 10:58:51', '2019-05-22 10:58:51'),
	(557, 1, 'G9h0OcOZaMUBA5S12eOmDxtWqRET0qDy', '2019-05-22 10:58:52', '2019-05-22 10:58:52'),
	(558, 2, '25CUUARLjOFFb8cAbCCmoFPEcyEKahY3', '2019-05-22 10:58:57', '2019-05-22 10:58:57'),
	(559, 2, 'Na4vZfaOVKRaMMMimE6mndXsGlCAIyHV', '2019-05-22 10:58:58', '2019-05-22 10:58:58'),
	(560, 2, '2IuViiuj4bSsjpzDToaYRi1CsJ7g7mno', '2019-05-22 10:58:59', '2019-05-22 10:58:59'),
	(561, 2, 'z00NG9peBo7eNZYj3ZNMLfWq3U5c0dtm', '2019-05-22 10:58:59', '2019-05-22 10:58:59'),
	(562, 2, 'aaP821CUfiaOn5It0jODBaHKYBDp2CQW', '2019-05-22 10:58:59', '2019-05-22 10:58:59'),
	(563, 2, 'QKRFJjhArfG8l8O04GdyjHRdcWEcAl6X', '2019-05-22 10:59:00', '2019-05-22 10:59:00'),
	(564, 1, 'A9Qeept7ayqW1EnEE9oSU54ZqbRTIjuB', '2019-05-22 10:59:20', '2019-05-22 10:59:20'),
	(565, 2, '4nQx5BHmXE9LbecvitdJtZjyMlPRJMA9', '2019-05-22 10:59:30', '2019-05-22 10:59:30'),
	(566, 2, 'pnYfCoHZyww6yVtAI5XBUDXvi2wMiKnq', '2019-05-22 10:59:31', '2019-05-22 10:59:31'),
	(567, 2, 'B0D2LtJ72zlxMam2ES5i2kS6DNg51CPr', '2019-05-22 10:59:32', '2019-05-22 10:59:32'),
	(568, 2, 'rnfEiMGIniErFdhpa1dmEOZ6QUJ6JHH0', '2019-05-22 10:59:32', '2019-05-22 10:59:32'),
	(569, 2, 'TSrpmMwCZOCTlSAyio1a90pmrODF6sJH', '2019-05-22 10:59:44', '2019-05-22 10:59:44'),
	(570, 2, 'tGtaiMectL2YbtqwufNITM7tfV8SvwFK', '2019-05-22 10:59:46', '2019-05-22 10:59:46'),
	(571, 2, '4DlmQZIeTK7ihvKkAtlJPsFt9JrOXyVy', '2019-05-22 10:59:46', '2019-05-22 10:59:46'),
	(572, 2, 'pYG9UPSV5d4MzdwjKF0GtMN4gY3cfiTY', '2019-05-22 10:59:47', '2019-05-22 10:59:47'),
	(573, 2, 'kWEXGEwq53dfVzMHVVHkjGu9libtq3Jb', '2019-05-22 10:59:47', '2019-05-22 10:59:47'),
	(574, 2, 'HxQTLH3YyvXL3kMRJdkAPBCiANcLJ3aA', '2019-05-22 10:59:47', '2019-05-22 10:59:47'),
	(575, 2, 'c2ctEfzZPdPdtcWxvfXEqD8A5TixG2Eb', '2019-05-22 10:59:50', '2019-05-22 10:59:50'),
	(576, 2, 'X9TnuMaRkQCu6Yt5dSr2sVqY3NHFvCfX', '2019-05-22 11:00:20', '2019-05-22 11:00:20'),
	(577, 2, '9cnODNykVdhymlyBPsk57eUaWp2VriOZ', '2019-05-22 11:00:22', '2019-05-22 11:00:22'),
	(578, 2, 'HgIRMhDuQ9vsXzdfRShHrlyhQZm1JkLU', '2019-05-22 11:00:23', '2019-05-22 11:00:23'),
	(579, 2, 'hYUS2HZAVn30z96Xkce8wImxBHaDuHQa', '2019-05-22 11:00:23', '2019-05-22 11:00:23'),
	(580, 2, 'BwkE57lXFC40sPimke5OwCbI5SToi6rq', '2019-05-22 11:00:27', '2019-05-22 11:00:27'),
	(581, 2, 'rElqBRfzadISzsjsshuTmdyoRoe7IeXJ', '2019-05-22 11:00:27', '2019-05-22 11:00:27'),
	(582, 2, 'ifItQrazQPAbUFOz41FXGfnFH2oKgvyJ', '2019-05-22 11:00:27', '2019-05-22 11:00:27'),
	(583, 2, '9K43BpuHcjHYmDJs0Ms4b5BCNxXT25iH', '2019-05-22 11:00:28', '2019-05-22 11:00:28'),
	(584, 2, 'fZpxpguKSKpCPg5BpoPWmYHuUIs1k6uz', '2019-05-22 11:00:32', '2019-05-22 11:00:32'),
	(585, 2, 'hLNyDo0tVtiE1GfKvWC4lPzcnV6rvAla', '2019-05-22 11:00:33', '2019-05-22 11:00:33'),
	(586, 2, 'GijYyOmdnWw6JJ3fyBFVWVH07XeQ6vWs', '2019-05-22 11:00:36', '2019-05-22 11:00:36'),
	(587, 2, 'GB4y85ibK1QWLCFftU2VbvVU49T2tgBc', '2019-05-22 11:00:40', '2019-05-22 11:00:40'),
	(588, 2, 'MHzV95lYUc5405T3jWIfxHdJXBe4Bv2i', '2019-05-22 11:00:41', '2019-05-22 11:00:41'),
	(589, 2, 'Gy9THoAJo2Y0m5cWxktIES8MF5aT7pnV', '2019-05-22 11:00:48', '2019-05-22 11:00:48'),
	(590, 2, 'TSonKfB0NPs5FgyoWUfvXWwV18uc3GNa', '2019-05-22 11:00:49', '2019-05-22 11:00:49'),
	(591, 2, 'pcrSHq4ZSDjInzFOZ63MpLkzhVsNThvO', '2019-05-22 11:01:09', '2019-05-22 11:01:09'),
	(592, 2, 'xBVXTqpSri0YoLmwETpLRkIkzuQr9WX4', '2019-05-22 11:01:10', '2019-05-22 11:01:10'),
	(593, 2, 'vbRC5dgLtC1R9W0o0ngc2AgsBCz1Tea9', '2019-05-22 11:02:11', '2019-05-22 11:02:11'),
	(594, 2, '7Ui0daLFtP4NXGdibD7m1zONzPyTOYIk', '2019-05-22 11:02:11', '2019-05-22 11:02:11'),
	(595, 2, '9psnwoH371vEhw4iDFgkQJ4JLMoG0umM', '2019-05-22 11:02:13', '2019-05-22 11:02:13'),
	(596, 2, 'Uhe8cV8wazmf1dGNJK0atHYuFjzRf60q', '2019-05-22 11:02:14', '2019-05-22 11:02:14'),
	(597, 2, 'CDkt4MGrmFtZiUY8wkItHwu9i6LYSjQQ', '2019-05-22 11:02:15', '2019-05-22 11:02:15'),
	(598, 2, 'nFVBsAhdPm45p3H50ByZiqC5uN3EQJVt', '2019-05-22 11:02:15', '2019-05-22 11:02:15'),
	(599, 2, 'Pjmc0whLo2IyMhgcY3D7cj5JL4tQmalD', '2019-05-22 11:03:35', '2019-05-22 11:03:35'),
	(600, 2, 'auUFlGE3fxwJdSt4g27D7IVlUxGKBf66', '2019-05-22 11:03:35', '2019-05-22 11:03:35'),
	(601, 2, 'QENRVSsJzOl3TQInc2vqArK0q60SSPoL', '2019-05-22 11:03:36', '2019-05-22 11:03:36'),
	(602, 2, 'oIIApmqHk9iWUk7VrG3wrcGL0Y4u3cyo', '2019-05-22 11:03:36', '2019-05-22 11:03:36'),
	(603, 1, 'aTXt2Zcd1I07LgTAj1wSGJ1J1djLatzd', '2019-05-22 11:04:41', '2019-05-22 11:04:41'),
	(604, 1, 'EHHaF6ZMOHE9SuEFq92Fpp0YdjVIUSVT', '2019-05-22 11:04:41', '2019-05-22 11:04:41'),
	(605, 1, 'DEv05D1Qc7XzggFO0bYDDRnDX9cW3HHz', '2019-05-22 11:04:43', '2019-05-22 11:04:43'),
	(606, 1, 'jNXA8WBZujyTxh0LrPvytsqWVpZ2YVR7', '2019-05-22 11:04:51', '2019-05-22 11:04:51'),
	(607, 1, 'U79GQTkYPsa8Wi9Bqr9g8Gy1gkeFzV1z', '2019-05-22 11:05:32', '2019-05-22 11:05:32'),
	(608, 1, '9JgyuxVMdSWzZ5h29oU0FUpBJDVeZ92o', '2019-05-22 11:05:40', '2019-05-22 11:05:40'),
	(609, 1, '9TbuBeJT0JL1zTwFLSRuuKkkYU4ppLIp', '2019-05-22 11:05:51', '2019-05-22 11:05:51'),
	(610, 1, '8kdsIj9PqUhFCryzQ9kqkL8L9C3Kbw5s', '2019-05-22 11:05:52', '2019-05-22 11:05:52'),
	(611, 1, 'lRt1ovYgv8Bnc3v8hjsMVYMRpVw7GXjh', '2019-05-22 11:08:19', '2019-05-22 11:08:19'),
	(612, 1, 'krY9IgYYYM2dsTOjw2QHVGv8jSbvV0X4', '2019-05-22 11:08:33', '2019-05-22 11:08:33'),
	(613, 1, '2l7KvSxvlBAc5PzUltrPGFF6Qh48Ho52', '2019-05-22 11:08:35', '2019-05-22 11:08:35'),
	(614, 1, 'hxddVdij35SHaukGeCt8pZkAewhFbWXE', '2019-05-22 11:11:30', '2019-05-22 11:11:30'),
	(615, 1, 'oDMhxMoLNj1uewNn2uwDn8nZ3YLrmLD3', '2019-05-22 11:11:30', '2019-05-22 11:11:30'),
	(616, 1, 'I2hImkuYF3RjaeZTpanfUJL2Vsq7jWPS', '2019-05-22 11:12:08', '2019-05-22 11:12:08'),
	(617, 1, 'ROPY896vaXrqswkPkq85rbREQ1fP1FUg', '2019-05-22 11:12:08', '2019-05-22 11:12:08'),
	(618, 1, 'v1ZBNyaAZLza2AX3mXOAkovhX7QdNurX', '2019-05-22 11:12:47', '2019-05-22 11:12:47'),
	(619, 1, 'dGG60zU1Hrn1VtsrJq2gSRaeouPKhCZj', '2019-05-22 11:12:47', '2019-05-22 11:12:47'),
	(620, 1, 'mB47pr8hMhR7WhvcmKtqGaI2okX1iDBG', '2019-05-22 11:14:27', '2019-05-22 11:14:27'),
	(621, 1, 'Q15qgysAjBYyVw0RdS10D0DNjlcqmrpK', '2019-05-22 11:14:28', '2019-05-22 11:14:28'),
	(622, 1, 'ikoXDl4x78xTpk6BjqgdfpoqJafYu7RR', '2019-05-22 11:26:06', '2019-05-22 11:26:06'),
	(623, 1, 'BN751WHQxvK4i0DuldwI405KEBXT7uj4', '2019-05-22 11:26:07', '2019-05-22 11:26:07'),
	(624, 1, '46LnkbYXIy3K91Vgh4WAl2fkc7M09gLf', '2019-05-22 11:27:23', '2019-05-22 11:27:23'),
	(625, 1, 'kSZ8KIGm5UidvoEe6kPLIiR17BksKCSU', '2019-05-22 11:30:21', '2019-05-22 11:30:21'),
	(626, 1, '5A7pEu9N4CsRd8D6IBd1ypQZgsZ2i6Fq', '2019-05-22 11:30:24', '2019-05-22 11:30:24'),
	(627, 1, 'qyyno3Ysnb9tAxBdo8sb60s1Ok0uWrjH', '2019-05-22 11:30:44', '2019-05-22 11:30:44'),
	(628, 1, 'W1aHTli31C5vUetNZM5M0ODAXS4XQ8sK', '2019-05-22 11:30:45', '2019-05-22 11:30:45'),
	(629, 1, '4w8waNZO0z9C3S0QPCYxNOsDNTiXUaWp', '2019-05-22 11:33:52', '2019-05-22 11:33:52'),
	(630, 1, 'SBB5sbAWMtvqaL4A6WdRMNj07ZVVgCDH', '2019-05-22 11:34:16', '2019-05-22 11:34:16'),
	(631, 1, '07G0NG87K1WTvnqokgpEYI2OBDYckV28', '2019-05-22 11:34:42', '2019-05-22 11:34:42'),
	(632, 1, 'LihqZfOTtYEDgEtJqcU31kDl9BJ1c4XN', '2019-05-22 11:35:03', '2019-05-22 11:35:03'),
	(633, 1, 'MZVqeVGmNEqNU5Wd8KULqDALmsM8GSuj', '2019-05-22 11:35:27', '2019-05-22 11:35:27'),
	(634, 1, 'jZfEElAtG9zwPJzSkwtciowh1lxf9Mzq', '2019-05-22 11:35:52', '2019-05-22 11:35:52'),
	(635, 1, 'V1OKe9qxKXoTyY7h3Pl1UYwvxE0mnVrp', '2019-05-22 11:35:55', '2019-05-22 11:35:55'),
	(636, 1, 'k4rQzCjh1cG6l0TTJFWBipZ8bI8h8Mms', '2019-05-22 11:36:02', '2019-05-22 11:36:02'),
	(637, 1, 'JgnYwiq29Pt8ozsVN7sWtl0bno0ohpvK', '2019-05-22 11:36:02', '2019-05-22 11:36:02'),
	(638, 1, 'fG6gVeplA4WipKvasXtFWvMquHNJYzdT', '2019-05-22 11:36:38', '2019-05-22 11:36:38'),
	(639, 1, 'xopgeZeOUef2Po5YsVxZhiAAahJ15QWQ', '2019-05-22 11:36:40', '2019-05-22 11:36:40'),
	(640, 1, 'QJn8Y7VzDGmhao09AzIFQLd6JeN7PcJp', '2019-05-22 11:37:03', '2019-05-22 11:37:03'),
	(641, 1, 'ESdNoV8EDFsnz2vXmLeLG1xSMkzYmKdT', '2019-05-22 11:37:03', '2019-05-22 11:37:03'),
	(642, 1, 'uzS7Se4P6IAGLMZQM0knjyP29IJFcmf3', '2019-05-22 11:37:11', '2019-05-22 11:37:11'),
	(643, 1, 'etefc2UehmAMdsN4zVHCmx5bQUEbUOQN', '2019-05-22 11:37:14', '2019-05-22 11:37:14'),
	(644, 1, 'pWonprLNqgkhmh4zmbzZam4BqHWRarYR', '2019-05-22 11:38:12', '2019-05-22 11:38:12'),
	(645, 1, 'iGMISNUi1Fwf1Nlwx9AZ11TVe9SSC15K', '2019-05-22 11:38:21', '2019-05-22 11:38:21'),
	(646, 1, 'o1wBtGR00QU9VAq0Nwoqi9kJbLKFPQ3f', '2019-05-22 11:38:21', '2019-05-22 11:38:21'),
	(647, 1, '4pPz1NAW1EOW97EXCid6JatisKe7pAhV', '2019-05-22 11:38:41', '2019-05-22 11:38:41'),
	(648, 1, 'RE6rHeUBm5FgmqxHwVe8zpywd9q8aLut', '2019-05-22 11:38:41', '2019-05-22 11:38:41'),
	(649, 1, 'UPUeZQt4K9e2aePKvVDFXezjkbdTx4DQ', '2019-05-22 11:38:46', '2019-05-22 11:38:46'),
	(650, 1, 'hsyVMrChwURXQPUGqCZfakgmvQ1hmvbV', '2019-05-22 11:38:46', '2019-05-22 11:38:46'),
	(651, 1, 'WcDQQtg5TYxXMsTSYQnbXME4RJhZqoA7', '2019-05-22 11:38:52', '2019-05-22 11:38:52'),
	(652, 1, '7j9G18MkTLee5dNLXfdQ8Jnyf6rjcrgw', '2019-05-22 11:38:52', '2019-05-22 11:38:52'),
	(653, 1, 'dEoStpNyQWv6DMfJDUcFR48lmQXQQx56', '2019-05-22 11:39:24', '2019-05-22 11:39:24'),
	(654, 1, 'oJJycG9ZIkk0KogtK3AH0quOAmglDAz3', '2019-05-22 11:40:30', '2019-05-22 11:40:30'),
	(655, 1, 'uqk5wxf2ivvV1zDX2723AZyjY5aYDdZB', '2019-05-22 11:42:15', '2019-05-22 11:42:15'),
	(656, 1, 'Ul1UxwgHjlNJ1Zyy0epL5E0lz3l288S8', '2019-05-22 11:42:44', '2019-05-22 11:42:44'),
	(657, 1, 'rVlXP40ucx7CBcwz8463ocOUK1OF4KgN', '2019-05-22 12:06:40', '2019-05-22 12:06:40'),
	(658, 1, 'rNL3BAdlMs5SCXoHfOyZqpE1uxTX2cCx', '2019-05-22 12:06:44', '2019-05-22 12:06:44'),
	(659, 1, 'nA9yL0YRllqSmMmGo9WkoOkGc0LD2rUL', '2019-05-22 12:06:45', '2019-05-22 12:06:45'),
	(660, 1, '4hxTlgL67bu0UNd05Zt7uftOMxCzdtyr', '2019-05-22 12:07:08', '2019-05-22 12:07:08'),
	(661, 1, 'zs7D43R3yQVsaoPSQ1IMNFlPnqNBZvtW', '2019-05-22 12:07:10', '2019-05-22 12:07:10'),
	(662, 1, 'EZdqPk2B4cnpX4WTaJLuw7GbyfDvVcwJ', '2019-05-22 12:07:11', '2019-05-22 12:07:11'),
	(663, 1, '32GYm9qhMSIIPY7UmnBH2nDQfOhdc1fF', '2019-05-22 12:16:31', '2019-05-22 12:16:31'),
	(664, 1, 'kmpYCqA74XOZRuu0JnmHQbiWRYoyuwqd', '2019-05-22 12:16:32', '2019-05-22 12:16:32'),
	(665, 1, 'l67awZ9IvV7h4xA2EF3io1piCabGO2ph', '2019-05-22 12:17:52', '2019-05-22 12:17:52'),
	(666, 1, 'HpNRFnb7t2dLzDFqlvmVNHF2MMg8sULO', '2019-05-22 12:17:53', '2019-05-22 12:17:53'),
	(667, 1, '2wrFGpzV7al0YeSDV7RtjngGhjFtevu4', '2019-05-22 12:22:40', '2019-05-22 12:22:40'),
	(668, 1, 'O2ZjHjouPUQmBZzDyS6fbS4wqz4hiJaT', '2019-05-22 12:22:58', '2019-05-22 12:22:58'),
	(669, 1, 'luUX2Ya6CH2CF6zO57wV1RwfMCFt6q3I', '2019-05-22 12:23:04', '2019-05-22 12:23:04'),
	(670, 1, 'CRomyWVpMDOfPG0Vt2Czq2nHH1LXyOv2', '2019-05-22 12:23:32', '2019-05-22 12:23:32'),
	(671, 2, 'ZEvyHkvECmOhYuWPhxUow1cwLKIv5Wu9', '2019-05-22 12:25:07', '2019-05-22 12:25:07'),
	(672, 1, 'E4o2QjqcYumwP8Vdb8OY9fxw6DaTHyqE', '2019-05-22 12:25:39', '2019-05-22 12:25:39'),
	(673, 1, '9uA6KznfodUXmhrFPcQdY6k8GvYjqtcB', '2019-05-22 12:26:08', '2019-05-22 12:26:08'),
	(674, 2, 'uqKUwTlkPRGkIVN2CRlULagBKGz3iC7k', '2019-05-22 12:27:00', '2019-05-22 12:27:00'),
	(675, 2, 'lgJMdLdvGwvSfsKlNmw9P1i559NLn7ee', '2019-05-22 12:27:50', '2019-05-22 12:27:50'),
	(676, 2, '8ZuJ3HM7FEupH6iqaIEPpdGyD9VfMQli', '2019-05-22 12:29:57', '2019-05-22 12:29:57'),
	(677, 1, 'FqLj1VJRiubksQKd84uZRM7FHk8EIIXj', '2019-05-22 12:30:15', '2019-05-22 12:30:15'),
	(678, 1, '9sWoacrAcNItTQSp1xbDNnBNys8YSGV2', '2019-05-22 12:30:16', '2019-05-22 12:30:16'),
	(679, 2, 'FOVbB40uEn6PxyK3omMKbbigAi79nQAt', '2019-05-22 12:30:37', '2019-05-22 12:30:37'),
	(680, 1, 'xXANnW6pxex6beaqOkq7rwttBAP9tzsh', '2019-05-22 12:31:17', '2019-05-22 12:31:17'),
	(681, 1, 'vnEQYzYUBLlyP7KkUFl9EYvgAjNrcuQh', '2019-05-22 12:31:18', '2019-05-22 12:31:18'),
	(682, 2, 'uQbHf9tbft7GZgW8DZ9DnFH710a4MBcj', '2019-05-22 12:31:19', '2019-05-22 12:31:19'),
	(683, 2, '6KkeH5rIjhlWlbUwhckmwHBvb474HHlr', '2019-05-22 12:31:39', '2019-05-22 12:31:39'),
	(684, 2, '4twJPJEIrMGYppO3UYcYxaXIMQJqigKH', '2019-05-22 12:32:26', '2019-05-22 12:32:26'),
	(685, 2, 'uGdcTPzZBGe85oPHx5SBmYMXkPWfstyJ', '2019-05-22 12:32:44', '2019-05-22 12:32:44'),
	(686, 2, 'p9RtXs37fyx1CXuw2Uk1AgEkx9Hymd1C', '2019-05-22 12:33:37', '2019-05-22 12:33:37'),
	(687, 2, 'Va1EHZ5Lj8pgPS2FeUk3HAgjsjrf4G4s', '2019-05-22 12:35:03', '2019-05-22 12:35:03'),
	(688, 1, '4vvWFAMOwOrtxzaAtPTYd0p3I0aInwJw', '2019-05-22 12:35:45', '2019-05-22 12:35:45'),
	(689, 1, 'pdIgc3Fz4EVmNM6RdoNETNOYg9SKJLhc', '2019-05-22 12:35:47', '2019-05-22 12:35:47'),
	(690, 2, 'IxHPS8AVAfJxiDE0CqOPpvUQIohPlZpL', '2019-05-22 12:36:33', '2019-05-22 12:36:33'),
	(691, 1, 'cFb37F5u9GfGoJdEveRsMUB2P8PcGB7T', '2019-05-22 12:37:20', '2019-05-22 12:37:20'),
	(692, 1, 'CHqyxivOaEfS5uMEReYssxhFAljaoQSi', '2019-05-22 12:37:20', '2019-05-22 12:37:20'),
	(693, 2, 'QA4KJO75VwMAb2hYRjVmSSWhn78sohPO', '2019-05-22 12:37:24', '2019-05-22 12:37:24'),
	(694, 2, 'pemmlrrYcJQFhVTTV0SR2uFXm04j3rgM', '2019-05-22 12:37:50', '2019-05-22 12:37:50'),
	(695, 2, 'qxDOEgBaAAwLSgvCUVQpqpJzRXXA73jg', '2019-05-22 12:38:46', '2019-05-22 12:38:46'),
	(696, 2, '0oiBr7VJIlnGtcq3IZd2AiwF4IRlF4jT', '2019-05-22 12:38:54', '2019-05-22 12:38:54'),
	(697, 2, 'FXITqdHartjFK2hOEELQzdtnWkGvdV8U', '2019-05-22 12:38:58', '2019-05-22 12:38:58'),
	(698, 2, 'yTiyjju0l1Ya4k85kcFNiiaV54AWgI4h', '2019-05-22 12:39:03', '2019-05-22 12:39:03'),
	(699, 1, 'tfCl3gcr7vhpmGNOQ3Jiii30sF26bCEe', '2019-05-22 12:39:10', '2019-05-22 12:39:10'),
	(700, 1, 'v1r3W69jJOqDscsaegToK534FGLkoEWG', '2019-05-22 12:39:11', '2019-05-22 12:39:11'),
	(701, 1, 'oq3ydWB9FEJy7ZYxCuCg8QgOyVwD2NVc', '2019-05-22 12:40:25', '2019-05-22 12:40:25'),
	(702, 1, 'QxvdropMpjP5Bq7xBafbHALa2Q3DkqLF', '2019-05-22 12:40:26', '2019-05-22 12:40:26'),
	(703, 1, '39eKwODKMBDroC5cq3Vf53k54MQeqqGp', '2019-05-22 13:02:08', '2019-05-22 13:02:08'),
	(704, 1, 'LHidAdwp7KzdIInGjHWqwmRsjDPPZqkH', '2019-05-22 13:02:12', '2019-05-22 13:02:12'),
	(705, 1, 'wF8YsJVVSqfqbImwJycikVO6uqZpSU07', '2019-05-22 13:02:26', '2019-05-22 13:02:26'),
	(706, 1, 'NR1P5u3bWsh3q8lhwNToqiZACP5BqXHj', '2019-05-22 13:02:29', '2019-05-22 13:02:29'),
	(707, 1, '7h2LFXzWMLN5YTixhWjzei9MdH2hz5og', '2019-05-22 13:02:50', '2019-05-22 13:02:50'),
	(708, 1, 'lTwuqxD6aeMJH8oI9kVhzn8MIyVRB9qk', '2019-05-22 13:02:51', '2019-05-22 13:02:51'),
	(709, 1, 'KKYHXAYpE8taxMYQAZrWUwz2w5J9gkxQ', '2019-05-22 13:03:12', '2019-05-22 13:03:12'),
	(710, 1, '9AC1qDnldD7Galmd7xonkHA7ja1OPtHn', '2019-05-22 13:03:15', '2019-05-22 13:03:15'),
	(711, 1, 'aEKWQbsGyw7yWqaUACXmWt5V0vyvqpmp', '2019-05-22 13:03:23', '2019-05-22 13:03:23'),
	(712, 1, 'g3MCT71DQiuBoiv2Znrq9Fq9PUqfROz8', '2019-05-22 13:03:23', '2019-05-22 13:03:23'),
	(713, 1, 'EKRBWEkdg7xjklnNHK20Gqgb9pdmm9pM', '2019-05-22 13:03:26', '2019-05-22 13:03:26'),
	(714, 1, '0dSdva3GSHZ1ojsykIywGXZEdUKP2Ww2', '2019-05-22 13:03:26', '2019-05-22 13:03:26'),
	(715, 2, 'DpLuQvKTRxl62iEXwSSpyns7mfVkIhCy', '2019-05-22 14:09:53', '2019-05-22 14:09:53'),
	(716, 2, 'cgj60vFn5RMTZXUTVnlF34geaLZOlO07', '2019-05-22 14:18:02', '2019-05-22 14:18:02'),
	(717, 2, '1RFNMgLVZgioybdrEEyxuEwppWQ7fr5S', '2019-05-22 14:19:20', '2019-05-22 14:19:20'),
	(718, 2, 'RDTgngwONnzFbCgHGwz4YhsdMI95HkWX', '2019-05-22 14:20:54', '2019-05-22 14:20:54'),
	(719, 2, 'UghEZarflPUvnXhMUDWoXfhMQCyk2vB1', '2019-05-22 14:25:32', '2019-05-22 14:25:32'),
	(720, 2, 'rrikX7nJFasGzZqbFpqtNVfBQCIA6ac0', '2019-05-22 14:26:19', '2019-05-22 14:26:19'),
	(721, 2, 'or1v6lS0XMFLc9q8EoLziifjxBgTGNLm', '2019-05-22 14:27:11', '2019-05-22 14:27:11'),
	(722, 1, 'FDh9I0Ca1gCSewqBwKV1cGZFXCeadXhh', '2019-05-22 14:31:38', '2019-05-22 14:31:38'),
	(723, 1, 'DKUiPVizV2lPCD6NUGAfEMHrwzNGAkKi', '2019-05-22 14:31:38', '2019-05-22 14:31:38'),
	(724, 1, 'XANKXaeouLIKlGsHjJJO3ogwtRx8E00X', '2019-05-22 14:31:38', '2019-05-22 14:31:38'),
	(725, 1, 'yawaSNpEohhUDHnoNHLfT9nZQlUI5CzI', '2019-05-22 14:31:39', '2019-05-22 14:31:39'),
	(726, 2, 'nl84k7iZdw97fNSPFIgWVNILitDgWDdW', '2019-05-22 14:32:48', '2019-05-22 14:32:48'),
	(727, 2, 'R4MJfpztspNmh7gqKVI8l9npXrRHsDpM', '2019-05-22 14:34:32', '2019-05-22 14:34:32'),
	(728, 2, '9XXYCmMaxtJ7fb3XS1EqXgROskA5sVxr', '2019-05-22 14:35:33', '2019-05-22 14:35:33'),
	(729, 1, 'dg1zn8DERG3QiJ4piybQJeeYf1ES3Zw4', '2019-05-22 14:35:40', '2019-05-22 14:35:40'),
	(730, 1, 'wR6dXxhJ7hUW949eC3xmQ2QjTygZHzli', '2019-05-22 14:35:40', '2019-05-22 14:35:40'),
	(731, 1, 'U5LEz7iL9cKa82txN7Qc6dS6CzzsZm1b', '2019-05-22 14:35:40', '2019-05-22 14:35:40'),
	(732, 1, 'bEwNH9vBtfuJhQaAP67tiDFfWB67EkHR', '2019-05-22 14:35:40', '2019-05-22 14:35:40'),
	(733, 2, '69wLc423c9jrbUOiYKwfp6PIP2fLGSzu', '2019-05-22 14:36:42', '2019-05-22 14:36:42'),
	(734, 2, 'yXbTjffgb2z7TG4KaHVQp2BUveM2CaEH', '2019-05-22 14:50:29', '2019-05-22 14:50:29'),
	(735, 1, 'gVLTzk05HqNi6VYTwOHuelyzdUtHIIg2', '2019-05-22 15:00:27', '2019-05-22 15:00:27'),
	(736, 3, 'aNTsMbVSkyjImjWCIXwM6Og38kkKNK4w', '2019-05-22 15:01:31', '2019-05-22 15:01:31'),
	(737, 1, 'z1kPHv7FHml2gfpsaROvqlnyRcT1WGha', '2019-05-22 15:02:18', '2019-05-22 15:02:18'),
	(738, 1, 'RKExNlAhWVDsmu4XChSG3jixsSG6U88l', '2019-05-22 15:02:18', '2019-05-22 15:02:18'),
	(739, 2, '97fQ9NKiYLVnQ62tP6n3ZVUZpinL3KWq', '2019-05-22 15:04:32', '2019-05-22 15:04:32'),
	(740, 1, 'P6daXk5DlGSRKSoHxFYSxX6ZOA7XGXQg', '2019-05-22 15:04:40', '2019-05-22 15:04:40'),
	(741, 1, 'nQf9iJYmV14HfrqxP9LD8ojidCU0EWjR', '2019-05-22 15:04:42', '2019-05-22 15:04:42'),
	(742, 1, 'jHjHURzn5Z041Bc7ZlUfDc0Em9wvje8B', '2019-05-22 15:07:26', '2019-05-22 15:07:26'),
	(743, 1, 'bvcFtP9vcRf6ahS7QGMdMQLkwk9x6KI8', '2019-05-22 15:07:26', '2019-05-22 15:07:26'),
	(744, 1, 'GAL2o8DPaqcCYV7b8FE0LEBHAZgMsEUV', '2019-05-22 15:08:34', '2019-05-22 15:08:34'),
	(745, 1, 'ktECSusnj0wr0eroVRxVwtHOjaHqsgk8', '2019-05-22 15:08:35', '2019-05-22 15:08:35'),
	(746, 1, '1vxX3WlE3h9XMPtl7l2iotYoprRPTcVV', '2019-05-22 15:23:50', '2019-05-22 15:23:50'),
	(747, 1, 'iS4OBewvSiiVgdmzZLFFqfwdWcNutBqT', '2019-05-22 15:27:21', '2019-05-22 15:27:21'),
	(748, 1, 'EFBtGEeaz2W8kNPO1A5F9kF6J6Slzg2Y', '2019-05-22 15:31:06', '2019-05-22 15:31:06'),
	(749, 1, 'MuusmKpJcjSNAbJa7hvTZlWKv6Z73Kgz', '2019-05-22 15:31:06', '2019-05-22 15:31:06'),
	(750, 3, 'sVpkPjezETfUP9886JaWBw5gWMptJYN1', '2019-05-22 15:41:05', '2019-05-22 15:41:05'),
	(751, 3, 'awxsrSPzyYXu2xOcmXEIRlGX5LtCnWIW', '2019-05-22 15:41:05', '2019-05-22 15:41:05'),
	(752, 1, 'fdUOCWToywNkCzbe7YUnHJ3NWMHfos2Y', '2019-05-22 15:41:54', '2019-05-22 15:41:54'),
	(753, 1, 'FDwFl4MtClMA0uCtBC9d4OOg9WEZL5Ta', '2019-05-22 15:41:55', '2019-05-22 15:41:55'),
	(754, 1, 'LYwSD1H0rOvK5FCnSyWMivJ0TrTaqTPJ', '2019-05-22 15:43:50', '2019-05-22 15:43:50'),
	(755, 1, 'vGlZnf3E6auiog3clftABa4ShJKvQwLF', '2019-05-22 15:43:50', '2019-05-22 15:43:50'),
	(756, 1, 'Uhvs87ONtBpx0GGFxkAWCKbjRdY1TO3t', '2019-05-22 15:43:50', '2019-05-22 15:43:50'),
	(757, 1, 'Fuo2JbaQX7RvpNOqCMGGfAxAMukmfBms', '2019-05-22 15:43:51', '2019-05-22 15:43:51'),
	(758, 1, 'jP8FIWXnICqFM3eU65JuFFuTRFHH2Wlp', '2019-05-22 15:51:16', '2019-05-22 15:51:16'),
	(759, 1, '3ehCz1fZnH43P9of4QroL87mE9TIuByU', '2019-05-22 15:51:27', '2019-05-22 15:51:27'),
	(760, 1, 'j1501gkMhu88ElIYIOkSIq6yJPqPZWbx', '2019-05-22 15:51:28', '2019-05-22 15:51:28'),
	(761, 2, 'wzkOsJKxvcvaKVwSkfLJYOOQtckdkVjl', '2019-05-22 16:09:49', '2019-05-22 16:09:49'),
	(762, 2, 'FgcN84TLQ3IEF9RrXM8OuiIgwlbgF2FX', '2019-05-22 16:10:33', '2019-05-22 16:10:33'),
	(763, 2, 'h01bzKDakxieECHaU1kk4gTNeB6OEw27', '2019-05-22 16:28:09', '2019-05-22 16:28:09'),
	(764, 2, 'aVkUOirvgwTuX1aKtU9SEFuCwhLwKsyf', '2019-05-22 16:35:22', '2019-05-22 16:35:22'),
	(765, 2, 'XXe55CIL7uqAmy7r2FW0bymqXgh6sPF8', '2019-05-22 16:55:08', '2019-05-22 16:55:08'),
	(766, 2, '3bGdC74oMo5MlOJliuw3PqGPzIZb0rrz', '2019-05-22 16:55:11', '2019-05-22 16:55:11'),
	(767, 2, 'YcezUldOBhckRRLG29HrWoaIv3U7MSuE', '2019-05-22 16:56:30', '2019-05-22 16:56:30'),
	(768, 2, 'XtHDuDlyVBz8VLzlY3uAnOto71Ju1IYr', '2019-05-22 16:58:26', '2019-05-22 16:58:26'),
	(769, 2, 'gjdozPoPhpdLidk1XjwBQ8lrhLCOHWkd', '2019-05-22 16:59:03', '2019-05-22 16:59:03'),
	(770, 2, '4RU9TVEKfI5uDgy9B8fNuF126PDJP0Ym', '2019-05-22 16:59:51', '2019-05-22 16:59:51'),
	(771, 2, 'JYZiIIHsUGJt7m35JkxVXDhHCeXWHeVU', '2019-05-22 17:11:03', '2019-05-22 17:11:03'),
	(772, 2, 'uFNJuDwrNrENL7mOZLP08UNk7wwY8gAo', '2019-05-22 17:11:45', '2019-05-22 17:11:45'),
	(773, 2, 'v5APrRUncvLZSxs9XE6NCZuTPoixJLN5', '2019-05-22 17:12:35', '2019-05-22 17:12:35'),
	(774, 1, 'czauSxWQN84y9c0q5BRZmCP6kX8eCQYI', '2019-05-22 17:15:12', '2019-05-22 17:15:12'),
	(775, 1, 'Asy5Ud4DPb5r4nC8k1ILTHJWhdofVZuE', '2019-05-22 17:15:14', '2019-05-22 17:15:14'),
	(776, 1, 'lhzNAtPgaDIYnwFIXduH2msWKbpyKtRZ', '2019-05-22 17:15:35', '2019-05-22 17:15:35'),
	(777, 1, '5JJrhOPhEXeguqepoEDDO1fwF8BX4fci', '2019-05-22 17:18:05', '2019-05-22 17:18:05'),
	(778, 1, 'ndh08RylmXNTN04K5jiCEjxQ0erVDoG0', '2019-05-22 17:18:05', '2019-05-22 17:18:05'),
	(779, 1, 'Ur4aHXGQoxz3p8UJwFUT24Vi40VWzupU', '2019-05-22 17:18:05', '2019-05-22 17:18:05'),
	(780, 1, 'Si11Cx7bN12bng4vjJW7uxKIW7887BhK', '2019-05-22 17:18:05', '2019-05-22 17:18:05'),
	(781, 1, 'uKrhbGLDoXwhvWSTVx3rt76LEC9bpgs7', '2019-05-22 17:18:05', '2019-05-22 17:18:05'),
	(782, 1, '6M2jxT2A5tcAOgplNWxBmDePgPSow1jS', '2019-05-22 17:18:05', '2019-05-22 17:18:05'),
	(783, 1, 'D5svdGtlm1WcXt0NDxdZZghecnaglD4E', '2019-05-22 17:18:06', '2019-05-22 17:18:06'),
	(784, 1, 'aRKNONy5joVqlUnzq27giL4IeaW2z656', '2019-05-22 17:18:06', '2019-05-22 17:18:06'),
	(785, 2, 'lf78vKPPfEl70V8K1pvcA88aO9WrRpu5', '2019-05-22 17:18:57', '2019-05-22 17:18:57'),
	(786, 2, 'Hz9Bk26plKnrxp0Ntd7i1VkC3uhTrSyh', '2019-05-22 17:19:27', '2019-05-22 17:19:27'),
	(787, 2, 'HlXfVX1qFwazcGp7OB74o3hLeKlsRyVc', '2019-05-22 17:23:47', '2019-05-22 17:23:47'),
	(788, 2, 'ofCbP8lGcUjpYTOEi9ex7slp8yV5WZKS', '2019-05-22 17:24:50', '2019-05-22 17:24:50'),
	(789, 1, '1vhoGXx1PxswwkMDgFBNpAZpxsmB41AN', '2019-05-22 17:50:07', '2019-05-22 17:50:07'),
	(790, 2, 'agLhUGSdefjs8pp2BWOftoCtFlppFkoQ', '2019-05-22 17:54:30', '2019-05-22 17:54:30'),
	(791, 2, 'WPfcuNOHQFYI4FYPHTOuUHdwGUKgjizS', '2019-05-22 17:55:39', '2019-05-22 17:55:39'),
	(792, 2, 'jcbtTAIyw9TLvfCq2q3DBOBJWEnG1YJM', '2019-05-22 17:58:52', '2019-05-22 17:58:52'),
	(793, 2, '0hEAbQid9DmJ2IOd8UxGUvYJmN43rIcm', '2019-05-22 17:58:55', '2019-05-22 17:58:55'),
	(794, 2, 'pxG3Pd9OVHVr2HmXmqwugRi2xdW5Zcs4', '2019-05-22 17:58:55', '2019-05-22 17:58:55'),
	(795, 2, 'd2vckSSUAGji7kZOS2ylB6KsbzG0AomR', '2019-05-22 17:59:41', '2019-05-22 17:59:41'),
	(796, 2, '9jmRQf5FRiVrBrcsfGfuDwELB9mLqFt3', '2019-05-22 18:24:57', '2019-05-22 18:24:57'),
	(797, 2, 'dZA56SD5i4GUFTV45S4qhnXDgTLnNgGy', '2019-05-22 18:24:57', '2019-05-22 18:24:57'),
	(798, 2, 'WwqQT1oWnhJ5F4mP20lGPFlkkr68ufLU', '2019-05-22 18:24:59', '2019-05-22 18:24:59'),
	(799, 2, 'KbmPbROYEaSFbPUana1gDzSfMrx5m1AN', '2019-05-22 18:24:59', '2019-05-22 18:24:59'),
	(800, 2, '1wajBpkzU4M9oF4DIG5LKQpyeDO6vaEq', '2019-05-22 18:25:13', '2019-05-22 18:25:13'),
	(801, 2, 'h4VSCqqBM3OlqCitNCWZbnqfTlqwWPT3', '2019-05-22 18:25:13', '2019-05-22 18:25:13'),
	(802, 2, '40Hg2NEFZhhkwObJAOFWj1Sit4TsDtH7', '2019-05-22 18:32:13', '2019-05-22 18:32:13'),
	(803, 2, 'lxdLKrXEsr42Otc25wEK7l8lUT1Jdd3x', '2019-05-22 18:32:14', '2019-05-22 18:32:14'),
	(804, 2, 'tic52VI5gg33DShD1QMfwZRXvKrf83Dw', '2019-05-22 18:32:17', '2019-05-22 18:32:17'),
	(805, 2, 'o5vl7lAoTcxevzsUJ6M20NwErIhtBdM6', '2019-05-22 18:32:17', '2019-05-22 18:32:17'),
	(806, 2, 'NxSl5O70oCTqqMhgcPWxCT6D9ByfgkGt', '2019-05-22 18:32:21', '2019-05-22 18:32:21'),
	(807, 2, 'yOQMA9s2OldfvySVyVRPqjoJjt7yS4Pj', '2019-05-22 18:32:29', '2019-05-22 18:32:29'),
	(808, 2, 'ibsQWc6kgrnfSCmglEMChtkxLDmnjYxF', '2019-05-22 18:32:29', '2019-05-22 18:32:29'),
	(809, 1, 'sPvHstIi1dzk4HtAyfOK2152F56Uzmw0', '2019-05-22 18:32:49', '2019-05-22 18:32:49'),
	(810, 1, '1kV0yzD1XZdXNfyyFr63qNKcv6ImtibA', '2019-05-22 18:32:50', '2019-05-22 18:32:50'),
	(811, 1, 'tLGlrUtYvGU4SmxbDPSTCfknmW39CUHN', '2019-05-22 18:33:09', '2019-05-22 18:33:09'),
	(812, 1, '1e2PsW45PKuTrUg79kPeWncZRD0wKGbh', '2019-05-22 18:33:10', '2019-05-22 18:33:10'),
	(813, 1, 'SOu5gY0BXvkD1R8TL7KbRYZ9SWrqiR0u', '2019-05-22 18:33:10', '2019-05-22 18:33:10'),
	(814, 2, 'PkRIIFEy6Bnculul6oN1GIxv5HnAsLpG', '2019-05-22 18:33:17', '2019-05-22 18:33:17'),
	(815, 2, 'fNz70JCnDmhTyeeJQsQorEuTBDTmQ3I3', '2019-05-22 18:33:17', '2019-05-22 18:33:17'),
	(816, 1, 'hg4rprShDmVyhdN0Upvm2mbBf2tCzCZI', '2019-05-22 18:33:25', '2019-05-22 18:33:25'),
	(817, 1, 'NhDnXYPkdekYVaIHzraOpndoVgWxFjIB', '2019-05-22 18:33:25', '2019-05-22 18:33:25'),
	(818, 1, 'MYUXjvatX5oXMBDIaSOlraB1vu5kpLbP', '2019-05-22 18:33:28', '2019-05-22 18:33:28'),
	(819, 1, 'TszCBLdy9siD3s7IB9Tu7VInFZaOdtba', '2019-05-22 18:33:28', '2019-05-22 18:33:28'),
	(820, 1, 'py7xX2u1chHySzUwTCXf7aPINuVysaI7', '2019-05-22 18:33:34', '2019-05-22 18:33:34'),
	(821, 1, '3IlA37S3Nk0PrZKW2ipwVO7wPwpywjvQ', '2019-05-22 18:33:34', '2019-05-22 18:33:34'),
	(822, 1, 'ru7jW93RU7oxlRmmN9gq5oChQHOG3XVI', '2019-05-22 18:33:50', '2019-05-22 18:33:50'),
	(823, 1, 'Zqr9XGyVazkYK23fgV8fbIqU7zIz623A', '2019-05-22 18:33:51', '2019-05-22 18:33:51'),
	(824, 1, 'Kqzx9tLhthSApy8wF0MULHvJwQlurzCO', '2019-05-22 18:33:52', '2019-05-22 18:33:52'),
	(825, 1, '8UW9tnVpdN302lVaxeshyvAWVjUimKKm', '2019-05-22 18:33:52', '2019-05-22 18:33:52'),
	(826, 1, 'Cj8JdQDclBXMCDylHSWH7Xpnr6WaNe9I', '2019-05-22 18:34:00', '2019-05-22 18:34:00'),
	(827, 1, 'Bs7IcKjIfhH6Y6lbBUMN5JFJwnttD8zC', '2019-05-22 18:34:00', '2019-05-22 18:34:00'),
	(828, 1, '0JfUSe3SjJRH1FtJnqjq942oCC53pWdo', '2019-05-22 18:35:09', '2019-05-22 18:35:09'),
	(829, 1, 'wzuY19SngBLgnzoaRMh7F8oBAw6rvAi7', '2019-05-22 18:35:09', '2019-05-22 18:35:09'),
	(830, 1, 'XN7zRDsBxgX2nuq8s8NN5mQFdvRxG8xJ', '2019-05-22 18:35:11', '2019-05-22 18:35:11'),
	(831, 1, 'CWVirihsFREyBXyIzzK79MJT1QOhMQtD', '2019-05-22 18:35:11', '2019-05-22 18:35:11'),
	(832, 1, 'OAUunkA7Lu7T65sssvETzGunpOyq7Xeg', '2019-05-22 18:35:16', '2019-05-22 18:35:16'),
	(833, 1, 'PtNTRFDXPDQrSOGxDfxxMznNPbE8UukL', '2019-05-22 18:35:16', '2019-05-22 18:35:16'),
	(834, 1, 'A5SddCdRb6O3jJwG0XYAvILFeRBKryXo', '2019-05-22 18:37:27', '2019-05-22 18:37:27'),
	(835, 2, 'sOO6Vt6pAurFu8eTgoXswsayvwRtcTpZ', '2019-05-22 18:37:27', '2019-05-22 18:37:27'),
	(836, 2, 'amCn5x4Ru78epXVLsI5imDHyif0MbmH5', '2019-05-22 18:37:28', '2019-05-22 18:37:28'),
	(837, 1, 'drSh73TFq1RRWNaV6aJOJtct7itJIhUQ', '2019-05-22 18:37:28', '2019-05-22 18:37:28'),
	(838, 2, 'Us1CshWwTpmeRkKTuuILj2C1DMssUI7l', '2019-05-22 18:37:30', '2019-05-22 18:37:30'),
	(839, 1, 'ijyamvtrtZjP3ePMJ2FyqdaBchxsThOz', '2019-05-22 18:37:30', '2019-05-22 18:37:30'),
	(840, 2, 'kidkeB0mHr7pPXQLlkJq7bMtS7LmMP7g', '2019-05-22 18:37:31', '2019-05-22 18:37:31'),
	(841, 1, 'iJdzjrrZ3ye1FQCDQfqBcT9r68EAIOug', '2019-05-22 18:37:31', '2019-05-22 18:37:31'),
	(842, 1, 'miFLoOVvuPxm49UhsMKfKQrporxXvxwV', '2019-05-22 18:38:49', '2019-05-22 18:38:49'),
	(843, 2, '1hk9KCubw68diERRe9sLqDJt846TDZGv', '2019-05-22 18:38:49', '2019-05-22 18:38:49'),
	(844, 1, 'wWBAPx4mxlLD682u2DQlvvemBOslZ5ON', '2019-05-22 18:38:50', '2019-05-22 18:38:50'),
	(845, 2, 'p6sg1wsXo8fEov8YmfVEQEsAO40b8jNY', '2019-05-22 18:38:50', '2019-05-22 18:38:50'),
	(846, 1, 'wy7TibCOUwWt7j7BpRsjatjDAU2SQAHi', '2019-05-22 18:39:25', '2019-05-22 18:39:25'),
	(847, 2, 'Vl0O7vN3IWuOh11ZChICvTEhszpK1FzN', '2019-05-22 18:39:25', '2019-05-22 18:39:25'),
	(848, 2, 'nMl4mMxiHGXuEo6fMHJSMRJ6LSt9CPPd', '2019-05-22 18:39:25', '2019-05-22 18:39:25'),
	(849, 1, 'vGdv140xmNZh3m42hWRDTNVoXNnfIM8a', '2019-05-22 18:39:25', '2019-05-22 18:39:25'),
	(850, 1, 'qPfkQ3EyMoHp3XzSwh8wJQjAjLiQXH7X', '2019-05-22 18:44:12', '2019-05-22 18:44:12'),
	(851, 2, 'X26jAfwsOewkURTrzSiRyBLMBqEtG0bN', '2019-05-22 18:44:12', '2019-05-22 18:44:12'),
	(852, 1, 'dUrCWIqU2RYnq6ohCe9nDKXXNRPsLSXF', '2019-05-22 18:44:12', '2019-05-22 18:44:12'),
	(853, 2, 'QH5ODWozJA5r2rlhvluDntXfjanio9F1', '2019-05-22 18:44:12', '2019-05-22 18:44:12'),
	(854, 2, 'jykM53XIdqEOgMFUAAxzei1p3aRnXRpm', '2019-05-22 18:49:02', '2019-05-22 18:49:02'),
	(855, 1, 'PO3aZVvVmxnfuAN8QFxzDF9Smw29IIEQ', '2019-05-22 18:49:02', '2019-05-22 18:49:02'),
	(856, 1, '393TDdbSz1h4eTo9HzfHPVTuKr8RPwoc', '2019-05-22 18:49:02', '2019-05-22 18:49:02'),
	(857, 2, 'UC2dvQbmgBCbkvZsjmpoqfM5m1YGA4Jh', '2019-05-22 18:49:03', '2019-05-22 18:49:03'),
	(858, 2, 'Q3R6BMvd6CuzQZ5k6fzC4eVArOBH4Ipp', '2019-05-22 18:49:36', '2019-05-22 18:49:36'),
	(859, 1, 'czdO5k8OgnwnUrd2nR0mMsdD7WkDghlx', '2019-05-22 18:49:36', '2019-05-22 18:49:36'),
	(860, 1, 'iKcsq4gcU5VkzN7CgmEaGY9P5DU2wYNs', '2019-05-22 18:49:37', '2019-05-22 18:49:37'),
	(861, 2, 'XynS0ShNwwbDL9JymbHpHVCre22XxL25', '2019-05-22 18:49:37', '2019-05-22 18:49:37'),
	(862, 2, 'Z1d5Tsc2gTwJ9ZGUKL5HLx1DpE6C1bxQ', '2019-05-22 18:49:59', '2019-05-22 18:49:59'),
	(863, 2, 'Olxd8xcL5H0eYmW3pYWknsq2p3Qkmcvm', '2019-05-22 18:50:00', '2019-05-22 18:50:00'),
	(864, 2, 'EsHlPcesNz0qUoQ5LSSuDBhiIxaRhxAo', '2019-05-22 18:51:46', '2019-05-22 18:51:46'),
	(865, 2, 'MIcMBQufOShQNXtAQc7UbQp1k4BIajMP', '2019-05-22 18:51:47', '2019-05-22 18:51:47'),
	(866, 2, 'cMAGxlcv6rQL0z4sdTuJllQ0hxZq6chi', '2019-05-22 18:52:37', '2019-05-22 18:52:37'),
	(867, 2, 'wcOqw6a4BgiESHBZaEW7psvv89B2z5U8', '2019-05-22 18:52:38', '2019-05-22 18:52:38'),
	(868, 1, '3wdhcC4sDsq1HhlUQAjshCVVBAUrHFQb', '2019-05-23 09:10:16', '2019-05-23 09:10:16'),
	(869, 1, 'RfAcDzzfiUo0oukyQrXRBWOUBZxOTbSV', '2019-05-23 09:10:17', '2019-05-23 09:10:17'),
	(870, 1, 'b0Z6lb5gCTG0vK4ht4ry6bOtYsGOBflY', '2019-05-23 09:25:14', '2019-05-23 09:25:14'),
	(871, 1, 'r4vs87PSvPudC2FCuUiJ0O5lEFVrpmOh', '2019-05-23 09:25:15', '2019-05-23 09:25:15'),
	(872, 2, '38G4SqVP3GdK07dZebPieYIN1YPBXr6p', '2019-05-23 09:25:22', '2019-05-23 09:25:22'),
	(873, 2, 'dqLNoXDYk5HFzQevVJYeoxkOanPXS8f7', '2019-05-23 09:25:22', '2019-05-23 09:25:22'),
	(874, 2, 'ZtA0IDTzK1PMdDwhTqkpYwMTnmt5blYa', '2019-05-23 09:25:27', '2019-05-23 09:25:27'),
	(875, 2, 'ydS7v5B1quqrMKbtJmNfqrVY8ivhZSrx', '2019-05-23 09:25:39', '2019-05-23 09:25:39'),
	(876, 2, '3iD7t61RGKPsEgVZwiOju5ESjUhaa9TU', '2019-05-23 09:25:39', '2019-05-23 09:25:39'),
	(877, 2, 'NuwERfjHIdR7vWZd6w10NzClrVdX0fsC', '2019-05-23 09:31:08', '2019-05-23 09:31:08'),
	(878, 2, 'lH925zO8ZrruxAdsDFc7AD21HO6u79zG', '2019-05-23 09:31:09', '2019-05-23 09:31:09'),
	(879, 2, 'wr1c2eTcd3TrEuOwDSHrgKDBhw0Q8Lj8', '2019-05-23 09:32:11', '2019-05-23 09:32:11'),
	(880, 2, 'gQ7Fx87izCFFx8Wb92lkB5h8VTxCLhd3', '2019-05-23 09:32:11', '2019-05-23 09:32:11'),
	(881, 2, 'Lu0kpa5st28Sk5E3rnFIfLFlqDLFsZ2q', '2019-05-23 09:32:23', '2019-05-23 09:32:23'),
	(882, 2, 'QSnM3HeltxZyQ8L8gD8qCKcM3Ve2d4xt', '2019-05-23 09:32:24', '2019-05-23 09:32:24'),
	(883, 2, 'TVYDtBUfgoNewT1OWboFlpKKuQGRpYfF', '2019-05-23 09:51:27', '2019-05-23 09:51:27'),
	(884, 2, 'o6vfdEd4a0zDqvO8ID0aY2WX18GGBUay', '2019-05-23 09:51:27', '2019-05-23 09:51:27'),
	(885, 2, '2hwdKtZX9sNtD2rlofpKjzOH1iKoQ5c9', '2019-05-23 09:51:40', '2019-05-23 09:51:40'),
	(886, 2, 'CThR0TO4X1TFLXS0rSSRH0e2lgWNsfYu', '2019-05-23 09:51:40', '2019-05-23 09:51:40'),
	(887, 2, '0TIF6ZboEiWDIzqRIeygorNCirkYOSm5', '2019-05-23 09:52:13', '2019-05-23 09:52:13'),
	(888, 2, 'dAz3PBnf6WcRVcT90Z7SCR2gI2Su254H', '2019-05-23 09:52:14', '2019-05-23 09:52:14'),
	(889, 2, 'aXAqIPL4XaSe8AE3A0hcKWTW5s7UZVxd', '2019-05-23 09:53:21', '2019-05-23 09:53:21'),
	(890, 2, 'rgPm2s9imig2j3bALnXpzIqEj7iEIPmW', '2019-05-23 09:53:22', '2019-05-23 09:53:22'),
	(891, 1, '4IpATKd4Q8mjK3kXnnBRbuVFL6QDoFxz', '2019-05-28 08:33:27', '2019-05-28 08:33:27'),
	(892, 1, 'RpTWRmwn10GQ8YmOExPPYr85pUwpKfxW', '2019-05-28 08:33:31', '2019-05-28 08:33:31'),
	(893, 1, 'jhT0GdxFDx0bRamj7V562Kh1mi06DFKo', '2019-05-28 08:33:31', '2019-05-28 08:33:31'),
	(894, 1, 'sNSHmI33KZyCAR5YCuHczn0KFJK2TFGY', '2019-05-28 08:33:56', '2019-05-28 08:33:56'),
	(895, 1, 'qhDAucfGPaBCnSrdZhWRyaFB3Dc8fieQ', '2019-05-28 08:47:19', '2019-05-28 08:47:19'),
	(896, 1, 'Wl1ChcRZozPd7JitaV9DCmntSqhKmtuv', '2019-05-28 08:47:30', '2019-05-28 08:47:30'),
	(897, 1, 'gRsGMnvdFcm4NHmoA7GZocRGIZY6Qcky', '2019-05-28 08:47:40', '2019-05-28 08:47:40'),
	(898, 2, 'hAHI0KR9KCdFEnXAqs15SSpVaejSjFwk', '2019-05-28 08:55:52', '2019-05-28 08:55:52'),
	(899, 2, '8Zl9LIfQNQWwafHJoFpxuVlskR9HFIwy', '2019-05-28 09:01:28', '2019-05-28 09:01:28'),
	(900, 2, 'fv3HCBea1vkqXidXHrPdMpIxWGNSJsSX', '2019-05-28 09:01:28', '2019-05-28 09:01:28'),
	(901, 2, 'xGOjh8qO0cpGP4JG8pp9R0JJejhi659g', '2019-05-28 09:01:28', '2019-05-28 09:01:28'),
	(902, 2, 'p7WI8tGsiIwP0oTXHJTGl2CWypsiSS5z', '2019-05-28 09:01:29', '2019-05-28 09:01:29'),
	(903, 2, 'w0dSiJNmH2A9HR52TdDVW898kULScIMx', '2019-05-28 09:05:27', '2019-05-28 09:05:27'),
	(904, 2, 'k7qvyn6VkaEhT3ZiaBSh27SR3qHV6Tul', '2019-05-28 09:05:36', '2019-05-28 09:05:36'),
	(905, 2, 'zxgHbxCnQhuo4Y37lo47R0Dp3suO8Neq', '2019-05-28 09:05:36', '2019-05-28 09:05:36'),
	(906, 2, '5bPqWv91RXBrXtcYMvpNliGzUykieDRC', '2019-05-28 09:05:55', '2019-05-28 09:05:55'),
	(907, 2, 'iGSaK6nVIs7rikqUY63wiOSKa2aPQfsz', '2019-05-28 09:24:19', '2019-05-28 09:24:19'),
	(908, 2, 'PxD6DnyloLSsEZ2lxIxwPq8nFmwN3DTU', '2019-05-28 09:25:29', '2019-05-28 09:25:29'),
	(909, 2, 'cdc8lTYvQs5L137D9lUG9ZhsqxW0ip6t', '2019-05-28 09:25:54', '2019-05-28 09:25:54'),
	(910, 2, 'Tq07yZbfG4NfS9wQ1TUilDnE3GQDLDNA', '2019-05-28 09:25:54', '2019-05-28 09:25:54'),
	(911, 2, 'E0BzjPHLatzztPcHWUUeBZBBYXs5CBd0', '2019-05-28 09:26:09', '2019-05-28 09:26:09'),
	(912, 2, 'PglCONsHIOmFtXO9ltlCXNWJCrr6uhNX', '2019-05-28 09:26:25', '2019-05-28 09:26:25'),
	(913, 2, 'KUc8XW0trt03NVHapMLCm4o5bdqRcrmy', '2019-05-28 09:26:53', '2019-05-28 09:26:53'),
	(914, 2, 'CRBGFaltbcXqVFLIJj4HdjaDDlp43pFw', '2019-05-28 09:27:17', '2019-05-28 09:27:17'),
	(915, 2, 'F0rchBsZposKHl6BkIEgjqPi3DC2EDWa', '2019-05-28 09:27:18', '2019-05-28 09:27:18'),
	(916, 2, 'sEJzTKL0rkGQfwdYmlY7ZyoWajAQyu0F', '2019-05-28 09:28:40', '2019-05-28 09:28:40'),
	(917, 2, 'l0eT0XLhM5BliqA6jp6jo0az4LS4mXqC', '2019-05-28 09:28:44', '2019-05-28 09:28:44'),
	(918, 2, 'HN1MudUnrPwuW5v3hkEvVmRywAiLi2Ia', '2019-05-28 09:28:44', '2019-05-28 09:28:44'),
	(919, 1, 'xPVi9oWT0hxDMVdl0Aaw0PMzEHMY6rmo', '2019-05-28 10:28:51', '2019-05-28 10:28:51'),
	(920, 1, 'vmIfIstDt2IQRnpaggYMBBWzqjoGeVL0', '2019-05-28 10:28:51', '2019-05-28 10:28:51'),
	(921, 1, 'XGgL9VW3Vnz0E0m7yhsQzdN7Hjaf4Tmd', '2019-05-28 10:29:07', '2019-05-28 10:29:07'),
	(922, 1, '4oZkx5La2pukV0vIFwNmc6148qD3Hwj2', '2019-05-28 10:29:14', '2019-05-28 10:29:14'),
	(923, 1, 'rglL9Kh9jEF5KlQj7nejGetLDLidWuyW', '2019-05-28 10:29:27', '2019-05-28 10:29:27'),
	(924, 1, 'ZLEKghHq6hOhqfwNNiSI6J1cxPIvTQUt', '2019-05-28 10:29:27', '2019-05-28 10:29:27'),
	(925, 1, 'WZnklx9MsMqKK7OfUTwYy0OcUsOriRHn', '2019-05-28 10:29:33', '2019-05-28 10:29:33'),
	(926, 1, 'Tmj1uobccgyNuE6Fi5LB5mQkV5wi5WXI', '2019-05-28 10:29:33', '2019-05-28 10:29:33'),
	(927, 1, 'SW4aPmUbTauzjpEJn6jTWQ6pDCtwF0jO', '2019-05-28 16:06:20', '2019-05-28 16:06:20'),
	(928, 1, 'iK7BkdNxhpbZgYsdgaKvkhvc0KoHGzmu', '2019-05-28 16:06:20', '2019-05-28 16:06:20'),
	(929, 1, 'Ac4uaOuHpX9GX9j2uYTYeUUcklwo7aLV', '2019-05-28 16:06:20', '2019-05-28 16:06:20'),
	(930, 1, 'SyaizOQrM6fYiYhpCSiAEnsg1rbOCwKo', '2019-05-28 16:06:21', '2019-05-28 16:06:21'),
	(931, 1, 'j1k67dR200uB9R3V7BB7o1FN0yLmVJV0', '2019-05-28 16:06:40', '2019-05-28 16:06:40'),
	(932, 1, 'EKamDVHp4FWVMxseSAW9orqaTh8cJGz7', '2019-05-28 16:06:40', '2019-05-28 16:06:40'),
	(933, 1, 'ce2RtGET1LZzAd3MLGhZMaCXPZWrVu7B', '2019-05-28 16:06:40', '2019-05-28 16:06:40'),
	(934, 1, 'Gtrp16uUHpIdrsWCtnfdypJIUpsTlUF2', '2019-05-28 16:06:41', '2019-05-28 16:06:41'),
	(935, 1, 'R1ZOGWPqgQBMkdAPkNjtEyNuDTGR91bA', '2019-05-28 16:09:21', '2019-05-28 16:09:21'),
	(936, 1, 'Nzt6VfGhr2WjKD5E7Fs4x1nBlhUIPzxX', '2019-05-28 16:09:21', '2019-05-28 16:09:21'),
	(937, 1, 'FCbquXZzBJiFIHHkD9pZnfOeJdK7tdVG', '2019-05-28 16:09:21', '2019-05-28 16:09:21'),
	(938, 1, 'FMs2g32nA7on1aPTv6ndG1M5nB45DPwY', '2019-05-28 16:09:24', '2019-05-28 16:09:24'),
	(939, 1, '2aIBOmMAbTwF4o8euT6dMJ0gFrAdx9CG', '2019-05-28 16:53:44', '2019-05-28 16:53:44'),
	(940, 1, 'CXRsgwz3hnQcvy0YwPARlpaDeCDl4RcK', '2019-05-28 16:53:44', '2019-05-28 16:53:44'),
	(941, 1, '8979iKMxrWzpQ2udvOWUSV7dLyXbX1tW', '2019-05-28 16:53:44', '2019-05-28 16:53:44'),
	(942, 1, 'k8E5NtUHEyEd5qXF6zhcQmJk9fk6QP0m', '2019-05-28 16:53:45', '2019-05-28 16:53:45'),
	(943, 1, 'amOwiAxqtzkhGehysAlfUA2KbZGyYHcO', '2019-05-28 18:03:34', '2019-05-28 18:03:34'),
	(944, 1, 'P6aXZhDweIuomFONEtVJIPpsFjG2YtBF', '2019-05-28 18:03:34', '2019-05-28 18:03:34'),
	(945, 1, 'eE2D1HyqcGX1pxAtLK2nt39jf8giPPCW', '2019-05-28 18:03:34', '2019-05-28 18:03:34'),
	(946, 1, '3guP4Kjb5xzGpT0yReZnuxH8UPXyS6yS', '2019-05-28 18:03:34', '2019-05-28 18:03:34'),
	(947, 1, 'rtTgSzAiJUZnlgMkrYpPqUha08dWYBVH', '2019-05-28 18:03:34', '2019-05-28 18:03:34'),
	(948, 1, '537u9SJEUaRZnUy2STS893moQpnaoG4k', '2019-05-28 18:03:35', '2019-05-28 18:03:35'),
	(949, 1, 'wgHkDQvqnU4lVlvryvGuylHpKVliWQ7C', '2019-05-28 18:03:36', '2019-05-28 18:03:36'),
	(950, 1, 'uC96haJLXjwY4S2BpwlUs8AoQbMrSjYh', '2019-05-28 18:03:36', '2019-05-28 18:03:36'),
	(951, 1, '9Th2RAFWlkCvnyKPzizzdYtAvGF5d7Gg', '2019-05-28 18:04:21', '2019-05-28 18:04:21'),
	(952, 1, 'HHu46MIC3YgEIIOaAiXauAUmEdWpoZ7e', '2019-05-28 18:04:21', '2019-05-28 18:04:21'),
	(953, 1, 'jVXiYZn5faLEVlmSTFZYSg3rHo2FR4ME', '2019-05-28 18:04:22', '2019-05-28 18:04:22'),
	(954, 1, '8X3YRKbWAc9KN9BG9V9bF2Pl8z9f65j3', '2019-05-28 18:04:22', '2019-05-28 18:04:22'),
	(955, 1, 'olraieuD5IwZu8Ivl6kIWlxWsmjaxh4d', '2019-05-28 18:04:22', '2019-05-28 18:04:22'),
	(956, 1, 'k6fEZqkVqzcSol0lu3AXkUSiEVkYxgZW', '2019-05-28 18:04:22', '2019-05-28 18:04:22'),
	(957, 1, 'tFCrv4K1pAaTvU8dGCjO2seruIpWsYH0', '2019-05-28 18:04:22', '2019-05-28 18:04:22'),
	(958, 1, 'i5fCDg0iIqsHQsKvY4vhc3CSeis3JZFW', '2019-05-28 18:04:22', '2019-05-28 18:04:22'),
	(959, 2, 'CQUgLPQrcGogttikuPxTbiRS8GlDObFY', '2019-06-04 10:42:20', '2019-06-04 10:42:20'),
	(960, 1, 'AQW9Xx3On4fIp7r2rjHebnpIrU9wCXoU', '2019-06-06 09:16:50', '2019-06-06 09:16:50'),
	(961, 1, 'IRmz0OhxxDopR08mr9ZXp7o1MDj296sM', '2019-06-06 09:16:50', '2019-06-06 09:16:50'),
	(962, 1, 'llnhGHAaJv90GyHFFvfbnIlyh69t8l8i', '2019-06-06 09:16:50', '2019-06-06 09:16:50'),
	(963, 1, 'BVbzkd18Mj2FJrgOMvSQAdBCJThJrHfQ', '2019-06-06 09:16:52', '2019-06-06 09:16:52'),
	(964, 1, 'ipYNumRQfWkjBrS7RLaU5Ez8N0IlhtNH', '2019-06-06 09:17:36', '2019-06-06 09:17:36'),
	(965, 1, 'Q6FvwWDV3IpRBUEPWxgoeAPN6hAmynqH', '2019-06-06 09:17:36', '2019-06-06 09:17:36'),
	(966, 1, '0hJ9T9B7ikyC9PTRtmUy4UJO8wvsBxSQ', '2019-06-06 09:17:36', '2019-06-06 09:17:36'),
	(967, 1, 'YpJXvAeNY6BJISkyIrxLqBIz3WNLraPt', '2019-06-06 09:17:37', '2019-06-06 09:17:37'),
	(968, 1, 'ij8vUHEWUJTDVqnGkqBkE3NwgDdTm49K', '2019-06-06 09:39:23', '2019-06-06 09:39:23'),
	(969, 1, 'JXLIEBS5RlUFYhfgE7DTfxjGmMk19vHD', '2019-06-06 09:39:23', '2019-06-06 09:39:23'),
	(970, 1, 'A3Js2pN4a4FPIVVsMlTJwpNu3lwufxpG', '2019-06-06 09:39:23', '2019-06-06 09:39:23'),
	(971, 1, 'qJpT6XoCm9JQYmWG0QjA91y2VjNfRdxO', '2019-06-06 09:39:23', '2019-06-06 09:39:23'),
	(972, 1, 'ktrpuqbbnsOyNR7HSfr93lbR3ijT1Ivf', '2019-06-06 09:39:23', '2019-06-06 09:39:23'),
	(973, 1, 'fYHAqrgzuWokzlKsSWYqZl76iZnoKffW', '2019-06-06 09:39:24', '2019-06-06 09:39:24'),
	(974, 1, '21ePOeHfpLSn1tyYqltDuCDUCXerzdh3', '2019-06-06 09:39:24', '2019-06-06 09:39:24'),
	(975, 1, 'eZRVA722dLfbEweCDiSq5oj2mcxibzLe', '2019-06-06 09:39:25', '2019-06-06 09:39:25'),
	(976, 1, 'iLBWQF2DSxU4D2FgsM0rztEqZgQZD91y', '2019-06-06 09:39:37', '2019-06-06 09:39:37'),
	(977, 1, 'rKS7Lk8O8E48RrEzCPn5KN98QK7y0s6i', '2019-06-06 09:39:37', '2019-06-06 09:39:37'),
	(978, 1, '6SvKmVn8DLTKCqbhYTSnA4IgJRJNPaJA', '2019-06-06 09:39:37', '2019-06-06 09:39:37'),
	(979, 1, 'xEXRwqPeImKitYfryIsH2qmk79n0FWU1', '2019-06-06 09:39:37', '2019-06-06 09:39:37'),
	(980, 1, 'VUlENLwMyuu2O4HBnHv9Hx3uBXW4Jiot', '2019-06-06 09:39:37', '2019-06-06 09:39:37'),
	(981, 1, 'pFC2QcsjSv9gLHgbhCuarKZTdau5mhIf', '2019-06-06 09:39:39', '2019-06-06 09:39:39'),
	(982, 1, 'Z2TYa8YuMEnddPR6A89NvI0EvpxTSQM0', '2019-06-06 09:39:39', '2019-06-06 09:39:39'),
	(983, 1, 'd3t8gNZtQTCRSIKWaKrr1He1AnFiwweK', '2019-06-06 09:39:40', '2019-06-06 09:39:40'),
	(984, 1, 'v0Q93ARRgNpTXQvnnunAkOTMwLSyM2eR', '2019-06-06 09:52:34', '2019-06-06 09:52:34'),
	(985, 1, 'IgZ0oFiPudbtMsQy9L7j5CbR2YpjwOH6', '2019-06-06 09:52:34', '2019-06-06 09:52:34'),
	(986, 1, 'GSLiPA0HcDfezGQd1yK6T6nN8vjJFHfv', '2019-06-06 09:52:34', '2019-06-06 09:52:34'),
	(987, 1, 'J2Cgq3YIlz1RrOJ6QA3NKLfEZmBq9lqh', '2019-06-06 09:52:34', '2019-06-06 09:52:34'),
	(988, 1, '0rkX3qN6CXpzvQa1IP1NdOIGOsgJZLQO', '2019-06-06 09:52:34', '2019-06-06 09:52:34'),
	(989, 1, 'qiSrwOIBgFedxVGytZMB61ay3IP2O47t', '2019-06-06 09:52:34', '2019-06-06 09:52:34'),
	(990, 1, 'v3m9PnWP0VNheEuGJI9ZA0kP7T63iKcp', '2019-06-06 09:52:35', '2019-06-06 09:52:35'),
	(991, 1, 'eOWIH6zMPq7l5tJ20fVMZ0n8qjA2MMFr', '2019-06-06 09:52:35', '2019-06-06 09:52:35'),
	(992, 1, 'sEiELN6bTiED5DfgIrTgrdeHvmAEjxFy', '2019-06-06 10:05:40', '2019-06-06 10:05:40'),
	(993, 1, 'HIY7vgHbpLtSF6BdVQoJjE4xzuChJefh', '2019-06-06 10:05:40', '2019-06-06 10:05:40'),
	(994, 1, 'kHpu7SFT2WveCWZJkzeGAMUd7uYnh5sT', '2019-06-06 10:05:40', '2019-06-06 10:05:40'),
	(995, 1, 'xSTFTdfjEVbyCJQrHotfFnebGDT5FKMQ', '2019-06-06 10:05:41', '2019-06-06 10:05:41'),
	(996, 1, 'TBtx4MuR2kCHyzVoK626LTB7zGr4D6es', '2019-06-06 13:02:07', '2019-06-06 13:02:07'),
	(997, 1, 'BWor4d0Fkksb3S8VfmRbkYv3K7osuTAk', '2019-06-06 13:10:54', '2019-06-06 13:10:54'),
	(998, 1, 'KW9lqWR79iJ6H7JyCFaRoUyrT25Ygpqe', '2019-06-06 13:10:54', '2019-06-06 13:10:54'),
	(999, 1, '0VDs5sBoIi9ArM0CgdjuVd8WSxNBkFw6', '2019-06-06 13:12:31', '2019-06-06 13:12:31'),
	(1000, 1, '1NRv09Vit5TvYnhd9PodTLifv42VeE5p', '2019-06-06 13:12:31', '2019-06-06 13:12:31'),
	(1001, 1, 'Ifu4iW7mq6sR7wCff50hZtQriiscWLSQ', '2019-06-06 13:48:31', '2019-06-06 13:48:31'),
	(1002, 1, '8reHCfLzGuR9F1ua4HS9qSXeDjD5BXif', '2019-06-06 13:48:31', '2019-06-06 13:48:31'),
	(1003, 1, 'uSQRvTYpqGAHl0H4VeKPWkRUCVXYrQZC', '2019-06-06 13:56:35', '2019-06-06 13:56:35'),
	(1004, 1, 'hHaw3Yo2WM3qM46Ru1mL6yihkdBWpgPK', '2019-06-06 13:56:35', '2019-06-06 13:56:35'),
	(1005, 1, 'e3sevUKWJk7Hr1rHet3CJJIoaszpxuCa', '2019-06-07 18:58:06', '2019-06-07 18:58:06'),
	(1006, 1, 'IjnuQI3uW2H6nZVfpuke4oxiaUvir7iF', '2019-06-07 18:58:16', '2019-06-07 18:58:16'),
	(1007, 1, 'MXNnYM9TnQj5xhZkgWk8gpEhAMWiQQ82', '2019-06-07 18:58:18', '2019-06-07 18:58:18'),
	(1008, 1, 'P7WBgwx9bxa2NRfHOkRMCE4YTwYcuVcF', '2019-06-07 18:58:18', '2019-06-07 18:58:18'),
	(1009, 1, 'IwM0aHRKBIAIxmgbn3aCfCfHu9WcjUp9', '2019-06-07 18:58:26', '2019-06-07 18:58:26'),
	(1010, 1, 'FCEsVXKQfNJXHX4qCI7MFmPr9470xdGP', '2019-06-07 18:58:26', '2019-06-07 18:58:26'),
	(1011, 1, 'BzlpakiUqB9h2DisSIAT5m1W0KremxEd', '2019-06-07 19:02:38', '2019-06-07 19:02:38'),
	(1012, 1, 'znMspf5PUgdWCcakxEyrYk7yfEnU8bm9', '2019-06-07 19:02:40', '2019-06-07 19:02:40'),
	(1013, 1, 'EmjXoeHHaJzsgeQqDymsOCMNZ8CwXa4q', '2019-06-07 19:02:40', '2019-06-07 19:02:40'),
	(1014, 1, 'pTjAmoCRJw5FzXQ6kkurQJ69M8ihzTGF', '2019-06-07 19:02:47', '2019-06-07 19:02:47'),
	(1015, 1, 'xAwd7aYMdcHnA8wFwWLi5T7UnBjOT5i9', '2019-06-07 19:02:47', '2019-06-07 19:02:47'),
	(1016, 1, 'xUMFwTWaYfekjqlTnVioU7UMbePRGjd8', '2019-06-07 19:02:50', '2019-06-07 19:02:50'),
	(1017, 1, 'twrln9oBDjD73pOzBjRBlponIcyz2XbP', '2019-06-07 19:02:50', '2019-06-07 19:02:50'),
	(1018, 1, 'ImTEadtHTpJOa45T0WUjEve5rwqmShP4', '2019-06-07 19:03:05', '2019-06-07 19:03:05'),
	(1019, 1, 'AnbAUbdT03RRhzp8DAbiGUv5MhzB7Eao', '2019-06-07 19:03:11', '2019-06-07 19:03:11'),
	(1020, 1, 'pWOnJUmLmB39BCJIPJF3xrvufWMk7qGB', '2019-06-07 19:03:12', '2019-06-07 19:03:12'),
	(1021, 1, 'NW1Z8n6da8jZlZtMFqogXSTfJButEC4L', '2019-06-07 19:03:12', '2019-06-07 19:03:12'),
	(1022, 1, 'sVpKEKxHPDUwUUCBrqVj0HzRVvyFrRJY', '2019-06-07 19:03:25', '2019-06-07 19:03:25'),
	(1023, 1, 'H9fljaOmCn0rVZuFUeJ0lVbkcYgoPIQq', '2019-06-07 19:03:26', '2019-06-07 19:03:26'),
	(1024, 1, '18jy1Gafvlz5i9wCgciIfWmRz1nKpIdV', '2019-06-08 13:14:39', '2019-06-08 13:14:39'),
	(1025, 1, 'Kempa5kQdM7uIGxIjOmd7rnueQpxOiUi', '2019-06-08 13:14:53', '2019-06-08 13:14:53'),
	(1026, 1, 'pRSmTpiTYdk5B9k21GW5YgPU1z7PfSqq', '2019-06-08 13:15:01', '2019-06-08 13:15:01'),
	(1027, 1, 'x2a8sBOoHiE04oze6DwQOP4rMvCvpKfE', '2019-06-08 13:15:11', '2019-06-08 13:15:11'),
	(1028, 1, '6psmOkItSeABIVGd0VzGZkpwfhtmal7z', '2019-06-08 14:01:06', '2019-06-08 14:01:06'),
	(1029, 1, 'EHAQyTFqFpFy3UZ3pSu8nvtQ2fgdYMD8', '2019-06-08 14:01:06', '2019-06-08 14:01:06'),
	(1030, 1, 'qttl1LEf3wJzp185XqjsYpnYljc9Zro4', '2019-06-08 14:01:13', '2019-06-08 14:01:13'),
	(1031, 1, 'wNJNZslIenHl1vrXsEsv7AZ5b2SqvaDl', '2019-06-08 14:01:13', '2019-06-08 14:01:13'),
	(1032, 1, 'ZchFbAw3J2d8b8QgbuBQaTgKVlBv3sOu', '2019-06-08 15:40:33', '2019-06-08 15:40:33'),
	(1033, 1, '4xDggixIYaGagOjmOf4vJ3B3kp5bJ5Ou', '2019-06-08 15:40:42', '2019-06-08 15:40:42'),
	(1034, 1, 'v7x5dWdAwtWGohkvidPBMxhs3dBif9MO', '2019-06-08 15:40:52', '2019-06-08 15:40:52'),
	(1035, 1, 'C2tihSC7wXayHvzp4khB4NHnYAzWm39Z', '2019-06-10 14:59:24', '2019-06-10 14:59:24'),
	(1036, 1, 'hWKo20DjWCDIo7pSaJWKVgTdHmMzqYrY', '2019-06-10 14:59:24', '2019-06-10 14:59:24'),
	(1037, 1, 'phxy6KajQPWnEpXI5HyEiNKWtaWTCbKo', '2019-06-10 15:03:14', '2019-06-10 15:03:14'),
	(1038, 1, 'zPsf6ztxZ52azwCeHafV7I43GuLxcmY7', '2019-06-10 15:25:53', '2019-06-10 15:25:53'),
	(1039, 1, 'glNL3f3YSsoZ7WIXgEWWi8IXCn4XZE4Y', '2019-06-10 15:25:53', '2019-06-10 15:25:53'),
	(1040, 1, 'SeyF9AC4mLqyN0p1TqKMFo8OnZjDFnDN', '2019-06-10 15:25:53', '2019-06-10 15:25:53'),
	(1041, 1, '2txcP39rmweofpkq2lRAUlWCgAPqYmkk', '2019-06-10 15:25:53', '2019-06-10 15:25:53'),
	(1042, 1, 'o0snWZ6bM1E6pe7hw5hAMAxa1LEdwiTQ', '2019-06-10 15:25:53', '2019-06-10 15:25:53'),
	(1043, 1, 'OpJ4XKDo57WEcknr5kYOkwN4kyCOiilr', '2019-06-10 15:25:53', '2019-06-10 15:25:53'),
	(1044, 1, 'OHwtJpKwJuRwoUKQGIkpkT1KpBiAUcqR', '2019-06-10 15:25:54', '2019-06-10 15:25:54'),
	(1045, 1, 'uXQOzTXUYWHWH6LSe3rZuFxYNlMf4FH9', '2019-06-10 15:25:54', '2019-06-10 15:25:54'),
	(1046, 1, 'yACI3kLUCyL6NiPoLmhAPHkgedekJGn2', '2019-06-10 15:29:34', '2019-06-10 15:29:34'),
	(1047, 1, 'cUR3UoFUBWW5tRZan7XncgVW20LmbeQN', '2019-06-10 15:29:35', '2019-06-10 15:29:35'),
	(1048, 1, '9RvOfLJGhnXqerjNbQLVEvsw4Cmk5PFq', '2019-06-10 15:29:35', '2019-06-10 15:29:35'),
	(1049, 1, 'wNRVtP8XfsiEm8d04tdVQ2PKk4KnrsUC', '2019-06-10 15:29:35', '2019-06-10 15:29:35'),
	(1050, 1, '87eTkjU5lqcbVkovba69il75HQTmPH01', '2019-06-10 15:29:35', '2019-06-10 15:29:35'),
	(1051, 1, 'fjXmQrGARRQuAoZHe7Br2ofMN3uuhyE9', '2019-06-10 15:29:35', '2019-06-10 15:29:35'),
	(1052, 1, 'qV5iUV2IXqVhd3Nf5wpezFV5cxc2hDin', '2019-06-10 15:29:35', '2019-06-10 15:29:35'),
	(1053, 1, 'QwQMNpMXQRr1zJKqRwm1kncsNQl1jaM7', '2019-06-10 15:29:36', '2019-06-10 15:29:36'),
	(1054, 1, 'bQy6W8RUexc0vZUh4lib2PH3NM8F5aVT', '2019-06-14 10:23:50', '2019-06-14 10:23:50'),
	(1055, 1, 'P8akJvpiMhM5U5KXKYpoxQUAkp9mz3er', '2019-06-14 10:24:43', '2019-06-14 10:24:43'),
	(1056, 1, 'bDVpoy2ztdm9tISOwEWtkAnFxTNIk07l', '2019-06-14 10:24:43', '2019-06-14 10:24:43'),
	(1057, 1, '3n3VNgsnTKcHolbfRjmnYUVkKmBRu0uc', '2019-06-14 10:24:43', '2019-06-14 10:24:43'),
	(1058, 1, 'AmRCt9NRaFNa2dnWMqwPfKlPE5mjYP9I', '2019-06-14 10:24:43', '2019-06-14 10:24:43'),
	(1059, 1, 'ZQZ5TjrlagLfXpaA7UsCOepssDGIRVfg', '2019-06-14 10:24:44', '2019-06-14 10:24:44'),
	(1060, 1, '5JgT1rJKzPUoLy1toS9Be8jdpXyyGfBO', '2019-06-14 10:24:44', '2019-06-14 10:24:44'),
	(1061, 1, 'XJ0Y73iHEDhT8BBST2n47XANdOQUg2CH', '2019-06-14 10:24:44', '2019-06-14 10:24:44'),
	(1062, 1, 'bhob5MzQ7irAnTnpEDom7lRqONj23jp9', '2019-06-14 10:24:45', '2019-06-14 10:24:45'),
	(1063, 1, '4Cl2fwF56CQQQ1S3R7UpbG39njWhkqwS', '2019-06-14 10:32:12', '2019-06-14 10:32:12'),
	(1064, 1, 'NbW3IeZ7kjm1mxQWpdtBRoi6ZfxxXmQI', '2019-06-14 10:32:12', '2019-06-14 10:32:12'),
	(1065, 1, 'OXe5vWrda5WanKj34WN3YPbDcGGixSck', '2019-06-14 10:32:12', '2019-06-14 10:32:12'),
	(1066, 1, 'nhwRgf5cVYEDbyEUrvGhknkTZbhu8bEz', '2019-06-14 10:32:13', '2019-06-14 10:32:13'),
	(1067, 1, 'IeHMuneRlPqLMa86e30B7S8oeRQ0V5Ul', '2019-06-14 18:36:08', '2019-06-14 18:36:08'),
	(1068, 1, 'hnnv8MA0z3gqymcDptNdAxrKEfYfoopF', '2019-06-14 18:36:57', '2019-06-14 18:36:57'),
	(1069, 1, 'jmAYW239GbL3Lswc1OVezi5XIkEtteYj', '2019-06-14 18:36:57', '2019-06-14 18:36:57'),
	(1070, 4, 'o4ugsy1emUvpBSleCQFf8e4lpySAYzWN', '2019-06-14 18:45:41', '2019-06-14 18:45:41'),
	(1071, 1, 'r1lmdxFG6tYMG0mZuSZnIY4CBg2yr7pU', '2019-06-14 18:46:23', '2019-06-14 18:46:23'),
	(1072, 4, 'teVuTWEkoaoc5GQcOe2WLdc6ayPEsd7F', '2019-06-14 18:48:17', '2019-06-14 18:48:17'),
	(1073, 4, 'Gi6eR6tzlWcc3Bbqq0AQIoCEcnbsSbCp', '2019-06-14 18:48:29', '2019-06-14 18:48:29'),
	(1074, 4, 'YZEp57s96Eonlqj6aZWfB8aHB8nwDlkS', '2019-06-14 18:48:31', '2019-06-14 18:48:31'),
	(1075, 1, 'sfcEh58VZxdWNmQJH3TY9RqFsbs46H1Q', '2019-06-14 18:49:12', '2019-06-14 18:49:12'),
	(1076, 4, 'VGkUD2YCnRjIdgBF5KVOg2VQ8yqcsHH0', '2019-06-14 18:52:20', '2019-06-14 18:52:20'),
	(1077, 4, 'U7PStcIxBhOo8JJHIBkKg6kClQ2YGYBN', '2019-06-14 18:52:52', '2019-06-14 18:52:52'),
	(1078, 4, 'Vi0wy1hi4fDavmZITCnREHHchgNQW3Q8', '2019-06-14 18:52:52', '2019-06-14 18:52:52'),
	(1079, 4, 'heOWtI7GF2M4LE5vdnwaJqoolKHGynJJ', '2019-06-14 18:57:34', '2019-06-14 18:57:34'),
	(1080, 4, '62FWgiSLBJtSkS2EAf8A3XvABCzII8gt', '2019-06-15 09:21:49', '2019-06-15 09:21:49'),
	(1081, 4, 'RBLIM0JrwzMamUbDM2wpzBLBuTB3Roiw', '2019-06-15 09:26:33', '2019-06-15 09:26:33'),
	(1082, 1, 'x9Wc49eX0hEy3vulvM1U5lnr1AQqcLWY', '2019-06-15 09:27:15', '2019-06-15 09:27:15'),
	(1083, 1, 'VSPDMNiEA2pSXoTLL01TckhJ79Fp9502', '2019-06-15 09:27:24', '2019-06-15 09:27:24'),
	(1084, 1, '94euZeUi1liLY03q0HNwcBbrJX93yMX4', '2019-06-15 09:27:30', '2019-06-15 09:27:30'),
	(1085, 1, 'Gd74gRQpSPCU400wFWuJkuQYqnpkjS2S', '2019-06-15 09:27:31', '2019-06-15 09:27:31'),
	(1086, 4, 'xCBei62vvuqy5XTENp4L2MJQbir8lPi1', '2019-06-15 09:30:38', '2019-06-15 09:30:38'),
	(1087, 4, 'pkh3aqrLg5Rfc8JxfFO6VJ4bc3Tmsd8f', '2019-06-15 09:30:46', '2019-06-15 09:30:46'),
	(1088, 4, 'KMkLqghVFkSeJzEXBXACAUuLc8uxqNRz', '2019-06-15 09:30:50', '2019-06-15 09:30:50'),
	(1089, 4, 'zV5gzOwGVDK91qQDl3HpfyCAmAYo2tO3', '2019-06-15 09:31:03', '2019-06-15 09:31:03'),
	(1090, 4, 'Fon75AazQQyrKTE1mioruTludP0YwBsG', '2019-06-15 09:31:03', '2019-06-15 09:31:03'),
	(1091, 4, 'zbWpaMulx4LkcLP66oHXh9v8rSdb3p1y', '2019-06-15 09:31:36', '2019-06-15 09:31:36'),
	(1092, 4, '3oGRA2flSIDUsV947fu0ITW9C9Ca0a9n', '2019-06-15 09:31:38', '2019-06-15 09:31:38'),
	(1093, 4, '4v9X1LCGPsvkqkkCMzaHkxyJKLKjhmyp', '2019-06-15 09:31:50', '2019-06-15 09:31:50'),
	(1094, 4, '6q7emq3VsO91tAnJdVe9Z632S61GMQqU', '2019-06-15 09:31:51', '2019-06-15 09:31:51'),
	(1095, 4, '8BV0PYoIJCrHxvf58Y72pvqaJm5LzKR1', '2019-06-15 11:43:59', '2019-06-15 11:43:59'),
	(1096, 4, 'MNUMqYaEVL1dSB6wXroDhzmfVzPW8Aqg', '2019-06-15 11:48:25', '2019-06-15 11:48:25'),
	(1097, 2, 'oPatmUc8ULukWacq9JqiNj7qn7pcDGa6', '2019-06-19 11:32:00', '2019-06-19 11:32:00'),
	(1098, 2, '5l2UcqZjYDA9D8rFhtW0MW6eBYjnI79P', '2019-06-19 11:32:00', '2019-06-19 11:32:00'),
	(1099, 2, 'S3f5C6dtblswbJiIgXAdKkPIod1M5wt6', '2019-06-19 11:32:00', '2019-06-19 11:32:00'),
	(1100, 2, '1s70N8KCidBh3BhsDhQvbSJg0hZULX8S', '2019-06-19 11:32:00', '2019-06-19 11:32:00'),
	(1101, 2, 'HVCOVK75QZ4wIofPrX3tdMvbEVGWtbzZ', '2019-06-19 11:32:00', '2019-06-19 11:32:00'),
	(1102, 2, 'pc2fU1otnRX6VVyRbFmngNbnYfKh1GtA', '2019-06-19 11:32:01', '2019-06-19 11:32:01'),
	(1103, 2, '91yqHL6NHZNynov1OG6mvAUmgbMXHy2i', '2019-06-19 11:32:01', '2019-06-19 11:32:01'),
	(1104, 2, 'VUa9SM1V26jtqLwKAsj1Gpbi8ONCfrT2', '2019-06-19 11:32:02', '2019-06-19 11:32:02'),
	(1105, 2, '4XU5K5vd8TeaROnosLSYg1l0dPOtrjX1', '2019-06-19 11:33:37', '2019-06-19 11:33:37'),
	(1106, 2, 'zLSjjuwnZhsEFv5WaqpSOPLhR7KqvFxU', '2019-06-19 11:33:37', '2019-06-19 11:33:37'),
	(1107, 2, 'x2mujrXZztPBhVqswuaQccnyboPR98aS', '2019-06-19 11:33:37', '2019-06-19 11:33:37'),
	(1108, 2, '0vkSFXWMcmCBKXT0VgFEWU845Z21SdxK', '2019-06-19 11:33:37', '2019-06-19 11:33:37'),
	(1109, 2, 'tqshUpUw2kv3UNH4K8wnTQLKSKTy7sVz', '2019-06-19 11:33:37', '2019-06-19 11:33:37'),
	(1110, 2, 'opWivSTbcmIvF3uJwnmxL0jeJOZSfYyL', '2019-06-19 11:33:37', '2019-06-19 11:33:37'),
	(1111, 2, 'DplMSj59rNZvdJACNqRpsP8Ri8eXXRNc', '2019-06-19 11:33:38', '2019-06-19 11:33:38'),
	(1112, 2, 'jrgeeujitprkVh4t2Q7u3YOkXABF1AMG', '2019-06-19 11:33:38', '2019-06-19 11:33:38'),
	(1113, 2, 'Oyiyo6vLmm5wbGU3w2FnwSquGCTQZp3Z', '2019-06-19 11:35:15', '2019-06-19 11:35:15'),
	(1114, 2, 'mCorIQ6tI2TLe6lBMm4rToeApNk0LU7h', '2019-06-19 11:35:16', '2019-06-19 11:35:16'),
	(1115, 2, 'ZLiFFXqjXTOwW45skVuEqWgch4nksKrP', '2019-06-19 11:35:16', '2019-06-19 11:35:16'),
	(1116, 2, 'DXvm3emxg0ApqOleaNHPzu1dI1VcGrp3', '2019-06-19 11:35:16', '2019-06-19 11:35:16'),
	(1117, 2, 'b0bcMvamCiaGnUNf7F9MWxJCnXPkbSLZ', '2019-06-19 11:35:16', '2019-06-19 11:35:16'),
	(1118, 2, 'JRE6XtukEPQj31F9lWfQEbubz5AbnCWS', '2019-06-19 11:35:16', '2019-06-19 11:35:16'),
	(1119, 2, 'UupKhvyLe6FptTnSYo7tyz8Pwrqo3TB7', '2019-06-19 11:35:16', '2019-06-19 11:35:16'),
	(1120, 2, 'fU7huJPiAEwJ2B35N8Sl2epgEcLMsiUw', '2019-06-19 11:35:16', '2019-06-19 11:35:16'),
	(1121, 2, 'TYKaatGRVFRWzij5I4v4k8QMMUOHA8YQ', '2019-06-19 11:37:52', '2019-06-19 11:37:52'),
	(1122, 2, 'rlBzrxearTiRWWi3SsBruNYdkRqmyudO', '2019-06-19 11:37:52', '2019-06-19 11:37:52'),
	(1123, 2, 'x5a6BmMJbbi3f8epT1cYYGUxDXTPlxKB', '2019-06-19 11:37:52', '2019-06-19 11:37:52'),
	(1124, 2, 'WzBSkekwZ1em1TVFKvOIRwRUkkRm96xI', '2019-06-19 11:37:52', '2019-06-19 11:37:52'),
	(1125, 2, 'JK6qDKygq9xi9LUwbwFHSy5qFAZQDdCz', '2019-06-19 11:37:52', '2019-06-19 11:37:52'),
	(1126, 2, 'DlD2vKeN4j7uQWHVWCwdpplZuovfOGKd', '2019-06-19 11:37:53', '2019-06-19 11:37:53'),
	(1127, 2, '4PAolAYEqsaCoiMLCiDs2HUeG1yflm0H', '2019-06-19 11:37:53', '2019-06-19 11:37:53'),
	(1128, 2, 'gtkj7hpkewyj7KHjOLdAMTXj0S3xE3y0', '2019-06-19 11:37:53', '2019-06-19 11:37:53'),
	(1129, 1, 'HYExJ5daPeTwRUjHiCRAvqOIoUHAajwN', '2019-06-19 12:10:36', '2019-06-19 12:10:36'),
	(1130, 1, 'gjoF8GY4iUACDgD2h2cvv5023tevSVul', '2019-06-19 12:10:36', '2019-06-19 12:10:36'),
	(1131, 1, 'w5M1YSnSgxRqTB0CGXWoklMED7xYfqls', '2019-06-19 12:10:36', '2019-06-19 12:10:36'),
	(1132, 1, 'my0lRlROU36BzTsqLtIS6ERw1qNP1jKx', '2019-06-19 12:10:37', '2019-06-19 12:10:37'),
	(1133, 1, 'PkNqtG2E7e5v7gXNQ5pftEyKpMWvLmeo', '2019-06-19 14:24:14', '2019-06-19 14:24:14'),
	(1134, 1, '5XMem5JbkKXKVWRsr5fEX07OlYZkXGf3', '2019-06-19 14:25:30', '2019-06-19 14:25:30'),
	(1135, 1, 'T5Mflr88qgKfVvsCwIpd1cnI4ADtEwQF', '2019-06-19 14:26:01', '2019-06-19 14:26:01'),
	(1136, 1, 'cl0OIN7jgX8lwYeo0aptZvhCM48BYSnI', '2019-06-19 14:26:02', '2019-06-19 14:26:02'),
	(1137, 1, 'w0Gf4xitPfOPqFsLSzbJkdc1D92h0TKg', '2019-06-19 14:26:50', '2019-06-19 14:26:50'),
	(1138, 1, 'ZxZQ7TkJLt2bCXd3eBaTVW9Hwpksw8nJ', '2019-06-19 14:26:52', '2019-06-19 14:26:52'),
	(1139, 1, 'A2VSmuGVB8jPLbsghYr7joe69Y8Tn4NP', '2019-06-19 14:27:03', '2019-06-19 14:27:03'),
	(1140, 1, 'DkDuDpQbDYMJfQFStIZBdKAGyqdR5pAl', '2019-06-19 14:27:17', '2019-06-19 14:27:17'),
	(1141, 1, 'YUWvsELJ4ZceJhPaLKG3bqmSErsZj8YB', '2019-06-19 14:27:18', '2019-06-19 14:27:18'),
	(1142, 1, 'KL4r2oLY9QwtKh9y0U9fFrpFTRv2hgPz', '2019-06-19 14:27:30', '2019-06-19 14:27:30'),
	(1143, 1, 'Gp1iCbrFhaz7zIMjimGgDa941L5c2Eaz', '2019-06-19 14:27:30', '2019-06-19 14:27:30'),
	(1144, 1, 'bQTgycrUCQ9qEWkaulOVjuunPBhmMIEF', '2019-06-19 14:27:49', '2019-06-19 14:27:49'),
	(1145, 1, 'KngV1JORE7qAlmQXOF08nCb7gEYJlMKe', '2019-06-19 14:27:49', '2019-06-19 14:27:49'),
	(1146, 1, 'hipeQJRsW5wzyZYvp1skmcQ8kGV8l4Wm', '2019-06-19 14:28:08', '2019-06-19 14:28:08'),
	(1147, 1, 'sKa7C1giBkhDcfxwEwXDzHPfWRsef1n7', '2019-06-19 14:28:08', '2019-06-19 14:28:08'),
	(1148, 1, 'DgTqCiehEz2bj3IBRhEpo4pDVzvelEPl', '2019-06-19 14:28:14', '2019-06-19 14:28:14'),
	(1149, 1, 'INETL4eG0QP7hMLB2KRMqpUnjedfJ58c', '2019-06-19 14:28:29', '2019-06-19 14:28:29'),
	(1150, 1, 'cEOfQrlPHpcD7s2ZEuzDtLoE4fvGffv0', '2019-06-19 14:28:29', '2019-06-19 14:28:29'),
	(1151, 1, 'mnVh7rNF8B7eaNSvbsIrmuufuFRiQhrr', '2019-06-19 14:28:39', '2019-06-19 14:28:39'),
	(1152, 1, 'r5PP3LJddJhOf5IRQCisCLgZlHDXWxfu', '2019-06-19 14:28:48', '2019-06-19 14:28:48'),
	(1153, 1, 'VwriftuCki0qKxSHLG7KXMeB1jkNxkot', '2019-06-19 14:28:50', '2019-06-19 14:28:50'),
	(1154, 1, 's771jfJUvxYheer21ZnB6sMOCYc4QqVz', '2019-06-19 14:30:16', '2019-06-19 14:30:16'),
	(1155, 1, 'A3JLGR6CqdpdmI5rV9X2ts22qjc7p3iD', '2019-06-19 14:30:16', '2019-06-19 14:30:16'),
	(1156, 1, 'IxkfhGiaTAIN9Gaw3GYz4FOUDRlJIyGn', '2019-06-19 14:30:22', '2019-06-19 14:30:22'),
	(1157, 1, '5jMZOwd6BayUGA7lUtmUF7JTNFgbS1Pc', '2019-06-19 14:30:22', '2019-06-19 14:30:22'),
	(1158, 1, 'IMTDL256r08Zu2Xq1cZRPCJpPLMj3AVj', '2019-06-19 14:30:27', '2019-06-19 14:30:27'),
	(1159, 1, '9XRBhbkUDMhBXpnFdcvk4BvANG8MkKXE', '2019-06-19 14:30:27', '2019-06-19 14:30:27'),
	(1160, 1, 'ZbWIII080nchtdDcEI4WTdNP3pVvLvPH', '2019-06-19 14:30:34', '2019-06-19 14:30:34'),
	(1161, 1, 'ytDfMj7W7nlXaCoYCttYSWak6SI1tnbj', '2019-06-19 14:30:34', '2019-06-19 14:30:34'),
	(1162, 1, 'P3QZQPnjW9PahKh8JbW4s4aGkUti6W9H', '2019-06-19 14:32:46', '2019-06-19 14:32:46'),
	(1163, 1, 'WQZbzfzsVy9xdBY4SIDLnDQq1wDqX6yI', '2019-06-19 14:33:03', '2019-06-19 14:33:03'),
	(1164, 1, 'ronIngwemdt1hWEkyyif08TGhXRfxpE5', '2019-06-19 14:33:04', '2019-06-19 14:33:04'),
	(1165, 1, 'ouVuTpenzW0itpQagKYw1aXh6U2Hff7a', '2019-06-19 14:33:13', '2019-06-19 14:33:13'),
	(1166, 1, 'h9f65UjS081MrbT6wWc2IZayRUlSnUDs', '2019-06-19 14:33:21', '2019-06-19 14:33:21'),
	(1167, 1, 'SeElXlgZyRCJ0slBJLJpAYdepvtSynO6', '2019-06-19 14:33:24', '2019-06-19 14:33:24'),
	(1168, 1, 'EQSyyZ1kb91AXsDz6mfaaXibALNSnfke', '2019-06-19 14:33:32', '2019-06-19 14:33:32'),
	(1169, 1, 'pbcE9RNlMTIiCigpVHUcZEr5YSRQZTAI', '2019-06-19 14:33:32', '2019-06-19 14:33:32'),
	(1170, 1, 'w63tZHdB0TsyIcr2MbpTUCOS9DL9wTWZ', '2019-06-19 14:33:38', '2019-06-19 14:33:38'),
	(1171, 1, 'eRx1RjBTlLvgRSjwZFMRKBsU96i4BTxo', '2019-06-19 14:33:38', '2019-06-19 14:33:38'),
	(1172, 1, 'Ds63kL3nEVrwJtkJhUCzNrtVycHH41gz', '2019-06-19 14:33:43', '2019-06-19 14:33:43'),
	(1173, 1, 'CSutcY07iL0svJ5T2xvJVvPsmLOiidRj', '2019-06-19 14:35:25', '2019-06-19 14:35:25'),
	(1174, 1, 'fpgY927Bj8u9tYSOF54m78Vkfnp9afNh', '2019-06-19 14:37:44', '2019-06-19 14:37:44'),
	(1175, 1, 'duDfRuCsDkI1EM76xEpnt8TkUnsDXOEs', '2019-06-19 14:37:54', '2019-06-19 14:37:54'),
	(1176, 1, '2V71uO6SXZUaqt9ahQl16tMq0I1jfqZI', '2019-06-19 14:37:55', '2019-06-19 14:37:55'),
	(1177, 1, 'kT5VJC2LmID7jWKpAPOuoHm3DMYRXRMG', '2019-06-19 14:38:05', '2019-06-19 14:38:05'),
	(1178, 1, 'PmIKKFYi0JoNewLmcY6GrHQjUWuXa7Gh', '2019-06-19 14:38:13', '2019-06-19 14:38:13'),
	(1179, 1, 'Kx21c6YXId0lIVoZpSs9xJzzubsx5Jii', '2019-06-19 14:38:14', '2019-06-19 14:38:14'),
	(1180, 1, 'MvxAijvtaXqyNkF0kFnY9CEpIG8UFUMl', '2019-06-19 18:32:14', '2019-06-19 18:32:14'),
	(1181, 1, 'DUfGMJHQrR2XLopg54VWtobzzhuHwGOj', '2019-06-19 18:32:14', '2019-06-19 18:32:14'),
	(1182, 1, 'EQ0Lfxys02UsXX3RCBlG5sw2R0VfySpe', '2019-06-19 18:32:14', '2019-06-19 18:32:14'),
	(1183, 1, '8iRJp0ozaKLqZFnp9ZBw2TumHf1ldsRg', '2019-06-19 18:32:14', '2019-06-19 18:32:14'),
	(1184, 1, 'Bvyxkeqprvs59Y1sBbqoRojC8c6rpBSk', '2019-06-19 18:32:14', '2019-06-19 18:32:14'),
	(1185, 1, 'ImawQMdI8HoTNHWQwYKVXsis8wANv7dT', '2019-06-19 18:32:15', '2019-06-19 18:32:15'),
	(1186, 1, 'WaXC4OhHWT3MzlJ2ce4OYCBzaZrPGwIq', '2019-06-19 18:32:15', '2019-06-19 18:32:15'),
	(1187, 1, 'IcOvehz80l8H3lnBGdrySelhE9KhP8MX', '2019-06-19 18:32:16', '2019-06-19 18:32:16'),
	(1188, 1, 'KUdgll5X0pIjmgI6tQECbCRLpKb4YADD', '2019-06-19 18:32:46', '2019-06-19 18:32:46'),
	(1189, 1, 'fNDhzGtOpTNtikv7H3aHacpJJeW5GHnZ', '2019-06-19 18:32:46', '2019-06-19 18:32:46'),
	(1190, 1, 'IR0C2BFbJA8nR9Q5a4Qi7LzOUKoETwjR', '2019-06-19 18:32:46', '2019-06-19 18:32:46'),
	(1191, 1, '7GrHfr87BEUWC0j4HQo4LaN3eygH4JCI', '2019-06-19 18:32:46', '2019-06-19 18:32:46'),
	(1192, 1, 'KEscHLQqaXrtnHiCryx5uhX8E3xiwZsn', '2019-06-19 18:32:46', '2019-06-19 18:32:46'),
	(1193, 1, 'mGyEZIOwTU2NVQDFaeyTZmdW1DG7PaxR', '2019-06-19 18:32:47', '2019-06-19 18:32:47'),
	(1194, 1, 'YC4ED0iPNesLTIDsysbcmyJXFPtJBhnA', '2019-06-19 18:32:48', '2019-06-19 18:32:48'),
	(1195, 1, 'jqWcCiV0yyhk0p3CGEwrSREVoKMRlSyh', '2019-06-19 18:32:48', '2019-06-19 18:32:48'),
	(1196, 1, 'RHHy0eguDA01xZzKVF0jiulz6QglDWkH', '2019-06-20 14:13:31', '2019-06-20 14:13:31'),
	(1197, 1, '9BxJcylhTJ6JNwzcmnGJGhYgX34bTet1', '2019-06-20 14:13:31', '2019-06-20 14:13:31'),
	(1198, 1, 'sck728yrcQ4zDCOaxOHV0JTac96m6zNW', '2019-06-20 14:13:31', '2019-06-20 14:13:31'),
	(1199, 1, 'tlFWqxUHyBLQcaxIbzwM1xcZ8929bpuF', '2019-06-20 14:13:31', '2019-06-20 14:13:31'),
	(1200, 1, '9JRpQdthIO9YhjL3dgjz8mkJ6LcBAoUX', '2019-06-20 14:13:31', '2019-06-20 14:13:31'),
	(1201, 1, '4dZ3UTMw3TTr3LMLH6Q796cRUVhn1jct', '2019-06-20 14:13:32', '2019-06-20 14:13:32'),
	(1202, 1, 'sbEEXluebZoJufIn2O0cegESe6UsVsQu', '2019-06-20 14:13:32', '2019-06-20 14:13:32'),
	(1203, 1, 'oMKQzhFsEuNfyiBu3Kh8zzQqFPTDQaYu', '2019-06-20 14:13:33', '2019-06-20 14:13:33'),
	(1204, 1, '1uHJ81tWHW9wDwYVUfAxOqGVuLTBcGrj', '2019-06-20 14:16:24', '2019-06-20 14:16:24'),
	(1205, 1, 'TUqtDrA8GahOG8yICNTRasI3ed1ybEuD', '2019-06-20 14:16:39', '2019-06-20 14:16:39'),
	(1206, 1, 'jLU0MC8cyLbujvJabkI4vG3baK1y2Uia', '2019-06-20 14:16:54', '2019-06-20 14:16:54'),
	(1207, 1, 'e2UnSdVu0xbMVLLVUwc5kKnm4pskubfx', '2019-06-20 14:17:17', '2019-06-20 14:17:17'),
	(1208, 1, '77sML8KBmia6s9FUlFltTKDNQ5Vi0Ua3', '2019-06-20 14:19:34', '2019-06-20 14:19:34'),
	(1209, 1, 'G8NG4AVp7JVePSWozDIwsC0gKGRrXVGH', '2019-06-20 14:19:34', '2019-06-20 14:19:34'),
	(1210, 1, 'u3BAXPB8d2FYC1O6HtlYv973saitUMke', '2019-06-20 14:20:26', '2019-06-20 14:20:26'),
	(1211, 1, '8XVZv3gXF0zbvyq6yimkFXH8bhNSn0a7', '2019-06-20 14:20:26', '2019-06-20 14:20:26'),
	(1212, 1, 'JljZiwhCWPzhoHFm87RnDXDJPOzO3npf', '2019-06-20 14:20:26', '2019-06-20 14:20:26'),
	(1213, 1, 'BmUV98sOVd0SmkgGcx1uNndNlhbMxDJV', '2019-06-20 14:20:27', '2019-06-20 14:20:27'),
	(1214, 1, 'r5IVVZK5DtCBzhS3M9ekrPsI42RvLV83', '2019-06-20 14:32:54', '2019-06-20 14:32:54'),
	(1215, 1, 'kxDBFPTmOGDx1A8XCqnCqtww6qMfCpmr', '2019-06-20 14:32:58', '2019-06-20 14:32:58'),
	(1216, 1, 'enepqA5gwkCrtbYo0MKv1PUsj5OPwwg4', '2019-06-20 14:32:59', '2019-06-20 14:32:59'),
	(1217, 1, 'Ofgiu3rIdlh1nzYS1XZwKlJwFq5WQykh', '2019-06-20 14:33:21', '2019-06-20 14:33:21'),
	(1218, 1, 'DWJuEjhRaofBCzI9ihF68Hvr6zCZMPbN', '2019-06-20 14:33:25', '2019-06-20 14:33:25'),
	(1219, 1, 'L4YBS0oTH3TqLWmT5SLHfB8DGrfXVrVu', '2019-06-20 14:34:34', '2019-06-20 14:34:34'),
	(1220, 1, 'Rn4sL07rlXyIv2j2CGkFjcGDAibOdSwn', '2019-06-20 14:34:34', '2019-06-20 14:34:34'),
	(1221, 1, 'ryjCmsa2wvHoxQBvlRpW9BBXCiVbvdTI', '2019-06-20 15:15:54', '2019-06-20 15:15:54'),
	(1222, 1, '3AI2TDkZefwuygEvn3XAIl7TCjwobBCe', '2019-06-20 15:30:30', '2019-06-20 15:30:30'),
	(1223, 1, '7TYG6yQUfXxUerm4FsgH9uUJgXXtdIgl', '2019-06-20 15:30:30', '2019-06-20 15:30:30'),
	(1224, 1, 'CtmY8X9jQxkHb2aezv7MB4nz7CJtcyFX', '2019-06-20 15:30:33', '2019-06-20 15:30:33'),
	(1225, 1, 'mInLJNJaQmlowa0sGrd2voYa1JmZu9fu', '2019-06-20 15:30:33', '2019-06-20 15:30:33'),
	(1226, 1, 'XF2JxJBlv2cEET4XILWblaVh9qtudtQ4', '2019-06-20 17:37:00', '2019-06-20 17:37:00'),
	(1227, 1, 'F8hD17jeDO0GbnievocuklnI4wJJhXaJ', '2019-06-20 17:37:00', '2019-06-20 17:37:00'),
	(1228, 1, 'd6V8bJoN2r2AIc4XLzmfxEfpuOzNamPX', '2019-06-20 17:41:07', '2019-06-20 17:41:07'),
	(1229, 1, 'r8lix90X8a9liY8o4u0tUnbqfsuEpqE0', '2019-06-20 17:41:08', '2019-06-20 17:41:08'),
	(1230, 1, 'ibCBMB9tH5iShgEPFU1CGArgcxOAdIm9', '2019-06-20 17:41:44', '2019-06-20 17:41:44'),
	(1231, 1, 'xbqE0DNZgJdOipG81v4ua84pvbmkSknQ', '2019-06-20 17:41:44', '2019-06-20 17:41:44'),
	(1232, 1, 'RE8QTvUU94LzrxZSMiqQuR1LAJKaY4cb', '2019-06-20 17:41:51', '2019-06-20 17:41:51'),
	(1233, 1, 'O7AOWovaz7cVnjhq9bxZ74zhem7E10sP', '2019-06-20 17:41:51', '2019-06-20 17:41:51'),
	(1234, 1, 'tZ3FjH5F9RqjTUsSpTHOdFk6g25EyYPR', '2019-06-20 17:42:25', '2019-06-20 17:42:25'),
	(1235, 1, '3XY6gZZCVjsREuitTQd06C63K3rAUPdL', '2019-06-20 17:42:26', '2019-06-20 17:42:26'),
	(1236, 1, 'H0daPxtZD1JpkaOe1Hm41hKMFHpcYrXH', '2019-06-20 17:42:29', '2019-06-20 17:42:29'),
	(1237, 1, 'xDWG9B4ob8z0uzmW8vJ2vQeDPCykUbsI', '2019-06-20 17:42:29', '2019-06-20 17:42:29'),
	(1238, 1, 'gwLnli0invA7x81mq5QuxUYaNUBiFHJh', '2019-06-20 17:47:55', '2019-06-20 17:47:55'),
	(1239, 1, 'Di2icTIZarGwHj7oKnUcPvtE2HAXJ5fa', '2019-06-20 17:47:55', '2019-06-20 17:47:55'),
	(1240, 1, 'urHqw7WeBiM1ZTptm1ZIuFB6Ls6ttDGs', '2019-06-20 17:53:09', '2019-06-20 17:53:09'),
	(1241, 1, 'c7wodU1DjVa56EpSXJuU7QO4mwrXGfJg', '2019-06-20 17:53:10', '2019-06-20 17:53:10'),
	(1242, 1, 'wPr3iVdlRj85V2M3YSAJJpEQagiFJsE4', '2019-06-20 17:53:11', '2019-06-20 17:53:11'),
	(1243, 1, 'era3zwoipxDgFV2v8vDs7TXRXiWm3wLJ', '2019-06-20 17:53:11', '2019-06-20 17:53:11'),
	(1244, 1, '44zi6Qip4vcvkNGbx0NjJlg3HVgaeJiE', '2019-06-20 17:53:19', '2019-06-20 17:53:19'),
	(1245, 1, 'kbjj6dJRYHjOOLijCkWWWUm47BZy0L6d', '2019-06-20 17:53:22', '2019-06-20 17:53:22'),
	(1246, 1, 'rBNvSfnD1QRx8rKwio5wJ7LUWp8azL3R', '2019-06-20 17:58:52', '2019-06-20 17:58:52'),
	(1247, 1, 'mliGGrlOmlaAmwJYr6KDB9gurRV0nUTD', '2019-06-20 17:58:53', '2019-06-20 17:58:53'),
	(1248, 1, 'nwssX2XxnDAlTJ3jiYcb0EAwnjEK2Kb8', '2019-06-20 17:58:54', '2019-06-20 17:58:54'),
	(1249, 1, '7Wgn6KdOEc1VaVHkrUeJg10dbczAepvP', '2019-06-20 17:58:54', '2019-06-20 17:58:54'),
	(1250, 1, 'er1qYh7z3uGRcsf1fSQFn9OZPSiML4ON', '2019-06-20 18:03:30', '2019-06-20 18:03:30'),
	(1251, 1, 'mrAknzwgND43jTrtLKbZrQCnqphbLqhh', '2019-06-20 18:03:30', '2019-06-20 18:03:30'),
	(1252, 1, 'P4sLo73KKmJEv7JDmffUU7r2o0rTpHfL', '2019-06-20 18:03:49', '2019-06-20 18:03:49'),
	(1253, 1, 'hygO3CEJvnbdbKpTW9zpRYquhdGBWqpx', '2019-06-20 18:03:50', '2019-06-20 18:03:50'),
	(1254, 1, 'PH51YUGBKfTMOaY9DUfJBZVVLoqYnUFN', '2019-06-21 09:09:50', '2019-06-21 09:09:50'),
	(1255, 1, '9g24HwYEwIIGSlxgQ9q6t3lZfCoOF002', '2019-06-21 09:09:51', '2019-06-21 09:09:51'),
	(1256, 1, 'oJ9UKMFJIY5gmGHmohssCM53kcJcCGCX', '2019-06-21 18:38:44', '2019-06-21 18:38:44'),
	(1257, 1, 'GwoVQF1W5tk3a5Gfzy9BXpPxn79dSApJ', '2019-06-21 18:38:44', '2019-06-21 18:38:44'),
	(1258, 1, 'Aodx6IjaH4NTG4vjMXDFZlYt8UYiHB2N', '2019-06-21 18:38:45', '2019-06-21 18:38:45'),
	(1259, 1, 'E6fenm1LpOTo6dsEZAN9bW2lPzf6b9YA', '2019-06-21 18:38:46', '2019-06-21 18:38:46'),
	(1260, 1, 'WRXz0tx2gnmsQXRfG4bZtdiVqHifdouQ', '2019-06-22 09:43:45', '2019-06-22 09:43:45'),
	(1261, 1, 'rq7qod0GiLFKMEe57OiXWZ6BEp5lxVAA', '2019-06-22 09:43:47', '2019-06-22 09:43:47'),
	(1262, 1, 'rz4FBdr5K9t5h0cOqsdtDvzBuwRBi4jk', '2019-06-22 10:04:05', '2019-06-22 10:04:05'),
	(1263, 1, 'lBJmyjzx8OoAJbNv3Uo0hNK4xnP0p1Nm', '2019-06-22 10:04:05', '2019-06-22 10:04:05'),
	(1264, 1, 'p9ZutUy5kClDP95FZBiYWkElt4xt3wss', '2019-06-22 10:43:07', '2019-06-22 10:43:07'),
	(1265, 1, 'wz0CY8DQUtqDUeDhPMXc9IRMUkoW3Wcv', '2019-06-22 10:49:59', '2019-06-22 10:49:59'),
	(1266, 1, 'kUcXKTHhwSH1gKXIg7hDwBtslaBtzIcU', '2019-06-22 10:50:15', '2019-06-22 10:50:15'),
	(1267, 1, 'VYDdqmTE8aVyWMBpVs2zxJjpWH6eAgii', '2019-06-22 10:50:32', '2019-06-22 10:50:32'),
	(1268, 1, '4jMCBDqfr2sbjSTqBbVElmrZKs9VHSvD', '2019-06-22 10:51:30', '2019-06-22 10:51:30'),
	(1269, 1, 'zq2suCKwVeLhPKypsdQPgBjf3Zxd6bOj', '2019-06-22 10:51:43', '2019-06-22 10:51:43'),
	(1270, 1, 'eZUAhpbW9VGuqF7AKhxy1bs4DEAVegkr', '2019-06-22 10:51:43', '2019-06-22 10:51:43'),
	(1271, 1, '48zNYDE2g5yaFdyAEFRkMYjJZ6eCYphH', '2019-06-22 10:51:51', '2019-06-22 10:51:51'),
	(1272, 1, 'SYW62d3ToriUYWKrFLdnGVt1tX6XnuK7', '2019-06-22 10:51:51', '2019-06-22 10:51:51'),
	(1273, 1, 'U49Iguqsa07rgr6cS4GOmveuYNnN5OBh', '2019-06-22 10:52:19', '2019-06-22 10:52:19'),
	(1274, 1, 'abxp1v5yH095KPLEgn24EerpGnoCEAC6', '2019-06-22 10:52:19', '2019-06-22 10:52:19'),
	(1275, 1, 'Yxcfm3T5zlqIPG7vgPi76sXObH86ePIn', '2019-06-22 10:52:40', '2019-06-22 10:52:40'),
	(1276, 1, '2DMvFQffvhI1K6XFUCquVHzayKVtAiP4', '2019-06-22 10:52:40', '2019-06-22 10:52:40'),
	(1277, 1, 'iUkEQDPXchhMEiaJjS5Vzk648Y21OYl7', '2019-06-22 10:52:49', '2019-06-22 10:52:49'),
	(1278, 1, 'AthXj2t1ZXK4sm0NdcPhpxuqDVa2F5z2', '2019-06-22 10:52:49', '2019-06-22 10:52:49'),
	(1279, 1, 'tGLRyhEqQOuzXUWYj715v3P1N3XduzaQ', '2019-06-22 10:53:43', '2019-06-22 10:53:43'),
	(1280, 1, 'CjzovcthytrwoX3Elhn9TfBHu9Gh7RW3', '2019-06-22 10:53:44', '2019-06-22 10:53:44'),
	(1281, 1, 'LrvXyTtBDshOzQ40BixAPsqPdJp6nkbs', '2019-06-22 10:53:45', '2019-06-22 10:53:45'),
	(1282, 1, 'aj15zvPI6EYVBiZwAwF6vxHjCn1kznwC', '2019-06-22 10:53:46', '2019-06-22 10:53:46'),
	(1283, 1, 'UW1I73Kv71VyyUw8O6V5jn6EwOz3NaQC', '2019-06-22 10:58:14', '2019-06-22 10:58:14'),
	(1284, 1, 'l68RrTMJmHtabxBXdsd1dbazStHm0zFx', '2019-06-22 10:58:15', '2019-06-22 10:58:15'),
	(1285, 1, 'ciQPTEMTFvon9LwDJRCHg2aW2kzK4ZYB', '2019-06-22 10:58:17', '2019-06-22 10:58:17'),
	(1286, 1, 'NuPMgS2WaOAzmmBqm8fRrSq6I2h2WgFq', '2019-06-22 10:58:17', '2019-06-22 10:58:17'),
	(1287, 1, 'aMC4oFQhUkpDDjorCuTcoggXF805FYiC', '2019-06-22 11:04:50', '2019-06-22 11:04:50'),
	(1288, 1, 'DDiUQK9xll7d3bOJhKfMELEZ1Gct5w49', '2019-06-22 11:04:50', '2019-06-22 11:04:50'),
	(1289, 1, '9PoYrv9v1vykCecxmI6zxGIzlc646mT9', '2019-06-22 11:04:52', '2019-06-22 11:04:52'),
	(1290, 1, 'TAPHxjInwsDPonTvDp8zb1PINVWBj9NN', '2019-06-22 11:04:52', '2019-06-22 11:04:52'),
	(1291, 1, 'LbxP4vdcthG4X9zRCsrfsIhXLsuyy82u', '2019-06-22 11:06:39', '2019-06-22 11:06:39'),
	(1292, 1, 'xQAAx8iBTpTCRabHK8y6gdGWQBhQh4cg', '2019-06-22 11:06:41', '2019-06-22 11:06:41'),
	(1293, 1, 'w63LGi8XGpPSuapXgrVNqdij5sJAdFyT', '2019-06-22 11:06:41', '2019-06-22 11:06:41'),
	(1294, 1, 'HhPGk0kPgdaSPtFHeekDsYgcFAOAAFFy', '2019-06-22 11:07:50', '2019-06-22 11:07:50'),
	(1295, 1, 't0SvgaWQZj0KaRZDQLIXT0sVqdN8D36L', '2019-06-22 11:07:51', '2019-06-22 11:07:51'),
	(1296, 1, 'Nxg5c7AFk0rvgfVCg2ODkV6ZXwoPV4ay', '2019-06-22 11:07:52', '2019-06-22 11:07:52'),
	(1297, 1, 'tzTzwu3ik8b5CzxVTDEVx1DyFwnxRtsX', '2019-06-22 11:07:52', '2019-06-22 11:07:52'),
	(1298, 1, '0O0IpPs1ofvKFJ1VXZ0SOiMDRRAVAgaZ', '2019-06-22 11:08:22', '2019-06-22 11:08:22'),
	(1299, 1, '7cGlPvdgQ31rtIusey4nqNjDNpcrKtcH', '2019-06-22 11:08:23', '2019-06-22 11:08:23'),
	(1300, 1, 'dsN9se0QZaqZZPDIBtid7WsYHvMrWAKl', '2019-06-22 11:08:24', '2019-06-22 11:08:24'),
	(1301, 1, 'kBQDFamWdPN0tJR8LuHz8e3S4cxsplSW', '2019-06-22 11:08:24', '2019-06-22 11:08:24'),
	(1302, 1, '6f9LCsSfdhoxseMxe3nedGF73iZvpQmj', '2019-06-22 11:08:45', '2019-06-22 11:08:45'),
	(1303, 1, 'ckqXW2pwPcy7BmyAQiAotNuIvbCT8P1H', '2019-06-22 11:08:45', '2019-06-22 11:08:45'),
	(1304, 1, 'WPJluLAvnjeNAY5KAEtPzpBa9hM8AERS', '2019-06-22 11:08:45', '2019-06-22 11:08:45'),
	(1305, 1, 'eZUrTyS2TOutUeSBKkS3hFlfAnERIItP', '2019-06-22 11:08:46', '2019-06-22 11:08:46'),
	(1306, 1, '4yweRqX93C5dZ5n4d8kw30G6foYbKLMT', '2019-06-22 11:09:01', '2019-06-22 11:09:01'),
	(1307, 1, 'k6BMEa4wwu7et3cW0DMmOVlOnvczFsxk', '2019-06-22 11:09:01', '2019-06-22 11:09:01'),
	(1308, 1, 'Ycgj2MlslNg0WNU2XqXREEqvTixEHYp3', '2019-06-22 11:09:01', '2019-06-22 11:09:01'),
	(1309, 1, 'B0j0Q61iPrRDEhMhZUmzY4TdvMd4lllR', '2019-06-22 11:09:01', '2019-06-22 11:09:01'),
	(1310, 1, 'YHdDJHxDSXNqqndUMrxRJKLsy0NG8tGj', '2019-06-22 11:09:14', '2019-06-22 11:09:14'),
	(1311, 1, '2DfF2NBk34I8XIz5qifza7zhU9fhnHZK', '2019-06-22 11:09:14', '2019-06-22 11:09:14'),
	(1312, 1, 'zQY7lFoh4aDMbWXBjWqnHZDAxlTvIIdi', '2019-06-22 11:09:35', '2019-06-22 11:09:35'),
	(1313, 1, 'C39yF9xOdUftwnjrmIljRGiHSScgnP24', '2019-06-22 11:09:35', '2019-06-22 11:09:35'),
	(1314, 1, '8lxD0Yvu8W8AQE3J8gvtzzhqJwtxFPAp', '2019-06-22 11:10:10', '2019-06-22 11:10:10'),
	(1315, 1, 'zdtBTbZS7ZAsfvRRyN2scrrj4qSEHth4', '2019-06-22 11:10:10', '2019-06-22 11:10:10'),
	(1316, 1, 'zh93C19CtJLUOiQMO3yTAm4aF3v7Ujzd', '2019-06-22 11:10:13', '2019-06-22 11:10:13'),
	(1317, 1, '3jhWTJogXxe0fQOcdmanpbt4vQzuQeQq', '2019-06-22 11:10:13', '2019-06-22 11:10:13'),
	(1318, 1, 'i2ofp1l4PoUBCCP2vgovbMzyF73FeeLK', '2019-06-22 11:25:53', '2019-06-22 11:25:53'),
	(1319, 1, 'JKfhGtwtSllUvgGnNP6vZ7Eq5BSahsyk', '2019-06-22 11:25:54', '2019-06-22 11:25:54'),
	(1320, 1, 'G2kD0sSsRUsJLEXO8vrr1X8pBOm7MNRS', '2019-06-22 11:25:55', '2019-06-22 11:25:55'),
	(1321, 1, 'dUIZH2TnPpi58AMMoeSndm8oPmTFEk9Y', '2019-06-22 11:25:55', '2019-06-22 11:25:55'),
	(1322, 1, 'XtKkdbZhtzmB3YA5PPi7GpkqUcrxl04P', '2019-06-22 11:50:42', '2019-06-22 11:50:42'),
	(1323, 1, 'CPfJIYnZ827ye9LVbQv9jArFrwaHkghO', '2019-06-22 11:50:49', '2019-06-22 11:50:49'),
	(1324, 1, '1bUyojzfIYNwMoPX68Sv5bnvsVgAnLz1', '2019-06-22 11:50:49', '2019-06-22 11:50:49'),
	(1325, 1, 'pTf21ohU838Sl2JfFF4znL0QPFm45k1g', '2019-06-22 12:00:10', '2019-06-22 12:00:10'),
	(1326, 1, '8vsoeItKRGJ2yqPoCOQuJyROotbkOfzf', '2019-06-22 12:00:11', '2019-06-22 12:00:11'),
	(1327, 1, 'Pnjqhqoe7WF1csAsSeLEvRNY4NvYKnLk', '2019-06-22 12:46:59', '2019-06-22 12:46:59'),
	(1328, 1, 'j71Igvn2n9Yz6zxr0KpMOtFE8UNjZ552', '2019-06-22 13:09:34', '2019-06-22 13:09:34'),
	(1329, 1, 'LQE1xXQlnVs0lPwCtcwbcC3yHsJh6fCp', '2019-06-22 13:09:34', '2019-06-22 13:09:34'),
	(1330, 1, '52rzrmadAGhNfhgV8fzaPowwEXRa2o9f', '2019-06-22 13:09:34', '2019-06-22 13:09:34'),
	(1331, 1, '9gQRmthJms57jGaIESpuJXJMarUcK3hZ', '2019-06-22 13:09:34', '2019-06-22 13:09:34'),
	(1332, 1, 'EYzQo1ryrgBHNEnvwtLoTU1iPos66Ijt', '2019-06-22 13:09:34', '2019-06-22 13:09:34'),
	(1333, 1, 'N0siLQNpSfLPs4Vl8suCSXUkmZVfn5RU', '2019-06-22 13:09:34', '2019-06-22 13:09:34'),
	(1334, 1, '8oQQ8cJJ0fxDPO6rtoqcn02dwmUxF6kO', '2019-06-22 13:09:35', '2019-06-22 13:09:35'),
	(1335, 1, 'tNTjnGGEIhnH2WhmewkRqeW1UiCdcdiU', '2019-06-22 13:09:35', '2019-06-22 13:09:35'),
	(1336, 1, 'GO1lpmo6rPq4TDMnvWI3jBYGMeQ8C3nC', '2019-06-22 13:29:10', '2019-06-22 13:29:10'),
	(1337, 1, '1I6kX6WVZj6uGqeFR7kCI8Z2HQPekAxJ', '2019-06-22 13:29:10', '2019-06-22 13:29:10'),
	(1338, 1, 'mWXzPsCWWrmvLuIJap2tSCLUM9kaLC21', '2019-06-22 13:29:10', '2019-06-22 13:29:10'),
	(1339, 1, 'DuglPwPzADHEL6KhwRdo6vsza51XAjnt', '2019-06-22 13:29:10', '2019-06-22 13:29:10'),
	(1340, 1, 'vb3yUmSAmm2iWsklpBbqJ49nDb61wzvM', '2019-06-22 13:29:10', '2019-06-22 13:29:10'),
	(1341, 1, '2878U74aX7rJF3DvmmKZrtM23iKBcN6V', '2019-06-22 13:29:10', '2019-06-22 13:29:10'),
	(1342, 1, 'KnscD0MSwVSiO39FhCEHDiNCfHdUWOhd', '2019-06-22 13:29:10', '2019-06-22 13:29:10'),
	(1343, 1, 'CqhCegBK8Li9MKnkL4mH2VOwVPZeK7uC', '2019-06-22 13:29:11', '2019-06-22 13:29:11'),
	(1344, 1, 'vtIn37av04wK5gJ4Civ4fFbcd5i0CGR6', '2019-06-22 13:29:29', '2019-06-22 13:29:29'),
	(1345, 1, 'FJRQaK0k3Bm1UUYGdfT2HeCpTGuqA5S4', '2019-06-22 13:29:29', '2019-06-22 13:29:29'),
	(1346, 1, '0NCfVWFRneqUhTosjjQPKvTLBA5bmSpZ', '2019-06-22 13:29:29', '2019-06-22 13:29:29'),
	(1347, 1, 'Ck1OLXDsffURendilCEyNVluFznawHes', '2019-06-22 13:29:29', '2019-06-22 13:29:29'),
	(1348, 1, 'klObsIJTgJ4XIGoZLzUHwt1M6vS8nRAM', '2019-06-22 13:29:29', '2019-06-22 13:29:29'),
	(1349, 1, 'JP7b6OYVabaWi3DZ0b1n1miv3v2QouHR', '2019-06-22 13:29:29', '2019-06-22 13:29:29'),
	(1350, 1, 'erTSoLG9P4vdwDfoF4g1OTDMASO2GRnJ', '2019-06-22 13:29:30', '2019-06-22 13:29:30'),
	(1351, 1, 'fUptCOGcPgwJdRJ68IoIb5ihqJIBz3iZ', '2019-06-22 13:29:30', '2019-06-22 13:29:30'),
	(1352, 1, 'uzxfwpfpxjt6PWw2nCEZlIrsH7qWA071', '2019-06-22 13:49:35', '2019-06-22 13:49:35'),
	(1353, 1, 'Kd7fjN6eGcDt76Yg08De8mv3TOWMWqhc', '2019-06-22 13:49:35', '2019-06-22 13:49:35'),
	(1354, 1, 'pPRoCoPgyGrXBr5FIWY9ciA4LN3ZQ5fS', '2019-06-22 13:49:35', '2019-06-22 13:49:35'),
	(1355, 1, 'azu0SybNB66PqxnNMVgTQO3u9PkzBl4s', '2019-06-22 13:49:35', '2019-06-22 13:49:35'),
	(1356, 1, '4DkvdFEp0KRsq8IJ4DW80gRlWhEckw3N', '2019-06-22 13:49:35', '2019-06-22 13:49:35'),
	(1357, 1, 'tmqXUuyu1ivuA0ze8pKOhEZgv2sX1MpB', '2019-06-22 13:49:36', '2019-06-22 13:49:36'),
	(1358, 1, 'XVHIVZRMIuE9uqG3a0pTspmw08077B0B', '2019-06-22 13:49:36', '2019-06-22 13:49:36'),
	(1359, 1, 'vdRB4MV08bqB2sigM5vqDU9lOTep0x2F', '2019-06-22 13:49:36', '2019-06-22 13:49:36'),
	(1360, 1, 'pyH630JVb5gjTBEIavKhLuxXungSVfZB', '2019-06-22 15:03:34', '2019-06-22 15:03:34'),
	(1361, 1, 'YVx8t1xp9atyvXBRuQGStYarzDss7sDq', '2019-06-22 15:03:35', '2019-06-22 15:03:35'),
	(1362, 1, 'hj4n43Lga20xiEjnDy4VAZRrrjN39Jpu', '2019-06-22 15:03:37', '2019-06-22 15:03:37'),
	(1363, 1, 'oNDZot9hDNX2OTF5CwHVHcP9NrnworhE', '2019-06-22 15:03:37', '2019-06-22 15:03:37'),
	(1364, 4, 'fWQAWqJhF3wOGahkT8RElBd1DTHbUVpB', '2019-06-23 19:45:10', '2019-06-23 19:45:10'),
	(1365, 1, 'hxNfb6XriPCRiTCHNra5633GY8M5tXxV', '2019-06-25 09:01:54', '2019-06-25 09:01:54'),
	(1366, 1, 'XTM8Bh5YD6LBcS4XYUKbLFSIoLIP7dfP', '2019-06-25 09:01:55', '2019-06-25 09:01:55'),
	(1367, 1, 'b9iVBPV39HOJOTLW2y4OBJL1ARRD09nQ', '2019-06-25 09:13:57', '2019-06-25 09:13:57'),
	(1368, 1, 'ausbTdvV1C9KRwU5EdAvag2VdfoLDdZe', '2019-06-25 09:14:53', '2019-06-25 09:14:53'),
	(1369, 1, 'wPqUVrU5z5KRqh4CQHrPLMbj0RYyihak', '2019-06-25 09:14:53', '2019-06-25 09:14:53'),
	(1370, 1, 'IwCJNq2cYd9ksGg4nzPpI6NDH8shE8H5', '2019-06-25 09:14:53', '2019-06-25 09:14:53'),
	(1371, 1, 'YWtKEW738KBhshuUdmznAB0lppdk4HKm', '2019-06-25 09:14:53', '2019-06-25 09:14:53'),
	(1372, 1, '7huIE2YcPT1sQqVMP1o6ZFa4J6Ylf9eq', '2019-06-25 09:14:53', '2019-06-25 09:14:53'),
	(1373, 1, 'gM15HdZ1ycrFYiUOKB2jWzmlB7eRaEPr', '2019-06-25 09:14:53', '2019-06-25 09:14:53'),
	(1374, 1, 'pq1P6PWmWa9LdSDtZk0bvACL9Lf6QdvP', '2019-06-25 09:14:54', '2019-06-25 09:14:54'),
	(1375, 1, 'QnzwiJZt18VIWbQ8pfpPvSxGg0vPyyxp', '2019-06-25 09:14:54', '2019-06-25 09:14:54'),
	(1376, 1, '0k9VHWM64BGkgqQLJrv7bLAMlS0LVNEb', '2019-06-25 09:15:06', '2019-06-25 09:15:06'),
	(1377, 1, 'VxSExBo3O0D1i2GZAAcd1861oamFK1ho', '2019-06-25 09:15:06', '2019-06-25 09:15:06'),
	(1378, 1, '1BWmwGJ9q2SDyafeTPDJ2oRdpouUnPBY', '2019-06-25 09:15:06', '2019-06-25 09:15:06'),
	(1379, 1, 'IgdYDRu6ucjcbyA04TX6oW5SaZpVORoK', '2019-06-25 09:15:06', '2019-06-25 09:15:06'),
	(1380, 1, 'hZZnt2l47WOK7EN0caYL2Q8uFQHZ9bA0', '2019-06-25 09:15:06', '2019-06-25 09:15:06'),
	(1381, 1, 'pZ2y8IWlUj9oCIMgAtHNaYOCstqyVYb1', '2019-06-25 09:15:07', '2019-06-25 09:15:07'),
	(1382, 1, '1CHftv7gcWNKQylqIpJW7n0x7sIW9hyp', '2019-06-25 09:15:07', '2019-06-25 09:15:07'),
	(1383, 1, '58uhwA57XVUDtEpelZdde5dz4xpSwZhr', '2019-06-25 09:15:08', '2019-06-25 09:15:08'),
	(1384, 1, 'QRrPK1vr6w5cyQHuFzEHLRXTBaByarBF', '2019-06-25 09:31:53', '2019-06-25 09:31:53'),
	(1385, 1, '1qYjmBIFMCH3HiubXBMg8haAnzFAIYuR', '2019-06-25 09:42:48', '2019-06-25 09:42:48'),
	(1386, 1, 'bLzUqpthdbuGv9iHiVQQWSNoVlohzuTV', '2019-06-25 09:42:48', '2019-06-25 09:42:48'),
	(1387, 1, 'nnv3OnIXakAvipIUvy2hdjDQc8ZCG2UF', '2019-06-25 09:42:48', '2019-06-25 09:42:48'),
	(1388, 1, 'DquOAmTN48vPEKqaHjfZWJSdHjFjsAG8', '2019-06-25 09:42:48', '2019-06-25 09:42:48'),
	(1389, 1, 'Q91atEiruQQ90bkT4bw9lPKF5CRMwc93', '2019-06-25 09:42:48', '2019-06-25 09:42:48'),
	(1390, 1, 'WrVmUSfiOzKNAMGTTLy9AT0UhjyNA2zi', '2019-06-25 09:42:48', '2019-06-25 09:42:48'),
	(1391, 1, '2oQsoSTVnMPBKRn9JOiZIWoURp43FM4P', '2019-06-25 09:42:48', '2019-06-25 09:42:48'),
	(1392, 1, 'p8yy5Ua8HL8MmJQDQ2CKlwLxFVrsZidQ', '2019-06-25 09:42:48', '2019-06-25 09:42:48'),
	(1393, 1, 'KCr1jRaqp9SQyVXK7r7v6BKhgWkOy5Kh', '2019-06-25 09:43:10', '2019-06-25 09:43:10'),
	(1394, 1, '36ZHY9RF7SapmoSDIFFhmfbpmpu907wz', '2019-06-25 09:43:10', '2019-06-25 09:43:10'),
	(1395, 1, 'OPvkSoPMQtg4Uq8T4Ao6mk0rvGf3k3Ab', '2019-06-25 09:43:11', '2019-06-25 09:43:11'),
	(1396, 1, 'KsynQGFYOENG4nIeNgRW8T7P20XWdyP4', '2019-06-25 09:43:11', '2019-06-25 09:43:11'),
	(1397, 1, 'VZCyfqo9c49rMiE5DH8AOayfZhmpkNzq', '2019-06-25 09:43:11', '2019-06-25 09:43:11'),
	(1398, 1, 'UkPkySeKUFNdx5OBQnovq5AwlyhjxG8S', '2019-06-25 09:43:11', '2019-06-25 09:43:11'),
	(1399, 1, 'SQAVJdeij40nv6MsOcmP5JQBUnlkqXuJ', '2019-06-25 09:43:11', '2019-06-25 09:43:11'),
	(1400, 1, 'tkOoznhsHIbnTap6XlXsKrL25oCJJULK', '2019-06-25 09:43:11', '2019-06-25 09:43:11'),
	(1401, 1, 'WAsmKoSXOyt5jm3UcVLR5x2RJmuStX7f', '2019-06-25 14:38:16', '2019-06-25 14:38:16'),
	(1402, 1, 'KwyczOpvJKVe64GbP8UcnTcd7ycHhpif', '2019-06-25 14:38:17', '2019-06-25 14:38:17'),
	(1403, 1, '0yZkfTDNcUjGnMeawz9a4CwNcL6n4UVE', '2019-06-25 17:18:43', '2019-06-25 17:18:43'),
	(1404, 1, 'nWDjGCdacKq292QlMU3L5Dnu31Fi3eSu', '2019-06-26 14:42:03', '2019-06-26 14:42:03'),
	(1405, 1, 'qYCE18Zzl4DcUn1tbmxgGWJ11I7yRrJC', '2019-06-26 15:04:00', '2019-06-26 15:04:00'),
	(1406, 1, 'KhSzPjC3O60E4ZEdkRCxTCrq8qqxe6hz', '2019-06-26 15:04:01', '2019-06-26 15:04:01'),
	(1407, 1, 'TIy8pkJnjoP0UcXKeJkGeD6WKgwWUWj6', '2019-06-26 15:04:05', '2019-06-26 15:04:05'),
	(1408, 1, 'FUDosJaa0ZHtfQtFVCvGoSntW93ucHo3', '2019-06-26 15:04:06', '2019-06-26 15:04:06'),
	(1409, 1, 'MajIPznatnyKsoaLgGMFcBm53r1G8HnZ', '2019-06-26 15:04:08', '2019-06-26 15:04:08'),
	(1410, 1, 'Xufet3EZzb0aXssS2oH63dFh6WihYKpu', '2019-06-26 15:04:08', '2019-06-26 15:04:08'),
	(1411, 1, 'YKCmWJFu956m2ThkyGezdrvc5zHjdoFg', '2019-06-26 15:07:41', '2019-06-26 15:07:41'),
	(1412, 1, 'A0pVxCx5D7N40Puwmt63RqWBfuRRy4BH', '2019-06-26 15:07:42', '2019-06-26 15:07:42'),
	(1413, 1, 'h6seyqQcirewnreFtYpAfH1byZkyxb7A', '2019-06-26 15:08:01', '2019-06-26 15:08:01'),
	(1414, 1, 'jVPA7EWuVwSG1GIWN4jjOcYeg32bHq2o', '2019-06-26 15:08:01', '2019-06-26 15:08:01'),
	(1415, 1, 'wf4bgRFLQnNzxs44A8s2r6fzHfeTNWSE', '2019-06-26 15:09:05', '2019-06-26 15:09:05'),
	(1416, 1, '1JEsoe7wCixYDgJptzTyycaNQYuUI1Zp', '2019-06-26 15:09:06', '2019-06-26 15:09:06'),
	(1417, 1, 'pyn5JRz3LrrBRTPOHsLOrMDq1FAtleLG', '2019-06-26 15:09:33', '2019-06-26 15:09:33'),
	(1418, 1, 'YDnteS9yl3m57PKLSbJ9Yc6DMNtPaqsG', '2019-06-26 15:09:34', '2019-06-26 15:09:34'),
	(1419, 1, 'jiv5GUKJdEaXv2ZNjnZJtBik6PGZ4zCV', '2019-06-26 15:11:49', '2019-06-26 15:11:49'),
	(1420, 1, '22ZixxWmZ0RjV6y2A3kA74Wpzp0xBjh6', '2019-06-26 15:11:49', '2019-06-26 15:11:49'),
	(1421, 1, 'HnlmIvuMDjEjpkqz2BYCUEglKuvAf4Td', '2019-06-26 15:15:14', '2019-06-26 15:15:14'),
	(1422, 1, 'LDnqt3pjL8ydeC1fuI1UQVQAYx30LVOY', '2019-06-26 15:15:14', '2019-06-26 15:15:14'),
	(1423, 1, 'ElG34TzNkDCBOGOuDHqRURCdG3z8veCb', '2019-06-26 15:16:51', '2019-06-26 15:16:51'),
	(1424, 1, 'uXSVbWirHCdUDetvN9p8SyrWgmRI6PSt', '2019-06-26 15:16:51', '2019-06-26 15:16:51'),
	(1425, 1, 'YFVHIrvPQUnPGGaASC3W4qwoyyWj0QSA', '2019-06-26 15:17:32', '2019-06-26 15:17:32'),
	(1426, 1, 'wJDs3l9KCHIfzSrYZBvwxpexBGNbSZ1i', '2019-06-26 15:17:32', '2019-06-26 15:17:32'),
	(1427, 1, '4mi49dBVLWrQUvOq0Saoyb73e5MqiGRk', '2019-06-26 15:28:19', '2019-06-26 15:28:19'),
	(1428, 1, 'LFZ7JBwE20ofKfpuafPCY0VzvbK2F5AU', '2019-06-26 15:28:19', '2019-06-26 15:28:19'),
	(1429, 1, 'iOgnzPs1ay3LYGlDdNMb1lmtTd7Cgcpj', '2019-06-26 15:28:35', '2019-06-26 15:28:35'),
	(1430, 1, 'B1OwCSKx6qT7OeFd0Mh9ePmU6ZlggaDb', '2019-06-26 15:28:35', '2019-06-26 15:28:35'),
	(1431, 1, 'Ft0BRfCcjA16AxkN7AHTtcOa9oGTw7B2', '2019-06-26 15:30:24', '2019-06-26 15:30:24'),
	(1432, 1, '4zbtAdTULAOow56z7c6ZYz4LZfAJHIVH', '2019-06-26 15:30:24', '2019-06-26 15:30:24'),
	(1433, 1, 'L5KawqZFLDNcwIIE9XcUEoVaWxjFJfSl', '2019-06-26 15:34:34', '2019-06-26 15:34:34'),
	(1434, 1, 'kpiRzlUSrbEjHEvCeNv0kdmNuhKeVYdQ', '2019-06-26 15:34:34', '2019-06-26 15:34:34'),
	(1435, 1, 'rexKUuAmkxEglpKghdhqsBMH5GUrr3C5', '2019-06-26 16:47:45', '2019-06-26 16:47:45'),
	(1436, 1, 'fWyZbDmliNz4SwtwGAMtwW6TdId39OsR', '2019-06-26 16:48:37', '2019-06-26 16:48:37'),
	(1437, 1, 'OqqQ0HUHlYHC03miDT3cdXgY2TJwpSSo', '2019-06-26 16:48:37', '2019-06-26 16:48:37'),
	(1438, 1, 'MkOPTP9lD1lFNkyGlNJm1vCPqJBHOb8H', '2019-06-26 16:48:40', '2019-06-26 16:48:40'),
	(1439, 1, 'GUciPiHnYXedVnbazsggHendQlw7sKhJ', '2019-06-26 16:48:40', '2019-06-26 16:48:40'),
	(1440, 1, 'qH2zI6kWQ1l1mazzFnX28WnCvK7MgC5T', '2019-06-26 16:49:44', '2019-06-26 16:49:44'),
	(1441, 1, '7WyDljXq1LOJTxl4gVIr1bmAyS1tYwZd', '2019-06-26 16:49:44', '2019-06-26 16:49:44'),
	(1442, 1, 'G47gwi9yUqzCaJbxh5U5tpqcjlhzG6AG', '2019-06-26 16:49:47', '2019-06-26 16:49:47'),
	(1443, 1, 'HMNffbF17sjBA9KSY2lPjfaAcgaMS8I8', '2019-06-26 16:49:47', '2019-06-26 16:49:47'),
	(1444, 1, 'YcmLJEyPwfMKYsEg3mBxPBbVZwG0c7yj', '2019-06-26 16:51:56', '2019-06-26 16:51:56'),
	(1445, 1, 'uvX8mmLwELSAmp4urfAckrmQriTSSurQ', '2019-06-26 16:51:56', '2019-06-26 16:51:56'),
	(1446, 1, '3iE8bo5F3j6jrZtZJyIB6zouz97nVDf8', '2019-06-26 17:20:16', '2019-06-26 17:20:16'),
	(1447, 1, 'RAtzoayh7cHs3Qi613Kn2VviaYwliezW', '2019-06-26 17:20:16', '2019-06-26 17:20:16'),
	(1448, 1, 'TO3CAxiKHeuVCo0MONclg3F5TUu09vbZ', '2019-06-26 17:20:16', '2019-06-26 17:20:16'),
	(1449, 1, 'A9Aawug2JyGsKf0mVeO0bOnGRVsmSPtr', '2019-06-26 17:20:17', '2019-06-26 17:20:17'),
	(1450, 1, 'xqFdXe82Kkq8UuoJArVf17B9RjaPa8IU', '2019-06-26 17:20:23', '2019-06-26 17:20:23'),
	(1451, 1, 'D8c3XtqdF8KeavqADGq0IA2beYSEmsgG', '2019-06-26 17:20:23', '2019-06-26 17:20:23'),
	(1452, 1, 'dIGFAcmInj9JCZl6WHDRBLJ595yqobSb', '2019-06-26 17:20:23', '2019-06-26 17:20:23'),
	(1453, 1, 'FHBE24wMtkSwNRzL7MxKQPQsMmQFQs6A', '2019-06-26 17:20:23', '2019-06-26 17:20:23'),
	(1454, 1, 'HWDt4WRvas9TLg7pqkmZeJKNG5yVjNvm', '2019-06-26 17:27:13', '2019-06-26 17:27:13'),
	(1455, 1, 'g5cEXXB4SJMMBzEmYKRf1JD5FJPYDKNi', '2019-06-26 17:27:13', '2019-06-26 17:27:13'),
	(1456, 1, 'QeugaiXsSNuafvVxzaANVdVTPDBCKtvW', '2019-06-26 17:27:13', '2019-06-26 17:27:13'),
	(1457, 1, 'oKkOYr7G0fPE6ght4fRMGk8FxiCJCjzX', '2019-06-26 17:27:13', '2019-06-26 17:27:13'),
	(1458, 1, 'NRSOqgahIgD2ZJTj4lr4qHpsG1aSoYlL', '2019-06-26 17:27:20', '2019-06-26 17:27:20'),
	(1459, 1, 'Gw81o3coXHHSPM2sKAF830x2wCXzNU9N', '2019-06-26 17:27:20', '2019-06-26 17:27:20'),
	(1460, 1, 'y15fwBkQ1k4tNtoYQiHChrvwOLv74Yae', '2019-06-26 17:27:20', '2019-06-26 17:27:20'),
	(1461, 1, 'CJUIFqjto6dXdkSdSGYJT4pR09QBmf6B', '2019-06-26 17:27:21', '2019-06-26 17:27:21'),
	(1462, 1, 'EQt656rQuSFPFCgloZJNPwB53S8Bgi8K', '2019-06-26 17:27:45', '2019-06-26 17:27:45'),
	(1463, 1, 'CofnCCwB9wKHTjfUnxObOBBFLB4zkDNO', '2019-06-26 17:27:46', '2019-06-26 17:27:46'),
	(1464, 1, 'fFxS1rrr6hJ4BEHWWQUmClgFBissbHUJ', '2019-06-26 17:27:46', '2019-06-26 17:27:46'),
	(1465, 1, 'VvwZmv7Io0pDDhM2mPy0nJsLtc3MlRCN', '2019-06-26 17:27:46', '2019-06-26 17:27:46'),
	(1466, 1, 'wdAleMlXgMYfYpTnbDgmFMQQkMBDNNaE', '2019-06-26 17:27:58', '2019-06-26 17:27:58'),
	(1467, 1, 'QTwWqtYni7dOJ8se1RNkse0DeH0GC8ox', '2019-06-26 17:27:58', '2019-06-26 17:27:58'),
	(1468, 1, 'cWVIeyWACn77vrDp5tmpx2Ejwz4Owd8N', '2019-06-26 17:28:00', '2019-06-26 17:28:00'),
	(1469, 1, 'u7NpRCEmcGWlaZI17wfm6imAeQrUWEtz', '2019-06-26 17:28:00', '2019-06-26 17:28:00'),
	(1470, 1, 'cMJmcM1TjBzlb4PaI61B6Sr0qQQtNcyf', '2019-06-26 17:28:47', '2019-06-26 17:28:47'),
	(1471, 1, 'WEKZINGKgllRe2uqw8nMOPfEBqE2hlr2', '2019-06-26 17:28:47', '2019-06-26 17:28:47'),
	(1472, 1, 'rpEAZltKcSftLsmi9pHrQ2i3nfLulnq0', '2019-06-26 17:28:48', '2019-06-26 17:28:48'),
	(1473, 1, 'CAaqT2PsYIFvmzewLahoAKBCnv5f3HuK', '2019-06-26 17:28:48', '2019-06-26 17:28:48'),
	(1474, 1, 'p1CjMPad121W9z6oiMjhsBOiAv8rVE7c', '2019-06-26 17:29:28', '2019-06-26 17:29:28'),
	(1475, 1, 'HL52TKTh6Com6is2CsLyBK5ikbbcWe2l', '2019-06-26 17:29:28', '2019-06-26 17:29:28'),
	(1476, 1, 'wBt8Xjy76B8XT0FnGScmHzkn3gKjVcrU', '2019-06-26 17:29:28', '2019-06-26 17:29:28'),
	(1477, 1, 'FPj0MD5Ljj7dBt07llMOpZ4NQtzhsVzi', '2019-06-26 17:29:29', '2019-06-26 17:29:29'),
	(1478, 1, '0RKULobH1AiY5hBv2TlLcncdOKmC50Dz', '2019-06-26 17:32:01', '2019-06-26 17:32:01'),
	(1479, 1, 'Pir62bg9DdJf6KpbWos6ytBiZYSyJvwF', '2019-06-26 17:32:01', '2019-06-26 17:32:01'),
	(1480, 1, 'UhnmJ9HcPeXHd750vmY8NfOuQM6ARRjf', '2019-06-26 17:32:01', '2019-06-26 17:32:01'),
	(1481, 1, 'LCOpLXklcyIBQOKFyQSyUxnbgURuILYP', '2019-06-26 17:32:01', '2019-06-26 17:32:01'),
	(1482, 1, 'MZ08l1UD6nXsjdV7JRwwaK0OKEICM98m', '2019-06-26 17:34:19', '2019-06-26 17:34:19'),
	(1483, 1, 'Mq7IztW43Ydj4IZh6N7Jxvsw5cNvyIrd', '2019-06-26 17:34:19', '2019-06-26 17:34:19'),
	(1484, 1, 'jfsdXVybMMRaoAQ034Qvdp55S76SQCrq', '2019-06-26 17:34:19', '2019-06-26 17:34:19'),
	(1485, 1, 'OKSS2ncpsgvmxImKvrIbZk7Vc6drlx5C', '2019-06-26 17:34:20', '2019-06-26 17:34:20'),
	(1486, 1, 'V2LlXirMK5ht7sXot4oQbSOoCNVzfugd', '2019-06-26 17:35:38', '2019-06-26 17:35:38'),
	(1487, 1, '2Y95dxng5YXPPEj8CwlZpgafgrtwzyfk', '2019-06-26 17:35:38', '2019-06-26 17:35:38'),
	(1488, 1, 'pLPZGKlSAc8riDRLV3xMihTxFrVo8EJh', '2019-06-26 17:35:38', '2019-06-26 17:35:38'),
	(1489, 1, 'j2b1mj1ksGUt8mf4Ox8S8jdNibFcs4ml', '2019-06-26 17:35:38', '2019-06-26 17:35:38'),
	(1490, 1, 'COxyHklkM5BfzcTbSb8RNGgfThCJk9nr', '2019-06-26 17:38:48', '2019-06-26 17:38:48'),
	(1491, 1, 'jYJrDw9TreFYwRRdF0fWeFpNzxZy9K1A', '2019-06-26 17:38:48', '2019-06-26 17:38:48'),
	(1492, 1, 'S49uU2I3Dp2ziTdZyzVbhR9BJG3HTRTh', '2019-06-26 17:38:49', '2019-06-26 17:38:49'),
	(1493, 1, 'kxqxOHzEdAhRuIOwUTlzTL7BNIKKkhbb', '2019-06-26 17:38:49', '2019-06-26 17:38:49'),
	(1494, 1, 'nVM6zWh4xGYOQDlSxLweFmCF0qko3JNR', '2019-06-26 17:40:42', '2019-06-26 17:40:42'),
	(1495, 1, 'EL8ymSkpxTLFNtZLMm1YhAPqk8NTfeof', '2019-06-26 17:40:43', '2019-06-26 17:40:43'),
	(1496, 1, 'LJF67u8CRXp1QxuYOS6v62ez0x0oZBm6', '2019-06-26 17:40:43', '2019-06-26 17:40:43'),
	(1497, 1, '214MdiVqIRVNY4Maiky4hvVubm9YxMKc', '2019-06-26 17:40:43', '2019-06-26 17:40:43'),
	(1498, 1, 'LApLppXKAOyG2qL00S7xGRYDmucOMWkA', '2019-06-26 17:40:57', '2019-06-26 17:40:57'),
	(1499, 1, 'Y4v2CuYGCqRjXTPtgXLVJVCbK3cySSEI', '2019-06-26 17:40:57', '2019-06-26 17:40:57'),
	(1500, 1, 'RCdJ8BPim0Xzsx3eJQvikTGYF3loPQ4I', '2019-06-26 17:40:58', '2019-06-26 17:40:58'),
	(1501, 1, 'XxjxHnT6N88D6dgUob7wnKXYnRWVKxmP', '2019-06-26 17:40:58', '2019-06-26 17:40:58'),
	(1502, 1, '4NgNyIUJ0nkecs0BY8zu4NAMO1wSBdki', '2019-06-26 17:46:35', '2019-06-26 17:46:35'),
	(1503, 1, 'Tp3lRdU1ABuq2z7sAKhWmqfvlgTsEzQ9', '2019-06-26 17:46:35', '2019-06-26 17:46:35'),
	(1504, 1, 'Op3hCD2b7MRadrdaGt4l95fm4FZfttGV', '2019-06-26 17:46:35', '2019-06-26 17:46:35'),
	(1505, 1, 'ZzuMx3GiJN1Jg2SwSZaisaM20hrk55Zr', '2019-06-26 17:46:35', '2019-06-26 17:46:35'),
	(1506, 1, 'joO5HAVNuragQCIt82niRqFy132q72Hs', '2019-06-26 17:48:57', '2019-06-26 17:48:57'),
	(1507, 1, 'nlUfwMEbs1CsOocJWupJTElrOLiY1QZ8', '2019-06-26 17:48:57', '2019-06-26 17:48:57'),
	(1508, 1, 'u8vVgym2GlTr6hB72SvD8iCVhPT6NI9j', '2019-06-26 17:48:57', '2019-06-26 17:48:57'),
	(1509, 1, 'RbTVyr5hdXnOKEbPsrDZ5IfK2HviBiOr', '2019-06-26 17:48:57', '2019-06-26 17:48:57'),
	(1510, 1, '1gSRhujHu7JoAfQz5xHVEW8mbOL596sa', '2019-06-26 17:49:06', '2019-06-26 17:49:06'),
	(1511, 1, 'yFz1phSQJs38dZ5oApHXsu8qoGAcUodc', '2019-06-26 17:49:06', '2019-06-26 17:49:06'),
	(1512, 1, 'JfTzwxiN0NDQXDQEaRPf0xMcPDIcPf7p', '2019-06-26 17:55:45', '2019-06-26 17:55:45'),
	(1513, 1, 'wh3vhAfVnKN76aSf4cKX50ctWfwOcoKV', '2019-06-26 17:55:45', '2019-06-26 17:55:45'),
	(1514, 1, 'L4xyzIXxFxvAm56cBLnCSe79qAlT6Liu', '2019-06-26 17:56:22', '2019-06-26 17:56:22'),
	(1515, 1, 'e271bwDzljueirQUOoCBkJ0h3ar5DkwF', '2019-06-26 17:56:22', '2019-06-26 17:56:22'),
	(1516, 1, 'PdJmoeBYb1f2SGy6YXaCq6xSKnQuOTBj', '2019-06-26 17:56:22', '2019-06-26 17:56:22'),
	(1517, 1, 'A7ecuDYmmu9q0WLq7ZZiFnsmEdwJvMYt', '2019-06-26 17:56:23', '2019-06-26 17:56:23'),
	(1518, 1, 'pNeZpM5tIfRfy7CUsech5mX6XSm4NSl2', '2019-06-26 18:14:39', '2019-06-26 18:14:39'),
	(1519, 1, 'WKZZtK3QWPMDeXfQ6mV4NNLTqXzjhLkH', '2019-06-26 18:14:40', '2019-06-26 18:14:40'),
	(1520, 1, 'gWs9bGazRftkFkQLpodkot39BZDPczcv', '2019-06-26 18:14:40', '2019-06-26 18:14:40'),
	(1521, 1, 'V324zkJ0GzucqeDENkGNQKukoeIo6GC5', '2019-06-26 18:14:41', '2019-06-26 18:14:41'),
	(1522, 1, '2GeI6jcsW7OM625zynKZ7rsKh41dpb4T', '2019-06-26 18:14:50', '2019-06-26 18:14:50'),
	(1523, 1, 'f1wgU2PDc5xPIhYFmeGKiTcFkbM4Pt2K', '2019-06-26 18:14:50', '2019-06-26 18:14:50'),
	(1524, 1, 'rSMg7LjzAcUinKbo0IcoruylcAzvavJz', '2019-06-26 18:57:01', '2019-06-26 18:57:01'),
	(1525, 1, 'PqC1o6ogXG6fDh9GWaRX3edx4xWio8gm', '2019-06-26 18:57:01', '2019-06-26 18:57:01'),
	(1526, 1, 'YrDvhNlZW5BrluGEFMREqgWNSBqVct7X', '2019-06-27 11:17:33', '2019-06-27 11:17:33'),
	(1527, 1, 'qVdWSQ7l1jeksf1AIEyMBKfjd7lQFCXn', '2019-06-27 11:17:33', '2019-06-27 11:17:33'),
	(1528, 1, '065ZPNnIgiT49IIiiFMJMTqjTG4P7rZq', '2019-06-27 11:17:33', '2019-06-27 11:17:33'),
	(1529, 1, 'M2P29iKYSJ6eQH5gCcj3L7qNuqnJLGqB', '2019-06-27 11:17:33', '2019-06-27 11:17:33'),
	(1530, 1, 'WL73JmBthFPPEyIM2ajLcDcmGxV3CtxC', '2019-06-27 11:17:33', '2019-06-27 11:17:33'),
	(1531, 1, 'oST1m7MAlyMVsi2LoNJMSPHlyynFdGsA', '2019-06-27 11:17:34', '2019-06-27 11:17:34'),
	(1532, 1, 'diShtCOwN2WFlZ1NnUBYTCCklnkWErRj', '2019-06-27 11:17:34', '2019-06-27 11:17:34'),
	(1533, 1, 'sGRGoKSZqVKkbrvvNDr6hw1VlrU1Dr1o', '2019-06-27 11:17:34', '2019-06-27 11:17:34'),
	(1534, 1, 'gROZA4phUsmPhITIOxZ6D6ws6NXDhlQ5', '2019-06-27 11:18:38', '2019-06-27 11:18:38'),
	(1535, 1, 'zGrODIADtuPwl2p4BEeDoO8Rsbb3B77x', '2019-06-27 11:18:41', '2019-06-27 11:18:41'),
	(1536, 1, 'tyKuYYFiqoalf5EOCOC3miRw2nKOPWCg', '2019-06-27 11:18:50', '2019-06-27 11:18:50'),
	(1537, 1, 'nm6haCbQfNwUZPnxgeLd4OrbCkY880Fj', '2019-06-27 11:18:50', '2019-06-27 11:18:50'),
	(1538, 1, 'lsiuj7FJPDEusYi0KGWNJCYXP8hshiTr', '2019-06-27 11:18:51', '2019-06-27 11:18:51'),
	(1539, 1, 'n8h3PhADFXblrUDmfdL3NiMGaOkFcbsB', '2019-06-27 11:18:51', '2019-06-27 11:18:51'),
	(1540, 1, 'zGjzzbG999U4uV82ZVZmG7E6eUeaaWQT', '2019-06-27 11:18:51', '2019-06-27 11:18:51'),
	(1541, 1, 'oWPMoHogaBO3moq0LMv4RI61PN3wmO4G', '2019-06-27 11:18:51', '2019-06-27 11:18:51'),
	(1542, 1, 't3G0M2sh2DDCR3C3H3THq2Jmq0ugo8RN', '2019-06-27 11:18:51', '2019-06-27 11:18:51'),
	(1543, 1, 'Gz55k80rDnPXcNr3sbJZAh3mux7FOrA6', '2019-06-27 11:18:51', '2019-06-27 11:18:51'),
	(1544, 1, 'xqA5NJnXDW7p3ZL16ljfbxzq6K1lkP0z', '2019-06-28 11:10:50', '2019-06-28 11:10:50'),
	(1545, 1, 'X372jzO5XzojjiqPEjXbWyzwGu6op6iQ', '2019-06-28 11:10:51', '2019-06-28 11:10:51'),
	(1546, 1, 'WYdH6jeCCcuTQG9c92K5fVbpqj4VxnFx', '2019-06-28 11:10:52', '2019-06-28 11:10:52'),
	(1547, 1, 'TSj2nJOH6D9wKcZwVAtlwJcD00z88NIw', '2019-06-28 11:10:52', '2019-06-28 11:10:52'),
	(1548, 1, 'EGlcekcwZjKbx8pdfBzYtnmY8JCxfsUe', '2019-06-28 11:11:04', '2019-06-28 11:11:04'),
	(1549, 1, '4kpcY88aCNkLaCJgBzxnKGTBmbpd8aZN', '2019-06-28 11:11:04', '2019-06-28 11:11:04'),
	(1550, 1, 'aBsX61wGyDI75gLi0NAaIhRVDNKvMXiP', '2019-06-28 11:11:13', '2019-06-28 11:11:13'),
	(1551, 1, '3ZxWiGT2PLjDz4lxf7rKdTvOTAzeTJv2', '2019-06-28 11:11:13', '2019-06-28 11:11:13'),
	(1552, 1, 'HAxPv9grpchfYCuOzNBZhGjOiJZjJGdm', '2019-06-28 11:11:59', '2019-06-28 11:11:59'),
	(1553, 1, 'CR0rWrZ8m6TTbDh05qINjfTbg0bBZY5H', '2019-06-28 11:11:59', '2019-06-28 11:11:59'),
	(1554, 1, 'VwFdBCa4UBG9i0n71peRU4Yzmoplq69Q', '2019-06-28 11:12:22', '2019-06-28 11:12:22'),
	(1555, 1, 'CjJoG5sXigk9mMtiJNE2pYgRPl1vBRyI', '2019-06-28 11:12:22', '2019-06-28 11:12:22'),
	(1556, 1, 'k11J3bGfDwgYhfLU78fYxchfpxl1p4dH', '2019-06-28 11:24:31', '2019-06-28 11:24:31'),
	(1557, 1, 'bfUojdsxBCykLRubmnG4gQq5hMzgO4oy', '2019-06-28 11:24:32', '2019-06-28 11:24:32'),
	(1558, 1, 'I4hDMDVCQ9OeOGPsI7JRlajoa274VSE5', '2019-06-28 11:40:56', '2019-06-28 11:40:56'),
	(1559, 1, 'j16SPsDhmOVs4x84JsiSTL7KdiyAINwA', '2019-06-28 11:40:56', '2019-06-28 11:40:56'),
	(1560, 1, '93aN72RiLoceTt075IlXpMkqRZPZZfcJ', '2019-06-28 11:40:59', '2019-06-28 11:40:59'),
	(1561, 1, 'dkOv635os49CDU7MY97Ztsmz0PaSBhnx', '2019-06-28 11:40:59', '2019-06-28 11:40:59'),
	(1562, 1, 'La7ssYYRVyEFLqcjNc8upZ1qbOUi7Fsl', '2019-06-28 11:41:07', '2019-06-28 11:41:07'),
	(1563, 1, 'KbaxeZMtsnB3PUMr8XdUe98v5iGI1Guh', '2019-06-28 11:41:07', '2019-06-28 11:41:07'),
	(1564, 1, 'TIzKPtdhI2rN4FbUwE21fDeOtCp0HpCw', '2019-06-28 11:41:16', '2019-06-28 11:41:16'),
	(1565, 1, 'nQxx6i2TNLcdp4nD1SgL15yGGJ2bFbbu', '2019-06-28 11:41:16', '2019-06-28 11:41:16'),
	(1566, 1, 'pw7glomIbhRHTmL8QspYuwzBJ2hvT1pp', '2019-06-28 11:41:25', '2019-06-28 11:41:25'),
	(1567, 1, 'oZuOVI3CakKLOepovgbMfWTz7kSa8iYy', '2019-06-28 11:41:25', '2019-06-28 11:41:25'),
	(1568, 1, 'IpRuwbJukT0HSw7PpaMhDPPPvd7tDt8N', '2019-06-28 12:05:44', '2019-06-28 12:05:44'),
	(1569, 1, 'Zywr9hOtGrBKFp5vWi192Yem2clBRp1o', '2019-06-28 12:05:44', '2019-06-28 12:05:44'),
	(1570, 1, '4BtytByBA6gCcdG1ph2C5OakuOolDHrb', '2019-06-29 09:14:10', '2019-06-29 09:14:10'),
	(1571, 1, 'HToNDYZai632IbacSlahMMDAiXdwnM2T', '2019-06-29 09:14:12', '2019-06-29 09:14:12'),
	(1572, 1, 'c2gAckznFvN9heZKP9XWfH01WwZnw7cy', '2019-06-29 10:40:18', '2019-06-29 10:40:18'),
	(1573, 1, 'xfvZbnndUvGbyxWiuT0m7kOT5EFvwGYF', '2019-06-29 10:41:35', '2019-06-29 10:41:35'),
	(1574, 1, 'gYDLYBgWrczo9nZYHPedhfzGC0iw2s5x', '2019-06-29 10:42:10', '2019-06-29 10:42:10'),
	(1575, 1, 'wAaHUyMxil6JRN28bHk6JG4F4vSugFeM', '2019-06-29 10:42:10', '2019-06-29 10:42:10'),
	(1576, 1, 'E8p3MftP3wNnTB6sOtTmK0yoWTkvh7gF', '2019-06-29 10:42:10', '2019-06-29 10:42:10'),
	(1577, 1, 'PWgppwsycfY9UovAPOl48g69REBEbjRZ', '2019-06-29 10:42:10', '2019-06-29 10:42:10'),
	(1578, 1, 'eQwlr5OjoH139MYKTn8OcYu4Wdhu15mI', '2019-06-29 10:42:10', '2019-06-29 10:42:10'),
	(1579, 1, 'kmSmlN6id8kAIGNNtiN0Y45DeoumePCF', '2019-06-29 10:42:11', '2019-06-29 10:42:11'),
	(1580, 1, 'wYcAvTcZzkJzeYQSHQvaCoFYDAoSFDRw', '2019-06-29 10:42:11', '2019-06-29 10:42:11'),
	(1581, 1, 'gJNrsnY1HuSvIc7Vsxh6iaBIDxoaRZdC', '2019-06-29 10:42:11', '2019-06-29 10:42:11'),
	(1582, 1, 'H0ZhgNwKFB33oQrFBZW84eRW98nE07Y9', '2019-06-29 10:44:53', '2019-06-29 10:44:53'),
	(1583, 1, 'P3Q1aFUTjdqBsqMKGLKjQ14cfCI9wZBl', '2019-06-29 10:44:54', '2019-06-29 10:44:54'),
	(1584, 1, 'DoaWXroO9XGuY8AqKctUdQesmDHKOOXh', '2019-06-29 10:45:16', '2019-06-29 10:45:16'),
	(1585, 1, 'Gn2xQPfkPYzOONjKtHLEetHiYAuBZ8tV', '2019-06-29 10:45:16', '2019-06-29 10:45:16'),
	(1586, 1, 'FmmXdrSyLlY8XwwtngtkJjr0JYVqjR1j', '2019-06-29 10:45:16', '2019-06-29 10:45:16'),
	(1587, 1, '1BCCfBgfLuxclu0N8Jo4z9NoOT8ttVUp', '2019-06-29 10:45:16', '2019-06-29 10:45:16'),
	(1588, 1, 'U63xXeGb78oBLM3XNq6hs3p3vbwR2JFU', '2019-06-29 10:45:17', '2019-06-29 10:45:17'),
	(1589, 1, 'QTDfYg84v4oYSgbCTBBq7wfm6ez2D0h9', '2019-06-29 10:45:17', '2019-06-29 10:45:17'),
	(1590, 1, '8sy0qICFL9QPxBtiKcMvtrbhTBWd089d', '2019-06-29 10:45:17', '2019-06-29 10:45:17'),
	(1591, 1, 'koXUY7ZlLvWoC1oYGwVaA545o8FwWV8v', '2019-06-29 10:45:17', '2019-06-29 10:45:17'),
	(1592, 1, 'yEVmO7Xm0PMfA7fGsId7TeEAHTEdtdCS', '2019-06-29 10:45:33', '2019-06-29 10:45:33'),
	(1593, 1, 'Pf3baaccEZuV8dFtAh7XLjF8ZQ72lbxT', '2019-06-29 10:45:33', '2019-06-29 10:45:33'),
	(1594, 1, 'BsKGCqn3HsNdXneLoXcXiuv95hXN20m8', '2019-06-29 10:51:16', '2019-06-29 10:51:16'),
	(1595, 1, 'CJiEw1yUCRXervsh5DvOS2wGT4NzdYmw', '2019-06-29 10:51:17', '2019-06-29 10:51:17'),
	(1596, 1, 'asg6GmEZtfbL9TdZ752GzWq4d93B22pP', '2019-06-29 10:57:32', '2019-06-29 10:57:32'),
	(1597, 1, 'k8esI9Y8H3kaN5irPRAbS1W50NMtz6eC', '2019-06-29 10:57:32', '2019-06-29 10:57:32'),
	(1598, 1, '1oQZIlxe4Cb5coWeCixtDQz9EPgw8h7V', '2019-06-29 11:02:32', '2019-06-29 11:02:32'),
	(1599, 1, 'tvUXhI7iJ3F9CG3R2fZqcj6Bf0blzY7G', '2019-06-29 11:02:32', '2019-06-29 11:02:32'),
	(1600, 1, 'XSN3rKAZHZllkVunM07UKS093gCEvhSX', '2019-06-29 11:02:32', '2019-06-29 11:02:32'),
	(1601, 1, 'RaJgPge5v60mUANxpuUYoNfiRxfERxFi', '2019-06-29 11:02:32', '2019-06-29 11:02:32'),
	(1602, 1, 'vH9VT2DzNAKTxQVZKCa2r9jFdCoUMvO3', '2019-06-29 11:02:32', '2019-06-29 11:02:32'),
	(1603, 1, 'h6dExTDNZVA1eSj3dJr2CvL9FydodsqU', '2019-06-29 11:02:32', '2019-06-29 11:02:32'),
	(1604, 1, 'sSKvVdbHWsDQPybYSarYGbjFpFKfuOh8', '2019-06-29 11:02:33', '2019-06-29 11:02:33'),
	(1605, 1, 'P6AtbBOpmB5reABPauRoxsZWdhsuh1wy', '2019-06-29 11:02:33', '2019-06-29 11:02:33'),
	(1606, 1, 'xJi0WNHO39P8nn38qzfpMagQvp7ckwPj', '2019-06-29 11:03:19', '2019-06-29 11:03:19'),
	(1607, 1, '6cEAxuH0DS2rYQhS4UqoY8lR3ee6RTqV', '2019-06-29 11:03:19', '2019-06-29 11:03:19'),
	(1608, 1, 'OwUeIJXUsyxO0TUzNvv4GVQSPnQfVxS4', '2019-06-29 11:03:19', '2019-06-29 11:03:19'),
	(1609, 1, '2w7Mgev7CcOghkGJ1YWxVzDOPTk464Bg', '2019-06-29 11:03:19', '2019-06-29 11:03:19'),
	(1610, 1, 'Isdalaq5EQdMI8IJa5DJvs1lRelpH2us', '2019-06-29 11:03:19', '2019-06-29 11:03:19'),
	(1611, 1, '62xU2KWukGf2A8WioEFCdjz7LshhBPHj', '2019-06-29 11:03:20', '2019-06-29 11:03:20'),
	(1612, 1, 'ju5MzmZI0yP7azYU7ntPKp0LGollIwBq', '2019-06-29 11:03:20', '2019-06-29 11:03:20'),
	(1613, 1, '13CQ0leG0viPIjcHSG2QleSOXI88inIE', '2019-06-29 11:03:20', '2019-06-29 11:03:20'),
	(1614, 1, 'X47GxFM29kyHU4KUxcEVTEIM3nyVcu3S', '2019-06-29 11:03:21', '2019-06-29 11:03:21'),
	(1615, 1, '7SXDk2lRWrtdIa6mdrOIpCasaM84WuxK', '2019-06-29 11:03:21', '2019-06-29 11:03:21'),
	(1616, 1, '6uXUBPAL2gR2rbWGN9SMNFnH1PXeURf8', '2019-06-29 11:03:31', '2019-06-29 11:03:31'),
	(1617, 1, 'Uuh9PJKb9yvajbp2wieEeZYqVEL4pp0A', '2019-06-29 11:03:31', '2019-06-29 11:03:31'),
	(1618, 1, 'WXhHGsOWlNFIGkNivm363YVAhQNdizTF', '2019-06-29 11:04:29', '2019-06-29 11:04:29'),
	(1619, 1, '8tDu9XxBmgGhj53fDI7Ifm3cW03bsMRs', '2019-06-29 11:04:29', '2019-06-29 11:04:29'),
	(1620, 1, '0N2uydSYRch1jkAeACiHkOSv9UCXTmiu', '2019-06-29 11:04:29', '2019-06-29 11:04:29'),
	(1621, 1, '1JLLfuP3QBbwIjsZZ5bV1DrQPhppuEEV', '2019-06-29 11:04:30', '2019-06-29 11:04:30'),
	(1622, 1, 'qW8wksd5bWm0PMuB0J1xj6wWD2LH6yi4', '2019-06-29 11:05:20', '2019-06-29 11:05:20'),
	(1623, 1, 'a2eyRDI1ZAKBz1X8uEMfGuq4tRZ6dBDr', '2019-06-29 11:05:20', '2019-06-29 11:05:20'),
	(1624, 1, '23QWT1ZkoEVQE11FWRhKcIJtCwXcMq68', '2019-06-29 11:05:23', '2019-06-29 11:05:23'),
	(1625, 1, 'L2eW2hdDPv9HWwcEdiT2jskAMvyt98Ws', '2019-06-29 11:05:23', '2019-06-29 11:05:23'),
	(1626, 1, 'L2g5d3XQhKnZIPPu9P8IEy3Nd1ZVpDrM', '2019-06-29 11:06:04', '2019-06-29 11:06:04'),
	(1627, 1, '9XBOadCJL1yHLwz3fHVeHKFEYAuhNY1K', '2019-06-29 11:06:04', '2019-06-29 11:06:04'),
	(1628, 1, 'M6AX3bysL53XsYJxLdfvM5PVzXaVbGKf', '2019-06-29 11:06:24', '2019-06-29 11:06:24'),
	(1629, 1, 'CLxdmEMuNvRlRX2idl2TSdbemdAw66Uq', '2019-06-29 11:06:43', '2019-06-29 11:06:43'),
	(1630, 1, 'wRvPr7nwc8L8KpFyhHP6PQ8AHKGjDhVO', '2019-06-29 11:06:43', '2019-06-29 11:06:43'),
	(1631, 1, 'SReaXEOX6K329oV2GeTeoNp7dWNCsCF7', '2019-06-29 11:08:46', '2019-06-29 11:08:46'),
	(1632, 1, 'j3mPya5ACbr1LrfWUQtw12ecXi1LB8rG', '2019-06-29 11:10:45', '2019-06-29 11:10:45'),
	(1633, 1, 'w9KIzGoaGyWBaYmrH39r0Smf898F25S2', '2019-06-29 11:10:45', '2019-06-29 11:10:45'),
	(1634, 1, 'uXofgosq2H3nWmRmzkssmXASIJuEhBLR', '2019-06-29 11:10:55', '2019-06-29 11:10:55'),
	(1635, 1, 'TyUoz7N2PXJrtW92lbH01iy0Dwe4SWQf', '2019-06-29 11:11:23', '2019-06-29 11:11:23'),
	(1636, 1, 'oY3N9Caz61vpRUIQisIezvgF9oGCAcTh', '2019-06-29 11:11:25', '2019-06-29 11:11:25'),
	(1637, 1, 'RhYukfeOfi44m83NKfiKdyItzxDY1iJQ', '2019-06-29 11:11:25', '2019-06-29 11:11:25'),
	(1638, 1, '4webZ341kG43JainrPl0up7F6RqJedom', '2019-06-29 11:11:40', '2019-06-29 11:11:40'),
	(1639, 1, 'T9YeKv1ULzKp2fyUQoL9weKoXCA1C2wI', '2019-06-29 11:12:31', '2019-06-29 11:12:31'),
	(1640, 1, 'dhzDMepYPPBuLeqEYTZKFvUuifVNdhkc', '2019-06-29 11:13:07', '2019-06-29 11:13:07'),
	(1641, 1, 'Hgc5u1DLkRRyIP4fTMgPp0TNrsqpMzj8', '2019-06-29 11:13:22', '2019-06-29 11:13:22'),
	(1642, 1, 'Rhqoh8LkOQH34bk5CzhQXGLCdRvWtEif', '2019-06-29 11:13:22', '2019-06-29 11:13:22'),
	(1643, 1, 'bqqoICUtuUjCleNbTYPaiSzP35T7MjSG', '2019-06-29 11:13:30', '2019-06-29 11:13:30'),
	(1644, 1, 'yebUoRqSlVqij8Hsp9iU8DFJOpofPdm5', '2019-06-29 11:14:17', '2019-06-29 11:14:17'),
	(1645, 1, 'mjtVQwdehpZHdkCkWDRs9wbxjQALRSBU', '2019-06-29 11:14:17', '2019-06-29 11:14:17'),
	(1646, 1, '9krxscrM2vfxFtByoFpH0aMT6nUPfX7T', '2019-06-29 11:14:53', '2019-06-29 11:14:53'),
	(1647, 1, 'kMeuAiP4ewPckSkjTwfjCPSVlUKGoLPG', '2019-06-29 11:14:54', '2019-06-29 11:14:54'),
	(1648, 1, 'Uhk4qkqCmqQnNtIcWYxoBWGrh92KnGDI', '2019-06-29 11:16:03', '2019-06-29 11:16:03'),
	(1649, 1, 'uZOnotI0oYiIb9cdIyfK7ANF4GBlUaNi', '2019-06-29 11:16:03', '2019-06-29 11:16:03'),
	(1650, 1, 'y1Rt0x02KikhXF3fOitpVKnxOGf59JWB', '2019-06-29 11:16:59', '2019-06-29 11:16:59'),
	(1651, 1, 'avshNuaOFddIU7KGccwQIo2DrInpn8qo', '2019-06-29 11:17:00', '2019-06-29 11:17:00'),
	(1652, 1, 'LZRh4Lsflwh8KqxBN1ZIUkLUT0PkKxXu', '2019-06-29 11:17:37', '2019-06-29 11:17:37'),
	(1653, 1, 'mFv2ZyPTjHJsb4kSYMg34UWlmgjnYOoW', '2019-06-29 11:17:37', '2019-06-29 11:17:37'),
	(1654, 1, 'oJCWVDm5aB6G8KocdCfFX0jMDyY6Js8s', '2019-06-29 11:17:37', '2019-06-29 11:17:37'),
	(1655, 1, 'FrmPwobX03n1ixPkNPew6Li4R6jaUu3F', '2019-06-29 11:17:37', '2019-06-29 11:17:37'),
	(1656, 1, 'uQeLV63nOiE7a4DMZFePFkLsCsT6Qq1J', '2019-06-29 11:17:37', '2019-06-29 11:17:37'),
	(1657, 1, 'H9ExMTOePLBzjqqhGeZ8i8rmjYnnGGMc', '2019-06-29 11:17:37', '2019-06-29 11:17:37'),
	(1658, 1, 'vFolKUuOvkTu1UB1IthkVg8eAI0SdQsz', '2019-06-29 11:17:37', '2019-06-29 11:17:37'),
	(1659, 1, 'RObrSHje01VxG1vwXzheDaRXqPDASUIG', '2019-06-29 11:17:37', '2019-06-29 11:17:37'),
	(1660, 1, 'hSS3leEnv8KHd67lAddUoeQHWvBEaJPB', '2019-06-29 11:18:30', '2019-06-29 11:18:30'),
	(1661, 1, 'e9aDpJrfaNxcXSzaD4x84kvqAknlxp2n', '2019-06-29 11:18:30', '2019-06-29 11:18:30'),
	(1662, 1, '9IGwchQ6SV987tEsZbPcJZM8bXcu3arn', '2019-06-29 11:18:30', '2019-06-29 11:18:30'),
	(1663, 1, 'qumgSGkO65wsuT8IDkeG4pZO4hAhxdr3', '2019-06-29 11:18:30', '2019-06-29 11:18:30'),
	(1664, 1, 'ewDKU0sS8ZgF2zb6sI3vJqDUXPbnwykH', '2019-06-29 11:18:30', '2019-06-29 11:18:30'),
	(1665, 1, 'kQ5Yp1kQQ1ULY04lYB8YGHT0CkmE65g6', '2019-06-29 11:18:30', '2019-06-29 11:18:30'),
	(1666, 1, 'HsJwypEBZaHQaaIHCrnTMMM8f5CqEp4b', '2019-06-29 11:18:30', '2019-06-29 11:18:30'),
	(1667, 1, 'pvEwMbhpdyFhmX1RI76Q52z5E6TtTsuV', '2019-06-29 11:18:31', '2019-06-29 11:18:31'),
	(1668, 1, 'Uucu3j48u3lkzGY6ZXioWPWXObhJATTl', '2019-06-29 11:19:21', '2019-06-29 11:19:21'),
	(1669, 1, 'By05Df2DXI2v50ZQQ6yG6oUrUoMMUIwG', '2019-06-29 11:20:02', '2019-06-29 11:20:02'),
	(1670, 1, 'xvnZeayXRTQgEzCBkbEU3Fyr4RAh3mjL', '2019-06-29 11:20:07', '2019-06-29 11:20:07'),
	(1671, 1, '2T1sdmeQwnPrnvbD0YCzWgRLJITrB5Yg', '2019-06-29 11:20:14', '2019-06-29 11:20:14'),
	(1672, 1, '6aZK1xBkLVh6U7Dwq8bVmoI04HNm123y', '2019-06-29 11:23:19', '2019-06-29 11:23:19'),
	(1673, 1, '4eB00N8XQhhAgJv6XS0SzzYaUT7LiyIA', '2019-06-29 11:23:19', '2019-06-29 11:23:19'),
	(1674, 1, '8pFwtiGCwqX2zg8i3me0FblgrQJRrREm', '2019-06-29 11:23:19', '2019-06-29 11:23:19'),
	(1675, 1, 'QgiQH8x9dguBgEt463Cw5WWkQRCtCNhX', '2019-06-29 11:23:19', '2019-06-29 11:23:19'),
	(1676, 1, 'JDXej75uPDsYUoe5hyD9zSrt4nXO6gdK', '2019-06-29 11:23:19', '2019-06-29 11:23:19'),
	(1677, 1, 'Pwuy55gtRt0ucgSaCF5E0534Hnjw6VSb', '2019-06-29 11:23:19', '2019-06-29 11:23:19'),
	(1678, 1, 'qNQsrQfqDrminNlvZRxDTDfzORmsXgkf', '2019-06-29 11:23:19', '2019-06-29 11:23:19'),
	(1679, 1, '6l5RGUqZXCWqzEZmqi6trwRC0YTZv7yF', '2019-06-29 11:23:19', '2019-06-29 11:23:19'),
	(1680, 1, 'Nu7Vk9lJgOvbPITypl3oo5i90zyMYL7e', '2019-06-29 11:23:35', '2019-06-29 11:23:35'),
	(1681, 1, 'tugbD98IGXY6fSK8WdfFCnW8pSSyOGw8', '2019-06-29 11:23:41', '2019-06-29 11:23:41'),
	(1682, 1, 'H05NH9pMjoDt48Rbpi8mqv6AquCdRebn', '2019-06-29 11:23:41', '2019-06-29 11:23:41'),
	(1683, 1, 'bqQJlw4JigK5cYXgiyFvHx6r6H6ACyWj', '2019-06-29 11:24:30', '2019-06-29 11:24:30'),
	(1684, 1, 'FCWN880e7fJBVjW6sJtDaqxCs3MG74le', '2019-06-29 11:24:32', '2019-06-29 11:24:32'),
	(1685, 1, 'QWicQWISk1dtyXsoHqCnOD9SU6q5CBQm', '2019-06-29 11:24:32', '2019-06-29 11:24:32'),
	(1686, 1, 'ZXtXYw9fxZ0idwRtAKj7dl8xTOpl9l1C', '2019-06-29 11:24:42', '2019-06-29 11:24:42'),
	(1687, 1, 'hSV1KSTTNPx7QoTzh93BwHP3zeXrCmyf', '2019-06-29 11:25:07', '2019-06-29 11:25:07'),
	(1688, 1, 'bOE3EeUD4SHZ0Qx82zpLEkqaHBeNKXK2', '2019-06-29 11:25:18', '2019-06-29 11:25:18'),
	(1689, 1, 'K1ev9i5Jwv73m2w1OqKXq1iSIRDmyWi0', '2019-06-29 11:25:23', '2019-06-29 11:25:23'),
	(1690, 1, 'Y54vewoEvUP4470HZN6WPDLklg91QIir', '2019-06-29 11:25:32', '2019-06-29 11:25:32'),
	(1691, 1, 'P8ujLeX56vy2bFijOaZ1etgR0ltgGsrM', '2019-06-29 11:25:32', '2019-06-29 11:25:32'),
	(1692, 1, 'm9aYencqcr3Ax5y0HGZdparFXTih059r', '2019-06-29 11:25:34', '2019-06-29 11:25:34'),
	(1693, 1, '2oxuYqMzj74nY8T2O4vrq1tu2ya3jdIx', '2019-06-29 11:25:34', '2019-06-29 11:25:34'),
	(1694, 1, 'P8OFQKsYmlFrEYrabwAShMNB6b9w1KX7', '2019-06-29 11:25:41', '2019-06-29 11:25:41'),
	(1695, 1, 'O2z9wN2H8uVAmGlxyCfGxmYMQPI895b4', '2019-06-29 11:25:46', '2019-06-29 11:25:46'),
	(1696, 1, 'dYuOqGPkOIXK69Nho3T8cBTWU16NpV2E', '2019-06-29 11:25:53', '2019-06-29 11:25:53'),
	(1697, 1, 'cyoldVDBoWR3rOUKMxwLcpIdEdTPNGRb', '2019-06-29 11:25:54', '2019-06-29 11:25:54'),
	(1698, 1, 'K37iMsJMu48phZylj5ukkEd9WE5rKkpU', '2019-06-29 11:25:55', '2019-06-29 11:25:55'),
	(1699, 1, 'roDZ5cobtlUdnV01wRlU2xv4raSvJKzI', '2019-06-29 11:25:55', '2019-06-29 11:25:55'),
	(1700, 1, 'Ona0ygU0loUign10nKjgiFEGrQpQML1s', '2019-06-29 11:26:09', '2019-06-29 11:26:09'),
	(1701, 1, 'Syw3a2Dtqk6AUDhimqlev7kuVIAyegGi', '2019-06-29 11:26:17', '2019-06-29 11:26:17'),
	(1702, 1, '3jPnywEr3kmoMFeoSwCuYB4swQHKODPO', '2019-06-29 11:26:18', '2019-06-29 11:26:18'),
	(1703, 1, '8T1OqLDWku8pK5uwdV8yCeYYVsU99fTu', '2019-06-29 11:26:21', '2019-06-29 11:26:21'),
	(1704, 1, 'yXjAZ5Kb8L26YKEMSLMR4PsxncHeL04c', '2019-06-29 11:26:22', '2019-06-29 11:26:22'),
	(1705, 1, '85q8ctOu3IPvwcI8Xs2x9a4Pi1lH0usl', '2019-06-29 11:26:25', '2019-06-29 11:26:25'),
	(1706, 1, 'QOivpvCTCohTfR9skvbTOirJ1XJnxFBc', '2019-06-29 11:26:26', '2019-06-29 11:26:26'),
	(1707, 1, 'nPtKwHFchK5fX7rBEDZgGOJJ5cLRQGKa', '2019-06-29 11:26:29', '2019-06-29 11:26:29'),
	(1708, 1, '2537T15XFlnL9vtbV9cHd5tCMQzVPD3a', '2019-06-29 11:26:29', '2019-06-29 11:26:29'),
	(1709, 1, 'fMDx5YDYNG1lRgGpLSeg1cZN3S0mOmx3', '2019-06-29 11:26:32', '2019-06-29 11:26:32'),
	(1710, 1, 'TXL9FLyydhAq1jvbKFIa1aAF5v6aMV0N', '2019-06-29 11:26:32', '2019-06-29 11:26:32'),
	(1711, 1, 'pDBNFZPNU3wBJlTdygQE34bY6Wlst6gs', '2019-06-29 11:26:34', '2019-06-29 11:26:34'),
	(1712, 1, 'pwcnQT097YN6Uka4GEJXrGrVMRPpZgW7', '2019-06-29 11:26:34', '2019-06-29 11:26:34'),
	(1713, 1, '7Lq6B3DpsDX3oy9mHxvHXKQzClTaJqEV', '2019-06-29 11:29:16', '2019-06-29 11:29:16'),
	(1714, 1, 'Zuuhs8YLiph4uqPEOnExelG9oI0CtOO9', '2019-06-29 11:29:17', '2019-06-29 11:29:17'),
	(1715, 1, 'AIdvV1eZ8gTFOyaHnsxo8UU1rXDsR2km', '2019-06-29 11:30:32', '2019-06-29 11:30:32'),
	(1716, 1, '2M8nVHjZbJuBZXS7aaIA0WPt2Sx06sYM', '2019-06-29 11:30:32', '2019-06-29 11:30:32'),
	(1717, 1, 'SjRCHvCFzT5TNeN6wuGcXJtex5er11ql', '2019-06-29 11:31:53', '2019-06-29 11:31:53'),
	(1718, 1, 'LHbV7yBfNjTYK4J7jB9ycRsq8cl9vRAi', '2019-06-29 11:31:53', '2019-06-29 11:31:53'),
	(1719, 1, 'HYxxDBnYZWdpIn5r7sIqhjK37X3QwJJK', '2019-06-29 11:43:33', '2019-06-29 11:43:33'),
	(1720, 1, 'tEmpLziEenJn8mIMueIPKrpliInZ0MNa', '2019-06-29 11:43:33', '2019-06-29 11:43:33'),
	(1721, 1, 'vgFkjvl4Ruou6k4tlNbfFSZurYCWCiA2', '2019-06-29 11:43:37', '2019-06-29 11:43:37'),
	(1722, 1, 'YOZbrH9VRUrhvEmW9BAK6LvZXiwk7LoW', '2019-06-29 11:44:29', '2019-06-29 11:44:29'),
	(1723, 1, 'jbRG8uQO69cByjG36A2dyPEtQmeDkXRn', '2019-06-29 11:44:34', '2019-06-29 11:44:34'),
	(1724, 1, 'O3WSvU1w6QRdpz9dspOzpJmFlGBXJ7PF', '2019-06-29 11:44:34', '2019-06-29 11:44:34'),
	(1725, 1, 'l58tLEl22xQEFHFP5nvQfTjSfxIuvBWE', '2019-06-29 11:46:25', '2019-06-29 11:46:25'),
	(1726, 1, 'ShhZkgMAH1mYIQSFqhYJK1V6jB1azEVp', '2019-06-29 11:46:27', '2019-06-29 11:46:27'),
	(1727, 1, 'W8phc2cVtSrspOsIw418X9IZzE1gyXcW', '2019-06-29 11:46:27', '2019-06-29 11:46:27'),
	(1728, 1, 'vYvh7PFiPeXbLo1Qi0aIG5VJuACpoKkF', '2019-06-29 11:47:58', '2019-06-29 11:47:58'),
	(1729, 1, '3XtjK2shEjsj88asyVoRzMAfMLLIMcDp', '2019-06-29 11:47:58', '2019-06-29 11:47:58'),
	(1730, 1, 'TmAgoUZpUbR2dR6yqXAO4z2wZTMUsx2r', '2019-06-29 11:48:21', '2019-06-29 11:48:21'),
	(1731, 1, 'BwzHNE2MbyZCVF5NptthLVp97zKAZwSx', '2019-06-29 11:48:37', '2019-06-29 11:48:37'),
	(1732, 1, 'ormj0GbpJvW1vmdhHFlBo6DrVqDABGK4', '2019-06-29 11:48:37', '2019-06-29 11:48:37'),
	(1733, 1, 'U54O0o7wDi7Y6SO3CmQoIhbIDhts21Xm', '2019-06-29 11:49:20', '2019-06-29 11:49:20'),
	(1734, 1, 'Uf119hp1LbodnKU3wpqSNuwXUcFl58U0', '2019-06-29 11:49:22', '2019-06-29 11:49:22'),
	(1735, 1, 'mRzuJdsFA7Ct2dqwgiqrn3V8Q7u6P0k5', '2019-06-29 11:49:22', '2019-06-29 11:49:22'),
	(1736, 1, 'lpt6hCQVrkEpxRctCMwkQdDs8RVdFzvI', '2019-06-29 12:04:45', '2019-06-29 12:04:45'),
	(1737, 1, 'eHZnKnwmVb4IY2J3PsMFyrdmMVBlvQic', '2019-06-29 12:04:48', '2019-06-29 12:04:48'),
	(1738, 1, 'uIFfiUz57mOW49O6cvaO7pbSY6gsnHyf', '2019-06-29 12:04:48', '2019-06-29 12:04:48'),
	(1739, 1, 'RZ3I2k1JruUHDlCMP42QUSGAHVWoY8zi', '2019-06-29 12:06:55', '2019-06-29 12:06:55'),
	(1740, 1, 'zoc2KRwEMuQTK0FmhHLFwzjFW0lRInzS', '2019-06-29 12:07:10', '2019-06-29 12:07:10'),
	(1741, 1, 'dg5OKFGuQItu3KMpmc8d785FemfQ20HT', '2019-06-29 12:07:12', '2019-06-29 12:07:12'),
	(1742, 1, 'NpQ8W9duaKBy1W73N3QDSqBUjKnbTsSI', '2019-06-29 12:07:12', '2019-06-29 12:07:12'),
	(1743, 1, 'G2boIrA41sswAsyg1rXGFr4E5WV8QdI6', '2019-06-29 12:07:31', '2019-06-29 12:07:31'),
	(1744, 1, 'rQhkdPxt4OH5RrQilC23sVudObBb7Rdb', '2019-06-29 12:07:32', '2019-06-29 12:07:32'),
	(1745, 1, 'U8cxyftptuEQ5H0H4jYecZHmri9Dfkti', '2019-06-29 12:09:59', '2019-06-29 12:09:59'),
	(1746, 1, '5nJgsue6J7PD5IFDNxFXA5gINKaKEjqj', '2019-06-29 12:10:06', '2019-06-29 12:10:06'),
	(1747, 1, '7cCums1lfrXUaJvuAG53k8vQuE1J6UV0', '2019-06-29 12:10:06', '2019-06-29 12:10:06'),
	(1748, 1, '1QXNuVyVFQAq5n5jzS9TKcaJRBDVtDv8', '2019-06-29 12:10:06', '2019-06-29 12:10:06'),
	(1749, 1, 'PNMqRQAHz6Bv7QBk9nTanA8nH3R5SISj', '2019-06-29 12:10:06', '2019-06-29 12:10:06'),
	(1750, 1, 'sb9Myw0VnpPTyWjcfiUeknHhdkwKM0tk', '2019-06-29 12:10:06', '2019-06-29 12:10:06'),
	(1751, 1, 'AFX743wOJCVGsciLvJri2JZqv3ZpP5zG', '2019-06-29 12:10:06', '2019-06-29 12:10:06'),
	(1752, 1, 'dH3oPw0NfWXsVGcM2Eow3VFraqAG9iF9', '2019-06-29 12:10:06', '2019-06-29 12:10:06'),
	(1753, 1, '6QGcDelOXaV3lpZtDyMfCKcMQQ6GZuWm', '2019-06-29 12:10:07', '2019-06-29 12:10:07'),
	(1754, 1, 'HRj5iogz8fHLnubbkmdViqc9CdeqFdqf', '2019-06-29 12:10:20', '2019-06-29 12:10:20'),
	(1755, 1, 'GACqpO5XANdFpgIzJTT4WvrG4NNyLgGX', '2019-06-29 12:10:21', '2019-06-29 12:10:21'),
	(1756, 1, 'dEvRFrEuRIbaeHlbEKyZyTAr3rIK92uS', '2019-06-29 12:11:17', '2019-06-29 12:11:17'),
	(1757, 1, 'P9oFtQEN1AXXijQT5f1XIKvLr3aJEYYW', '2019-06-29 12:11:17', '2019-06-29 12:11:17'),
	(1758, 1, 'VNHC33rKdtx7zasYphy8yeBONu1SF3Lu', '2019-06-29 12:11:34', '2019-06-29 12:11:34'),
	(1759, 1, 'vhGNwBZVRG9P6rpwpO5Y3jVsQBlDYDvZ', '2019-06-29 12:11:40', '2019-06-29 12:11:40'),
	(1760, 1, '7DPwWDGKQZfukOChZHt16PnEzJlqjlRb', '2019-06-29 12:11:44', '2019-06-29 12:11:44'),
	(1761, 1, 'CYtCUGF7PU3m77CH9gN9ZowY9iNix8TI', '2019-06-29 12:12:01', '2019-06-29 12:12:01'),
	(1762, 1, 'bw1ujUCzcOlhF4wEtXqENtvBkbvhA8CB', '2019-06-29 12:12:01', '2019-06-29 12:12:01'),
	(1763, 1, 'yj9BRENkWbBBSyL4nvFZ5nrsztI0Zwqm', '2019-06-29 12:12:06', '2019-06-29 12:12:06'),
	(1764, 1, 'cfSJDa2EodX8EzpoSbydhQ3lLZ6WtInu', '2019-06-29 12:12:11', '2019-06-29 12:12:11'),
	(1765, 1, 'yrWLbHvRd4oFyy9rLvuNBRxbwtNzY90D', '2019-06-29 12:12:24', '2019-06-29 12:12:24'),
	(1766, 1, '8tA4ZCRhcxWP7gvz7igmCC9aQJisob6W', '2019-06-29 12:12:24', '2019-06-29 12:12:24'),
	(1767, 1, '8wzhb9SRZs0l7AVyozZMQmhC5R3CVazU', '2019-06-29 12:12:25', '2019-06-29 12:12:25'),
	(1768, 1, 'P4vBDaAPR8bJPm0wLYNGVTVTAiAgEKky', '2019-06-29 12:12:25', '2019-06-29 12:12:25'),
	(1769, 1, '3c4qKJNMbjlcbicJFtSBBIsiMPO8zzxu', '2019-06-29 12:12:25', '2019-06-29 12:12:25'),
	(1770, 1, '0aPXTxutik8TCnKjRwyC5Q2iFLYIVp7A', '2019-06-29 12:12:25', '2019-06-29 12:12:25'),
	(1771, 1, 'Fsazp2X01U4fCg6p4oLz08cn0yMOGp3K', '2019-06-29 12:12:25', '2019-06-29 12:12:25'),
	(1772, 1, 'nNEIbvJwQjcqtalUZ35TUeZYlDa2qRUD', '2019-06-29 12:12:25', '2019-06-29 12:12:25'),
	(1773, 1, 'Om9SkGaNjVkDXJhKKIlBSVUJAHPcz2Ek', '2019-06-29 12:15:39', '2019-06-29 12:15:39'),
	(1774, 1, 'Vd6SxQLDUJaFKrmx78FaLTWEXd25A5QH', '2019-06-29 12:15:44', '2019-06-29 12:15:44'),
	(1775, 1, 'bQxBaJQ8LyShEjMtvaOo6bCvVKxp5Hh9', '2019-06-29 12:15:46', '2019-06-29 12:15:46'),
	(1776, 1, 'mtWPe7dzKGpWLhC3k2y4AHH3un6CXu76', '2019-06-29 12:17:09', '2019-06-29 12:17:09'),
	(1777, 1, 'yxQR1CKXGmWyQa3FZFP5EJCyT258MINS', '2019-06-29 12:18:13', '2019-06-29 12:18:13'),
	(1778, 1, 'fjkfurd5jkAUhCqldPMnnzkg9LKqAlzX', '2019-06-29 12:18:21', '2019-06-29 12:18:21'),
	(1779, 1, 'mFGne0r7ShCF5acnpnSJoP2C1KSrGtGK', '2019-06-29 12:18:24', '2019-06-29 12:18:24'),
	(1780, 1, 'GQlOvR1Fxdy7UzV5oZM3uWcYvR0H07bq', '2019-06-29 12:18:32', '2019-06-29 12:18:32'),
	(1781, 1, 'wexYYqSywZm4erB9TKj9DiHaSpRcmANG', '2019-06-29 12:18:34', '2019-06-29 12:18:34'),
	(1782, 1, 'wlZfi3s6aPdbf1aJKBe90YWKTvJs3PBK', '2019-06-29 12:19:25', '2019-06-29 12:19:25'),
	(1783, 1, 'cB9u5Pw8UZ3fu7U7f0VmdjqglT85FXsw', '2019-06-29 12:19:25', '2019-06-29 12:19:25'),
	(1784, 1, 'Gp3ErHRXRAqYdhjjQLxs5TZ80hFKPna3', '2019-06-29 12:19:25', '2019-06-29 12:19:25'),
	(1785, 1, 'bg8EpWtx3AeVQpgxsX22zslwdXx3JDpV', '2019-06-29 12:19:25', '2019-06-29 12:19:25'),
	(1786, 1, 'xklZ7IjrMVX7wDyQKfa0c2pVYEqw6cxu', '2019-06-29 12:19:25', '2019-06-29 12:19:25'),
	(1787, 1, 'UypcSSeOM9jDIiZs4ZReQWIdV3sGHLaX', '2019-06-29 12:19:25', '2019-06-29 12:19:25'),
	(1788, 1, 'rkFTh6O6Bg36f6quxR2BZgmFg3FiNPu2', '2019-06-29 12:19:25', '2019-06-29 12:19:25'),
	(1789, 1, 'i9DNCSmCvgCtPsgEVtxw6QoYYyICKM9F', '2019-06-29 12:19:25', '2019-06-29 12:19:25'),
	(1790, 1, 'rc1QDIFfatIpyVH0iDBSYXEdbJtRNEqO', '2019-06-29 14:17:19', '2019-06-29 14:17:19'),
	(1791, 1, 'hjGehGukRNrBS36ERTgmBnJmqPHNt8NK', '2019-06-29 14:17:19', '2019-06-29 14:17:19'),
	(1792, 1, 'UTQFVijIpgvPrZy9cWSwUK1psDWMBCun', '2019-07-02 08:13:05', '2019-07-02 08:13:05'),
	(1793, 1, 'Bz91Z964M1SqdjpzZJPbvdlSMH961Ff5', '2019-07-02 08:13:09', '2019-07-02 08:13:09'),
	(1794, 1, 'C3nSB6J6pJq7qhmot63YeQA7s3mjG6XT', '2019-07-23 15:25:28', '2019-07-23 15:25:28'),
	(1795, 1, 'mWsuMbMsGDxrzAW8YqFLmPQwDmUjEboc', '2019-07-23 15:25:58', '2019-07-23 15:25:58'),
	(1796, 1, 'Zr7hHgSElkXe4gzrkbIAUUCWHvuYPmC2', '2019-07-23 15:25:58', '2019-07-23 15:25:58'),
	(1797, 1, 'cTd1IwGHo3IuEl3RjXQcmMGCQeOtrcii', '2019-07-23 15:46:20', '2019-07-23 15:46:20'),
	(1798, 1, 'ZEZTMrxAoGtvda4e2jj0YEizdKvI51sm', '2019-07-23 16:47:29', '2019-07-23 16:47:29'),
	(1799, 1, 'VLtZXPylX4gmQ6D8GIsJwWxrnwjvVXPi', '2019-07-23 16:47:44', '2019-07-23 16:47:44'),
	(1800, 1, '6QxxkmN6fC6AF0el7kyZJkVq2DG0KnSB', '2019-07-23 16:47:44', '2019-07-23 16:47:44'),
	(1801, 1, 'nQhDFWx6gkNlEDK2WMfMKJc34PCtR479', '2019-07-23 16:47:44', '2019-07-23 16:47:44'),
	(1802, 1, 'K6TQZZUbgcB3lgVav9FsWmWPCw8M9Xsw', '2019-07-23 16:47:44', '2019-07-23 16:47:44'),
	(1803, 1, '3DPwY9pxTsqII2gfewsJ8711Lze1ffLs', '2019-07-23 16:47:44', '2019-07-23 16:47:44'),
	(1804, 1, 'fpHDBZyriJxb07yaEV1vRenmugmsUHJz', '2019-07-23 16:47:45', '2019-07-23 16:47:45'),
	(1805, 1, 'IQFhEg1t9g6oemKWIRSmqtWjCgbJA2IU', '2019-07-23 16:47:46', '2019-07-23 16:47:46'),
	(1806, 1, 'dPAzQBaoqaZdE4McAik4R5sRvGDBuIm2', '2019-07-23 16:47:46', '2019-07-23 16:47:46'),
	(1807, 1, 'K4KEKoJ4dD1e48MeeDErhIw5Vvp6aPrA', '2019-07-23 16:47:53', '2019-07-23 16:47:53'),
	(1808, 1, 'v7I5CXX1HWf8khNqUMA46EhiNJm7yOvW', '2019-07-23 16:56:35', '2019-07-23 16:56:35'),
	(1809, 1, 'o6VTxx0XUBvykBBmbwgbbXilPpDSeRvB', '2019-07-23 16:56:35', '2019-07-23 16:56:35'),
	(1810, 1, '4SjAFdffwR5TO9EngkKu9T51U3JGvvz3', '2019-07-23 16:56:49', '2019-07-23 16:56:49'),
	(1811, 1, '4gnfo0QdyXsfvHb2aNDhvBtt7Jh1EKsj', '2019-07-23 16:56:49', '2019-07-23 16:56:49'),
	(1812, 1, 'Q3OQQZLgMkae34PIOHAwtpP7mTnXpeTA', '2019-07-23 16:57:39', '2019-07-23 16:57:39'),
	(1813, 1, 'wGD2JaxLfv3GSUnXorlpjFXkbGs8Jwnu', '2019-07-23 16:57:39', '2019-07-23 16:57:39'),
	(1814, 1, 'k2N0BxfAUPIEGSpW2FFAvnfAqMphIVJ8', '2019-07-23 16:57:39', '2019-07-23 16:57:39'),
	(1815, 1, 'StVTl5O4oy1dGy6VpGe04lXanDdhfMGC', '2019-07-23 16:57:39', '2019-07-23 16:57:39'),
	(1816, 1, 'iX5QDM8OT13w9zBEtnPhWuTlBtfqsnnt', '2019-07-23 16:58:37', '2019-07-23 16:58:37'),
	(1817, 1, '26nrxikSU2rSLdqgyskp3BNrVW84Yjtv', '2019-07-23 16:58:37', '2019-07-23 16:58:37'),
	(1818, 1, 'JjSOBXJpAWsweKJIzca06hmDIIwXRXqq', '2019-07-23 16:58:37', '2019-07-23 16:58:37'),
	(1819, 1, 'tQtUlqSyPkH0YmRW3SZV5PdRF6ZULXVH', '2019-07-23 16:58:38', '2019-07-23 16:58:38'),
	(1820, 1, 'EHDJ9TQ1nIPDUm0XlppQzwYNwzLYxUQt', '2019-07-23 16:59:58', '2019-07-23 16:59:58'),
	(1821, 1, 'qY5HYtkyWPMnqJi0D8885nQKEfdf2z7S', '2019-07-23 16:59:59', '2019-07-23 16:59:59'),
	(1822, 1, 'GvUvjgrFGJyeOdH30BFP0qsXyfdhQsbZ', '2019-07-23 17:01:00', '2019-07-23 17:01:00'),
	(1823, 1, 'OO9SVKFUrHlgnUevTjv3Soo07YFLtQq0', '2019-07-23 17:01:00', '2019-07-23 17:01:00'),
	(1824, 1, 'wgEapoptf7A4ZoCgXwnxHkITiUu98WsH', '2019-07-23 17:01:01', '2019-07-23 17:01:01'),
	(1825, 1, '6nD9OCE4oVAqYMGfinVpnkuvN73xp65C', '2019-07-23 17:01:01', '2019-07-23 17:01:01'),
	(1826, 1, '3gUjGcFkHqmXRNeVA3N9ypATJlCCgKD2', '2019-07-23 17:01:13', '2019-07-23 17:01:13'),
	(1827, 1, 'wQbGoAlHPLmWzEjhmd2EbaVTQqv1tRWF', '2019-07-23 17:01:13', '2019-07-23 17:01:13'),
	(1828, 1, 'IdZNzljthruamMs2SvAQBteMt8b0fBmH', '2019-07-23 17:01:14', '2019-07-23 17:01:14'),
	(1829, 1, 'G24yRDr3Sa7yiRYXLePifQuqmJZZZpZ6', '2019-07-23 17:01:14', '2019-07-23 17:01:14'),
	(1830, 1, 'lzQcslnXstr6sOv6sRkahQpWhCtyuYcS', '2019-07-23 17:01:25', '2019-07-23 17:01:25'),
	(1831, 1, 'TdjduVopQlibz0dJNqZPTgLiaQmn4Td7', '2019-07-23 17:01:25', '2019-07-23 17:01:25'),
	(1832, 1, 'H253xvKmp2Mu0JyZJS6SRjwlutP4K6Io', '2019-07-23 17:01:26', '2019-07-23 17:01:26'),
	(1833, 1, '8uYxLKPVEGPPbCsY69wCxF9RoTfxwprh', '2019-07-23 17:01:26', '2019-07-23 17:01:26'),
	(1834, 1, 'DekTiSSiSIkGyepevPdPzp0JZFm8qu4I', '2019-07-23 17:01:29', '2019-07-23 17:01:29'),
	(1835, 1, 'MoiWotB20kKfMDGYm4ElHnOP1lCBCgQy', '2019-07-23 17:01:30', '2019-07-23 17:01:30'),
	(1836, 1, 'C1PUTjYksfQvzRToOW7FA9v3ovMn33Uq', '2019-07-23 17:01:30', '2019-07-23 17:01:30'),
	(1837, 1, 'E5nP6bOj4usQly8FmuMaMOCPM0gzAusr', '2019-07-23 17:01:30', '2019-07-23 17:01:30'),
	(1838, 1, 'tPJSbfJmBoLx9QSLHse5Tc1XL0RRcE0j', '2019-07-23 18:22:27', '2019-07-23 18:22:27'),
	(1839, 1, '65yEGlCodv3RnLUyagatCSkbyZUFjWxT', '2019-07-23 18:22:27', '2019-07-23 18:22:27'),
	(1840, 1, 'IwOGk8Fa6XlLwd2NtCESutkPwjDXjHIT', '2019-07-23 18:22:28', '2019-07-23 18:22:28'),
	(1841, 1, 'fJat2sw5D7oAA7TzU45LkHIdcEkdHDGc', '2019-07-23 18:22:29', '2019-07-23 18:22:29'),
	(1842, 1, 'VZ3HwVm057WrxT1kaI1wtL2FtnOoM43y', '2019-07-23 18:22:51', '2019-07-23 18:22:51'),
	(1843, 1, 'qFBiEvb6zUo0oB329klrnKAiDPaFFgOV', '2019-07-23 18:22:51', '2019-07-23 18:22:51'),
	(1844, 1, 'iFK5D1b9sUQJGvj6oVlyfDDPRCkzKHS4', '2019-07-23 18:22:52', '2019-07-23 18:22:52'),
	(1845, 1, 'I3S1L7Ga1xB3rCrqBoIep0VJpOLlFaCE', '2019-07-23 18:22:52', '2019-07-23 18:22:52'),
	(1846, 1, '33gpZU7DxZsVKFEtQu4EbSVWSYrQEDuQ', '2019-07-27 11:20:09', '2019-07-27 11:20:09'),
	(1847, 1, 'g0bJypznJ0lpDHNdT8XrZFKoxoVfRWFZ', '2019-07-29 11:01:42', '2019-07-29 11:01:42'),
	(1848, 1, 'kMqJiQgcsK0ZUFyAv8GZMdGqXw0lyzkb', '2019-07-29 11:01:42', '2019-07-29 11:01:42'),
	(1849, 1, 'PNHgJMryXoDvaeHQiITZJKsubwpCLOj3', '2019-07-29 11:01:42', '2019-07-29 11:01:42'),
	(1850, 1, 'tyPBELMyz2zh1xR0bYqljtvuBrYqoAGv', '2019-07-29 11:01:43', '2019-07-29 11:01:43'),
	(1851, 1, 'Wy8Ol5aU52LXwoQvLVEAmOYVtaNUrjLw', '2019-07-29 11:01:53', '2019-07-29 11:01:53'),
	(1852, 1, 'msRKcMtzezvmmWJ6gqdyx8eRqFOUQ9xp', '2019-07-29 11:01:53', '2019-07-29 11:01:53'),
	(1853, 1, 'OAFdT6UjmpUPS92ulBOf75M1Ttopa85l', '2019-07-29 11:01:54', '2019-07-29 11:01:54'),
	(1854, 1, 'ryLT0fcxnVKboNHhfRw3biVZtxN9qV9t', '2019-07-29 11:01:55', '2019-07-29 11:01:55'),
	(1855, 1, 'HCyHpUFJ1xm4Rm71qNZf3T1NbwlrLNcB', '2019-07-29 11:06:09', '2019-07-29 11:06:09'),
	(1856, 1, 'K8gzdf4mTniWrPGN4Pkflj1RXDDN49Sp', '2019-07-29 11:06:09', '2019-07-29 11:06:09'),
	(1857, 1, 'wesPo0rhkOyw07tA8m1RpEudEdjAC80I', '2019-07-29 11:06:09', '2019-07-29 11:06:09'),
	(1858, 1, 'flKJkq7ySgtRelRfGLibEm8eZC98q4EJ', '2019-07-29 11:06:09', '2019-07-29 11:06:09'),
	(1859, 1, 'vVHguCTjXF8LOfGCJUO43POTjtdik93F', '2019-07-31 11:10:36', '2019-07-31 11:10:36'),
	(1860, 1, 'gpGihJF7IVeqXMHaQJPy0UJbcrgmtn0l', '2019-08-01 18:14:52', '2019-08-01 18:14:52'),
	(1861, 1, 'OL3ewqEQU1v0eqEfolxwyj21sJkdr5BZ', '2019-08-01 18:14:59', '2019-08-01 18:14:59'),
	(1862, 1, 'FJVT5OFvnDpBVAlLRVLPwFdrFDfOkqDk', '2019-08-01 18:15:06', '2019-08-01 18:15:06'),
	(1863, 1, 'e1xzlc3aJfDk9Q1FDrNV2aaftQ3AdlWr', '2019-08-01 18:15:06', '2019-08-01 18:15:06'),
	(1864, 1, 'KC5fEtEcOUA02SoXh3uC1N0ZNDlHAdFv', '2019-08-01 18:15:12', '2019-08-01 18:15:12'),
	(1865, 1, 'x3Zk9JfV7HCTuKv4dsXEslK49I4dQnVQ', '2019-08-01 18:16:38', '2019-08-01 18:16:38'),
	(1866, 1, 'gXJwjb2pJXbdHNKoV7B7wpwHnBSoh39X', '2019-08-01 18:16:40', '2019-08-01 18:16:40'),
	(1867, 1, 'jO9QnJXH0gVjf3QGRNIAWaExUY1oM82v', '2019-08-01 18:16:56', '2019-08-01 18:16:56'),
	(1868, 1, '9W5VmuVTTAz2bxoxM5XS1xAgew9EDVzZ', '2019-08-01 18:17:03', '2019-08-01 18:17:03'),
	(1869, 1, '3xOf4eU7brWuRAne0syuVZ9iGXnAvXX6', '2019-08-01 18:17:03', '2019-08-01 18:17:03'),
	(1870, 1, 'AF5xrgRoaUb4SkEiyXXHJ8tL1bEuWehd', '2019-08-01 18:17:03', '2019-08-01 18:17:03'),
	(1871, 1, 'idLs343rtrXOedjpvf60swplxtnU1ON7', '2019-08-01 18:17:03', '2019-08-01 18:17:03'),
	(1872, 1, '96N2AYsfi5lPLaKGomJploVmHIncvZjE', '2019-08-01 18:17:03', '2019-08-01 18:17:03'),
	(1873, 1, 'QilAl5LYpKMmd818lJZHcuDVUzn0V1SZ', '2019-08-01 18:17:03', '2019-08-01 18:17:03'),
	(1874, 1, 'lPwhx61sITtmdNj1d5kW5zqm8bvP570L', '2019-08-01 18:17:04', '2019-08-01 18:17:04'),
	(1875, 1, '41JMosAWUG4viQwYVTS984feZISEYTrn', '2019-08-01 18:17:04', '2019-08-01 18:17:04'),
	(1876, 2, 'RsUwQmzEazVyQ6A8GfgkGemrZfTUfdtK', '2019-08-01 18:23:29', '2019-08-01 18:23:29'),
	(1877, 1, 'Yu0dVqwLPJmMMQ26q3i4BgZ1srL0nGYg', '2019-08-02 10:24:24', '2019-08-02 10:24:24'),
	(1878, 1, '3IjmGVAcMUoJJUEtHbfLxvBkBYr2Cq6D', '2019-08-02 10:34:16', '2019-08-02 10:34:16'),
	(1879, 1, 'byJRNPE5KZcf3fa3gkaTYDcM9EXgVHGN', '2019-08-02 10:36:20', '2019-08-02 10:36:20'),
	(1880, 1, 'pUMOE0DSMNQHSYPHmKucmJdai5PiFAey', '2019-08-02 10:36:22', '2019-08-02 10:36:22'),
	(1881, 1, 'Tfqnzj1WqiEC0MR0Nzf7qacy7fm0pNBt', '2019-08-02 10:36:48', '2019-08-02 10:36:48'),
	(1882, 1, 'MeJg1y4rCImzo4JgixMmcMCY0qzMKsx5', '2019-08-02 10:36:52', '2019-08-02 10:36:52'),
	(1883, 1, 'Eb5lQfL0zhR0dSeduoxmAfFZqVxP4tPh', '2019-08-02 10:36:55', '2019-08-02 10:36:55'),
	(1884, 1, 'qBm4JtFpeKZrDxROB9gkRN0ZrAl10qMk', '2019-08-02 10:37:07', '2019-08-02 10:37:07'),
	(1885, 1, '6Nb1eOtz2qHVVrBIZrAnAuUknhlq72DF', '2019-08-02 10:37:07', '2019-08-02 10:37:07'),
	(1886, 1, 'MmpMqTBCJVMDIsBWvU7gZKlymCpjOeJz', '2019-08-02 10:37:07', '2019-08-02 10:37:07'),
	(1887, 1, '34QZrJkakNCa4dNLyY8x0EEgMzTnsNBk', '2019-08-02 10:37:20', '2019-08-02 10:37:20'),
	(1888, 1, 'Sp1WF4fslcmB4wkchzJ2Rvp9mPMVDT1k', '2019-08-02 10:37:20', '2019-08-02 10:37:20'),
	(1889, 1, '0T9Q88AfGSYiDD8k1HuybkvkMDUWcf8U', '2019-08-02 10:37:20', '2019-08-02 10:37:20'),
	(1890, 1, 'Qw7EMCG1nWS9fkwk31jntolUekyYOEv5', '2019-08-02 10:37:20', '2019-08-02 10:37:20'),
	(1891, 1, 'sTHZookeU83nWIR9EkqNEOi6pf87i4Q7', '2019-08-02 10:37:20', '2019-08-02 10:37:20'),
	(1892, 1, '0tvEKZAkQwNceWB5ySwWEZVr4Azg9lRc', '2019-08-02 10:37:20', '2019-08-02 10:37:20'),
	(1893, 1, 'E5sUfiVAkb8hplCVYL8pJTk1Frw7KYUq', '2019-08-02 10:37:20', '2019-08-02 10:37:20'),
	(1894, 1, 'cIMMvvpFZMg7Y1pz9SGFIitND2si5qe9', '2019-08-02 10:37:21', '2019-08-02 10:37:21'),
	(1895, 1, 'jd4bq9Qjt90iMZCCMosa6pTKUXj8XBZT', '2019-08-02 10:37:27', '2019-08-02 10:37:27'),
	(1896, 1, '3hNODNTpipNnaOswPeVJguEdI8cGdVAd', '2019-08-02 10:37:27', '2019-08-02 10:37:27'),
	(1897, 1, 'CZFL7zyWgWDD9b0cCjMGzMpgoMhu5wYK', '2019-08-02 10:37:27', '2019-08-02 10:37:27'),
	(1898, 1, 'ImiCEJWoTsA7cZJxpZagMT0vCUQEo4z2', '2019-08-02 10:37:27', '2019-08-02 10:37:27'),
	(1899, 1, 'pluf206zueEboFL5mYAAvLf5VhsmuJed', '2019-08-02 10:37:28', '2019-08-02 10:37:28'),
	(1900, 1, '2aeRrJLGuCLHWROrhPpZHb5ZjETIyAsU', '2019-08-02 10:37:28', '2019-08-02 10:37:28'),
	(1901, 1, 'JTYA6iaiOU6Hi3N2QQB9L4DEBJf9QeoP', '2019-08-02 10:37:28', '2019-08-02 10:37:28'),
	(1902, 1, 'Wo3g0dhyKo4bU2QUVbwNyApgHHejCMb0', '2019-08-02 10:37:28', '2019-08-02 10:37:28'),
	(1903, 1, 'lDLM4wtPUcSTk8E5K4913bAWb6xPGXBu', '2019-08-02 10:59:03', '2019-08-02 10:59:03'),
	(1904, 1, 'SVlXO8drQ87cUd1XqVGXcSKJNJy5voP1', '2019-08-02 10:59:03', '2019-08-02 10:59:03'),
	(1905, 1, 'FdL3ORk1We9igCQbnPMyNPKHpgBstsL5', '2019-08-02 10:59:03', '2019-08-02 10:59:03'),
	(1906, 1, 'Qkb2oC9UihnZn46fuX8w7J3HwrNHa0NW', '2019-08-02 10:59:03', '2019-08-02 10:59:03'),
	(1907, 1, 'pgGP6HHKiC51uiR3JPZxPP3l20sMUpAz', '2019-08-02 10:59:03', '2019-08-02 10:59:03'),
	(1908, 1, 'TJ6j6NvIJy6LD418STzixTG8K88zZrbQ', '2019-08-02 10:59:04', '2019-08-02 10:59:04'),
	(1909, 1, 'OshwwGJpNOylmPDbt8L3D9pUYyWefiZs', '2019-08-02 10:59:04', '2019-08-02 10:59:04'),
	(1910, 1, 'PR0iKAvfY85OGFYen97MghBNKy55VtSc', '2019-08-02 10:59:04', '2019-08-02 10:59:04'),
	(1911, 1, 'x9CB29p2u0NSzBSRgoeC2E6zA6zjC9W8', '2019-08-02 10:59:15', '2019-08-02 10:59:15'),
	(1912, 1, 'EtKQJ9SoaoKqa0EEEcYX9eG2bvmyqirq', '2019-08-02 10:59:35', '2019-08-02 10:59:35'),
	(1913, 1, 'r3kxLjfnwoNjpHstOLzNBePSnNzrtwrG', '2019-08-02 10:59:39', '2019-08-02 10:59:39'),
	(1914, 1, '1mczc5FXh2XdbzuCODIP8Gz84lvZRRqY', '2019-08-02 10:59:40', '2019-08-02 10:59:40'),
	(1915, 1, 'sn2ha5t8Rb4u9STNOdh7DTCWm0eED8bg', '2019-08-02 10:59:40', '2019-08-02 10:59:40'),
	(1916, 1, 'FySsmoTGfQXMMnElYklDqel9OE3o0hn1', '2019-08-02 10:59:40', '2019-08-02 10:59:40'),
	(1917, 1, 'MwXgVnkxXAmDCtFfLeOp62YvZmMC257T', '2019-08-02 10:59:40', '2019-08-02 10:59:40'),
	(1918, 1, '0Sj6iUhDX0rdqKEVjo5O3bdNCjgbf8Nh', '2019-08-02 10:59:40', '2019-08-02 10:59:40'),
	(1919, 1, 'LbbkN8SNDIBSRJrgKd5fMMWU15R0HaD5', '2019-08-02 10:59:40', '2019-08-02 10:59:40'),
	(1920, 1, 'uUyxmrcxweGU8reOzEcBm381n4IrQCBh', '2019-08-02 10:59:40', '2019-08-02 10:59:40'),
	(1921, 1, 'HSWyR9G7CLCiSIV8aRhaaeI2Ferhgn9x', '2019-08-02 11:00:05', '2019-08-02 11:00:05'),
	(1922, 1, 'Yj8KVbAX2RvFfygwuNe9nT0JrPRovTMk', '2019-08-02 11:00:06', '2019-08-02 11:00:06'),
	(1923, 1, '8ieRoBP0qA3Zk4xDiGGKVvGZVaTDm5s6', '2019-08-02 11:00:16', '2019-08-02 11:00:16'),
	(1924, 1, 'uTQScfjQA0v0XM6QskUih7MYV4vwx1yr', '2019-08-02 11:00:16', '2019-08-02 11:00:16'),
	(1925, 1, 'qXS577ea9AmCjLQvkt22RR2PbFMF1VLi', '2019-08-02 11:00:16', '2019-08-02 11:00:16'),
	(1926, 1, 'g46sVNZAR8VdGkhEytnZar36jfRicsLX', '2019-08-02 11:00:16', '2019-08-02 11:00:16'),
	(1927, 1, 'jTkoTo0C40hzCHRG0J4tTv4AZOwXg2bm', '2019-08-02 11:00:16', '2019-08-02 11:00:16'),
	(1928, 1, 'aZGi0sumMDUln0T0K1pq9UbxPMUvvBt2', '2019-08-02 11:00:16', '2019-08-02 11:00:16'),
	(1929, 1, 'uOYH0tGMotMIRJfWyRElBHu8nbvsREWN', '2019-08-02 11:00:16', '2019-08-02 11:00:16'),
	(1930, 1, 'oH2aSbtj6GwVDloxzmcsCN7fxp8Umfrw', '2019-08-02 11:00:17', '2019-08-02 11:00:17'),
	(1931, 1, 'VDJxAJ8AELVMphPlPfV7HB9LbOuJq2DB', '2019-08-02 11:00:29', '2019-08-02 11:00:29'),
	(1932, 1, 'RnWjJsScCQUnWGpSBw0DAK4KyQm63GZp', '2019-08-02 11:00:29', '2019-08-02 11:00:29'),
	(1933, 1, '5NKPSRH8GUDVwz9Np3zXePLyway4Kgoi', '2019-08-02 11:00:29', '2019-08-02 11:00:29'),
	(1934, 1, '3WC6OeAFEPN2ZwlHsD6wOKJblYIPYeAy', '2019-08-02 11:00:29', '2019-08-02 11:00:29'),
	(1935, 1, '6jVkDpYoEaL8THeIhhD8zDkn0ogkqT9l', '2019-08-02 11:00:29', '2019-08-02 11:00:29'),
	(1936, 1, 'Eikv3MR51P2IRmdSSZDUTWUgTOA78sJe', '2019-08-02 11:00:29', '2019-08-02 11:00:29'),
	(1937, 1, 'JqM9SVifMZEPpwvnmCPaY8IjXjnOOwg1', '2019-08-02 11:00:30', '2019-08-02 11:00:30'),
	(1938, 1, 'y6Di5WL9lgTrEFZ2ms9SQgVHz40FV4YR', '2019-08-02 11:00:30', '2019-08-02 11:00:30'),
	(1939, 1, 'F9Y3UCNRVHtoE16WONngdM3Wfn3XbGAO', '2019-08-02 11:00:35', '2019-08-02 11:00:35'),
	(1940, 1, 'DcLZE3awYgj1iexNDdeoDEhqgHLFLnHT', '2019-08-02 11:00:35', '2019-08-02 11:00:35'),
	(1941, 1, 'dbKATr4xX4fTix4wstpa4DFfONVM1CqJ', '2019-08-02 11:00:38', '2019-08-02 11:00:38'),
	(1942, 1, 'nlmOpgP6l9zHFhYjSASVlrdKCs5XTMsY', '2019-08-02 11:00:38', '2019-08-02 11:00:38'),
	(1943, 1, 'rEHDq25Lyvnv8H9xLscttHH2yKapeOdf', '2019-08-02 11:00:50', '2019-08-02 11:00:50'),
	(1944, 1, '6pzAduOnnIveH5hKjPuq4xMuFNoNqnl3', '2019-08-02 11:00:51', '2019-08-02 11:00:51'),
	(1945, 1, 'vZDgM88obyFnj48GHZKCNF9xVVKDF5oU', '2019-08-02 11:01:13', '2019-08-02 11:01:13'),
	(1946, 1, 'KzmmHiY6L1OloOvNjCiOrZFbh9DMOcqs', '2019-08-02 11:01:19', '2019-08-02 11:01:19'),
	(1947, 1, 'gLKdw8ttGeEOvQ9dvMimWv2WJAl7jY1u', '2019-08-02 11:01:19', '2019-08-02 11:01:19'),
	(1948, 1, '6kwY20bWIb24UZePIUl8C74MhcQ02Dul', '2019-08-02 11:01:22', '2019-08-02 11:01:22'),
	(1949, 1, 'M59sb2FeaQmKbd0Io0VzrYdf0VearefO', '2019-08-02 11:01:23', '2019-08-02 11:01:23'),
	(1950, 1, 'wI2vMPzPXKDc6YtIqnPtlS8YjkL7O3qS', '2019-08-02 11:01:25', '2019-08-02 11:01:25'),
	(1951, 1, 'OpcCAHa2zlA4WfVTOJgs2W78hzbET2QX', '2019-08-02 11:01:26', '2019-08-02 11:01:26'),
	(1952, 1, 'V4w31vPV8azL0YMsHpG3y5YChesTGSaf', '2019-08-02 11:01:37', '2019-08-02 11:01:37'),
	(1953, 1, '1QD0eDuAe9tjeVL7cjG7F9WW66mpLkuz', '2019-08-02 11:01:37', '2019-08-02 11:01:37'),
	(1954, 1, 'bsTaHXCwR0RKHb3Lg7oAJ7Yfj0CCTGXF', '2019-08-02 11:01:38', '2019-08-02 11:01:38'),
	(1955, 1, 'hl7M6OAubDWHTlT0PohAYtbTY871yvuH', '2019-08-02 11:01:43', '2019-08-02 11:01:43'),
	(1956, 1, 'o9fbiUiWohfNbQeBbicuX2wDD77XuWYm', '2019-08-02 11:01:44', '2019-08-02 11:01:44'),
	(1957, 1, 'YJtLwzrlQcFcLk1kIhR4KU0BQUwBUlZD', '2019-08-02 11:01:47', '2019-08-02 11:01:47'),
	(1958, 1, 'AAZ347fFYZqgVkH45K2EaIM2qLUBljhT', '2019-08-02 11:01:48', '2019-08-02 11:01:48'),
	(1959, 1, 'XENe0ZGnNpdM1kAENDFglUf3cIJHfd2M', '2019-08-02 11:02:48', '2019-08-02 11:02:48'),
	(1960, 1, 'ImbqiVrvlgsrXquwnfDnDinZr4Xzho1w', '2019-08-02 11:02:52', '2019-08-02 11:02:52'),
	(1961, 1, 'kAGq9Qy2eI317LE9ywoYNuPxibnFpi4N', '2019-08-02 11:02:52', '2019-08-02 11:02:52'),
	(1962, 1, 'nJM54KqshtBsAnnr5MeKbtzCUGVw2lWD', '2019-08-02 11:02:56', '2019-08-02 11:02:56'),
	(1963, 1, '5Zr0jEmLGGikkanQxdaYJpGv3DPkYVWM', '2019-08-02 11:02:56', '2019-08-02 11:02:56'),
	(1964, 1, 'Re6E0JJnYN25l6IpvRLdz61Il6pRC9ae', '2019-08-02 11:02:58', '2019-08-02 11:02:58'),
	(1965, 1, 'wBOl1fgRN5kfDc8ssnPXz6YZgJPPjJSL', '2019-08-02 11:02:59', '2019-08-02 11:02:59'),
	(1966, 1, 'IZ2BM4PpxiBlbHUsOVW16xH430idIxTl', '2019-08-02 11:03:00', '2019-08-02 11:03:00'),
	(1967, 1, 'wlEbgkPvvB9VARuSXyQSih75MqwMdPaD', '2019-08-02 11:03:08', '2019-08-02 11:03:08'),
	(1968, 1, 'WynxUAXZgcRiZnL2CstTaG9uFx74oHiD', '2019-08-02 11:03:08', '2019-08-02 11:03:08'),
	(1969, 1, 'HW4mfJz1PztDRgaLN9sOZvhoRsz5SmnS', '2019-08-02 11:03:58', '2019-08-02 11:03:58'),
	(1970, 1, 'I0FnhR1i1q9QRPWE6cl7yN1z3NwqNRjT', '2019-08-02 11:04:00', '2019-08-02 11:04:00'),
	(1971, 1, 'wSN0haMYcBcjQbLvcmApHDHII9T3VDIO', '2019-08-02 11:04:03', '2019-08-02 11:04:03'),
	(1972, 1, 'ixchX2rSpSVSda58pOCKjmJqbpgdTYvR', '2019-08-02 11:06:32', '2019-08-02 11:06:32'),
	(1973, 1, 'JBcHVAGAXrT1O0l1drLZAnDM1HQbVPxQ', '2019-08-02 11:06:33', '2019-08-02 11:06:33'),
	(1974, 1, 'ImT64T8f6aRqgT7rapuwShINlZN6h045', '2019-08-02 11:06:34', '2019-08-02 11:06:34'),
	(1975, 1, 'Lb4LFeM7LWe0zV7Ci1tYFUB9iuMw8eKu', '2019-08-02 11:08:19', '2019-08-02 11:08:19'),
	(1976, 1, 'bXFoOlGlHlTvOVkU4s0cDmwblOs0Edfe', '2019-08-02 11:08:20', '2019-08-02 11:08:20'),
	(1977, 1, 'N6muzD6lFa37GH3gZ5vQIysguSm46bxn', '2019-08-02 11:10:51', '2019-08-02 11:10:51'),
	(1978, 1, 'iqIZN6ydOa8xI1YFWFg0og9tHMViswVX', '2019-08-02 11:11:19', '2019-08-02 11:11:19'),
	(1979, 1, 'miwSePd4J4vYQvTzyFNf9mA4Cdoqsmje', '2019-08-02 11:12:02', '2019-08-02 11:12:02'),
	(1980, 1, 'QT0A7dYJrz8KfVMXPY2UHSWNaJZK8cAj', '2019-08-02 11:12:03', '2019-08-02 11:12:03'),
	(1981, 1, '13rhYsvZkDM71wwHrVTvcjTCdId18ICI', '2019-08-02 11:12:43', '2019-08-02 11:12:43'),
	(1982, 1, 'PWrSdnwzGHR1FmdaqR5Wb8GkMjWtbHte', '2019-08-02 11:12:43', '2019-08-02 11:12:43'),
	(1983, 1, 'JLLKNdBMzAt77ABI8YWaMn7AsYmPcRfV', '2019-08-02 11:12:44', '2019-08-02 11:12:44'),
	(1984, 1, '4RcjQmhi7P3YBOZjmt6IQfn9tOrkku3z', '2019-08-02 11:12:44', '2019-08-02 11:12:44'),
	(1985, 1, 'wTaNHJUVk5LfstLLWJkVD6UBG8NrCkFP', '2019-08-02 11:12:44', '2019-08-02 11:12:44'),
	(1986, 1, 'io3930yNULk4KW3ryA61LAn240EKMiGM', '2019-08-02 11:12:44', '2019-08-02 11:12:44'),
	(1987, 1, 'erB70ChFRAb2PLLlEK0d8wQmyr0TzLAK', '2019-08-02 11:12:44', '2019-08-02 11:12:44'),
	(1988, 1, 'A9BMOqie4H3OM6B0fkVhShslQCRHymuQ', '2019-08-02 11:12:44', '2019-08-02 11:12:44'),
	(1989, 1, 'ZFVP8i8RgFpQ4bHTEtJ79mKFih5iH1sC', '2019-08-02 11:12:56', '2019-08-02 11:12:56'),
	(1990, 1, 'WDVm8TCm8rPXFZfYdHQK7cdg8TCkX9GS', '2019-08-02 11:12:56', '2019-08-02 11:12:56'),
	(1991, 1, 'evDlG23EBDAjPujBxxyoWIx4xaRkl5Xp', '2019-08-02 11:12:56', '2019-08-02 11:12:56'),
	(1992, 1, '79v7Da3UBANsKQ3N1z9nPpwI7gPOu2xj', '2019-08-02 11:12:56', '2019-08-02 11:12:56'),
	(1993, 1, '73wmCRRIFPuqSJLdDBZub86j2Ja6xwvx', '2019-08-02 11:12:57', '2019-08-02 11:12:57'),
	(1994, 1, 'dUdVYchPipjv0HpKfNpPVrpgtheUwzPG', '2019-08-02 11:12:57', '2019-08-02 11:12:57'),
	(1995, 1, 'ZD5l2QNN0GM5xAWqaM8zBo8dO9EKVJZD', '2019-08-02 11:12:57', '2019-08-02 11:12:57'),
	(1996, 1, 'sh0au7tczXZHzS6gkPtZzCC0VIBzGQt2', '2019-08-02 11:12:57', '2019-08-02 11:12:57'),
	(1997, 1, 'CkNjxIXTW7d1znEu58rOYvuUTD2DVu0Q', '2019-08-02 11:13:13', '2019-08-02 11:13:13'),
	(1998, 1, 'Cvc0m6yVAljBjizaNJU1T2c9uT088aUq', '2019-08-02 11:13:13', '2019-08-02 11:13:13'),
	(1999, 1, 'U2yMk08Mg8BNiMRIquia9CLIdc9l7CvH', '2019-08-02 11:13:22', '2019-08-02 11:13:22'),
	(2000, 1, '83ZOTj5uxCSl7LIHqHZonMpXlsf9v4Ts', '2019-08-02 11:13:22', '2019-08-02 11:13:22'),
	(2001, 1, 'j9gFysVpNSqQjznnNMQsSemorHlUsAPP', '2019-08-02 11:13:22', '2019-08-02 11:13:22'),
	(2002, 1, 'P4cim4kYFZ8tX2GvpsNuOmtZ73RVoHMj', '2019-08-02 11:13:22', '2019-08-02 11:13:22'),
	(2003, 1, 'Q6BhOcXWa6n69T0WMqXRuf5qvrQiHJKo', '2019-08-02 11:13:22', '2019-08-02 11:13:22'),
	(2004, 1, 'R5KlfLGBdibmjyPPRPXEjB5JKcnorYlJ', '2019-08-02 11:13:22', '2019-08-02 11:13:22'),
	(2005, 1, 'bs2mlKnyMThESdzbHbEWYsuJhWugesJb', '2019-08-02 11:13:22', '2019-08-02 11:13:22'),
	(2006, 1, 'stTzMTtDaNqdD8wEhNE96h2lkknwx2Mn', '2019-08-02 11:13:23', '2019-08-02 11:13:23'),
	(2007, 1, 'cjAItNJd5nvWTxVlb6pxpEzrdmcYOhHh', '2019-08-02 11:13:32', '2019-08-02 11:13:32'),
	(2008, 1, 'vKRBnnwDMi7CLdw0o85OvLqOOe0ERgAe', '2019-08-02 11:13:32', '2019-08-02 11:13:32'),
	(2009, 1, 'ObtmI49ir1UoR8PyGlY1m0Ub8Rrqhzxp', '2019-08-02 11:13:41', '2019-08-02 11:13:41'),
	(2010, 1, 'WawHFDQLdkksctNStSKrJDluzecnEggZ', '2019-08-02 11:13:41', '2019-08-02 11:13:41'),
	(2011, 1, 'xancXiUXpWAF9xeoUrCLoCVovWXP4KaB', '2019-08-02 11:13:41', '2019-08-02 11:13:41'),
	(2012, 1, 'wJkcBr2MUPMvXUX6UE2lL3oSsGBcmuDr', '2019-08-02 11:13:41', '2019-08-02 11:13:41'),
	(2013, 1, '514MP0MLezyM5tiqNv5N7p9eVZBAWJwN', '2019-08-02 11:13:42', '2019-08-02 11:13:42'),
	(2014, 1, 'fBz794n5bcmji5pUN3ritTk8pC1eSBlO', '2019-08-02 11:13:42', '2019-08-02 11:13:42'),
	(2015, 1, 'QeshbtHnvlyxuFea9zqx3NUAp3joui5c', '2019-08-02 11:13:42', '2019-08-02 11:13:42'),
	(2016, 1, 'dJyQ2cIa7JbPP38bskNdMwJCG1LnvC5T', '2019-08-02 11:13:42', '2019-08-02 11:13:42'),
	(2017, 1, 'aMlRsKziZBYiUED5PKF4nhaobcPOuqV1', '2019-08-02 11:18:21', '2019-08-02 11:18:21'),
	(2018, 1, 'bSffOrf0OWxonzV2njIKIy2g5iOra2YP', '2019-08-02 11:18:32', '2019-08-02 11:18:32'),
	(2019, 1, 'oS3V7s9UGs9RXkMZgOhlwxYUCWyWnLHa', '2019-08-02 11:22:44', '2019-08-02 11:22:44'),
	(2020, 1, 'dtgaQEODAB5FZBiZMgvJinuroN4V92yi', '2019-08-02 11:22:44', '2019-08-02 11:22:44'),
	(2021, 1, 'i0TFacgfnT3oKK18oBnSDu9vKY5UudWT', '2019-08-02 11:22:44', '2019-08-02 11:22:44'),
	(2022, 1, 'niWGIk5I66gxH1P2zLwndl74BhAnPGYY', '2019-08-02 11:22:45', '2019-08-02 11:22:45'),
	(2023, 1, '0DXogn9MKF8JOy78UnBQOB4SXVoR9A6E', '2019-08-02 11:23:13', '2019-08-02 11:23:13'),
	(2024, 1, 'JgapJi96hiTQfWuBiHiLJLbE6ZLJXG5F', '2019-08-02 11:23:13', '2019-08-02 11:23:13'),
	(2025, 1, 'qMwr6l9NTsqlHvoKlXvHn8VaZo3cU7tS', '2019-08-02 11:23:13', '2019-08-02 11:23:13'),
	(2026, 1, 'cY5Kb2Orf7uXn0JmN6taeDFDXz8SAffN', '2019-08-02 11:23:14', '2019-08-02 11:23:14'),
	(2027, 1, 'YGZD6E2tGNsLwr7BXhJGegJKaXr6zXH4', '2019-08-02 11:24:34', '2019-08-02 11:24:34'),
	(2028, 1, 'r9p5hmANUxmicmtbw61e57TVkmKCQhA2', '2019-08-02 11:26:40', '2019-08-02 11:26:40'),
	(2029, 1, 'On09Kug0GRshlVWmGVHK44ZlfHWF3226', '2019-08-02 11:27:02', '2019-08-02 11:27:02'),
	(2030, 1, 'Pd98Jh4muzI9CfylYDaMT5yai7eEU4AA', '2019-08-02 11:27:04', '2019-08-02 11:27:04'),
	(2031, 1, 'Qn5OuFx9jJboopUYUImO4rycrtX4YlzN', '2019-08-02 11:27:05', '2019-08-02 11:27:05'),
	(2032, 1, '945iP2XGxCoY2s8pH1IP9V8NGPsje6iO', '2019-08-02 11:27:06', '2019-08-02 11:27:06'),
	(2033, 1, '31Pv71pggN640gsvLlvGiAFD5jHvL2S1', '2019-08-02 11:27:07', '2019-08-02 11:27:07'),
	(2034, 1, 'ItDv4tuS6rpIJZEwVqAdYiKjqSraWBl5', '2019-08-02 11:27:08', '2019-08-02 11:27:08'),
	(2035, 1, 'zvJMRe2vS4sBqULLTyyLcsTJcHW9sTgC', '2019-08-02 11:27:10', '2019-08-02 11:27:10'),
	(2036, 1, 'RCYal1C5Fi5kBJPQjiznilPDMOSuibB6', '2019-08-02 11:27:12', '2019-08-02 11:27:12'),
	(2037, 1, 'TUfrlo1NLH3xwWGioFR11TV7rA7nMDOc', '2019-08-02 11:27:15', '2019-08-02 11:27:15'),
	(2038, 1, '8IJkpESo5OYsFQsaNn01RlKe6CHjOGHu', '2019-08-02 11:27:24', '2019-08-02 11:27:24'),
	(2039, 1, '3Nb3ebgL43cSdV5MW9tsIsO9ZQBdb9Sh', '2019-08-02 11:28:01', '2019-08-02 11:28:01'),
	(2040, 1, 'KMoOCCHiNhcCnlEsgNKi9AIbsd761QaM', '2019-08-02 11:28:06', '2019-08-02 11:28:06'),
	(2041, 1, 'oodrol9JqoTSGjmyY5p3FJ8idwVeLI8h', '2019-08-02 11:28:11', '2019-08-02 11:28:11'),
	(2042, 1, 'wmB6MCmhnMdvgEAuaU8fDCY6y7kkYgZ3', '2019-08-02 11:28:15', '2019-08-02 11:28:15'),
	(2043, 1, 'QGIIHJS9M7c6pGfF7lyf6Oczd2Z2jFmO', '2019-08-02 11:30:51', '2019-08-02 11:30:51'),
	(2044, 1, 'SrlzV7t9jLKLVN6q2vucU01LYagQbnsq', '2019-08-02 11:36:20', '2019-08-02 11:36:20'),
	(2045, 1, 'N7d0zsmh1ExrYBwuop8gmTcAOQdx4mQZ', '2019-08-02 11:36:23', '2019-08-02 11:36:23'),
	(2046, 1, 'ILGTBvo1wbIhLej4Bd59x5dD2eR2FM2t', '2019-08-02 11:44:16', '2019-08-02 11:44:16'),
	(2047, 1, 'AKw2UWmdYRZhD9QlqbMgq1iJW29vspHG', '2019-08-02 11:44:16', '2019-08-02 11:44:16'),
	(2048, 1, 'vuJqgyBfc2MnZaiikgdva5WW6q3wfzE6', '2019-08-02 11:45:59', '2019-08-02 11:45:59'),
	(2049, 1, 'bJesQ7SyjsKxfa5VW2k8sb3jQsFM6kcs', '2019-08-02 11:46:03', '2019-08-02 11:46:03'),
	(2050, 1, 'b6ic0c58eaE5yAoKByvJIYJoGDAdXoGC', '2019-08-02 11:46:27', '2019-08-02 11:46:27'),
	(2051, 1, 'xQS79a7Uz5w3lw0PkEVeFmCX15ntaCiB', '2019-08-02 11:46:28', '2019-08-02 11:46:28'),
	(2052, 1, 'cYMh5aeMzV93tZiMyFAX9W3hwSbhmIHW', '2019-08-02 11:46:44', '2019-08-02 11:46:44'),
	(2053, 1, 'dV6eZZf4koMjznnhW9GFBrtgKA0f9PGJ', '2019-08-02 11:46:44', '2019-08-02 11:46:44'),
	(2054, 1, 'J5AjHRK6TB54gHVhLN5OB7LpWDxmfncu', '2019-08-02 11:46:45', '2019-08-02 11:46:45'),
	(2055, 1, 'cSveQWaToeqnEysKqhCUoXIMGvP72aHu', '2019-08-02 12:24:31', '2019-08-02 12:24:31'),
	(2056, 1, 'lonNx8AAJdwRRDY1sJ0V83LMN6Lzxqnc', '2019-08-02 12:27:30', '2019-08-02 12:27:30'),
	(2057, 1, 'gn5lPGWY7K7wzRmsh6rYcLsaAeqvMZc2', '2019-08-02 12:38:43', '2019-08-02 12:38:43'),
	(2058, 1, 'vJlxjYHgRyLH0V4Wp2k7WieTFy8c5jhv', '2019-08-02 12:46:23', '2019-08-02 12:46:23'),
	(2059, 1, 'gEADsIIWKGLkvkufYt9Rg6YkxoSkLFjB', '2019-08-02 12:50:07', '2019-08-02 12:50:07'),
	(2060, 1, 'A7wXi5E7lMoE6XvhTUMbF7NmeJeYmSEr', '2019-08-02 12:52:12', '2019-08-02 12:52:12'),
	(2061, 1, 'zVOvKEgjFXsvNiDwOcHcUhYFPceuGZD9', '2019-08-02 12:52:12', '2019-08-02 12:52:12'),
	(2062, 1, 'daSuvQap7PjVNLlhEy8BbG5fyjUSsIio', '2019-08-02 12:52:13', '2019-08-02 12:52:13'),
	(2063, 1, '1LdYJ2rZZkYcmidteBt7uYHLFhbjcT47', '2019-08-02 12:52:13', '2019-08-02 12:52:13'),
	(2064, 1, 'Hqy43x9uR06m3VAL5Mt9lXVHu6CRPQAQ', '2019-08-02 12:54:20', '2019-08-02 12:54:20'),
	(2065, 1, 'ROXjsFFlLoQuI0v28uQS0KWk4OEPNyTH', '2019-08-02 12:54:20', '2019-08-02 12:54:20'),
	(2066, 1, 'PWQejLUNHwU6BhEZAtCFJsfIKKmrlY4y', '2019-08-02 12:54:23', '2019-08-02 12:54:23'),
	(2067, 1, '7oV8NWeqnhsxY1PFNRQ4PMBh9xHEQUpA', '2019-08-02 12:54:23', '2019-08-02 12:54:23'),
	(2068, 1, 'MsXfFkQKVkU0Qir7TGZyZuqHVXBI9CDm', '2019-08-02 12:57:54', '2019-08-02 12:57:54'),
	(2069, 1, 'QAz4cnlCoHSWkuN3jBhFINWrGg6eXUID', '2019-08-02 12:57:54', '2019-08-02 12:57:54'),
	(2070, 1, '5defOJ6oou2ZglLnH0sInqv1YhJoYvzl', '2019-08-02 12:57:57', '2019-08-02 12:57:57'),
	(2071, 1, 'TmMfnnmXXDdiCTMPLML1SgxYUKqK5o05', '2019-08-02 12:57:57', '2019-08-02 12:57:57'),
	(2072, 1, 'CVYh9gb7MZlLySMvqQ2ULPWm5OuR1a2T', '2019-08-02 12:58:07', '2019-08-02 12:58:07'),
	(2073, 1, 'fibqLi0p5zDOJdsYQIDzuL8FvAxWk2Rl', '2019-08-02 12:58:07', '2019-08-02 12:58:07'),
	(2074, 1, '0vFZxHzXWGY7efZDjSQkmSbQr3xDjpZh', '2019-08-02 13:06:37', '2019-08-02 13:06:37'),
	(2075, 1, 't6pCCvPsaKlKKqcLrvzHdJ1JwKhGUVL4', '2019-08-02 13:07:01', '2019-08-02 13:07:01'),
	(2076, 1, 'xS1J8EdBUnn2CgxAyiw97IDuuSkdiiZV', '2019-08-02 13:07:01', '2019-08-02 13:07:01'),
	(2077, 1, 'DNwulx3y3eiTDoADakMinAAhYJGHq9XJ', '2019-08-02 13:07:05', '2019-08-02 13:07:05'),
	(2078, 1, 'WDccy4szbyoBhPO3cbzDcNCkL5rEBQn7', '2019-08-02 13:07:06', '2019-08-02 13:07:06'),
	(2079, 1, '3Qv8AVRgsbigGnWzF6sMiTBCfopnjafn', '2019-08-02 13:07:25', '2019-08-02 13:07:25'),
	(2080, 1, 'UEkhwFZFu5naHbhVW5WL2nv2Cdlw4m8z', '2019-08-02 13:07:25', '2019-08-02 13:07:25'),
	(2081, 1, 'xy9G4UJiewiOlyX8AYjRJCQ9T2C9h89o', '2019-08-02 13:08:16', '2019-08-02 13:08:16'),
	(2082, 1, 'b3AhVZo6PFn9fzJa1vuRAz7nHFNISPmo', '2019-08-02 13:08:16', '2019-08-02 13:08:16'),
	(2083, 1, 'Fq8rzIwr12dXDmfNXNByvwOoLDZ9yBUP', '2019-08-02 13:08:16', '2019-08-02 13:08:16'),
	(2084, 1, 'JZ3hMbAmhnh3dIEXb2giW55rQ7EIpy4N', '2019-08-02 13:08:16', '2019-08-02 13:08:16'),
	(2085, 1, 'ICO4umX4em5DQoV9jaWX4kTB0OG1Ukrv', '2019-08-02 13:08:28', '2019-08-02 13:08:28'),
	(2086, 1, 'xVTEqglVlc0mR7m254RZvkGhWybZ7Qxk', '2019-08-02 13:08:28', '2019-08-02 13:08:28'),
	(2087, 1, 'ETIY2opR8FDmsikweSjDuvyy3NnUMT59', '2019-08-02 13:08:28', '2019-08-02 13:08:28'),
	(2088, 1, 'ZLmXT6yO7dB3RVai0Aq9IOW1g7keSSaM', '2019-08-02 13:08:28', '2019-08-02 13:08:28'),
	(2089, 1, '13Kc80svOXakg26KOrWWZQu6U3jFnbJi', '2019-08-02 13:08:44', '2019-08-02 13:08:44'),
	(2090, 1, 'K3xppLEIdirSG2zUboAulZFGEVtxzmse', '2019-08-02 13:08:44', '2019-08-02 13:08:44'),
	(2091, 1, 'dWjmu22UdCqW4mzDfIbZVU2PaJrKNVbG', '2019-08-02 13:08:44', '2019-08-02 13:08:44'),
	(2092, 1, 'L4d08I1QzwK2aulTutQZ15bAbJFkb5lY', '2019-08-02 13:08:45', '2019-08-02 13:08:45'),
	(2093, 1, 'rrvdNusKRGn2D5aGmciNAfGDsoXZLeBt', '2019-08-02 13:08:57', '2019-08-02 13:08:57'),
	(2094, 1, 'JdL8WhccBp0EwesegPcI3maEEqA0ohun', '2019-08-02 13:08:57', '2019-08-02 13:08:57'),
	(2095, 1, 'q4UBI2hmUBt8cG1obpnhNq15kJcxzY6K', '2019-08-02 13:08:57', '2019-08-02 13:08:57'),
	(2096, 1, '9hscTg79jm05nfGpfQCb8dA4XRicwmwS', '2019-08-02 13:08:58', '2019-08-02 13:08:58'),
	(2097, 1, '1yxXiF3frKyi3kGrzVTB4NVZpp6WGHGH', '2019-08-02 13:09:32', '2019-08-02 13:09:32'),
	(2098, 1, 'gA8Gdjv808yqNYDcf3VETdM7TB4wGTX0', '2019-08-02 13:09:32', '2019-08-02 13:09:32'),
	(2099, 1, '8Q2DqCg60IP4YpisT2WlONl6PpQN13xg', '2019-08-02 13:09:33', '2019-08-02 13:09:33'),
	(2100, 1, '3jg4Ugx56Itila8aYFfTK7D8Is8DTPi9', '2019-08-02 13:09:33', '2019-08-02 13:09:33'),
	(2101, 1, 'cnzxGTMQE8sNxL1T5JeLEgqGbF7UjYss', '2019-08-02 13:09:52', '2019-08-02 13:09:52'),
	(2102, 1, 'jrJJdtbsLKQ6w0LTqosWS7SE7aMmSt2J', '2019-08-02 13:09:52', '2019-08-02 13:09:52'),
	(2103, 1, 'w4T4Ri4spwnpdc7F0ruJbXHeO4qgQtp0', '2019-08-02 13:09:52', '2019-08-02 13:09:52'),
	(2104, 1, '8h5MbfZgxxBV0nyqpCWEHxgHkM218Y7U', '2019-08-02 13:09:52', '2019-08-02 13:09:52'),
	(2105, 1, '9qzbtH4HXC2vB9ijl4vWaaVtJqMGSvG6', '2019-08-02 13:10:04', '2019-08-02 13:10:04'),
	(2106, 1, '05v00PjIcwbDbik9hbkz8M3MU9xeawSV', '2019-08-02 13:10:05', '2019-08-02 13:10:05'),
	(2107, 1, 'TL3euHOxb8LbDC65CdEv9zKir5fNg0EL', '2019-08-02 13:10:05', '2019-08-02 13:10:05'),
	(2108, 1, 'sQA0U5GOqa3LmIOwlZcUJvmmGSXcTdEU', '2019-08-02 13:10:05', '2019-08-02 13:10:05'),
	(2109, 1, 'pB6yRDoClQZ7VqXjCPJG4uQeoqlayLcN', '2019-08-02 13:10:14', '2019-08-02 13:10:14'),
	(2110, 1, '0yJxg4brQzBwIVsxiGCPDYKsHNLXHT9A', '2019-08-02 13:10:14', '2019-08-02 13:10:14'),
	(2111, 1, '4S1jYIbiel6Q1BF9wnziUUpNn1WPAuUr', '2019-08-02 13:10:14', '2019-08-02 13:10:14'),
	(2112, 1, 'uxPZ84O58vdJaIhyfT22r6yCzX3Dvr3G', '2019-08-02 13:10:14', '2019-08-02 13:10:14'),
	(2113, 1, '3dEoMaW6lovOXbawx0ijNuPmmKSrvuNV', '2019-08-02 13:11:00', '2019-08-02 13:11:00'),
	(2114, 1, 'LXYrAQUTHCORQs6vLKb8tzkFEpWtxwiC', '2019-08-02 13:11:00', '2019-08-02 13:11:00'),
	(2115, 1, 'dAxMOriy4mlNurTvXjM0gydunvJgEmTE', '2019-08-02 13:11:00', '2019-08-02 13:11:00'),
	(2116, 1, 'MxK4U7X2PPRRRL4i8WbKiBPFWTrClOVx', '2019-08-02 13:11:00', '2019-08-02 13:11:00'),
	(2117, 1, 'vUU9ZdzfqSxHxCiiyi1G171oJEqV6uyF', '2019-08-02 13:11:05', '2019-08-02 13:11:05'),
	(2118, 1, 'qdvLpHfdXZUkCWmvUosNOusAkKAxalyA', '2019-08-02 13:11:06', '2019-08-02 13:11:06'),
	(2119, 1, 'eP3nsPLfagTB2hzFlk2RWyAIWhkSBGEj', '2019-08-02 13:11:17', '2019-08-02 13:11:17'),
	(2120, 1, 'hHaFJsTHT9OmawNPiBcffIx64Fix8J8j', '2019-08-02 13:11:17', '2019-08-02 13:11:17'),
	(2121, 1, 'HGPQkfh8ZEVT9J8dAKbqAPWyhV7AX5tb', '2019-08-02 13:11:18', '2019-08-02 13:11:18'),
	(2122, 1, 'lpHynBwShRf4GlkVbTtSN7UACYrP6yG1', '2019-08-02 13:11:18', '2019-08-02 13:11:18'),
	(2123, 1, 'JNmvB9ItIbq7RYFTZC7mmZvd4UC5yzZQ', '2019-08-02 13:11:21', '2019-08-02 13:11:21'),
	(2124, 1, 'wix7FJIZzCmDPpXYzB5LKgywaImAmzJV', '2019-08-02 13:11:22', '2019-08-02 13:11:22'),
	(2125, 1, 'NkfpLkCUbb69n8yDPMabX1f3KVGafDyO', '2019-08-02 13:11:50', '2019-08-02 13:11:50'),
	(2126, 1, 'sq4KOW1AlmheeNrYCojbFDsBDH9bb1J9', '2019-08-02 13:11:55', '2019-08-02 13:11:55'),
	(2127, 1, 'yHVr7GkS3MAiSyWonkR2vcQxyWxUsAbb', '2019-08-02 13:12:26', '2019-08-02 13:12:26'),
	(2128, 1, 'V5s6JXPrCLAMJNTBJcfy2Dcoa7UjmFWO', '2019-08-02 13:12:39', '2019-08-02 13:12:39'),
	(2129, 1, 'GUrdAwTbhUAbllnAfRIAgnTJhOC8SDOq', '2019-08-02 13:13:19', '2019-08-02 13:13:19'),
	(2130, 1, 'MJuAgFutcHINzsJNtSpjqrsbhnlqNRLL', '2019-08-02 13:13:20', '2019-08-02 13:13:20'),
	(2131, 1, 'DYXCJvUMtCdCEPpLc2YN8eY92wEJ6qLE', '2019-08-02 13:13:31', '2019-08-02 13:13:31'),
	(2132, 1, 'hZNc9FVhWyh3nyo1wCYaKT1WsDnPbE6F', '2019-08-02 13:13:52', '2019-08-02 13:13:52'),
	(2133, 1, 'WEoKulYBEwCh5bcRHaILQYpoLKii44ID', '2019-08-02 13:15:50', '2019-08-02 13:15:50'),
	(2134, 5, 'Sa4lCgfkcNLNmicPYrTRP2PIt5vmlFfd', '2019-08-03 10:35:34', '2019-08-03 10:35:34'),
	(2135, 5, 'GjfMytIKZ4whIGEQOHibcRjMR5WbbE49', '2019-08-03 10:37:24', '2019-08-03 10:37:24'),
	(2136, 5, 'p4Pwv0lCoW0073HGRyJM7vkGhV149NzE', '2019-08-03 10:38:05', '2019-08-03 10:38:05'),
	(2137, 1, 'MUh2BqzZzG7mP1aSTrXgwyZSijeXY3zi', '2019-08-03 10:39:49', '2019-08-03 10:39:49'),
	(2138, 6, 'W7EbRlbhpBEOXlj8n520G8xsMrAx8ehh', '2019-08-03 10:40:00', '2019-08-03 10:40:00'),
	(2139, 5, 'og3zkCoykvzqIHuChZEgdJRQus6IrqwD', '2019-08-03 10:40:52', '2019-08-03 10:40:52'),
	(2140, 5, 'xmdA5w2xXC6LffbQTyYDEYsBWH2861Ku', '2019-08-03 10:41:13', '2019-08-03 10:41:13'),
	(2141, 5, 'wbyeQGSG1EiuqVC81Yg52aK0VHkN8Eap', '2019-08-03 10:42:20', '2019-08-03 10:42:20'),
	(2142, 5, 'Yshh5y8kyAjdtzsfBtQWPGYKaIBbn9i2', '2019-08-03 10:42:26', '2019-08-03 10:42:26'),
	(2143, 5, '5QHHfUSUl1J4TKXSayIA9UnT97nbPSUe', '2019-08-03 10:43:03', '2019-08-03 10:43:03'),
	(2144, 5, 'bSMdyDOLDxoaOT0DWzf2mvZiXBJ5nwyY', '2019-08-03 10:43:07', '2019-08-03 10:43:07'),
	(2145, 5, 'TP5j7s3F9crkArahmm4Zr04m0ryjqv3s', '2019-08-03 10:43:21', '2019-08-03 10:43:21'),
	(2146, 5, 'w9nfFzGOP8b2sDYRYhpFGfEdJJ2bFxfY', '2019-08-03 10:43:23', '2019-08-03 10:43:23'),
	(2147, 5, 'njyRHF41DcBeogIT0ibBSnmxe2mGszsN', '2019-08-03 10:43:39', '2019-08-03 10:43:39'),
	(2148, 5, '7nst4LFOQGJA2t4FaJFMJUlOgGMXndtc', '2019-08-03 10:44:00', '2019-08-03 10:44:00'),
	(2149, 5, '214zNtUMLWr6flBhnSsYXGKatgNITVKW', '2019-08-03 10:44:04', '2019-08-03 10:44:04'),
	(2150, 5, 'c8XcCWS27Zx7ETGxW9wKyvImnUOCkoqn', '2019-08-03 10:44:05', '2019-08-03 10:44:05'),
	(2151, 5, 'oa2MM2WROVa37y1xuqT2ioMeOTYC5bw2', '2019-08-03 10:44:07', '2019-08-03 10:44:07'),
	(2152, 5, 'WheLg1brZamLqxKlRPd8cbXkxCJhpZrm', '2019-08-03 10:44:08', '2019-08-03 10:44:08'),
	(2153, 5, 'ObsmZNiVuItTR1II4SXA9QGFZuFGDNBA', '2019-08-03 10:44:17', '2019-08-03 10:44:17'),
	(2154, 5, 'Bygyp8jwJH7atlgwOXYyQgmmhzFzh07k', '2019-08-03 10:45:05', '2019-08-03 10:45:05'),
	(2155, 5, 'rcAoENAXDspuwUDymSUTBorEFkzupt9S', '2019-08-03 10:45:21', '2019-08-03 10:45:21'),
	(2156, 5, 'Z9bTXYy87FNz7rIvcyNEeR5gfGf4Mkm9', '2019-08-03 10:45:28', '2019-08-03 10:45:28'),
	(2157, 5, '48eKlKCFwJwvKVEAmk2Q71Ywf4U5WEhk', '2019-08-03 10:45:35', '2019-08-03 10:45:35'),
	(2158, 5, '09Bu4TFtZ9FmGxx7emJncuvtCcZcLza5', '2019-08-03 10:46:11', '2019-08-03 10:46:11'),
	(2159, 5, 'T6uhnRELxMUldoD8oyJYaClghlhjzP4w', '2019-08-03 10:46:26', '2019-08-03 10:46:26'),
	(2160, 5, 'dumMvHr2eydY1GuH5gxcEj23AAS485tU', '2019-08-03 10:46:57', '2019-08-03 10:46:57'),
	(2161, 5, '7HwlqjJUoMYsWw4wL1jJHZEkbEeimvJ0', '2019-08-03 10:47:10', '2019-08-03 10:47:10'),
	(2162, 5, 'Cn6AWZPKRc4QpOlDUebbuWMpe2xvw64r', '2019-08-03 10:47:32', '2019-08-03 10:47:32'),
	(2163, 5, 'hLudkivieWaabq61VUA8g05wkW8c28YG', '2019-08-03 10:48:08', '2019-08-03 10:48:08'),
	(2164, 5, 'PbPSK4ntutDHVBK224pS4W6LY9dBzPMM', '2019-08-03 10:48:26', '2019-08-03 10:48:26'),
	(2165, 5, 'CwwCWNQPuqU6dTeusnbSPqflKxfXuU8R', '2019-08-03 10:48:26', '2019-08-03 10:48:26'),
	(2166, 5, 'A7NaSPs3GOM2gbxyU7hHiUkfIv5C4cs7', '2019-08-03 10:48:44', '2019-08-03 10:48:44'),
	(2167, 5, 'OLw0706wnhRYn8YuR2Xy1GXBaOJGd1MG', '2019-08-03 10:49:11', '2019-08-03 10:49:11'),
	(2168, 5, 'Dti3dgy8rWI5HoGNDighkYQYt8174Co4', '2019-08-03 10:50:41', '2019-08-03 10:50:41'),
	(2169, 5, 'E1HwcJ8vbpcBc65Afe99Z9zwTYHeMrfn', '2019-08-03 10:51:00', '2019-08-03 10:51:00'),
	(2170, 5, 'T0m4XR8MQBFddSeyHDPYbp0tNIeyNykZ', '2019-08-03 10:51:19', '2019-08-03 10:51:19'),
	(2171, 5, 'B1Fkvdd0REZqLyxfrpdScOKP2eLepyyh', '2019-08-03 10:51:20', '2019-08-03 10:51:20'),
	(2172, 5, 'bfXOcx0n1MbUCMWf5CsOslWddKA7N6GB', '2019-08-03 10:52:07', '2019-08-03 10:52:07'),
	(2173, 5, '7C3bAewsebSNvtulgIluqBvZN21Nz3ao', '2019-08-03 10:52:23', '2019-08-03 10:52:23'),
	(2174, 5, 'e54DZaE6zYpWxtOSJj4rFxE04XkdCkT2', '2019-08-03 10:52:31', '2019-08-03 10:52:31'),
	(2175, 5, 'jKwlQw7BCNAnttcE7sw9d5zcLlzvMvXJ', '2019-08-03 10:52:33', '2019-08-03 10:52:33'),
	(2176, 5, 'SntCOwAk51vT4wC2bAZD1CvJuPZlkrHa', '2019-08-03 10:53:03', '2019-08-03 10:53:03'),
	(2177, 5, 'LE6hCh4FtG7SycvY5jd8Ao1ri7KotJjm', '2019-08-03 10:53:38', '2019-08-03 10:53:38'),
	(2178, 5, 'YRmoekyVf2bDnZ54UlorOorA3xSOyJ64', '2019-08-03 10:53:58', '2019-08-03 10:53:58'),
	(2179, 5, 'CaE1ebMMxlOtnqWiMk5DkMm925AEyRTa', '2019-08-03 10:54:03', '2019-08-03 10:54:03'),
	(2180, 5, 'RtmJx2WvTzXmlgIhz1GEmpqXhyqS39Ta', '2019-08-03 10:54:08', '2019-08-03 10:54:08'),
	(2181, 5, '6z3W7dAQ8jw4b8Qj3QDvn2XJCeVh64Yb', '2019-08-03 10:54:09', '2019-08-03 10:54:09'),
	(2182, 5, 'npN6FAK7HKthSUUVpIEdnl58JjNykS2A', '2019-08-03 10:54:24', '2019-08-03 10:54:24'),
	(2183, 5, 'phQ29T6yfE1s0an5wcqCpaZ2SOLHQUfD', '2019-08-03 10:54:31', '2019-08-03 10:54:31'),
	(2184, 5, 'g7JNlLFeTXStZFDVcsSKB74I1OISmQ7m', '2019-08-03 10:54:37', '2019-08-03 10:54:37'),
	(2185, 5, 'ftBUFeM0Y4qbYClcl9TrYC1N9UM5Vbsg', '2019-08-03 10:54:50', '2019-08-03 10:54:50'),
	(2186, 5, 'VHnqJFPfAm6mQZFYnMkMQCJRSC6OYyiE', '2019-08-03 10:54:56', '2019-08-03 10:54:56'),
	(2187, 5, 'Ehg76fqjItvkIAAGtQLAm7qg08x0oXvM', '2019-08-03 10:54:59', '2019-08-03 10:54:59'),
	(2188, 5, 'xOm3VqgO1KWktcdbm8GwBq90GVBFyS6M', '2019-08-03 10:55:00', '2019-08-03 10:55:00'),
	(2189, 5, 'tLXTFhh1Inzmvsmng7oy3jgS7dfs0yAI', '2019-08-03 10:56:03', '2019-08-03 10:56:03'),
	(2190, 5, 'WULiBhuuLALgit0VP5HlVptJ9GftGNNv', '2019-08-03 10:56:11', '2019-08-03 10:56:11'),
	(2191, 5, 'S9q1LoN3qwWqAnQtOILYq8QxkXs8ob5I', '2019-08-03 10:56:12', '2019-08-03 10:56:12'),
	(2192, 5, 'JFY6BeWLUVaG8GPyDRfrBK3pQ2O5y0mi', '2019-08-03 10:56:36', '2019-08-03 10:56:36'),
	(2193, 5, '5zez4UL1zGFp0cy90qduq0AhAIXUiFhK', '2019-08-03 10:56:50', '2019-08-03 10:56:50'),
	(2194, 5, 'v7b1L7yLsPGZpIk9fB2NrqCwwaXFQ7MQ', '2019-08-03 10:57:40', '2019-08-03 10:57:40'),
	(2195, 5, 'pnHdxROWs2kwqdIvEKCY8FnII4xQq3VC', '2019-08-03 10:58:12', '2019-08-03 10:58:12'),
	(2196, 5, '66IipuhSQ0Oq4q7oGlppa5z60179BvzQ', '2019-08-03 10:58:58', '2019-08-03 10:58:58'),
	(2197, 5, 'SD1H2JmAWKEvw7DGgLJmqGje4NL759mt', '2019-08-03 10:59:25', '2019-08-03 10:59:25'),
	(2198, 5, 'Gxr8rBVpRjvGGEcqywRkWssq8y0fQcud', '2019-08-03 10:59:46', '2019-08-03 10:59:46'),
	(2199, 5, 'fkQf6CjYzcUV8rndurjO42zDFXUbz5oW', '2019-08-03 11:00:14', '2019-08-03 11:00:14'),
	(2200, 5, '3Y452pDQMGH0xhsepCFO9Z8fbW6fj4M8', '2019-08-03 11:00:18', '2019-08-03 11:00:18'),
	(2201, 5, '6TzNOI0QLCXP6A1JDzWAwt9D2dwz413v', '2019-08-03 11:00:19', '2019-08-03 11:00:19'),
	(2202, 5, 'KkS9VDjsxiVrHUwpvkLVdho3qdvHbXFc', '2019-08-03 11:00:40', '2019-08-03 11:00:40'),
	(2203, 5, '2vd47mjV2I7ulg4xCbEl1bcK2m6xHU0A', '2019-08-03 11:00:42', '2019-08-03 11:00:42'),
	(2204, 5, '1ywyq65PkU6UPBQE3yH90sbXQ2VKL0oT', '2019-08-03 11:00:43', '2019-08-03 11:00:43'),
	(2205, 5, 'XGCZCBBLiamdpHph7dgtmKPeB9mfbaz3', '2019-08-03 11:02:02', '2019-08-03 11:02:02'),
	(2206, 5, 'QaRmg2Lg11bWAsdgBIxA57NvSBFRBYQA', '2019-08-03 11:02:43', '2019-08-03 11:02:43'),
	(2207, 5, '4V7I8HdUm4x9SzdcQJy2rwWmQFbY8sUC', '2019-08-03 11:02:58', '2019-08-03 11:02:58'),
	(2208, 5, '53TYm5uEIGoPX89P3Yq6kinhjMij1uKk', '2019-08-03 11:03:02', '2019-08-03 11:03:02'),
	(2209, 5, 'uDnsHZUIIkKZ6yVD8ntRoGH6EIK9BxwO', '2019-08-03 11:03:02', '2019-08-03 11:03:02'),
	(2210, 5, 'kOdqSOUb8bEGAaRUrF8rZO9nZv9GMRBC', '2019-08-03 11:03:32', '2019-08-03 11:03:32'),
	(2211, 5, 'CfGjw1mwRCt6Rc9wRzs521X9Mh4WISyx', '2019-08-03 11:03:39', '2019-08-03 11:03:39'),
	(2212, 5, '4CtfowaoL7MpDyMq4A520xMWpSX5krNv', '2019-08-03 11:03:39', '2019-08-03 11:03:39'),
	(2213, 5, '52p4yzCsg1toNGs9nh3gnrSQLnEzOj05', '2019-08-03 11:04:54', '2019-08-03 11:04:54'),
	(2214, 1, 'iXDpI4AFSU93Un1nUsOvtGrojE5mHdBN', '2019-08-03 11:05:57', '2019-08-03 11:05:57'),
	(2215, 1, 'srIat7tpXyYbJkaQjppfyKqCZLDhvbrY', '2019-08-03 11:06:06', '2019-08-03 11:06:06'),
	(2216, 1, 'bkg1afd2gxF7xCWAWIJ7p2sbXjmczWU0', '2019-08-03 11:06:50', '2019-08-03 11:06:50'),
	(2217, 1, 'yxc5zqUVjU3rv5ledUORAcB8tFryYdmx', '2019-08-03 11:06:54', '2019-08-03 11:06:54'),
	(2218, 1, '3jjwpQ05yUiaHW4rz97YUsHFl5f6aBn4', '2019-08-03 11:06:54', '2019-08-03 11:06:54'),
	(2219, 1, 'zWCMcWUHk8CHrm13CZVXR4g1r9yg3BRu', '2019-08-03 11:07:00', '2019-08-03 11:07:00'),
	(2220, 1, 'pdnNrXVfGiNMcwUWtrA7BahDSHKoTWbG', '2019-08-03 11:07:00', '2019-08-03 11:07:00'),
	(2221, 5, 'eKgMGNSqisCN1LIDBCTXpvnze6NmXydf', '2019-08-03 11:07:24', '2019-08-03 11:07:24'),
	(2222, 1, 'pcwiMshsXtl8qahDfLuSLrbLhGpJK46H', '2019-08-03 11:07:33', '2019-08-03 11:07:33'),
	(2223, 1, 'GjggMzJDYGDKXwoS6x01b23BfTOay5Cc', '2019-08-03 11:07:33', '2019-08-03 11:07:33'),
	(2224, 5, 'oYCtXGRaNak8gixMrsvor83hFgzMsIGY', '2019-08-03 11:08:44', '2019-08-03 11:08:44'),
	(2225, 1, 'LFUYQONnMxiWpOSwpwDGMmGv7oLJ5Wi3', '2019-08-03 11:08:48', '2019-08-03 11:08:48'),
	(2226, 1, 'zx9cO1wKL4fgptyNtE4tT26erJwVgw2n', '2019-08-03 11:08:48', '2019-08-03 11:08:48'),
	(2227, 1, '2qyMgPGYFjo5nPiuLKWwtCgCAcImKp4q', '2019-08-03 11:09:03', '2019-08-03 11:09:03'),
	(2228, 1, 'V87drtANziphsupgqBmyIZJzBYSEH27v', '2019-08-03 11:09:53', '2019-08-03 11:09:53'),
	(2229, 1, 'DTwEWOixWrfQwVUCkOzu7yT2YGsr34Zv', '2019-08-03 11:09:58', '2019-08-03 11:09:58'),
	(2230, 1, '2UEs5lR0uRB0kA4udsGTtUkFdCowOJZB', '2019-08-03 11:09:58', '2019-08-03 11:09:58'),
	(2231, 1, 'KQ6VNWWw09BwY0533ePyvT9tyV1ELnJL', '2019-08-03 11:10:20', '2019-08-03 11:10:20'),
	(2232, 1, '2v4Rk359Rxop0OYFqNPipoLnrZgSQpFU', '2019-08-03 11:10:20', '2019-08-03 11:10:20'),
	(2233, 1, 'I58WQdz60dydzk70wy86iYUZOrdsYHo0', '2019-08-03 11:10:23', '2019-08-03 11:10:23'),
	(2234, 1, 'vrfZ4fpOPX251XICc6RoLRX0v6kFwoG1', '2019-08-03 11:10:24', '2019-08-03 11:10:24'),
	(2235, 1, 'aDK24imYezwHtppgi5btrlnnF6Wo21bo', '2019-08-03 11:10:28', '2019-08-03 11:10:28'),
	(2236, 1, '2tA9fMEcqRPHnYHiJO4yNpsGJmt4PFQ8', '2019-08-03 11:10:28', '2019-08-03 11:10:28'),
	(2237, 1, 'Ui9K0PLyfZfibCh8GBTqZF9P2pIT0se4', '2019-08-03 11:10:38', '2019-08-03 11:10:38'),
	(2238, 1, 'P3Krayqhvipv2esNpqjZUsZ37ujirTLo', '2019-08-03 11:10:45', '2019-08-03 11:10:45'),
	(2239, 1, 'tRaorDKSWj8JtKDFhQVaK1XX2Dwdm5TL', '2019-08-03 11:10:45', '2019-08-03 11:10:45'),
	(2240, 1, '5YlnAjHYcNFNi79tSZekpVREX1CRWD9W', '2019-08-03 11:10:56', '2019-08-03 11:10:56'),
	(2241, 1, '15LvjLTiRx8XnnQqJXDWGG0POpPz5WVt', '2019-08-03 11:11:21', '2019-08-03 11:11:21'),
	(2242, 1, 'GSXicfL2jPAiSlqNz7zAlegLCSMhQ8cs', '2019-08-03 11:12:47', '2019-08-03 11:12:47'),
	(2243, 1, 'LSMphqj5UfNTHZKFF4EquTngmgBZ5eAT', '2019-08-03 11:13:17', '2019-08-03 11:13:17'),
	(2244, 1, 'UvqSamJFMDqlYH5fI6L3wZWAGd92yTSy', '2019-08-03 11:13:17', '2019-08-03 11:13:17'),
	(2245, 1, 'tvfU6iLpcVbOYgurH0AaPl3ZpLjp4r37', '2019-08-03 11:14:08', '2019-08-03 11:14:08'),
	(2246, 1, 'oWpcYiqM74cxpiR74IHwW0H5901emKJ0', '2019-08-03 11:16:09', '2019-08-03 11:16:09'),
	(2247, 1, 'OCyZIjWzElFDzATJvrH0R3uszaMqBUi0', '2019-08-03 11:17:30', '2019-08-03 11:17:30'),
	(2248, 1, 'MaZYkvqdVv0sYw3mCt0MMsRtNo1TO1zR', '2019-08-03 11:17:38', '2019-08-03 11:17:38'),
	(2249, 1, '9LQ2XzPUWxYRoQGJ8ewj4nSqXP6cCWuE', '2019-08-03 11:17:38', '2019-08-03 11:17:38'),
	(2250, 1, 'nXWwi7q2TspQyFAr1E4i73PPDWA4x2jV', '2019-08-03 11:18:32', '2019-08-03 11:18:32'),
	(2251, 1, 'l8JVVU80jmpm4jKpvc8J75AzRHmRqrg8', '2019-08-03 11:18:46', '2019-08-03 11:18:46'),
	(2252, 1, 'XG2Iuy5R7wkiHFppBfRlzk8L2x7ya0QI', '2019-08-03 11:19:20', '2019-08-03 11:19:20'),
	(2253, 1, 'jGCD79dcnICZQlamA17AqKyoKMGi1hJt', '2019-08-03 11:19:20', '2019-08-03 11:19:20'),
	(2254, 1, 'RSuKaU8nmPtdVACt3r1XVf7qWaSObCiA', '2019-08-03 11:19:43', '2019-08-03 11:19:43'),
	(2255, 1, 'OzTJXTWeHxYhkFkeLXoN8gd83Xy4KCjA', '2019-08-03 11:19:43', '2019-08-03 11:19:43'),
	(2256, 1, 'a7xRlGkqYQQhZHcZfCuv3MvEFC10Mi23', '2019-08-03 11:21:32', '2019-08-03 11:21:32'),
	(2257, 1, 'r6ha5nEilTDGjaynn6ZKwHKYykozTwBl', '2019-08-03 11:22:07', '2019-08-03 11:22:07'),
	(2258, 1, 'Q6e8z5CGcgwZhlYBqfeH0BZXJ8scQ426', '2019-08-03 11:22:08', '2019-08-03 11:22:08'),
	(2259, 1, 'xQduMCGZqOmqXfVWCaMC5JKxSDsWYlB8', '2019-08-03 11:22:08', '2019-08-03 11:22:08'),
	(2260, 1, 'j9KrhpEAc7e3s7z2ktzpIBZ7dUQA0DoP', '2019-08-03 11:22:08', '2019-08-03 11:22:08'),
	(2261, 1, 'ByA3mVCzEnhT79JxegPjUj3vMBdoaxpm', '2019-08-03 11:22:08', '2019-08-03 11:22:08'),
	(2262, 1, 'x4xd1Tp41RBEmqdzGb8c1T1AwCOXDeAk', '2019-08-03 11:22:08', '2019-08-03 11:22:08'),
	(2263, 1, 'rcl9VcwW1bp8AhiUHDpUcNo1ZHav5mYa', '2019-08-03 11:22:08', '2019-08-03 11:22:08'),
	(2264, 1, 'EshkDAkXuj2cf6hMvmwZcyqJ0kRXnvSt', '2019-08-03 11:22:08', '2019-08-03 11:22:08'),
	(2265, 1, 'uKJw9nHtElh1Hdyw7MUmCbImAi9qAFQR', '2019-08-03 11:22:45', '2019-08-03 11:22:45'),
	(2266, 1, '4PUzTWAmnHhLWH2Me315oAHr1mOh6ijN', '2019-08-03 11:22:45', '2019-08-03 11:22:45'),
	(2267, 1, 'fU8XwcgUzccgz9kv4PmOKHu32drMB98H', '2019-08-03 11:22:45', '2019-08-03 11:22:45'),
	(2268, 1, 'YIMmElRbo9KZqPajnzQgKQjvSS16RoUu', '2019-08-03 11:22:45', '2019-08-03 11:22:45'),
	(2269, 1, 'hn0ElmD3FfZEPtg3JRb1IA59iBqB3XMN', '2019-08-03 11:22:45', '2019-08-03 11:22:45'),
	(2270, 1, 'ZtU3QclKIG7zwxGRNu6sut5AuAtTc9IN', '2019-08-03 11:22:45', '2019-08-03 11:22:45'),
	(2271, 1, 'wqZeomTF7Hw4jRlWHY538mCxomzgzXfa', '2019-08-03 11:22:45', '2019-08-03 11:22:45'),
	(2272, 1, 'r2mO3eepDsmAJMk9TxRBYAVP5LImEUZh', '2019-08-03 11:22:46', '2019-08-03 11:22:46'),
	(2273, 1, '2uAokQPwiwNjOU8UHcLZ3FNXdcje14xD', '2019-08-03 11:23:03', '2019-08-03 11:23:03'),
	(2274, 1, 'vUxvOrCY2waV7GCRscuMneY4RpfZWyz8', '2019-08-03 11:23:42', '2019-08-03 11:23:42'),
	(2275, 1, 'IPJYUzz7HDQAOLog2oBs5Zti2INpl0B7', '2019-08-03 11:23:42', '2019-08-03 11:23:42'),
	(2276, 1, '4bgyPccNTILLCbhQiuCUfQzSVITh3SXx', '2019-08-03 11:23:43', '2019-08-03 11:23:43'),
	(2277, 1, 'gs8WP41W2D4eoZYTWCSd5TLkqHCEx0Uf', '2019-08-03 11:23:43', '2019-08-03 11:23:43'),
	(2278, 1, 'PTR1DW7G3LHVHBywXy10Uspjan3ObpSY', '2019-08-03 11:23:43', '2019-08-03 11:23:43'),
	(2279, 1, 'NSXO1lm1GGdwsJNsgvjkR8MiKyKis3k0', '2019-08-03 11:23:43', '2019-08-03 11:23:43'),
	(2280, 1, 'wGTpUaedR6bWjubsc1zrGMDalPYX95lL', '2019-08-03 11:23:43', '2019-08-03 11:23:43'),
	(2281, 1, 'BjuhYGiLFwQKoNGzXcLkU7sqmT8nqImq', '2019-08-03 11:23:43', '2019-08-03 11:23:43'),
	(2282, 1, 'bz1YdanW09QcFWcngug8HhLaHfOY1HIk', '2019-08-03 11:24:07', '2019-08-03 11:24:07'),
	(2283, 1, 'VWpvUpCKTQGSkD1d7IUvNwlxMIsRG1TL', '2019-08-03 11:24:07', '2019-08-03 11:24:07'),
	(2284, 1, 'RJQjlqdYlzA21g0Kz3iMLCmUH9u9ErA7', '2019-08-03 11:24:07', '2019-08-03 11:24:07'),
	(2285, 1, 'hQ5muFznn8fmrwMc0fryschsVpGTvA7M', '2019-08-03 11:24:07', '2019-08-03 11:24:07'),
	(2286, 1, '5XNo5DMBEw8WNncjYZ6meBGiWCkHhrWB', '2019-08-03 11:24:07', '2019-08-03 11:24:07'),
	(2287, 1, 'WcIVZ2Cn1OiCDQLuTI6rlgofhh9blYoN', '2019-08-03 11:24:09', '2019-08-03 11:24:09'),
	(2288, 1, 'Fvb7pZI9gvO23z15KjJR7ZmV6cugHiYM', '2019-08-03 11:24:09', '2019-08-03 11:24:09'),
	(2289, 1, 'bttGg5g2Njzmf4Hkdsp9cSPQ75fPdBIK', '2019-08-03 11:24:10', '2019-08-03 11:24:10'),
	(2290, 1, 'XZsvXmBItbD1piGm5MJ5jeXRIj4Cmm4X', '2019-08-03 11:25:09', '2019-08-03 11:25:09'),
	(2291, 1, 'XN7PYUP5dnMzrgV2ki2UID7kpD51sedf', '2019-08-03 11:25:27', '2019-08-03 11:25:27'),
	(2292, 1, 'U0n80gvDmYmyGL3NJ1pueyiiJ6s6TPFC', '2019-08-03 11:25:27', '2019-08-03 11:25:27'),
	(2293, 1, 'KhZ74kg3UWehQe1JtWVe5t3eixlH35NO', '2019-08-03 11:29:15', '2019-08-03 11:29:15'),
	(2294, 1, 'cSsGiGQWNlD05TY9QHitnlIRcEXL0Qlt', '2019-08-03 11:29:45', '2019-08-03 11:29:45'),
	(2295, 6, 'CynfL3pDAdN9P9K13CxQ3UfvsT0hbyCM', '2019-08-03 11:32:39', '2019-08-03 11:32:39'),
	(2296, 6, 'yuFXiQqJLWdbjyVPGVje9VodPcvfBZlF', '2019-08-03 11:33:32', '2019-08-03 11:33:32'),
	(2297, 1, 'uk68lOpsN3QIQnyeGhGMJAwgln9hezUd', '2019-08-03 11:35:32', '2019-08-03 11:35:32'),
	(2298, 1, '7PkiPNgYnPRzsYcubC8loToynWMhN1D9', '2019-08-03 11:35:35', '2019-08-03 11:35:35'),
	(2299, 1, 'Ee5vgPueUDliSqE99BDQuBj6ylKhwXyr', '2019-08-03 11:35:41', '2019-08-03 11:35:41'),
	(2300, 1, 'Y6QbzUgDVvkOci1sKRW3ec5ucNnM4x0U', '2019-08-03 11:35:50', '2019-08-03 11:35:50'),
	(2301, 1, 'I8UBS4Z5SPOcTp5W8fwdRmSkTIgoPNrr', '2019-08-03 11:35:59', '2019-08-03 11:35:59'),
	(2302, 1, 'DpOkmjcM7snhSAi7fu5uegZ8GhuiEl7W', '2019-08-03 11:36:11', '2019-08-03 11:36:11'),
	(2303, 1, 'J4Bselo1Xwms97m28Jm3qBDyAi00teVg', '2019-08-03 11:36:31', '2019-08-03 11:36:31'),
	(2304, 1, 'isPgUYD0c0PJ683FOIT1uAjcHtnpVfSo', '2019-08-03 11:36:40', '2019-08-03 11:36:40'),
	(2305, 1, 'nLvMktY1P4GPJjPAl84gXL6nrerPspVq', '2019-08-03 11:36:40', '2019-08-03 11:36:40'),
	(2306, 1, 'rs1ofNeVxRszmM4K3yHOicWQF9YXd80v', '2019-08-03 11:36:51', '2019-08-03 11:36:51'),
	(2307, 1, 'LdiZBkh4RCHEDe5jA3iaCEXPUZQEhh0V', '2019-08-03 11:36:51', '2019-08-03 11:36:51'),
	(2308, 1, 'POzkJOZYEKc7ab4gbCip6wxazc4JAQFj', '2019-08-03 11:36:57', '2019-08-03 11:36:57'),
	(2309, 1, 'zD2Vz2qrjhQhUSjtg6NHnfHIf9WNMDnz', '2019-08-03 11:36:57', '2019-08-03 11:36:57'),
	(2310, 1, '0WhguRFn5MnjBG74a4QEFowcIFL4VQ5p', '2019-08-03 11:36:59', '2019-08-03 11:36:59'),
	(2311, 1, '2uzRiYrFLbDyccq51l64LD4sI5LnBQgD', '2019-08-03 11:36:59', '2019-08-03 11:36:59'),
	(2312, 1, 'VQsbsDH7uw9dyCfIZcShhmMa9JeE9YO8', '2019-08-03 11:37:04', '2019-08-03 11:37:04'),
	(2313, 1, 'tj8jhz37pWYtsHeCCJftRsA5ITfkmR1y', '2019-08-03 11:37:04', '2019-08-03 11:37:04'),
	(2314, 1, '4VHxs6DPnS1Fb3BOMYG3HOCqhLFUJAcQ', '2019-08-03 11:37:50', '2019-08-03 11:37:50'),
	(2315, 1, '6S9EMqcwyywI7q3vtyDTU9BCFJkHtGM6', '2019-08-03 11:38:02', '2019-08-03 11:38:02'),
	(2316, 1, '7PLUDPz9lvfXsMmpPp9mwtJv9TBFpzFe', '2019-08-03 11:38:02', '2019-08-03 11:38:02'),
	(2317, 1, 'njBL44gUrQDvwuLkUGkSrTAF66z9T9V6', '2019-08-03 11:38:05', '2019-08-03 11:38:05'),
	(2318, 1, 'gJO4rkQsSXkHJZkzIERHHcZs35ki1mhp', '2019-08-03 11:38:20', '2019-08-03 11:38:20'),
	(2319, 1, 'rICaFenO5MrD6v5OfWErlQzDQ2tispSZ', '2019-08-03 11:38:27', '2019-08-03 11:38:27'),
	(2320, 1, 'H1lCOVAnMcvHKJEAEDsC43plWXLIaY1N', '2019-08-03 11:38:27', '2019-08-03 11:38:27'),
	(2321, 1, 'CnmCekspES4In8lLH74xslKDY1U1Kto4', '2019-08-03 11:38:39', '2019-08-03 11:38:39'),
	(2322, 1, '4agd0iGt9Q98DNILyskGAxEds7b0BlzU', '2019-08-03 11:38:39', '2019-08-03 11:38:39'),
	(2323, 1, 'zZZuI2iusSFSXw9lnaReDoxc81JkyvYg', '2019-08-03 11:38:41', '2019-08-03 11:38:41'),
	(2324, 1, 'QAofDPoooqycC159TZeSpkD95oDheD4G', '2019-08-03 11:38:47', '2019-08-03 11:38:47'),
	(2325, 1, 'ep9tlRGhiXoqK171T0cHysmtk1srfQuN', '2019-08-03 11:38:56', '2019-08-03 11:38:56'),
	(2326, 6, 'N3y0q091rFJqX43BhaQLwAuj6s3uevaS', '2019-08-03 11:39:06', '2019-08-03 11:39:06'),
	(2327, 1, 'ax3m2f9w2BXCnZWksk0YhjZxrvxUpvXl', '2019-08-03 11:39:09', '2019-08-03 11:39:09'),
	(2328, 6, 'oQOSTTFvtKR2mu5O6IOalWE4yJSfU1za', '2019-08-03 11:39:32', '2019-08-03 11:39:32'),
	(2329, 6, 'pVnoFR6YxAuQ6f2jYGJtJDiqpd1tAM6l', '2019-08-03 11:39:32', '2019-08-03 11:39:32'),
	(2330, 6, 'mzkbmhwbBHYvy2GkqlVHwOzah3DFp4du', '2019-08-03 11:39:32', '2019-08-03 11:39:32'),
	(2331, 6, 'EsBTQOQatngfnMyxnnBIKEOAgymIgP91', '2019-08-03 11:39:32', '2019-08-03 11:39:32'),
	(2332, 6, 'hanfM0WNDfY8azND2tAscma69ONRD3i8', '2019-08-03 11:39:32', '2019-08-03 11:39:32'),
	(2333, 6, 'ulbSZv5dd2XN1pS5SM4cAkAPmCPAa7c7', '2019-08-03 11:39:33', '2019-08-03 11:39:33'),
	(2334, 6, 'q3JD3SzaBmqGcyVXaTYKsZVW1SvSykGd', '2019-08-03 11:39:33', '2019-08-03 11:39:33'),
	(2335, 6, 'DTuIR7b1jdLTOSp4tg9stPIK5REZVp1D', '2019-08-03 11:39:33', '2019-08-03 11:39:33'),
	(2336, 6, 'gBq3X71chlsdL1Iuzy6E3tFyBNPfRJUm', '2019-08-03 11:39:58', '2019-08-03 11:39:58'),
	(2337, 6, 'MuRItK58rVNDeyHMs6t525xUsZUwKW21', '2019-08-03 11:39:58', '2019-08-03 11:39:58'),
	(2338, 6, 'YuwBH14Ttzk4HssaTSDzel2oV9mQR8Kn', '2019-08-03 11:39:58', '2019-08-03 11:39:58'),
	(2339, 6, 'VDlv40VM7q9m7oRk7Fidbs8cg7iTP4vh', '2019-08-03 11:39:58', '2019-08-03 11:39:58'),
	(2340, 6, 'Y93mvVVFyFuyp1jvam7fBp6h22HzXKdE', '2019-08-03 11:39:58', '2019-08-03 11:39:58'),
	(2341, 6, 'uONShEq58vL8emVZU8KpxkwFm3TzGt3a', '2019-08-03 11:39:58', '2019-08-03 11:39:58'),
	(2342, 6, 'VDhDQWnU616GNO2j2psfXKc3Z59sorKB', '2019-08-03 11:39:58', '2019-08-03 11:39:58'),
	(2343, 6, 'LQyAvqqITFp0UhIbDAtzvOlIAQW3tNAl', '2019-08-03 11:39:59', '2019-08-03 11:39:59'),
	(2344, 6, 'rgVSSBimZBEdDIRsZPXuSZuvjtXJZpSn', '2019-08-03 11:40:07', '2019-08-03 11:40:07'),
	(2345, 6, 'PDcP5t9rtbGsdIE2BajNJQc1I2nsRL0I', '2019-08-03 11:40:08', '2019-08-03 11:40:08'),
	(2346, 6, 'JKXcZcv63FI06NXMdmI4XPcBAvymzrbf', '2019-08-03 11:40:08', '2019-08-03 11:40:08'),
	(2347, 6, 'e0Zv40ShuQSmq12XIMpuBCrCDyOoNiGR', '2019-08-03 11:40:08', '2019-08-03 11:40:08'),
	(2348, 6, '1W31uD25W1JnJuFWWtAKNiU8m2F4fXfm', '2019-08-03 11:40:08', '2019-08-03 11:40:08'),
	(2349, 6, 'qFlUEthWCBnOuqlmVNtSNSeE31VRWvGl', '2019-08-03 11:40:08', '2019-08-03 11:40:08'),
	(2350, 6, 'rA73a3Ocu6dCE88uRgaa20gHWLFWnMyN', '2019-08-03 11:40:08', '2019-08-03 11:40:08'),
	(2351, 6, 'lSIaAtQhj46zj89dlyFleExrTFDOfE7X', '2019-08-03 11:40:09', '2019-08-03 11:40:09'),
	(2352, 1, 'CbGItpZKstXaPfWfbdeooBk4BabQcE3Z', '2019-08-03 11:40:14', '2019-08-03 11:40:14'),
	(2353, 1, 'gnOzSM3gPiS4boDQdi8djxHXplikCVzv', '2019-08-03 11:40:14', '2019-08-03 11:40:14'),
	(2354, 1, 'D6ubEAnjcVZ9uHfXoYzZb1tVt4uaXkpj', '2019-08-03 11:40:18', '2019-08-03 11:40:18'),
	(2355, 1, 'OEZ4PMKH0L8YGgzDdUP0nv90Rvw5BIcL', '2019-08-03 11:40:18', '2019-08-03 11:40:18'),
	(2356, 6, 'uYzjeiUFTWSh8JJSak0nIujbaJ7Ush3d', '2019-08-03 11:40:24', '2019-08-03 11:40:24'),
	(2357, 6, 'lu2gf8i2ZjhdfSaAjFRLDzauVt52egAc', '2019-08-03 11:40:35', '2019-08-03 11:40:35'),
	(2358, 6, 'ueapWfUJC0T7qXeh04mM3JGeAYQEJEWF', '2019-08-03 11:40:35', '2019-08-03 11:40:35'),
	(2359, 1, 'UkDl2Xr9Y7coPx9ooZTRYb9HfUWY8TwK', '2019-08-03 11:40:44', '2019-08-03 11:40:44'),
	(2360, 1, 'fHbPnU3T6mS66OwDu9TIdl1ABPUzLiLQ', '2019-08-03 11:40:44', '2019-08-03 11:40:44'),
	(2361, 6, 'LJIeZtCIJJ7lMp6XsZy8n29e8PRaY9oG', '2019-08-03 11:41:33', '2019-08-03 11:41:33'),
	(2362, 6, 'A3knufoPKLFalKMa09G3EEWiGSFnoM0C', '2019-08-03 11:41:57', '2019-08-03 11:41:57'),
	(2363, 5, '6PIY1K9mbVYhOTG9qCxHVo8z6h0aoVYh', '2019-08-03 11:43:00', '2019-08-03 11:43:00'),
	(2364, 1, 'HcWDH0pgXS337qX5Mrs8L0rZIZrYOSaL', '2019-08-03 11:43:04', '2019-08-03 11:43:04'),
	(2365, 1, 'Cvn2nkv5EeNWM6l0iIssjv4JeoB65bDs', '2019-08-03 11:43:04', '2019-08-03 11:43:04'),
	(2366, 1, '7xKl6CHSfIzj7x0Jn9Vct5UGcruhvU4i', '2019-08-03 11:43:28', '2019-08-03 11:43:28'),
	(2367, 1, 'GukcnA23TjyWEWcaxI7PlzvxlWNx2huQ', '2019-08-03 11:43:28', '2019-08-03 11:43:28'),
	(2368, 5, 'qy24NZeDXkuIhuMaXe4iG0kXbIOpD9T5', '2019-08-03 11:43:29', '2019-08-03 11:43:29'),
	(2369, 5, 'u09ydKLh8i2CakA0O6OlBYEqqTi3cLYN', '2019-08-03 11:43:59', '2019-08-03 11:43:59'),
	(2370, 1, 'HyebMGTWulp2WCfK4Wlasm1xX82kKs6w', '2019-08-03 11:44:16', '2019-08-03 11:44:16'),
	(2371, 1, 'Oevosy3qcJPXlZOe3budmAQAhHuwDIXT', '2019-08-03 11:44:19', '2019-08-03 11:44:19'),
	(2372, 1, 'YTXFf9KRXnfxEeQZTdHzJIBMhmoVOUHH', '2019-08-03 11:45:48', '2019-08-03 11:45:48'),
	(2373, 6, 'mSLzt3OTZt8BukRPzQgBt4HQZGVgsqfj', '2019-08-03 11:49:25', '2019-08-03 11:49:25'),
	(2374, 6, '1vKFDdKgSKqC91YbIEUvpKLI2KWcw7EN', '2019-08-03 11:49:37', '2019-08-03 11:49:37'),
	(2375, 6, 'KYY9QaKGK1UWJyzwbLXzvA8EbmfLfc9z', '2019-08-03 11:49:37', '2019-08-03 11:49:37'),
	(2376, 6, 'oU0LKgXJxVbSCZ2qxOETrT3enL7hMQUf', '2019-08-03 11:50:34', '2019-08-03 11:50:34'),
	(2377, 6, 'YRh4Zxp8eT7Gf0zHXhMuVThDeyK559r8', '2019-08-03 11:50:34', '2019-08-03 11:50:34'),
	(2378, 6, 'Xf8tuo59HKA3jyRacyX8VTluMJanMsAu', '2019-08-03 11:50:34', '2019-08-03 11:50:34'),
	(2379, 6, 'qKKnx4wFb9g5H2fh0FPXSg1cH7A5vgnX', '2019-08-03 11:50:34', '2019-08-03 11:50:34'),
	(2380, 6, 'NpnTeCWkm6g0tZIiTKCNFC2GFASUhjFE', '2019-08-03 11:50:35', '2019-08-03 11:50:35'),
	(2381, 6, 'sVHnjGqzk67x1GUGLaplCvc2IktUwUuk', '2019-08-03 11:50:35', '2019-08-03 11:50:35'),
	(2382, 6, 'vANdBDQdeNGruG0EoaTcyiLp0AHFI5oR', '2019-08-03 11:50:35', '2019-08-03 11:50:35'),
	(2383, 6, 'T1jAOl49t95P2htGgAEYLpQrDl8EI1BQ', '2019-08-03 11:50:35', '2019-08-03 11:50:35'),
	(2384, 1, 'Ul5A4NzRKBA1WXXjjrsCnQg3Dz6BIzkA', '2019-08-03 11:50:45', '2019-08-03 11:50:45'),
	(2385, 1, 'KMkPdwSxdKY8Co8EkbEiig90QnhynVsK', '2019-08-03 11:50:45', '2019-08-03 11:50:45'),
	(2386, 6, 'Dgm9p33wEcuW25lePJe5ZViwclhtJIbR', '2019-08-03 11:51:00', '2019-08-03 11:51:00'),
	(2387, 6, 'nDt3pT9tREwS55ElcREO4vYhe2tIvsde', '2019-08-03 11:51:01', '2019-08-03 11:51:01'),
	(2388, 6, 'UXHu5KxvXbJo7w3TU08pLgkUCSXWgOWE', '2019-08-03 11:51:01', '2019-08-03 11:51:01'),
	(2389, 6, 'skSWrn7TC85GqaXawZJ0ZGhWbf6XQvSd', '2019-08-03 11:51:01', '2019-08-03 11:51:01'),
	(2390, 6, 'a4SUKriJl3qeDUos00sz1rLfuJqIYfR4', '2019-08-03 11:51:01', '2019-08-03 11:51:01'),
	(2391, 6, 'gZ4ELLmI6QHPPP34jTn0xlkIcQZRZ5Uu', '2019-08-03 11:51:01', '2019-08-03 11:51:01'),
	(2392, 6, 'E3DvrjnRVoB79P1gvYAtQKgI9Eoa0g6h', '2019-08-03 11:51:01', '2019-08-03 11:51:01'),
	(2393, 6, 'AYc0WlgBJwc5PfSIIZEqGA7YqYz8jHeN', '2019-08-03 11:51:01', '2019-08-03 11:51:01'),
	(2394, 6, 'DbEuwtTUJbgayapzd8P2Fe07Hw87WgGy', '2019-08-03 11:52:42', '2019-08-03 11:52:42'),
	(2395, 6, 'ipLWYp6lmCitmCNklkcnaHAI2N4qQkss', '2019-08-03 11:52:42', '2019-08-03 11:52:42'),
	(2396, 6, 'BRBCKrJf5uCYJ3FsBYV3qYvOGmjpvBvo', '2019-08-03 11:52:42', '2019-08-03 11:52:42'),
	(2397, 6, 'xpz3FH3iFOj54ZAR6u8mYshYNMAnH16t', '2019-08-03 11:52:42', '2019-08-03 11:52:42'),
	(2398, 6, 'YujNN62xozxvo0PmPwIdr9PZYYjCkaIb', '2019-08-03 11:52:42', '2019-08-03 11:52:42'),
	(2399, 6, 'KuIx3EqngH73kJidB8arK9RH733zyh2c', '2019-08-03 11:52:42', '2019-08-03 11:52:42'),
	(2400, 6, 'maozT5uReFKWBm1bnwRngC4MWRb1WHgF', '2019-08-03 11:52:42', '2019-08-03 11:52:42'),
	(2401, 6, 'Vm5ZZnA4USav4Nt5ropbIxLGMtoqMG3m', '2019-08-03 11:52:43', '2019-08-03 11:52:43'),
	(2402, 6, 'DkckIVuKls0aw3X4mpI10AeW25WXNPt4', '2019-08-03 11:52:48', '2019-08-03 11:52:48'),
	(2403, 6, 'FjYlurhwhC2KcsQADCqnGugnf4WF8aIV', '2019-08-03 11:53:14', '2019-08-03 11:53:14'),
	(2404, 6, 'Qzp2Z2MkDoJaK5RDze6sc5RhnNSaNI9l', '2019-08-03 11:53:14', '2019-08-03 11:53:14'),
	(2405, 1, 'cNUbKX3OCE0nQqBrsHotForfrRRLia2F', '2019-08-03 11:54:05', '2019-08-03 11:54:05'),
	(2406, 6, '8dz4fBPeP5EHuVj65C7Jtdg99v5r5RJI', '2019-08-03 11:54:47', '2019-08-03 11:54:47'),
	(2407, 6, 'iWGx4rzdyknBFDUNAp62eewWmNprlNy3', '2019-08-03 11:56:21', '2019-08-03 11:56:21'),
	(2408, 1, 'uul7SgNojImVlg4jowjFq2h9xqc7cdDo', '2019-08-03 11:56:30', '2019-08-03 11:56:30'),
	(2409, 1, 'QxkaKmUzVds6r2xigssFS64g5PunWM8U', '2019-08-03 11:56:45', '2019-08-03 11:56:45'),
	(2410, 6, 'luJr5J97D1g5HuoGCL0TmjTVxjY4zH5K', '2019-08-03 11:58:26', '2019-08-03 11:58:26'),
	(2411, 6, 'QAff4ZgCGhtGxz2YYrwmP8hOk2ui0U3r', '2019-08-03 11:58:26', '2019-08-03 11:58:26'),
	(2412, 6, 'hoUu68YEvsYn0K1lyRJ7m1rm7tra7eKe', '2019-08-03 11:58:27', '2019-08-03 11:58:27'),
	(2413, 6, 'TXgWDm6pqfpm0Tjeg4XJI8jqG03cbvRO', '2019-08-03 11:58:27', '2019-08-03 11:58:27'),
	(2414, 6, 'xTNtDkR3MsvbiecZSMCBnZqwQN2IuPqu', '2019-08-03 11:58:27', '2019-08-03 11:58:27'),
	(2415, 6, 'IcK2p64lYiZXGcG5cbINFoiyFaknvcPN', '2019-08-03 11:58:27', '2019-08-03 11:58:27'),
	(2416, 6, 'DmIzbxroHIj4kfIp7VGILww2Wxhdv7nR', '2019-08-03 11:58:27', '2019-08-03 11:58:27'),
	(2417, 6, 'PXvONnf32TfMs6Jync5842EV3LSKMrpY', '2019-08-03 11:58:27', '2019-08-03 11:58:27'),
	(2418, 6, 'XQGntUG2NiNfHKuQlIHkeudQbWpUOGKy', '2019-08-03 11:59:47', '2019-08-03 11:59:47'),
	(2419, 6, 'JZ8PAcmC0v5CdtK9dHnWxaDZTo2lNx7n', '2019-08-03 11:59:47', '2019-08-03 11:59:47'),
	(2420, 6, 'M5Bv9W2xQSu00YqPzsEx4NnBr945djDC', '2019-08-03 11:59:47', '2019-08-03 11:59:47'),
	(2421, 6, 'vqMuXPYRBXgFedSlsYEWgTYXVE8VaALs', '2019-08-03 11:59:47', '2019-08-03 11:59:47'),
	(2422, 6, 'RHygP71eurWjSSWv8EVnKDLB3SHeeZLi', '2019-08-03 11:59:47', '2019-08-03 11:59:47'),
	(2423, 6, 'OkIAfnzlVNqtQbEEUd3evaEVjy64x3M0', '2019-08-03 11:59:47', '2019-08-03 11:59:47'),
	(2424, 6, 'jXFtgYQHmKeDFgYEbIRuYbw0cAaI3fYu', '2019-08-03 11:59:48', '2019-08-03 11:59:48'),
	(2425, 6, 'GpkPNuth8Vj0PfLM8Kr2UGwe6TFtOeQ4', '2019-08-03 11:59:48', '2019-08-03 11:59:48'),
	(2426, 6, 'WERAa50ZrjLOQBxoqtcl3JED5OgOa5QC', '2019-08-03 12:00:01', '2019-08-03 12:00:01'),
	(2427, 6, 'By8W7Ufw3zsvmfQsOShEpDiROBuUvHhv', '2019-08-03 12:00:01', '2019-08-03 12:00:01'),
	(2428, 6, 'I7VEKc6OY84b17hH0KDzTwJQmqj2XQ3a', '2019-08-03 12:00:01', '2019-08-03 12:00:01'),
	(2429, 6, 'J2j25RSoTBzJwsrc3hwbFUABhqw4mKvh', '2019-08-03 12:00:01', '2019-08-03 12:00:01'),
	(2430, 6, 'qYGd59TLpDUTp2DuwmpPEpjhZWj59bE7', '2019-08-03 12:00:01', '2019-08-03 12:00:01'),
	(2431, 6, '6n0IeulPM3dQXa2Zp88CT2pEFPldQc50', '2019-08-03 12:00:01', '2019-08-03 12:00:01'),
	(2432, 6, 'mGwGC8yc4pBKRtfb3Sh5wBJTTZoTfk7D', '2019-08-03 12:00:02', '2019-08-03 12:00:02'),
	(2433, 6, 'LVXNMKusEJAAwksph8B8GKQmiW5UZRl8', '2019-08-03 12:00:02', '2019-08-03 12:00:02'),
	(2434, 6, '8NxMBQSnF9cJ111jmAh3ECnpFXwzdaTO', '2019-08-03 12:00:45', '2019-08-03 12:00:45'),
	(2435, 6, 'OLoo5nXYifBEdp2O48bZ2JxuEOwXkLF3', '2019-08-03 12:00:45', '2019-08-03 12:00:45'),
	(2436, 6, '88AslkOwIlwbbCPdeEaE2FBeFNsvpe9o', '2019-08-03 12:00:45', '2019-08-03 12:00:45'),
	(2437, 6, 'x46yYMUvMHyjjvaHPxwsRHkciYobMgwg', '2019-08-03 12:00:45', '2019-08-03 12:00:45'),
	(2438, 6, '8LEJSPdKLbHuI4C3uLgYkLoKZDh4zYT3', '2019-08-03 12:00:45', '2019-08-03 12:00:45'),
	(2439, 6, 'M1hBYsDUa7T6eXX9kkvZ26eaG2wgJg70', '2019-08-03 12:00:45', '2019-08-03 12:00:45'),
	(2440, 6, 'E1aTIFhASTSjm1Ii0TzCi38VkWxVFCof', '2019-08-03 12:00:46', '2019-08-03 12:00:46'),
	(2441, 6, 'l21KdVeGErWIwBtGAJiuwYf1gUfC9rAM', '2019-08-03 12:00:46', '2019-08-03 12:00:46'),
	(2442, 6, 'sWdTnO2WZx19O9gnYQIkf7ybBPPRRaIY', '2019-08-03 12:01:06', '2019-08-03 12:01:06'),
	(2443, 1, 'U4Y4PKdF10EzyVa5UVCcyDxa8hiC5NuU', '2019-08-03 12:01:07', '2019-08-03 12:01:07'),
	(2444, 1, 'OEdQyh0B9y2fwrNFXjtbmrdSvrwXWwWM', '2019-08-03 12:01:07', '2019-08-03 12:01:07'),
	(2445, 6, 'mF4GE9FnVPfq9oDzLNQnyQYln1wdWdQT', '2019-08-03 12:01:16', '2019-08-03 12:01:16'),
	(2446, 6, 'CafkiLVg40znaslBrOJJihPYtEZFhXww', '2019-08-03 12:01:16', '2019-08-03 12:01:16'),
	(2447, 1, 'UTRZJnYvBpgcnI5kNgrtfavVjdHUdrXF', '2019-08-03 12:02:38', '2019-08-03 12:02:38'),
	(2448, 1, 'lpEDVvnycWnWeOfYGZoh5kMsdOnJofOm', '2019-08-03 12:03:26', '2019-08-03 12:03:26'),
	(2449, 1, 'ZvN6yIGXgjXHMFzpHFk6cpLj9vcwQqkq', '2019-08-03 12:03:26', '2019-08-03 12:03:26'),
	(2450, 1, 'EWf5JWkDk4fej8zx5SiKrxVmqgqHEOWn', '2019-08-03 12:03:35', '2019-08-03 12:03:35'),
	(2451, 1, 'mtcx4ExMG829WD6Im9uiJUXIMny6pBVd', '2019-08-03 12:03:43', '2019-08-03 12:03:43'),
	(2452, 1, 'f7oyuag24TfAWHzdBbDaTFCndEHzbED7', '2019-08-03 12:06:11', '2019-08-03 12:06:11'),
	(2453, 6, 'pzENJ2MkQHKGlN8PS0qgTy78UTsYIEwc', '2019-08-03 12:06:43', '2019-08-03 12:06:43'),
	(2454, 6, 'mOYIPgY0tq69CWdGdw5JPdwQF08f2ESe', '2019-08-03 12:06:43', '2019-08-03 12:06:43'),
	(2455, 6, 'ITFfEu2uMaYTcNYNdI1jCtrD8Eu5y0R6', '2019-08-03 12:06:43', '2019-08-03 12:06:43'),
	(2456, 6, 'wgxWpfKSlOY1ZRHxjIUMFjjX4WHjx0n0', '2019-08-03 12:06:43', '2019-08-03 12:06:43'),
	(2457, 6, 'Kna2hytf9ZJpmcf87OnmBVTCVX2lZUjL', '2019-08-03 12:07:55', '2019-08-03 12:07:55'),
	(2458, 6, 'R7OKqbNeP0V0cHE9uSA7UhRjvWQ7rYSf', '2019-08-03 12:10:41', '2019-08-03 12:10:41'),
	(2459, 6, 'Maa6uRssZ3axLh08VEx7WbMpcgW9ayE0', '2019-08-03 12:10:46', '2019-08-03 12:10:46'),
	(2460, 6, 'R3Vy1ZKZXlyWRMoPy76m3zGrzXa5ZT8b', '2019-08-03 12:10:46', '2019-08-03 12:10:46'),
	(2461, 6, 'dNn4T8UoPV8oskZaSxc3vrmICA9Uvbvt', '2019-08-03 12:10:46', '2019-08-03 12:10:46'),
	(2462, 6, 'zwl8XborwsTfOyyhes2hW7HYGWCBBdLM', '2019-08-03 12:10:46', '2019-08-03 12:10:46'),
	(2463, 6, '9FUuvSYHqvLL7KJuTQ3QcohTEIoTGUvI', '2019-08-03 12:10:46', '2019-08-03 12:10:46'),
	(2464, 6, 'WXFsWXVi6dqSUWd8oGabZdPpSm2vsGE8', '2019-08-03 12:10:46', '2019-08-03 12:10:46'),
	(2465, 6, 'ToeiayUMJtJSKpru27tTzD2A6GYX9YSH', '2019-08-03 12:10:46', '2019-08-03 12:10:46'),
	(2466, 6, '5EIDC7kXNC1jU78o69rQ7hVZBwXpMFxo', '2019-08-03 12:10:47', '2019-08-03 12:10:47'),
	(2467, 6, 'TcAOEEscY1mxbt2QFC7VBegdEJACogW5', '2019-08-03 12:11:01', '2019-08-03 12:11:01'),
	(2468, 6, 'HgI7Xxeyn9Hi41dxIqxu9RCxoaV0TTRq', '2019-08-03 12:11:01', '2019-08-03 12:11:01'),
	(2469, 6, 'vjlsN74wjizeXRiQjlZCiHkkVFz3Xq8p', '2019-08-03 12:11:01', '2019-08-03 12:11:01'),
	(2470, 6, 'iJps9DMk0NKZxqytrprLvRRwtaSsctCG', '2019-08-03 12:11:01', '2019-08-03 12:11:01'),
	(2471, 6, 'VWokIqqBlEtySajPYYWebHCsLU2dty0C', '2019-08-03 12:11:01', '2019-08-03 12:11:01'),
	(2472, 6, 'n2XhWOj4oLd6Fmai1rfTSqkBNtLNggPj', '2019-08-03 12:11:02', '2019-08-03 12:11:02'),
	(2473, 6, 'LErb7TTOxftYRWEGfcAUF7COI2KSqkPT', '2019-08-03 12:11:02', '2019-08-03 12:11:02'),
	(2474, 6, 'AGiEV09NPQgve2WDRxuVMsdFiML9fhar', '2019-08-03 12:11:02', '2019-08-03 12:11:02'),
	(2475, 6, 'aBJoCvZPX6Ayq4Kp62CyUkL7xdRqepvR', '2019-08-03 12:11:45', '2019-08-03 12:11:45'),
	(2476, 6, 'D70FRTFNV3Exadnnxk2rlWduCN2HX2u5', '2019-08-03 12:11:45', '2019-08-03 12:11:45'),
	(2477, 6, 'jEF2GVHc2AGsM6WhtQl3OMwAdpOjPSYW', '2019-08-03 12:11:45', '2019-08-03 12:11:45'),
	(2478, 6, 'oT9Fb9ZaiqlFd5zfIINWs1iixMoETdld', '2019-08-03 12:11:45', '2019-08-03 12:11:45'),
	(2479, 6, 'JQJqzrdeD6jU7ybXMvp8tBqUqj3nkAJT', '2019-08-03 12:11:45', '2019-08-03 12:11:45'),
	(2480, 6, 'lFcu5Bl5FRh68CwStAbwqS5Awq23Rv1I', '2019-08-03 12:11:46', '2019-08-03 12:11:46'),
	(2481, 6, 'zOdiI3A33TmPEi8UEuh0zkEhY8mpnQtM', '2019-08-03 12:11:46', '2019-08-03 12:11:46'),
	(2482, 6, '05VxTvnIR31Ci4jQYnpG9Ld5tu8LYo4H', '2019-08-03 12:11:46', '2019-08-03 12:11:46'),
	(2483, 1, 'ejRwIkm0VYjvHCb5v5DJHYKUL9QgMSuG', '2019-08-03 12:14:02', '2019-08-03 12:14:02'),
	(2484, 1, 'Lce4bC0F0c3IZ9m4UhUMDJ0F3GiqQUMf', '2019-08-03 12:14:03', '2019-08-03 12:14:03'),
	(2485, 1, 'VaSQvylEZiOF5VjXa6Uc4XrzOssaevqc', '2019-08-03 12:15:23', '2019-08-03 12:15:23'),
	(2486, 1, '0gElyqEmXftm7PUvzcOCiWfMfG3jD9jE', '2019-08-03 12:15:23', '2019-08-03 12:15:23'),
	(2487, 6, 'T3gdX8L0cX0jAGEfm2yA7LqrsynxeD2v', '2019-08-03 12:15:44', '2019-08-03 12:15:44'),
	(2488, 6, 'ol4ibBSt8m3y1rKL2rb6vd9AdZDoSmAF', '2019-08-03 12:15:45', '2019-08-03 12:15:45'),
	(2489, 6, 'kHF1x98425Ax0JrGP2U8tMBkDlcKgCDH', '2019-08-03 12:15:45', '2019-08-03 12:15:45'),
	(2490, 6, 'D5dK3nzy8dZnw0Z7QCSaJnPEpqURdLyy', '2019-08-03 12:15:45', '2019-08-03 12:15:45'),
	(2491, 1, 'kH5qMysd1L1GtnPGj7NP7rlRei99Kd66', '2019-08-03 12:15:53', '2019-08-03 12:15:53'),
	(2492, 1, 'oYs3FSDcWlwWQ7fjczSjiS8CT59O9hMX', '2019-08-03 12:15:53', '2019-08-03 12:15:53'),
	(2493, 6, 'B78DyjsYsn9QXKQacfylslbm9LkCN4mN', '2019-08-03 12:16:03', '2019-08-03 12:16:03'),
	(2494, 6, 'Acb7sFH0xiX9ak9vw5Af1dH0GECQVFAm', '2019-08-03 12:16:03', '2019-08-03 12:16:03'),
	(2495, 6, 'qzQrflACNczcLKzruAxoPFnvMoEu6m8j', '2019-08-03 12:16:03', '2019-08-03 12:16:03'),
	(2496, 6, 'L5Xa2WQTyDFXBFE4BAnR7Af8VI7hb1zx', '2019-08-03 12:16:04', '2019-08-03 12:16:04'),
	(2497, 1, 'Xb3aeWYma97nckgNg2UsReA7IBRm9Mqy', '2019-08-03 12:16:16', '2019-08-03 12:16:16'),
	(2498, 1, 'HJq9MeM4qJHqncHeVjbwHOxtnnKdHdQ2', '2019-08-03 12:16:16', '2019-08-03 12:16:16'),
	(2499, 1, 'namvTFnNeskOfQHf8Z5HYdb1TovrJ83K', '2019-08-03 12:16:26', '2019-08-03 12:16:26'),
	(2500, 1, 'lsgCa7ISdDCWPLRtIMHCpKFDk1pcmZNL', '2019-08-03 12:16:27', '2019-08-03 12:16:27'),
	(2501, 6, 'JjJIqDxeIJJK60qhOzefQ5IQkHBLSddj', '2019-08-03 12:16:51', '2019-08-03 12:16:51'),
	(2502, 6, 'UFPoLOQeBftsdfY6Wr91oPOq3OaxQeSU', '2019-08-03 12:16:51', '2019-08-03 12:16:51'),
	(2503, 6, 'g0s0JrmPaZlsKukwgml8DkqThEwG5lDk', '2019-08-03 12:16:52', '2019-08-03 12:16:52'),
	(2504, 6, '9xirpLkJOJa44ObU1aYvrOUe52IqIa8D', '2019-08-03 12:16:52', '2019-08-03 12:16:52'),
	(2505, 1, 'Jc0LQpymRqvuvTyYQip80xx5u9hzCZRB', '2019-08-03 12:16:58', '2019-08-03 12:16:58'),
	(2506, 1, 'szzk7a5IVOnRRkhqo9hAeuLSbtL2F3qb', '2019-08-03 12:17:04', '2019-08-03 12:17:04'),
	(2507, 1, 'Tf7HJFjZ7UPrxvKYOynSQcrrGfj75T1E', '2019-08-03 12:17:05', '2019-08-03 12:17:05'),
	(2508, 6, '99YJjfiWbB100VDFxUlzi6QphhMYRnGt', '2019-08-03 12:18:30', '2019-08-03 12:18:30'),
	(2509, 6, '4I3BvPhu34HmCLhj2SOfmx3d31uQAub0', '2019-08-03 12:18:30', '2019-08-03 12:18:30'),
	(2510, 6, 'zbsCP2KjzXdI1O0wn7uoMX6Z8Dwgac9E', '2019-08-03 12:20:41', '2019-08-03 12:20:41'),
	(2511, 6, 'vNX8EVXil3cHkh42f38wOmOMCX1ovkrT', '2019-08-03 12:20:41', '2019-08-03 12:20:41'),
	(2512, 6, 'rpuTvKgDijhGxdhSwl0oyexbGgdPzO0x', '2019-08-03 12:20:41', '2019-08-03 12:20:41'),
	(2513, 6, 'k6vDoCiSMqIT40W6TLgHkxlEDDfvbWwR', '2019-08-03 12:20:41', '2019-08-03 12:20:41'),
	(2514, 6, 'NPwz7D5j6vkIe93U5gPyRMJpzWVSkCeF', '2019-08-03 12:20:44', '2019-08-03 12:20:44'),
	(2515, 6, 'VJvU5gc3Mo8RUZVrKVUZCb0OFAh59xlD', '2019-08-03 12:20:44', '2019-08-03 12:20:44'),
	(2516, 6, 'X3D88dpRJNkpFsmY5uXcjEIE70Dh6KDA', '2019-08-03 12:20:44', '2019-08-03 12:20:44'),
	(2517, 6, 'viAmaeiQTF7Ji4WiIOQ7Jp6Qqvh2pJ4f', '2019-08-03 12:20:44', '2019-08-03 12:20:44'),
	(2518, 6, 'zXmz4OLikvR0mk38FyupfRck0PjINdGv', '2019-08-03 12:20:51', '2019-08-03 12:20:51'),
	(2519, 6, 'mGNOlozJVI7puPQOZS8Ei1FSQOpeblgB', '2019-08-03 12:20:51', '2019-08-03 12:20:51'),
	(2520, 6, 'lAxhGwy4H2iaktp60YLo7DFjaehGxQvN', '2019-08-03 12:20:51', '2019-08-03 12:20:51'),
	(2521, 6, 'HzoRuks87ThgHe3umKDeXotSMSNvqK6J', '2019-08-03 12:20:52', '2019-08-03 12:20:52'),
	(2522, 6, 'W6DeiPaSepcbGN7fQC6FBsZPaHGizFJX', '2019-08-03 12:20:56', '2019-08-03 12:20:56'),
	(2523, 6, 'dpcAUqP6DN2VGDbiGr069LBOwUfvhu73', '2019-08-03 12:20:56', '2019-08-03 12:20:56'),
	(2524, 6, 'WtzwmuQ7PWCZlwYoZioVEQdWIt0pOom9', '2019-08-03 12:20:57', '2019-08-03 12:20:57'),
	(2525, 6, 'fHdzDneFCEyfU4kGuotl84WMjcveLZtE', '2019-08-03 12:20:57', '2019-08-03 12:20:57'),
	(2526, 6, 'Xsxy85PPtq39bObfMa3NWDXFiGokfLgO', '2019-08-03 12:21:22', '2019-08-03 12:21:22'),
	(2527, 6, 'oZSejSk1ms3J7OBLu7D7GolJfzIWqfYq', '2019-08-03 12:21:22', '2019-08-03 12:21:22'),
	(2528, 6, 'hGUFDM8mqtilxtCbt1Fl20pfXMoRQxdW', '2019-08-03 12:21:23', '2019-08-03 12:21:23'),
	(2529, 6, 'gfcS8Sk4LWEwTaSuYSPEcitPORKXQmxZ', '2019-08-03 12:21:23', '2019-08-03 12:21:23'),
	(2530, 6, 'IWGXgj3kaH8Z6iOa2yxpU0gKGRuaKxo2', '2019-08-03 12:21:41', '2019-08-03 12:21:41'),
	(2531, 6, 'KnEj58BBVosBqoMm0EDdkaBChi1dWIzs', '2019-08-03 12:21:41', '2019-08-03 12:21:41'),
	(2532, 6, '23Ae0DJdUS4ONxQ6uVSAEqcR4CqrctVk', '2019-08-03 12:21:41', '2019-08-03 12:21:41'),
	(2533, 6, 'IwIARuNLbLmtcoqaDaNVO2avwXAdrbuM', '2019-08-03 12:21:41', '2019-08-03 12:21:41'),
	(2534, 6, 'uUrCZZVBpg4ndG7muDjROBQMbRobbO7t', '2019-08-03 12:21:58', '2019-08-03 12:21:58'),
	(2535, 6, '7z6cxSh0s8vyadRxjpIyBVt8OcRE70cc', '2019-08-03 12:21:58', '2019-08-03 12:21:58'),
	(2536, 6, 'UGoNTevBdrfpBoHoIhfIgB91cfphW7Zh', '2019-08-03 12:21:58', '2019-08-03 12:21:58'),
	(2537, 6, 'Y8N1g1nrEb3Uq16aWuKovmcML400lTGV', '2019-08-03 12:21:58', '2019-08-03 12:21:58'),
	(2538, 6, 'NmGDnKzZ1fUA3yzdBFJVgRIPyhcXOcr0', '2019-08-03 12:22:28', '2019-08-03 12:22:28'),
	(2539, 6, 'FNYR4Y89cewAtHa7NVkk79naLCN5olrX', '2019-08-03 12:22:28', '2019-08-03 12:22:28'),
	(2540, 6, 'xBKoXfRhQLI31PYT0arjlSgcaF7y240k', '2019-08-03 12:22:28', '2019-08-03 12:22:28'),
	(2541, 6, 'Wr9lWCYaBdiU5EFVRFu9XY1VjCBRbMxX', '2019-08-03 12:22:29', '2019-08-03 12:22:29'),
	(2542, 6, '6d2jSjfgnDxBr4zMCoXwZ9x0Gcr1vQfi', '2019-08-03 12:23:54', '2019-08-03 12:23:54'),
	(2543, 6, 'yBsthxzF54khUW54cz7fkTQpVBynAVma', '2019-08-03 12:23:55', '2019-08-03 12:23:55'),
	(2544, 6, 'VHhNxCe9aWFbyN5GKt547miF1gkcE2ms', '2019-08-03 12:24:49', '2019-08-03 12:24:49'),
	(2545, 6, 'b4MdHUHpu4hreM5OC8nZ1KmrgXfH0IW2', '2019-08-03 12:27:32', '2019-08-03 12:27:32'),
	(2546, 5, 'k536RtGzUyUlt5oUAdh9SuaYYOdkmxnY', '2019-08-03 12:28:26', '2019-08-03 12:28:26'),
	(2547, 5, 's0uID02r3MM6UjBjrmQpLU4V5iHJZPR7', '2019-08-03 12:29:04', '2019-08-03 12:29:04'),
	(2548, 5, 'cnH27UIePvf0PzuFa8r7mWOZryD2qN74', '2019-08-03 12:29:37', '2019-08-03 12:29:37'),
	(2549, 5, 'XO30k07KgEzoJylkA2AORbi6arIaf6To', '2019-08-03 12:29:37', '2019-08-03 12:29:37'),
	(2550, 5, '4qtfAMAf2maEgs5AUzFybhT4lFOuXLsv', '2019-08-03 12:29:38', '2019-08-03 12:29:38'),
	(2551, 5, '7uxfNghjnobG94sdVvTkj4o8z527zXnX', '2019-08-03 12:29:38', '2019-08-03 12:29:38'),
	(2552, 5, 'YDyexdD3EqcA2SuGU0Pe2RF0mH0AtJ20', '2019-08-03 12:29:38', '2019-08-03 12:29:38'),
	(2553, 5, 'aBUiPlFuwSUW49sV0iC6BBXQonWQsGdm', '2019-08-03 12:29:38', '2019-08-03 12:29:38'),
	(2554, 5, 'WXucSt2oseXWusVemu2o5xnfPSUiWJX5', '2019-08-03 12:29:38', '2019-08-03 12:29:38'),
	(2555, 5, 'J3ijEJca5Wmn5l0UfCoSxD4WrnBO12a0', '2019-08-03 12:29:39', '2019-08-03 12:29:39'),
	(2556, 6, 'mYCcik3huR44UNetuGec9VaaYCfEK8DB', '2019-08-03 12:29:49', '2019-08-03 12:29:49'),
	(2557, 6, 'ORvNQk9b0oFKAvTw9Gj2eQ0ySuYPBPVS', '2019-08-03 12:29:49', '2019-08-03 12:29:49'),
	(2558, 6, 'Vy67lCr8gMrcaeAYsdyStDdfikQKJD24', '2019-08-03 12:29:49', '2019-08-03 12:29:49'),
	(2559, 6, 'SkkWXMCxTXre7NljhCghqcPkEL258NcU', '2019-08-03 12:29:50', '2019-08-03 12:29:50'),
	(2560, 6, '3rlZ8VgOWw6v04t418e0lTt8QlT9Mr8x', '2019-08-03 12:29:50', '2019-08-03 12:29:50'),
	(2561, 6, 'BeMQy80zxTdI0djVLVZa0UXq4lM6REwj', '2019-08-03 12:29:50', '2019-08-03 12:29:50'),
	(2562, 6, 'uwygV3mpootL5vx4AgKdBiRZJaidudqp', '2019-08-03 12:29:50', '2019-08-03 12:29:50'),
	(2563, 6, 'UnoUwO7NuKxvXMsB52TWyH60XsOFg2UA', '2019-08-03 12:29:50', '2019-08-03 12:29:50'),
	(2564, 5, 'Tkk0VAFRAolzSXWsEJaM8SeBAkgWralm', '2019-08-03 12:31:18', '2019-08-03 12:31:18'),
	(2565, 5, 'BepyQ2vIMgFYAsKYlibOnGIaWADrNmDi', '2019-08-03 12:31:18', '2019-08-03 12:31:18'),
	(2566, 5, 'dKvqjOpeZlj8pfUTzYZ8Z2K0axYwtH1B', '2019-08-03 12:31:18', '2019-08-03 12:31:18'),
	(2567, 5, '9gb0ueIP00eqUjsZnrORl7AOgwASBuN3', '2019-08-03 12:31:19', '2019-08-03 12:31:19'),
	(2568, 5, 'qbvK5bXFOIuxV2OVYV2LRX4Bph3yGbzi', '2019-08-03 12:31:20', '2019-08-03 12:31:20'),
	(2569, 5, 'pdzNvF5ZH8LpGqHqGSIppdkDecmHakeM', '2019-08-03 12:31:20', '2019-08-03 12:31:20'),
	(2570, 5, 'VUBk8daObeiexZyPbUoFXCTzJqjTzYRQ', '2019-08-03 12:31:20', '2019-08-03 12:31:20'),
	(2571, 5, 'A2xVLU1C0OZASIQHNLsUtuSgDNxKO8R8', '2019-08-03 12:31:20', '2019-08-03 12:31:20'),
	(2572, 5, 'e4qbJCrXkF5pS8QQy4BPZzTWy6g8qLyz', '2019-08-03 12:31:20', '2019-08-03 12:31:20'),
	(2573, 5, 'hx5eVlkU5Bktuk5DodGbcUdVQyl0l0nF', '2019-08-03 12:31:20', '2019-08-03 12:31:20'),
	(2574, 5, 'GeKjSyz9IAtHhK00ij01SJMVDdpymXY8', '2019-08-03 12:31:20', '2019-08-03 12:31:20'),
	(2575, 5, 'ZKWHqsYgjbvuFCnkU7kU1HrW8zVO12Mi', '2019-08-03 12:31:20', '2019-08-03 12:31:20'),
	(2576, 5, 'TMX359IrzmriPTupERrUkVd7dWiR9jOr', '2019-08-03 12:31:20', '2019-08-03 12:31:20'),
	(2577, 5, 'tLuuJ91lw9rWTS5SGTQxACptEaK2ItsG', '2019-08-03 12:31:20', '2019-08-03 12:31:20'),
	(2578, 5, 'TSLj6jYp3e8YhXX4YD34x5q9FmiLKYuW', '2019-08-03 12:31:20', '2019-08-03 12:31:20'),
	(2579, 5, 'WnxNjnyWoTEMNk6ruMZ9cW9KSIFcEl0F', '2019-08-03 12:31:20', '2019-08-03 12:31:20'),
	(2580, 5, 'PrSFHTbWdWSx44paE0XAm0mIM9zMKujS', '2019-08-03 12:31:20', '2019-08-03 12:31:20'),
	(2581, 5, 'Di8QQZwMRxhYQJUNcWBzFfm31XKNsLwZ', '2019-08-03 12:31:20', '2019-08-03 12:31:20'),
	(2582, 5, 'LYgP4w0hVgzEieruMBtqUr7YMWTmBa8e', '2019-08-03 12:31:21', '2019-08-03 12:31:21'),
	(2583, 5, '3noAGq7Ym96qNptZbe3Dua6DOW5zMOwL', '2019-08-03 12:31:21', '2019-08-03 12:31:21'),
	(2584, 5, 'Xur9X27J8fdmYgSMDHG4wxAnP7thfdpm', '2019-08-03 12:31:21', '2019-08-03 12:31:21'),
	(2585, 5, '7ttErf0Tcwf8kvB143KecDtKKAqX5c1z', '2019-08-03 12:31:21', '2019-08-03 12:31:21'),
	(2586, 5, '3uPI5TG0y8WeH4zJHneeCPEyX4ALFrnC', '2019-08-03 12:31:21', '2019-08-03 12:31:21'),
	(2587, 5, '7LFM4Kd6T0CrmtHFeek7bEYm6r5uT8JH', '2019-08-03 12:31:22', '2019-08-03 12:31:22'),
	(2588, 5, 'oFCompomnXwkFhEQJGCbZPOqYdAzBnLO', '2019-08-03 12:31:22', '2019-08-03 12:31:22'),
	(2589, 5, 'qn3DzVPJEwYI9ajTMxIOl57UOG6Uu8tO', '2019-08-03 12:31:22', '2019-08-03 12:31:22'),
	(2590, 5, 'qxdboRt9b2qzWpbC9LoT8Tj0M9BowKQb', '2019-08-03 12:31:22', '2019-08-03 12:31:22'),
	(2591, 5, 'lBN3JVvBFc7Z6eLOTK8yFG1aab9yDuE8', '2019-08-03 12:31:23', '2019-08-03 12:31:23'),
	(2592, 5, '3NTCROuRmCcxYBEzmjFW9bAzXerlAdk1', '2019-08-03 12:31:23', '2019-08-03 12:31:23'),
	(2593, 5, 'yJUEdaxsOVhaLUbNfcNsfhXa9jiYgyRK', '2019-08-03 12:31:23', '2019-08-03 12:31:23'),
	(2594, 5, 'Y0dRBJZoP62qwoem0tKrNbEqWMGgKSg6', '2019-08-03 12:31:23', '2019-08-03 12:31:23'),
	(2595, 5, 'ha8YvX5cyH9ZUGDBacDw56JjrC1Palu7', '2019-08-03 12:31:24', '2019-08-03 12:31:24'),
	(2596, 6, 'uk3jB0YmGGtmVWkbEZEwsfrp76J5eU1Z', '2019-08-03 12:31:39', '2019-08-03 12:31:39'),
	(2597, 5, 'woaEf1iFVPCdj6n4otdK8BrV1tKh5Nq4', '2019-08-03 12:32:09', '2019-08-03 12:32:09'),
	(2598, 5, 'D8o9pCHRH1H6pI8UwnE4Y9Ezqv8cbYIW', '2019-08-03 12:32:11', '2019-08-03 12:32:11'),
	(2599, 6, 'sbUaKhkzKdl6dG3bvUqG9YXA2SNV1YlQ', '2019-08-03 12:32:40', '2019-08-03 12:32:40'),
	(2600, 5, 'nCy518aiNO34JECqgm7RllIuCvUwDnUZ', '2019-08-03 12:34:29', '2019-08-03 12:34:29'),
	(2601, 5, 'A4SMTIygdd4J1yJdkCtCU9t3xRu6qgMX', '2019-08-03 12:34:30', '2019-08-03 12:34:30'),
	(2602, 5, 'EWGma8d0gmBc31XpdhGmD7KiyAFUMKeS', '2019-08-03 12:34:49', '2019-08-03 12:34:49'),
	(2603, 5, 'q4pwvNoqIz88eel4VFk5btNiwcE8PAMl', '2019-08-03 12:34:49', '2019-08-03 12:34:49'),
	(2604, 5, 'a5gm7ID20yRclIcxICE3AcGMm32Q0V7d', '2019-08-03 12:34:49', '2019-08-03 12:34:49'),
	(2605, 5, '28xFEe0Fr9Lqoa5FrYydZfHh2eUYo2EH', '2019-08-03 12:34:49', '2019-08-03 12:34:49'),
	(2606, 5, 'QGKA95jGuu91aDocFZ8fUGPD6i9QWVGD', '2019-08-03 12:34:50', '2019-08-03 12:34:50'),
	(2607, 5, 'Skuw9J2xcX4ZTOCi3eZCOjNT9k3h6HCW', '2019-08-03 12:34:50', '2019-08-03 12:34:50'),
	(2608, 5, '6PWAy5YWVa1Dru1jB6pR3aHFJRmW5Oi2', '2019-08-03 12:34:50', '2019-08-03 12:34:50'),
	(2609, 5, '1PnM2tXz0ag44jJGnHWAEBjngSyHWDy3', '2019-08-03 12:34:50', '2019-08-03 12:34:50'),
	(2610, 5, 'BIyimdpOAyuZuVk5apZUHbVGaQejTVGt', '2019-08-03 12:35:33', '2019-08-03 12:35:33'),
	(2611, 5, 'nnPtmEylxO3hWsqKPKuw7RjAhjPjcuAH', '2019-08-03 12:35:39', '2019-08-03 12:35:39'),
	(2612, 5, 'pZBcCJdfiZjkhoE6EfgaoB4Nr40Spz9g', '2019-08-03 12:35:53', '2019-08-03 12:35:53'),
	(2613, 5, '5Ncfoj2a4k8xQRgzikeUzFFppISaQkeA', '2019-08-03 12:35:53', '2019-08-03 12:35:53'),
	(2614, 5, 'KUmR949keVZuxdzmxdphnOstX4ji8KP4', '2019-08-03 12:35:53', '2019-08-03 12:35:53'),
	(2615, 5, 'O7pyfIDg1rUQ7iBotWpcxnCd18HkRlRF', '2019-08-03 12:35:53', '2019-08-03 12:35:53'),
	(2616, 5, 'pm0uZe3qenfbEpIHLXMUeBPR0iiZbRjJ', '2019-08-03 12:35:53', '2019-08-03 12:35:53'),
	(2617, 5, '3LdUCzhzd3iHanR32SUppZU1AHwFAGTQ', '2019-08-03 12:35:54', '2019-08-03 12:35:54'),
	(2618, 5, 'vW9qNlyTvQk3WpNvxcHWhkLNf58pBtyo', '2019-08-03 12:35:54', '2019-08-03 12:35:54'),
	(2619, 5, 'H48g8RJ5kGByFNpQkOSQ37pF3HpGBLY0', '2019-08-03 12:35:54', '2019-08-03 12:35:54'),
	(2620, 1, 'FTQgGnA75x8lmHlASg4jJssyIoIy4uqN', '2019-08-03 12:36:35', '2019-08-03 12:36:35'),
	(2621, 1, 'MycHwFLRkDQXCdlChjEYk2EkQ8p3xY0S', '2019-08-03 12:36:35', '2019-08-03 12:36:35'),
	(2622, 5, 'VlFoKfKalrTKjpULJXtiOB7PYD1L6QIG', '2019-08-03 12:36:48', '2019-08-03 12:36:48'),
	(2623, 5, 'l8nmEWdtrTRBDSAmQ5TzjRXA29dWXw3f', '2019-08-03 12:36:49', '2019-08-03 12:36:49'),
	(2624, 5, 'PcBWBav0rKMC7Ez9o8sqYkmaiNGNoLVY', '2019-08-03 12:36:49', '2019-08-03 12:36:49'),
	(2625, 5, 'q9no2PAnbhB3XwoDiAsgUO3skjCVpL3J', '2019-08-03 12:36:49', '2019-08-03 12:36:49'),
	(2626, 5, 'WWtzWT1HiUmGJ0jcI6TeBB9KhHlLerS5', '2019-08-03 12:36:49', '2019-08-03 12:36:49'),
	(2627, 5, 'C3QGfYmvfRIg1cLJVtA20N8FlavnTgN2', '2019-08-03 12:36:49', '2019-08-03 12:36:49'),
	(2628, 5, 'JqOD3kBrEi7JG8FzOytR6szR1W8BvQzZ', '2019-08-03 12:36:49', '2019-08-03 12:36:49'),
	(2629, 5, 'f9k0v9uW2LxHQFU0rvGxVmOmSUKbdj3V', '2019-08-03 12:36:49', '2019-08-03 12:36:49'),
	(2630, 5, 'WKr0A8Jgc01vrI4QnMEUGEhZ8wk3xfTu', '2019-08-03 12:36:50', '2019-08-03 12:36:50'),
	(2631, 5, 'BNmDqAzCZsdiH3EHtnSTVIDoLPR1Ea6Q', '2019-08-03 12:36:50', '2019-08-03 12:36:50'),
	(2632, 5, 'xRvTdBwcWjMK7REMxhCAWk7UzT9sz56E', '2019-08-03 12:36:50', '2019-08-03 12:36:50'),
	(2633, 5, 'u7jLIWhc8DvN8ZilJpulK2FCCOevkjFC', '2019-08-03 12:36:50', '2019-08-03 12:36:50'),
	(2634, 5, '00yZANvXwcABtGvVvmhYqoLNqpGw4KoA', '2019-08-03 12:36:50', '2019-08-03 12:36:50'),
	(2635, 5, 'OpciaswWOsLvikAsO0AoGxonZ9P7UwzW', '2019-08-03 12:36:50', '2019-08-03 12:36:50'),
	(2636, 5, 'PEROB0KAMGE3T0hSvCETjmPiQ6o86llD', '2019-08-03 12:36:50', '2019-08-03 12:36:50'),
	(2637, 5, 'BJwDJiFhgtN59AC5ZLnBqCvYjRliCEYP', '2019-08-03 12:36:50', '2019-08-03 12:36:50'),
	(2638, 5, 'wn6vwdGQ98awUiXMuDqu8G7U8nBWzVfw', '2019-08-03 12:36:51', '2019-08-03 12:36:51'),
	(2639, 5, '2i2oC7pxT7Nj3p0mDyldlFxegCrypY1h', '2019-08-03 12:36:51', '2019-08-03 12:36:51'),
	(2640, 5, '6TVXnY8C1UXVWWNcQ0eqdCvJxndTlmMp', '2019-08-03 12:36:51', '2019-08-03 12:36:51'),
	(2641, 5, 'FyephldHVH7KPfeqSBkBcPNm4y3O7OKv', '2019-08-03 12:36:52', '2019-08-03 12:36:52'),
	(2642, 5, 'HaH3NqquAPtrY4CawS0d4N5bR9cFUPnc', '2019-08-03 12:36:52', '2019-08-03 12:36:52'),
	(2643, 5, 'aCGn7taf3eTpFlc9INvxXILOixcxq2mb', '2019-08-03 12:36:52', '2019-08-03 12:36:52'),
	(2644, 5, 'FYVLUYRa52QmlEFhSdDTJsBGJZgMrxMF', '2019-08-03 12:36:52', '2019-08-03 12:36:52'),
	(2645, 5, 'RAUE5k2E5fkunHjlIz8rzEjlpXsQXleV', '2019-08-03 12:36:53', '2019-08-03 12:36:53'),
	(2646, 5, 'Zzp3W4Tr257Ko6wAL7xK02dRsdxifVVN', '2019-08-03 12:38:22', '2019-08-03 12:38:22'),
	(2647, 5, 'GMuzV9kqdZ5E6hb38ll1ZG5LNKxeIWc0', '2019-08-03 12:38:22', '2019-08-03 12:38:22'),
	(2648, 5, 'lyujlSsRjPLcQoXKTHrmZSOISzFrZxxD', '2019-08-03 12:38:22', '2019-08-03 12:38:22'),
	(2649, 5, 'wR0PgAZP5h5yR1jjCcHMuUZONH2TeADk', '2019-08-03 12:38:22', '2019-08-03 12:38:22'),
	(2650, 5, 'TJLsMH30Cyo3AdRgdPU0rCGJfS1OpJ0Z', '2019-08-03 12:38:23', '2019-08-03 12:38:23'),
	(2651, 5, 'ebZ9ljeFNt2sn7zfmLeetmIsyQf0YslQ', '2019-08-03 12:38:23', '2019-08-03 12:38:23'),
	(2652, 5, '9vbZGUFZkNidKQHPQurwgruvF3I5EY15', '2019-08-03 12:38:23', '2019-08-03 12:38:23'),
	(2653, 5, 'sYm6HQZiDIiq7gdpqRMzyYMitBdrtJCR', '2019-08-03 12:38:23', '2019-08-03 12:38:23'),
	(2654, 5, 'blAmZLibIgQriBFmAmpTDH2ZbBFM1RZ0', '2019-08-03 12:38:23', '2019-08-03 12:38:23'),
	(2655, 5, 'rBFQPcLcz9luucY2K0d24fZLXXvfMtAb', '2019-08-03 12:38:23', '2019-08-03 12:38:23'),
	(2656, 5, 'vQet8rYvyY4Tw46SpWKmoPWgBfZloWZZ', '2019-08-03 12:38:23', '2019-08-03 12:38:23'),
	(2657, 5, 'j2U7CNURDDQgquGFd2NIgf2tthLqjAz8', '2019-08-03 12:38:23', '2019-08-03 12:38:23'),
	(2658, 5, 'cD4WXt8oPda4Vg8grnYBGS20b6KjgEwJ', '2019-08-03 12:38:23', '2019-08-03 12:38:23'),
	(2659, 5, 'nXxX9poNfrwxANTE0kNKeRN4unm353nb', '2019-08-03 12:38:23', '2019-08-03 12:38:23'),
	(2660, 5, '2CnenkUNANylQ56PQBmIYZija87lhsTY', '2019-08-03 12:38:23', '2019-08-03 12:38:23'),
	(2661, 5, 'omYIAGjhJLCTugNoeZMl4z5YSsdvZtQe', '2019-08-03 12:38:24', '2019-08-03 12:38:24'),
	(2662, 5, 'VK7DjZ7Nac8dkfZs3Hc73v2miGfqpR4U', '2019-08-03 12:38:24', '2019-08-03 12:38:24'),
	(2663, 5, '95rOyAve9WyCK6TsNLrhSS6iMdUenhMk', '2019-08-03 12:38:24', '2019-08-03 12:38:24'),
	(2664, 5, '02m8eEXb1xj9XKAaclC8AppjoHW17gQK', '2019-08-03 12:38:24', '2019-08-03 12:38:24'),
	(2665, 5, 'gcsDRuKbrvyRD0TGjSDX7TX0BKEYoNZw', '2019-08-03 12:38:25', '2019-08-03 12:38:25'),
	(2666, 5, '3NihmAuvLrpYNcZOx9gCsb6quQ8Om2KW', '2019-08-03 12:38:25', '2019-08-03 12:38:25'),
	(2667, 5, 'CTzS1csxOMk3sGTk5q08TNbazDXKs0XE', '2019-08-03 12:38:25', '2019-08-03 12:38:25'),
	(2668, 5, 'yxvUPp994YqnVxTiB24LSM8xuYt9IZG9', '2019-08-03 12:38:25', '2019-08-03 12:38:25'),
	(2669, 5, 'hOTQauIapsG2DgvY3xNmM2VfEKdcVUL7', '2019-08-03 12:38:26', '2019-08-03 12:38:26'),
	(2670, 5, 'iyh6dlme6oE43IKIaSQMuFTveqoUZyMu', '2019-08-03 12:39:11', '2019-08-03 12:39:11'),
	(2671, 5, 'ZEywiVosG3gVh0CXzr4ME1bCs3I2mMGO', '2019-08-03 12:39:14', '2019-08-03 12:39:14'),
	(2672, 5, 'DkVQ0f1sAj19r7ZzDIs2s37K3LDNDAMx', '2019-08-03 12:39:52', '2019-08-03 12:39:52'),
	(2673, 5, 'knUWZcDel8GtsafhuJSizgLA2LYT5UA8', '2019-08-03 12:39:52', '2019-08-03 12:39:52'),
	(2674, 5, 'Q8adperYD5CUDCZM0KwCEfou4W9EFKjp', '2019-08-03 12:39:52', '2019-08-03 12:39:52'),
	(2675, 5, 'selNSj72ueHC5ysBrngAJnFuuTYBrlXA', '2019-08-03 12:39:52', '2019-08-03 12:39:52'),
	(2676, 5, 'ZKDdSqMuqAba1ptGHzOzZe08a5Djdboj', '2019-08-03 12:39:52', '2019-08-03 12:39:52'),
	(2677, 5, 'e06oUQzLcAW6CfWd8fkWPjH9JddxhDEQ', '2019-08-03 12:39:52', '2019-08-03 12:39:52'),
	(2678, 5, 'BeC8Rns7A311IaL8BEO585rVADJkVKO6', '2019-08-03 12:39:53', '2019-08-03 12:39:53'),
	(2679, 5, 'vEzT1siIXtQJoXC6beg0SDa34isgzeTV', '2019-08-03 12:39:53', '2019-08-03 12:39:53'),
	(2680, 6, 'wOm4nmRolGSXcpQGAI8W3xs0mdcLfIIj', '2019-08-03 12:40:34', '2019-08-03 12:40:34'),
	(2681, 1, 'zhJZcyxJMOWH4uwebx9eBT5uTWvUTSsN', '2019-08-03 12:51:10', '2019-08-03 12:51:10'),
	(2682, 1, '8LLonqpSlsvyt2YiXpwwNpWopOBQVLMv', '2019-08-03 12:51:10', '2019-08-03 12:51:10'),
	(2683, 1, 'jRPWt73MS91PX1dcOJI6iL4uqAtIQZio', '2019-08-03 12:51:20', '2019-08-03 12:51:20'),
	(2684, 1, 'xOGSDvTZx9jE28aTyMwCVhYrlbZeaypZ', '2019-08-03 12:51:20', '2019-08-03 12:51:20'),
	(2685, 1, 'WjdUntd5T9sM7jHdq8z1vr1O1IRluIVA', '2019-08-03 12:51:25', '2019-08-03 12:51:25'),
	(2686, 1, 'QQ2M2AAueoQwmlFwzHurS8EYQ66lwQ5T', '2019-08-03 12:51:25', '2019-08-03 12:51:25'),
	(2687, 1, '8pTo4dvEEhtpVnffrG5mXtE1AZqhbVo8', '2019-08-03 12:51:31', '2019-08-03 12:51:31'),
	(2688, 1, 'YvBdCD5S7CfAxJiarVKmJE1GJuPeRxx7', '2019-08-03 12:51:31', '2019-08-03 12:51:31'),
	(2689, 1, 'XQB4AISRJtk8r0V5Ljlu7a3QumU2dhtF', '2019-08-03 12:54:55', '2019-08-03 12:54:55'),
	(2690, 1, 'WfvM2aSovNMLN9Ijby8vr6sCNUB1XiZb', '2019-08-03 12:54:56', '2019-08-03 12:54:56'),
	(2691, 1, 'x9UMCU2WDVPy30T5xcdhaJVDUWVsquq8', '2019-08-05 09:50:17', '2019-08-05 09:50:17'),
	(2692, 1, 'l7pwM0vlj1xTDbOnPPEGiQnFKPxQ0MM7', '2019-08-05 09:51:28', '2019-08-05 09:51:28'),
	(2693, 1, 'fnAKbJIe6KbGj5ovM5h6yg9dkExTZAfp', '2019-08-05 09:51:35', '2019-08-05 09:51:35'),
	(2694, 1, 'pVVe1lpAl06TWpM8Ztu5fv4UeojEfcXl', '2019-08-05 09:51:35', '2019-08-05 09:51:35'),
	(2695, 1, 'irXEUB7k6Lcjb5Vqc4kMNnTxhiRf5MjL', '2019-08-05 09:51:38', '2019-08-05 09:51:38'),
	(2696, 1, '08bGMj8GYWaGYJcY7vviIWPOtXIfCYuM', '2019-08-05 09:51:38', '2019-08-05 09:51:38'),
	(2697, 1, 'fOB6xI99X6AT9lCZ04DZCc77ImvMjVVt', '2019-08-05 09:52:54', '2019-08-05 09:52:54'),
	(2698, 1, '1cmUn10k4X0boYFmDrnI4Hg7UGocawCS', '2019-08-05 09:53:32', '2019-08-05 09:53:32'),
	(2699, 1, 'Ws2TShR3Tz9OVKtFyqT71wGg5dgrGPeV', '2019-08-05 09:54:58', '2019-08-05 09:54:58'),
	(2700, 1, '5YPKf4nCAoqCdLFIuQ60nJ20pGNP32I3', '2019-08-05 09:54:58', '2019-08-05 09:54:58'),
	(2701, 1, 'UYZhn0uNFQpfrBh4BBp9xg7gTI4jo0Bh', '2019-08-05 09:55:05', '2019-08-05 09:55:05'),
	(2702, 1, 'r3a4LARM1ymYrc08XjT7MCacrdCdKbUf', '2019-08-05 09:55:05', '2019-08-05 09:55:05'),
	(2703, 1, 'RCDbsBRNAyhaPDJtMWAJDZlVNuvDrrgL', '2019-08-05 09:55:05', '2019-08-05 09:55:05'),
	(2704, 1, 'PzkQ9vp1cShDA0asZognQ1MgULcOY2G1', '2019-08-05 09:55:06', '2019-08-05 09:55:06'),
	(2705, 1, '4E2aHawBNpmHre8zd3ARbNw8pbsNrFUj', '2019-08-05 09:55:06', '2019-08-05 09:55:06'),
	(2706, 1, 'y6TlpTQo8mETbwT2GY34ZmQk9o2Y6sc5', '2019-08-05 09:55:06', '2019-08-05 09:55:06'),
	(2707, 1, 'DiD7rIickZMlN25pxjn8iyDjMgLejqDZ', '2019-08-05 09:55:09', '2019-08-05 09:55:09'),
	(2708, 1, 'xeLLdDPkUGLWw8SGTLo2N5Vkn58GxYQa', '2019-08-05 09:55:09', '2019-08-05 09:55:09'),
	(2709, 1, 'ajtkcjW3aD63GIeWHbNdGIzEHuPhmMql', '2019-08-05 09:55:18', '2019-08-05 09:55:18'),
	(2710, 1, 'jzrjz32BpHnZrd4hXVf9jVNTnsMyeLt1', '2019-08-05 09:59:17', '2019-08-05 09:59:17'),
	(2711, 1, 'tNlxhTB7cnMk47UKHxDwAvJHvzaR52q9', '2019-08-05 09:59:17', '2019-08-05 09:59:17'),
	(2712, 1, '6ZSaE3oUp0RnGENAcxpnCRlSRX3ZPl2K', '2019-08-05 10:09:15', '2019-08-05 10:09:15'),
	(2713, 1, 'VgnQ0i3tDeODhQYFgRkwkKtvnT1oVU6s', '2019-08-05 10:10:38', '2019-08-05 10:10:38'),
	(2714, 1, '0sg9j8nf2tZIcbxFO50DB0GN0yEBF8wR', '2019-08-05 10:11:43', '2019-08-05 10:11:43'),
	(2715, 1, 'ZJOuRL0f3tpeRTWnTahPGJ4H1RPD5X8X', '2019-08-05 10:11:45', '2019-08-05 10:11:45'),
	(2716, 1, 'ij88cGH0oowlfC8SWxtMhLwl8W6ctoXq', '2019-08-05 10:11:45', '2019-08-05 10:11:45'),
	(2717, 1, 'WtMCAWXVpU0fbIjFy0DyPN3MJuX4kjod', '2019-08-05 10:28:28', '2019-08-05 10:28:28'),
	(2718, 1, 'vBItyxMCMyIaFU57Xqh2qOqcUvDS57Tr', '2019-08-05 10:28:29', '2019-08-05 10:28:29'),
	(2719, 1, 'HtkApfE7Qx0hpGvUMrML6Sd9pt8HtulJ', '2019-08-05 10:28:46', '2019-08-05 10:28:46'),
	(2720, 1, 'UDxj3sQiT8HFKj6Wmn9WkNLcImgyhHX6', '2019-08-05 10:28:46', '2019-08-05 10:28:46'),
	(2721, 1, 'BvJGvghWTN5MsM5K9jJX9PiBDvZEPg6d', '2019-08-05 10:28:57', '2019-08-05 10:28:57'),
	(2722, 1, 'UTLXI4GdtYeNH8xAxJnelaNoEA8MCyt7', '2019-08-05 10:31:24', '2019-08-05 10:31:24'),
	(2723, 1, 'ijUN0luW5V5MkSfxQ3HnohROFxSnqTqC', '2019-08-05 11:21:58', '2019-08-05 11:21:58'),
	(2724, 1, 'ZBPNinHbjgdXUbHuwDrxsVzlg1FlO9zD', '2019-08-05 11:21:58', '2019-08-05 11:21:58'),
	(2725, 1, 'xhsGdDzWPnRkXwc8ct1ZUs9XLxfZB2ES', '2019-08-05 11:22:07', '2019-08-05 11:22:07'),
	(2726, 1, 'wa2gBhVpPKhukl1IUHtZDqEoUOI9W9TX', '2019-08-05 11:26:07', '2019-08-05 11:26:07'),
	(2727, 1, 'OUJ5FnHGfcqHu4WEOJqbuRp0xU9cnf5j', '2019-08-05 11:26:07', '2019-08-05 11:26:07'),
	(2728, 1, 'hLO1uGXFD9SEkR1M7TOT7BJQ7kJ19J7F', '2019-08-05 11:26:09', '2019-08-05 11:26:09'),
	(2729, 1, '8mV63NBANcxkcGnnxxGV8RDMNZjgP7ES', '2019-08-05 11:26:09', '2019-08-05 11:26:09'),
	(2730, 1, '6ttxwODg7l4Pokkw3XHaI7wfy0TISH7d', '2019-08-05 11:28:20', '2019-08-05 11:28:20'),
	(2731, 1, 'EkXJk4PJSAvKYqMD0NAyF2Z3Z307NDwq', '2019-08-05 11:28:20', '2019-08-05 11:28:20'),
	(2732, 1, '9aheq6K76qMVesBxaCBhmfUjntT0NdcS', '2019-08-05 11:29:05', '2019-08-05 11:29:05'),
	(2733, 1, 'AogVhGj4hgoDJmXwLApms8LozEZB4d5q', '2019-08-05 11:29:15', '2019-08-05 11:29:15'),
	(2734, 1, 'Lp2Cn9dLiSmbh1Mv8xpxMxeLbvSxN81e', '2019-08-05 11:29:15', '2019-08-05 11:29:15'),
	(2735, 1, 'lOQJ8hLwuU73ANme2dKQWqZxcRmSbTlj', '2019-08-05 11:29:32', '2019-08-05 11:29:32'),
	(2736, 1, 'BrjmAd1INljxvd4SnfUmZx4pilw4jtiT', '2019-08-05 11:29:32', '2019-08-05 11:29:32'),
	(2737, 1, 'xW8QgCbfbnpg1RAMveQsz7OMsKstbdEa', '2019-08-05 11:29:41', '2019-08-05 11:29:41'),
	(2738, 1, 'I35GfyX4EXAzYTadzC6JItt8vzIQY4Lm', '2019-08-05 11:29:42', '2019-08-05 11:29:42'),
	(2739, 1, 'itJYVYbPthEr02SIZCfO3uB2j5HBcH0G', '2019-08-05 11:37:14', '2019-08-05 11:37:14'),
	(2740, 1, 'pRXhrEx9qF4D1BApvU9pn5KP6IhQeZfV', '2019-08-05 11:37:14', '2019-08-05 11:37:14'),
	(2741, 1, 'z0o7mW9VcGNA0lVgH4MbXuP923sAGp3N', '2019-08-05 11:37:20', '2019-08-05 11:37:20'),
	(2742, 1, '2WPfosDVm2V3D9VZS7KARsXSzGXrewiP', '2019-08-05 11:37:30', '2019-08-05 11:37:30'),
	(2743, 1, 'CbhHyHVjpK0iwBE9EMfnecmY2J0KkPLW', '2019-08-05 11:38:04', '2019-08-05 11:38:04'),
	(2744, 1, 'mjrDUIsPjHX3l6QFU5N1wB1YZTETtGk1', '2019-08-05 11:38:07', '2019-08-05 11:38:07'),
	(2745, 1, 'pX7xAJ10qPURK0T6vdDMQrnxvaIkTycs', '2019-08-05 11:38:08', '2019-08-05 11:38:08'),
	(2746, 1, 'vchR9eAmoaTQEA0fwzyZu3Kvieoh93wQ', '2019-08-05 12:32:04', '2019-08-05 12:32:04'),
	(2747, 1, 'pSRSEyogF9m47COfoy1H9l8ygPsllN16', '2019-08-05 12:32:26', '2019-08-05 12:32:26'),
	(2748, 1, 'xNKVjZcPIgr1219ES02BkFo4XdDS5ZaS', '2019-08-05 12:33:26', '2019-08-05 12:33:26'),
	(2749, 1, 'IyzSlkzfM5OQN6rSM78gaRuNuWgwuwE6', '2019-08-05 12:34:09', '2019-08-05 12:34:09'),
	(2750, 1, '3tulqGbxK4zMBeDjBLi05hlMzXgTpvY2', '2019-08-05 12:34:34', '2019-08-05 12:34:34'),
	(2751, 1, 'nyKBiyHJ2SRbZ4TBrL4Ds4GhoXSN3Jex', '2019-08-05 12:35:22', '2019-08-05 12:35:22'),
	(2752, 1, 'ecCj3OR16ydwpNugpmGOi635kIru0IP3', '2019-08-05 12:35:37', '2019-08-05 12:35:37'),
	(2753, 1, 'vT2gz3UWCKyo7FGZLeMpcOkezmzFZ49c', '2019-08-05 14:11:11', '2019-08-05 14:11:11'),
	(2754, 1, 'Paf8QEVkX4mZtf5XjDxuG1CpukMkMY8o', '2019-08-05 14:12:08', '2019-08-05 14:12:08'),
	(2755, 1, 'ExVJ2K0gxIHfXBU9jpZYOaYr1agZznWg', '2019-08-05 14:12:33', '2019-08-05 14:12:33'),
	(2756, 1, 'i2Ltw81xtf2Zux5IK6UrsjVI7E1xpST2', '2019-08-05 14:12:52', '2019-08-05 14:12:52'),
	(2757, 1, 'fE0mTIu9MFRx10A0FG9ExreC7ZLer5XW', '2019-08-05 14:20:15', '2019-08-05 14:20:15'),
	(2758, 1, '7fVUWrlig0k4xdjPst4yGzcnAQioE1gN', '2019-08-05 14:20:37', '2019-08-05 14:20:37'),
	(2759, 1, 'VKvl9IohtCbm40kAlmQGYv8JzshPiR2s', '2019-08-05 14:21:02', '2019-08-05 14:21:02'),
	(2760, 1, 'y8N9qdLdfGzK6eUbhcamdijkiLzMoLTN', '2019-08-05 14:21:03', '2019-08-05 14:21:03'),
	(2761, 1, 'ZWSiPiCAs5vOd9Mbq19oLt8fSBOMzirB', '2019-08-05 14:26:11', '2019-08-05 14:26:11'),
	(2762, 1, 'FL9ooq0Dl0YRrMeBSbqqAC4IVgEn5E3q', '2019-08-05 14:26:17', '2019-08-05 14:26:17'),
	(2763, 1, '6MhuB2Yi5M3uZAR1vR0PZbKbU3jW8z1d', '2019-08-05 14:26:17', '2019-08-05 14:26:17'),
	(2764, 1, 'GthRKpuP3LTcoQ5FJWjJGBlSKQ5zIq79', '2019-08-05 14:37:25', '2019-08-05 14:37:25'),
	(2765, 1, 'yiIR7xN5SgWcfoJPIg0WGxnjAzOPj991', '2019-08-05 14:37:25', '2019-08-05 14:37:25'),
	(2766, 1, 'y26mHVHFTCGjhR9XEAMRgTfm8YdnAVbs', '2019-08-05 14:37:25', '2019-08-05 14:37:25'),
	(2767, 1, 'iY2QfHGM6Aai0sCbXiAf1mg2jGHXZ2uT', '2019-08-05 14:37:26', '2019-08-05 14:37:26'),
	(2768, 1, 'sXRHraIyXLVgX8mpuDYxJNKBnXoZlpmt', '2019-08-05 14:37:32', '2019-08-05 14:37:32'),
	(2769, 1, 'wGuIQ6744AiqpzVLn8mctfhi9u25qWug', '2019-08-05 14:37:32', '2019-08-05 14:37:32'),
	(2770, 1, 'fzzOEbYUMqjQyMgtXSC0YtlfxP4HoR7C', '2019-08-05 14:37:32', '2019-08-05 14:37:32'),
	(2771, 1, 'hG5TvK2UI9j9SY5GJENLIsFT9XQqecmJ', '2019-08-05 14:37:33', '2019-08-05 14:37:33'),
	(2772, 1, 'LJ7fbNiEgL7buAznbhawTjSLhxSV3Zak', '2019-08-05 14:51:14', '2019-08-05 14:51:14'),
	(2773, 1, 'EASj5W4TXhnRGdFXqAv88CvXHYffdexr', '2019-08-05 14:51:16', '2019-08-05 14:51:16'),
	(2774, 1, 'bGpZZ4BQoi6cErxx8Po3pPgVaLFspR8P', '2019-08-05 14:53:22', '2019-08-05 14:53:22'),
	(2775, 1, 'j3z6EloswEARxY8rRl7js4jbqIHwf92y', '2019-08-05 14:54:33', '2019-08-05 14:54:33'),
	(2776, 1, '0C3PH2PbLgscZghPvka8GTTCJICllQ0J', '2019-08-05 14:54:59', '2019-08-05 14:54:59'),
	(2777, 1, 'B8oWb3OfYegFDzUR0fRbjzxuGQRqLe4l', '2019-08-05 14:55:00', '2019-08-05 14:55:00'),
	(2778, 1, '2IoHNFsS3pJYgPOaKva3bCkHg8asIqHk', '2019-08-05 14:55:16', '2019-08-05 14:55:16'),
	(2779, 1, 'w63RHP8ASmAWDB76ZLPGGQSHiLuXKZBP', '2019-08-05 14:55:30', '2019-08-05 14:55:30'),
	(2780, 1, 'WPnzCCVCPdizo2wNypgbQ4ynV12nA2vk', '2019-08-05 14:55:30', '2019-08-05 14:55:30'),
	(2781, 1, 'ms7uk653xDoOCshU1swvCjBG8dJotmuU', '2019-08-05 14:55:30', '2019-08-05 14:55:30'),
	(2782, 1, 'BYtt9Q4aYKbrBEBzqzDG7eTZjPEKLGx3', '2019-08-05 14:55:30', '2019-08-05 14:55:30'),
	(2783, 1, '2VFz5vK7Hpzxo8RzgrbjCNdALf1bZzCP', '2019-08-05 14:55:30', '2019-08-05 14:55:30'),
	(2784, 1, 'YJT18Nt5OW6RSEky5eXTJLMjMbxOmTjm', '2019-08-05 14:55:31', '2019-08-05 14:55:31'),
	(2785, 1, 'RoNCJNd1CZqX4gCeVH2I1p9nJuJqEbiX', '2019-08-05 14:55:31', '2019-08-05 14:55:31'),
	(2786, 1, 'C819nKeK27qyv3lg3D1pkVZDoq0HmVFj', '2019-08-05 14:55:31', '2019-08-05 14:55:31'),
	(2787, 1, 'AHacqqniyzKJM2f9qQ7GJLcrHmkGEJnT', '2019-08-05 14:55:52', '2019-08-05 14:55:52'),
	(2788, 1, 'uB3UN9VAo1C7SZf3mHgMtoAqorz3lhFO', '2019-08-05 14:55:52', '2019-08-05 14:55:52'),
	(2789, 1, 'PiW0lPtJNv2KKcTK60E7L5oC2yFs8hXl', '2019-08-05 14:55:52', '2019-08-05 14:55:52'),
	(2790, 1, 'KCBe9t94eo5ns1789aO8nYQ2ttRzqfn5', '2019-08-05 14:55:52', '2019-08-05 14:55:52'),
	(2791, 1, 'NaKojNp1WNTd2vdq0aJVP7T0JEFa5TEb', '2019-08-05 14:55:52', '2019-08-05 14:55:52'),
	(2792, 1, 'kfEznnH2wGqhpqcTB32aNP3HHDlOpqW4', '2019-08-05 14:55:52', '2019-08-05 14:55:52'),
	(2793, 1, 'aiZS9FfiW5TcNaoWOXI4Tu9EnMAMRWn4', '2019-08-05 14:55:52', '2019-08-05 14:55:52'),
	(2794, 1, 'OCZrRZm7h9SIc6TJLluoqvVN3Ekeo5Ss', '2019-08-05 14:55:53', '2019-08-05 14:55:53'),
	(2795, 1, 'YRVlwfVbkqZkkakPSOEkJYSVppDnLt5w', '2019-08-05 15:44:12', '2019-08-05 15:44:12'),
	(2796, 1, 'XSJaaB61ke3Z6gEPMZJigqwJlD7k4YM0', '2019-08-05 16:53:05', '2019-08-05 16:53:05'),
	(2797, 1, 'KzbxY1wUkoc3ZvyG18ZvNcOkrMgRcnra', '2019-08-05 18:59:26', '2019-08-05 18:59:26'),
	(2798, 1, 'HvD6CZaKfO35hgUP4ixOrkVxRbFciNHe', '2019-08-06 09:11:44', '2019-08-06 09:11:44'),
	(2799, 1, 'tuYautnPWsj2JxOfyJgJ2rWRbODREzWB', '2019-08-06 10:43:27', '2019-08-06 10:43:27'),
	(2800, 1, 'CcpkgEt9llOtCJK9aywPrsV1pe9LhS1u', '2019-08-06 10:57:21', '2019-08-06 10:57:21'),
	(2801, 1, 'QfrYtQuBMxBfJxItqK14cxjUilGTs7XG', '2019-08-06 11:13:43', '2019-08-06 11:13:43'),
	(2802, 1, 'Z9xVw9vGAPPWVbPS3FGi0l1rJ4pJMkeI', '2019-08-06 11:35:20', '2019-08-06 11:35:20'),
	(2803, 1, 'ctOX9Kkq7Mfb7dKNonkUR0xC8aq88b8c', '2019-08-06 11:36:26', '2019-08-06 11:36:26'),
	(2804, 1, 'ipPJvHPirA6GgfqaWW0BzQJpnFSMJYJ3', '2019-08-06 11:38:49', '2019-08-06 11:38:49'),
	(2805, 1, '8acIu8bQwRo9zqwfTXhEin6eoxvGyJhy', '2019-08-06 11:42:21', '2019-08-06 11:42:21'),
	(2806, 1, 'TTajavGZ7bbJAbXdBJr7IUr8iQC50iJO', '2019-08-06 11:51:06', '2019-08-06 11:51:06'),
	(2807, 1, 'Vn5Rq1YVTQ3kV95tL7bBgNepEw84ZirA', '2019-08-06 12:18:51', '2019-08-06 12:18:51'),
	(2808, 1, 'HS8Jt9NWv3VtEHC8JtJQnHQ07TUgQ9PV', '2019-08-06 15:04:06', '2019-08-06 15:04:06'),
	(2809, 1, 'aVJKTTdLF8XNSJTu3gV5NknKx8tiA0Bp', '2019-08-09 14:59:55', '2019-08-09 14:59:55'),
	(2810, 1, 'wP3GHw6iq9BcYPr0dJOofkTmwNvflssg', '2019-08-09 14:59:57', '2019-08-09 14:59:57'),
	(2811, 1, '5CcsbaAivWqZ2JaKrI4UPrEDrL0j9GPz', '2019-08-09 15:08:09', '2019-08-09 15:08:09'),
	(2812, 1, 'H42ZZXwLHqxxoIQmaiEaroaumWFrUNqN', '2019-08-09 15:08:09', '2019-08-09 15:08:09'),
	(2813, 1, 'EK9AZZqWhJpmZcvrmN4oYkZFkAMRUoJG', '2019-08-09 15:08:09', '2019-08-09 15:08:09'),
	(2814, 1, 'jTCMespcnXyGSL4G7H7GDvSegpjioCol', '2019-08-09 15:08:10', '2019-08-09 15:08:10'),
	(2815, 1, 'iLGCUThuQ9BDvdMGD3SVLqdd9W27yoIh', '2019-08-09 15:08:14', '2019-08-09 15:08:14'),
	(2816, 1, 'XQGp75FrDN9wamS6vObpvTkOeA1VE8M6', '2019-08-09 15:08:14', '2019-08-09 15:08:14'),
	(2817, 1, 'uzacjenFSIs6q3Zkp8CKOxu8xQ4wvTuF', '2019-08-09 15:08:15', '2019-08-09 15:08:15'),
	(2818, 1, '0LOEUBWisoQSAXLPYNKb8Q22NtjJMfc0', '2019-08-09 15:08:15', '2019-08-09 15:08:15'),
	(2819, 1, 'kny4W4cWuqqbuXjSstwOkpdXfHSVQ1yp', '2019-08-09 15:26:21', '2019-08-09 15:26:21'),
	(2820, 1, 'oT9T1Xsiph4N0RLCKv8346BZuJrIXaEV', '2019-08-09 15:26:25', '2019-08-09 15:26:25'),
	(2821, 1, 'nDOjPZg2a85M0uDaY17xXkAPF4dp0uUf', '2019-08-09 15:27:05', '2019-08-09 15:27:05'),
	(2822, 1, 'rqNBuBRS1Py79BOHXJFA6Ij7ETwgwjW5', '2019-08-09 15:27:05', '2019-08-09 15:27:05'),
	(2823, 1, 'OVwZakJx1BbxGxTFnu3uO4GvRnb5kMSk', '2019-08-09 15:27:05', '2019-08-09 15:27:05'),
	(2824, 1, 'FViG9kZzVNVSjAPFuXwvUdUDDraDmtFP', '2019-08-09 15:27:05', '2019-08-09 15:27:05'),
	(2825, 1, 'dRVnDUaIeGiMKUTPnaFX29ifa6Eaq9ho', '2019-08-09 15:27:05', '2019-08-09 15:27:05'),
	(2826, 1, 'QaSC9FQgaVQRpLfbNOaLntbD0eZonW2z', '2019-08-09 15:27:06', '2019-08-09 15:27:06'),
	(2827, 1, 'KzRjywqYTOcoOq5a5372oy0MyylGWoJ7', '2019-08-09 15:27:06', '2019-08-09 15:27:06'),
	(2828, 1, '3PID8A1rfpCFjc1RZEQuC7wqJahh66gR', '2019-08-09 15:27:06', '2019-08-09 15:27:06'),
	(2829, 1, 'c7JAGDYgjWhaqdwT5WexU9iwshUS6upq', '2019-08-09 15:27:51', '2019-08-09 15:27:51'),
	(2830, 1, 'Wtd1kuKm7A9MRlHKSXcfG7QFsKvYyjNq', '2019-08-09 15:29:15', '2019-08-09 15:29:15'),
	(2831, 1, 'ACNXDuTlHJy2MBUYt8mmSKMW1tx1uXXQ', '2019-08-09 15:31:26', '2019-08-09 15:31:26'),
	(2832, 1, 'IdT3GIjrqrShX8vDPKdp3tifXNtGVTSU', '2019-08-09 15:32:37', '2019-08-09 15:32:37'),
	(2833, 1, 'nyGSJNea0yFtE8D368z8LXq2BO637pCO', '2019-08-09 15:32:37', '2019-08-09 15:32:37'),
	(2834, 1, 'zYtdxWBjSxvbXjSU2npktUOriDculzxE', '2019-08-09 15:32:37', '2019-08-09 15:32:37'),
	(2835, 1, '4KeTo7qzbA2NpabNWaL2QkXWPtRIadtl', '2019-08-09 15:32:37', '2019-08-09 15:32:37'),
	(2836, 1, 'fKjVRBKlKzO1NlEreRnXoriLndEP5VZe', '2019-08-09 15:32:37', '2019-08-09 15:32:37'),
	(2837, 1, 'btonEsxCq5fdwMh4U3exEOWxUvyu8rN3', '2019-08-09 15:32:37', '2019-08-09 15:32:37'),
	(2838, 1, 'lxMixoh9JxpNoTzbyicYD5psKMfDJqA6', '2019-08-09 15:32:37', '2019-08-09 15:32:37'),
	(2839, 1, 'c5Vbd1bazaAwb2MyyIX8rke4yEL2KPmm', '2019-08-09 15:32:37', '2019-08-09 15:32:37'),
	(2840, 1, 'QFkKyB7OtLI8WspUxohv4nAZVsavdGwI', '2019-08-09 15:32:37', '2019-08-09 15:32:37'),
	(2841, 1, 'wv6QkOkCpWPlIOmHPL8THWI5PCpkf8qn', '2019-08-09 15:32:37', '2019-08-09 15:32:37'),
	(2842, 1, 'i8fYMseBmlgELQrKurkOWxwY2ecKSu4h', '2019-08-09 15:32:38', '2019-08-09 15:32:38'),
	(2843, 1, 'MDw8UlE9ZxT7j0u00XmecU1DrNHCXnNJ', '2019-08-09 15:32:38', '2019-08-09 15:32:38'),
	(2844, 1, 'zy1P4wkSXVKcnQze8H6adPdSLNVHBSVh', '2019-08-09 15:32:38', '2019-08-09 15:32:38'),
	(2845, 1, 'gre83zNLvlj6fyFXHsuHT8OLVVGbUhOI', '2019-08-09 15:32:38', '2019-08-09 15:32:38'),
	(2846, 1, 'nm0Cr2y8Oh0yn4cEoMuGZYro2Rz0p8tG', '2019-08-09 15:32:39', '2019-08-09 15:32:39'),
	(2847, 1, 'DaFfqOr3p6D7HIJ94xs3vT11LM0pp1pt', '2019-08-09 15:32:39', '2019-08-09 15:32:39'),
	(2848, 1, 'RyM9k2qX3Uozon99LccUwX6YdrgFZjoI', '2019-08-09 16:33:07', '2019-08-09 16:33:07'),
	(2849, 1, 'GtVB0VSdQcYPtJlv6np6N3F9Q1QpAKhd', '2019-08-09 16:33:16', '2019-08-09 16:33:16'),
	(2850, 1, 'XJPLJgPAzYVqThHqOE7N8Jdl9VfVQ2VA', '2019-08-09 16:33:16', '2019-08-09 16:33:16'),
	(2851, 1, 'BwelBoSy1MiEkyb9Paj7XyKT0qThLb11', '2019-08-09 16:33:16', '2019-08-09 16:33:16'),
	(2852, 1, 'eNIRcM42NQc8rwasHlA7FXqzG6bDFAvJ', '2019-08-09 16:33:17', '2019-08-09 16:33:17'),
	(2853, 1, 'CZoBuMLihfVrrTRfji7mPk4HoYJB4575', '2019-08-09 16:33:17', '2019-08-09 16:33:17'),
	(2854, 1, '1Q39rPgZVP7FC3f3HS5kxrxlfZi6Am1I', '2019-08-09 16:33:17', '2019-08-09 16:33:17'),
	(2855, 1, 'ImiLLzHBHbHV9vCqW55m15J8R1h9FIZo', '2019-08-09 16:33:17', '2019-08-09 16:33:17'),
	(2856, 1, 'qGHSIybr6I1nNm3PIdWvK0HyZHxmMldw', '2019-08-09 16:33:17', '2019-08-09 16:33:17'),
	(2857, 1, 'ch0WtlkVGFYUM6sInleVyShJYEbM5xfc', '2019-08-09 16:33:22', '2019-08-09 16:33:22'),
	(2858, 1, 'uInKpTsrL19Lw76OHxLxJevrpIhepVAp', '2019-08-09 16:33:22', '2019-08-09 16:33:22'),
	(2859, 1, 'x4RJEWJQWDCTrw4DnOVtxj2Cfv7gRN74', '2019-08-09 16:33:22', '2019-08-09 16:33:22'),
	(2860, 1, 'rWHFDVg67i7RxXXBidoWAPZsZBldAroq', '2019-08-09 16:33:22', '2019-08-09 16:33:22'),
	(2861, 1, 'gNo9N1VPeboVEExsdPQgFySswliQbTsW', '2019-08-09 16:33:22', '2019-08-09 16:33:22'),
	(2862, 1, 'G3I0vWBxis5nIBnom3WA1JTNLpXPlFxx', '2019-08-09 16:33:23', '2019-08-09 16:33:23'),
	(2863, 1, 'SBKdSv1wlT57Fczv6EiwqiyA97w9hYXk', '2019-08-09 16:33:23', '2019-08-09 16:33:23'),
	(2864, 1, 'tX4IGDBulgzvA8HAgiPmbDL4Khwq2RkW', '2019-08-09 16:33:23', '2019-08-09 16:33:23'),
	(2865, 1, 'r5KwICsmsMiRIq1GJPAa9y3pPrhvFuu8', '2019-08-09 18:08:36', '2019-08-09 18:08:36'),
	(2866, 1, 'mfYSTqB0xZl5eP9vOVjmTzomxFqkXO9g', '2019-08-09 18:08:38', '2019-08-09 18:08:38'),
	(2867, 1, 'Spu3oey7ZpXLp0f26PS6ePZndhHuJE7P', '2019-08-12 09:51:31', '2019-08-12 09:51:31'),
	(2868, 1, 'mLXl5WZO3LHtj9qhwSU5uZVoxBu01cnH', '2019-08-12 09:52:25', '2019-08-12 09:52:25'),
	(2869, 1, 'gXPfXKnIibcPm7ZdvVEMeyJNkpxaLR3m', '2019-08-12 09:52:28', '2019-08-12 09:52:28'),
	(2870, 1, 'Y30FT50Vvphabnrx7aj1Y1v920vT7xiY', '2019-08-13 08:34:41', '2019-08-13 08:34:41'),
	(2871, 1, 'JtGA6EGrzPxV0XHCv0HuLR6kuQRGS4Li', '2019-08-13 08:36:24', '2019-08-13 08:36:24'),
	(2872, 1, '6TY0FF6a5PSOV87Uoon39QLEzNcGVwkB', '2019-08-13 09:06:52', '2019-08-13 09:06:52'),
	(2873, 1, 'vhyDighFLudeHUSZgBDkohrbLVs5qDDs', '2019-08-13 09:06:52', '2019-08-13 09:06:52'),
	(2874, 1, 'UaULLO2knZTHCGlb7Rw3RA34SRQut8ev', '2019-08-13 09:06:52', '2019-08-13 09:06:52'),
	(2875, 1, 'WHvKalYhOLFaa5huKsL0gG6GYuzuYrfX', '2019-08-13 09:06:52', '2019-08-13 09:06:52'),
	(2876, 1, 'NQCTXecTp7uXpTQK9qC1tPHXmDFB9uw5', '2019-08-13 09:06:52', '2019-08-13 09:06:52'),
	(2877, 1, 'DDh47T2VQmzwISKVTJfAASvO9a0YObai', '2019-08-13 09:06:53', '2019-08-13 09:06:53'),
	(2878, 1, 'f0GyOyeXzQmsAwxJpzn9k0Eq5qrxx9cQ', '2019-08-13 09:06:53', '2019-08-13 09:06:53'),
	(2879, 1, 'j1sKrwYTnbArCU2LDHGhr3voVE5YS4x4', '2019-08-13 09:06:53', '2019-08-13 09:06:53'),
	(2880, 1, 'ZWjiW8RTwZ6HJ5F52ja7hY32p4Pfo29E', '2019-08-13 16:13:15', '2019-08-13 16:13:15'),
	(2881, 1, 'mXcRL8j3KwTiT5JlBkaXKt9fOgeU5gUn', '2019-08-13 16:13:15', '2019-08-13 16:13:15'),
	(2882, 1, 'ZtMmxleapnNcKCQiJS1IPA9bKHnWZTxs', '2019-08-13 16:13:15', '2019-08-13 16:13:15'),
	(2883, 1, 'ismqhuppJauAGvhmZUesVwwy3o6izFei', '2019-08-13 16:13:16', '2019-08-13 16:13:16'),
	(2884, 1, 'H6RQp3cLYZiQ2R0tSCRVjZpAAkMwwax7', '2019-08-13 16:14:46', '2019-08-13 16:14:46'),
	(2885, 1, 'ELedl1HbAaYhvxlXfj7HkRBwzQ7ZGbxg', '2019-08-13 16:14:46', '2019-08-13 16:14:46'),
	(2886, 1, 'jcGM2wg1FTxoX8O75rS1DbhsNLONCMU4', '2019-08-13 16:14:46', '2019-08-13 16:14:46'),
	(2887, 1, 'N1bUOJUND2FsvgUCkINuVv79bQhcsqg5', '2019-08-13 16:14:46', '2019-08-13 16:14:46'),
	(2888, 1, '9FtfI9x6LlbFfLvkBUid323N6kxgoHmZ', '2019-08-13 16:15:50', '2019-08-13 16:15:50'),
	(2889, 1, 'w4FDNC1T7rMuG1vdmZoYyRH8odIsQKPR', '2019-08-13 16:15:50', '2019-08-13 16:15:50'),
	(2890, 1, 'iihak92KJa2A23ir0gecUd5218VbMqhq', '2019-08-13 16:15:50', '2019-08-13 16:15:50'),
	(2891, 1, 'tPEqhoCZHaDLo7EXaVBDuFovKlXo5go1', '2019-08-13 16:15:50', '2019-08-13 16:15:50'),
	(2892, 1, '0QMjLwj960vBYKA6MlsD4STgBkLc10mm', '2019-08-13 17:41:28', '2019-08-13 17:41:28'),
	(2893, 1, '8whHSp0uEAQue9ZqGj3ggk4lRsa86RWR', '2019-08-13 17:42:40', '2019-08-13 17:42:40'),
	(2894, 1, 'vL7EcjjFhN5Xph3N5LZVx3HL1pZI0DUU', '2019-08-13 17:42:40', '2019-08-13 17:42:40'),
	(2895, 1, '2O6Uyu4vQNoZlYkYpM6aNps2B8UdiiGV', '2019-08-13 17:58:58', '2019-08-13 17:58:58'),
	(2896, 1, 'OYHAcc9iyu0MfvmSTK79QBQCwgRMnsU0', '2019-08-13 17:58:58', '2019-08-13 17:58:58'),
	(2897, 1, 'sjHJWewUik7dkBnL7EyHtAkm5UBYgZ0D', '2019-08-13 17:58:59', '2019-08-13 17:58:59'),
	(2898, 1, 'x306zYF6ibWuxWRwitGMJ8v8YKgzby6l', '2019-08-13 17:58:59', '2019-08-13 17:58:59'),
	(2899, 1, 'iMI2ppqtVPiYyNG7UbjgwybnXRwPDy6E', '2019-08-14 09:36:37', '2019-08-14 09:36:37'),
	(2900, 1, 'rW5WPxUTMKLj9NArBg1qPYr8cYCu4A9u', '2019-08-14 09:40:41', '2019-08-14 09:40:41'),
	(2901, 1, 'dV3rIhkhwNAfp6SYi6iHMx3wQ3bsWfNW', '2019-08-14 09:41:12', '2019-08-14 09:41:12'),
	(2902, 1, '8qBy9kdlYiYTTjbkwhXco5XVGFRAbZYE', '2019-08-14 09:41:18', '2019-08-14 09:41:18'),
	(2903, 1, 'aXmdyJ0zwJqBiCHWBqxH2vybL5OTMhoZ', '2019-08-14 09:41:25', '2019-08-14 09:41:25'),
	(2904, 1, 'tUdkblM8nvBuW7t9QdGQyHLZG1S8z53Z', '2019-08-14 09:41:33', '2019-08-14 09:41:33'),
	(2905, 1, '97YFzzibQmgyC5Ptwqb6WfAxK1nvSeDh', '2019-08-14 09:41:41', '2019-08-14 09:41:41'),
	(2906, 1, 'xbQgcxh1M93SPfiPwgvOrJzSekCFSuI0', '2019-08-14 09:41:49', '2019-08-14 09:41:49'),
	(2907, 1, 'GYq9zCxzJDmD9IDkwfZoFiZ7PjuG33iF', '2019-08-14 09:41:58', '2019-08-14 09:41:58'),
	(2908, 1, '2eHIA42LmpKpTCVPLMLy0TRT2GY8KQ0N', '2019-08-14 10:11:14', '2019-08-14 10:11:14'),
	(2909, 1, 'xJ3tg8IYoh9LOniKC6psw9Y4AGTE3jrK', '2019-08-14 10:11:14', '2019-08-14 10:11:14'),
	(2910, 1, 'WKXlOiJep5nazoUqmIMGL0h21zeTCOD4', '2019-08-14 10:15:15', '2019-08-14 10:15:15'),
	(2911, 1, 'FRpHd57VQLq7yNeacbKZYY7OkKX979ZG', '2019-08-14 10:15:15', '2019-08-14 10:15:15'),
	(2912, 1, 'CrGfmFR8Zf76UBTeKBpF23VfjgWGAZCX', '2019-08-15 09:28:59', '2019-08-15 09:28:59'),
	(2913, 1, 'uFGbTcgIcn3hQnw0ae2DZR61OOsgrjwN', '2019-08-15 10:18:07', '2019-08-15 10:18:07'),
	(2914, 1, 'UosT48TnSDyMubVU3CnLw8v8td3wEd5j', '2019-08-15 10:18:07', '2019-08-15 10:18:07'),
	(2915, 1, 'mllsoNcupo3sMl1TyrgHMn6faspZ5yvd', '2019-08-15 10:18:11', '2019-08-15 10:18:11'),
	(2916, 1, 'kDyDC8inyqDAE4r8TfrcurOQKzt4Jpd4', '2019-08-15 10:18:11', '2019-08-15 10:18:11'),
	(2917, 1, 'wlCurisDgaCrPXCElFhfD5LPh6G6wOHI', '2019-08-15 10:18:20', '2019-08-15 10:18:20'),
	(2918, 1, 'KE6ddZZ1eQotUf1BGckl0FvDAtvR6Nho', '2019-08-15 10:18:20', '2019-08-15 10:18:20'),
	(2919, 1, 'kwx2DGCYTwEYixHypw6k2zBDUb4wRnRP', '2019-08-15 10:33:30', '2019-08-15 10:33:30'),
	(2920, 1, 'GXBRh7s7ZoOCG1Q6yfSG6aOK2LXvaJLt', '2019-08-15 10:33:30', '2019-08-15 10:33:30'),
	(2921, 1, 'NOqkeOP3P8BE9pqTUwCggkjSpSpZ8uzo', '2019-08-15 11:35:01', '2019-08-15 11:35:01'),
	(2922, 1, 'SlMOTJ1xS939ce3cbMSedvLEkYBWVhth', '2019-08-15 11:35:01', '2019-08-15 11:35:01'),
	(2923, 1, 'AxQh6YS6Gwc7V2QVYhCU3BCmyQ0poeYu', '2019-08-15 11:35:31', '2019-08-15 11:35:31'),
	(2924, 1, 'aOjo2n4deXu8rBVO7wQzQKjPPXZqpntm', '2019-08-15 11:35:31', '2019-08-15 11:35:31'),
	(2925, 1, 'SnKmPcWg4PpIleW0UmKNYpax0be05HzE', '2019-08-15 11:35:53', '2019-08-15 11:35:53'),
	(2926, 1, 'vLqI0wPRPjqk7MC8pGpiJXRPqqncr9zf', '2019-08-15 11:35:53', '2019-08-15 11:35:53'),
	(2927, 1, 'Gku0QJtYlEmLIHLyLUAjBGks5wPQMDcY', '2019-08-15 11:39:54', '2019-08-15 11:39:54'),
	(2928, 1, 'ekZXsRM1X118TYizDpNY8gykX8gpcKwm', '2019-08-15 11:42:04', '2019-08-15 11:42:04'),
	(2929, 1, 'FMnjfSbJ2a8S0X69NHm5SR3h8Q5TjxtD', '2019-08-15 11:44:07', '2019-08-15 11:44:07'),
	(2930, 1, 'qxC2CI98XYvX8hCGmleKuaIGubGjmFnA', '2019-08-15 11:44:15', '2019-08-15 11:44:15'),
	(2931, 1, 'jq5asP9qYkAz434MnRz1JRJwwy5kJaWo', '2019-08-15 11:44:22', '2019-08-15 11:44:22'),
	(2932, 1, 'seTPYNUK4t8ToAN3VX76XQo9gkUCjSc4', '2019-08-15 11:44:48', '2019-08-15 11:44:48'),
	(2933, 1, '3WdAAFSUJ5lyGmzFTtz37o07NWK5iKbJ', '2019-08-15 11:44:49', '2019-08-15 11:44:49'),
	(2934, 1, '9FI2ooVSDiWzQZZkDN6MoCUd9R7xNsmq', '2019-08-15 11:46:34', '2019-08-15 11:46:34'),
	(2935, 1, '0WU2u6UNHfwVQ5PFINCKdrUYEnv8cwKa', '2019-08-15 11:46:41', '2019-08-15 11:46:41'),
	(2936, 1, 'mkF8XSbRrpwElcXuzUVTOPYyS14YjCXK', '2019-08-15 11:46:46', '2019-08-15 11:46:46'),
	(2937, 1, 'S4NwyFiy4iUVZWqA1YrlrRrYZHMqKVZp', '2019-08-15 11:46:56', '2019-08-15 11:46:56'),
	(2938, 1, 'YfhvtPP1E36FGKAiQSsP70HPZ2ckMbzX', '2019-08-15 11:47:02', '2019-08-15 11:47:02'),
	(2939, 1, '7j9bhwYgjnGAuMJF35VqRr5o64SGJcgu', '2019-08-15 11:47:09', '2019-08-15 11:47:09'),
	(2940, 1, 'kpwRdZ0FmBR3DK6MmwbekWzLgFZAiQfe', '2019-08-15 12:09:24', '2019-08-15 12:09:24'),
	(2941, 1, 'bseG1Dvhgdk5W0VYQcewVgBe6BHrFOBN', '2019-08-15 12:09:24', '2019-08-15 12:09:24'),
	(2942, 1, 'RRiG9xvkL7g8F6K4WEa6PahcaaqJ9z0Q', '2019-08-15 12:09:25', '2019-08-15 12:09:25'),
	(2943, 1, 'PFBo17X2ZfYpPcRKAqb152aKN4z2R80N', '2019-08-15 12:09:25', '2019-08-15 12:09:25'),
	(2944, 1, 'QHO0oVFmQ1I858sMgRi39iC3qkixBHip', '2019-08-15 12:09:25', '2019-08-15 12:09:25'),
	(2945, 1, 'x7W56vLrFAGBH35dSm4EbjPcuEYeKgjn', '2019-08-15 12:09:25', '2019-08-15 12:09:25'),
	(2946, 1, 'kkMVRNNYcrXM5hMqkuQs4Hk2SLyaXtEg', '2019-08-15 12:09:25', '2019-08-15 12:09:25'),
	(2947, 1, 'cCnDFOfj5p5zDx3zWjc2BV9TwsKwiCo6', '2019-08-15 12:09:26', '2019-08-15 12:09:26'),
	(2948, 1, 'noreuEH66CMYU9q4wCjz1VvNcydVZt8Y', '2019-08-15 12:19:31', '2019-08-15 12:19:31'),
	(2949, 1, 'hB1qhtILrgvyVxDmyPvLzKWMer3Afq19', '2019-08-15 12:27:42', '2019-08-15 12:27:42'),
	(2950, 1, 'X6ijcOwug2JR7s7adJRadYXUIOWqxVe7', '2019-08-15 14:45:06', '2019-08-15 14:45:06'),
	(2951, 1, 'levcbicaE30XrcG0zOmBBS6OP3X96gUU', '2019-08-15 14:45:24', '2019-08-15 14:45:24'),
	(2952, 1, 'CSiuTgBWuTrArizsF3YrH5XUJ2GL3shw', '2019-08-15 14:46:04', '2019-08-15 14:46:04'),
	(2953, 1, 'Ti4NFPlJHNaaizVuA8A95pYwBgRIzd6L', '2019-08-15 14:46:04', '2019-08-15 14:46:04'),
	(2954, 1, '3JXfEz5HjY78rJVTT5tAoiDiKYpgQUYi', '2019-08-15 14:46:42', '2019-08-15 14:46:42'),
	(2955, 1, 'GrcXLDYyVeHydpcPvEFFrKWk49xNyDGn', '2019-08-15 14:46:42', '2019-08-15 14:46:42'),
	(2956, 1, 'cWdKB13wmM0s3wrITeW3WrzbJlwFWgHR', '2019-08-15 14:47:06', '2019-08-15 14:47:06'),
	(2957, 1, 'I3IsT507FmfjMLBoy8Mtoq9LRdq0ttxO', '2019-08-15 15:08:35', '2019-08-15 15:08:35'),
	(2958, 1, 'Yd8tL2zBpcsjzEDjA3OUfnzGCGaDZXxY', '2019-08-15 17:10:59', '2019-08-15 17:10:59'),
	(2959, 1, 'dRUVciyXlLJMModRbZiqT1KrYuPKtR4r', '2019-08-15 17:12:36', '2019-08-15 17:12:36'),
	(2960, 1, '97B0ZQicKIMxCKxPjRPtBwcKRT6VwyvM', '2019-08-15 17:12:38', '2019-08-15 17:12:38'),
	(2961, 1, 'xWhzvJmWriwqqKpG26Cma4oBAxpT9HbA', '2019-08-15 17:12:44', '2019-08-15 17:12:44'),
	(2962, 1, 'xbxIjswZD51dlfmqz56d4BrOWO9RhcpF', '2019-08-15 17:12:50', '2019-08-15 17:12:50'),
	(2963, 1, 'm8VAOzIrrlgZQzWJi8GD9Ecf8Am0dUpq', '2019-08-15 17:13:17', '2019-08-15 17:13:17'),
	(2964, 1, 'dw5cDmedxU6RAcPuA1QvBf7PxecUxyv7', '2019-08-15 17:13:22', '2019-08-15 17:13:22'),
	(2965, 1, 'KbK7evWjjkAJvfbKdUVhu3GbD9ZSyIbQ', '2019-08-15 17:13:46', '2019-08-15 17:13:46'),
	(2966, 1, 'gY8CHfTJVOLaiwJQxNpBDY6QUdwPNzn3', '2019-08-15 17:14:56', '2019-08-15 17:14:56'),
	(2967, 1, 'KvPluKPyBWDiV75Iv497LrfKaXpCWtmX', '2019-08-15 17:15:31', '2019-08-15 17:15:31'),
	(2968, 1, 'O6HOioYND6UWNRNbiG4LRoUlCUTafVls', '2019-08-15 17:15:34', '2019-08-15 17:15:34');
/*!40000 ALTER TABLE `persistences` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.reminders
CREATE TABLE IF NOT EXISTS `reminders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.reminders: 0 rows
/*!40000 ALTER TABLE `reminders` DISABLE KEYS */;
/*!40000 ALTER TABLE `reminders` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.revisions
CREATE TABLE IF NOT EXISTS `revisions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.revisions: 0 rows
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `revisions` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.roles
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.roles: ~5 rows (approximately)
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` (`id`, `slug`, `name`, `permissions`, `created_at`, `updated_at`) VALUES
	(1, 'superadmin', 'Superadmin', '{"isite.settings.manage":true,"isite.settings.index":true,"isite.settings.edit":true,"isite.settings.create":true,"isite.master.records.manage":true,"isite.master.records.index":true,"isite.master.records.edit":true,"isite.master.records.create":true,"isite.master.records.destroy":true,"iblog.categories.manage":true,"iblog.categories.index":true,"iblog.categories.create":true,"iblog.categories.edit":true,"iblog.categories.destroy":true,"iblog.posts.manage":true,"iblog.posts.index":true,"iblog.posts.create":true,"iblog.posts.edit":true,"iblog.posts.destroy":true,"profile.api.login":true,"profile.user.manage":true,"profile.user.index":true,"profile.user.index-by-department":true,"profile.user.create":true,"profile.user.edit":true,"profile.user.destroy":true,"profile.user.department":true,"profile.user.impersonate":true,"profile.permissions.manage":true,"profile.fields.index":true,"profile.fields.create":true,"profile.fields.edit":true,"profile.fields.destroy":true,"profile.addresses.index":true,"profile.addresses.create":true,"profile.addresses.edit":true,"profile.addresses.destroy":true,"profile.departments.manage":true,"profile.departments.index":true,"profile.departments.create":true,"profile.departments.edit":true,"profile.departments.destroy":true,"profile.settings.index":true,"profile.settings.create":true,"profile.settings.edit":true,"profile.settings.destroy":true,"profile.user-departments.index":true,"profile.user-departments.create":true,"profile.user-departments.edit":true,"profile.user-departments.destroy":true,"profile.role.manage":true,"profile.role.index":true,"profile.role.create":true,"profile.role.edit":true,"profile.role.destroy":true,"icommerce.tags.index":true,"icommerce.tags.create":true,"icommerce.tags.edit":true,"icommerce.tags.destroy":true,"icommerce.categories.index":true,"icommerce.categories.create":true,"icommerce.categories.edit":true,"icommerce.categories.destroy":true,"icommerce.manufacturers.index":true,"icommerce.manufacturers.create":true,"icommerce.manufacturers.edit":true,"icommerce.manufacturers.destroy":true,"icommerce.products.index":true,"icommerce.products.create":true,"icommerce.products.edit":true,"icommerce.products.destroy":true,"icommerce.producttags.index":true,"icommerce.producttags.create":true,"icommerce.producttags.edit":true,"icommerce.producttags.destroy":true,"icommerce.productcategories.index":true,"icommerce.productcategories.create":true,"icommerce.productcategories.edit":true,"icommerce.productcategories.destroy":true,"icommerce.options.index":true,"icommerce.options.create":true,"icommerce.options.edit":true,"icommerce.options.destroy":true,"icommerce.coupons.index":true,"icommerce.coupons.create":true,"icommerce.coupons.edit":true,"icommerce.coupons.destroy":true,"icommerce.shippingcouriers.index":true,"icommerce.shippingcouriers.create":true,"icommerce.shippingcouriers.edit":true,"icommerce.shippingcouriers.destroy":true,"icommerce.currencies.index":true,"icommerce.currencies.create":true,"icommerce.currencies.edit":true,"icommerce.currencies.destroy":true,"icommerce.orders.index":true,"icommerce.orders.show":true,"icommerce.orders.show-others":true,"icommerce.orders.create":true,"icommerce.orders.edit":true,"icommerce.orders.destroy":true,"icommerce.productdiscounts.index":true,"icommerce.productdiscounts.create":true,"icommerce.productdiscounts.edit":true,"icommerce.productdiscounts.destroy":true,"icommerce.optionvalues.index":true,"icommerce.optionvalues.create":true,"icommerce.optionvalues.edit":true,"icommerce.optionvalues.destroy":true,"icommerce.productoptions.index":true,"icommerce.productoptions.create":true,"icommerce.productoptions.edit":true,"icommerce.productoptions.destroy":true,"icommerce.productoptionvalues.index":true,"icommerce.productoptionvalues.create":true,"icommerce.productoptionvalues.edit":true,"icommerce.productoptionvalues.destroy":true,"icommerce.orderproducts.index":true,"icommerce.orderproducts.create":true,"icommerce.orderproducts.edit":true,"icommerce.orderproducts.destroy":true,"icommerce.orderoptions.index":true,"icommerce.orderoptions.create":true,"icommerce.orderoptions.edit":true,"icommerce.orderoptions.destroy":true,"icommerce.orderhistories.index":true,"icommerce.orderhistories.create":true,"icommerce.orderhistories.edit":true,"icommerce.orderhistories.destroy":true,"icommerce.ordershipments.index":true,"icommerce.ordershipments.create":true,"icommerce.ordershipments.edit":true,"icommerce.ordershipments.destroy":true,"icommerce.couponcategories.index":true,"icommerce.couponcategories.create":true,"icommerce.couponcategories.edit":true,"icommerce.couponcategories.destroy":true,"icommerce.couponproducts.index":true,"icommerce.couponproducts.create":true,"icommerce.couponproducts.edit":true,"icommerce.couponproducts.destroy":true,"icommerce.couponhistories.index":true,"icommerce.couponhistories.create":true,"icommerce.couponhistories.edit":true,"icommerce.couponhistories.destroy":true,"icommerce.wishlists.index":true,"icommerce.wishlists.create":true,"icommerce.wishlists.edit":true,"icommerce.wishlists.destroy":true,"icommerce.payments.index":true,"icommerce.payments.create":true,"icommerce.payments.edit":true,"icommerce.payments.destroy":true,"icommerce.shippings.index":true,"icommerce.shippings.create":true,"icommerce.shippings.edit":true,"icommerce.shippings.destroy":true,"icommerce.taxrates.index":true,"icommerce.taxrates.create":true,"icommerce.taxrates.edit":true,"icommerce.taxrates.destroy":true,"icommerce.taxclasses.index":true,"icommerce.taxclasses.create":true,"icommerce.taxclasses.edit":true,"icommerce.taxclasses.destroy":true,"icommerce.taxclassrates.index":true,"icommerce.taxclassrates.create":true,"icommerce.taxclassrates.edit":true,"icommerce.taxclassrates.destroy":true,"icommerce.itemtypes.index":true,"icommerce.itemtypes.create":true,"icommerce.itemtypes.edit":true,"icommerce.itemtypes.destroy":true,"icommerce.relatedproducts.index":true,"icommerce.relatedproducts.create":true,"icommerce.relatedproducts.edit":true,"icommerce.relatedproducts.destroy":true,"icommerce.lists.index":true,"icommerce.lists.create":true,"icommerce.lists.edit":true,"icommerce.lists.destroy":true,"icommerce.productlists.index":true,"icommerce.productlists.create":true,"icommerce.productlists.edit":true,"icommerce.productlists.destroy":true,"icommerce.payment-methods.manage":true,"icommerce.payment-methods.index":true,"icommerce.payment-methods.create":true,"icommerce.payment-methods.edit":true,"icommerce.payment-methods.destroy":true,"icommerce.cartproductoptions.index":true,"icommerce.cartproductoptions.create":true,"icommerce.cartproductoptions.edit":true,"icommerce.cartproductoptions.destroy":true,"icommerce.shipping-methods.manage":true,"icommerce.shipping-methods.index":true,"icommerce.shipping-methods.create":true,"icommerce.shipping-methods.edit":true,"icommerce.shipping-methods.destroy":true,"icommerce.shippingmethodgeozones.index":true,"icommerce.shippingmethodgeozones.create":true,"icommerce.shippingmethodgeozones.edit":true,"icommerce.shippingmethodgeozones.destroy":true,"icommerce.paymentmethodgeozones.index":true,"icommerce.paymentmethodgeozones.create":true,"icommerce.paymentmethodgeozones.edit":true,"icommerce.paymentmethodgeozones.destroy":true,"iplaces.places.manage":true,"iplaces.places.index":true,"iplaces.places.create":true,"iplaces.places.edit":true,"iplaces.places.destroy":true,"iplaces.categories.manage":true,"iplaces.categories.index":true,"iplaces.categories.create":true,"iplaces.categories.edit":true,"iplaces.categories.destroy":true,"iplaces.services.manage":true,"iplaces.services.index":true,"iplaces.services.create":true,"iplaces.services.edit":true,"iplaces.services.destroy":true,"iplaces.zones.manage":true,"iplaces.zones.index":true,"iplaces.zones.create":true,"iplaces.zones.edit":true,"iplaces.zones.destroy":true,"iplaces.schedules.manage":true,"iplaces.schedules.index":true,"iplaces.schedules.create":true,"iplaces.schedules.edit":true,"iplaces.schedules.destroy":true,"iplaces.spaces.manage":true,"iplaces.spaces.index":true,"iplaces.spaces.create":true,"iplaces.spaces.edit":true,"iplaces.spaces.destroy":true,"iplaces.cities.manage":true,"iplaces.cities.index":true,"iplaces.cities.create":true,"iplaces.cities.edit":true,"iplaces.cities.destroy":true,"imenu.menus.index":true,"imenu.menus.create":true,"imenu.menus.edit":true,"imenu.menus.destroy":true,"imenu.menuitems.index":true,"imenu.menuitems.create":true,"imenu.menuitems.edit":true,"imenu.menuitems.destroy":true,"media.medias.index":true,"media.medias.create":true,"media.medias.edit":true,"media.medias.destroy":true,"media.folders.index":true,"media.folders.create":true,"media.folders.edit":true,"media.folders.destroy":true,"slider.sliders.manage":true,"slider.sliders.index":true,"slider.sliders.create":true,"slider.sliders.edit":true,"slider.sliders.edit-system-name":true,"slider.sliders.destroy":true,"slider.sliders.update":true,"slider.slides.manage":true,"slider.slides.index":true,"slider.slides.create":true,"slider.slides.edit":true,"slider.slides.destroy":true,"slider.slides.update":true,"core.sidebar.group":true,"iforms.forms.index":true,"iforms.forms.create":true,"iforms.forms.edit":true,"iforms.forms.destroy":true,"iforms.leads.index":true,"iforms.leads.create":true,"iforms.leads.edit":true,"iforms.leads.destroy":true,"page.pages.index":true,"page.pages.create":true,"page.pages.edit":true,"page.pages.destroy":true,"setting.settings.index":true,"setting.settings.edit":true,"menu.menus.index":true,"menu.menus.create":true,"menu.menus.edit":true,"menu.menus.destroy":true,"menu.menuitems.index":true,"menu.menuitems.create":true,"menu.menuitems.edit":true,"menu.menuitems.destroy":true,"tag.tags.index":true,"tag.tags.create":true,"tag.tags.edit":true,"tag.tags.destroy":true,"workshop.sidebar.group":true,"workshop.modules.index":true,"workshop.modules.show":true,"workshop.modules.update":true,"workshop.modules.disable":true,"workshop.modules.enable":true,"workshop.modules.publish":true,"workshop.themes.index":true,"workshop.themes.show":true,"workshop.themes.publish":true,"user.users.index":true,"user.users.create":true,"user.users.edit":true,"user.users.destroy":true,"user.roles.index":true,"user.roles.create":true,"user.roles.edit":true,"user.roles.destroy":true,"account.api-keys.index":true,"account.api-keys.create":true,"account.api-keys.destroy":true,"dashboard.index":true,"dashboard.update":true,"dashboard.reset":true}', '2019-04-16 16:21:18', '2019-08-02 13:02:47'),
	(2, 'user', 'User', '{"profile.api.login":true}', '2019-04-16 16:21:18', '2019-05-07 15:42:19'),
	(3, 'admin', 'Admin', '{"profile.api.login":true,"profile.user.manage":true,"profile.user.index":true,"profile.user.index-by-department":true,"profile.user.create":true,"profile.user.edit":true,"profile.user.destroy":true,"profile.user.department":true,"profile.departments.index":true,"profile.settings.index":true,"profile.user-departments.index":true,"icommerce.categories.index":true,"icommerce.categories.create":true,"icommerce.categories.edit":true,"icommerce.categories.destroy":true,"icommerce.products.index":true,"icommerce.products.create":true,"icommerce.products.edit":true,"icommerce.products.destroy":true,"icommerce.productcategories.index":true,"icommerce.productcategories.create":true,"icommerce.productcategories.edit":true,"icommerce.productcategories.destroy":true,"icommerce.options.index":true,"icommerce.options.create":true,"icommerce.options.edit":true,"icommerce.options.destroy":true,"icommerce.productdiscounts.index":true,"icommerce.productdiscounts.create":true,"icommerce.productdiscounts.edit":true,"icommerce.productdiscounts.destroy":true,"icommerce.optionvalues.index":true,"icommerce.optionvalues.create":true,"icommerce.optionvalues.edit":true,"icommerce.optionvalues.destroy":true,"icommerce.productoptions.index":true,"icommerce.productoptions.create":true,"icommerce.productoptions.edit":true,"icommerce.productoptions.destroy":true,"icommerce.productoptionvalues.index":true,"icommerce.productoptionvalues.create":true,"icommerce.productoptionvalues.edit":true,"icommerce.productoptionvalues.destroy":true,"icommerce.relatedproducts.index":true,"icommerce.relatedproducts.create":true,"icommerce.relatedproducts.edit":true,"icommerce.relatedproducts.destroy":true,"icommerce.lists.index":true,"icommerce.lists.create":true,"icommerce.lists.edit":true,"icommerce.lists.destroy":true,"icommerce.productlists.index":true,"icommerce.productlists.create":true,"icommerce.productlists.edit":true,"icommerce.productlists.destroy":true,"media.medias.index":true,"media.medias.create":true,"media.medias.edit":true,"media.medias.destroy":true,"media.folders.index":true,"media.folders.create":true,"media.folders.edit":true,"media.folders.destroy":true,"isite.settings.manage":true,"isite.settings.index":true,"isite.settings.edit":true,"slider.sliders.manage":true,"slider.sliders.index":true,"slider.sliders.edit":true,"slider.sliders.update":true,"slider.slides.manage":true,"slider.slides.index":true,"slider.slides.create":true,"slider.slides.edit":true,"slider.slides.destroy":true,"slider.slides.update":true,"iplaces.places.manage":true,"iplaces.places.index":true,"iplaces.places.create":true,"iplaces.places.edit":true,"iplaces.places.destroy":true,"iplaces.categories.manage":true,"iplaces.categories.index":true,"iplaces.categories.create":true,"iplaces.categories.edit":true,"iplaces.categories.destroy":true,"iplaces.schedules.manage":true,"iplaces.schedules.index":true,"iplaces.schedules.create":true,"iplaces.schedules.edit":true,"iplaces.schedules.destroy":true}', '2019-04-16 17:03:02', '2019-06-15 09:29:02'),
	(4, 'editor', 'Editor', '{"iblog.categories.manage":true,"iblog.categories.index":true,"iblog.categories.create":true,"iblog.categories.edit":true,"iblog.categories.destroy":true,"iblog.posts.manage":true,"iblog.posts.index":true,"iblog.posts.create":true,"iblog.posts.edit":true,"iblog.posts.destroy":true,"profile.api.login":true,"profile.user.index":true}', '2019-08-02 10:35:27', '2019-08-02 12:55:40'),
	(5, 'author', 'Author', '{"iblog.posts.manage":true,"iblog.posts.index":true,"iblog.posts.create":true,"iblog.posts.edit":true,"profile.api.login":true,"profile.user.index":true}', '2019-08-02 10:35:30', '2019-08-02 12:55:51');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.role_users
CREATE TABLE IF NOT EXISTS `role_users` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.role_users: ~4 rows (approximately)
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;
INSERT INTO `role_users` (`user_id`, `role_id`, `created_at`, `updated_at`) VALUES
	(1, 1, '2019-04-16 16:21:49', '2019-04-16 16:21:49'),
	(1, 4, '2019-08-02 10:34:37', '2019-08-02 10:34:37'),
	(1, 5, '2019-08-02 10:34:38', '2019-08-02 10:34:39');
/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.setting__settings
CREATE TABLE IF NOT EXISTS `setting__settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plainValue` text COLLATE utf8mb4_unicode_ci,
  `isTranslatable` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `setting__settings_name_unique` (`name`),
  KEY `setting__settings_name_index` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=179 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.setting__settings: ~37 rows (approximately)
/*!40000 ALTER TABLE `setting__settings` DISABLE KEYS */;
INSERT INTO `setting__settings` (`id`, `name`, `plainValue`, `isTranslatable`, `created_at`, `updated_at`) VALUES
	(59, 'core::site-name', NULL, 1, '2019-05-07 00:23:26', '2019-05-07 00:23:26'),
	(60, 'core::site-name-mini', NULL, 1, '2019-05-07 00:23:26', '2019-05-07 00:23:26'),
	(61, 'core::site-description', NULL, 1, '2019-05-07 00:23:26', '2019-05-07 00:23:26'),
	(62, 'core::template', 'Imagina2018', 0, '2019-05-07 00:23:26', '2019-05-07 00:23:26'),
	(63, 'core::analytics-script', NULL, 0, '2019-05-07 00:23:26', '2019-08-15 12:10:12'),
	(64, 'core::locales', '["es"]', 0, '2019-05-07 00:23:26', '2019-05-22 11:40:49'),
	(135, 'isite::logo2', '{"medias_single":{"isite::logo2":null}}', 0, '2019-05-07 20:16:23', '2019-08-05 14:55:50'),
	(138, 'isite::brandPrimary', '#036aad', 0, '2019-05-07 20:16:23', '2019-06-29 10:45:15'),
	(139, 'isite::brandSecondary', '#26a69a', 0, '2019-05-07 20:16:23', '2019-08-02 10:59:01'),
	(140, 'isite::brandTertiary', '#555555', 0, '2019-05-07 20:16:23', '2019-08-02 10:59:01'),
	(141, 'isite::brandNeutral', '#e0e1e2', 0, '2019-05-07 20:16:23', '2019-05-07 22:25:03'),
	(142, 'isite::brandPositive', '#21ba45', 0, '2019-05-07 20:16:23', '2019-05-07 22:25:03'),
	(143, 'isite::brandInfo', '#31ccec', 0, '2019-05-07 20:16:23', '2019-05-07 22:25:03'),
	(144, 'isite::brandWarning', '#f2c037', 0, '2019-05-07 20:16:23', '2019-05-07 22:25:03'),
	(145, 'isite::brandLight', '#bdbdbd', 0, '2019-05-07 20:16:23', '2019-08-02 10:59:01'),
	(146, 'isite::brandDark', '#424242', 0, '2019-05-07 20:16:23', '2019-08-02 10:59:01'),
	(153, 'isite::phones', '[{"value":3163961295},{"value":3202012003}]', 0, '2019-05-07 20:16:23', '2019-06-29 11:18:28'),
	(154, 'isite::addresses', '[{"value":"Cl. 29 #7-54, Ibagu\\u00e9, Tolima"},{"value":"Ibagu\\u00e9"}]', 0, '2019-05-07 20:16:23', '2019-06-29 11:18:28'),
	(155, 'isite::emails', '[{"label":null,"value":"soporte@imaginacolombia.com"},{"label":null,"value":"ventas@imaginacolombia.com"}]', 0, '2019-05-07 20:16:23', '2019-05-14 10:28:41'),
	(156, 'isite::socialNetworks', '[{"label":"facebook","value":"imaginacolombia"},{"label":"twitter","value":"@imaginacolombia"},{"label":"linkedin","value":"imagina colombia"},{"label":"skype","value":"imaginadw"},{"label":"instagram","value":"imaginacolombia"}]', 0, '2019-05-07 20:16:23', '2019-06-29 10:45:15'),
	(157, 'isite::logo3', '{"medias_single":{"isite::logo3":null}}', 0, '2019-05-07 20:53:10', '2019-08-05 14:55:50'),
	(158, 'isite::favicon', '{"medias_single":{"isite::favicon":121}}', 0, '2019-05-07 20:53:10', '2019-08-05 14:55:50'),
	(159, 'isite::brandNegative', '#db2828', 0, '2019-05-16 15:43:12', '2019-08-02 10:59:01'),
	(160, 'isite::brandFaded', '#777777', 0, '2019-05-16 15:43:12', '2019-05-16 15:43:12'),
	(161, 'isite::branchOffices', '[]', 0, '2019-05-16 15:43:12', '2019-08-02 10:59:01'),
	(162, 'iplaces::api-maps', 'AIzaSyBntWHoJz0Q1aR_qpGH8dN1Oi2Q0pgf9Kw', 0, '2019-05-17 14:40:05', '2019-06-29 12:04:37'),
	(164, 'isite::logo1', '{"medias_single":{"isite::logo1":null}}', 0, '2019-05-17 15:04:17', '2019-08-09 16:33:20'),
	(165, 'iforms::from-email', 'info@app.imagina.com.co', 0, '2019-06-10 14:55:39', '2019-06-29 11:03:10'),
	(166, 'iforms::form-emails', 'juanab@imaginacolombia.com', 0, '2019-06-10 14:55:40', '2019-06-26 14:46:23'),
	(167, 'iforms::captcha', '0', 0, '2019-06-10 14:55:40', '2019-06-10 14:55:40'),
	(168, 'iforms::api', NULL, 0, '2019-06-10 14:55:40', '2019-06-10 14:55:40'),
	(169, 'iforms::trans', '0', 0, '2019-06-10 14:55:40', '2019-06-10 14:55:40'),
	(170, 'isite::reCaptchaV2Secret', NULL, 0, '2019-08-02 10:59:01', '2019-08-02 10:59:01'),
	(171, 'isite::reCaptchaV2Site', NULL, 0, '2019-08-02 10:59:01', '2019-08-02 10:59:01'),
	(172, 'isite::reCaptchaV3Secret', NULL, 0, '2019-08-02 10:59:01', '2019-08-02 10:59:01'),
	(173, 'isite::reCaptchaV3Site', NULL, 0, '2019-08-02 10:59:01', '2019-08-02 10:59:01'),
	(174, 'isite::api-maps', NULL, 0, '2019-08-02 10:59:01', '2019-08-02 10:59:01'),
	(175, 'iprofile::registerUsers', '1', 0, '2019-08-13 08:35:52', '2019-08-13 08:35:52'),
	(176, 'iprofile::validateRegisterWithEmail', '0', 0, '2019-08-13 08:35:52', '2019-08-13 08:35:52'),
	(177, 'iprofile::registerExtraFields', '[]', 0, '2019-08-13 08:35:52', '2019-08-13 08:35:52'),
	(178, 'iprofile::userAddressesExtraFields', '[]', 0, '2019-08-13 08:35:52', '2019-08-13 08:35:52');
/*!40000 ALTER TABLE `setting__settings` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.setting__setting_translations
CREATE TABLE IF NOT EXISTS `setting__setting_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `setting_id` int(10) unsigned NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `setting__setting_translations_setting_id_locale_unique` (`setting_id`,`locale`),
  KEY `setting__setting_translations_locale_index` (`locale`),
  CONSTRAINT `setting__setting_translations_setting_id_foreign` FOREIGN KEY (`setting_id`) REFERENCES `setting__settings` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.setting__setting_translations: ~15 rows (approximately)
/*!40000 ALTER TABLE `setting__setting_translations` DISABLE KEYS */;
INSERT INTO `setting__setting_translations` (`id`, `setting_id`, `locale`, `value`, `description`) VALUES
	(19, 59, 'en', NULL, NULL),
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
	(33, 61, 'gn', NULL, NULL);
/*!40000 ALTER TABLE `setting__setting_translations` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.slider__sliders
CREATE TABLE IF NOT EXISTS `slider__sliders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `system_name` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.slider__sliders: ~0 rows (approximately)
/*!40000 ALTER TABLE `slider__sliders` DISABLE KEYS */;
INSERT INTO `slider__sliders` (`id`, `name`, `system_name`, `options`, `active`, `created_at`, `updated_at`) VALUES
	(1, 'Home', 'home', '{"masterRecord":1}', 1, '2019-08-09 15:29:11', '2019-08-13 17:43:32'),
	(2, 'Products', 'products', '{"masterRecord":1}', 1, '2019-08-14 09:40:37', '2019-08-14 09:42:15'),
	(3, 'Galerïa', 'galeria', '{"masterRecord":1}', 1, '2019-08-15 11:41:52', '2019-08-15 11:47:19');
/*!40000 ALTER TABLE `slider__sliders` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.slider__slides
CREATE TABLE IF NOT EXISTS `slider__slides` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slider_id` int(10) unsigned NOT NULL,
  `page_id` int(10) unsigned DEFAULT NULL,
  `position` int(10) unsigned NOT NULL DEFAULT '0',
  `target` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `external_image_url` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'auto',
  PRIMARY KEY (`id`),
  KEY `slider__slides_slider_id_foreign` (`slider_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.slider__slides: 16 rows
/*!40000 ALTER TABLE `slider__slides` DISABLE KEYS */;
INSERT INTO `slider__slides` (`id`, `created_at`, `updated_at`, `slider_id`, `page_id`, `position`, `target`, `options`, `external_image_url`, `type`) VALUES
	(1, '2019-08-09 15:31:42', '2019-08-09 15:31:42', 1, NULL, 0, NULL, '{"masterRecord":1}', NULL, 'auto'),
	(2, '2019-08-14 09:41:09', '2019-08-14 09:41:09', 2, NULL, 0, NULL, '{"masterRecord":0}', NULL, 'auto'),
	(3, '2019-08-14 09:41:17', '2019-08-14 09:41:17', 2, NULL, 1, NULL, '{"masterRecord":0}', NULL, 'auto'),
	(4, '2019-08-14 09:41:23', '2019-08-14 09:41:23', 2, NULL, 2, NULL, '{"masterRecord":0}', NULL, 'auto'),
	(5, '2019-08-14 09:41:31', '2019-08-14 09:41:31', 2, NULL, 3, NULL, '{"masterRecord":0}', NULL, 'auto'),
	(6, '2019-08-14 09:41:38', '2019-08-14 09:41:38', 2, NULL, 4, NULL, '{"masterRecord":0}', NULL, 'auto'),
	(7, '2019-08-14 09:41:48', '2019-08-14 09:41:48', 2, NULL, 5, NULL, '{"masterRecord":0}', NULL, 'auto'),
	(8, '2019-08-14 09:41:57', '2019-08-14 09:41:57', 2, NULL, 6, NULL, '{"masterRecord":0}', NULL, 'auto'),
	(9, '2019-08-14 09:42:03', '2019-08-14 09:42:03', 2, NULL, 7, NULL, '{"masterRecord":0}', NULL, 'auto'),
	(11, '2019-08-15 11:44:56', '2019-08-15 11:44:56', 3, NULL, 0, NULL, '{"masterRecord":0}', NULL, '360'),
	(12, '2019-08-15 11:46:39', '2019-08-15 11:46:39', 3, NULL, 1, NULL, '{"masterRecord":0}', NULL, 'auto'),
	(13, '2019-08-15 11:46:45', '2019-08-15 11:46:45', 3, NULL, 2, NULL, '{"masterRecord":0}', NULL, 'auto'),
	(14, '2019-08-15 11:46:50', '2019-08-15 11:46:50', 3, NULL, 3, NULL, '{"masterRecord":0}', NULL, 'auto'),
	(15, '2019-08-15 11:47:01', '2019-08-15 11:47:01', 3, NULL, 4, NULL, '{"masterRecord":0}', NULL, 'auto'),
	(16, '2019-08-15 11:47:07', '2019-08-15 11:47:07', 3, NULL, 5, NULL, '{"masterRecord":0}', NULL, 'auto'),
	(17, '2019-08-15 11:47:16', '2019-08-15 11:47:16', 3, NULL, 6, NULL, '{"masterRecord":0}', NULL, 'auto');
/*!40000 ALTER TABLE `slider__slides` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.slider__slide_translations
CREATE TABLE IF NOT EXISTS `slider__slide_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slide_id` int(10) unsigned NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caption` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uri` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `custom_html` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slider__slide_translations_slide_id_locale_unique` (`slide_id`,`locale`),
  KEY `slider__slide_translations_locale_index` (`locale`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.slider__slide_translations: 17 rows
/*!40000 ALTER TABLE `slider__slide_translations` DISABLE KEYS */;
INSERT INTO `slider__slide_translations` (`id`, `created_at`, `updated_at`, `slide_id`, `locale`, `title`, `caption`, `url`, `uri`, `active`, `custom_html`) VALUES
	(1, '2019-08-09 15:31:42', '2019-08-13 17:43:30', 1, 'es', 'Imagina colombia', 'Imagina colombia', NULL, NULL, 1, 'imagina las posibilidades'),
	(2, '2019-08-14 09:41:09', '2019-08-14 09:41:09', 2, 'es', NULL, NULL, NULL, NULL, 1, NULL),
	(3, '2019-08-14 09:41:17', '2019-08-14 09:41:17', 3, 'es', NULL, NULL, NULL, NULL, 1, NULL),
	(4, '2019-08-14 09:41:23', '2019-08-14 09:41:23', 4, 'es', NULL, NULL, NULL, NULL, 1, NULL),
	(5, '2019-08-14 09:41:31', '2019-08-14 09:41:31', 5, 'es', NULL, NULL, NULL, NULL, 1, NULL),
	(6, '2019-08-14 09:41:38', '2019-08-14 09:41:38', 6, 'es', NULL, NULL, NULL, NULL, 1, NULL),
	(7, '2019-08-14 09:41:48', '2019-08-14 09:41:48', 7, 'es', NULL, NULL, NULL, NULL, 1, NULL),
	(8, '2019-08-14 09:41:57', '2019-08-14 09:41:57', 8, 'es', NULL, NULL, NULL, NULL, 1, NULL),
	(9, '2019-08-14 09:42:03', '2019-08-14 09:42:03', 9, 'es', NULL, NULL, NULL, NULL, 1, NULL),
	(10, '2019-08-15 11:42:40', '2019-08-15 11:42:40', 10, 'es', NULL, NULL, NULL, NULL, 1, NULL),
	(11, '2019-08-15 11:44:56', '2019-08-15 11:44:56', 11, 'es', NULL, NULL, NULL, NULL, 1, NULL),
	(12, '2019-08-15 11:46:39', '2019-08-15 11:46:39', 12, 'es', NULL, NULL, NULL, NULL, 1, NULL),
	(13, '2019-08-15 11:46:45', '2019-08-15 11:46:45', 13, 'es', NULL, NULL, NULL, NULL, 1, NULL),
	(14, '2019-08-15 11:46:50', '2019-08-15 11:46:50', 14, 'es', NULL, NULL, NULL, NULL, 1, NULL),
	(15, '2019-08-15 11:47:01', '2019-08-15 11:47:01', 15, 'es', NULL, NULL, NULL, NULL, 1, NULL),
	(16, '2019-08-15 11:47:07', '2019-08-15 11:47:07', 16, 'es', NULL, NULL, NULL, NULL, 1, NULL),
	(17, '2019-08-15 11:47:16', '2019-08-15 11:47:16', 17, 'es', NULL, NULL, NULL, NULL, 1, NULL);
/*!40000 ALTER TABLE `slider__slide_translations` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.tag__tagged
CREATE TABLE IF NOT EXISTS `tag__tagged` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `taggable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `taggable_id` int(10) unsigned NOT NULL,
  `tag_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tag__tagged_taggable_type_taggable_id_index` (`taggable_type`,`taggable_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.tag__tagged: 8 rows
/*!40000 ALTER TABLE `tag__tagged` DISABLE KEYS */;
INSERT INTO `tag__tagged` (`id`, `taggable_type`, `taggable_id`, `tag_id`) VALUES
	(1, 'Modules\\Media\\Entities\\File', 36, 1),
	(2, 'Modules\\Media\\Entities\\File', 36, 2),
	(8, 'Modules\\Iblog\\Entities\\Post', 3, 7),
	(7, 'Modules\\Iblog\\Entities\\Post', 2, 7),
	(6, 'Modules\\Media\\Entities\\File', 83, 6),
	(9, 'Modules\\Media\\Entities\\File', 94, 8),
	(10, 'Modules\\Iblog\\Entities\\Post', 4, 9),
	(11, 'Modules\\Iblog\\Entities\\Post', 4, 10);
/*!40000 ALTER TABLE `tag__tagged` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.tag__tags
CREATE TABLE IF NOT EXISTS `tag__tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `namespace` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.tag__tags: ~10 rows (approximately)
/*!40000 ALTER TABLE `tag__tags` DISABLE KEYS */;
INSERT INTO `tag__tags` (`id`, `namespace`, `created_at`, `updated_at`) VALUES
	(1, 'asgardcms/media', '2019-05-01 17:09:44', '2019-05-01 17:09:44'),
	(2, 'asgardcms/media', '2019-05-01 17:09:44', '2019-05-01 17:09:44'),
	(3, 'asgardcms/media', '2019-05-10 17:16:51', '2019-05-10 17:16:51'),
	(4, 'asgardcms/media', '2019-05-10 17:16:51', '2019-05-10 17:16:51'),
	(5, 'asgardcms/media', '2019-05-10 17:16:51', '2019-05-10 17:16:51'),
	(6, 'asgardcms/media', '2019-05-10 19:52:08', '2019-05-10 19:52:08'),
	(7, 'asgardcms/post', '2019-05-21 14:01:01', '2019-05-21 14:01:01'),
	(8, 'asgardcms/media', '2019-05-21 17:16:35', '2019-05-21 17:16:35'),
	(9, 'asgardcms/post', '2019-05-21 17:26:22', '2019-05-21 17:26:22'),
	(10, 'asgardcms/post', '2019-05-21 17:26:22', '2019-05-21 17:26:22');
/*!40000 ALTER TABLE `tag__tags` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.tag__tag_translations
CREATE TABLE IF NOT EXISTS `tag__tag_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag_id` int(10) unsigned NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tag__tag_translations_tag_id_locale_unique` (`tag_id`,`locale`),
  KEY `tag__tag_translations_locale_index` (`locale`),
  CONSTRAINT `tag__tag_translations_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tag__tags` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.tag__tag_translations: ~10 rows (approximately)
/*!40000 ALTER TABLE `tag__tag_translations` DISABLE KEYS */;
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
/*!40000 ALTER TABLE `tag__tag_translations` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.throttle
CREATE TABLE IF NOT EXISTS `throttle` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `throttle_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.throttle: ~28 rows (approximately)
/*!40000 ALTER TABLE `throttle` DISABLE KEYS */;
INSERT INTO `throttle` (`id`, `user_id`, `type`, `ip`, `created_at`, `updated_at`) VALUES
	(1, NULL, 'global', NULL, '2019-04-17 20:18:24', '2019-04-17 20:18:24'),
	(2, NULL, 'ip', '181.56.253.64', '2019-04-17 20:18:24', '2019-04-17 20:18:24'),
	(3, NULL, 'global', NULL, '2019-04-22 14:38:35', '2019-04-22 14:38:35'),
	(4, NULL, 'ip', '181.56.253.64', '2019-04-22 14:38:35', '2019-04-22 14:38:35'),
	(5, 1, 'user', NULL, '2019-04-22 14:38:35', '2019-04-22 14:38:35'),
	(6, NULL, 'global', NULL, '2019-04-25 21:04:08', '2019-04-25 21:04:08'),
	(7, NULL, 'ip', '181.56.253.64', '2019-04-25 21:04:08', '2019-04-25 21:04:08'),
	(8, NULL, 'global', NULL, '2019-04-25 21:04:21', '2019-04-25 21:04:21'),
	(9, NULL, 'ip', '181.56.253.64', '2019-04-25 21:04:21', '2019-04-25 21:04:21'),
	(10, NULL, 'global', NULL, '2019-04-25 21:04:44', '2019-04-25 21:04:44'),
	(11, NULL, 'ip', '181.56.253.64', '2019-04-25 21:04:44', '2019-04-25 21:04:44'),
	(12, NULL, 'global', NULL, '2019-04-25 21:04:47', '2019-04-25 21:04:47'),
	(13, NULL, 'ip', '181.56.253.64', '2019-04-25 21:04:47', '2019-04-25 21:04:47'),
	(14, NULL, 'global', NULL, '2019-04-25 21:33:58', '2019-04-25 21:33:58'),
	(15, NULL, 'ip', '181.56.253.64', '2019-04-25 21:33:58', '2019-04-25 21:33:58'),
	(16, NULL, 'global', NULL, '2019-04-25 21:40:42', '2019-04-25 21:40:42'),
	(17, NULL, 'ip', '181.56.253.64', '2019-04-25 21:40:42', '2019-04-25 21:40:42'),
	(18, NULL, 'global', NULL, '2019-04-25 21:42:27', '2019-04-25 21:42:27'),
	(19, NULL, 'ip', '181.56.253.64', '2019-04-25 21:42:27', '2019-04-25 21:42:27'),
	(20, NULL, 'global', NULL, '2019-04-30 14:08:51', '2019-04-30 14:08:51'),
	(21, NULL, 'ip', '181.56.253.64', '2019-04-30 14:08:51', '2019-04-30 14:08:51'),
	(22, 1, 'user', NULL, '2019-04-30 14:08:51', '2019-04-30 14:08:51'),
	(23, NULL, 'global', NULL, '2019-04-30 20:44:10', '2019-04-30 20:44:10'),
	(24, NULL, 'ip', '181.56.253.64', '2019-04-30 20:44:10', '2019-04-30 20:44:10'),
	(25, 1, 'user', NULL, '2019-04-30 20:44:10', '2019-04-30 20:44:10'),
	(26, NULL, 'global', NULL, '2019-05-01 15:14:59', '2019-05-01 15:14:59'),
	(27, NULL, 'ip', '181.56.253.64', '2019-05-01 15:14:59', '2019-05-01 15:14:59'),
	(28, 1, 'user', NULL, '2019-05-01 15:14:59', '2019-05-01 15:14:59');
/*!40000 ALTER TABLE `throttle` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.translation__translations
CREATE TABLE IF NOT EXISTS `translation__translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `translation__translations_key_index` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.translation__translations: ~0 rows (approximately)
/*!40000 ALTER TABLE `translation__translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `translation__translations` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.translation__translation_translations
CREATE TABLE IF NOT EXISTS `translation__translation_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `translation_id` int(10) unsigned NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_trans_id_locale_unique` (`translation_id`,`locale`),
  KEY `translation__translation_translations_locale_index` (`locale`),
  CONSTRAINT `translation__translation_translations_translation_id_foreign` FOREIGN KEY (`translation_id`) REFERENCES `translation__translations` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.translation__translation_translations: ~0 rows (approximately)
/*!40000 ALTER TABLE `translation__translation_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `translation__translation_translations` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.users: ~0 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `email`, `password`, `permissions`, `last_login`, `first_name`, `last_name`, `created_at`, `updated_at`) VALUES
	(1, 'soporte@imaginacolombia.com', '$2y$10$XQfuhJ/ySWpeihs3kTZK.eYonaDbSJsm.Ox/TCfaPvk2vtNbG9VEq', '', '2019-08-15 17:15:34', 'Imagina', 'Colombia', '2019-04-16 16:21:49', '2019-08-15 17:15:34');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Dumping structure for table appimagi_enbogot.user_tokens
CREATE TABLE IF NOT EXISTS `user_tokens` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `access_token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_tokens_access_token_unique` (`access_token`),
  KEY `user_tokens_user_id_foreign` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table appimagi_enbogot.user_tokens: 7 rows
/*!40000 ALTER TABLE `user_tokens` DISABLE KEYS */;
INSERT INTO `user_tokens` (`id`, `user_id`, `access_token`, `created_at`, `updated_at`) VALUES
	(1, 1, '4fcbd7a1-0817-482c-8d58-91df263b36af', '2019-04-16 16:21:50', '2019-04-16 16:21:50');
/*!40000 ALTER TABLE `user_tokens` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
