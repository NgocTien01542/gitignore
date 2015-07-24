-- phpMyAdmin SQL Dump
-- version 4.4.3
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 23, 2015 at 07:26 PM
-- Server version: 5.5.41-MariaDB
-- PHP Version: 5.6.8

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `enagara`
--
CREATE DATABASE IF NOT EXISTS `enagara` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `enagara`;

-- --------------------------------------------------------

--
-- Table structure for table `dtb_api_account`
--

CREATE TABLE IF NOT EXISTS `dtb_api_account` (
  `api_account_id` int(11) NOT NULL,
  `api_access_key` text NOT NULL,
  `api_secret_key` text NOT NULL,
  `enable` smallint(6) NOT NULL DEFAULT '0',
  `del_flg` smallint(6) NOT NULL DEFAULT '0',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dtb_api_account_api_account_id_seq`
--

CREATE TABLE IF NOT EXISTS `dtb_api_account_api_account_id_seq` (
  `sequence` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dtb_api_config`
--

CREATE TABLE IF NOT EXISTS `dtb_api_config` (
  `api_config_id` int(11) NOT NULL,
  `operation_name` text NOT NULL,
  `operation_description` text,
  `auth_types` text NOT NULL,
  `enable` smallint(6) NOT NULL DEFAULT '0',
  `is_log` smallint(6) NOT NULL DEFAULT '0',
  `sub_data` text,
  `del_flg` smallint(6) NOT NULL DEFAULT '0',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dtb_api_config_api_config_id_seq`
--

CREATE TABLE IF NOT EXISTS `dtb_api_config_api_config_id_seq` (
  `sequence` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dtb_baseinfo`
--

CREATE TABLE IF NOT EXISTS `dtb_baseinfo` (
  `id` int(11) NOT NULL DEFAULT '0',
  `company_name` text,
  `company_kana` text,
  `zip01` text,
  `zip02` text,
  `zipcode` text,
  `pref` smallint(6) DEFAULT NULL,
  `addr01` text,
  `addr02` text,
  `tel01` text,
  `tel02` text,
  `tel03` text,
  `fax01` text,
  `fax02` text,
  `fax03` text,
  `business_hour` text,
  `law_company` text,
  `law_manager` text,
  `law_zip01` text,
  `law_zip02` text,
  `law_zipcode` text,
  `law_pref` smallint(6) DEFAULT NULL,
  `law_addr01` text,
  `law_addr02` text,
  `law_tel01` text,
  `law_tel02` text,
  `law_tel03` text,
  `law_fax01` text,
  `law_fax02` text,
  `law_fax03` text,
  `law_email` text,
  `law_url` text,
  `law_term01` text,
  `law_term02` text,
  `law_term03` text,
  `law_term04` text,
  `law_term05` text,
  `law_term06` text,
  `law_term07` text,
  `law_term08` text,
  `law_term09` text,
  `law_term10` text,
  `tax` decimal(10,0) NOT NULL DEFAULT '5',
  `tax_rule` smallint(6) NOT NULL DEFAULT '1',
  `email01` text,
  `email02` text,
  `email03` text,
  `email04` text,
  `email05` text,
  `free_rule` decimal(10,0) DEFAULT NULL,
  `shop_name` text,
  `shop_kana` text,
  `shop_name_eng` text,
  `point_rate` decimal(10,0) NOT NULL DEFAULT '0',
  `welcome_point` decimal(10,0) NOT NULL DEFAULT '0',
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `top_tpl` text,
  `product_tpl` text,
  `detail_tpl` text,
  `mypage_tpl` text,
  `good_traded` text,
  `message` text,
  `regular_holiday_ids` text,
  `latitude` text,
  `longitude` text,
  `downloadable_days` decimal(10,0) DEFAULT '30',
  `downloadable_days_unlimited` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_baseinfo`
--

INSERT INTO `dtb_baseinfo` (`id`, `company_name`, `company_kana`, `zip01`, `zip02`, `zipcode`, `pref`, `addr01`, `addr02`, `tel01`, `tel02`, `tel03`, `fax01`, `fax02`, `fax03`, `business_hour`, `law_company`, `law_manager`, `law_zip01`, `law_zip02`, `law_zipcode`, `law_pref`, `law_addr01`, `law_addr02`, `law_tel01`, `law_tel02`, `law_tel03`, `law_fax01`, `law_fax02`, `law_fax03`, `law_email`, `law_url`, `law_term01`, `law_term02`, `law_term03`, `law_term04`, `law_term05`, `law_term06`, `law_term07`, `law_term08`, `law_term09`, `law_term10`, `tax`, `tax_rule`, `email01`, `email02`, `email03`, `email04`, `email05`, `free_rule`, `shop_name`, `shop_kana`, `shop_name_eng`, `point_rate`, `welcome_point`, `update_date`, `top_tpl`, `product_tpl`, `detail_tpl`, `mypage_tpl`, `good_traded`, `message`, `regular_holiday_ids`, `latitude`, `longitude`, `downloadable_days`, `downloadable_days_unlimited`) VALUES
(1, 'MOONSHOT Co.,Ltd.', NULL, NULL, NULL, NULL, NULL, '〒604-0075', '京都府京都市中京区西竹屋町503', '090', '9664', '7136', NULL, NULL, NULL, NULL, '株式会社MOONSHOT', '長良賢之', NULL, NULL, '1', NULL, '〒604-0075', '京都府京都市中京区西竹屋町503', '090', '9664', '7136', NULL, NULL, NULL, 'nagara.masayuki@moonshot-kyoto.co.jp', 'http://www.moonshot-kyoto.co.jp/', '・商品の送料\r\n・クレジットカードでご購入の際のクレジット会社にかかる費用', '1.画面左側の商品カテゴリーを選んでクリックすると、右側にそのカテゴリーの商品が表示されます。\r\n2.購入したいアイテムをクリックすると商品の詳細を見ることが出来ます。\r\n　　購入したい数量を記入して「カートに入れる」をクリックすると、ショッピングカートに商品が入ります。', 'クレジット、Paypal', '支払用決済メールの期日までに支払い処理をして下さい。2日を超えた場合は一旦キャンセル扱いとさせていただきます。再度、御注文いただきますようお願いします。銀行振込及び代金引換は取り扱っておりません。', 'ご注文受付後、5日以内にお届けいたします。天候不順・配送業者の都合・その他何らかの理由により遅延する場合はメール等でお知らせいたします。', '商品の返品・交換には初期不良の場合以外では応じられません。', NULL, NULL, NULL, NULL, '5', 1, 'info@e-nagara.com', 'info@e-nagara.com', 'info@e-nagara.com', 'info@e-nagara.com', 'tuanlt@lifetimetech.vn', NULL, 'e-nagara', NULL, NULL, '0', '0', '2015-07-23 08:42:51', 'default1', 'default1', 'default1', 'default1', '随身WiFi 和 SIM卡\r\n日本无线上网 移动wifi 租赁', '你在日本旅游时把它带在身边，打开电源后，你的身边就会拥有一个随时随地都可用的WIFI网络，然后你的手机、电脑、平板都可以畅快地上网啦。可考虑使用日本的4G网络的随身WIFI，理论上下载速度可以达到：75Mb，就算实际使用环境会有一定影响，但一样会很快。\r\n\r\n使用随身WIFI上网，手机不用换卡，用自己的手机号码在日本照样可以上网，收发微信等。而网络就全靠WIFI搞定。（这点对于旅游时，还需要应付紧急电话的商务人士来说，非常重要）同行人里，一人带着“随身WIFI”设备，大家所有的手机、平板等就都可以上网了，独乐乐不如众乐乐。最多可以支持8-10台手机等同时上网呢。费用大概60元每天，人多均摊就更便宜了。', NULL, NULL, NULL, '30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dtb_best_products`
--

CREATE TABLE IF NOT EXISTS `dtb_best_products` (
  `best_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `rank` int(11) NOT NULL DEFAULT '0',
  `product_id` int(11) NOT NULL,
  `title` text,
  `comment` text,
  `creator_id` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `del_flg` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_best_products`
--

INSERT INTO `dtb_best_products` (`best_id`, `category_id`, `rank`, `product_id`, `title`, `comment`, `creator_id`, `create_date`, `update_date`, `del_flg`) VALUES
(3, 0, 1, 5, NULL, 'test comment', 2, '2015-07-23 10:02:24', '2015-07-23 10:02:24', 0),
(4, 0, 2, 4, NULL, 'test', 2, '2015-07-23 10:02:35', '2015-07-23 10:02:35', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dtb_best_products_best_id_seq`
--

CREATE TABLE IF NOT EXISTS `dtb_best_products_best_id_seq` (
  `sequence` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_best_products_best_id_seq`
--

INSERT INTO `dtb_best_products_best_id_seq` (`sequence`) VALUES
(4);

-- --------------------------------------------------------

--
-- Table structure for table `dtb_bkup`
--

CREATE TABLE IF NOT EXISTS `dtb_bkup` (
  `bkup_name` text NOT NULL,
  `bkup_memo` text,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dtb_bloc`
--

CREATE TABLE IF NOT EXISTS `dtb_bloc` (
  `device_type_id` int(11) NOT NULL,
  `bloc_id` int(11) NOT NULL,
  `bloc_name` text,
  `tpl_path` text,
  `filename` text NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `php_path` text,
  `deletable_flg` smallint(6) NOT NULL DEFAULT '1',
  `plugin_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_bloc`
--

INSERT INTO `dtb_bloc` (`device_type_id`, `bloc_id`, `bloc_name`, `tpl_path`, `filename`, `create_date`, `update_date`, `php_path`, `deletable_flg`, `plugin_id`) VALUES
(1, 1, 'Site logo', 'site_logo.tpl', 'site_logo', '2015-07-15 10:21:00', '2015-07-15 10:21:00', NULL, 0, NULL),
(1, 2, 'New information', 'news.tpl', 'news', '2015-07-15 10:21:00', '2015-07-15 10:21:00', 'frontparts/bloc/news.php', 0, NULL),
(1, 3, 'Recommended product', 'recommend.tpl', 'recommend', '2015-07-15 10:21:00', '2015-07-15 10:21:00', 'frontparts/bloc/recommend.php', 0, NULL),
(1, 4, 'Category', 'category.tpl', 'category', '2015-07-15 10:21:00', '2015-07-15 10:21:00', 'frontparts/bloc/category.php', 0, NULL),
(2, 1, 'New information', 'news.tpl', 'news', '2015-07-15 10:21:00', '2015-07-15 10:21:00', 'frontparts/bloc/news.php', 0, NULL),
(2, 2, 'Login', 'login.tpl', 'login', '2015-07-15 10:21:00', '2015-07-15 10:21:00', 'frontparts/bloc/login.php', 0, NULL),
(2, 3, 'Recommended product', 'recommend.tpl', 'recommend', '2015-07-15 10:21:00', '2015-07-15 10:21:00', 'frontparts/bloc/recommend.php', 0, NULL),
(2, 4, 'Category', 'category.tpl', 'category', '2015-07-15 10:21:01', '2015-07-15 10:21:01', 'frontparts/bloc/category.php', 0, NULL),
(2, 5, '[Header] Login', 'login_header.tpl', 'login_header', '2015-07-15 10:21:01', '2015-07-15 10:21:01', 'frontparts/bloc/login_header.php', 0, NULL),
(2, 6, '[Header] Navi', 'navi_header.tpl', 'navi_header', '2015-07-15 10:21:01', '2015-07-15 10:21:01', 'frontparts/bloc/navi_header.php', 0, NULL),
(2, 7, '[Footer] Login', 'login_footer.tpl', 'login_footer', '2015-07-15 10:21:01', '2015-07-15 10:21:01', 'frontparts/bloc/login_footer.php', 0, NULL),
(2, 8, '[Footer] Navi', 'navi_footer.tpl', 'navi_footer', '2015-07-15 10:21:01', '2015-07-15 10:21:01', 'frontparts/bloc/navi_footer.php', 0, NULL),
(10, 1, 'Category', 'category.tpl', 'category', '2015-07-15 10:21:00', '2015-07-15 10:21:00', 'frontparts/bloc/category.php', 0, NULL),
(10, 2, 'Usage guide', 'guide.tpl', 'guide', '2015-07-15 10:21:00', '2015-07-23 08:58:54', NULL, 0, NULL),
(10, 3, 'Inside of cart', 'cart.tpl', 'cart', '2015-07-15 10:21:00', '2015-07-15 10:21:00', 'frontparts/bloc/cart.php', 0, NULL),
(10, 4, 'Product search', 'search_products.tpl', 'search_products', '2015-07-15 10:21:00', '2015-07-15 10:21:00', 'frontparts/bloc/search_products.php', 0, NULL),
(10, 5, 'New information', 'news.tpl', 'news', '2015-07-15 10:21:00', '2015-07-15 10:21:00', 'frontparts/bloc/news.php', 0, NULL),
(10, 6, 'Login', 'login.tpl', 'login', '2015-07-15 10:21:00', '2015-07-15 10:21:00', 'frontparts/bloc/login.php', 0, NULL),
(10, 7, 'Recommended product', 'recommend.tpl', 'recommend', '2015-07-15 10:21:00', '2015-07-15 10:21:00', 'frontparts/bloc/recommend.php', 0, NULL),
(10, 8, 'Calendar', 'calendar.tpl', 'calendar', '2015-07-15 10:21:00', '2015-07-15 10:21:00', 'frontparts/bloc/calendar.php', 0, NULL),
(10, 9, '[Header] Login', 'login_header.tpl', 'login_header', '2015-07-15 10:21:00', '2015-07-15 10:21:00', 'frontparts/bloc/login_header.php', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dtb_blocposition`
--

CREATE TABLE IF NOT EXISTS `dtb_blocposition` (
  `device_type_id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL,
  `target_id` int(11) NOT NULL,
  `bloc_id` int(11) NOT NULL,
  `bloc_row` int(11) DEFAULT NULL,
  `anywhere` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_blocposition`
--

INSERT INTO `dtb_blocposition` (`device_type_id`, `page_id`, `target_id`, `bloc_id`, `bloc_row`, `anywhere`) VALUES
(1, 1, 2, 2, 1, 0),
(1, 1, 2, 3, 2, 0),
(1, 1, 2, 4, 3, 0),
(1, 1, 10, 1, 1, 0),
(2, 1, 4, 1, 4, 0),
(2, 1, 4, 2, 1, 0),
(2, 1, 4, 3, 2, 0),
(2, 1, 4, 4, 3, 0),
(2, 1, 6, 7, 2, 0),
(2, 1, 6, 8, 1, 0),
(2, 1, 10, 5, 1, 0),
(2, 2, 6, 7, 2, 0),
(2, 2, 6, 8, 1, 0),
(2, 2, 10, 6, 1, 0),
(2, 3, 6, 7, 2, 0),
(2, 3, 6, 8, 1, 0),
(2, 3, 10, 6, 1, 0),
(2, 4, 6, 7, 2, 0),
(2, 4, 6, 8, 1, 0),
(2, 4, 10, 6, 1, 0),
(2, 5, 6, 7, 2, 0),
(2, 5, 6, 8, 1, 0),
(2, 5, 10, 6, 1, 0),
(2, 6, 6, 7, 2, 0),
(2, 6, 6, 8, 1, 0),
(2, 6, 10, 6, 1, 0),
(2, 7, 6, 7, 2, 0),
(2, 7, 6, 8, 1, 0),
(2, 7, 10, 6, 1, 0),
(2, 8, 6, 7, 2, 0),
(2, 8, 6, 8, 1, 0),
(2, 8, 10, 6, 1, 0),
(2, 9, 6, 7, 2, 0),
(2, 9, 6, 8, 1, 0),
(2, 9, 10, 6, 1, 0),
(2, 10, 6, 7, 2, 0),
(2, 10, 6, 8, 1, 0),
(2, 10, 10, 6, 1, 0),
(2, 11, 6, 7, 2, 0),
(2, 11, 6, 8, 1, 0),
(2, 11, 10, 6, 1, 0),
(2, 12, 6, 7, 2, 0),
(2, 12, 6, 8, 1, 0),
(2, 12, 10, 6, 1, 0),
(2, 13, 6, 7, 2, 0),
(2, 13, 6, 8, 1, 0),
(2, 13, 10, 6, 1, 0),
(2, 14, 6, 7, 2, 0),
(2, 14, 6, 8, 1, 0),
(2, 14, 10, 6, 1, 0),
(2, 15, 6, 7, 2, 0),
(2, 15, 6, 8, 1, 0),
(2, 15, 10, 6, 1, 0),
(2, 16, 6, 7, 2, 0),
(2, 16, 6, 8, 1, 0),
(2, 16, 10, 6, 1, 0),
(2, 17, 6, 7, 2, 0),
(2, 17, 6, 8, 1, 0),
(2, 17, 10, 6, 1, 0),
(2, 18, 6, 7, 2, 0),
(2, 18, 6, 8, 1, 0),
(2, 18, 10, 6, 1, 0),
(2, 19, 6, 7, 2, 0),
(2, 19, 6, 8, 1, 0),
(2, 19, 10, 6, 1, 0),
(2, 20, 6, 7, 2, 0),
(2, 20, 6, 8, 1, 0),
(2, 20, 10, 6, 1, 0),
(2, 21, 6, 7, 2, 0),
(2, 21, 6, 8, 1, 0),
(2, 21, 10, 6, 1, 0),
(2, 22, 6, 7, 2, 0),
(2, 22, 6, 8, 1, 0),
(2, 22, 10, 6, 1, 0),
(2, 23, 6, 7, 2, 0),
(2, 23, 6, 8, 1, 0),
(2, 23, 10, 6, 1, 0),
(2, 24, 6, 7, 2, 0),
(2, 24, 6, 8, 1, 0),
(2, 24, 10, 6, 1, 0),
(2, 25, 6, 7, 2, 0),
(2, 25, 6, 8, 1, 0),
(2, 25, 10, 6, 1, 0),
(2, 26, 6, 7, 2, 0),
(2, 26, 6, 8, 1, 0),
(2, 26, 10, 6, 1, 0),
(2, 27, 6, 7, 2, 0),
(2, 27, 6, 8, 1, 0),
(2, 27, 10, 6, 1, 0),
(2, 28, 6, 7, 2, 0),
(2, 28, 6, 8, 1, 0),
(2, 28, 10, 6, 1, 0),
(2, 29, 6, 7, 2, 0),
(2, 29, 6, 8, 1, 0),
(2, 29, 10, 6, 1, 0),
(10, 1, 1, 1, 2, 0),
(10, 1, 1, 2, 3, 0),
(10, 1, 1, 3, 1, 0),
(10, 1, 3, 4, 2, 0),
(10, 1, 3, 6, 1, 0),
(10, 1, 3, 8, 3, 0),
(10, 1, 4, 5, 2, 0),
(10, 1, 4, 7, 1, 0),
(10, 1, 10, 9, 1, 1),
(10, 2, 1, 1, 2, 0),
(10, 2, 1, 2, 3, 0),
(10, 2, 1, 3, 1, 0),
(10, 3, 1, 1, 2, 0),
(10, 3, 1, 2, 3, 0),
(10, 3, 1, 3, 1, 0),
(10, 4, 1, 1, 2, 0),
(10, 4, 1, 2, 3, 0),
(10, 4, 1, 3, 1, 0),
(10, 5, 1, 1, 2, 0),
(10, 5, 1, 2, 3, 0),
(10, 5, 1, 3, 1, 0),
(10, 6, 1, 1, 2, 0),
(10, 6, 1, 2, 3, 0),
(10, 6, 1, 3, 1, 0),
(10, 7, 1, 1, 2, 0),
(10, 7, 1, 2, 3, 0),
(10, 7, 1, 3, 1, 0),
(10, 8, 1, 1, 2, 0),
(10, 8, 1, 2, 3, 0),
(10, 8, 1, 3, 1, 0),
(10, 9, 1, 1, 2, 0),
(10, 9, 1, 2, 3, 0),
(10, 9, 1, 3, 1, 0),
(10, 10, 1, 1, 2, 0),
(10, 10, 1, 2, 3, 0),
(10, 10, 1, 3, 1, 0),
(10, 11, 1, 1, 2, 0),
(10, 11, 1, 2, 3, 0),
(10, 11, 1, 3, 1, 0),
(10, 12, 1, 1, 2, 0),
(10, 12, 1, 2, 3, 0),
(10, 12, 1, 3, 1, 0),
(10, 13, 1, 1, 2, 0),
(10, 13, 1, 2, 3, 0),
(10, 13, 1, 3, 1, 0),
(10, 14, 1, 1, 2, 0),
(10, 14, 1, 2, 3, 0),
(10, 14, 1, 3, 1, 0),
(10, 15, 1, 1, 2, 0),
(10, 15, 1, 2, 3, 0),
(10, 15, 1, 3, 1, 0),
(10, 16, 1, 1, 2, 0),
(10, 16, 1, 2, 3, 0),
(10, 16, 1, 3, 1, 0),
(10, 17, 1, 1, 2, 0),
(10, 17, 1, 2, 3, 0),
(10, 17, 1, 3, 1, 0),
(10, 18, 1, 1, 2, 0),
(10, 18, 1, 2, 3, 0),
(10, 18, 1, 3, 1, 0),
(10, 19, 1, 1, 2, 0),
(10, 19, 1, 2, 3, 0),
(10, 19, 1, 3, 1, 0),
(10, 20, 1, 1, 2, 0),
(10, 20, 1, 2, 3, 0),
(10, 20, 1, 3, 1, 0),
(10, 21, 1, 1, 2, 0),
(10, 21, 1, 2, 3, 0),
(10, 21, 1, 3, 1, 0),
(10, 22, 1, 1, 2, 0),
(10, 22, 1, 2, 3, 0),
(10, 22, 1, 3, 1, 0),
(10, 23, 1, 1, 2, 0),
(10, 23, 1, 2, 3, 0),
(10, 23, 1, 3, 1, 0),
(10, 24, 1, 1, 2, 0),
(10, 24, 1, 2, 3, 0),
(10, 24, 1, 3, 1, 0),
(10, 25, 1, 1, 2, 0),
(10, 25, 1, 2, 3, 0),
(10, 25, 1, 3, 1, 0),
(10, 26, 1, 1, 2, 0),
(10, 26, 1, 2, 3, 0),
(10, 26, 1, 3, 1, 0),
(10, 27, 1, 1, 2, 0),
(10, 27, 1, 2, 3, 0),
(10, 27, 1, 3, 1, 0),
(10, 28, 1, 1, 2, 0),
(10, 28, 1, 2, 3, 0),
(10, 28, 1, 3, 1, 0),
(10, 29, 1, 1, 2, 0),
(10, 29, 1, 2, 3, 0),
(10, 29, 1, 3, 1, 0),
(10, 30, 1, 1, 2, 0),
(10, 30, 1, 2, 3, 0),
(10, 30, 1, 3, 1, 0),
(10, 31, 1, 1, 2, 0),
(10, 31, 1, 2, 3, 0),
(10, 31, 1, 3, 1, 0),
(10, 32, 1, 1, 2, 0),
(10, 32, 1, 2, 3, 0),
(10, 32, 1, 3, 1, 0),
(10, 33, 1, 1, 2, 0),
(10, 33, 1, 2, 3, 0),
(10, 33, 1, 3, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `dtb_bloc_bloc_id_seq`
--

CREATE TABLE IF NOT EXISTS `dtb_bloc_bloc_id_seq` (
  `sequence` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_bloc_bloc_id_seq`
--

INSERT INTO `dtb_bloc_bloc_id_seq` (`sequence`) VALUES
(9);

-- --------------------------------------------------------

--
-- Table structure for table `dtb_category`
--

CREATE TABLE IF NOT EXISTS `dtb_category` (
  `category_id` int(11) NOT NULL,
  `category_name` text,
  `parent_category_id` int(11) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL,
  `rank` int(11) DEFAULT NULL,
  `creator_id` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `del_flg` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_category`
--

INSERT INTO `dtb_category` (`category_id`, `category_name`, `parent_category_id`, `level`, `rank`, `creator_id`, `create_date`, `update_date`, `del_flg`) VALUES
(1, '出租随身WiFi(Rental mobile WiFi router)', 0, 1, 2, 2, '2015-07-15 10:21:05', '2015-07-23 09:31:55', 0),
(5, 'SIM卡(SIM card)', 0, 1, 1, 2, '2015-07-15 10:21:05', '2015-07-23 09:32:08', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dtb_category_category_id_seq`
--

CREATE TABLE IF NOT EXISTS `dtb_category_category_id_seq` (
  `sequence` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_category_category_id_seq`
--

INSERT INTO `dtb_category_category_id_seq` (`sequence`) VALUES
(6);

-- --------------------------------------------------------

--
-- Table structure for table `dtb_category_count`
--

CREATE TABLE IF NOT EXISTS `dtb_category_count` (
  `category_id` int(11) NOT NULL,
  `product_count` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_category_count`
--

INSERT INTO `dtb_category_count` (`category_id`, `product_count`, `create_date`) VALUES
(1, 2, '2015-07-23 09:48:32'),
(4, 0, '2015-07-23 09:33:08'),
(6, 0, '2015-07-23 09:33:11');

-- --------------------------------------------------------

--
-- Table structure for table `dtb_category_total_count`
--

CREATE TABLE IF NOT EXISTS `dtb_category_total_count` (
  `category_id` int(11) NOT NULL,
  `product_count` int(11) DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_category_total_count`
--

INSERT INTO `dtb_category_total_count` (`category_id`, `product_count`, `create_date`) VALUES
(1, 2, '2015-07-23 09:48:32'),
(2, NULL, '2015-07-15 10:21:05'),
(3, NULL, '2015-07-15 10:21:05'),
(4, 0, '2015-07-23 09:33:08'),
(5, 0, '2015-07-23 09:33:11'),
(6, 0, '2015-07-23 09:33:11');

-- --------------------------------------------------------

--
-- Table structure for table `dtb_class`
--

CREATE TABLE IF NOT EXISTS `dtb_class` (
  `class_id` int(11) NOT NULL,
  `name` text,
  `rank` int(11) DEFAULT NULL,
  `creator_id` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `del_flg` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_class`
--

INSERT INTO `dtb_class` (`class_id`, `name`, `rank`, `creator_id`, `create_date`, `update_date`, `del_flg`) VALUES
(1, 'Taste', 1, 2, '2015-07-15 10:21:05', '2015-07-15 10:21:05', 0),
(2, 'Size', 2, 2, '2015-07-15 10:21:05', '2015-07-15 10:21:05', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dtb_classcategory`
--

CREATE TABLE IF NOT EXISTS `dtb_classcategory` (
  `classcategory_id` int(11) NOT NULL,
  `name` text,
  `class_id` int(11) NOT NULL,
  `rank` int(11) DEFAULT NULL,
  `creator_id` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `del_flg` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_classcategory`
--

INSERT INTO `dtb_classcategory` (`classcategory_id`, `name`, `class_id`, `rank`, `creator_id`, `create_date`, `update_date`, `del_flg`) VALUES
(0, NULL, 0, 0, 0, '2015-07-15 10:21:06', '2015-07-15 10:21:06', 0),
(1, 'Vanilla', 1, 1, 2, '2015-07-15 10:21:06', '2015-07-15 10:21:06', 0),
(2, 'Chocolate', 1, 2, 2, '2015-07-15 10:21:06', '2015-07-15 10:21:06', 0),
(3, 'Matcha', 1, 3, 2, '2015-07-15 10:21:06', '2015-07-15 10:21:06', 0),
(4, 'L', 2, 1, 2, '2015-07-15 10:21:06', '2015-07-15 10:21:06', 0),
(5, 'M', 2, 2, 2, '2015-07-15 10:21:06', '2015-07-15 10:21:06', 0),
(6, 'S', 2, 3, 2, '2015-07-15 10:21:06', '2015-07-15 10:21:06', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dtb_classcategory_classcategory_id_seq`
--

CREATE TABLE IF NOT EXISTS `dtb_classcategory_classcategory_id_seq` (
  `sequence` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_classcategory_classcategory_id_seq`
--

INSERT INTO `dtb_classcategory_classcategory_id_seq` (`sequence`) VALUES
(6);

-- --------------------------------------------------------

--
-- Table structure for table `dtb_class_class_id_seq`
--

CREATE TABLE IF NOT EXISTS `dtb_class_class_id_seq` (
  `sequence` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_class_class_id_seq`
--

INSERT INTO `dtb_class_class_id_seq` (`sequence`) VALUES
(2);

-- --------------------------------------------------------

--
-- Table structure for table `dtb_csv`
--

CREATE TABLE IF NOT EXISTS `dtb_csv` (
  `no` int(11) NOT NULL DEFAULT '0',
  `csv_id` int(11) NOT NULL,
  `col` text,
  `disp_name` text,
  `rank` int(11) DEFAULT NULL,
  `rw_flg` smallint(6) DEFAULT '1',
  `status` smallint(6) NOT NULL DEFAULT '1',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mb_convert_kana_option` text,
  `size_const_type` text,
  `error_check_types` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_csv`
--

INSERT INTO `dtb_csv` (`no`, `csv_id`, `col`, `disp_name`, `rank`, `rw_flg`, `status`, `create_date`, `update_date`, `mb_convert_kana_option`, `size_const_type`, `error_check_types`) VALUES
(1, 1, 'product_id', 'Product ID', 1, 3, 1, '2015-07-15 10:21:06', '2015-07-15 10:21:06', 'n', 'INT_LEN', 'NUM_CHECK,MAX_LENGTH_CHECK'),
(2, 1, 'product_class_id', 'Product specification ID', 2, 3, 1, '2015-07-15 10:21:06', '2015-07-15 10:21:06', 'n', 'INT_LEN', 'NUM_CHECK,MAX_LENGTH_CHECK'),
(3, 1, 'parent_classcategory_id', 'New specification category ID', 3, 2, 1, '2015-07-15 10:21:06', '2015-07-15 10:21:06', 'n', 'INT_LEN', 'NUM_CHECK,MAX_LENGTH_CHECK'),
(4, 1, 'classcategory_id', 'specification category ID', 4, 2, 1, '2015-07-15 10:21:06', '2015-07-15 10:21:06', 'n', 'INT_LEN', 'NUM_CHECK,MAX_LENGTH_CHECK'),
(5, 1, 'parent_classcategory_name', 'New specification category name', 5, 2, 1, '2015-07-15 10:21:06', '2015-07-15 10:21:06', 'KVa', 'STEXT_LEN', 'SPTAB_CHECK,MAX_LENGTH_CHECK'),
(6, 1, 'classcategory_name', 'Standard category name', 6, 2, 1, '2015-07-15 10:21:06', '2015-07-15 10:21:06', 'KVa', 'STEXT_LEN', 'SPTAB_CHECK,MAX_LENGTH_CHECK'),
(7, 1, 'maker_id', 'Manufacturer ID', 7, 1, 1, '2015-07-15 10:21:06', '2015-07-15 10:21:06', 'n', 'INT_LEN', 'NUM_CHECK,MAX_LENGTH_CHECK'),
(8, 1, '(SELECT name as maker_name FROM dtb_maker WHERE prdcls.maker_id = dtb_maker.maker_id) as maker_name', 'Manufacturer name', 8, 2, 1, '2015-07-15 10:21:06', '2015-07-15 10:21:06', 'KVa', 'STEXT_LEN', 'SPTAB_CHECK,MAX_LENGTH_CHECK'),
(9, 1, 'name', 'Product name', 9, 1, 1, '2015-07-15 10:21:06', '2015-07-15 10:21:06', 'KVa', 'STEXT_LEN', 'SPTAB_CHECK,MAX_LENGTH_CHECK,EXIST_CHECK'),
(10, 1, 'status', 'Display status (public/non-public)', 10, 1, 1, '2015-07-15 10:21:06', '2015-07-15 10:21:06', 'n', 'INT_LEN', 'NUM_CHECK,MAX_LENGTH_CHECK'),
(11, 1, 'comment1', 'Manufacturer URL (Comment 1)', 11, 1, 1, '2015-07-15 10:21:06', '2015-07-15 10:21:06', 'KVa', 'URL_LEN', 'SPTAB_CHECK,MAX_LENGTH_CHECK,URL_CHECK'),
(12, 1, 'comment2', 'Comment 2', 12, 1, 1, '2015-07-15 10:21:06', '2015-07-15 10:21:06', 'KVa', 'LLTEXT_LEN', 'SPTAB_CHECK,MAX_LENGTH_CHECK'),
(13, 1, 'comment3', 'Search word (comment 3)', 13, 1, 1, '2015-07-15 10:21:06', '2015-07-15 10:21:06', 'KVa', 'LLTEXT_LEN', 'SPTAB_CHECK,MAX_LENGTH_CHECK'),
(14, 1, 'comment4', 'Comment 4', 14, 1, 1, '2015-07-15 10:21:06', '2015-07-15 10:21:06', 'KVa', 'LLTEXT_LEN', 'SPTAB_CHECK,MAX_LENGTH_CHECK'),
(15, 1, 'comment5', 'Comment 5', 15, 1, 1, '2015-07-15 10:21:06', '2015-07-15 10:21:06', 'KVa', 'LLTEXT_LEN', 'SPTAB_CHECK,MAX_LENGTH_CHECK'),
(16, 1, 'comment6', 'Comment 6', 16, 1, 1, '2015-07-15 10:21:06', '2015-07-15 10:21:06', 'KVa', 'LLTEXT_LEN', 'SPTAB_CHECK,MAX_LENGTH_CHECK'),
(17, 1, 'note', 'Remarks column (for SHOP)', 17, 1, 1, '2015-07-15 10:21:06', '2015-07-15 10:21:06', 'KVa', 'LLTEXT_LEN', 'SPTAB_CHECK,MAX_LENGTH_CHECK'),
(18, 1, 'main_list_comment', 'List - Main comments', 18, 1, 1, '2015-07-15 10:21:06', '2015-07-15 10:21:06', 'KVa', 'MTEXT_LEN', 'SPTAB_CHECK,MAX_LENGTH_CHECK,EXIST_CHECK'),
(19, 1, 'main_list_image', 'List - Main images', 19, 1, 1, '2015-07-15 10:21:06', '2015-07-15 10:21:06', NULL, 'LTEXT_LEN', 'SPTAB_CHECK,MAX_LENGTH_CHECK,FILE_EXISTS'),
(20, 1, 'main_comment', 'Details - Main comment', 20, 1, 1, '2015-07-15 10:21:06', '2015-07-15 10:21:06', 'KVa', 'LLTEXT_LEN', 'SPTAB_CHECK,MAX_LENGTH_CHECK,EXIST_CHECK,HTML_TAG_CHECK'),
(21, 1, 'main_image', 'Details - Main image', 21, 1, 1, '2015-07-15 10:21:06', '2015-07-15 10:21:06', NULL, 'LTEXT_LEN', 'SPTAB_CHECK,MAX_LENGTH_CHECK,FILE_EXISTS'),
(22, 1, 'main_large_image', 'Details - Main enlarged image', 22, 1, 1, '2015-07-15 10:21:06', '2015-07-15 10:21:06', NULL, 'LTEXT_LEN', 'SPTAB_CHECK,MAX_LENGTH_CHECK,FILE_EXISTS'),
(23, 1, 'sub_title1', 'Details - Subtitle(1)', 23, 1, 1, '2015-07-15 10:21:06', '2015-07-15 10:21:06', 'KVa', 'STEXT_LEN', 'SPTAB_CHECK,MAX_LENGTH_CHECK'),
(24, 1, 'sub_comment1', 'Details - Sub comment (1)', 24, 1, 1, '2015-07-15 10:21:06', '2015-07-15 10:21:06', 'KVa', 'LLTEXT_LEN', 'SPTAB_CHECK,MAX_LENGTH_CHECK,HTML_TAG_CHECK'),
(25, 1, 'sub_image1', 'Details - Sub image (1)', 25, 1, 1, '2015-07-15 10:21:06', '2015-07-15 10:21:06', NULL, 'LTEXT_LEN', 'SPTAB_CHECK,MAX_LENGTH_CHECK,FILE_EXISTS'),
(26, 1, 'sub_large_image1', 'Details - Sub enlarged image (1)', 26, 1, 1, '2015-07-15 10:21:06', '2015-07-15 10:21:06', NULL, 'LTEXT_LEN', 'SPTAB_CHECK,MAX_LENGTH_CHECK,FILE_EXISTS'),
(27, 1, 'sub_title2', 'Details - Subtitle(2)', 27, 1, 1, '2015-07-15 10:21:06', '2015-07-15 10:21:06', 'KVa', 'STEXT_LEN', 'SPTAB_CHECK,MAX_LENGTH_CHECK'),
(28, 1, 'sub_comment2', 'Details - Sub comment (2)', 28, 1, 1, '2015-07-15 10:21:06', '2015-07-15 10:21:06', 'KVa', 'LLTEXT_LEN', 'SPTAB_CHECK,MAX_LENGTH_CHECK'),
(29, 1, 'sub_image2', 'Details - Sub image (2)', 29, 1, 1, '2015-07-15 10:21:06', '2015-07-15 10:21:06', NULL, 'LTEXT_LEN', 'SPTAB_CHECK,MAX_LENGTH_CHECK,FILE_EXISTS'),
(30, 1, 'sub_large_image2', 'Details - Sub enlarged image (2)', 30, 1, 1, '2015-07-15 10:21:06', '2015-07-15 10:21:06', NULL, 'LTEXT_LEN', 'SPTAB_CHECK,MAX_LENGTH_CHECK,FILE_EXISTS'),
(31, 1, 'sub_title3', 'Details - Subtitle(3)', 31, 1, 1, '2015-07-15 10:21:06', '2015-07-15 10:21:06', NULL, 'STEXT_LEN', 'SPTAB_CHECK,MAX_LENGTH_CHECK'),
(32, 1, 'sub_comment3', 'Details - Sub comment (3)', 32, 1, 1, '2015-07-15 10:21:06', '2015-07-15 10:21:06', 'KVa', 'LLTEXT_LEN', 'SPTAB_CHECK,MAX_LENGTH_CHECK'),
(33, 1, 'sub_image3', 'Details - Sub image (3)', 33, 1, 1, '2015-07-15 10:21:06', '2015-07-15 10:21:06', NULL, 'LTEXT_LEN', 'SPTAB_CHECK,MAX_LENGTH_CHECK,FILE_EXISTS'),
(34, 1, 'sub_large_image3', 'Details - Sub enlarged image (3)', 34, 1, 1, '2015-07-15 10:21:07', '2015-07-15 10:21:07', NULL, 'LTEXT_LEN', 'SPTAB_CHECK,MAX_LENGTH_CHECK,FILE_EXISTS'),
(35, 1, 'sub_title4', 'Details - Subtitle(4)', 35, 1, 1, '2015-07-15 10:21:07', '2015-07-15 10:21:07', 'KVa', 'STEXT_LEN', 'SPTAB_CHECK,MAX_LENGTH_CHECK'),
(36, 1, 'sub_comment4', 'Details - Sub comment (4)', 36, 1, 1, '2015-07-15 10:21:07', '2015-07-15 10:21:07', 'KVa', 'LLTEXT_LEN', 'SPTAB_CHECK,MAX_LENGTH_CHECK'),
(37, 1, 'sub_image4', 'Details - Sub image (4)', 37, 1, 1, '2015-07-15 10:21:07', '2015-07-15 10:21:07', NULL, 'LTEXT_LEN', 'SPTAB_CHECK,MAX_LENGTH_CHECK,FILE_EXISTS'),
(38, 1, 'sub_large_image4', 'Details - Sub enlarged image (4)', 38, 1, 1, '2015-07-15 10:21:07', '2015-07-15 10:21:07', NULL, 'LTEXT_LEN', 'SPTAB_CHECK,MAX_LENGTH_CHECK,FILE_EXISTS'),
(39, 1, 'sub_title5', 'Details - Subtitle(5)', 39, 1, 1, '2015-07-15 10:21:07', '2015-07-15 10:21:07', 'KVa', 'STEXT_LEN', 'SPTAB_CHECK,MAX_LENGTH_CHECK'),
(40, 1, 'sub_comment5', 'Details - Sub comment (5)', 40, 1, 1, '2015-07-15 10:21:07', '2015-07-15 10:21:07', 'KVa', 'LLTEXT_LEN', 'SPTAB_CHECK,MAX_LENGTH_CHECK'),
(41, 1, 'sub_image5', 'Details - Sub image (5)', 41, 1, 1, '2015-07-15 10:21:07', '2015-07-15 10:21:07', NULL, 'LTEXT_LEN', 'SPTAB_CHECK,MAX_LENGTH_CHECK,FILE_EXISTS'),
(42, 1, 'sub_large_image5', 'Details - Sub enlarged image (5)', 42, 1, 1, '2015-07-15 10:21:07', '2015-07-15 10:21:07', NULL, 'LTEXT_LEN', 'SPTAB_CHECK,MAX_LENGTH_CHECK,FILE_EXISTS'),
(43, 1, 'deliv_date_id', 'Est. delivery ID', 43, 1, 1, '2015-07-15 10:21:07', '2015-07-15 10:21:07', 'n', 'INT_LEN', 'NUM_CHECK,MAX_LENGTH_CHECK'),
(44, 1, 'del_flg', 'Deletion flag', 44, 1, 1, '2015-07-15 10:21:07', '2015-07-15 10:21:07', 'n', 'INT_LEN', 'NUM_CHECK,MAX_LENGTH_CHECK'),
(45, 1, 'product_type_id', 'Product type ID', 45, 1, 1, '2015-07-15 10:21:07', '2015-07-15 10:21:07', 'n', 'INT_LEN', 'NUM_CHECK,MAX_LENGTH_CHECK'),
(46, 1, 'product_code', 'Product code', 46, 1, 1, '2015-07-15 10:21:07', '2015-07-15 10:21:07', 'KVa', 'STEXT_LEN', 'SPTAB_CHECK,MAX_LENGTH_CHECK'),
(47, 1, 'stock', 'Inventory count', 47, 1, 1, '2015-07-15 10:21:07', '2015-07-15 10:21:07', 'n', 'AMOUNT_LEN', 'NUM_CHECK,MAX_LENGTH_CHECK'),
(48, 1, 'stock_unlimited', 'Unlimited inventory flag', 48, 1, 1, '2015-07-15 10:21:07', '2015-07-15 10:21:07', 'n', 'INT_LEN', 'NUM_CHECK,MAX_LENGTH_CHECK'),
(49, 1, 'sale_limit', 'Number of sales restrictions', 49, 1, 1, '2015-07-15 10:21:07', '2015-07-15 10:21:07', 'n', 'AMOUNT_LEN', 'NUM_CHECK,MAX_LENGTH_CHECK'),
(50, 1, 'price01', 'Normal price', 50, 1, 1, '2015-07-15 10:21:07', '2015-07-15 10:21:07', 'n', 'PRICE_LEN', 'NUM_CHECK,MAX_LENGTH_CHECK'),
(51, 1, 'price02', 'Sales price', 51, 1, 1, '2015-07-15 10:21:07', '2015-07-15 10:21:07', 'n', 'PRICE_LEN', 'NUM_CHECK,MAX_LENGTH_CHECK,EXIST_CHECK'),
(52, 1, 'deliv_fee', 'Shipping fee', 52, 1, 1, '2015-07-15 10:21:07', '2015-07-15 10:21:07', 'n', 'PRICE_LEN', 'NUM_CHECK,MAX_LENGTH_CHECK'),
(53, 1, 'point_rate', 'Point grant rate', 53, 1, 1, '2015-07-15 10:21:07', '2015-07-15 10:21:07', 'n', 'PERCENTAGE_LEN', 'NUM_CHECK,MAX_LENGTH_CHECK'),
(54, 1, 'down_filename', 'Downloaded file name', 54, 1, 1, '2015-07-15 10:21:07', '2015-07-15 10:21:07', 'KVa', 'STEXT_LEN', 'SPTAB_CHECK,MAX_LENGTH_CHECK'),
(55, 1, 'down_realfilename', 'Actual downloaded file', 55, 1, 1, '2015-07-15 10:21:07', '2015-07-15 10:21:07', NULL, 'LTEXT_LEN', 'SPTAB_CHECK,MAX_LENGTH_CHECK,DOWN_FILE_EXISTS'),
(56, 1, '(SELECT recommend_product_id FROM dtb_recommend_products WHERE prdcls.product_id = dtb_recommend_products.product_id ORDER BY rank DESC, recommend_product_id DESC limit 1 offset 0) AS recommend_product_id1', 'Related product ID (1)', 56, 1, 1, '2015-07-15 10:21:07', '2015-07-15 10:21:07', 'n', 'INT_LEN', 'NUM_CHECK,MAX_LENGTH_CHECK'),
(57, 1, '(SELECT comment FROM dtb_recommend_products WHERE prdcls.product_id = dtb_recommend_products.product_id ORDER BY rank DESC, recommend_product_id DESC limit 1 offset 0) AS recommend_comment1', 'Related product comment (1)', 57, 1, 1, '2015-07-15 10:21:07', '2015-07-15 10:21:07', 'KVa', 'LLTEXT_LEN', 'SPTAB_CHECK,MAX_LENGTH_CHECK'),
(58, 1, '(SELECT recommend_product_id FROM dtb_recommend_products WHERE prdcls.product_id = dtb_recommend_products.product_id ORDER BY rank DESC, recommend_product_id DESC limit 1 offset 1) AS recommend_product_id2', 'Related product ID (2)', 58, 1, 1, '2015-07-15 10:21:07', '2015-07-15 10:21:07', 'n', 'INT_LEN', 'NUM_CHECK,MAX_LENGTH_CHECK'),
(59, 1, '(SELECT comment FROM dtb_recommend_products WHERE prdcls.product_id = dtb_recommend_products.product_id ORDER BY rank DESC, recommend_product_id DESC limit 1 offset 1) AS recommend_comment2', 'Related product comment (2)', 59, 1, 1, '2015-07-15 10:21:07', '2015-07-15 10:21:07', 'KVa', 'LLTEXT_LEN', 'SPTAB_CHECK,MAX_LENGTH_CHECK'),
(60, 1, '(SELECT recommend_product_id FROM dtb_recommend_products WHERE prdcls.product_id = dtb_recommend_products.product_id ORDER BY rank DESC, recommend_product_id DESC limit 1 offset 2) AS recommend_product_id3', 'Related product ID (3)', 60, 1, 1, '2015-07-15 10:21:07', '2015-07-15 10:21:07', 'n', 'INT_LEN', 'NUM_CHECK,MAX_LENGTH_CHECK'),
(61, 1, '(SELECT comment FROM dtb_recommend_products WHERE prdcls.product_id = dtb_recommend_products.product_id ORDER BY rank DESC, recommend_product_id DESC limit 1 offset 2) AS recommend_comment3', 'Related product comment (3)', 61, 1, 1, '2015-07-15 10:21:07', '2015-07-15 10:21:07', 'KVa', 'LLTEXT_LEN', 'SPTAB_CHECK,MAX_LENGTH_CHECK'),
(62, 1, '(SELECT recommend_product_id FROM dtb_recommend_products WHERE prdcls.product_id = dtb_recommend_products.product_id ORDER BY rank DESC, recommend_product_id DESC limit 1 offset 3) AS recommend_product_id4', 'Related product ID (4)', 62, 1, 1, '2015-07-15 10:21:07', '2015-07-15 10:21:07', 'n', 'INT_LEN', 'NUM_CHECK,MAX_LENGTH_CHECK'),
(63, 1, '(SELECT comment FROM dtb_recommend_products WHERE prdcls.product_id = dtb_recommend_products.product_id ORDER BY rank DESC, recommend_product_id DESC limit 1 offset 3) AS recommend_comment4', 'Related product comment (4)', 63, 1, 1, '2015-07-15 10:21:07', '2015-07-15 10:21:07', 'KVa', 'LLTEXT_LEN', 'SPTAB_CHECK,MAX_LENGTH_CHECK'),
(64, 1, '(SELECT recommend_product_id FROM dtb_recommend_products WHERE prdcls.product_id = dtb_recommend_products.product_id ORDER BY rank DESC, recommend_product_id DESC limit 1 offset 4) AS recommend_product_id5', 'Related product ID (5)', 64, 1, 1, '2015-07-15 10:21:07', '2015-07-15 10:21:07', 'n', 'INT_LEN', 'NUM_CHECK,MAX_LENGTH_CHECK'),
(65, 1, '(SELECT comment FROM dtb_recommend_products WHERE prdcls.product_id = dtb_recommend_products.product_id ORDER BY rank DESC, recommend_product_id DESC limit 1 offset 4) AS recommend_comment5', 'Related product comment (5)', 65, 1, 1, '2015-07-15 10:21:07', '2015-07-15 10:21:07', 'KVa', 'LLTEXT_LEN', 'SPTAB_CHECK,MAX_LENGTH_CHECK'),
(66, 1, '(SELECT recommend_product_id FROM dtb_recommend_products WHERE prdcls.product_id = dtb_recommend_products.product_id ORDER BY rank DESC, recommend_product_id DESC limit 1 offset 5) AS recommend_product_id6', 'Related product ID (6)', 66, 1, 1, '2015-07-15 10:21:07', '2015-07-15 10:21:07', 'n', 'INT_LEN', 'NUM_CHECK,MAX_LENGTH_CHECK'),
(67, 1, '(SELECT comment FROM dtb_recommend_products WHERE prdcls.product_id = dtb_recommend_products.product_id ORDER BY rank DESC, recommend_product_id DESC limit 1 offset 5) AS recommend_comment6', 'Related product comment (6)', 67, 1, 1, '2015-07-15 10:21:07', '2015-07-15 10:21:07', 'KVa', 'LLTEXT_LEN', 'SPTAB_CHECK,MAX_LENGTH_CHECK'),
(68, 1, '(SELECT ARRAY_TO_STRING(ARRAY(SELECT product_status_id FROM dtb_product_status WHERE dtb_product_status.product_id = prdcls.product_id and del_flg = 0 ORDER BY dtb_product_status.product_status_id), '','')) as product_statuses', 'Product status', 68, 1, 1, '2015-07-15 10:21:07', '2015-07-15 10:21:07', 'KVa', 'STEXT_LEN', 'SPTAB_CHECK,MAX_LENGTH_CHECK'),
(69, 1, '(SELECT ARRAY_TO_STRING(ARRAY(SELECT name FROM dtb_product_status LEFT JOIN mtb_status ON  dtb_product_status.product_status_id = mtb_status.id  WHERE dtb_product_status.product_id = prdcls.product_id and del_flg = 0 ORDER BY dtb_product_status.product_status_id), '','')) as product_status_names', 'Product status name', 69, 2, 1, '2015-07-15 10:21:07', '2015-07-15 10:21:07', 'KVa', 'LTEXT_LEN', 'SPTAB_CHECK,MAX_LENGTH_CHECK'),
(70, 1, '(SELECT ARRAY_TO_STRING(ARRAY(SELECT category_id FROM dtb_product_categories WHERE dtb_product_categories.product_id = prdcls.product_id ORDER BY dtb_product_categories.rank), '','')) as category_ids', 'Category ID', 70, 1, 1, '2015-07-15 10:21:07', '2015-07-15 10:21:07', 'KVa', 'LTEXT_LEN', 'SPTAB_CHECK,MAX_LENGTH_CHECK,EXIST_CHECK'),
(71, 1, '(SELECT ARRAY_TO_STRING(ARRAY(SELECT category_name FROM dtb_product_categories LEFT JOIN dtb_category ON dtb_product_categories.category_id = dtb_category.category_id WHERE dtb_product_categories.product_id = prdcls.product_id ORDER BY dtb_product_categories.rank), '','')) as category_names', 'Category name', 71, 2, 1, '2015-07-15 10:21:07', '2015-07-15 10:21:07', 'KVa', 'LTEXT_LEN', 'SPTAB_CHECK,MAX_LENGTH_CHECK'),
(72, 2, 'customer_id', 'Member ID', 1, 1, 1, '2015-07-15 10:21:07', '2015-07-15 10:21:07', NULL, NULL, NULL),
(73, 2, 'name01', 'Name (last name)', 2, 1, 1, '2015-07-15 10:21:07', '2015-07-15 10:21:07', NULL, NULL, NULL),
(74, 2, 'name02', 'Name (first name)', 3, 1, 1, '2015-07-15 10:21:08', '2015-07-15 10:21:08', NULL, NULL, NULL),
(75, 2, 'kana01', 'Name (furigana/last name)', 4, 1, 1, '2015-07-15 10:21:08', '2015-07-15 10:21:08', NULL, NULL, NULL),
(76, 2, 'kana02', 'Name (furigana/first name)', 5, 1, 1, '2015-07-15 10:21:08', '2015-07-15 10:21:08', NULL, NULL, NULL),
(77, 2, 'zip01', 'Postal code 1', 6, 1, 1, '2015-07-15 10:21:08', '2015-07-15 10:21:08', NULL, NULL, NULL),
(78, 2, 'zip02', 'Postal code 2', 7, 1, 1, '2015-07-15 10:21:08', '2015-07-15 10:21:08', NULL, NULL, NULL),
(79, 2, 'zipcode', 'zipcode', 8, 1, 1, '2015-07-15 10:21:08', '2015-07-15 10:21:08', NULL, NULL, NULL),
(80, 2, 'addr01', 'Address 1', 9, 1, 1, '2015-07-15 10:21:08', '2015-07-15 10:21:08', NULL, NULL, NULL),
(81, 2, 'addr02', 'Address 2', 10, 1, 1, '2015-07-15 10:21:08', '2015-07-15 10:21:08', NULL, NULL, NULL),
(82, 2, 'email', 'E-MAIL', 11, 1, 1, '2015-07-15 10:21:08', '2015-07-15 10:21:08', NULL, NULL, NULL),
(83, 2, 'tel01', 'TEL1', 12, 1, 1, '2015-07-15 10:21:08', '2015-07-15 10:21:08', NULL, NULL, NULL),
(84, 2, 'tel02', 'TEL2', 13, 1, 1, '2015-07-15 10:21:08', '2015-07-15 10:21:08', NULL, NULL, NULL),
(85, 2, 'tel03', 'TEL3', 14, 1, 1, '2015-07-15 10:21:08', '2015-07-15 10:21:08', NULL, NULL, NULL),
(86, 2, 'fax01', 'FAX1', 15, 1, 1, '2015-07-15 10:21:08', '2015-07-15 10:21:08', NULL, NULL, NULL),
(87, 2, 'fax02', 'FAX2', 16, 1, 1, '2015-07-15 10:21:08', '2015-07-15 10:21:08', NULL, NULL, NULL),
(88, 2, 'fax03', 'FAX3', 17, 1, 1, '2015-07-15 10:21:08', '2015-07-15 10:21:08', NULL, NULL, NULL),
(89, 2, '(SELECT name FROM mtb_sex WHERE mtb_sex.id = dtb_customer.sex) as sex', 'Gender', 18, 1, 1, '2015-07-15 10:21:08', '2015-07-15 10:21:08', NULL, NULL, NULL),
(90, 2, '(SELECT name FROM mtb_job WHERE mtb_job.id = dtb_customer.job) as job', 'Occupation', 19, 1, 1, '2015-07-15 10:21:08', '2015-07-15 10:21:08', NULL, NULL, NULL),
(91, 2, 'birth', 'Birthday', 20, 1, 1, '2015-07-15 10:21:08', '2015-07-15 10:21:08', NULL, NULL, NULL),
(92, 2, 'first_buy_date', 'Date of first purchase', 21, 1, 1, '2015-07-15 10:21:08', '2015-07-15 10:21:08', NULL, NULL, NULL),
(93, 2, 'last_buy_date', 'Final purchase date', 22, 1, 1, '2015-07-15 10:21:08', '2015-07-15 10:21:08', NULL, NULL, NULL),
(94, 2, 'buy_times', 'Purchase frequency', 23, 1, 1, '2015-07-15 10:21:08', '2015-07-15 10:21:08', NULL, NULL, NULL),
(95, 2, 'point', 'Point balance', 24, 1, 1, '2015-07-15 10:21:08', '2015-07-15 10:21:08', NULL, NULL, NULL),
(96, 2, 'note', 'Remarks', 25, 1, 1, '2015-07-15 10:21:08', '2015-07-15 10:21:08', NULL, NULL, NULL),
(97, 2, 'create_date', 'Registration date', 26, 1, 1, '2015-07-15 10:21:08', '2015-07-15 10:21:08', NULL, NULL, NULL),
(98, 2, 'update_date', 'Date of update', 27, 1, 1, '2015-07-15 10:21:08', '2015-07-15 10:21:08', NULL, NULL, NULL),
(99, 3, 'order_id', 'Order number', 1, 3, 1, '2015-07-15 10:21:08', '2015-07-15 10:21:08', 'n', 'INT_LEN', 'NUM_CHECK,MAX_LENGTH_CHECK'),
(100, 3, 'customer_id', 'Member ID', 2, 1, 1, '2015-07-15 10:21:08', '2015-07-15 10:21:08', 'n', 'INT_LEN', 'NUM_CHECK,MAX_LENGTH_CHECK'),
(101, 3, 'message', 'Requests, etc.', 3, 1, 1, '2015-07-15 10:21:08', '2015-07-15 10:21:08', 'KVa', 'STEXT_LEN', 'SPTAB_CHECK,MAX_LENGTH_CHECK'),
(102, 3, 'order_name01', 'Name (last name)', 4, 1, 1, '2015-07-15 10:21:08', '2015-07-15 10:21:08', 'KVa', 'STEXT_LEN', 'SPTAB_CHECK,MAX_LENGTH_CHECK,EXIST_CHECK'),
(103, 3, 'order_name02', 'Name (first name)', 5, 1, 1, '2015-07-15 10:21:08', '2015-07-15 10:21:08', 'KVa', 'STEXT_LEN', 'SPTAB_CHECK,MAX_LENGTH_CHECK,EXIST_CHECK'),
(104, 3, 'order_kana01', 'Name (furigana/last name)', 6, 1, 1, '2015-07-15 10:21:08', '2015-07-15 10:21:08', 'KVCa', 'STEXT_LEN', 'SPTAB_CHECK,MAX_LENGTH_CHECK'),
(105, 3, 'order_kana02', 'Name (furigana/first name)', 7, 1, 1, '2015-07-15 10:21:08', '2015-07-15 10:21:08', 'KVCa', 'STEXT_LEN', 'SPTAB_CHECK,MAX_LENGTH_CHECK'),
(106, 3, 'order_email', 'E-mail address', 8, 1, 1, '2015-07-15 10:21:08', '2015-07-15 10:21:08', 'a', 'null', 'NO_SPTAB,EMAIL_CHECK,EMAIL_CHAR_CHECK'),
(107, 3, 'order_tel01', 'Telephone number 1', 9, 1, 1, '2015-07-15 10:21:08', '2015-07-15 10:21:08', 'n', 'TEL_ITEM_LEN', 'MAX_LENGTH_CHECK,NUM_CHECK'),
(108, 3, 'order_tel02', 'Telephone number 2', 10, 1, 1, '2015-07-15 10:21:08', '2015-07-15 10:21:08', 'n', 'TEL_ITEM_LEN', 'MAX_LENGTH_CHECK,NUM_CHECK'),
(109, 3, 'order_tel03', 'Telephone number 3', 11, 1, 1, '2015-07-15 10:21:08', '2015-07-15 10:21:08', 'n', 'TEL_ITEM_LEN', 'MAX_LENGTH_CHECK,NUM_CHECK'),
(110, 3, 'order_fax01', 'FAX1', 12, 1, 1, '2015-07-15 10:21:08', '2015-07-15 10:21:08', 'n', 'TEL_ITEM_LEN', 'MAX_LENGTH_CHECK,NUM_CHECK'),
(111, 3, 'order_fax02', 'FAX2', 13, 1, 1, '2015-07-15 10:21:08', '2015-07-15 10:21:08', 'n', 'TEL_ITEM_LEN', 'MAX_LENGTH_CHECK,NUM_CHECK'),
(112, 3, 'order_fax03', 'FAX3', 14, 1, 1, '2015-07-15 10:21:08', '2015-07-15 10:21:08', 'n', 'TEL_ITEM_LEN', 'MAX_LENGTH_CHECK,NUM_CHECK'),
(113, 3, 'order_zip01', 'Postal code 1', 15, 1, 1, '2015-07-15 10:21:08', '2015-07-15 10:21:08', 'n', 'ZIP01_LEN', 'MAX_LENGTH_CHECK,NUM_CHECK,NUM_COUNT_CHECK'),
(114, 3, 'order_zip02', 'Postal code 2', 16, 1, 1, '2015-07-15 10:21:08', '2015-07-15 10:21:08', 'n', 'ZIP02_LEN', 'MAX_LENGTH_CHECK,NUM_CHECK,NUM_COUNT_CHECK'),
(115, 3, 'order_zipcode', 'zipcode', 17, 1, 1, '2015-07-15 10:21:08', '2015-07-15 10:21:08', 'n', 'ZIPCODE_LEN', 'MAX_LENGTH_CHECK,NUM_CHECK,NUM_COUNT_CHECK'),
(116, 3, 'order_addr01', 'Address 1', 18, 1, 1, '2015-07-15 10:21:08', '2015-07-15 10:21:08', 'KVa', 'MTEXT_LEN', 'SPTAB_CHECK,MAX_LENGTH_CHECK,NUM_CHECK'),
(117, 3, 'order_addr02', 'Address 2', 19, 1, 1, '2015-07-15 10:21:09', '2015-07-15 10:21:09', 'KVa', 'MTEXT_LEN', 'SPTAB_CHECK,MAX_LENGTH_CHECK,NUM_CHECK'),
(118, 3, 'order_sex', 'Gender', 20, 1, 1, '2015-07-15 10:21:09', '2015-07-15 10:21:09', 'n', 'INT_LEN', 'MAX_LENGTH_CHECK,NUM_CHECK'),
(119, 3, 'order_birth', 'Date of birth', 21, 1, 1, '2015-07-15 10:21:09', '2015-07-15 10:21:09', 'n', 'INT_LEN', 'MAX_LENGTH_CHECK,NUM_CHECK'),
(120, 3, 'order_job', 'Business type', 22, 1, 1, '2015-07-15 10:21:09', '2015-07-15 10:21:09', 'n', 'INT_LEN', 'MAX_LENGTH_CHECK,NUM_CHECK'),
(121, 3, 'subtotal', 'Subtotal', 38, 1, 1, '2015-07-15 10:21:09', '2015-07-15 10:21:09', 'n', 'PRICE_LEN', 'MAX_LENGTH_CHECK,NUM_CHECK'),
(122, 3, 'discount', 'Discount', 39, 1, 1, '2015-07-15 10:21:09', '2015-07-15 10:21:09', 'n', 'PRICE_LEN', 'MAX_LENGTH_CHECK,NUM_CHECK'),
(123, 3, 'deliv_fee', 'Shipping fee', 40, 1, 1, '2015-07-15 10:21:09', '2015-07-15 10:21:09', 'n', 'PRICE_LEN', 'MAX_LENGTH_CHECK,NUM_CHECK'),
(124, 3, 'charge', 'Processing fee', 41, 1, 1, '2015-07-15 10:21:09', '2015-07-15 10:21:09', 'n', 'PRICE_LEN', 'MAX_LENGTH_CHECK,NUM_CHECK'),
(125, 3, 'use_point', 'Points used', 42, 1, 1, '2015-07-15 10:21:09', '2015-07-15 10:21:09', 'n', 'PRICE_LEN', 'MAX_LENGTH_CHECK,NUM_CHECK'),
(126, 3, 'add_point', 'Points added', 43, 1, 1, '2015-07-15 10:21:09', '2015-07-15 10:21:09', 'n', 'PRICE_LEN', 'MAX_LENGTH_CHECK,NUM_CHECK'),
(127, 3, 'tax', 'Tax', 44, 1, 1, '2015-07-15 10:21:09', '2015-07-15 10:21:09', 'n', 'PRICE_LEN', 'MAX_LENGTH_CHECK,NUM_CHECK'),
(128, 3, 'total', 'Total', 45, 1, 1, '2015-07-15 10:21:09', '2015-07-15 10:21:09', 'n', 'PRICE_LEN', 'MAX_LENGTH_CHECK,NUM_CHECK'),
(129, 3, 'payment_total', 'Payment total', 46, 1, 1, '2015-07-15 10:21:09', '2015-07-15 10:21:09', 'n', 'PRICE_LEN', 'MAX_LENGTH_CHECK,NUM_CHECK'),
(130, 3, 'deliv_id', 'Delivery company ID', 47, 2, 1, '2015-07-15 10:21:09', '2015-07-15 10:21:09', 'n', 'INT_LEN', 'NUM_CHECK,MAX_LENGTH_CHECK'),
(131, 3, 'payment_method', 'Payment method', 48, 2, 1, '2015-07-15 10:21:09', '2015-07-15 10:21:09', 'KVa', 'STEXT_LEN', 'SPTAB_CHECK,MAX_LENGTH_CHECK'),
(132, 3, 'note', 'SHOP memo', 50, 2, 1, '2015-07-15 10:21:09', '2015-07-15 10:21:09', 'KVa', 'LLTEXT_LEN', 'SPTAB_CHECK,MAX_LENGTH_CHECK'),
(133, 3, 'status', 'Response status', 51, 1, 1, '2015-07-15 10:21:09', '2015-07-15 10:21:09', 'KVa', 'INT_LEN', 'NUM_CHECK,MAX_LENGTH_CHECK'),
(134, 3, 'create_date', 'Date and time of order', 52, 1, 1, '2015-07-15 10:21:09', '2015-07-15 10:21:09', 'a', '', 'CHECK_DATE'),
(135, 3, 'update_date', 'Date and time of update', 53, 1, 1, '2015-07-15 10:21:09', '2015-07-15 10:21:09', 'a', '', 'CHECK_DATE'),
(136, 3, 'commit_date', 'Date and time of shipment completion', 54, 1, 1, '2015-07-15 10:21:09', '2015-07-15 10:21:09', 'a', '', 'CHECK_DATE'),
(137, 3, 'device_type_id', 'Terminal type ID', 55, 1, 1, '2015-07-15 10:21:09', '2015-07-15 10:21:09', 'n', 'INT_LEN', 'NUM_CHECK,MAX_LENGTH_CHECK'),
(138, 3, '(SELECT COUNT(shipping_id) as shipping_target_num FROM dtb_shipping WHERE dtb_shipping.order_id = dtb_order.order_id) as shipping_num', 'Number of delivery destinations', 56, 1, 1, '2015-07-15 10:21:09', '2015-07-15 10:21:09', 'n', 'INT_LEN', 'SPTAB_CHECK,MAX_LENGTH_CHECK'),
(139, 3, '(SELECT ARRAY_TO_STRING(ARRAY(SELECT shipping_id FROM dtb_shipping WHERE dtb_shipping.order_id = dtb_order.order_id), '','')) as shipping_ids', 'Delivery information ID', 57, 1, 1, '2015-07-15 10:21:09', '2015-07-15 10:21:09', 'KVa', 'STEXT_LEN', 'SPTAB_CHECK,MAX_LENGTH_CHECK'),
(140, 4, 'B.name', 'Product name', 1, 2, 1, '2015-07-15 10:21:09', '2015-07-15 10:21:09', 'KVa', 'STEXT_LEN', 'MAX_LENGTH_CHECK'),
(141, 4, '(SELECT name FROM mtb_disp WHERE mtb_disp.id = A.status) as status', 'Review display', 2, 1, 1, '2015-07-15 10:21:09', '2015-07-15 10:21:09', 'KVa', 'STEXT_LEN', 'MAX_LENGTH_CHECK'),
(142, 4, 'A.create_date', 'Post date', 3, 1, 1, '2015-07-15 10:21:09', '2015-07-15 10:21:09', 'a', '', 'CHECK_DATE,EXIST_CHECK'),
(143, 4, 'A.reviewer_name', 'Poster name', 4, 1, 1, '2015-07-15 10:21:09', '2015-07-15 10:21:09', 'KVa', 'STEXT_LEN', 'MAX_LENGTH_CHECK'),
(144, 4, '(SELECT name FROM mtb_sex WHERE mtb_sex.id = A.sex) as sex', 'Gender', 5, 1, 1, '2015-07-15 10:21:09', '2015-07-15 10:21:09', 'KVa', 'STEXT_LEN', 'MAX_LENGTH_CHECK'),
(145, 4, '(SELECT name FROM mtb_recommend WHERE mtb_recommend.id = A.recommend_level) as recommend_level', 'Recommendation level', 6, 1, 1, '2015-07-15 10:21:09', '2015-07-15 10:21:09', 'n', 'INT_LEN', 'NUM_CHECK,MAX_LENGTH_CHECK'),
(146, 4, 'A.title', 'Title', 7, 1, 1, '2015-07-15 10:21:09', '2015-07-15 10:21:09', 'KVa', 'STEXT_LEN', 'MAX_LENGTH_CHECK'),
(147, 4, 'A.comment', 'Comment', 8, 1, 1, '2015-07-15 10:21:09', '2015-07-15 10:21:09', 'KVa', 'LTEXT_LEN', 'MAX_LENGTH_CHECK'),
(148, 5, 'category_id', 'Category ID', 1, 3, 1, '2015-07-15 10:21:09', '2015-07-15 10:21:09', 'n', 'INT_LEN', 'NUM_CHECK,MAX_LENGTH_CHECK'),
(149, 5, 'category_name', 'Category name', 2, 1, 1, '2015-07-15 10:21:09', '2015-07-15 10:21:09', 'KVa', 'STEXT_LEN', 'SPTAB_CHECK,MAX_LENGTH_CHECK,EXIST_CHECK'),
(150, 5, 'parent_category_id', 'New category ID', 3, 1, 1, '2015-07-15 10:21:09', '2015-07-15 10:21:09', 'n', 'INT_LEN', 'NUM_CHECK,MAX_LENGTH_CHECK'),
(151, 5, 'level', 'Hierarchy', NULL, 2, 2, '2015-07-15 10:21:09', '2015-07-15 10:21:09', 'n', 'INT_LEN', 'NUM_CHECK,MAX_LENGTH_CHECK'),
(152, 5, 'rank', 'Display rank', NULL, 2, 2, '2015-07-15 10:21:09', '2015-07-15 10:21:09', 'n', 'INT_LEN', 'NUM_CHECK,MAX_LENGTH_CHECK'),
(153, 5, 'del_flg', 'Deletion flag', NULL, 1, 2, '2015-07-15 10:21:09', '2015-07-15 10:21:09', 'n', 'INT_LEN', 'NUM_CHECK,MAX_LENGTH_CHECK');

-- --------------------------------------------------------

--
-- Table structure for table `dtb_csv_no_seq`
--

CREATE TABLE IF NOT EXISTS `dtb_csv_no_seq` (
  `sequence` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_csv_no_seq`
--

INSERT INTO `dtb_csv_no_seq` (`sequence`) VALUES
(153);

-- --------------------------------------------------------

--
-- Table structure for table `dtb_csv_sql`
--

CREATE TABLE IF NOT EXISTS `dtb_csv_sql` (
  `sql_id` int(11) NOT NULL DEFAULT '0',
  `sql_name` text NOT NULL,
  `csv_sql` text,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dtb_csv_sql_sql_id_seq`
--

CREATE TABLE IF NOT EXISTS `dtb_csv_sql_sql_id_seq` (
  `sequence` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dtb_customer`
--

CREATE TABLE IF NOT EXISTS `dtb_customer` (
  `customer_id` int(11) NOT NULL,
  `name01` text NOT NULL,
  `name02` text NOT NULL,
  `kana01` text,
  `kana02` text,
  `zip01` text,
  `zip02` text,
  `zipcode` text,
  `pref` smallint(6) DEFAULT NULL,
  `addr01` text,
  `addr02` text,
  `email` text NOT NULL,
  `email_mobile` text,
  `tel01` text,
  `tel02` text,
  `tel03` text,
  `fax01` text,
  `fax02` text,
  `fax03` text,
  `sex` smallint(6) DEFAULT NULL,
  `job` smallint(6) DEFAULT NULL,
  `birth` datetime DEFAULT NULL,
  `password` text,
  `reminder` smallint(6) DEFAULT NULL,
  `reminder_answer` text,
  `salt` text,
  `secret_key` text NOT NULL,
  `first_buy_date` datetime DEFAULT NULL,
  `last_buy_date` datetime DEFAULT NULL,
  `buy_times` decimal(10,0) DEFAULT '0',
  `buy_total` decimal(10,0) DEFAULT '0',
  `point` decimal(10,0) NOT NULL DEFAULT '0',
  `note` text,
  `status` smallint(6) NOT NULL DEFAULT '1',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `del_flg` smallint(6) NOT NULL DEFAULT '0',
  `mobile_phone_id` text,
  `mailmaga_flg` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_customer`
--

INSERT INTO `dtb_customer` (`customer_id`, `name01`, `name02`, `kana01`, `kana02`, `zip01`, `zip02`, `zipcode`, `pref`, `addr01`, `addr02`, `email`, `email_mobile`, `tel01`, `tel02`, `tel03`, `fax01`, `fax02`, `fax03`, `sex`, `job`, `birth`, `password`, `reminder`, `reminder_answer`, `salt`, `secret_key`, `first_buy_date`, `last_buy_date`, `buy_times`, `buy_total`, `point`, `note`, `status`, `create_date`, `update_date`, `del_flg`, `mobile_phone_id`, `mailmaga_flg`) VALUES
(1, 'test', 'tien', NULL, NULL, NULL, NULL, '123', NULL, 'Sunnyvale, CA 94085 USA', '440 North Wolfe Road', 'ngoctien333@gmail.com', NULL, '3242', '3242', '5423', NULL, NULL, NULL, 1, NULL, NULL, 'dd1fcdd2ccf92acd2905744f03400dece419f25005bce1aa31e1bea5f6177241', 1, 'cf0de9b0f977c8ba78649280533a32deb0ae36e52d71aa411beb4d41873cfe01', 'chouuadith', 'r55b0c09e734d9bsN5ayRH', NULL, NULL, '0', '0', '0', NULL, 2, '2015-07-23 10:23:26', '2015-07-23 10:23:26', 0, NULL, 3);

-- --------------------------------------------------------

--
-- Table structure for table `dtb_customer_customer_id_seq`
--

CREATE TABLE IF NOT EXISTS `dtb_customer_customer_id_seq` (
  `sequence` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_customer_customer_id_seq`
--

INSERT INTO `dtb_customer_customer_id_seq` (`sequence`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `dtb_customer_favorite_products`
--

CREATE TABLE IF NOT EXISTS `dtb_customer_favorite_products` (
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dtb_deliv`
--

CREATE TABLE IF NOT EXISTS `dtb_deliv` (
  `deliv_id` int(11) NOT NULL,
  `product_type_id` int(11) DEFAULT NULL,
  `name` text,
  `service_name` text,
  `remark` text,
  `confirm_url` text,
  `rank` int(11) DEFAULT NULL,
  `status` smallint(6) NOT NULL DEFAULT '1',
  `del_flg` smallint(6) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_deliv`
--

INSERT INTO `dtb_deliv` (`deliv_id`, `product_type_id`, `name`, `service_name`, `remark`, `confirm_url`, `rank`, `status`, `del_flg`, `creator_id`, `create_date`, `update_date`) VALUES
(1, 1, 'Sample operator', 'Sample operator', NULL, NULL, 2, 1, 0, 2, '2015-07-15 10:21:09', '2015-07-15 10:21:09'),
(2, 2, 'No delivery (for downloaded products)', 'None', NULL, NULL, 1, 1, 0, 2, '2015-07-15 10:21:09', '2015-07-15 10:21:09');

-- --------------------------------------------------------

--
-- Table structure for table `dtb_delivfee`
--

CREATE TABLE IF NOT EXISTS `dtb_delivfee` (
  `deliv_id` int(11) NOT NULL,
  `fee_id` int(11) NOT NULL,
  `fee` decimal(10,0) NOT NULL,
  `pref` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_delivfee`
--

INSERT INTO `dtb_delivfee` (`deliv_id`, `fee_id`, `fee`, `pref`) VALUES
(1, 1, '1000', 1),
(1, 2, '1000', 2),
(1, 3, '1000', 3),
(1, 4, '1000', 4),
(1, 5, '1000', 5),
(1, 6, '1000', 6),
(1, 7, '1000', 7),
(1, 8, '1000', 8),
(1, 9, '1000', 9),
(1, 10, '1000', 10),
(1, 11, '1000', 11),
(1, 12, '1000', 12),
(1, 13, '1000', 13),
(1, 14, '1000', 14),
(1, 15, '1000', 15),
(1, 16, '1000', 16),
(1, 17, '1000', 17),
(1, 18, '1000', 18),
(1, 19, '1000', 19),
(1, 20, '1000', 20),
(1, 21, '1000', 21),
(1, 22, '1000', 22),
(1, 23, '1000', 23),
(1, 24, '1000', 24),
(1, 25, '1000', 25),
(1, 26, '1000', 26),
(1, 27, '1000', 27),
(1, 28, '1000', 28),
(1, 29, '1000', 29),
(1, 30, '1000', 30),
(1, 31, '1000', 31),
(1, 32, '1000', 32),
(1, 33, '1000', 33),
(1, 34, '1000', 34),
(1, 35, '1000', 35),
(1, 36, '1000', 36),
(1, 37, '1000', 37),
(1, 38, '1000', 38),
(1, 39, '1000', 39),
(1, 40, '1000', 40),
(1, 41, '1000', 41),
(1, 42, '1000', 42),
(1, 43, '1000', 43),
(1, 44, '1000', 44),
(1, 45, '1000', 45),
(1, 46, '1000', 46),
(1, 47, '1000', 47),
(2, 1, '0', 1),
(2, 2, '0', 2),
(2, 3, '0', 3),
(2, 4, '0', 4),
(2, 5, '0', 5),
(2, 6, '0', 6),
(2, 7, '0', 7),
(2, 8, '0', 8),
(2, 9, '0', 9),
(2, 10, '0', 10),
(2, 11, '0', 11),
(2, 12, '0', 12),
(2, 13, '0', 13),
(2, 14, '0', 14),
(2, 15, '0', 15),
(2, 16, '0', 16),
(2, 17, '0', 17),
(2, 18, '0', 18),
(2, 19, '0', 19),
(2, 20, '0', 20),
(2, 21, '0', 21),
(2, 22, '0', 22),
(2, 23, '0', 23),
(2, 24, '0', 24),
(2, 25, '0', 25),
(2, 26, '0', 26),
(2, 27, '0', 27),
(2, 28, '0', 28),
(2, 29, '0', 29),
(2, 30, '0', 30),
(2, 31, '0', 31),
(2, 32, '0', 32),
(2, 33, '0', 33),
(2, 34, '0', 34),
(2, 35, '0', 35),
(2, 36, '0', 36),
(2, 37, '0', 37),
(2, 38, '0', 38),
(2, 39, '0', 39),
(2, 40, '0', 40),
(2, 41, '0', 41),
(2, 42, '0', 42),
(2, 43, '0', 43),
(2, 44, '0', 44),
(2, 45, '0', 45),
(2, 46, '0', 46),
(2, 47, '0', 47);

-- --------------------------------------------------------

--
-- Table structure for table `dtb_delivtime`
--

CREATE TABLE IF NOT EXISTS `dtb_delivtime` (
  `deliv_id` int(11) NOT NULL,
  `time_id` int(11) NOT NULL,
  `deliv_time` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_delivtime`
--

INSERT INTO `dtb_delivtime` (`deliv_id`, `time_id`, `deliv_time`) VALUES
(1, 1, 'A.M.'),
(1, 2, 'P.M.');

-- --------------------------------------------------------

--
-- Table structure for table `dtb_deliv_deliv_id_seq`
--

CREATE TABLE IF NOT EXISTS `dtb_deliv_deliv_id_seq` (
  `sequence` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_deliv_deliv_id_seq`
--

INSERT INTO `dtb_deliv_deliv_id_seq` (`sequence`) VALUES
(2);

-- --------------------------------------------------------

--
-- Table structure for table `dtb_holiday`
--

CREATE TABLE IF NOT EXISTS `dtb_holiday` (
  `holiday_id` int(11) NOT NULL,
  `title` text NOT NULL,
  `month` smallint(6) NOT NULL,
  `day` smallint(6) NOT NULL,
  `rank` int(11) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `del_flg` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_holiday`
--

INSERT INTO `dtb_holiday` (`holiday_id`, `title`, `month`, `day`, `rank`, `creator_id`, `create_date`, `update_date`, `del_flg`) VALUES
(1, 'New Years (January 1)', 1, 1, 100, 0, '2015-07-15 10:21:12', '2015-07-15 10:21:12', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dtb_holiday_holiday_id_seq`
--

CREATE TABLE IF NOT EXISTS `dtb_holiday_holiday_id_seq` (
  `sequence` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_holiday_holiday_id_seq`
--

INSERT INTO `dtb_holiday_holiday_id_seq` (`sequence`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `dtb_index_list`
--

CREATE TABLE IF NOT EXISTS `dtb_index_list` (
  `table_name` text NOT NULL,
  `column_name` text NOT NULL,
  `recommend_flg` smallint(6) NOT NULL DEFAULT '0',
  `recommend_comment` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_index_list`
--

INSERT INTO `dtb_index_list` (`table_name`, `column_name`, `recommend_flg`, `recommend_comment`) VALUES
('dtb_customer', 'email_mobile', 0, 'Try when you want to improve the login processing speed when there is an increase in the number of members'),
('dtb_customer', 'mobile_phone_id', 1, ''),
('dtb_mobile_ext_session_id', 'create_date', 1, ''),
('dtb_mobile_ext_session_id', 'param_key', 1, ''),
('dtb_mobile_ext_session_id', 'param_value', 1, ''),
('dtb_mobile_ext_session_id', 'url', 1, ''),
('dtb_mobile_kara_mail', 'create_date', 1, ''),
('dtb_mobile_kara_mail', 'receive_date', 1, ''),
('dtb_mobile_kara_mail', 'token', 1, ''),
('dtb_order', 'order_email', 2, 'Try when there is a large number of orders.'),
('dtb_order', 'order_name01', 2, 'Try when there is a large number of orders.'),
('dtb_order', 'order_name02', 0, 'Try when there is a large number of orders.'),
('dtb_order', 'order_tel01', 0, 'Try when there is a large number of orders.'),
('dtb_order', 'order_tel02', 0, 'Try when there is a large number of orders.'),
('dtb_order', 'order_tel03', 0, 'Try when there is a large number of orders.'),
('dtb_order', 'status', 2, 'Try when there is a large number of orders.'),
('dtb_order_detail', 'product_id', 1, ''),
('dtb_order_temp', 'order_temp_id', 0, 'Try when there is a large number of orders.'),
('dtb_products', 'name', 2, 'Try when you want to improve the product name search speed'),
('dtb_products_class', 'product_id', 1, ''),
('dtb_product_categories', 'category_id', 2, 'Try when there are many categories'),
('dtb_send_customer', 'customer_id', 1, ''),
('mtb_zip', 'zipcode', 2, 'Try when the postal code search is slow. It is recommended that you disable this when updating postal code data.');

-- --------------------------------------------------------

--
-- Table structure for table `dtb_kiyaku`
--

CREATE TABLE IF NOT EXISTS `dtb_kiyaku` (
  `kiyaku_id` int(11) NOT NULL,
  `kiyaku_title` text NOT NULL,
  `kiyaku_text` text NOT NULL,
  `rank` int(11) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `del_flg` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_kiyaku`
--

INSERT INTO `dtb_kiyaku` (`kiyaku_id`, `kiyaku_title`, `kiyaku_text`, `rank`, `creator_id`, `create_date`, `update_date`, `del_flg`) VALUES
(1, 'User agreement', 'USE OF THIS SITE (AND ITS ENTIRE CONTENTS, INCLUDING BUT NOT LIMITED TO THE TEXT, DATA, INFORMATION, MATERIALS, SOFTWARE, AND GRAPHICS CONTAINED OR PROVIDED IN THIS WEB SITE) AND THE SERVICES OFFERED BY THIS WEBSITE, IS SUBJECT TO THE TERMS AND CONDITIONS OF THIS USER AGREEMENT FORM). BY USING THIS WEB SITE OR, IF YOU ARE A REGISTERED USER, BY CLICKING ON THE SUBMIT BUTTON ON THE REGISTRATION PAGE: (1) YOU REPRESENT THAT YOU HAVE READ AND UNDERSTAND, AND HAVE THE CAPACITY AND AUTHORITY TO ENTER INTO, THIS USER AGREEMENT AND (2) YOU AGREE TO BE BOUND BY ALL OF THE TERMS AND CONDITIONS OF THIS USER AGREEMENT.\nThe administration may change the terms and conditions of this user agreement at any time. In addition, the current user agreement can always be found in the membership area of this Web site. By using this Web site after any such changes take place, you agree to be bound by such changes. If you do not agree to be bound by any such changes, you must immediately stop using this web site.', 12, 0, '2015-07-15 10:21:13', '2015-07-15 10:21:13', 0),
(2, 'Termination', 'These terms and conditions are effective until they are terminated by you or the administration. You may terminate this agreement at any time by contacting this administration to disable your account ID. These terms and conditions will terminate immediately without notice.', 11, 0, '2015-07-15 10:21:13', '2015-07-15 10:21:13', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dtb_kiyaku_kiyaku_id_seq`
--

CREATE TABLE IF NOT EXISTS `dtb_kiyaku_kiyaku_id_seq` (
  `sequence` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_kiyaku_kiyaku_id_seq`
--

INSERT INTO `dtb_kiyaku_kiyaku_id_seq` (`sequence`) VALUES
(2);

-- --------------------------------------------------------

--
-- Table structure for table `dtb_mailmaga_template`
--

CREATE TABLE IF NOT EXISTS `dtb_mailmaga_template` (
  `template_id` int(11) NOT NULL,
  `subject` text,
  `mail_method` int(11) DEFAULT NULL,
  `body` text,
  `del_flg` smallint(6) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dtb_mailmaga_template_template_id_seq`
--

CREATE TABLE IF NOT EXISTS `dtb_mailmaga_template_template_id_seq` (
  `sequence` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dtb_mailtemplate`
--

CREATE TABLE IF NOT EXISTS `dtb_mailtemplate` (
  `template_id` int(11) NOT NULL,
  `subject` text,
  `header` text,
  `footer` text,
  `creator_id` int(11) NOT NULL,
  `del_flg` smallint(6) NOT NULL DEFAULT '0',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_mailtemplate`
--

INSERT INTO `dtb_mailtemplate` (`template_id`, `subject`, `header`, `footer`, `creator_id`, `del_flg`, `create_date`, `update_date`) VALUES
(1, 'Thank you for ordering!', 'Thank you for your order.\nPlease check if the below purchased items are correct.\n\n', '\n============================================\n\n\nThis is an automatic message.\nPlease do not reply to this e-mail.\n\n\nIf you have any questions or issues, please go here.\n\n', 0, 0, '2015-07-15 10:21:13', '2015-07-15 10:21:13'),
(5, 'Your inquiry has been received', NULL, NULL, 0, 0, '2015-07-15 10:21:13', '2015-07-15 10:21:13');

-- --------------------------------------------------------

--
-- Table structure for table `dtb_mail_history`
--

CREATE TABLE IF NOT EXISTS `dtb_mail_history` (
  `send_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `send_date` datetime DEFAULT NULL,
  `template_id` int(11) DEFAULT NULL,
  `creator_id` int(11) NOT NULL,
  `subject` text,
  `mail_body` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_mail_history`
--

INSERT INTO `dtb_mail_history` (`send_id`, `order_id`, `send_date`, `template_id`, `creator_id`, `subject`, `mail_body`) VALUES
(1, 1, '2015-07-23 10:01:22', 1, 2, '[e-nagara] Thank you for ordering!', 'Dear guest guest1\n\nThank you for your order.\nPlease check if the below purchased items are correct.\n\n************************************************\n Billing amount\n************************************************\n\nOrder number:1\nPayment total:$ 10,206\nPayment method:Cash on delivery\nMessage:test\n\n\n************************************************\n Details of ordered product \n************************************************\n\nProduct code: MR03LN\nProduct name: Rental Mobile WiFi MR03LN(300JPY/Day)  \nUnit price:$ 10,206\nQuantity:1\n\n-------------------------------------------------\nSubtotal $ 10,206 (Of which, sales tax $ 486)\nDiscount $ 0\nShipping fee $ 0\nProcessing fee $ 0\n============================================\nTotal $ 10,206\n\n************************************************\n Delivery information\n************************************************\n\nDelivery destination \n Name:guest guest1\n Postal code:\n Address:sdfsdf, DA 56456 USAsdfsdf, DA 56456 USA\n Phone number:3333-4444-5555\n Fax number :\n Delivery date:No designation\n Delivery time:A.M.\n\nProduct code: MR03LN\nProduct name: Rental Mobile WiFi MR03LN(300JPY/Day)  \nUnit price:$ 10,206\nQuantity:1\n\n\n============================================\n\n\nThis is an automatic message.\nPlease do not reply to this e-mail.\n\n\nIf you have any questions or issues, please go here.');

-- --------------------------------------------------------

--
-- Table structure for table `dtb_mail_history_send_id_seq`
--

CREATE TABLE IF NOT EXISTS `dtb_mail_history_send_id_seq` (
  `sequence` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_mail_history_send_id_seq`
--

INSERT INTO `dtb_mail_history_send_id_seq` (`sequence`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `dtb_maker`
--

CREATE TABLE IF NOT EXISTS `dtb_maker` (
  `maker_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `rank` int(11) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `del_flg` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dtb_maker_count`
--

CREATE TABLE IF NOT EXISTS `dtb_maker_count` (
  `maker_id` int(11) NOT NULL,
  `product_count` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dtb_maker_maker_id_seq`
--

CREATE TABLE IF NOT EXISTS `dtb_maker_maker_id_seq` (
  `sequence` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dtb_member`
--

CREATE TABLE IF NOT EXISTS `dtb_member` (
  `member_id` int(11) NOT NULL,
  `name` text,
  `department` text,
  `login_id` text NOT NULL,
  `password` text NOT NULL,
  `salt` text NOT NULL,
  `authority` smallint(6) NOT NULL,
  `rank` int(11) NOT NULL DEFAULT '0',
  `work` smallint(6) NOT NULL DEFAULT '1',
  `del_flg` smallint(6) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `login_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_member`
--

INSERT INTO `dtb_member` (`member_id`, `name`, `department`, `login_id`, `password`, `salt`, `authority`, `rank`, `work`, `del_flg`, `creator_id`, `create_date`, `update_date`, `login_date`) VALUES
(1, 'dummy', NULL, 'dummy', 'dummy', 'dummy', 0, 0, 1, 1, 0, '2015-07-15 10:21:13', '2015-07-15 10:21:13', NULL),
(2, 'Administrator', NULL, 'admin', '3a301f5f2af7ee373adcafe6d654c9ef975b8b8a5e633a573cf8718be3a19338', 'ceadrauoco', 0, 1, 1, 0, 0, '2015-07-15 10:21:46', '2015-07-15 10:21:46', '2015-07-23 08:35:13');

-- --------------------------------------------------------

--
-- Table structure for table `dtb_member_member_id_seq`
--

CREATE TABLE IF NOT EXISTS `dtb_member_member_id_seq` (
  `sequence` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_member_member_id_seq`
--

INSERT INTO `dtb_member_member_id_seq` (`sequence`) VALUES
(2);

-- --------------------------------------------------------

--
-- Table structure for table `dtb_mobile_ext_session_id`
--

CREATE TABLE IF NOT EXISTS `dtb_mobile_ext_session_id` (
  `session_id` text NOT NULL,
  `param_key` text,
  `param_value` text,
  `url` text,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dtb_module`
--

CREATE TABLE IF NOT EXISTS `dtb_module` (
  `module_id` int(11) NOT NULL,
  `module_code` text NOT NULL,
  `module_name` text NOT NULL,
  `sub_data` text,
  `auto_update_flg` smallint(6) NOT NULL DEFAULT '0',
  `del_flg` smallint(6) NOT NULL DEFAULT '0',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_module`
--

INSERT INTO `dtb_module` (`module_id`, `module_code`, `module_name`, `sub_data`, `auto_update_flg`, `del_flg`, `create_date`, `update_date`) VALUES
(0, '0', 'patch', NULL, 0, 0, '2015-07-15 10:21:13', '2015-07-15 10:21:13');

-- --------------------------------------------------------

--
-- Table structure for table `dtb_module_update_logs`
--

CREATE TABLE IF NOT EXISTS `dtb_module_update_logs` (
  `log_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `buckup_path` text,
  `error_flg` smallint(6) DEFAULT '0',
  `error` text,
  `ok` text,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dtb_module_update_logs_log_id_seq`
--

CREATE TABLE IF NOT EXISTS `dtb_module_update_logs_log_id_seq` (
  `sequence` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dtb_news`
--

CREATE TABLE IF NOT EXISTS `dtb_news` (
  `news_id` int(11) NOT NULL,
  `news_date` datetime DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `news_title` text NOT NULL,
  `news_title_zh` mediumtext,
  `news_comment` text,
  `news_comment_zh` mediumtext,
  `news_url` text,
  `news_select` smallint(6) NOT NULL DEFAULT '0',
  `link_method` text,
  `creator_id` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `del_flg` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_news`
--

INSERT INTO `dtb_news` (`news_id`, `news_date`, `rank`, `news_title`, `news_title_zh`, `news_comment`, `news_comment_zh`, `news_url`, `news_select`, `link_method`, `creator_id`, `create_date`, `update_date`, `del_flg`) VALUES
(1, '2014-09-05 00:00:00', 1, 'Rental Mobile WiFi Business, Now on Sales!!', '出租随身WiFi的营业开始!!', 'SIM Card Sales will start in October!', '外国人旅行者向けサービス　携帯WiFiルータのレンタル、SIMカード販売!\r\n\r\n从10月开始SIM卡的销售!!', NULL, 0, '1', 2, '2015-07-15 10:21:13', '2015-07-23 09:28:05', 0),
(2, '2014-10-20 00:00:00', 2, 'Prepaid SIM Card, Now on Sales!!', 'SIM卡i的銷售开始!!', 'Prepared two type SIM Card!\r\n\r\n1. 100MB/Day * 15Days (Nano, Micro)\r\n2. 100MB/Day * 30Days (Nano, Micro)\r\n\r\n※Before purchase, please check "Compatibility" and "User Guide"', 'Prepared two type SIM Card!\r\n\r\n1. 100MB/Day * 15Days (Nano, Micro)\r\n2. 100MB/Day * 30Days (Nano, Micro)\r\n\r\n※Before purchase, please check "Compatibility" and "User Guide"', NULL, 0, '1', 2, '2015-07-23 09:29:13', '2015-07-23 09:29:13', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dtb_news_news_id_seq`
--

CREATE TABLE IF NOT EXISTS `dtb_news_news_id_seq` (
  `sequence` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_news_news_id_seq`
--

INSERT INTO `dtb_news_news_id_seq` (`sequence`) VALUES
(2);

-- --------------------------------------------------------

--
-- Table structure for table `dtb_order`
--

CREATE TABLE IF NOT EXISTS `dtb_order` (
  `order_id` int(11) NOT NULL,
  `order_temp_id` text,
  `customer_id` int(11) NOT NULL,
  `message` text,
  `order_name01` text,
  `order_name02` text,
  `order_kana01` text,
  `order_kana02` text,
  `order_email` text,
  `order_tel01` text,
  `order_tel02` text,
  `order_tel03` text,
  `order_fax01` text,
  `order_fax02` text,
  `order_fax03` text,
  `order_zip01` text,
  `order_zip02` text,
  `order_zipcode` text,
  `order_pref` smallint(6) DEFAULT NULL,
  `order_addr01` text,
  `order_addr02` text,
  `order_sex` smallint(6) DEFAULT NULL,
  `order_birth` datetime DEFAULT NULL,
  `order_job` int(11) DEFAULT NULL,
  `subtotal` decimal(10,0) DEFAULT NULL,
  `discount` decimal(10,0) NOT NULL DEFAULT '0',
  `deliv_id` int(11) DEFAULT NULL,
  `deliv_fee` decimal(10,0) DEFAULT NULL,
  `charge` decimal(10,0) DEFAULT NULL,
  `use_point` decimal(10,0) NOT NULL DEFAULT '0',
  `add_point` decimal(10,0) NOT NULL DEFAULT '0',
  `birth_point` decimal(10,0) NOT NULL DEFAULT '0',
  `tax` decimal(10,0) DEFAULT NULL,
  `total` decimal(10,0) DEFAULT NULL,
  `payment_total` decimal(10,0) DEFAULT NULL,
  `payment_id` int(11) DEFAULT NULL,
  `payment_method` text,
  `note` text,
  `status` smallint(6) DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `commit_date` datetime DEFAULT NULL,
  `payment_date` datetime DEFAULT NULL,
  `device_type_id` int(11) DEFAULT NULL,
  `del_flg` smallint(6) NOT NULL DEFAULT '0',
  `memo01` text,
  `memo02` text,
  `memo03` text,
  `memo04` text,
  `memo05` text,
  `memo06` text,
  `memo07` text,
  `memo08` text,
  `memo09` text,
  `memo10` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_order`
--

INSERT INTO `dtb_order` (`order_id`, `order_temp_id`, `customer_id`, `message`, `order_name01`, `order_name02`, `order_kana01`, `order_kana02`, `order_email`, `order_tel01`, `order_tel02`, `order_tel03`, `order_fax01`, `order_fax02`, `order_fax03`, `order_zip01`, `order_zip02`, `order_zipcode`, `order_pref`, `order_addr01`, `order_addr02`, `order_sex`, `order_birth`, `order_job`, `subtotal`, `discount`, `deliv_id`, `deliv_fee`, `charge`, `use_point`, `add_point`, `birth_point`, `tax`, `total`, `payment_total`, `payment_id`, `payment_method`, `note`, `status`, `create_date`, `update_date`, `commit_date`, `payment_date`, `device_type_id`, `del_flg`, `memo01`, `memo02`, `memo03`, `memo04`, `memo05`, `memo06`, `memo07`, `memo08`, `memo09`, `memo10`) VALUES
(1, '55b0bb3e22f93SxkXFSYH', 0, 'test', 'guest', 'guest1', NULL, NULL, 'testguest@gmail.com', '3333', '4444', '5555', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sdfsdf, DA 56456 USA', 'sdfsdf, DA 56456 USA', 1, NULL, NULL, '10206', '0', 1, '0', '0', '0', '0', '0', '486', '10206', '10206', 4, 'Cash on delivery', NULL, 1, '2015-07-23 10:01:22', '2015-07-23 10:01:22', NULL, NULL, 10, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dtb_order_detail`
--

CREATE TABLE IF NOT EXISTS `dtb_order_detail` (
  `order_detail_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_class_id` int(11) NOT NULL,
  `product_name` text NOT NULL,
  `product_code` text,
  `classcategory_name1` text,
  `classcategory_name2` text,
  `price` decimal(10,0) DEFAULT NULL,
  `quantity` decimal(10,0) DEFAULT NULL,
  `point_rate` decimal(10,0) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_order_detail`
--

INSERT INTO `dtb_order_detail` (`order_detail_id`, `order_id`, `product_id`, `product_class_id`, `product_name`, `product_code`, `classcategory_name1`, `classcategory_name2`, `price`, `quantity`, `point_rate`) VALUES
(1, 1, 5, 13, 'Rental Mobile WiFi MR03LN(300JPY/Day)', 'MR03LN', NULL, NULL, '9720', '1', '0');

-- --------------------------------------------------------

--
-- Table structure for table `dtb_order_detail_order_detail_id_seq`
--

CREATE TABLE IF NOT EXISTS `dtb_order_detail_order_detail_id_seq` (
  `sequence` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_order_detail_order_detail_id_seq`
--

INSERT INTO `dtb_order_detail_order_detail_id_seq` (`sequence`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `dtb_order_order_id_seq`
--

CREATE TABLE IF NOT EXISTS `dtb_order_order_id_seq` (
  `sequence` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_order_order_id_seq`
--

INSERT INTO `dtb_order_order_id_seq` (`sequence`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `dtb_order_temp`
--

CREATE TABLE IF NOT EXISTS `dtb_order_temp` (
  `order_temp_id` text NOT NULL,
  `customer_id` int(11) NOT NULL,
  `message` text,
  `order_name01` text,
  `order_name02` text,
  `order_kana01` text,
  `order_kana02` text,
  `order_email` text,
  `order_tel01` text,
  `order_tel02` text,
  `order_tel03` text,
  `order_fax01` text,
  `order_fax02` text,
  `order_fax03` text,
  `order_zip01` text,
  `order_zip02` text,
  `order_zipcode` text,
  `order_pref` smallint(6) DEFAULT NULL,
  `order_addr01` text,
  `order_addr02` text,
  `order_sex` smallint(6) DEFAULT NULL,
  `order_birth` datetime DEFAULT NULL,
  `order_job` int(11) DEFAULT NULL,
  `subtotal` decimal(10,0) DEFAULT NULL,
  `discount` decimal(10,0) NOT NULL DEFAULT '0',
  `deliv_id` int(11) DEFAULT NULL,
  `deliv_fee` decimal(10,0) DEFAULT NULL,
  `charge` decimal(10,0) DEFAULT NULL,
  `use_point` decimal(10,0) NOT NULL DEFAULT '0',
  `add_point` decimal(10,0) NOT NULL DEFAULT '0',
  `birth_point` decimal(10,0) NOT NULL DEFAULT '0',
  `tax` decimal(10,0) DEFAULT NULL,
  `total` decimal(10,0) DEFAULT NULL,
  `payment_total` decimal(10,0) DEFAULT NULL,
  `payment_id` int(11) DEFAULT NULL,
  `payment_method` text,
  `note` text,
  `mail_flag` smallint(6) DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  `deliv_check` smallint(6) DEFAULT NULL,
  `point_check` smallint(6) DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `device_type_id` int(11) DEFAULT NULL,
  `del_flg` smallint(6) NOT NULL DEFAULT '0',
  `order_id` int(11) DEFAULT NULL,
  `memo01` text,
  `memo02` text,
  `memo03` text,
  `memo04` text,
  `memo05` text,
  `memo06` text,
  `memo07` text,
  `memo08` text,
  `memo09` text,
  `memo10` text,
  `session` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_order_temp`
--

INSERT INTO `dtb_order_temp` (`order_temp_id`, `customer_id`, `message`, `order_name01`, `order_name02`, `order_kana01`, `order_kana02`, `order_email`, `order_tel01`, `order_tel02`, `order_tel03`, `order_fax01`, `order_fax02`, `order_fax03`, `order_zip01`, `order_zip02`, `order_zipcode`, `order_pref`, `order_addr01`, `order_addr02`, `order_sex`, `order_birth`, `order_job`, `subtotal`, `discount`, `deliv_id`, `deliv_fee`, `charge`, `use_point`, `add_point`, `birth_point`, `tax`, `total`, `payment_total`, `payment_id`, `payment_method`, `note`, `mail_flag`, `status`, `deliv_check`, `point_check`, `create_date`, `update_date`, `device_type_id`, `del_flg`, `order_id`, `memo01`, `memo02`, `memo03`, `memo04`, `memo05`, `memo06`, `memo07`, `memo08`, `memo09`, `memo10`, `session`) VALUES
('55b0bb3e22f93SxkXFSYH', 0, 'test', 'guest', 'guest1', NULL, NULL, 'testguest@gmail.com', '3333', '4444', '5555', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sdfsdf, DA 56456 USA', 'sdfsdf, DA 56456 USA', 1, NULL, NULL, '10206', '0', 1, '0', '0', '0', '0', '0', '486', '10206', '10206', 4, 'Cash on delivery', NULL, 1, NULL, NULL, 2, '2015-07-23 10:01:10', '2015-07-23 10:01:19', 10, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:16:{s:4:"cart";a:1:{i:1;a:3:{i:1;a:7:{s:2:"id";s:2:"13";s:8:"quantity";s:1:"1";s:7:"cart_no";i:1;s:13:"productsClass";a:15:{s:10:"product_id";s:1:"5";s:5:"stock";s:3:"134";s:15:"stock_unlimited";s:1:"0";s:10:"sale_limit";N;s:7:"price02";s:4:"9720";s:10:"point_rate";s:1:"0";s:12:"product_code";s:6:"MR03LN";s:16:"product_class_id";s:2:"13";s:19:"classcategory_name1";N;s:11:"class_name1";N;s:19:"classcategory_name2";N;s:11:"class_name2";N;s:4:"name";s:37:"Rental Mobile WiFi MR03LN(300JPY/Day)";s:15:"main_list_image";s:26:"07230948_55b0b85f44a9b.jpg";s:10:"main_image";s:26:"07230948_55b0b8655aa82.jpg";}s:5:"price";s:4:"9720";s:10:"point_rate";s:1:"0";s:12:"total_inctax";d:10206;}s:15:"cancel_purchase";b:0;i:0;a:4:{s:5:"price";s:0:"";s:8:"quantity";s:0:"";s:10:"point_rate";s:0:"";s:2:"id";a:1:{i:0;s:0:"";}}}}s:8:"prev_url";s:69:"/resize_image.php?image=07230948_55b0b85f44a9b.jpg&width=65&height=65";s:13:"transactionid";s:40:"91af59c1d03b0e67ac4aeaee44beb2971e299493";s:4:"site";a:6:{s:18:"pre_regist_success";b:0;s:14:"regist_success";b:0;s:8:"pre_page";s:21:"/shopping/confirm.php";s:8:"now_page";s:21:"/shopping/confirm.php";s:9:"lang_code";s:5:"en-US";s:6:"uniqid";s:21:"55b0bb3e22f93SxkXFSYH";}s:4:"cert";s:8:"7WDhcBTF";s:9:"member_id";s:1:"2";s:8:"login_id";s:5:"admin";s:9:"authority";s:1:"0";s:10:"login_name";s:13:"Administrator";s:6:"uniqid";s:21:"55b0a741ebf05XFgXDECy";s:10:"last_login";s:19:"2015-07-15 10:23:03";s:13:"cart_prev_url";s:60:"http://app10.lifetimetech.vn/products/list.php?category_id=1";s:7:"cartKey";s:1:"1";s:30:"savecart_55b0bb3e22f93SxkXFSYH";a:3:{i:1;a:7:{s:2:"id";s:2:"13";s:8:"quantity";s:1:"1";s:7:"cart_no";i:1;s:13:"productsClass";a:15:{s:10:"product_id";s:1:"5";s:5:"stock";s:3:"134";s:15:"stock_unlimited";s:1:"0";s:10:"sale_limit";N;s:7:"price02";s:4:"9720";s:10:"point_rate";s:1:"0";s:12:"product_code";s:6:"MR03LN";s:16:"product_class_id";s:2:"13";s:19:"classcategory_name1";N;s:11:"class_name1";N;s:19:"classcategory_name2";N;s:11:"class_name2";N;s:4:"name";s:37:"Rental Mobile WiFi MR03LN(300JPY/Day)";s:15:"main_list_image";s:26:"07230948_55b0b85f44a9b.jpg";s:10:"main_image";s:26:"07230948_55b0b8655aa82.jpg";}s:5:"price";s:4:"9720";s:10:"point_rate";s:1:"0";s:12:"total_inctax";d:10206;}s:15:"cancel_purchase";b:0;i:0;a:4:{s:5:"price";s:0:"";s:8:"quantity";s:0:"";s:10:"point_rate";s:0:"";s:2:"id";a:1:{i:0;s:0:"";}}}s:8:"shipping";a:1:{i:0;a:21:{s:15:"shipping_name01";s:5:"guest";s:15:"shipping_name02";s:6:"guest1";s:15:"shipping_kana01";s:0:"";s:15:"shipping_kana02";s:0:"";s:12:"shipping_sex";s:1:"1";s:16:"shipping_zipcode";s:0:"";s:13:"shipping_pref";s:0:"";s:15:"shipping_addr01";s:20:"sdfsdf, DA 56456 USA";s:15:"shipping_addr02";s:20:"sdfsdf, DA 56456 USA";s:14:"shipping_tel01";s:4:"3333";s:14:"shipping_tel02";s:4:"4444";s:14:"shipping_tel03";s:4:"5555";s:14:"shipping_fax01";s:0:"";s:14:"shipping_fax02";s:0:"";s:14:"shipping_fax03";s:0:"";s:11:"shipping_id";i:0;s:13:"shipment_item";a:1:{i:13;a:6:{s:11:"shipping_id";i:0;s:16:"product_class_id";s:2:"13";s:8:"quantity";s:1:"1";s:13:"productsClass";a:85:{s:10:"product_id";s:1:"5";s:5:"stock";s:3:"134";s:15:"stock_unlimited";s:1:"0";s:10:"sale_limit";N;s:7:"price01";s:4:"1296";s:7:"price02";s:4:"9720";s:10:"point_rate";s:1:"0";s:12:"product_code";s:6:"MR03LN";s:16:"product_class_id";s:2:"13";s:7:"del_flg";s:1:"0";s:15:"product_type_id";s:1:"1";s:13:"down_filename";N;s:17:"down_realfilename";N;s:19:"classcategory_name1";N;s:5:"rank1";s:1:"0";s:11:"class_name1";N;s:9:"class_id1";N;s:17:"classcategory_id1";s:1:"0";s:17:"classcategory_id2";s:1:"0";s:19:"classcategory_name2";N;s:5:"rank2";s:1:"0";s:11:"class_name2";N;s:9:"class_id2";N;s:4:"name";s:37:"Rental Mobile WiFi MR03LN(300JPY/Day)";s:8:"maker_id";N;s:6:"status";s:1:"1";s:8:"comment1";N;s:8:"comment2";N;s:8:"comment3";N;s:8:"comment4";N;s:8:"comment5";N;s:8:"comment6";N;s:4:"note";N;s:17:"main_list_comment";s:153:"Rental Period 2015/6/20 -2015/7/30\r\nSuperLowPrice(Booking2015/1/1～5/25)\r\n\r\nHigh Speed! Mass Battery! Wide Area Coverage!\r\nExcellent Quality and Stable!";s:20:"main_list_comment_zh";s:165:"Rental Period 2015/6/20 -2015/7/30\r\nSuperLowPrice(Booking2015/1/1～5/25)\r\n\r\n高速通信!(150Mbps)大容量电池!当然日本全国均为服务区!\r\n每天100MB。";s:15:"main_list_image";s:26:"07230948_55b0b85f44a9b.jpg";s:12:"main_comment";s:996:"Rental Period 2015/6/20 -2015/7/30\r\nSuperLowPrice(Booking2015/1/1～5/25)\r\n\r\nDownlink : 150 Mbps / Uplink: 50 Mbps (Best Effort)\r\nData Usage : 100MB/1day(After exceeding, limited speed 128Kbps)\r\nUsage Time : 12Hours(Full Charge)\r\nConnectability: 10 Wi-Fi user simultaneously\r\nService Area : All over Japan\r\nVoIP: Supported, Voice Call: Not Supported\r\n\r\n每天100MB是多大的容量呢?能干什么呢?这是一个相当宽裕的容量\r\n①如果是收发电子邮件: 约20480封\r\n　　　　300个字符左右的文本电子邮件\r\n②如果是网页:　 约341页\r\n　　　　按Yahoo! Mobile的首页计算\r\n③如果是视频:　 约45分钟\r\n　　　　在Youtube上浏览9次5分钟的视频\r\n④如果是推特:　 约1125次\r\n　　　　利用正版应用软件发布140个\r\n　　　　全角字符的推特消息\r\n⑤如果是谷歌地图:　 约28次\r\n　　　　如果是利用应用软件缩放5次\r\n⑥如果是讯佳普: 约58次\r\n　　　　如果是3分钟的通话(Skype)";s:15:"main_comment_zh";s:1112:"Rental Period 2015/6/20 -2015/7/30\r\nSuperLowPrice(Booking2015/1/1～5/25)\r\nWiFi本体 : 日本製最優秀機種(2014年)\r\n传输速率 : 下行最大150Mbps、上行最大:50Mbps\r\n利用数据量 : 每天100MB(通信量超过后,传输速率最大128kbps)\r\n使用时间 : 12个小时(电量100%时)\r\n连接的Wi-Fi : 同时支持10Wi-Fi用户\r\n服务区 : 日本全国(不能在日本以外的国家利用)\r\n可能通信模式: 数据通信。会话和SMS不能。\r\n\r\n每天100MB是多大的容量呢?能干什么呢?这是一个相当宽裕的容量\r\n①如果是收发电子邮件: 约20480封\r\n　　　　300个字符左右的文本电子邮件\r\n②如果是网页:　 约341页\r\n　　　　按Yahoo! Mobile的首页计算\r\n③如果是视频:　 约45分钟\r\n　　　　在Youtube上浏览9次5分钟的视频\r\n④如果是推特:　 约1125次\r\n　　　　利用正版应用软件发布140个\r\n　　　　全角字符的推特消息\r\n⑤如果是谷歌地图:　 约28次\r\n　　　　如果是利用应用软件缩放5次\r\n⑥如果是讯佳普: 约58次\r\n　　　　如果是3分钟的通话(Skype)";s:10:"main_image";s:26:"07230948_55b0b8655aa82.jpg";s:16:"main_large_image";s:26:"07230948_55b0b86a22569.jpg";s:10:"sub_title1";N;s:12:"sub_comment1";N;s:10:"sub_image1";N;s:16:"sub_large_image1";N;s:10:"sub_title2";N;s:12:"sub_comment2";N;s:10:"sub_image2";N;s:16:"sub_large_image2";N;s:10:"sub_title3";N;s:12:"sub_comment3";N;s:10:"sub_image3";N;s:16:"sub_large_image3";N;s:10:"sub_title4";N;s:12:"sub_comment4";N;s:10:"sub_image4";N;s:16:"sub_large_image4";N;s:10:"sub_title5";N;s:12:"sub_comment5";N;s:10:"sub_image5";N;s:16:"sub_large_image5";N;s:10:"sub_title6";N;s:12:"sub_comment6";N;s:10:"sub_image6";N;s:16:"sub_large_image6";N;s:10:"creator_id";s:1:"2";s:11:"create_date";s:19:"2015-07-23 09:48:32";s:11:"update_date";s:19:"2015-07-23 09:48:32";s:13:"deliv_date_id";N;s:16:"product_code_min";s:6:"MR03LN";s:16:"product_code_max";s:6:"MR03LN";s:11:"price01_min";s:4:"1296";s:11:"price01_max";s:4:"1296";s:11:"price02_min";s:4:"9720";s:11:"price02_max";s:4:"9720";s:9:"stock_min";s:3:"134";s:9:"stock_max";s:3:"134";s:19:"stock_unlimited_min";s:1:"0";s:19:"stock_unlimited_max";s:1:"0";s:9:"deliv_fee";N;s:11:"class_count";s:1:"1";s:10:"maker_name";N;s:18:"price01_min_inctax";d:1361;s:18:"price01_max_inctax";d:1361;s:18:"price02_min_inctax";d:10206;s:18:"price02_max_inctax";d:10206;}s:5:"price";s:4:"9720";s:12:"total_inctax";d:10206;}}s:8:"deliv_id";s:1:"1";s:7:"time_id";s:1:"1";s:13:"shipping_time";s:4:"A.M.";s:13:"shipping_date";s:0:"";}}s:8:"order_id";i:1;}');

-- --------------------------------------------------------

--
-- Table structure for table `dtb_other_deliv`
--

CREATE TABLE IF NOT EXISTS `dtb_other_deliv` (
  `other_deliv_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `name01` text,
  `name02` text,
  `kana01` text,
  `kana02` text,
  `zip01` text,
  `zip02` text,
  `zipcode` text,
  `pref` smallint(6) DEFAULT NULL,
  `addr01` text,
  `addr02` text,
  `tel01` text,
  `tel02` text,
  `tel03` text,
  `fax01` text,
  `fax02` text,
  `fax03` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dtb_other_deliv_other_deliv_id_seq`
--

CREATE TABLE IF NOT EXISTS `dtb_other_deliv_other_deliv_id_seq` (
  `sequence` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dtb_ownersstore_settings`
--

CREATE TABLE IF NOT EXISTS `dtb_ownersstore_settings` (
  `public_key` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dtb_pagelayout`
--

CREATE TABLE IF NOT EXISTS `dtb_pagelayout` (
  `device_type_id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL,
  `page_name` text,
  `url` text NOT NULL,
  `filename` text,
  `header_chk` smallint(6) DEFAULT '1',
  `footer_chk` smallint(6) DEFAULT '1',
  `edit_flg` smallint(6) DEFAULT '1',
  `author` text,
  `description` text,
  `keyword` text,
  `update_url` text,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_pagelayout`
--

INSERT INTO `dtb_pagelayout` (`device_type_id`, `page_id`, `page_name`, `url`, `filename`, `header_chk`, `footer_chk`, `edit_flg`, `author`, `description`, `keyword`, `update_url`, `create_date`, `update_date`) VALUES
(1, 0, NULL, 'preview', 'preview', 1, 1, 1, NULL, NULL, NULL, NULL, '2015-07-15 10:21:14', '2015-07-15 10:21:14'),
(1, 1, 'TOP page', 'index.php', 'index', 1, 1, 2, NULL, NULL, NULL, NULL, '2015-07-15 10:21:14', '2015-07-15 10:21:14'),
(1, 2, 'Product list page', 'products/list.php', 'products/list', 1, 1, 2, NULL, NULL, NULL, NULL, '2015-07-15 10:21:14', '2015-07-15 10:21:14'),
(1, 3, 'Product search page', 'products/search.php', 'products/search', 1, 1, 2, NULL, NULL, NULL, NULL, '2015-07-15 10:21:14', '2015-07-15 10:21:14'),
(1, 4, 'Product category page', 'products/category_list.php', 'products/category_list', 1, 1, 2, NULL, NULL, NULL, NULL, '2015-07-15 10:21:14', '2015-07-15 10:21:14'),
(1, 5, 'Product details page', 'products/detail.php', 'products/detail', 1, 1, 2, NULL, NULL, NULL, NULL, '2015-07-15 10:21:14', '2015-07-15 10:21:14'),
(1, 6, 'MY page', 'mypage/index.php', 'mypage/index', 1, 1, 2, NULL, NULL, NULL, NULL, '2015-07-15 10:21:14', '2015-07-15 10:21:14'),
(1, 7, 'MY page/Change details of member registration (input page)', 'mypage/change.php', 'mypage/change', 1, 1, 2, NULL, NULL, NULL, NULL, '2015-07-15 10:21:14', '2015-07-15 10:21:14'),
(1, 8, 'MY page/Change details of member registration (completion page)', 'mypage/change_complete.php', 'mypage/change_complete', 1, 1, 2, NULL, NULL, NULL, NULL, '2015-07-15 10:21:14', '2015-07-15 10:21:14'),
(1, 9, 'MY page/Add and change shipping destinations', 'mypage/delivery.php', 'mypage/delivery', 1, 1, 2, NULL, NULL, NULL, NULL, '2015-07-15 10:21:14', '2015-07-15 10:21:14'),
(1, 10, 'MY page/List of favorites', 'mypage/favorite.php', 'mypage/favorite', 1, 1, 2, NULL, NULL, NULL, NULL, '2015-07-15 10:21:14', '2015-07-15 10:21:14'),
(1, 11, 'MY page/Details of purchase history', 'mypage/history.php', 'mypage/history', 1, 1, 2, NULL, NULL, NULL, NULL, '2015-07-15 10:21:14', '2015-07-15 10:21:14'),
(1, 12, 'MY page/Login', 'mypage/login.php', 'mypage/login', 1, 1, 2, NULL, NULL, NULL, NULL, '2015-07-15 10:21:14', '2015-07-15 10:21:14'),
(1, 13, 'MY page/Procedure for membership withdrawal (input page)', 'mypage/refusal.php', 'mypage/refusal', 1, 1, 2, NULL, NULL, NULL, NULL, '2015-07-15 10:21:14', '2015-07-15 10:21:14'),
(1, 14, 'MY page/Procedure for membership withdrawal (completion page)', 'mypage/refusal_complete.php', 'mypage/refusal_complete', 1, 1, 2, NULL, NULL, NULL, NULL, '2015-07-15 10:21:14', '2015-07-15 10:21:14'),
(1, 15, 'About this site', 'abouts/index.php', 'abouts/index', 1, 1, 2, NULL, NULL, NULL, NULL, '2015-07-15 10:21:15', '2015-07-15 10:21:15'),
(1, 16, 'What is inside your basket now', 'cart/index.php', 'cart/index', 1, 1, 2, NULL, NULL, NULL, NULL, '2015-07-15 10:21:15', '2015-07-15 10:21:15'),
(1, 17, 'Inquiry (input page)', 'contact/index.php', 'contact/index', 1, 1, 2, NULL, NULL, NULL, NULL, '2015-07-15 10:21:15', '2015-07-15 10:21:15'),
(1, 18, 'Inquiry (completion page)', 'contact/complete.php', 'contact/complete', 1, 1, 2, NULL, NULL, NULL, NULL, '2015-07-15 10:21:15', '2015-07-15 10:21:15'),
(1, 19, 'Member registration', 'entry/index.php', 'entry/index', 1, 1, 2, NULL, NULL, NULL, NULL, '2015-07-15 10:21:15', '2015-07-15 10:21:15'),
(1, 20, 'Usage agreement', 'entry/kiyaku.php', 'entry/kiyaku', 1, 1, 2, NULL, NULL, NULL, NULL, '2015-07-15 10:21:15', '2015-07-15 10:21:15'),
(1, 21, 'Finish temporary member registration', 'entry/complete.php', 'entry/complete', 1, 1, 2, NULL, NULL, NULL, NULL, '2015-07-15 10:21:15', '2015-07-15 10:21:15'),
(1, 22, 'Mobile e-mail registration', 'entry/email_mobile.php', 'entry/email_mobile', 1, 1, 2, NULL, NULL, NULL, NULL, '2015-07-15 10:21:15', '2015-07-15 10:21:15'),
(1, 23, 'Legal-based notation related to specified commercial transactions', 'order/index.php', 'order/index', 1, 1, 2, NULL, NULL, NULL, NULL, '2015-07-15 10:21:15', '2015-07-15 10:21:15'),
(1, 24, 'Member registration completed', 'regist/complete.php', 'regist/complete', 1, 1, 2, NULL, NULL, NULL, NULL, '2015-07-15 10:21:15', '2015-07-15 10:21:15'),
(1, 25, 'Product purchase/Login', 'shopping/index.php', 'shopping/index', 1, 1, 2, NULL, NULL, NULL, NULL, '2015-07-15 10:21:15', '2015-07-15 10:21:15'),
(1, 26, 'Product purchase/Designation of delivery destination', 'shopping/deliv.php', 'shopping/deliv', 1, 1, 2, NULL, NULL, NULL, NULL, '2015-07-15 10:21:15', '2015-07-15 10:21:15'),
(1, 27, 'Product purchase/Designation of multiple delivery destinations', 'shopping/multiple.php', 'shopping/multiple', 1, 1, 2, NULL, NULL, NULL, NULL, '2015-07-15 10:21:15', '2015-07-15 10:21:15'),
(1, 28, 'Product purchase/Designation of payment method and delivery time, etc.', 'shopping/payment.php', 'shopping/payment', 1, 1, 2, NULL, NULL, NULL, NULL, '2015-07-15 10:21:15', '2015-07-15 10:21:15'),
(1, 29, 'Product purchase/Confirmation of input details', 'shopping/confirm.php', 'shopping/confirm', 1, 1, 2, NULL, NULL, NULL, NULL, '2015-07-15 10:21:15', '2015-07-15 10:21:15'),
(1, 30, 'Product purchase/Order complete', 'shopping/complete.php', 'shopping/complete', 1, 1, 2, NULL, NULL, NULL, NULL, '2015-07-15 10:21:15', '2015-07-15 10:21:15'),
(1, 31, 'Non-compatible device', 'unsupported/index.php', 'unsupported/index', 1, 1, 2, NULL, NULL, NULL, NULL, '2015-07-15 10:21:15', '2015-07-15 10:21:15'),
(1, 32, 'Usage guide', 'guide/index.php', 'guide/index', 1, 1, 2, NULL, NULL, NULL, NULL, '2015-07-15 10:21:15', '2015-07-15 10:21:15'),
(1, 33, 'Usage guide/Usage method', 'guide/usage.php', 'guide/usage', 1, 1, 2, NULL, NULL, NULL, NULL, '2015-07-15 10:21:15', '2015-07-15 10:21:15'),
(1, 34, 'Usage guide/Privacy policy', 'guide/privacy.php', 'guide/privacy', 1, 1, 2, NULL, NULL, NULL, NULL, '2015-07-15 10:21:15', '2015-07-15 10:21:15'),
(1, 35, 'Usage guide/About communication charges', 'guide/charge.php', 'guide/charge', 1, 1, 2, NULL, NULL, NULL, NULL, '2015-07-15 10:21:15', '2015-07-15 10:21:15'),
(1, 36, 'Usage guide/Usage agreement', 'guide/kiyaku.php', 'guide/kiyaku', 1, 1, 2, NULL, NULL, NULL, NULL, '2015-07-15 10:21:15', '2015-07-15 10:21:15'),
(1, 37, 'Usage guide/Introduction of operating companies', 'guide/about.php', 'guide/about', 1, 1, 2, NULL, NULL, NULL, NULL, '2015-07-15 10:21:15', '2015-07-15 10:21:15'),
(2, 0, NULL, 'preview', 'preview', 1, 1, 1, NULL, NULL, NULL, NULL, '2015-07-15 10:21:13', '2015-07-15 10:21:13'),
(2, 1, 'TOP page', 'index.php', 'index', 1, 1, 2, NULL, NULL, NULL, NULL, '2015-07-15 10:21:13', '2015-07-15 10:21:13'),
(2, 2, 'Product list page', 'products/list.php', 'products/list', 1, 1, 2, NULL, NULL, NULL, NULL, '2015-07-15 10:21:13', '2015-07-15 10:21:13'),
(2, 3, 'Product details page', 'products/detail.php', 'products/detail', 1, 1, 2, NULL, NULL, NULL, NULL, '2015-07-15 10:21:14', '2015-07-15 10:21:14'),
(2, 4, 'MY page', 'mypage/index.php', 'mypage/index', 1, 1, 2, NULL, NULL, NULL, NULL, '2015-07-15 10:21:14', '2015-07-15 10:21:14'),
(2, 5, 'MY page/Change details of member registration (input page)', 'mypage/change.php', 'mypage/change', 1, 1, 2, NULL, NULL, NULL, NULL, '2015-07-15 10:21:14', '2015-07-15 10:21:14'),
(2, 6, 'MY page/Change details of member registration (completion page)', 'mypage/change_complete.php', 'mypage/change_complete', 1, 1, 2, NULL, NULL, NULL, NULL, '2015-07-15 10:21:14', '2015-07-15 10:21:14'),
(2, 7, 'MY page/Add and change shipping destinations', 'mypage/delivery.php', 'mypage/delivery', 1, 1, 2, NULL, NULL, NULL, NULL, '2015-07-15 10:21:14', '2015-07-15 10:21:14'),
(2, 8, 'MY page/List of favorites', 'mypage/favorite.php', 'mypage/favorite', 1, 1, 2, NULL, NULL, NULL, NULL, '2015-07-15 10:21:14', '2015-07-15 10:21:14'),
(2, 9, 'MY page/Details of purchase history', 'mypage/history.php', 'mypage/history', 1, 1, 2, NULL, NULL, NULL, NULL, '2015-07-15 10:21:14', '2015-07-15 10:21:14'),
(2, 10, 'MY page/Login', 'mypage/login.php', 'mypage/login', 1, 1, 2, NULL, NULL, NULL, NULL, '2015-07-15 10:21:14', '2015-07-15 10:21:14'),
(2, 11, 'MY page/Procedure for membership withdrawal (input page)', 'mypage/refusal.php', 'mypage/refusal', 1, 1, 2, NULL, NULL, NULL, NULL, '2015-07-15 10:21:14', '2015-07-15 10:21:14'),
(2, 12, 'MY page/Procedure for membership withdrawal (completion page)', 'mypage/refusal_complete.php', 'mypage/refusal_complete', 1, 1, 2, NULL, NULL, NULL, NULL, '2015-07-15 10:21:14', '2015-07-15 10:21:14'),
(2, 13, 'About this site', 'abouts/index.php', 'abouts/index', 1, 1, 2, NULL, NULL, NULL, NULL, '2015-07-15 10:21:14', '2015-07-15 10:21:14'),
(2, 14, 'What is inside your basket now', 'cart/index.php', 'cart/index', 1, 1, 2, NULL, NULL, NULL, NULL, '2015-07-15 10:21:14', '2015-07-15 10:21:14'),
(2, 15, 'Inquiry (input page)', 'contact/index.php', 'contact/index', 1, 1, 2, NULL, NULL, NULL, NULL, '2015-07-15 10:21:14', '2015-07-15 10:21:14'),
(2, 16, 'Inquiry (completion page)', 'contact/complete.php', 'contact/complete', 1, 1, 2, NULL, NULL, NULL, NULL, '2015-07-15 10:21:14', '2015-07-15 10:21:14'),
(2, 17, 'Member registration', 'entry/index.php', 'entry/index', 1, 1, 2, NULL, NULL, NULL, NULL, '2015-07-15 10:21:14', '2015-07-15 10:21:14'),
(2, 18, 'Usage agreement', 'entry/kiyaku.php', 'entry/kiyaku', 1, 1, 2, NULL, NULL, NULL, NULL, '2015-07-15 10:21:14', '2015-07-15 10:21:14'),
(2, 19, 'Finish temporary member registration', 'entry/complete.php', 'entry/complete', 1, 1, 2, NULL, NULL, NULL, NULL, '2015-07-15 10:21:14', '2015-07-15 10:21:14'),
(2, 20, 'Legal-based notation related to specified commercial transactions', 'order/index.php', 'order/index', 1, 1, 2, NULL, NULL, NULL, NULL, '2015-07-15 10:21:14', '2015-07-15 10:21:14'),
(2, 21, 'Member registration completed', 'regist/complete.php', 'regist/complete', 1, 1, 2, NULL, NULL, NULL, NULL, '2015-07-15 10:21:14', '2015-07-15 10:21:14'),
(2, 22, 'Product purchase/Login', 'shopping/index.php', 'shopping/index', 1, 1, 2, NULL, NULL, NULL, NULL, '2015-07-15 10:21:14', '2015-07-15 10:21:14'),
(2, 23, 'Product purchase/Designation of delivery destination', 'shopping/deliv.php', 'shopping/deliv', 1, 1, 2, NULL, NULL, NULL, NULL, '2015-07-15 10:21:14', '2015-07-15 10:21:14'),
(2, 24, 'Product purchase/Designation of multiple delivery destinations', 'shopping/multiple.php', 'shopping/multiple', 1, 1, 2, NULL, NULL, NULL, NULL, '2015-07-15 10:21:14', '2015-07-15 10:21:14'),
(2, 25, 'Product purchase/Designation of payment method and delivery time, etc.', 'shopping/payment.php', 'shopping/payment', 1, 1, 2, NULL, NULL, NULL, NULL, '2015-07-15 10:21:14', '2015-07-15 10:21:14'),
(2, 26, 'Product purchase/Confirmation of input details', 'shopping/confirm.php', 'shopping/confirm', 1, 1, 2, NULL, NULL, NULL, NULL, '2015-07-15 10:21:14', '2015-07-15 10:21:14'),
(2, 27, 'Product purchase/Order complete', 'shopping/complete.php', 'shopping/complete', 1, 1, 2, NULL, NULL, NULL, NULL, '2015-07-15 10:21:14', '2015-07-15 10:21:14'),
(2, 29, 'If you have forgotten your password', 'forgot/index.php', 'forgot/index', 1, 1, 2, NULL, NULL, NULL, NULL, '2015-07-15 10:21:14', '2015-07-15 10:21:14'),
(10, 0, 'Preview data', 'preview', NULL, 1, 1, 1, NULL, NULL, NULL, NULL, '2015-07-15 10:21:13', '2015-07-15 10:21:13'),
(10, 1, 'TOP page', 'index.php', 'index', 1, 1, 2, NULL, NULL, NULL, NULL, '2015-07-15 10:21:13', '2015-07-15 10:21:13'),
(10, 2, 'Product list page', 'products/list.php', 'products/list', 1, 1, 2, NULL, NULL, NULL, NULL, '2015-07-15 10:21:13', '2015-07-15 10:21:13'),
(10, 3, 'Product details page', 'products/detail.php', 'products/detail', 1, 1, 2, NULL, NULL, NULL, NULL, '2015-07-15 10:21:13', '2015-07-15 10:21:13'),
(10, 4, 'MY page', 'mypage/index.php', 'mypage/index', 1, 1, 2, NULL, NULL, NULL, NULL, '2015-07-15 10:21:13', '2015-07-15 10:21:13'),
(10, 5, 'MY page/Change details of member registration (input page)', 'mypage/change.php', 'mypage/change', 1, 1, 2, NULL, NULL, NULL, NULL, '2015-07-15 10:21:13', '2015-07-15 10:21:13'),
(10, 6, 'MY page/Change details of member registration (completion page)', 'mypage/change_complete.php', 'mypage/change_complete', 1, 1, 2, NULL, NULL, NULL, NULL, '2015-07-15 10:21:13', '2015-07-15 10:21:13'),
(10, 7, 'MY page/Add and change shipping destinations', 'mypage/delivery.php', 'mypage/delivery', 1, 1, 2, NULL, NULL, NULL, NULL, '2015-07-15 10:21:13', '2015-07-15 10:21:13'),
(10, 8, 'MY page/List of favorites', 'mypage/favorite.php', 'mypage/favorite', 1, 1, 2, NULL, NULL, NULL, NULL, '2015-07-15 10:21:13', '2015-07-15 10:21:13'),
(10, 9, 'MY page/Details of purchase history', 'mypage/history.php', 'mypage/history', 1, 1, 2, NULL, NULL, NULL, NULL, '2015-07-15 10:21:13', '2015-07-15 10:21:13'),
(10, 10, 'MY page/Login', 'mypage/login.php', 'mypage/login', 1, 1, 2, NULL, NULL, NULL, NULL, '2015-07-15 10:21:13', '2015-07-15 10:21:13'),
(10, 11, 'MY page/Procedure for membership withdrawal (input page)', 'mypage/refusal.php', 'mypage/refusal', 1, 1, 2, NULL, NULL, NULL, NULL, '2015-07-15 10:21:13', '2015-07-15 10:21:13'),
(10, 12, 'MY page/Procedure for membership withdrawal (completion page)', 'mypage/refusal_complete.php', 'mypage/refusal_complete', 1, 1, 2, NULL, NULL, NULL, NULL, '2015-07-15 10:21:13', '2015-07-15 10:21:13'),
(10, 13, 'About this site', 'abouts/index.php', 'abouts/index', 1, 1, 2, NULL, NULL, NULL, NULL, '2015-07-15 10:21:13', '2015-07-15 10:21:13'),
(10, 14, 'What is inside your basket now', 'cart/index.php', 'cart/index', 1, 1, 2, NULL, NULL, NULL, NULL, '2015-07-15 10:21:13', '2015-07-15 10:21:13'),
(10, 15, 'Inquiry (input page)', 'contact/index.php', 'contact/index', 1, 1, 2, NULL, NULL, NULL, NULL, '2015-07-15 10:21:13', '2015-07-15 10:21:13'),
(10, 16, 'Inquiry (completion page)', 'contact/complete.php', 'contact/complete', 1, 1, 2, NULL, NULL, NULL, NULL, '2015-07-15 10:21:13', '2015-07-15 10:21:13'),
(10, 17, 'Member registration', 'entry/index.php', 'entry/index', 1, 1, 2, NULL, NULL, NULL, NULL, '2015-07-15 10:21:13', '2015-07-15 10:21:13'),
(10, 18, 'Usage agreement', 'entry/kiyaku.php', 'entry/kiyaku', 1, 1, 2, NULL, NULL, NULL, NULL, '2015-07-15 10:21:13', '2015-07-15 10:21:13'),
(10, 19, 'Finish temporary member registration', 'entry/complete.php', 'entry/complete', 1, 1, 2, NULL, NULL, NULL, NULL, '2015-07-15 10:21:13', '2015-07-15 10:21:13'),
(10, 20, 'Legal-based notation related to specified commercial transactions', 'order/index.php', 'order/index', 1, 1, 2, NULL, NULL, NULL, NULL, '2015-07-15 10:21:13', '2015-07-15 10:21:13'),
(10, 21, 'Member registration completed', 'regist/complete.php', 'regist/complete', 1, 1, 2, NULL, NULL, NULL, NULL, '2015-07-15 10:21:13', '2015-07-15 10:21:13'),
(10, 22, 'Product purchase/Login', 'shopping/index.php', 'shopping/index', 1, 1, 2, NULL, NULL, NULL, NULL, '2015-07-15 10:21:13', '2015-07-15 10:21:13'),
(10, 23, 'Product purchase/Designation of delivery destination', 'shopping/deliv.php', 'shopping/deliv', 1, 1, 2, NULL, NULL, NULL, NULL, '2015-07-15 10:21:13', '2015-07-15 10:21:13'),
(10, 24, 'Product purchase/Designation of multiple delivery destinations', 'shopping/multiple.php', 'shopping/multiple', 1, 1, 2, NULL, NULL, NULL, NULL, '2015-07-15 10:21:13', '2015-07-15 10:21:13'),
(10, 25, 'Product purchase/Designation of payment method and delivery time, etc.', 'shopping/payment.php', 'shopping/payment', 1, 1, 2, NULL, NULL, NULL, NULL, '2015-07-15 10:21:13', '2015-07-15 10:21:13'),
(10, 26, 'Product purchase/Confirmation of input details', 'shopping/confirm.php', 'shopping/confirm', 1, 1, 2, NULL, NULL, NULL, NULL, '2015-07-15 10:21:13', '2015-07-15 10:21:13'),
(10, 27, 'Product purchase/Order complete', 'shopping/complete.php', 'shopping/complete', 1, 1, 2, NULL, NULL, NULL, NULL, '2015-07-15 10:21:13', '2015-07-15 10:21:13'),
(10, 29, 'Privacy policy', 'user_data/privacy.php', 'user_data/privacy', 1, 1, 1, NULL, NULL, NULL, 'http://app10.lifetimetech.vn/admin/design/main_edit.php?device_type_id=10', '2015-07-23 08:55:37', '2015-07-23 08:55:37'),
(10, 30, 'Compatibility', 'user_data/compatibility.php', 'user_data/compatibility', 1, 1, 1, NULL, NULL, NULL, 'http://app10.lifetimetech.vn/admin/design/main_edit.php?device_type_id=10', '2015-07-23 09:02:27', '2015-07-23 09:02:27'),
(10, 31, 'User Guide For SIM Card', 'user_data/uguide.php', 'user_data/uguide', 1, 1, 1, NULL, NULL, NULL, 'http://app10.lifetimetech.vn/admin/design/main_edit.php?page_id=31&device_type_id=10', '2015-07-23 09:03:41', '2015-07-23 09:19:23'),
(10, 32, 'Voice of Customer', 'user_data/vcustomer.php', 'user_data/vcustomer', 1, 1, 1, NULL, NULL, NULL, 'http://app10.lifetimetech.vn/admin/design/main_edit.php?device_type_id=10&page_id=32&msg=on&transactionid=91af59c1d03b0e67ac4aeaee44beb2971e299493', '2015-07-23 09:07:13', '2015-07-23 09:07:19'),
(10, 33, 'Travel''s Memory', 'user_data/tmemory.php', 'user_data/tmemory', 1, 1, 1, NULL, NULL, NULL, 'http://app10.lifetimetech.vn/admin/design/main_edit.php?device_type_id=10', '2015-07-23 09:16:37', '2015-07-23 09:16:37');

-- --------------------------------------------------------

--
-- Table structure for table `dtb_pagelayout_page_id_seq`
--

CREATE TABLE IF NOT EXISTS `dtb_pagelayout_page_id_seq` (
  `sequence` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_pagelayout_page_id_seq`
--

INSERT INTO `dtb_pagelayout_page_id_seq` (`sequence`) VALUES
(37);

-- --------------------------------------------------------

--
-- Table structure for table `dtb_payment`
--

CREATE TABLE IF NOT EXISTS `dtb_payment` (
  `payment_id` int(11) NOT NULL,
  `payment_method` text,
  `charge` decimal(10,0) DEFAULT NULL,
  `rule_max` decimal(10,0) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `note` text,
  `fix` smallint(6) DEFAULT NULL,
  `status` smallint(6) NOT NULL DEFAULT '1',
  `del_flg` smallint(6) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `payment_image` text,
  `upper_rule` decimal(10,0) DEFAULT NULL,
  `charge_flg` smallint(6) DEFAULT '1',
  `rule_min` decimal(10,0) DEFAULT NULL,
  `upper_rule_max` decimal(10,0) DEFAULT NULL,
  `module_id` int(11) DEFAULT NULL,
  `module_path` text,
  `memo01` text,
  `memo02` text,
  `memo03` text,
  `memo04` text,
  `memo05` text,
  `memo06` text,
  `memo07` text,
  `memo08` text,
  `memo09` text,
  `memo10` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_payment`
--

INSERT INTO `dtb_payment` (`payment_id`, `payment_method`, `charge`, `rule_max`, `rank`, `note`, `fix`, `status`, `del_flg`, `creator_id`, `create_date`, `update_date`, `payment_image`, `upper_rule`, `charge_flg`, `rule_min`, `upper_rule_max`, `module_id`, `module_path`, `memo01`, `memo02`, `memo03`, `memo04`, `memo05`, `memo06`, `memo07`, `memo08`, `memo09`, `memo10`) VALUES
(1, 'Postal transfer', '0', NULL, 4, NULL, 2, 1, 0, 1, '2015-07-15 10:21:15', '2015-07-15 10:21:15', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Cash registration', '0', NULL, 3, NULL, 2, 1, 0, 1, '2015-07-15 10:21:15', '2015-07-15 10:21:15', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Bank transfer', '0', NULL, 2, NULL, 2, 1, 0, 1, '2015-07-15 10:21:15', '2015-07-15 10:21:15', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Cash on delivery', '0', NULL, 1, NULL, 2, 1, 0, 1, '2015-07-15 10:21:15', '2015-07-15 10:21:15', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dtb_payment_options`
--

CREATE TABLE IF NOT EXISTS `dtb_payment_options` (
  `deliv_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `rank` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_payment_options`
--

INSERT INTO `dtb_payment_options` (`deliv_id`, `payment_id`, `rank`) VALUES
(1, 1, 1),
(1, 2, 2),
(1, 3, 3),
(1, 4, 4),
(2, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dtb_payment_payment_id_seq`
--

CREATE TABLE IF NOT EXISTS `dtb_payment_payment_id_seq` (
  `sequence` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_payment_payment_id_seq`
--

INSERT INTO `dtb_payment_payment_id_seq` (`sequence`) VALUES
(4);

-- --------------------------------------------------------

--
-- Table structure for table `dtb_plugin`
--

CREATE TABLE IF NOT EXISTS `dtb_plugin` (
  `plugin_id` int(11) NOT NULL,
  `plugin_name` text NOT NULL,
  `plugin_code` text NOT NULL,
  `class_name` text NOT NULL,
  `author` text,
  `author_site_url` text,
  `plugin_site_url` text,
  `plugin_version` text,
  `compliant_version` text,
  `plugin_description` text,
  `priority` int(11) NOT NULL DEFAULT '0',
  `enable` smallint(6) NOT NULL DEFAULT '0',
  `free_field1` text,
  `free_field2` text,
  `free_field3` text,
  `free_field4` text,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dtb_plugin_hookpoint`
--

CREATE TABLE IF NOT EXISTS `dtb_plugin_hookpoint` (
  `plugin_hookpoint_id` int(11) NOT NULL,
  `plugin_id` int(11) NOT NULL,
  `hook_point` text NOT NULL,
  `callback` text,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dtb_plugin_hookpoint_plugin_hookpoint_id_seq`
--

CREATE TABLE IF NOT EXISTS `dtb_plugin_hookpoint_plugin_hookpoint_id_seq` (
  `sequence` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dtb_plugin_plugin_id_seq`
--

CREATE TABLE IF NOT EXISTS `dtb_plugin_plugin_id_seq` (
  `sequence` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dtb_products`
--

CREATE TABLE IF NOT EXISTS `dtb_products` (
  `product_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `maker_id` int(11) DEFAULT NULL,
  `status` smallint(6) NOT NULL DEFAULT '2',
  `comment1` text,
  `comment2` text,
  `comment3` mediumtext,
  `comment4` text,
  `comment5` text,
  `comment6` text,
  `note` text,
  `main_list_comment` text,
  `main_list_comment_zh` mediumtext,
  `main_list_image` text,
  `main_comment` mediumtext,
  `main_comment_zh` mediumtext,
  `main_image` text,
  `main_large_image` text,
  `sub_title1` text,
  `sub_comment1` mediumtext,
  `sub_image1` text,
  `sub_large_image1` text,
  `sub_title2` text,
  `sub_comment2` mediumtext,
  `sub_image2` text,
  `sub_large_image2` text,
  `sub_title3` text,
  `sub_comment3` mediumtext,
  `sub_image3` text,
  `sub_large_image3` text,
  `sub_title4` text,
  `sub_comment4` mediumtext,
  `sub_image4` text,
  `sub_large_image4` text,
  `sub_title5` text,
  `sub_comment5` mediumtext,
  `sub_image5` text,
  `sub_large_image5` text,
  `sub_title6` text,
  `sub_comment6` mediumtext,
  `sub_image6` text,
  `sub_large_image6` text,
  `del_flg` smallint(6) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deliv_date_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_products`
--

INSERT INTO `dtb_products` (`product_id`, `name`, `maker_id`, `status`, `comment1`, `comment2`, `comment3`, `comment4`, `comment5`, `comment6`, `note`, `main_list_comment`, `main_list_comment_zh`, `main_list_image`, `main_comment`, `main_comment_zh`, `main_image`, `main_large_image`, `sub_title1`, `sub_comment1`, `sub_image1`, `sub_large_image1`, `sub_title2`, `sub_comment2`, `sub_image2`, `sub_large_image2`, `sub_title3`, `sub_comment3`, `sub_image3`, `sub_large_image3`, `sub_title4`, `sub_comment4`, `sub_image4`, `sub_large_image4`, `sub_title5`, `sub_comment5`, `sub_image5`, `sub_large_image5`, `sub_title6`, `sub_comment6`, `sub_image6`, `sub_large_image6`, `del_flg`, `creator_id`, `create_date`, `update_date`, `deliv_date_id`) VALUES
(1, 'T-shirts/MintGreen', NULL, 1, NULL, NULL, 'T-shirts,MintGreen', NULL, NULL, NULL, NULL, 'The mint green coloring brings out the ‘retro’ in you.', NULL, 'Tanktop_green_130.jpg', 'The mint green coloring brings out the ‘retro’ in you.', NULL, 'Tanktop_green_260.jpg', 'Tanktop_green_500.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, '2015-07-15 10:21:15', '2015-07-23 09:33:06', 2),
(2, 'T-shirts/VintageRed', NULL, 1, NULL, NULL, 'T-shirts,VintageRed', NULL, NULL, NULL, NULL, 'The color red makes all of the difference.', NULL, 'Tshirts_red_130.jpg', 'Not too flashy, but not too plain. The color red makes all of the difference.', NULL, 'Tshirts_red_260.jpg', 'Tshirts_red_500.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, '2015-07-15 10:21:15', '2015-07-23 09:33:08', 3),
(3, 'T-shirts/BasicPattern', NULL, 1, NULL, NULL, 'T-shirts', NULL, NULL, NULL, NULL, 'Create your own original t-shirt with ease!', NULL, 'Tshirts_kata_130.jpg', 'For those who wanted to create a t-shirt, now it is time to make your dream a reality. Create your own original t-shirt with ease!', NULL, 'Tshirts_kata_260.jpg', 'Tshirts_kata_500.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, '2015-07-15 10:21:15', '2015-07-23 09:33:11', 1),
(4, 'Rental Mobile WiFi GL06P(450JPY/Day)', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SuperLowPrice(Booking2015/3/21 - )\r\nRental Period 2015/6/15-2015/11/30\r\n\r\nHighSpeed! MassBattery! WideAreaCoverage!\r\nExcellent Quality, Stable!', 'SuperLowPrice(Booking2015/3/21 - )\r\nRental Period 2015/6/15-2015/11/30\r\n\r\n高速通信!大容量电池!日本全国均为服务区!\r\n质量非常好,稳定', '07230940_55b0b67bcbcc6.png', 'SuperLowPrice(Booking2015/3/21 - )\r\nRental Period 2015/6/15-2015/11/30\r\n\r\nDownlink : 75 Mbps / Uplink: 25 Mbps (Best Effort)\r\nData Usage : Unlimited\r\nUsage Time : 12Hours(Full Charge)\r\nConnectability: 10 Wi-Fi user simultaneously\r\nService Area : All over Japan\r\nVoIP: Supported, Voice Call: Not Supported', 'SuperLowPrice(Booking2015/3/21 - )\r\nRental Period 2015/6/15-2015/11/30\r\n\r\n传输速率 : 下行最大75Mbps、上行最大:25Mbps\r\n利用数据量 : 没有限制\r\n使用时间 : 12个小时(电量100%时)\r\n连接的Wi-Fi : 同时支持10Wi-Fi用户\r\n服务区 : 日本全国(不能在日本以外的国家利用)\r\n可能通信模式: 数据通信。会话和SMS不能。', '07230940_55b0b68e81036.png', '07230940_55b0b693d2fe6.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, '2015-07-23 09:41:00', '2015-07-23 09:43:16', NULL),
(5, 'Rental Mobile WiFi MR03LN(300JPY/Day)', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Rental Period 2015/6/20 -2015/7/30\r\nSuperLowPrice(Booking2015/1/1～5/25)\r\n\r\nHigh Speed! Mass Battery! Wide Area Coverage!\r\nExcellent Quality and Stable!', 'Rental Period 2015/6/20 -2015/7/30\r\nSuperLowPrice(Booking2015/1/1～5/25)\r\n\r\n高速通信!(150Mbps)大容量电池!当然日本全国均为服务区!\r\n每天100MB。\r\n', '07230948_55b0b85f44a9b.jpg', 'Rental Period 2015/6/20 -2015/7/30\r\nSuperLowPrice(Booking2015/1/1～5/25)\r\n\r\nDownlink : 150 Mbps / Uplink: 50 Mbps (Best Effort)\r\nData Usage : 100MB/1day(After exceeding, limited speed 128Kbps)\r\nUsage Time : 12Hours(Full Charge)\r\nConnectability: 10 Wi-Fi user simultaneously\r\nService Area : All over Japan\r\nVoIP: Supported, Voice Call: Not Supported\r\n\r\n每天100MB是多大的容量呢?能干什么呢?这是一个相当宽裕的容量\r\n①如果是收发电子邮件: 约20480封\r\n　　　　300个字符左右的文本电子邮件\r\n②如果是网页:　 约341页\r\n　　　　按Yahoo! Mobile的首页计算\r\n③如果是视频:　 约45分钟\r\n　　　　在Youtube上浏览9次5分钟的视频\r\n④如果是推特:　 约1125次\r\n　　　　利用正版应用软件发布140个\r\n　　　　全角字符的推特消息\r\n⑤如果是谷歌地图:　 约28次\r\n　　　　如果是利用应用软件缩放5次\r\n⑥如果是讯佳普: 约58次\r\n　　　　如果是3分钟的通话(Skype)', 'Rental Period 2015/6/20 -2015/7/30\r\nSuperLowPrice(Booking2015/1/1～5/25)\r\nWiFi本体 : 日本製最優秀機種(2014年)\r\n传输速率 : 下行最大150Mbps、上行最大:50Mbps\r\n利用数据量 : 每天100MB(通信量超过后,传输速率最大128kbps)\r\n使用时间 : 12个小时(电量100%时)\r\n连接的Wi-Fi : 同时支持10Wi-Fi用户\r\n服务区 : 日本全国(不能在日本以外的国家利用)\r\n可能通信模式: 数据通信。会话和SMS不能。\r\n\r\n每天100MB是多大的容量呢?能干什么呢?这是一个相当宽裕的容量\r\n①如果是收发电子邮件: 约20480封\r\n　　　　300个字符左右的文本电子邮件\r\n②如果是网页:　 约341页\r\n　　　　按Yahoo! Mobile的首页计算\r\n③如果是视频:　 约45分钟\r\n　　　　在Youtube上浏览9次5分钟的视频\r\n④如果是推特:　 约1125次\r\n　　　　利用正版应用软件发布140个\r\n　　　　全角字符的推特消息\r\n⑤如果是谷歌地图:　 约28次\r\n　　　　如果是利用应用软件缩放5次\r\n⑥如果是讯佳普: 约58次\r\n　　　　如果是3分钟的通话(Skype)\r\n', '07230948_55b0b8655aa82.jpg', '07230948_55b0b86a22569.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, '2015-07-23 09:48:32', '2015-07-23 09:48:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dtb_products_class`
--

CREATE TABLE IF NOT EXISTS `dtb_products_class` (
  `product_class_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `classcategory_id1` int(11) NOT NULL DEFAULT '0',
  `classcategory_id2` int(11) NOT NULL DEFAULT '0',
  `product_type_id` int(11) NOT NULL DEFAULT '0',
  `product_code` text,
  `stock` decimal(10,0) DEFAULT NULL,
  `stock_unlimited` smallint(6) NOT NULL DEFAULT '0',
  `sale_limit` decimal(10,0) DEFAULT NULL,
  `price01` decimal(10,0) DEFAULT NULL,
  `price02` decimal(10,0) NOT NULL,
  `deliv_fee` decimal(10,0) DEFAULT NULL,
  `point_rate` decimal(10,0) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `down_filename` text,
  `down_realfilename` text,
  `del_flg` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_products_class`
--

INSERT INTO `dtb_products_class` (`product_class_id`, `product_id`, `classcategory_id1`, `classcategory_id2`, `product_type_id`, `product_code`, `stock`, `stock_unlimited`, `sale_limit`, `price01`, `price02`, `deliv_fee`, `point_rate`, `creator_id`, `create_date`, `update_date`, `down_filename`, `down_realfilename`, `del_flg`) VALUES
(0, 1, 0, 0, 1, 'tshirts-G-01', NULL, 1, NULL, '35', '18', NULL, '10', 2, '2015-07-15 10:21:15', '2015-07-23 09:33:06', NULL, NULL, 1),
(1, 1, 6, 0, 1, 'tshirts-G-01', NULL, 1, NULL, '35', '18', NULL, '10', 2, '2015-07-15 10:21:15', '2015-07-23 09:33:06', NULL, NULL, 1),
(2, 1, 5, 0, 1, 'tshirts-G-02', NULL, 1, NULL, '35', '18', NULL, '10', 2, '2015-07-15 10:21:15', '2015-07-23 09:33:06', NULL, NULL, 1),
(3, 1, 4, 0, 1, 'tshirts-G-03', NULL, 1, NULL, '35', '18', NULL, '10', 2, '2015-07-15 10:21:15', '2015-07-23 09:33:06', NULL, NULL, 1),
(10, 2, 0, 0, 1, 'tshirts-R-01', '100', 0, '5', '35', '18', NULL, '10', 2, '2015-07-15 10:21:15', '2015-07-23 09:33:08', NULL, NULL, 1),
(11, 3, 0, 0, 2, 'pattern-01', NULL, 1, NULL, '10', '5', NULL, '10', 2, '2015-07-15 10:21:15', '2015-07-23 09:33:11', 'How_to_make.pdf', 'how_to_make.pdf', 1),
(12, 4, 0, 0, 1, 'RMWGL06P', '14', 0, NULL, '1458', '8748', NULL, '0', 2, '2015-07-23 09:41:00', '2015-07-23 09:43:16', NULL, NULL, 0),
(13, 5, 0, 0, 1, 'MR03LN', '133', 0, NULL, '1296', '9720', NULL, '0', 2, '2015-07-23 09:48:32', '2015-07-23 09:48:32', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `dtb_products_class_product_class_id_seq`
--

CREATE TABLE IF NOT EXISTS `dtb_products_class_product_class_id_seq` (
  `sequence` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_products_class_product_class_id_seq`
--

INSERT INTO `dtb_products_class_product_class_id_seq` (`sequence`) VALUES
(13);

-- --------------------------------------------------------

--
-- Table structure for table `dtb_products_product_id_seq`
--

CREATE TABLE IF NOT EXISTS `dtb_products_product_id_seq` (
  `sequence` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_products_product_id_seq`
--

INSERT INTO `dtb_products_product_id_seq` (`sequence`) VALUES
(5);

-- --------------------------------------------------------

--
-- Table structure for table `dtb_product_categories`
--

CREATE TABLE IF NOT EXISTS `dtb_product_categories` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `rank` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_product_categories`
--

INSERT INTO `dtb_product_categories` (`product_id`, `category_id`, `rank`) VALUES
(1, 4, 1),
(2, 4, 2),
(3, 6, 1),
(4, 1, 1),
(5, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `dtb_product_status`
--

CREATE TABLE IF NOT EXISTS `dtb_product_status` (
  `product_status_id` smallint(6) NOT NULL,
  `product_id` int(11) NOT NULL,
  `creator_id` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `del_flg` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_product_status`
--

INSERT INTO `dtb_product_status` (`product_status_id`, `product_id`, `creator_id`, `create_date`, `update_date`, `del_flg`) VALUES
(1, 1, 2, '2015-07-15 10:21:15', '2015-07-15 10:21:15', 0),
(1, 5, 2, '2015-07-23 09:48:32', '2015-07-23 09:48:32', 0),
(2, 4, 2, '2015-07-23 09:43:16', '2015-07-23 09:43:16', 0),
(4, 3, 2, '2015-07-15 10:21:15', '2015-07-15 10:21:15', 0),
(4, 4, 2, '2015-07-23 09:43:16', '2015-07-23 09:43:16', 0),
(4, 5, 2, '2015-07-23 09:48:32', '2015-07-23 09:48:32', 0),
(5, 3, 2, '2015-07-15 10:21:16', '2015-07-15 10:21:16', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dtb_recommend_products`
--

CREATE TABLE IF NOT EXISTS `dtb_recommend_products` (
  `product_id` int(11) NOT NULL,
  `recommend_product_id` int(11) NOT NULL,
  `rank` int(11) NOT NULL,
  `comment` text,
  `status` smallint(6) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_recommend_products`
--

INSERT INTO `dtb_recommend_products` (`product_id`, `recommend_product_id`, `rank`, `comment`, `status`, `creator_id`, `create_date`, `update_date`) VALUES
(2, 1, 4, 'The mint green coloring brings out the ‘retro’ in you.', 0, 2, '2015-07-15 10:21:16', '2015-07-15 10:21:16');

-- --------------------------------------------------------

--
-- Table structure for table `dtb_review`
--

CREATE TABLE IF NOT EXISTS `dtb_review` (
  `review_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `reviewer_name` text NOT NULL,
  `reviewer_url` text,
  `sex` smallint(6) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `recommend_level` smallint(6) NOT NULL,
  `title` text NOT NULL,
  `comment` text NOT NULL,
  `status` smallint(6) DEFAULT '2',
  `creator_id` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `del_flg` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dtb_review_review_id_seq`
--

CREATE TABLE IF NOT EXISTS `dtb_review_review_id_seq` (
  `sequence` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dtb_send_customer`
--

CREATE TABLE IF NOT EXISTS `dtb_send_customer` (
  `customer_id` int(11) NOT NULL,
  `send_id` int(11) NOT NULL,
  `email` text,
  `name` text,
  `send_flag` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dtb_send_history`
--

CREATE TABLE IF NOT EXISTS `dtb_send_history` (
  `send_id` int(11) NOT NULL,
  `mail_method` smallint(6) DEFAULT NULL,
  `subject` text,
  `body` text,
  `send_count` int(11) DEFAULT NULL,
  `complete_count` int(11) NOT NULL DEFAULT '0',
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `search_data` text,
  `del_flg` smallint(6) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dtb_send_history_send_id_seq`
--

CREATE TABLE IF NOT EXISTS `dtb_send_history_send_id_seq` (
  `sequence` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dtb_session`
--

CREATE TABLE IF NOT EXISTS `dtb_session` (
  `sess_id` text NOT NULL,
  `sess_data` text,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_session`
--

INSERT INTO `dtb_session` (`sess_id`, `sess_data`, `create_date`, `update_date`) VALUES
('2nadua7u7q4tp0fkjffgfidrs4', 'cart|a:0:{}prev_url|s:7:"/admin/";transactionid|s:40:"b0b2700fc793dbc4e6fc0a9087714152a5b8d47c";site|a:5:{s:18:"pre_regist_success";b:0;s:14:"regist_success";b:0;s:8:"pre_page";s:16:"/admin/index.php";s:8:"now_page";s:16:"/admin/index.php";s:9:"lang_code";s:5:"zh-TW";}', '2015-07-22 01:37:57', '2015-07-22 08:45:40'),
('arcv9hqr88qbrp22tjpc2pq9j3', 'cart|a:0:{}prev_url|s:64:"/resize_image.php?image=Tanktop_green_130.jpg&width=80&height=80";transactionid|s:40:"d558f7a2f3e7ccbe583f868c09c942f40cac0832";site|a:5:{s:18:"pre_regist_success";b:0;s:14:"regist_success";b:0;s:8:"pre_page";s:17:"/resize_image.php";s:8:"now_page";s:17:"/resize_image.php";s:9:"lang_code";s:5:"en-US";}', '2015-07-15 10:35:54', '2015-07-15 10:41:07'),
('c989l50bfhqgr0ae7pj5udau87', 'cart|a:0:{}prev_url|s:69:"/resize_image.php?image=07230948_55b0b85f44a9b.jpg&width=80&height=80";transactionid|s:40:"fb0390012cb53a56b742bd4c44a226a05c333432";site|a:5:{s:18:"pre_regist_success";b:0;s:14:"regist_success";b:0;s:8:"pre_page";s:17:"/resize_image.php";s:8:"now_page";s:17:"/resize_image.php";s:9:"lang_code";s:5:"zh-TW";}cart_referer_url|s:60:"http://app10.lifetimetech.vn/products/list.php?category_id=1";', '2015-07-23 10:06:42', '2015-07-23 10:21:00'),
('cnd6i5ome1nermkoje2f2281q2', 'cart|a:0:{}prev_url|s:1:"/";transactionid|s:40:"a0800ca40b0ad1091666a727a1578a7024a31aab";site|a:4:{s:18:"pre_regist_success";b:0;s:14:"regist_success";b:0;s:8:"pre_page";s:10:"/index.php";s:8:"now_page";s:10:"/index.php";}', '2015-07-23 02:37:33', '2015-07-23 02:37:33'),
('e7d066t3mo7goskspjasfjqsn3', 'cart|a:0:{}prev_url|s:1:"/";transactionid|s:40:"75dc92ddf9f26ff642fccd495246e4100138f999";site|a:4:{s:18:"pre_regist_success";b:0;s:14:"regist_success";b:0;s:8:"pre_page";s:10:"/index.php";s:8:"now_page";s:10:"/index.php";}', '2015-07-22 01:37:57', '2015-07-22 01:37:57'),
('erl4b7issvl3o91ceg8986gt01', 'cart|a:0:{}prev_url|s:70:"/admin/home.php?transactionid=a3ba64a4752b2e638c1e83d4450e66d6d93bed8d";transactionid|s:40:"a3ba64a4752b2e638c1e83d4450e66d6d93bed8d";site|a:4:{s:18:"pre_regist_success";b:0;s:14:"regist_success";b:0;s:8:"pre_page";s:15:"/admin/home.php";s:8:"now_page";s:15:"/admin/home.php";}cert|s:8:"7WDhcBTF";member_id|s:1:"2";login_id|s:5:"admin";authority|s:1:"0";login_name|s:13:"Administrator";uniqid|s:21:"55a6348731cb2rC3zLaPm";last_login|s:19:"2015-07-15 10:23:03";', '2015-07-15 10:21:49', '2015-07-15 10:23:03'),
('kgj6685jc0586sl2fgehca9it2', 'cart|a:0:{}prev_url|s:62:"/resize_image.php?image=Tshirts_red_130.jpg&width=80&height=80";transactionid|s:40:"cad1d0481f57d0fd10933793f2317d3b317c40d1";site|a:5:{s:18:"pre_regist_success";b:0;s:14:"regist_success";b:0;s:8:"pre_page";s:17:"/resize_image.php";s:8:"now_page";s:17:"/resize_image.php";s:9:"lang_code";s:5:"zh-TW";}cart_referer_url|s:116:"http://app10.lifetimetech.vn/products/detail.php?product_id=2&transactionid=cad1d0481f57d0fd10933793f2317d3b317c40d1";', '2015-07-15 10:23:13', '2015-07-15 10:23:40'),
('liioka1g2d7uvq1s3mu8nps640', 'cart|a:0:{}prev_url|s:62:"/resize_image.php?image=Tshirts_red_130.jpg&width=80&height=80";transactionid|s:40:"b91d9593321ab34e3efd0496ba1c4f1c27883c76";site|a:5:{s:18:"pre_regist_success";b:0;s:14:"regist_success";b:0;s:8:"pre_page";s:17:"/resize_image.php";s:8:"now_page";s:17:"/resize_image.php";s:9:"lang_code";s:5:"zh-TW";}', '2015-07-17 02:40:31', '2015-07-17 06:08:42'),
('na52o1hvco5ln7bqvftpf78ct1', 'cart|a:0:{}prev_url|s:62:"/resize_image.php?image=Tshirts_red_130.jpg&width=80&height=80";transactionid|s:40:"cdad90a9cd183125fe71e63bde346c926300ff3e";site|a:5:{s:18:"pre_regist_success";b:0;s:14:"regist_success";b:0;s:8:"pre_page";s:17:"/resize_image.php";s:8:"now_page";s:17:"/resize_image.php";s:9:"lang_code";s:5:"zh-TW";}', '2015-07-17 05:28:53', '2015-07-17 06:35:42'),
('ohiqqjgu1ss959g53cs93grfq0', 'cart|a:0:{}prev_url|s:64:"/resize_image.php?image=Tanktop_green_130.jpg&width=80&height=80";transactionid|s:40:"2a324385abbacf2cc84a94c434e54cfda5ed0347";site|a:4:{s:18:"pre_regist_success";b:0;s:14:"regist_success";b:0;s:8:"pre_page";s:17:"/resize_image.php";s:8:"now_page";s:17:"/resize_image.php";}', '2015-07-16 08:47:29', '2015-07-16 08:47:29'),
('sv82793a95fa8kce8q0umog6l7', 'cart|a:0:{}prev_url|s:73:"/mypage/change.php?transactionid=91af59c1d03b0e67ac4aeaee44beb2971e299493";transactionid|s:40:"91af59c1d03b0e67ac4aeaee44beb2971e299493";site|a:6:{s:18:"pre_regist_success";b:0;s:14:"regist_success";b:0;s:8:"pre_page";s:18:"/mypage/change.php";s:8:"now_page";s:18:"/mypage/change.php";s:9:"lang_code";s:5:"en-US";s:6:"uniqid";s:0:"";}cert|s:8:"7WDhcBTF";member_id|s:1:"2";login_id|s:5:"admin";authority|s:1:"0";login_name|s:13:"Administrator";uniqid|s:21:"55b0a741ebf05XFgXDECy";last_login|s:19:"2015-07-15 10:23:03";cart_prev_url|s:60:"http://app10.lifetimetech.vn/products/list.php?category_id=1";cartKey|s:1:"1";savecart_55b0bb3e22f93SxkXFSYH|a:3:{i:1;a:7:{s:2:"id";s:2:"13";s:8:"quantity";s:1:"1";s:7:"cart_no";i:1;s:13:"productsClass";a:15:{s:10:"product_id";s:1:"5";s:5:"stock";s:3:"134";s:15:"stock_unlimited";s:1:"0";s:10:"sale_limit";N;s:7:"price02";s:4:"9720";s:10:"point_rate";s:1:"0";s:12:"product_code";s:6:"MR03LN";s:16:"product_class_id";s:2:"13";s:19:"classcategory_name1";N;s:11:"class_name1";N;s:19:"classcategory_name2";N;s:11:"class_name2";N;s:4:"name";s:37:"Rental Mobile WiFi MR03LN(300JPY/Day)";s:15:"main_list_image";s:26:"07230948_55b0b85f44a9b.jpg";s:10:"main_image";s:26:"07230948_55b0b8655aa82.jpg";}s:5:"price";s:4:"9720";s:10:"point_rate";s:1:"0";s:12:"total_inctax";d:10206;}s:15:"cancel_purchase";b:0;i:0;a:4:{s:5:"price";s:0:"";s:8:"quantity";s:0:"";s:10:"point_rate";s:0:"";s:2:"id";a:1:{i:0;s:0:"";}}}customer|a:39:{s:11:"customer_id";s:1:"1";s:6:"name01";s:4:"test";s:6:"name02";s:4:"tien";s:6:"kana01";N;s:6:"kana02";N;s:5:"zip01";N;s:5:"zip02";N;s:7:"zipcode";s:3:"123";s:4:"pref";N;s:6:"addr01";s:23:"Sunnyvale, CA 94085 USA";s:6:"addr02";s:20:"440 North Wolfe Road";s:5:"email";s:21:"ngoctien333@gmail.com";s:12:"email_mobile";N;s:5:"tel01";s:4:"3242";s:5:"tel02";s:4:"3242";s:5:"tel03";s:4:"5423";s:5:"fax01";N;s:5:"fax02";N;s:5:"fax03";N;s:3:"sex";s:1:"1";s:3:"job";N;s:5:"birth";N;s:8:"password";s:64:"dd1fcdd2ccf92acd2905744f03400dece419f25005bce1aa31e1bea5f6177241";s:8:"reminder";s:1:"1";s:15:"reminder_answer";s:64:"cf0de9b0f977c8ba78649280533a32deb0ae36e52d71aa411beb4d41873cfe01";s:4:"salt";s:10:"chouuadith";s:10:"secret_key";s:22:"r55b0c09e734d9bsN5ayRH";s:14:"first_buy_date";N;s:13:"last_buy_date";N;s:9:"buy_times";s:1:"0";s:9:"buy_total";s:1:"0";s:5:"point";s:1:"0";s:4:"note";N;s:6:"status";s:1:"2";s:11:"create_date";s:19:"2015-07-23 10:23:26";s:11:"update_date";s:19:"2015-07-23 10:23:26";s:7:"del_flg";s:1:"0";s:15:"mobile_phone_id";N;s:12:"mailmaga_flg";s:1:"3";}', '2015-07-23 02:37:33', '2015-07-23 10:24:33'),
('v2uug85jcnk7m7nl878c4oedh2', 'cart|a:0:{}prev_url|s:56:"/?transactionid=26accbcaebb5b672e597510bb26942b724b2bc6b";transactionid|s:40:"26accbcaebb5b672e597510bb26942b724b2bc6b";site|a:5:{s:18:"pre_regist_success";b:0;s:14:"regist_success";b:0;s:8:"pre_page";s:10:"/index.php";s:8:"now_page";s:10:"/index.php";s:9:"lang_code";s:5:"en-US";}', '2015-07-21 01:36:34', '2015-07-21 01:55:32'),
('vvbgarhe86vm7o5irgdsk75o53', 'cart|a:0:{}prev_url|s:64:"/resize_image.php?image=Tanktop_green_130.jpg&width=80&height=80";transactionid|s:40:"96ad0d85fcf80c27d97877b6640f6fde23b370f3";site|a:5:{s:18:"pre_regist_success";b:0;s:14:"regist_success";b:0;s:8:"pre_page";s:17:"/resize_image.php";s:8:"now_page";s:17:"/resize_image.php";s:9:"lang_code";s:5:"en-US";}', '2015-07-16 04:26:47', '2015-07-16 04:26:57');

-- --------------------------------------------------------

--
-- Table structure for table `dtb_shipment_item`
--

CREATE TABLE IF NOT EXISTS `dtb_shipment_item` (
  `shipping_id` int(11) NOT NULL,
  `product_class_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_name` text NOT NULL,
  `product_code` text,
  `classcategory_name1` text,
  `classcategory_name2` text,
  `price` decimal(10,0) DEFAULT NULL,
  `quantity` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_shipment_item`
--

INSERT INTO `dtb_shipment_item` (`shipping_id`, `product_class_id`, `order_id`, `product_name`, `product_code`, `classcategory_name1`, `classcategory_name2`, `price`, `quantity`) VALUES
(0, 13, 1, 'Rental Mobile WiFi MR03LN(300JPY/Day)', 'MR03LN', NULL, NULL, '9720', '1');

-- --------------------------------------------------------

--
-- Table structure for table `dtb_shipping`
--

CREATE TABLE IF NOT EXISTS `dtb_shipping` (
  `shipping_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `shipping_name01` text,
  `shipping_name02` text,
  `shipping_kana01` text,
  `shipping_kana02` text,
  `shipping_tel01` text,
  `shipping_tel02` text,
  `shipping_tel03` text,
  `shipping_fax01` text,
  `shipping_fax02` text,
  `shipping_fax03` text,
  `shipping_pref` smallint(6) DEFAULT NULL,
  `shipping_zip01` text,
  `shipping_zip02` text,
  `shipping_zipcode` text,
  `shipping_addr01` text,
  `shipping_addr02` text,
  `time_id` int(11) DEFAULT NULL,
  `shipping_time` text,
  `shipping_num` text,
  `shipping_date` datetime DEFAULT NULL,
  `shipping_commit_date` datetime DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `del_flg` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_shipping`
--

INSERT INTO `dtb_shipping` (`shipping_id`, `order_id`, `shipping_name01`, `shipping_name02`, `shipping_kana01`, `shipping_kana02`, `shipping_tel01`, `shipping_tel02`, `shipping_tel03`, `shipping_fax01`, `shipping_fax02`, `shipping_fax03`, `shipping_pref`, `shipping_zip01`, `shipping_zip02`, `shipping_zipcode`, `shipping_addr01`, `shipping_addr02`, `time_id`, `shipping_time`, `shipping_num`, `shipping_date`, `shipping_commit_date`, `rank`, `create_date`, `update_date`, `del_flg`) VALUES
(0, 1, 'guest', 'guest1', NULL, NULL, '3333', '4444', '5555', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sdfsdf, DA 56456 USA', 'sdfsdf, DA 56456 USA', 1, 'A.M.', NULL, NULL, NULL, NULL, '2015-07-23 10:01:22', '2015-07-23 10:01:22', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dtb_templates`
--

CREATE TABLE IF NOT EXISTS `dtb_templates` (
  `template_code` text NOT NULL,
  `device_type_id` int(11) NOT NULL,
  `template_name` text,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_templates`
--

INSERT INTO `dtb_templates` (`template_code`, `device_type_id`, `template_name`, `create_date`, `update_date`) VALUES
('default_en-US', 10, 'Default', '2015-07-15 10:21:16', '2015-07-15 10:21:16'),
('mobile', 1, 'Mobile', '2015-07-15 10:21:16', '2015-07-15 10:21:16'),
('sphone_en-US', 2, 'Smartphone', '2015-07-15 10:21:16', '2015-07-15 10:21:16');

-- --------------------------------------------------------

--
-- Table structure for table `dtb_update`
--

CREATE TABLE IF NOT EXISTS `dtb_update` (
  `module_id` int(11) NOT NULL,
  `module_name` text NOT NULL,
  `now_version` text,
  `latest_version` text NOT NULL,
  `module_explain` text,
  `main_php` text NOT NULL,
  `extern_php` text NOT NULL,
  `install_sql` text,
  `uninstall_sql` text,
  `other_files` text,
  `del_flg` smallint(6) NOT NULL DEFAULT '0',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `release_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mtb_allowed_tag`
--

CREATE TABLE IF NOT EXISTS `mtb_allowed_tag` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text,
  `rank` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mtb_allowed_tag`
--

INSERT INTO `mtb_allowed_tag` (`id`, `name`, `rank`) VALUES
(0, 'table', 0),
(1, 'tr', 1),
(2, 'td', 2),
(3, 'a', 3),
(4, 'b', 4),
(5, 'blink', 5),
(6, 'br', 6),
(7, 'center', 7),
(8, 'font', 8),
(9, 'h', 9),
(10, 'hr', 10),
(11, 'img', 11),
(12, 'li', 12),
(13, 'strong', 13),
(14, 'p', 14),
(15, 'div', 15),
(16, 'i', 16),
(17, 'u', 17),
(18, 's', 18);

-- --------------------------------------------------------

--
-- Table structure for table `mtb_authority`
--

CREATE TABLE IF NOT EXISTS `mtb_authority` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text,
  `rank` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mtb_authority`
--

INSERT INTO `mtb_authority` (`id`, `name`, `rank`) VALUES
(0, 'System administrator', 0),
(1, 'Store owner', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mtb_auth_excludes`
--

CREATE TABLE IF NOT EXISTS `mtb_auth_excludes` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text,
  `rank` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mtb_auth_excludes`
--

INSERT INTO `mtb_auth_excludes` (`id`, `name`, `rank`) VALUES
(0, 'index.php', 0),
(1, 'logout.php', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mtb_constants`
--

CREATE TABLE IF NOT EXISTS `mtb_constants` (
  `id` text NOT NULL,
  `name` text,
  `rank` smallint(6) NOT NULL DEFAULT '0',
  `remarks` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mtb_constants`
--

INSERT INTO `mtb_constants` (`id`, `name`, `rank`, `remarks`) VALUES
('ADMIN_HOME_URLPATH', 'ROOT_URLPATH . ADMIN_DIR . "home.php"', 165, 'Home'),
('ADMIN_ID', '"1"', 74, 'Management user ID (not displayed for maintenance.)'),
('ADMIN_LOGIN_URLPATH', 'ROOT_URLPATH . ADMIN_DIR . DIR_INDEX_PATH', 166, 'Login page'),
('ADMIN_LOGOUT_URLPATH', 'ROOT_URLPATH . ADMIN_DIR . "logout.php"', 171, 'Logout page'),
('ADMIN_LOG_REALFILE', 'DATA_REALDIR . "logs/admin.log"', 144, 'Management function log file'),
('ADMIN_MODE', '0', 90, 'Management mode 1: Active 0: Inactive (during delivery)'),
('ADMIN_NEWS_STARTYEAR', '2005', 264, 'New information management screen Start year (A.D.) '),
('ADMIN_ORDER_EDIT_URLPATH', 'ROOT_URLPATH . ADMIN_DIR . "order/edit.php"', 168, 'Order editing page'),
('ADMIN_ORDER_MAIL_URLPATH', 'ROOT_URLPATH . ADMIN_DIR . "order/mail.php"', 170, 'Order editing page'),
('ADMIN_ORDER_URLPATH', 'ROOT_URLPATH . ADMIN_DIR . "order/" . DIR_INDEX_PATH', 169, 'Order editing page'),
('ADMIN_PRODUCTS_URLPATH', 'ROOT_URLPATH . ADMIN_DIR . "products/" . DIR_INDEX_PATH', 167, 'Product search page'),
('ADMIN_SYSTEM_URLPATH', 'ROOT_URLPATH . ADMIN_DIR . "system/" . DIR_INDEX_PATH', 159, 'System management top'),
('ADMIN_TITLE', '"EC-CUBE management function"', 134, 'Management function title'),
('AMOUNT_LEN', '6', 199, 'Inventory count, Number of sales restrictions'),
('AUTH_TYPE', '"HMAC"', 10, 'Authentication method'),
('BIRTH_MONTH_POINT', '0', 98, 'Points for birthday month'),
('BIRTH_YEAR', '1901', 83, 'Date of birth Registration start year'),
('BLOC_DIR', '"frontparts/bloc/"', 311, 'Block file saving destination'),
('CART_URLPATH', 'ROOT_URLPATH . "cart/" . DIR_INDEX_PATH', 240, 'Cart top'),
('CATEGORY_HEAD', '">"', 138, 'New category display characters'),
('CATEGORY_MAX', '1000', 133, 'Maximum number of categories that can be registered'),
('CERT_STRING', '"7WDhcBTF"', 80, 'Authentication character example'),
('CHAR_CODE', '"UTF-8"', 39, 'Text code'),
('CLOSE_DAY', '31', 45, 'Designation of cutoff date (if last day of the month, specify 31.)'),
('COMPILE_ADMIN_REALDIR', 'DATA_REALDIR . "Smarty/templates_c/admin/"', 310, 'SMARTY compile (management function)'),
('COMPILE_REALDIR', 'DATA_REALDIR . "Smarty/templates_c/" . TEMPLATE_NAME . "/"', 309, 'SMARTY compile'),
('COOKIE_EXPIRE', '365', 212, 'Cookie retention time (days)'),
('CREDIT_ADD_YEAR', '10', 85, 'Credit card expiration + years'),
('CREDIT_NO_LEN', '4', 207, 'Character count for credit card (*Used in module)'),
('CSV_LINE_MAX', '10000', 128, 'Maximum number of characters per line for CSV upload'),
('CSV_SIZE', '2000', 127, 'CSV size restriction (KB)'),
('CSV_TEMP_REALDIR', 'DATA_REALDIR . "upload/csv/"', 156, 'Temporary saving destination of encoded CSV'),
('CUSTOMER_CONFIRM_MAIL', 'false', 75, 'Do you want to send a temporary member confirmation e-mail when registering as a member? (true: Temporary member, false: Full member)'),
('CUSTOMER_LOG_REALFILE', 'DATA_REALDIR . "logs/customer.log"', 143, 'Member login log file'),
('CV_PAYMENT_LIMIT', '14', 275, 'Payment deadline (*Used in module)'),
('DB_LOG_REALFILE', 'DATA_REALDIR . "logs/db.log"', 147, 'DB log file'),
('DEBUG_LOG_REALFILE', '""', 145, 'Debug log file (not input: Standard log file/control screen log file)'),
('DEBUG_MODE', 'false', 72, 'Debug mode (true: sfPrintR and DB error message, the log level outputs a Debug log, false: not output)'),
('DEFAULT_PASSWORD', '"******"', 66, 'Revision of member registration (MY page) for password'),
('DEFAULT_PRODUCT_DISP', '2', 56, '1: Disclosed 2: Not disclosed'),
('DEFAULT_PRODUCT_DOWN', '1', 703, '1: Actual product 2: Download'),
('DEFAULT_TEMPLATE_NAME', '"default_en-US"', 300, 'Default template name (PC)'),
('DELIVFEE_MAX', '47', 187, 'Maximum display count for delivery charge'),
('DELIVTIME_MAX', '16', 186, 'Maximum number of delivery times displayed'),
('DELIV_ADDR_MAX', '20', 67, 'Maximum number of separate shipping destinations registered'),
('DELIV_DATE_END_MAX', '21', 272, 'Maximum number of days displayed on pull-down menu after date on which delivery is possible'),
('DELIV_FREE_AMOUNT', '0', 57, 'Quantity of products purchased with free shipping (if 0, shipping is not free regardless of the quantity purchased)'),
('DELIV_URLPATH', 'ROOT_URLPATH . "shopping/deliv.php"', 241, 'Delivery destination settings'),
('DEVICE_TYPE_ADMIN', '99', 1103, 'Terminal type: Management screen'),
('DEVICE_TYPE_MOBILE', '1', 1100, 'Terminal type: Mobile'),
('DEVICE_TYPE_PC', '10', 1102, 'Terminal type: PC'),
('DEVICE_TYPE_SMARTPHONE', '2', 1101, 'Terminal type: Smartphone'),
('DISABLED_RGB', '"#C9C9C9"', 136, 'Display color when input items are inactive'),
('DOWNLOADS_TEMP_PLUGIN_INSTALL_DIR', 'DATA_REALDIR . "downloads/tmp/plugin_install/"', 613, 'Temporary decompression directory for plug-in (for installing)'),
('DOWNLOADS_TEMP_PLUGIN_UPDATE_DIR', 'DATA_REALDIR . "downloads/tmp/plugin_update/"', 612, 'Temporary decompression directory for plug-in (for updating)'),
('DOWNLOAD_BLOCK', '1024', 708, 'Download sales function   Downloaded file reading bytes (KB)'),
('DOWNLOAD_DAYS_LEN', '3', 700, 'Number of days Number of digits'),
('DOWNLOAD_EXTENSION', '"zip,lzh,jpg,jpeg,gif,png,mp3,pdf,csv"', 701, 'Extensions possible for registration of downloaded files (comma-delimited)'),
('DOWN_SAVE_REALDIR', 'DATA_REALDIR . "download/save/"', 705, 'Saving destination of downloaded file'),
('DOWN_SIZE', '50000', 702, 'Size limitation for download sales file (KB)'),
('DOWN_TEMP_REALDIR', 'DATA_REALDIR . "download/temp/"', 704, 'Temporary saving of downloaded file'),
('ECCUBE_INFO', 'true', 1218, 'EC-CUBE update information retrieval (true: retrieve false: do not retrieve)'),
('ECCUBE_PAYMENT', '"EC-CUBE"', 41, 'Phrase granted to payment module '),
('ENTRY_LIMIT_HOUR', '1', 267, 'Reinitiation restriction time (units: hours)'),
('ENTRY_URL', 'HTTPS_URL . "entry/" . DIR_INDEX_PATH', 238, 'Top of member registration page'),
('ERROR_LOG_REALFILE', 'DATA_REALDIR . "logs/error.log"', 146, 'Error log file (not input: standard log file/management screen log file)'),
('ERR_COLOR', '"#ffe8e8"', 137, 'Displayed color during an error'),
('FAVORITE_ERROR', '13', 46, 'General site error'),
('FILE_NAME_LEN', '10', 209, 'File name display character count'),
('FILE_SIZE', '10000', 130, 'File management screen upload restrictions (KB)'),
('FORGOT_MAIL', '0', 95, 'Do you want a confirmation e-mail regarding your forgotten password sent to you? (0: Do not send, 1: Send)'),
('GRAPH_LABEL_MAX', '40', 52, 'Character count of label for graph'),
('GRAPH_PIE_MAX', '10', 51, 'Maximum display count in pie chart'),
('GRAPH_REALDIR', 'HTML_REALDIR . "upload/graph_image/"', 49, 'Graph storage directory'),
('GRAPH_URLPATH', 'ROOT_URLPATH . "upload/graph_image/"', 50, 'Graph URL'),
('HOOK_POINT_PREPROCESS', '"LC_Page_preProcess"', 1301, 'Hook point (preprocess)'),
('HOOK_POINT_PROCESS', '"LC_Page_process"', 1302, 'Hook point (process)'),
('HTTP_REQUEST_TIMEOUT', '"5"', 1219, 'External site HTTP retrieval timeout time (seconds)'),
('ID_MAX_LEN', 'STEXT_LEN', 195, 'For management screen: Maximum character count for ID/password'),
('ID_MIN_LEN', '4', 196, 'For management screen: Minimum number of characters for ID and password'),
('IMAGE_RENAME', 'true', 525, 'Image rename settings (product images only) (true: Rename, false: Do not rename)'),
('IMAGE_SAVE_REALDIR', 'HTML_REALDIR . "upload/save_image/"', 151, 'Image saving destination'),
('IMAGE_SAVE_RSS_URL', 'HTTP_URL . "upload/save_image/"', 155, 'RSS image saving destination URL'),
('IMAGE_SAVE_URLPATH', 'ROOT_URLPATH . "upload/save_image/"', 153, 'URL for image saving destination'),
('IMAGE_SIZE', '1000', 126, 'Image key restriction (KB)'),
('IMAGE_TEMP_REALDIR', 'HTML_REALDIR . "upload/temp_image/"', 150, 'Temporary saving of image'),
('IMAGE_TEMP_RSS_URL', 'HTTP_URL . "upload/temp_image/"', 154, 'RSS image temporary storage URL'),
('IMAGE_TEMP_URLPATH', 'ROOT_URLPATH . "upload/temp_image/"', 152, 'URL for temporary saving of image'),
('INPUT_DELIV_FEE', '1', 58, 'Delivery charge settings screen display (active: 1 inactive: 0)'),
('INPUT_ZIP_URLPATH', 'ROOT_URLPATH . "input_zip.php"', 161, 'Postal code input'),
('INT_LEN', '9', 206, 'Number of digits for test values (INT)'),
('LANG_CODE', '"en-US"', 38, 'Language code'),
('LARGE_IMAGE_HEIGHT', '500', 111, 'Enlarged image vertical'),
('LARGE_IMAGE_WIDTH', '500', 110, 'Enlarged image horizontal'),
('LARGE_SUBIMAGE_HEIGHT', '500', 119, 'Enlarge sub image vertical'),
('LARGE_SUBIMAGE_WIDTH', '500', 118, 'Enlarge sub image horizontal'),
('LEVEL_MAX', '5', 132, 'Maximum hierarchy for category'),
('LLTEXT_LEN', '99999', 193, 'Character count of ultralong text (mail magazines, etc.)'),
('LOCALE', '"en_US.UTF-8"', 40, 'Locale settings'),
('LOGIN_FRAME', '"login_frame.tpl"', 77, 'Login screen frame'),
('LOGIN_RETRY_INTERVAL', '0', 1411, 'Delay time when login fails (seconds) (measure against brute force attack)'),
('LOG_REALFILE', 'DATA_REALDIR . "logs/site.log"', 142, 'Standard log file'),
('LTEXT_LEN', '3000', 192, 'Character count of long text'),
('MAIL_CHARACTER_CODE', '"UTF-8"', 1413, 'Mail character code'),
('MAIL_HEADER_CONTENT_TYPE', '"US-ASCII"', 1414, 'Mail header: contents type'),
('MAIN_FRAME', '"main_frame.tpl"', 78, 'Management screen frame'),
('MASTER_DATA_REALDIR', 'DATA_REALDIR . "cache/"', 27, 'Master data cache directory'),
('MAX_LIFETIME', '7200', 26, 'Validity period of DB session (seconds)'),
('MAX_LOG_QUANTITY', '5', 92, 'Maximum number of log files (Log rotation)'),
('MAX_LOG_SIZE', '"1000000"', 93, 'Maximum capacity stored in a single log file (byte)'),
('MEMBER_PMAX', '10', 182, 'Number of lines displayed on member management page'),
('MLTEXT_LEN', '1000', 191, 'Character count of long and medium-length text (inquiries, etc.)'),
('MOBILE_CART_URLPATH', 'ROOT_URLPATH . "cart/" . DIR_INDEX_PATH', 411, 'Cart top'),
('MOBILE_COMPILE_REALDIR', 'DATA_REALDIR . "Smarty/templates_c/" . MOBILE_TEMPLATE_NAME . "/"', 313, 'SMARTY compile (mobile)'),
('MOBILE_DEFAULT_TEMPLATE_NAME', '"mobile"', 301, 'Default template name (mobile)'),
('MOBILE_IMAGE_REALDIR', 'HTML_REALDIR . "upload/mobile_image/"', 408, 'Directory for saving converted images for mobile phones'),
('MOBILE_IMAGE_URLPATH', 'ROOT_URLPATH . "upload/mobile_image/"', 409, 'Directory for saving converted images for mobile phones'),
('MOBILE_P_DETAIL_URLPATH', 'ROOT_URLPATH . "products/detail.php?product_id="', 415, 'Product details (HTML output)'),
('MOBILE_SESSION_LIFETIME', '1800', 402, 'Mobile site session continuation time (seconds)'),
('MOBILE_SHOPPING_COMPLETE_URLPATH', 'ROOT_URLPATH . "shopping/complete.php"', 416, 'Purchase completion screen (*Used in the module)'),
('MOBILE_SHOPPING_CONFIRM_URLPATH', 'ROOT_URLPATH . "shopping/confirm.php"', 413, 'Purchase confirmation page'),
('MOBILE_SHOPPING_PAYMENT_URLPATH', 'ROOT_URLPATH . "shopping/payment.php"', 414, 'Payment method selection page'),
('MOBILE_TEMPLATE_NAME', '"mobile"', 304, 'Mobile template name'),
('MOBILE_TEMPLATE_REALDIR', 'SMARTY_TEMPLATES_REALDIR . MOBILE_TEMPLATE_NAME . "/"', 312, 'SMARTY template (mobile)'),
('MOBILE_TOP_URLPATH', 'ROOT_URLPATH . DIR_INDEX_PATH', 410, 'Mobile URL'),
('MODULE_DIR', '"downloads/module/"', 22, 'Downloaded module storage directory'),
('MODULE_REALDIR', 'DATA_REALDIR . MODULE_DIR', 23, 'Downloaded module storage directory'),
('MTEXT_LEN', '200', 190, 'Character count of long items (addresses, etc.)'),
('MULTIPLE_URLPATH', 'ROOT_URLPATH . "shopping/multiple.php"', 242, 'Settings for multiple delivery destinations'),
('MYPAGE_DELIVADDR_URLPATH', 'ROOT_URLPATH . "mypage/delivery.php"', 254, 'My page delivery destination URL'),
('MYPAGE_ORDER_STATUS_DISP_FLAG', 'true', 1412, 'MY page: Order status display flag'),
('NAVI_PMAX', '4', 184, 'Maximum display quantity for page number'),
('NORMAL_IMAGE_HEIGHT', '260', 115, 'Normal image height'),
('NORMAL_IMAGE_WIDTH', '260', 114, 'Normal image length'),
('NORMAL_PRICE_TITLE', '"Normal price"', 140, 'Price name'),
('NORMAL_SUBIMAGE_HEIGHT', '200', 117, 'Normal subimage height'),
('NORMAL_SUBIMAGE_WIDTH', '200', 116, 'Normal subimage length'),
('NOSTOCK_HIDDEN', 'false', 291, 'Non-display of products with no inventory (true: Not displayed, false: Displayed)'),
('NO_IMAGE_REALFILE', 'USER_TEMPLATE_REALDIR . "default/img/picture/img_blank.gif"', 158, 'Displayed where there is no image'),
('OPTION_CLASS_REGIST', '1', 62, 'Product specification registration (active: 1 inactive: 0)'),
('OPTION_DELIV_FEE', '1', 60, 'Add delivery charges for each delivery company (active: 1 inactive: 0)'),
('OPTION_FAVORITE_PRODUCT', '1', 523, 'Favorite product registration (active: 1 inactive: 0)'),
('OPTION_PRODUCT_DELIV_FEE', '0', 59, 'Shipping cost settings for each product (active: 1 inactive: 0)'),
('OPTION_RECOMMEND', '1', 61, 'Recommended product registration (active: 1 inactive: 0)'),
('ORDER_BACK_ORDER', '4', 804, 'Being backordered'),
('ORDER_CANCEL', '3', 803, 'Cancel'),
('ORDER_DELIV', '5', 805, 'Shipped'),
('ORDER_NEW', '1', 800, 'New order'),
('ORDER_PAY_WAIT', '2', 801, 'Waiting for deposit'),
('ORDER_PENDING', '7', 806, 'Payment being processed'),
('ORDER_PRE_END', '6', 802, 'Deposited'),
('ORDER_STATUS_MAX', '50', 70, 'Response status management screen list display quantity'),
('OSTORE_LOG_REALFILE', 'DATA_REALDIR . "logs/ownersstore.log"', 502, 'Owners Store log path'),
('OSTORE_SSLURL', '""', 501, 'Owners Store URL'),
('OSTORE_URL', '"http://www.ec-cube.net/"', 500, 'Owners Store URL'),
('PAGE_DISPLAY_TIME_LOG_MIN_EXEC_TIME', '2', 1003, 'Time settings for retrieving page display time log (retrieved when it takes longer than the set value)'),
('PAGE_DISPLAY_TIME_LOG_MODE', '1', 1002, 'Flag for retrieving page display time log (1: Display, 0: Do not display)'),
('PASSWORD_MAX_LEN', 'STEXT_LEN', 205, 'Front screen: Maximum character count for password'),
('PASSWORD_MIN_LEN', '4', 204, 'Front screen: Minimum character count for password'),
('PEAR_DB_DEBUG', '0', 42, 'PEAR::DB debug mode'),
('PEAR_DB_PERSISTENT', 'false', 43, 'PEAR::DB persistent option'),
('PERCENTAGE_LEN', '3', 198, 'the number of digits following the point'),
('PLUGIN_ACTIVATE_FLAG', 'true', 1303, 'Load/not load flag for plug)'),
('PLUGIN_DIR', '"plugins/"', 600, '(For 2.11) Plug-in directory (Used in module)'),
('PLUGIN_EXTENSION', '"tar,tar.gz"', 611, 'Extensions possible for registration of plug-in file (comma-delimited)'),
('PLUGIN_HTML_REALDIR', 'HTML_REALDIR . "plugin/"', 605, 'Plug-in saving destination directory (html)'),
('PLUGIN_HTML_URLPATH', 'ROOT_URLPATH . "plugin/"', 614, 'Plug-in URL'),
('PLUGIN_REALDIR', 'USER_REALDIR . PLUGIN_DIR', 601, '(For 2.11) Plug-in saving destination (Used in module)'),
('PLUGIN_TEMP_REALDIR', 'HTML_REALDIR . "upload/temp_plugin/"', 608, 'Temporary saving destination of plug-in file'),
('PLUGIN_UPLOAD_REALDIR', 'DATA_REALDIR . "downloads/plugin/"', 604, 'Plug-in saving destination directory'),
('POINT_RULE', '2', 88, 'Point calculation rule (1: Round off, 2: Truncated, 3: Round up)'),
('POINT_VALUE', '1', 89, 'Price per point ($)'),
('PRICE_LEN', '8', 197, 'Number of digits for amount'),
('PRODUCTSUB_MAX', '5', 185, 'Maximum number of product subinformation'),
('PRODUCTS_TOTAL_MAX', '15', 55, 'Up to how many do you want to display in product tabulation?'),
('PRODUCT_TYPE_DOWNLOAD', '2', 901, 'Downloaded product'),
('PRODUCT_TYPE_NORMAL', '1', 900, 'Normal product'),
('P_DETAIL_URLPATH', 'ROOT_URLPATH . "products/detail.php?product_id="', 253, 'Product details (HTML output)'),
('RECOMMEND_NUM', '8', 269, 'Recommended product display number'),
('RECOMMEND_PRODUCT_MAX', '6', 268, 'Related product display number'),
('RELEASE_YEAR', '2005', 84, 'Year in which this system started operating'),
('REVIEW_ALLOW_URL', '0', 277, 'Allow or not allow writing of URLs in product reviews'),
('REVIEW_REGIST_MAX', '5', 71, 'Maximum number of front review writings'),
('RFC_COMPLIANT_EMAIL_CHECK', 'false', 401, 'Does the e-mail address check comply with RFC? (true: complies, false: does not comply)'),
('SALE_PRICE_TITLE', '"Sales price"', 141, 'Price name'),
('SAMPLE_ADDRESS1', '"Municipality name (Example: Sunnyvale, CA 94085 USA)"', 1, 'Related to front display'),
('SAMPLE_ADDRESS2', '"House number/building name (Example: 440 North Wolfe Road)"', 2, 'Related to front display'),
('SEARCH_CATEGORY_LEN', '18', 208, 'Search category maximum display character count (byte)'),
('SEARCH_PMAX', '10', 183, 'Number of lines for search page display '),
('SELECT_RGB', '"#ffffdf"', 135, 'Emphasized display color during editing'),
('SEPA_CATNAVI', '" > "', 235, 'Category delimiter'),
('SESSION_KEEP_METHOD', '"useCookie"', 418, 'Session maintenance method: "useCookie"|"useRequest"'),
('SESSION_LIFETIME', '1800', 419, 'Session continuation time (seconds)'),
('SHOPPING_COMPLETE_URLPATH', 'ROOT_URLPATH . "shopping/complete.php"', 246, 'Purchase completion screen'),
('SHOPPING_CONFIRM_URLPATH', 'ROOT_URLPATH . "shopping/confirm.php"', 244, 'Purchase confirmation page'),
('SHOPPING_MODULE_URLPATH', 'ROOT_URLPATH . "shopping/load_payment_module.php"', 249, 'Screen for module addition'),
('SHOPPING_PAYMENT_URLPATH', 'ROOT_URLPATH . "shopping/payment.php"', 245, 'Payment method selection page'),
('SHOPPING_URL', 'HTTPS_URL . "shopping/" . DIR_INDEX_PATH', 237, 'Member information input'),
('SITE_FRAME', '"site_frame.tpl"', 79, 'General site screen frame'),
('SLTEXT_LEN', '500', 294, 'Character count of short text'),
('SMALL_IMAGE_HEIGHT', '130', 113, 'List image vertical'),
('SMALL_IMAGE_WIDTH', '130', 112, 'List image horizontal'),
('SMARTPHONE_COMPILE_REALDIR', 'DATA_REALDIR . "Smarty/templates_c/" . SMARTPHONE_TEMPLATE_NAME . "/"', 315, 'SMARTY compile (smartphone)'),
('SMARTPHONE_DEFAULT_TEMPLATE_NAME', '"sphone_en-US"', 302, 'Default template name (smartphone)'),
('SMARTPHONE_TEMPLATE_NAME', '"sphone_en-US"', 305, 'Smartphone template name'),
('SMARTPHONE_TEMPLATE_REALDIR', 'SMARTY_TEMPLATES_REALDIR . SMARTPHONE_TEMPLATE_NAME . "/"', 314, 'SMARTY template (smart phone)'),
('SMARTY_FORCE_COMPILE_MODE', 'false', 1401, 'SMARTY compile mode'),
('SMARTY_TEMPLATES_REALDIR', ' DATA_REALDIR . "Smarty/templates/"', 306, 'SMARTY template'),
('SMTEXT_LEN', '100', 189, NULL),
('SQL_QUERY_LOG_MIN_EXEC_TIME', '2', 1001, 'Execution time deemed as being a delay in the DB log (seconds)'),
('SQL_QUERY_LOG_MODE', '1', 1000, 'DB log recording mode (0: No recording, 1: Recording only during delays, 2: Constant recording)'),
('START_BIRTH_YEAR', '1970', 139, 'Date of birth Initially selected year'),
('STEXT_LEN', '50', 188, 'Character count of short items (names, etc.)'),
('TEL_ITEM_LEN', '6', 202, 'Various item restrictions for telephone numbers'),
('TEL_LEN', '12', 203, 'Total number of telephone numbers'),
('TEMPLATE_ADMIN_REALDIR', 'SMARTY_TEMPLATES_REALDIR . "admin/"', 308, 'SMARTY template (management function)'),
('TEMPLATE_NAME', '"default_en-US"', 303, 'Template name'),
('TEMPLATE_REALDIR', 'SMARTY_TEMPLATES_REALDIR . TEMPLATE_NAME . "/"', 307, 'SMARTY template (PC)'),
('TEMPLATE_SIZE', '10000', 131, 'Restrictions for template files that can be uploaded (KB)'),
('TEMPLATE_TEMP_REALDIR', 'HTML_REALDIR . "upload/temp_template/"', 19, 'Temporary saving of template file'),
('TIMEZONE', '"Etc/GMT+0"', 1415, 'Time zone'),
('TOP_URLPATH', 'ROOT_URLPATH . DIR_INDEX_PATH', 239, 'Site top'),
('TRANSACTION_ID_NAME', '"transactionid"', 94, 'Transaction ID name'),
('UPDATE_HTTP', '""', 28, 'Update management file storage location'),
('UPDATE_SEND_SITE_INFO', 'false', 289, 'Will site information be transmitted when updating?'),
('URL_LEN', '1024', 194, 'URL character length'),
('USER_DEF_PHP_REALFILE', 'USER_REALDIR . "__default.php"', 20, 'Default PHP file for user creation screen'),
('USER_DIR', '"user_data/"', 3, 'User file saving destination'),
('USER_PACKAGE_DIR', '"packages/"', 17, 'Template file saving destination'),
('USER_REALDIR', 'HTML_REALDIR . USER_DIR', 4, 'User file saving destination'),
('USER_TEMPLATE_REALDIR', 'USER_REALDIR . USER_PACKAGE_DIR', 18, 'Template file saving destination'),
('USER_URL', 'HTTP_URL . USER_DIR', 9, 'User creation page, etc.'),
('USE_MOBILE', 'true', 292, 'Do you want to use the mobile site? (true: Use, false: Do not use) (false is partially supported) (*Used in module)'),
('USE_MULTIPLE_SHIPPING', 'true', 293, 'Do you want to use the multiple shipping destination designation function? (true: Use, false: Do not use)'),
('USE_POINT', 'true', 290, 'Do you want to use points? (true: Use, false: Do not use) (false is partially supported)'),
('USE_VERBOSE_LOG', 'DEBUG_MODE', 73, 'Do you want to make the log wordy? (true: Use, false: Do not use)'),
('ZIP01_LEN', '3', 200, 'Postal code 1'),
('ZIP02_LEN', '4', 201, 'Postal code 2'),
('ZIPCODE_LEN', '10', 210, 'zipcode character count'),
('ZIP_DOWNLOAD_URL', '"http://www.post.japanpost.jp/zipcode/dl/kogaki/zip/ken_all.zip"', 1224, 'Postal code CSV ZIP archive file retrieval source');

-- --------------------------------------------------------

--
-- Table structure for table `mtb_customer_order_status`
--

CREATE TABLE IF NOT EXISTS `mtb_customer_order_status` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text,
  `rank` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mtb_customer_order_status`
--

INSERT INTO `mtb_customer_order_status` (`id`, `name`, `rank`) VALUES
(1, 'Order receipt', 1),
(2, 'Waiting for deposit', 2),
(3, 'Cancel', 4),
(4, 'Order receipt', 5),
(5, 'Shipped', 6),
(6, 'Order receipt', 3),
(7, 'Order not complete', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mtb_customer_status`
--

CREATE TABLE IF NOT EXISTS `mtb_customer_status` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text,
  `rank` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mtb_customer_status`
--

INSERT INTO `mtb_customer_status` (`id`, `name`, `rank`) VALUES
(1, 'Temporary member', 0),
(2, 'full member', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mtb_db`
--

CREATE TABLE IF NOT EXISTS `mtb_db` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text,
  `rank` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mtb_db`
--

INSERT INTO `mtb_db` (`id`, `name`, `rank`) VALUES
(1, 'PostgreSQL', 0),
(2, 'MySQL', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mtb_delivery_date`
--

CREATE TABLE IF NOT EXISTS `mtb_delivery_date` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text,
  `rank` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mtb_delivery_date`
--

INSERT INTO `mtb_delivery_date` (`id`, `name`, `rank`) VALUES
(1, 'Immediate', 0),
(2, '1 to 2 days later', 1),
(3, '3 to 4 days', 2),
(4, 'After 1 week', 3),
(5, 'After 2 weeks', 4),
(6, 'After 3 weeks', 5),
(7, 'After 1 month', 6),
(8, 'After 2 months', 7),
(9, 'Backorder (after product arrival)', 8);

-- --------------------------------------------------------

--
-- Table structure for table `mtb_device_type`
--

CREATE TABLE IF NOT EXISTS `mtb_device_type` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text,
  `rank` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mtb_device_type`
--

INSERT INTO `mtb_device_type` (`id`, `name`, `rank`) VALUES
(1, 'Mobile', 0),
(2, 'Smartphone', 1),
(10, 'PC', 2),
(99, 'Management screen', 3);

-- --------------------------------------------------------

--
-- Table structure for table `mtb_disable_logout`
--

CREATE TABLE IF NOT EXISTS `mtb_disable_logout` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text,
  `rank` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mtb_disable_logout`
--

INSERT INTO `mtb_disable_logout` (`id`, `name`, `rank`) VALUES
(1, '/shopping/deliv.php', 0),
(2, '/shopping/payment.php', 1),
(3, '/shopping/confirm.php', 2),
(4, '/shopping/card.php', 3),
(5, '/shopping/loan.php', 4);

-- --------------------------------------------------------

--
-- Table structure for table `mtb_disp`
--

CREATE TABLE IF NOT EXISTS `mtb_disp` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text,
  `rank` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mtb_disp`
--

INSERT INTO `mtb_disp` (`id`, `name`, `rank`) VALUES
(1, 'Disclosed', 0),
(2, 'Not disclosed', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mtb_job`
--

CREATE TABLE IF NOT EXISTS `mtb_job` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text,
  `rank` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mtb_job`
--

INSERT INTO `mtb_job` (`id`, `name`, `rank`) VALUES
(1, 'Public servant', 0),
(2, 'Consultant', 1),
(3, 'Technical job related to computers', 2),
(4, 'Technical job other than those related to computers', 3),
(5, 'Finance-related', 4),
(6, 'Doctor', 5),
(7, 'Lawyer', 6),
(8, 'General affairs/Human resources/Clerical work', 7),
(9, 'Operation and sales', 8),
(10, 'Research and development', 9),
(11, 'Public relations/Advertising', 10),
(12, 'Planning/Marketing', 11),
(13, 'Design-related', 12),
(14, 'Corporate management/executives', 13),
(15, 'Publishing and mass communications-related', 14),
(16, 'Student/Part-timer', 15),
(17, 'Housewife', 16),
(18, 'Other', 17);

-- --------------------------------------------------------

--
-- Table structure for table `mtb_magazine_type`
--

CREATE TABLE IF NOT EXISTS `mtb_magazine_type` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text,
  `rank` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mtb_magazine_type`
--

INSERT INTO `mtb_magazine_type` (`id`, `name`, `rank`) VALUES
(1, 'HTML', 0),
(2, 'Text', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mtb_mail_magazine_type`
--

CREATE TABLE IF NOT EXISTS `mtb_mail_magazine_type` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text,
  `rank` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mtb_mail_magazine_type`
--

INSERT INTO `mtb_mail_magazine_type` (`id`, `name`, `rank`) VALUES
(1, 'HTML mail', 0),
(2, 'Text mail', 1),
(3, 'Do not wish to receive', 2);

-- --------------------------------------------------------

--
-- Table structure for table `mtb_mail_template`
--

CREATE TABLE IF NOT EXISTS `mtb_mail_template` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text,
  `rank` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mtb_mail_template`
--

INSERT INTO `mtb_mail_template` (`id`, `name`, `rank`) VALUES
(1, 'E-mail regarding receipt of order', 0),
(2, 'E-mail regarding receipt of order (mobile)', 1),
(3, 'E-mail regarding receipt of order cancellation', 2),
(4, 'Backorder confirmation e-mail', 3),
(5, 'Inquiry receipt e-mail', 4);

-- --------------------------------------------------------

--
-- Table structure for table `mtb_mail_tpl_path`
--

CREATE TABLE IF NOT EXISTS `mtb_mail_tpl_path` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text,
  `rank` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mtb_mail_tpl_path`
--

INSERT INTO `mtb_mail_tpl_path` (`id`, `name`, `rank`) VALUES
(1, 'mail_templates/order_mail.tpl', 0),
(2, 'mail_templates/order_mail.tpl', 1),
(3, 'mail_templates/order_mail.tpl', 2),
(4, 'mail_templates/order_mail.tpl', 3),
(5, 'mail_templates/contact_mail.tpl', 4);

-- --------------------------------------------------------

--
-- Table structure for table `mtb_mail_type`
--

CREATE TABLE IF NOT EXISTS `mtb_mail_type` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text,
  `rank` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mtb_mail_type`
--

INSERT INTO `mtb_mail_type` (`id`, `name`, `rank`) VALUES
(1, 'PC e-mail address', 0),
(2, 'Mobile e-mail address', 1),
(3, 'PC e-mail address (excludes members who have registered a mobile e-mail address)', 2),
(4, 'Mobile e-mail address (excluding members who have registered a PC e-mail address)', 3);

-- --------------------------------------------------------

--
-- Table structure for table `mtb_mobile_domain`
--

CREATE TABLE IF NOT EXISTS `mtb_mobile_domain` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text,
  `rank` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mtb_mobile_domain`
--

INSERT INTO `mtb_mobile_domain` (`id`, `name`, `rank`) VALUES
(1, 'docomo.ne.jp', 0),
(2, 'ezweb.ne.jp', 1),
(3, 'softbank.ne.jp', 2),
(4, 'vodafone.ne.jp', 3),
(5, 'pdx.ne.jp', 4),
(6, 'disney.ne.jp', 5),
(7, 'willcom.com', 6);

-- --------------------------------------------------------

--
-- Table structure for table `mtb_order_status`
--

CREATE TABLE IF NOT EXISTS `mtb_order_status` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text,
  `rank` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mtb_order_status`
--

INSERT INTO `mtb_order_status` (`id`, `name`, `rank`) VALUES
(1, 'New order received', 1),
(2, 'Waiting for deposit', 2),
(3, 'Cancel', 4),
(4, 'Being backordered', 5),
(5, 'Shipped', 6),
(6, 'Deposited', 3),
(7, 'Payment being processed', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mtb_order_status_color`
--

CREATE TABLE IF NOT EXISTS `mtb_order_status_color` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text,
  `rank` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mtb_order_status_color`
--

INSERT INTO `mtb_order_status_color` (`id`, `name`, `rank`) VALUES
(1, '#FFFFFF', 0),
(2, '#FFDE9B', 1),
(3, '#C9C9C9', 2),
(4, '#FFD9D9', 3),
(5, '#BFDFFF', 4),
(6, '#FFFFAB', 5),
(7, '#FFCCCC', 6);

-- --------------------------------------------------------

--
-- Table structure for table `mtb_ownersstore_err`
--

CREATE TABLE IF NOT EXISTS `mtb_ownersstore_err` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text,
  `rank` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mtb_ownersstore_err`
--

INSERT INTO `mtb_ownersstore_err` (`id`, `name`, `rank`) VALUES
(1000, 'An unknown error occurred.', 0),
(1001, 'Illegal parameters were sent.', 1),
(1002, 'Authentication failed. <br />・If you are a temporary member, complete member registration <br />・Check to make sure that the authentication key is correctly set.', 2),
(1003, 'Authentication failed. <br />・If you are a temporary member, complete member registration <br />・Check to make sure that the authentication key is correctly set.', 3),
(1004, 'There are no purchased products.', 4),
(1005, 'There is no updater that can be downloaded. <br /> It is possible that the status is "Awaiting deposit" <br /> ・It is possible that the installed module is already the latest version.', 5),
(1006, 'An error occurred in the delivery server.', 6),
(1007, 'Download completion notification failed.', 7),
(2001, 'Authentication of management screen failed. <br /> Return to the management page top screen and log in again.', 8),
(2002, 'Not connected to the delivery server.', 9),
(2003, 'Not connected to the delivery server.', 10),
(2004, 'An error occurred in the delivery server.', 11),
(2005, 'An authentication key has not been set. <br />・Set an authentication key using "Authentication key settings".', 12),
(2006, 'Unauthorized access.', 13),
(2007, 'Illegal parameters were sent.', 14),
(2008, 'Automatic updates are disabled', 15),
(2009, 'File writing failed. <br /> ・Write access is not properly set. <br />・Check whether there is write access for the data/downloads/temp directory', 16),
(2010, 'File writing failed. <br />・Check the details in "Log management".', 17);

-- --------------------------------------------------------

--
-- Table structure for table `mtb_ownersstore_ips`
--

CREATE TABLE IF NOT EXISTS `mtb_ownersstore_ips` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text,
  `rank` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mtb_ownersstore_ips`
--

INSERT INTO `mtb_ownersstore_ips` (`id`, `name`, `rank`) VALUES
(0, '210.188.195.143', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mtb_page_max`
--

CREATE TABLE IF NOT EXISTS `mtb_page_max` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text,
  `rank` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mtb_page_max`
--

INSERT INTO `mtb_page_max` (`id`, `name`, `rank`) VALUES
(10, '10', 0),
(20, '20', 1),
(30, '30', 2),
(40, '40', 3),
(50, '50', 4),
(60, '60', 5),
(70, '70', 6),
(80, '80', 7),
(90, '90', 8),
(100, '100', 9);

-- --------------------------------------------------------

--
-- Table structure for table `mtb_permission`
--

CREATE TABLE IF NOT EXISTS `mtb_permission` (
  `id` text NOT NULL,
  `name` text,
  `rank` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mtb_permission`
--

INSERT INTO `mtb_permission` (`id`, `name`, `rank`) VALUES
('/admin/entry/delete.php', '1', 9),
('/admin/entry/index.php', '1', 8),
('/admin/entry/inputzip.php', '1', 10),
('/admin/search/delete_note.php', '1', 11),
('/admin/system/delete.php', '0', 1),
('/admin/system/index.php', '0', 0),
('/admin/system/input.php', '0', 2),
('/admin/system/master.php', '0', 3),
('/admin/system/mastercsv.php', '0', 6),
('/admin/system/master_delete.php', '0', 4),
('/admin/system/master_rank.php', '0', 5),
('/admin/system/rank.php', '0', 7);

-- --------------------------------------------------------

--
-- Table structure for table `mtb_pref`
--

CREATE TABLE IF NOT EXISTS `mtb_pref` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text,
  `rank` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mtb_pref`
--

INSERT INTO `mtb_pref` (`id`, `name`, `rank`) VALUES
(1, '北海道', 1),
(2, '青森県', 2),
(3, '岩手県', 3),
(4, '宮城県', 4),
(5, '秋田県', 5),
(6, '山形県', 6),
(7, '福島県', 7),
(8, '茨城県', 8),
(9, '栃木県', 9),
(10, '群馬県', 10),
(11, '埼玉県', 11),
(12, '千葉県', 12),
(13, '東京都', 13),
(14, '神奈川県', 14),
(15, '新潟県', 15),
(16, '富山県', 16),
(17, '石川県', 17),
(18, '福井県', 18),
(19, '山梨県', 19),
(20, '長野県', 20),
(21, '岐阜県', 21),
(22, '静岡県', 22),
(23, '愛知県', 23),
(24, '三重県', 24),
(25, '滋賀県', 25),
(26, '京都府', 26),
(27, '大阪府', 27),
(28, '兵庫県', 28),
(29, '奈良県', 29),
(30, '和歌山県', 30),
(31, '鳥取県', 31),
(32, '島根県', 32),
(33, '岡山県', 33),
(34, '広島県', 34),
(35, '山口県', 35),
(36, '徳島県', 36),
(37, '香川県', 37),
(38, '愛媛県', 38),
(39, '高知県', 39),
(40, '福岡県', 40),
(41, '佐賀県', 41),
(42, '長崎県', 42),
(43, '熊本県', 43),
(44, '大分県', 44),
(45, '宮崎県', 45),
(46, '鹿児島県', 46),
(47, '沖縄県', 47);

-- --------------------------------------------------------

--
-- Table structure for table `mtb_product_list_max`
--

CREATE TABLE IF NOT EXISTS `mtb_product_list_max` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text,
  `rank` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mtb_product_list_max`
--

INSERT INTO `mtb_product_list_max` (`id`, `name`, `rank`) VALUES
(15, '15 items', 0),
(30, '30 items', 1),
(50, '50 items', 2);

-- --------------------------------------------------------

--
-- Table structure for table `mtb_product_status_color`
--

CREATE TABLE IF NOT EXISTS `mtb_product_status_color` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text,
  `rank` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mtb_product_status_color`
--

INSERT INTO `mtb_product_status_color` (`id`, `name`, `rank`) VALUES
(1, '#FFFFFF', 0),
(2, '#C9C9C9', 1),
(3, '#DDE6F2', 2);

-- --------------------------------------------------------

--
-- Table structure for table `mtb_product_type`
--

CREATE TABLE IF NOT EXISTS `mtb_product_type` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text,
  `rank` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mtb_product_type`
--

INSERT INTO `mtb_product_type` (`id`, `name`, `rank`) VALUES
(1, 'Normal product', 0),
(2, 'Downloaded product', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mtb_recommend`
--

CREATE TABLE IF NOT EXISTS `mtb_recommend` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text,
  `rank` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mtb_recommend`
--

INSERT INTO `mtb_recommend` (`id`, `name`, `rank`) VALUES
(1, '★', 4),
(2, '★★', 3),
(3, '★★★', 2),
(4, '★★★★', 1),
(5, '★★★★★', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mtb_reminder`
--

CREATE TABLE IF NOT EXISTS `mtb_reminder` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text,
  `rank` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mtb_reminder`
--

INSERT INTO `mtb_reminder` (`id`, `name`, `rank`) VALUES
(1, 'What is your mothers maiden name?', 0),
(2, 'What is your favorite cartoon?', 1),
(3, 'What is the name of your favorite pet?', 2),
(4, 'Who was your first girlfriend/boyfriend?', 3),
(5, 'What movie do you think is interesting?', 4),
(6, 'What is the name of the teacher you respected?', 5),
(7, 'What is your favorite food?', 6);

-- --------------------------------------------------------

--
-- Table structure for table `mtb_review_deny_url`
--

CREATE TABLE IF NOT EXISTS `mtb_review_deny_url` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text,
  `rank` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mtb_review_deny_url`
--

INSERT INTO `mtb_review_deny_url` (`id`, `name`, `rank`) VALUES
(0, 'http://', 0),
(1, 'https://', 1),
(2, 'ttp://', 2),
(3, 'ttps://', 3);

-- --------------------------------------------------------

--
-- Table structure for table `mtb_sex`
--

CREATE TABLE IF NOT EXISTS `mtb_sex` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text,
  `rank` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mtb_sex`
--

INSERT INTO `mtb_sex` (`id`, `name`, `rank`) VALUES
(1, 'Male', 0),
(2, 'Female', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mtb_status`
--

CREATE TABLE IF NOT EXISTS `mtb_status` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text,
  `rank` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mtb_status`
--

INSERT INTO `mtb_status` (`id`, `name`, `rank`) VALUES
(1, 'NEW', 0),
(2, 'Only a few remaining', 1),
(3, '2x points', 2),
(4, 'Recommendation', 3),
(5, 'Limited edition', 4);

-- --------------------------------------------------------

--
-- Table structure for table `mtb_status_image`
--

CREATE TABLE IF NOT EXISTS `mtb_status_image` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text,
  `rank` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mtb_status_image`
--

INSERT INTO `mtb_status_image` (`id`, `name`, `rank`) VALUES
(1, 'img/icon/ico_01.gif', 0),
(2, 'img/icon/ico_02.gif', 1),
(3, 'img/icon/ico_03.gif', 2),
(4, 'img/icon/ico_04.gif', 3),
(5, 'img/icon/ico_05.gif', 4);

-- --------------------------------------------------------

--
-- Table structure for table `mtb_target`
--

CREATE TABLE IF NOT EXISTS `mtb_target` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text,
  `rank` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mtb_target`
--

INSERT INTO `mtb_target` (`id`, `name`, `rank`) VALUES
(0, 'Unused', 0),
(1, 'LeftNavi', 1),
(2, 'MainHead', 2),
(3, 'RightNavi', 3),
(4, 'MainFoot', 4),
(5, 'TopNavi', 5),
(6, 'BottomNavi', 6),
(7, 'HeadNavi', 7),
(8, 'HeaderTopNavi', 8),
(9, 'FooterBottomNavi', 9),
(10, 'HeaderInternalNavi', 10);

-- --------------------------------------------------------

--
-- Table structure for table `mtb_taxrule`
--

CREATE TABLE IF NOT EXISTS `mtb_taxrule` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text,
  `rank` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mtb_taxrule`
--

INSERT INTO `mtb_taxrule` (`id`, `name`, `rank`) VALUES
(1, 'Round off', 0),
(2, 'Truncate', 1),
(3, 'Round up', 2);

-- --------------------------------------------------------

--
-- Table structure for table `mtb_wday`
--

CREATE TABLE IF NOT EXISTS `mtb_wday` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text,
  `rank` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mtb_wday`
--

INSERT INTO `mtb_wday` (`id`, `name`, `rank`) VALUES
(0, 'Sunday', 0),
(1, 'Monday', 1),
(2, 'Tuesday', 2),
(3, 'Wednesday', 3),
(4, 'Thursday', 4),
(5, 'Friday', 5),
(6, 'Saturday', 6);

-- --------------------------------------------------------

--
-- Table structure for table `mtb_work`
--

CREATE TABLE IF NOT EXISTS `mtb_work` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text,
  `rank` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mtb_work`
--

INSERT INTO `mtb_work` (`id`, `name`, `rank`) VALUES
(0, 'Not operating', 0),
(1, 'Operating', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mtb_zip`
--

CREATE TABLE IF NOT EXISTS `mtb_zip` (
  `zip_id` int(11) NOT NULL DEFAULT '0',
  `zipcode` text,
  `state` text,
  `city` text,
  `town` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dtb_api_account`
--
ALTER TABLE `dtb_api_account`
  ADD PRIMARY KEY (`api_account_id`);

--
-- Indexes for table `dtb_api_account_api_account_id_seq`
--
ALTER TABLE `dtb_api_account_api_account_id_seq`
  ADD PRIMARY KEY (`sequence`);

--
-- Indexes for table `dtb_api_config`
--
ALTER TABLE `dtb_api_config`
  ADD PRIMARY KEY (`api_config_id`);

--
-- Indexes for table `dtb_api_config_api_config_id_seq`
--
ALTER TABLE `dtb_api_config_api_config_id_seq`
  ADD PRIMARY KEY (`sequence`);

--
-- Indexes for table `dtb_baseinfo`
--
ALTER TABLE `dtb_baseinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dtb_best_products`
--
ALTER TABLE `dtb_best_products`
  ADD PRIMARY KEY (`best_id`);

--
-- Indexes for table `dtb_best_products_best_id_seq`
--
ALTER TABLE `dtb_best_products_best_id_seq`
  ADD PRIMARY KEY (`sequence`);

--
-- Indexes for table `dtb_bkup`
--
ALTER TABLE `dtb_bkup`
  ADD PRIMARY KEY (`bkup_name`(255));

--
-- Indexes for table `dtb_bloc`
--
ALTER TABLE `dtb_bloc`
  ADD PRIMARY KEY (`device_type_id`,`bloc_id`),
  ADD UNIQUE KEY `device_type_id` (`device_type_id`,`filename`(255));

--
-- Indexes for table `dtb_blocposition`
--
ALTER TABLE `dtb_blocposition`
  ADD PRIMARY KEY (`device_type_id`,`page_id`,`target_id`,`bloc_id`);

--
-- Indexes for table `dtb_bloc_bloc_id_seq`
--
ALTER TABLE `dtb_bloc_bloc_id_seq`
  ADD PRIMARY KEY (`sequence`);

--
-- Indexes for table `dtb_category`
--
ALTER TABLE `dtb_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `dtb_category_category_id_seq`
--
ALTER TABLE `dtb_category_category_id_seq`
  ADD PRIMARY KEY (`sequence`);

--
-- Indexes for table `dtb_category_count`
--
ALTER TABLE `dtb_category_count`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `dtb_category_total_count`
--
ALTER TABLE `dtb_category_total_count`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `dtb_class`
--
ALTER TABLE `dtb_class`
  ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `dtb_classcategory`
--
ALTER TABLE `dtb_classcategory`
  ADD PRIMARY KEY (`classcategory_id`);

--
-- Indexes for table `dtb_classcategory_classcategory_id_seq`
--
ALTER TABLE `dtb_classcategory_classcategory_id_seq`
  ADD PRIMARY KEY (`sequence`);

--
-- Indexes for table `dtb_class_class_id_seq`
--
ALTER TABLE `dtb_class_class_id_seq`
  ADD PRIMARY KEY (`sequence`);

--
-- Indexes for table `dtb_csv`
--
ALTER TABLE `dtb_csv`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `dtb_csv_no_seq`
--
ALTER TABLE `dtb_csv_no_seq`
  ADD PRIMARY KEY (`sequence`);

--
-- Indexes for table `dtb_csv_sql`
--
ALTER TABLE `dtb_csv_sql`
  ADD PRIMARY KEY (`sql_id`);

--
-- Indexes for table `dtb_csv_sql_sql_id_seq`
--
ALTER TABLE `dtb_csv_sql_sql_id_seq`
  ADD PRIMARY KEY (`sequence`);

--
-- Indexes for table `dtb_customer`
--
ALTER TABLE `dtb_customer`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `secret_key` (`secret_key`(255)),
  ADD KEY `dtb_customer_mobile_phone_id_key` (`mobile_phone_id`(255));

--
-- Indexes for table `dtb_customer_customer_id_seq`
--
ALTER TABLE `dtb_customer_customer_id_seq`
  ADD PRIMARY KEY (`sequence`);

--
-- Indexes for table `dtb_customer_favorite_products`
--
ALTER TABLE `dtb_customer_favorite_products`
  ADD PRIMARY KEY (`customer_id`,`product_id`);

--
-- Indexes for table `dtb_deliv`
--
ALTER TABLE `dtb_deliv`
  ADD PRIMARY KEY (`deliv_id`);

--
-- Indexes for table `dtb_delivfee`
--
ALTER TABLE `dtb_delivfee`
  ADD PRIMARY KEY (`deliv_id`,`fee_id`);

--
-- Indexes for table `dtb_delivtime`
--
ALTER TABLE `dtb_delivtime`
  ADD PRIMARY KEY (`deliv_id`,`time_id`);

--
-- Indexes for table `dtb_deliv_deliv_id_seq`
--
ALTER TABLE `dtb_deliv_deliv_id_seq`
  ADD PRIMARY KEY (`sequence`);

--
-- Indexes for table `dtb_holiday`
--
ALTER TABLE `dtb_holiday`
  ADD PRIMARY KEY (`holiday_id`);

--
-- Indexes for table `dtb_holiday_holiday_id_seq`
--
ALTER TABLE `dtb_holiday_holiday_id_seq`
  ADD PRIMARY KEY (`sequence`);

--
-- Indexes for table `dtb_index_list`
--
ALTER TABLE `dtb_index_list`
  ADD PRIMARY KEY (`table_name`(255),`column_name`(255));

--
-- Indexes for table `dtb_kiyaku`
--
ALTER TABLE `dtb_kiyaku`
  ADD PRIMARY KEY (`kiyaku_id`);

--
-- Indexes for table `dtb_kiyaku_kiyaku_id_seq`
--
ALTER TABLE `dtb_kiyaku_kiyaku_id_seq`
  ADD PRIMARY KEY (`sequence`);

--
-- Indexes for table `dtb_mailmaga_template`
--
ALTER TABLE `dtb_mailmaga_template`
  ADD PRIMARY KEY (`template_id`);

--
-- Indexes for table `dtb_mailmaga_template_template_id_seq`
--
ALTER TABLE `dtb_mailmaga_template_template_id_seq`
  ADD PRIMARY KEY (`sequence`);

--
-- Indexes for table `dtb_mailtemplate`
--
ALTER TABLE `dtb_mailtemplate`
  ADD PRIMARY KEY (`template_id`);

--
-- Indexes for table `dtb_mail_history`
--
ALTER TABLE `dtb_mail_history`
  ADD PRIMARY KEY (`send_id`);

--
-- Indexes for table `dtb_mail_history_send_id_seq`
--
ALTER TABLE `dtb_mail_history_send_id_seq`
  ADD PRIMARY KEY (`sequence`);

--
-- Indexes for table `dtb_maker`
--
ALTER TABLE `dtb_maker`
  ADD PRIMARY KEY (`maker_id`);

--
-- Indexes for table `dtb_maker_count`
--
ALTER TABLE `dtb_maker_count`
  ADD PRIMARY KEY (`maker_id`);

--
-- Indexes for table `dtb_maker_maker_id_seq`
--
ALTER TABLE `dtb_maker_maker_id_seq`
  ADD PRIMARY KEY (`sequence`);

--
-- Indexes for table `dtb_member`
--
ALTER TABLE `dtb_member`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `dtb_member_member_id_seq`
--
ALTER TABLE `dtb_member_member_id_seq`
  ADD PRIMARY KEY (`sequence`);

--
-- Indexes for table `dtb_mobile_ext_session_id`
--
ALTER TABLE `dtb_mobile_ext_session_id`
  ADD PRIMARY KEY (`session_id`(255)),
  ADD KEY `dtb_mobile_ext_session_id_param_key_key` (`param_key`(255)),
  ADD KEY `dtb_mobile_ext_session_id_param_value_key` (`param_value`(255)),
  ADD KEY `dtb_mobile_ext_session_id_url_key` (`url`(255)),
  ADD KEY `dtb_mobile_ext_session_id_create_date_key` (`create_date`);

--
-- Indexes for table `dtb_module`
--
ALTER TABLE `dtb_module`
  ADD PRIMARY KEY (`module_id`);

--
-- Indexes for table `dtb_module_update_logs`
--
ALTER TABLE `dtb_module_update_logs`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `dtb_module_update_logs_log_id_seq`
--
ALTER TABLE `dtb_module_update_logs_log_id_seq`
  ADD PRIMARY KEY (`sequence`);

--
-- Indexes for table `dtb_news`
--
ALTER TABLE `dtb_news`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `dtb_news_news_id_seq`
--
ALTER TABLE `dtb_news_news_id_seq`
  ADD PRIMARY KEY (`sequence`);

--
-- Indexes for table `dtb_order`
--
ALTER TABLE `dtb_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `dtb_order_detail`
--
ALTER TABLE `dtb_order_detail`
  ADD PRIMARY KEY (`order_detail_id`),
  ADD KEY `dtb_order_detail_product_id_key` (`product_id`);

--
-- Indexes for table `dtb_order_detail_order_detail_id_seq`
--
ALTER TABLE `dtb_order_detail_order_detail_id_seq`
  ADD PRIMARY KEY (`sequence`);

--
-- Indexes for table `dtb_order_order_id_seq`
--
ALTER TABLE `dtb_order_order_id_seq`
  ADD PRIMARY KEY (`sequence`);

--
-- Indexes for table `dtb_order_temp`
--
ALTER TABLE `dtb_order_temp`
  ADD PRIMARY KEY (`order_temp_id`(64));

--
-- Indexes for table `dtb_other_deliv`
--
ALTER TABLE `dtb_other_deliv`
  ADD PRIMARY KEY (`other_deliv_id`);

--
-- Indexes for table `dtb_other_deliv_other_deliv_id_seq`
--
ALTER TABLE `dtb_other_deliv_other_deliv_id_seq`
  ADD PRIMARY KEY (`sequence`);

--
-- Indexes for table `dtb_ownersstore_settings`
--
ALTER TABLE `dtb_ownersstore_settings`
  ADD PRIMARY KEY (`public_key`(64));

--
-- Indexes for table `dtb_pagelayout`
--
ALTER TABLE `dtb_pagelayout`
  ADD PRIMARY KEY (`device_type_id`,`page_id`);

--
-- Indexes for table `dtb_pagelayout_page_id_seq`
--
ALTER TABLE `dtb_pagelayout_page_id_seq`
  ADD PRIMARY KEY (`sequence`);

--
-- Indexes for table `dtb_payment`
--
ALTER TABLE `dtb_payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `dtb_payment_options`
--
ALTER TABLE `dtb_payment_options`
  ADD PRIMARY KEY (`deliv_id`,`payment_id`);

--
-- Indexes for table `dtb_payment_payment_id_seq`
--
ALTER TABLE `dtb_payment_payment_id_seq`
  ADD PRIMARY KEY (`sequence`);

--
-- Indexes for table `dtb_plugin`
--
ALTER TABLE `dtb_plugin`
  ADD PRIMARY KEY (`plugin_id`);

--
-- Indexes for table `dtb_plugin_hookpoint`
--
ALTER TABLE `dtb_plugin_hookpoint`
  ADD PRIMARY KEY (`plugin_hookpoint_id`);

--
-- Indexes for table `dtb_plugin_hookpoint_plugin_hookpoint_id_seq`
--
ALTER TABLE `dtb_plugin_hookpoint_plugin_hookpoint_id_seq`
  ADD PRIMARY KEY (`sequence`);

--
-- Indexes for table `dtb_plugin_plugin_id_seq`
--
ALTER TABLE `dtb_plugin_plugin_id_seq`
  ADD PRIMARY KEY (`sequence`);

--
-- Indexes for table `dtb_products`
--
ALTER TABLE `dtb_products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `dtb_products_class`
--
ALTER TABLE `dtb_products_class`
  ADD PRIMARY KEY (`product_class_id`),
  ADD UNIQUE KEY `product_id` (`product_id`,`classcategory_id1`,`classcategory_id2`),
  ADD KEY `dtb_products_class_product_id_key` (`product_id`);

--
-- Indexes for table `dtb_products_class_product_class_id_seq`
--
ALTER TABLE `dtb_products_class_product_class_id_seq`
  ADD PRIMARY KEY (`sequence`);

--
-- Indexes for table `dtb_products_product_id_seq`
--
ALTER TABLE `dtb_products_product_id_seq`
  ADD PRIMARY KEY (`sequence`);

--
-- Indexes for table `dtb_product_categories`
--
ALTER TABLE `dtb_product_categories`
  ADD PRIMARY KEY (`product_id`,`category_id`);

--
-- Indexes for table `dtb_product_status`
--
ALTER TABLE `dtb_product_status`
  ADD PRIMARY KEY (`product_status_id`,`product_id`);

--
-- Indexes for table `dtb_recommend_products`
--
ALTER TABLE `dtb_recommend_products`
  ADD PRIMARY KEY (`product_id`,`recommend_product_id`);

--
-- Indexes for table `dtb_review`
--
ALTER TABLE `dtb_review`
  ADD PRIMARY KEY (`review_id`);

--
-- Indexes for table `dtb_review_review_id_seq`
--
ALTER TABLE `dtb_review_review_id_seq`
  ADD PRIMARY KEY (`sequence`);

--
-- Indexes for table `dtb_send_customer`
--
ALTER TABLE `dtb_send_customer`
  ADD PRIMARY KEY (`send_id`,`customer_id`),
  ADD KEY `dtb_send_customer_customer_id_key` (`customer_id`);

--
-- Indexes for table `dtb_send_history`
--
ALTER TABLE `dtb_send_history`
  ADD PRIMARY KEY (`send_id`);

--
-- Indexes for table `dtb_send_history_send_id_seq`
--
ALTER TABLE `dtb_send_history_send_id_seq`
  ADD PRIMARY KEY (`sequence`);

--
-- Indexes for table `dtb_session`
--
ALTER TABLE `dtb_session`
  ADD PRIMARY KEY (`sess_id`(255));

--
-- Indexes for table `dtb_shipment_item`
--
ALTER TABLE `dtb_shipment_item`
  ADD PRIMARY KEY (`shipping_id`,`product_class_id`,`order_id`);

--
-- Indexes for table `dtb_shipping`
--
ALTER TABLE `dtb_shipping`
  ADD PRIMARY KEY (`shipping_id`,`order_id`);

--
-- Indexes for table `dtb_templates`
--
ALTER TABLE `dtb_templates`
  ADD PRIMARY KEY (`template_code`(255));

--
-- Indexes for table `dtb_update`
--
ALTER TABLE `dtb_update`
  ADD PRIMARY KEY (`module_id`);

--
-- Indexes for table `mtb_allowed_tag`
--
ALTER TABLE `mtb_allowed_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mtb_authority`
--
ALTER TABLE `mtb_authority`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mtb_auth_excludes`
--
ALTER TABLE `mtb_auth_excludes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mtb_constants`
--
ALTER TABLE `mtb_constants`
  ADD PRIMARY KEY (`id`(255));

--
-- Indexes for table `mtb_customer_order_status`
--
ALTER TABLE `mtb_customer_order_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mtb_customer_status`
--
ALTER TABLE `mtb_customer_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mtb_db`
--
ALTER TABLE `mtb_db`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mtb_delivery_date`
--
ALTER TABLE `mtb_delivery_date`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mtb_device_type`
--
ALTER TABLE `mtb_device_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mtb_disable_logout`
--
ALTER TABLE `mtb_disable_logout`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mtb_disp`
--
ALTER TABLE `mtb_disp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mtb_job`
--
ALTER TABLE `mtb_job`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mtb_magazine_type`
--
ALTER TABLE `mtb_magazine_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mtb_mail_magazine_type`
--
ALTER TABLE `mtb_mail_magazine_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mtb_mail_template`
--
ALTER TABLE `mtb_mail_template`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mtb_mail_tpl_path`
--
ALTER TABLE `mtb_mail_tpl_path`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mtb_mail_type`
--
ALTER TABLE `mtb_mail_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mtb_mobile_domain`
--
ALTER TABLE `mtb_mobile_domain`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mtb_order_status`
--
ALTER TABLE `mtb_order_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mtb_order_status_color`
--
ALTER TABLE `mtb_order_status_color`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mtb_ownersstore_err`
--
ALTER TABLE `mtb_ownersstore_err`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mtb_ownersstore_ips`
--
ALTER TABLE `mtb_ownersstore_ips`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mtb_page_max`
--
ALTER TABLE `mtb_page_max`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mtb_permission`
--
ALTER TABLE `mtb_permission`
  ADD PRIMARY KEY (`id`(255));

--
-- Indexes for table `mtb_pref`
--
ALTER TABLE `mtb_pref`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mtb_product_list_max`
--
ALTER TABLE `mtb_product_list_max`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mtb_product_status_color`
--
ALTER TABLE `mtb_product_status_color`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mtb_product_type`
--
ALTER TABLE `mtb_product_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mtb_recommend`
--
ALTER TABLE `mtb_recommend`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mtb_reminder`
--
ALTER TABLE `mtb_reminder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mtb_review_deny_url`
--
ALTER TABLE `mtb_review_deny_url`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mtb_sex`
--
ALTER TABLE `mtb_sex`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mtb_status`
--
ALTER TABLE `mtb_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mtb_status_image`
--
ALTER TABLE `mtb_status_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mtb_target`
--
ALTER TABLE `mtb_target`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mtb_taxrule`
--
ALTER TABLE `mtb_taxrule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mtb_wday`
--
ALTER TABLE `mtb_wday`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mtb_work`
--
ALTER TABLE `mtb_work`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mtb_zip`
--
ALTER TABLE `mtb_zip`
  ADD PRIMARY KEY (`zip_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dtb_api_account_api_account_id_seq`
--
ALTER TABLE `dtb_api_account_api_account_id_seq`
  MODIFY `sequence` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dtb_api_config_api_config_id_seq`
--
ALTER TABLE `dtb_api_config_api_config_id_seq`
  MODIFY `sequence` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dtb_best_products_best_id_seq`
--
ALTER TABLE `dtb_best_products_best_id_seq`
  MODIFY `sequence` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `dtb_bloc_bloc_id_seq`
--
ALTER TABLE `dtb_bloc_bloc_id_seq`
  MODIFY `sequence` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `dtb_category_category_id_seq`
--
ALTER TABLE `dtb_category_category_id_seq`
  MODIFY `sequence` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `dtb_classcategory_classcategory_id_seq`
--
ALTER TABLE `dtb_classcategory_classcategory_id_seq`
  MODIFY `sequence` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `dtb_class_class_id_seq`
--
ALTER TABLE `dtb_class_class_id_seq`
  MODIFY `sequence` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `dtb_csv_no_seq`
--
ALTER TABLE `dtb_csv_no_seq`
  MODIFY `sequence` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=154;
--
-- AUTO_INCREMENT for table `dtb_csv_sql_sql_id_seq`
--
ALTER TABLE `dtb_csv_sql_sql_id_seq`
  MODIFY `sequence` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dtb_customer_customer_id_seq`
--
ALTER TABLE `dtb_customer_customer_id_seq`
  MODIFY `sequence` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `dtb_deliv_deliv_id_seq`
--
ALTER TABLE `dtb_deliv_deliv_id_seq`
  MODIFY `sequence` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `dtb_holiday_holiday_id_seq`
--
ALTER TABLE `dtb_holiday_holiday_id_seq`
  MODIFY `sequence` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `dtb_kiyaku_kiyaku_id_seq`
--
ALTER TABLE `dtb_kiyaku_kiyaku_id_seq`
  MODIFY `sequence` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `dtb_mailmaga_template_template_id_seq`
--
ALTER TABLE `dtb_mailmaga_template_template_id_seq`
  MODIFY `sequence` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dtb_mail_history_send_id_seq`
--
ALTER TABLE `dtb_mail_history_send_id_seq`
  MODIFY `sequence` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `dtb_maker_maker_id_seq`
--
ALTER TABLE `dtb_maker_maker_id_seq`
  MODIFY `sequence` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dtb_member_member_id_seq`
--
ALTER TABLE `dtb_member_member_id_seq`
  MODIFY `sequence` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `dtb_module_update_logs_log_id_seq`
--
ALTER TABLE `dtb_module_update_logs_log_id_seq`
  MODIFY `sequence` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dtb_news_news_id_seq`
--
ALTER TABLE `dtb_news_news_id_seq`
  MODIFY `sequence` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `dtb_order_detail_order_detail_id_seq`
--
ALTER TABLE `dtb_order_detail_order_detail_id_seq`
  MODIFY `sequence` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `dtb_order_order_id_seq`
--
ALTER TABLE `dtb_order_order_id_seq`
  MODIFY `sequence` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `dtb_other_deliv_other_deliv_id_seq`
--
ALTER TABLE `dtb_other_deliv_other_deliv_id_seq`
  MODIFY `sequence` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dtb_pagelayout_page_id_seq`
--
ALTER TABLE `dtb_pagelayout_page_id_seq`
  MODIFY `sequence` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `dtb_payment_payment_id_seq`
--
ALTER TABLE `dtb_payment_payment_id_seq`
  MODIFY `sequence` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `dtb_plugin_hookpoint_plugin_hookpoint_id_seq`
--
ALTER TABLE `dtb_plugin_hookpoint_plugin_hookpoint_id_seq`
  MODIFY `sequence` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dtb_plugin_plugin_id_seq`
--
ALTER TABLE `dtb_plugin_plugin_id_seq`
  MODIFY `sequence` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dtb_products_class_product_class_id_seq`
--
ALTER TABLE `dtb_products_class_product_class_id_seq`
  MODIFY `sequence` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `dtb_products_product_id_seq`
--
ALTER TABLE `dtb_products_product_id_seq`
  MODIFY `sequence` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `dtb_review_review_id_seq`
--
ALTER TABLE `dtb_review_review_id_seq`
  MODIFY `sequence` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dtb_send_history_send_id_seq`
--
ALTER TABLE `dtb_send_history_send_id_seq`
  MODIFY `sequence` int(11) NOT NULL AUTO_INCREMENT;SET FOREIGN_KEY_CHECKS=1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
