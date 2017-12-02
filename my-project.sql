-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Ноя 25 2017 г., 12:01
-- Версия сервера: 5.5.25
-- Версия PHP: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `my-project`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Автор комментария', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2017-11-11 13:06:43', '2017-11-11 10:06:43', 'Привет! Это комментарий.\nЧтобы начать модерировать, редактировать и удалять комментарии, перейдите на экран «Комментарии» в консоли.\nАватары авторов комментариев загружаются с сервиса <a href="https://ru.gravatar.com">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=204 ;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://my-project', 'yes'),
(2, 'home', 'http://my-project', 'yes'),
(3, 'blogname', 'my-project', 'yes'),
(4, 'blogdescription', 'Ещё один сайт на WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'OfficialbmxJenya@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:90:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'eboost', 'yes'),
(41, 'stylesheet', 'eboost', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'WPLANG', 'ru_RU', 'yes'),
(95, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:6:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:14:"footer-col-one";a:0:{}s:14:"footer-col-two";a:0:{}s:16:"footer-col-three";N;s:13:"array_version";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'cron', 'a:4:{i:1511604404;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1511604946;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1511686034;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(110, 'theme_mods_twentyseventeen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1510395359;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(121, '_site_transient_timeout_browser_910ae212836ebd1b512fb57c395ff9ff', '1510999617', 'no'),
(122, '_site_transient_browser_910ae212836ebd1b512fb57c395ff9ff', 'a:10:{s:4:"name";s:7:"Firefox";s:7:"version";s:4:"56.0";s:8:"platform";s:7:"Windows";s:10:"update_url";s:24:"https://www.firefox.com/";s:7:"img_src";s:44:"http://s.w.org/images/browsers/firefox.png?1";s:11:"img_src_ssl";s:45:"https://s.w.org/images/browsers/firefox.png?1";s:15:"current_version";s:2:"56";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'),
(123, 'can_compress_scripts', '1', 'no'),
(139, 'current_theme', 'eBoost', 'yes'),
(140, 'theme_mods_eboost', 'a:3:{i:0;b:0;s:18:"custom_css_post_id";i:-1;s:18:"nav_menu_locations";a:0:{}}', 'yes'),
(141, 'theme_switched', '', 'yes'),
(155, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:3:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:63:"https://downloads.wordpress.org/release/ru_RU/wordpress-4.9.zip";s:6:"locale";s:5:"ru_RU";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:63:"https://downloads.wordpress.org/release/ru_RU/wordpress-4.9.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:3:"4.9";s:7:"version";s:3:"4.9";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}i:1;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:57:"https://downloads.wordpress.org/release/wordpress-4.9.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:57:"https://downloads.wordpress.org/release/wordpress-4.9.zip";s:10:"no_content";s:68:"https://downloads.wordpress.org/release/wordpress-4.9-no-content.zip";s:11:"new_bundled";s:69:"https://downloads.wordpress.org/release/wordpress-4.9-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:3:"4.9";s:7:"version";s:3:"4.9";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}i:2;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:57:"https://downloads.wordpress.org/release/wordpress-4.9.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:57:"https://downloads.wordpress.org/release/wordpress-4.9.zip";s:10:"no_content";s:68:"https://downloads.wordpress.org/release/wordpress-4.9-no-content.zip";s:11:"new_bundled";s:69:"https://downloads.wordpress.org/release/wordpress-4.9-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:3:"4.9";s:7:"version";s:3:"4.9";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";s:9:"new_files";s:1:"1";}}s:12:"last_checked";i:1511597576;s:15:"version_checked";s:5:"4.8.3";s:12:"translations";a:0:{}}', 'no'),
(179, '_transient_timeout_plugin_slugs', '1511087613', 'no'),
(180, '_transient_plugin_slugs', 'a:2:{i:0;s:19:"akismet/akismet.php";i:1;s:9:"hello.php";}', 'no'),
(181, 'recently_activated', 'a:0:{}', 'yes'),
(185, '_site_transient_timeout_theme_roots', '1511599379', 'no'),
(186, '_site_transient_theme_roots', 'a:4:{s:6:"eboost";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no'),
(187, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1511597586;s:7:"checked";a:4:{s:6:"eboost";s:5:"1.0.0";s:13:"twentyfifteen";s:3:"1.8";s:15:"twentyseventeen";s:3:"1.3";s:13:"twentysixteen";s:3:"1.3";}s:8:"response";a:3:{s:13:"twentyfifteen";a:4:{s:5:"theme";s:13:"twentyfifteen";s:11:"new_version";s:3:"1.9";s:3:"url";s:43:"https://wordpress.org/themes/twentyfifteen/";s:7:"package";s:59:"https://downloads.wordpress.org/theme/twentyfifteen.1.9.zip";}s:15:"twentyseventeen";a:4:{s:5:"theme";s:15:"twentyseventeen";s:11:"new_version";s:3:"1.4";s:3:"url";s:45:"https://wordpress.org/themes/twentyseventeen/";s:7:"package";s:61:"https://downloads.wordpress.org/theme/twentyseventeen.1.4.zip";}s:13:"twentysixteen";a:4:{s:5:"theme";s:13:"twentysixteen";s:11:"new_version";s:3:"1.4";s:3:"url";s:43:"https://wordpress.org/themes/twentysixteen/";s:7:"package";s:59:"https://downloads.wordpress.org/theme/twentysixteen.1.4.zip";}}s:12:"translations";a:0:{}}', 'no'),
(188, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1511597583;s:8:"response";a:1:{s:19:"akismet/akismet.php";O:8:"stdClass":11:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"4.0.1";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.4.0.1.zip";s:5:"icons";a:3:{s:2:"1x";s:59:"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272";s:2:"2x";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";s:7:"default";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";}s:7:"banners";a:2:{s:2:"1x";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";s:7:"default";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:3:"4.9";s:13:"compatibility";O:8:"stdClass":0:{}}}s:12:"translations";a:0:{}s:9:"no_update";a:0:{}}', 'no'),
(189, '_site_transient_timeout_browser_9ec285cc711c87e45c9244f4f89fc994', '1512202449', 'no'),
(190, '_site_transient_browser_9ec285cc711c87e45c9244f4f89fc994', 'a:10:{s:4:"name";s:7:"Firefox";s:7:"version";s:4:"57.0";s:8:"platform";s:7:"Windows";s:10:"update_url";s:24:"https://www.firefox.com/";s:7:"img_src";s:44:"http://s.w.org/images/browsers/firefox.png?1";s:11:"img_src_ssl";s:45:"https://s.w.org/images/browsers/firefox.png?1";s:15:"current_version";s:2:"56";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'),
(191, '_site_transient_timeout_community-events-1aecf33ab8525ff212ebdffbb438372e', '1511640852', 'no'),
(192, '_site_transient_community-events-1aecf33ab8525ff212ebdffbb438372e', 'a:2:{s:8:"location";a:1:{s:2:"ip";s:9:"127.0.0.0";}s:6:"events";a:1:{i:0;a:7:{s:4:"type";s:8:"wordcamp";s:5:"title";s:11:"WordCamp US";s:3:"url";s:29:"https://2017.us.wordcamp.org/";s:6:"meetup";s:0:"";s:10:"meetup_url";s:0:"";s:4:"date";s:19:"2017-12-01 00:00:00";s:8:"location";a:4:{s:8:"location";s:18:"Nashville, TN, USA";s:7:"country";s:2:"US";s:8:"latitude";d:36.156608499999997;s:9:"longitude";d:-86.778490899999994;}}}}', 'no'),
(193, '_transient_timeout_feed_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1511640854', 'no'),
(194, '_transient_timeout_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1511640854', 'no'),
(195, '_transient_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1511597654', 'no'),
(196, '_transient_timeout_feed_d117b5738fbd35bd8c0391cda1f2b5d9', '1511640857', 'no'),
(197, '_transient_timeout_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1511640857', 'no'),
(198, '_transient_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1511597657', 'no'),
(199, '_transient_timeout_dash_v2_f69de0bbfe7eaa113146875f40c02000', '1511640857', 'no'),
(200, '_transient_dash_v2_f69de0bbfe7eaa113146875f40c02000', '<div class="rss-widget"><ul><li><a class=''rsswidget'' href=''https://wordpress.org/news/2017/11/tipton/''>WordPress 4.9 “Tipton”</a></li></ul></div><div class="rss-widget"><ul><li><a class=''rsswidget'' href=''https://wptavern.com/workarounds-for-the-page-template-bug-in-wordpress-4-9''>WPTavern: Workarounds for the Page Template Bug in WordPress 4.9</a></li><li><a class=''rsswidget'' href=''https://wptavern.com/tide-project-aims-to-audit-and-score-wordpress-themes-and-plugins-based-on-code-quality''>WPTavern: Tide Project Aims to Audit and Score WordPress Themes and Plugins based on Code Quality</a></li><li><a class=''rsswidget'' href=''https://ma.tt/2017/11/adam-robinson-on-understanding/''>Matt: Adam Robinson on Understanding</a></li></ul></div>', 'no');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=67 ;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_wp_attached_file', '2017/11/2f7fee502757a693fe3d323bed8803d7-1.gif'),
(3, 4, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:320;s:6:"height";i:240;s:4:"file";s:46:"2017/11/2f7fee502757a693fe3d323bed8803d7-1.gif";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:46:"2f7fee502757a693fe3d323bed8803d7-1-150x150.gif";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/gif";}s:6:"medium";a:4:{s:4:"file";s:46:"2f7fee502757a693fe3d323bed8803d7-1-300x225.gif";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:9:"image/gif";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(4, 4, '_wp_attachment_is_custom_background', 'eboost'),
(5, 6, '_wp_attached_file', '2017/11/403.jpg'),
(6, 6, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:450;s:6:"height";i:300;s:4:"file";s:15:"2017/11/403.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"403-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:15:"403-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(7, 6, '_wp_attachment_is_custom_background', 'eboost'),
(8, 8, '_wp_attached_file', '2017/11/iphone-se.jpg'),
(9, 8, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:600;s:6:"height";i:548;s:4:"file";s:21:"2017/11/iphone-se.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"iphone-se-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"iphone-se-300x274.jpg";s:5:"width";i:300;s:6:"height";i:274;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(10, 8, '_wp_attachment_is_custom_background', 'eboost'),
(11, 1, '_wp_trash_meta_status', 'publish'),
(12, 1, '_wp_trash_meta_time', '1510396241'),
(13, 1, '_wp_desired_post_slug', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80'),
(14, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:"1";}'),
(15, 10, '_wp_attached_file', '2017/11/33756465a776b5d66cf437c95c63b721-tricycle.jpg'),
(16, 10, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:736;s:6:"height";i:984;s:4:"file";s:53:"2017/11/33756465a776b5d66cf437c95c63b721-tricycle.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:53:"33756465a776b5d66cf437c95c63b721-tricycle-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:53:"33756465a776b5d66cf437c95c63b721-tricycle-224x300.jpg";s:5:"width";i:224;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:18:"eboost-main-banner";a:4:{s:4:"file";s:53:"33756465a776b5d66cf437c95c63b721-tricycle-736x650.jpg";s:5:"width";i:736;s:6:"height";i:650;s:9:"mime-type";s:10:"image/jpeg";}s:11:"eboost-blog";a:4:{s:4:"file";s:53:"33756465a776b5d66cf437c95c63b721-tricycle-736x650.jpg";s:5:"width";i:736;s:6:"height";i:650;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(17, 10, '_wp_attachment_is_custom_background', 'eboost'),
(18, 12, '_edit_last', '1'),
(19, 12, '_edit_lock', '1511001058:1'),
(20, 12, '_oembed_2bd3d3436e4efbeaa4f635df956286d6', '{{unknown}}'),
(21, 13, '_wp_attached_file', '2017/11/creamator_orange_759808_763950.jpg'),
(22, 13, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:900;s:6:"height";i:597;s:4:"file";s:42:"2017/11/creamator_orange_759808_763950.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:42:"creamator_orange_759808_763950-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:42:"creamator_orange_759808_763950-300x199.jpg";s:5:"width";i:300;s:6:"height";i:199;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:42:"creamator_orange_759808_763950-768x509.jpg";s:5:"width";i:768;s:6:"height";i:509;s:9:"mime-type";s:10:"image/jpeg";}s:11:"eboost-blog";a:4:{s:4:"file";s:42:"creamator_orange_759808_763950-900x597.jpg";s:5:"width";i:900;s:6:"height";i:597;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(23, 14, '_wp_attached_file', '2017/11/bike_eastern_vulture_black_chrome_1_857312_qwde11_857596.jpg'),
(24, 14, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:899;s:6:"height";i:589;s:4:"file";s:68:"2017/11/bike_eastern_vulture_black_chrome_1_857312_qwde11_857596.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:68:"bike_eastern_vulture_black_chrome_1_857312_qwde11_857596-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:68:"bike_eastern_vulture_black_chrome_1_857312_qwde11_857596-300x197.jpg";s:5:"width";i:300;s:6:"height";i:197;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:68:"bike_eastern_vulture_black_chrome_1_857312_qwde11_857596-768x503.jpg";s:5:"width";i:768;s:6:"height";i:503;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(25, 12, '_wp_page_template', 'default'),
(26, 12, 'eboost-default-layout', 'right-sidebar'),
(27, 12, 'eboost-single-post-image-align', 'full'),
(28, 20, '_wp_attached_file', '2017/11/wtp_versus_yellow_90_980659_988230.jpg'),
(29, 20, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:899;s:6:"height";i:601;s:4:"file";s:46:"2017/11/wtp_versus_yellow_90_980659_988230.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:46:"wtp_versus_yellow_90_980659_988230-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:46:"wtp_versus_yellow_90_980659_988230-300x201.jpg";s:5:"width";i:300;s:6:"height";i:201;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:46:"wtp_versus_yellow_90_980659_988230-768x513.jpg";s:5:"width";i:768;s:6:"height";i:513;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(30, 21, '_wp_attached_file', '2017/11/wtp_volta_red_90_980628_988232.jpg'),
(31, 21, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:899;s:6:"height";i:559;s:4:"file";s:42:"2017/11/wtp_volta_red_90_980628_988232.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:42:"wtp_volta_red_90_980628_988232-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:42:"wtp_volta_red_90_980628_988232-300x187.jpg";s:5:"width";i:300;s:6:"height";i:187;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:42:"wtp_volta_red_90_980628_988232-768x478.jpg";s:5:"width";i:768;s:6:"height";i:478;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(32, 23, '_edit_last', '1'),
(33, 23, '_edit_lock', '1511600262:1'),
(34, 24, '_wp_attached_file', '2017/11/3.png'),
(35, 24, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:800;s:4:"file";s:13:"2017/11/3.png";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"3-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:13:"3-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:13:"3-768x768.png";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:9:"image/png";}s:18:"eboost-main-banner";a:4:{s:4:"file";s:13:"3-800x650.png";s:5:"width";i:800;s:6:"height";i:650;s:9:"mime-type";s:9:"image/png";}s:11:"eboost-blog";a:4:{s:4:"file";s:13:"3-800x650.png";s:5:"width";i:800;s:6:"height";i:650;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(36, 25, '_wp_attached_file', '2017/11/140.jpg'),
(37, 25, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:140;s:6:"height";i:140;s:4:"file";s:15:"2017/11/140.jpg";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(38, 26, '_wp_attached_file', '2017/11/1581307315.jpg'),
(39, 26, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:278;s:6:"height";i:278;s:4:"file";s:22:"2017/11/1581307315.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"1581307315-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(40, 27, '_wp_attached_file', '2017/11/1581307315-1.jpg'),
(41, 27, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:278;s:6:"height";i:278;s:4:"file";s:24:"2017/11/1581307315-1.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"1581307315-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(42, 28, '_wp_attached_file', '2017/11/1580468395.jpg'),
(43, 28, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:278;s:6:"height";i:278;s:4:"file";s:22:"2017/11/1580468395.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"1580468395-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(44, 29, '_wp_attached_file', '2017/11/fatboy_matte_black_987203.jpg'),
(45, 29, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:900;s:6:"height";i:900;s:4:"file";s:37:"2017/11/fatboy_matte_black_987203.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:37:"fatboy_matte_black_987203-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:37:"fatboy_matte_black_987203-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:37:"fatboy_matte_black_987203-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:18:"eboost-main-banner";a:4:{s:4:"file";s:37:"fatboy_matte_black_987203-900x650.jpg";s:5:"width";i:900;s:6:"height";i:650;s:9:"mime-type";s:10:"image/jpeg";}s:11:"eboost-blog";a:4:{s:4:"file";s:37:"fatboy_matte_black_987203-900x650.jpg";s:5:"width";i:900;s:6:"height";i:650;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(46, 30, '_wp_attached_file', '2017/11/velosiped-premium-duo-zelenyy-main-1000x1000.jpg'),
(47, 30, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:56:"2017/11/velosiped-premium-duo-zelenyy-main-1000x1000.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:56:"velosiped-premium-duo-zelenyy-main-1000x1000-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:56:"velosiped-premium-duo-zelenyy-main-1000x1000-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:56:"velosiped-premium-duo-zelenyy-main-1000x1000-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:18:"eboost-main-banner";a:4:{s:4:"file";s:57:"velosiped-premium-duo-zelenyy-main-1000x1000-1000x650.jpg";s:5:"width";i:1000;s:6:"height";i:650;s:9:"mime-type";s:10:"image/jpeg";}s:11:"eboost-blog";a:4:{s:4:"file";s:56:"velosiped-premium-duo-zelenyy-main-1000x1000-900x650.jpg";s:5:"width";i:900;s:6:"height";i:650;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(48, 31, '_wp_attached_file', '2017/11/velosiped-premium-solo-plus-siniy-main-1000x1000.jpg'),
(49, 31, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:60:"2017/11/velosiped-premium-solo-plus-siniy-main-1000x1000.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:60:"velosiped-premium-solo-plus-siniy-main-1000x1000-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:60:"velosiped-premium-solo-plus-siniy-main-1000x1000-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:60:"velosiped-premium-solo-plus-siniy-main-1000x1000-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:18:"eboost-main-banner";a:4:{s:4:"file";s:61:"velosiped-premium-solo-plus-siniy-main-1000x1000-1000x650.jpg";s:5:"width";i:1000;s:6:"height";i:650;s:9:"mime-type";s:10:"image/jpeg";}s:11:"eboost-blog";a:4:{s:4:"file";s:60:"velosiped-premium-solo-plus-siniy-main-1000x1000-900x650.jpg";s:5:"width";i:900;s:6:"height";i:650;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(50, 32, '_edit_last', '1'),
(51, 32, '_edit_lock', '1511597927:1'),
(52, 33, '_wp_attached_file', '2017/11/140-1.jpg'),
(53, 33, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:140;s:6:"height";i:140;s:4:"file";s:17:"2017/11/140-1.jpg";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(54, 12, '_wp_trash_meta_status', 'publish'),
(55, 12, '_wp_trash_meta_time', '1511001202'),
(56, 12, '_wp_desired_post_slug', 'bmx-%d0%b4%d0%bb%d1%8f-%d0%bd%d0%b0%d1%87%d0%b8%d0%bd%d0%b0%d1%8e%d1%89%d0%b8%d1%85'),
(57, 23, '_wp_page_template', 'default'),
(58, 23, 'eboost-default-layout', 'right-sidebar'),
(59, 23, 'eboost-single-post-image-align', 'full'),
(60, 32, '_wp_page_template', 'default'),
(61, 32, 'eboost-default-layout', 'right-sidebar'),
(62, 32, 'eboost-single-post-image-align', 'full'),
(63, 2, '_edit_lock', '1511599481:1'),
(64, 2, '_edit_last', '1'),
(65, 2, 'eboost-default-layout', 'right-sidebar'),
(66, 2, 'eboost-single-post-image-align', 'full');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=40 ;

--
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2017-11-11 13:06:43', '2017-11-11 10:06:43', 'Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите её, затем пишите!', 'Привет, мир!', '', 'trash', 'open', 'open', '', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80__trashed', '', '', '2017-11-11 13:30:41', '2017-11-11 10:30:41', '', 0, 'http://my-project/?p=1', 0, 'post', '', 1),
(2, 1, '2017-11-11 13:06:43', '2017-11-11 10:06:43', '', 'Bmx for begginers', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2017-11-25 11:26:53', '2017-11-25 08:26:53', '', 0, 'http://my-project/?page_id=2', 0, 'page', '', 0),
(4, 1, '2017-11-11 13:17:27', '2017-11-11 10:17:27', '', '2f7fee502757a693fe3d323bed8803d7 (1)', '', 'inherit', 'open', 'closed', '', '2f7fee502757a693fe3d323bed8803d7-1', '', '', '2017-11-11 13:17:27', '2017-11-11 10:17:27', '', 0, 'http://my-project/wp-content/uploads/2017/11/2f7fee502757a693fe3d323bed8803d7-1.gif', 0, 'attachment', 'image/gif', 0),
(6, 1, '2017-11-11 13:24:32', '2017-11-11 10:24:32', '', '403', '', 'inherit', 'open', 'closed', '', '403', '', '', '2017-11-11 13:24:32', '2017-11-11 10:24:32', '', 0, 'http://my-project/wp-content/uploads/2017/11/403.jpg', 0, 'attachment', 'image/jpeg', 0),
(8, 1, '2017-11-11 13:25:21', '2017-11-11 10:25:21', '', 'iphone-se', '', 'inherit', 'open', 'closed', '', 'iphone-se', '', '', '2017-11-11 13:25:21', '2017-11-11 10:25:21', '', 0, 'http://my-project/wp-content/uploads/2017/11/iphone-se.jpg', 0, 'attachment', 'image/jpeg', 0),
(9, 1, '2017-11-11 13:30:41', '2017-11-11 10:30:41', 'Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите её, затем пишите!', 'Привет, мир!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2017-11-11 13:30:41', '2017-11-11 10:30:41', '', 1, 'http://my-project/2017/11/11/1-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2017-11-18 11:43:26', '2017-11-18 08:43:26', '', '33756465a776b5d66cf437c95c63b721--tricycle', '', 'inherit', 'open', 'closed', '', '33756465a776b5d66cf437c95c63b721-tricycle', '', '', '2017-11-18 11:43:26', '2017-11-18 08:43:26', '', 0, 'http://my-project/wp-content/uploads/2017/11/33756465a776b5d66cf437c95c63b721-tricycle.jpg', 0, 'attachment', 'image/jpeg', 0),
(11, 1, '2017-11-18 11:44:23', '0000-00-00 00:00:00', '{"eboost::background_image":{"value":"http:\\/\\/my-project\\/wp-content\\/uploads\\/2017\\/11\\/33756465a776b5d66cf437c95c63b721-tricycle.jpg","type":"theme_mod","user_id":1}}', '', '', 'auto-draft', 'closed', 'closed', '', 'be5a72c4-bec6-42d4-8c30-58d7239d11f3', '', '', '2017-11-18 11:44:23', '0000-00-00 00:00:00', '', 0, 'http://my-project/?p=11', 0, 'customize_changeset', '', 0),
(12, 1, '2017-11-18 11:54:19', '2017-11-18 08:54:19', '<img class="alignnone size-medium wp-image-13" src="http://my-project/wp-content/uploads/2017/11/creamator_orange_759808_763950-300x199.jpg" alt="" width="300" height="199" /><strong><em>6350</em> </strong>\r\n\r\n<img class="alignnone size-medium wp-image-14" src="http://my-project/wp-content/uploads/2017/11/bike_eastern_vulture_black_chrome_1_857312_qwde11_857596-300x197.jpg" alt="" width="300" height="197" />7130', 'Bmx для начинающих', '', 'trash', 'closed', 'closed', '', 'bmx-%d0%b4%d0%bb%d1%8f-%d0%bd%d0%b0%d1%87%d0%b8%d0%bd%d0%b0%d1%8e%d1%89%d0%b8%d1%85__trashed', '', '', '2017-11-18 13:33:22', '2017-11-18 10:33:22', '', 0, 'http://my-project/?page_id=12', 0, 'page', '', 0),
(13, 1, '2017-11-18 11:52:45', '2017-11-18 08:52:45', '', '_creamator_orange_759808_763950', '', 'inherit', 'open', 'closed', '', '_creamator_orange_759808_763950', '', '', '2017-11-18 11:52:45', '2017-11-18 08:52:45', '', 12, 'http://my-project/wp-content/uploads/2017/11/creamator_orange_759808_763950.jpg', 0, 'attachment', 'image/jpeg', 0),
(14, 1, '2017-11-18 11:52:46', '2017-11-18 08:52:46', '', 'bike_eastern_vulture_black_chrome_1_857312_qwde11_857596', '', 'inherit', 'open', 'closed', '', 'bike_eastern_vulture_black_chrome_1_857312_qwde11_857596', '', '', '2017-11-18 11:52:46', '2017-11-18 08:52:46', '', 12, 'http://my-project/wp-content/uploads/2017/11/bike_eastern_vulture_black_chrome_1_857312_qwde11_857596.jpg', 0, 'attachment', 'image/jpeg', 0),
(15, 1, '2017-11-18 11:53:12', '2017-11-18 08:53:12', '<img class="alignnone size-medium wp-image-13" src="http://my-project/wp-content/uploads/2017/11/creamator_orange_759808_763950-300x199.jpg" alt="" width="300" height="199" />6350\r\n\r\n<img class="alignnone size-medium wp-image-14" src="http://my-project/wp-content/uploads/2017/11/bike_eastern_vulture_black_chrome_1_857312_qwde11_857596-300x197.jpg" alt="" width="300" height="197" />4444', 'Bmx для начинающих', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2017-11-18 11:53:12', '2017-11-18 08:53:12', '', 12, 'http://my-project/2017/11/18/12-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2017-11-18 11:54:19', '2017-11-18 08:54:19', '<img class="alignnone size-medium wp-image-13" src="http://my-project/wp-content/uploads/2017/11/creamator_orange_759808_763950-300x199.jpg" alt="" width="300" height="199" /><strong><em>6350</em> </strong>\r\n\r\n<img class="alignnone size-medium wp-image-14" src="http://my-project/wp-content/uploads/2017/11/bike_eastern_vulture_black_chrome_1_857312_qwde11_857596-300x197.jpg" alt="" width="300" height="197" />7130', 'Bmx для начинающих', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2017-11-18 11:54:19', '2017-11-18 08:54:19', '', 12, 'http://my-project/2017/11/18/12-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2017-11-18 12:02:54', '2017-11-18 09:02:54', '<img class="alignnone size-medium wp-image-13" src="http://my-project/wp-content/uploads/2017/11/creamator_orange_759808_763950-300x199.jpg" alt="" width="300" height="199" /><strong><em>цена:6350</em></strong><img class="alignnone size-medium wp-image-21" src="http://my-project/wp-content/uploads/2017/11/wtp_volta_red_90_980628_988232-300x187.jpg" alt="" width="300" height="187" />\n\n<img class="alignnone size-medium wp-image-14" src="http://my-project/wp-content/uploads/2017/11/bike_eastern_vulture_black_chrome_1_857312_qwde11_857596-300x197.jpg" alt="" width="300" height="197" />цена:7130<img class="alignnone size-medium wp-image-20" src="http://my-project/wp-content/uploads/2017/11/wtp_versus_yellow_90_980659_988230-300x201.jpg" alt="" width="300" height="201" />цена:10190', 'Bmx для начинающих', '', 'inherit', 'closed', 'closed', '', '12-autosave-v1', '', '', '2017-11-18 12:02:54', '2017-11-18 09:02:54', '', 12, 'http://my-project/2017/11/18/12-autosave-v1/', 0, 'revision', '', 0),
(18, 1, '2017-11-18 11:55:29', '2017-11-18 08:55:29', '<img class="alignnone size-medium wp-image-13" src="http://my-project/wp-content/uploads/2017/11/creamator_orange_759808_763950-300x199.jpg" alt="" width="300" height="199" /><strong><h1><em>6350</em></h1> </strong>\r\n\r\n<img class="alignnone size-medium wp-image-14" src="http://my-project/wp-content/uploads/2017/11/bike_eastern_vulture_black_chrome_1_857312_qwde11_857596-300x197.jpg" alt="" width="300" height="197" />7130', 'Bmx для начинающих', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2017-11-18 11:55:29', '2017-11-18 08:55:29', '', 12, 'http://my-project/2017/11/18/12-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2017-11-18 11:55:52', '2017-11-18 08:55:52', '<img class="alignnone size-medium wp-image-13" src="http://my-project/wp-content/uploads/2017/11/creamator_orange_759808_763950-300x199.jpg" alt="" width="300" height="199" /><strong><em>6350</em> </strong>\r\n\r\n<img class="alignnone size-medium wp-image-14" src="http://my-project/wp-content/uploads/2017/11/bike_eastern_vulture_black_chrome_1_857312_qwde11_857596-300x197.jpg" alt="" width="300" height="197" />7130', 'Bmx для начинающих', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2017-11-18 11:55:52', '2017-11-18 08:55:52', '', 12, 'http://my-project/2017/11/18/12-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2017-11-18 11:59:51', '2017-11-18 08:59:51', '', 'wtp_versus_yellow_90_980659_988230', '', 'inherit', 'open', 'closed', '', 'wtp_versus_yellow_90_980659_988230', '', '', '2017-11-18 11:59:51', '2017-11-18 08:59:51', '', 12, 'http://my-project/wp-content/uploads/2017/11/wtp_versus_yellow_90_980659_988230.jpg', 0, 'attachment', 'image/jpeg', 0),
(21, 1, '2017-11-18 12:01:55', '2017-11-18 09:01:55', '', 'wtp_volta_red_90_980628_988232', '', 'inherit', 'open', 'closed', '', 'wtp_volta_red_90_980628_988232', '', '', '2017-11-18 12:01:55', '2017-11-18 09:01:55', '', 12, 'http://my-project/wp-content/uploads/2017/11/wtp_volta_red_90_980628_988232.jpg', 0, 'attachment', 'image/jpeg', 0),
(22, 1, '2017-11-18 12:04:44', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-11-18 12:04:44', '0000-00-00 00:00:00', '', 0, 'http://my-project/?page_id=22', 0, 'page', '', 0),
(23, 1, '2017-11-25 11:57:42', '0000-00-00 00:00:00', '<img class="alignnone size-medium wp-image-28" src="http://my-project/wp-content/uploads/2017/11/1580468395.jpg" alt="" width="278" height="278" />\n<pre id="tw-target-text" class="tw-data-text tw-ta tw-text-small" dir="ltr" data-placeholder="Перевод" data-fulltext=""><span lang="en">A bicycle that became famous all over the world. It ceased to be produced, but after several years its production resumed, thanks to the numerous requests of cyclists. was released in a new guise - But all that was good in this model, and remained: the Freecoaster bush, a frame that is characterized by low location provide a quality and easy ride, reliable airtight sleeves, wheel rims, having a double wall, MID carriage and steering column , which have sealed bearings. - Freecoaster bushing (it is able to change into a cassette sleeve without any extra efforts) - The bushing allows adjustment of the clearance and is made with a built-in housing.</span></pre>', 'Bmx for pro riders', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-11-25 11:57:42', '2017-11-25 08:57:42', '', 0, 'http://my-project/?page_id=23', 0, 'page', '', 0),
(24, 1, '2017-11-18 12:15:13', '2017-11-18 09:15:13', '', '$_3', '', 'inherit', 'open', 'closed', '', '_3', '', '', '2017-11-18 12:15:13', '2017-11-18 09:15:13', '', 23, 'http://my-project/wp-content/uploads/2017/11/3.png', 0, 'attachment', 'image/png', 0),
(25, 1, '2017-11-18 12:15:23', '2017-11-18 09:15:23', '', '140', '', 'inherit', 'open', 'closed', '', '140', '', '', '2017-11-18 12:15:23', '2017-11-18 09:15:23', '', 23, 'http://my-project/wp-content/uploads/2017/11/140.jpg', 0, 'attachment', 'image/jpeg', 0),
(26, 1, '2017-11-18 12:15:40', '2017-11-18 09:15:40', '', '1581307315', '', 'inherit', 'open', 'closed', '', '1581307315', '', '', '2017-11-18 12:15:40', '2017-11-18 09:15:40', '', 23, 'http://my-project/wp-content/uploads/2017/11/1581307315.jpg', 0, 'attachment', 'image/jpeg', 0),
(27, 1, '2017-11-18 12:15:52', '2017-11-18 09:15:52', '', '1581307315', '', 'inherit', 'open', 'closed', '', '1581307315-2', '', '', '2017-11-18 12:15:52', '2017-11-18 09:15:52', '', 23, 'http://my-project/wp-content/uploads/2017/11/1581307315-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(28, 1, '2017-11-18 12:16:04', '2017-11-18 09:16:04', '', '1580468395', '', 'inherit', 'open', 'closed', '', '1580468395', '', '', '2017-11-18 12:16:04', '2017-11-18 09:16:04', '', 23, 'http://my-project/wp-content/uploads/2017/11/1580468395.jpg', 0, 'attachment', 'image/jpeg', 0),
(29, 1, '2017-11-18 12:16:22', '2017-11-18 09:16:22', '', 'fatboy_matte_black_987203', '', 'inherit', 'open', 'closed', '', 'fatboy_matte_black_987203', '', '', '2017-11-18 12:16:22', '2017-11-18 09:16:22', '', 23, 'http://my-project/wp-content/uploads/2017/11/fatboy_matte_black_987203.jpg', 0, 'attachment', 'image/jpeg', 0),
(30, 1, '2017-11-18 12:16:37', '2017-11-18 09:16:37', '', 'velosiped-premium-duo-zelenyy-main-1000x1000', '', 'inherit', 'open', 'closed', '', 'velosiped-premium-duo-zelenyy-main-1000x1000', '', '', '2017-11-18 12:16:37', '2017-11-18 09:16:37', '', 23, 'http://my-project/wp-content/uploads/2017/11/velosiped-premium-duo-zelenyy-main-1000x1000.jpg', 0, 'attachment', 'image/jpeg', 0),
(31, 1, '2017-11-18 12:16:46', '2017-11-18 09:16:46', '', 'velosiped-premium-solo-plus-siniy-main-1000x1000', '', 'inherit', 'open', 'closed', '', 'velosiped-premium-solo-plus-siniy-main-1000x1000', '', '', '2017-11-18 12:16:46', '2017-11-18 09:16:46', '', 23, 'http://my-project/wp-content/uploads/2017/11/velosiped-premium-solo-plus-siniy-main-1000x1000.jpg', 0, 'attachment', 'image/jpeg', 0),
(32, 1, '2017-11-25 11:20:21', '0000-00-00 00:00:00', '<div class="row">\r\n<div class="small-12 columns">Otal height:70см</div>\r\n<div class="small-12 columns">Pegs:Not included</div>\r\n</div>\r\n<div class="row">\r\n<div class="small-12 columns">Hub:Cassette, Sealed bearings</div>\r\n</div>\r\n<div class="row">\r\n<div class="small-12 columns">Bar height:10" (25.4cm)</div>\r\n</div>\r\n<div class="row">\r\n<div class="small-12 columns">Bar width:28" (71.1cm)<img class="size-medium wp-image-24 alignright" src="http://my-project/wp-content/uploads/2017/11/3-300x300.png" alt="" width="300" height="300" /></div>\r\n</div>\r\n<div class="row">\r\n<div class="small-12 columns">Bar material:Chrome steel</div>\r\n</div>\r\n<div class="row">\r\n<div class="small-12 columns">Weight:10.5kg</div>\r\n</div>\r\n<div class="row">\r\n<div class="small-12 columns">Frame Top Tube:12" (30.5cm)</div>\r\n</div>\r\n<div class="row">\r\n<div class="small-12 columns">Frame standover height:6.3" (16cm)</div>\r\n</div>\r\n<div class="row">\r\n<div class="small-12 columns">Chainstay length:8.46" (21.5cm)</div>\r\n</div>\r\n<div class="row">\r\n<div class="small-12 columns">Headset type:Integrated 1 1/8"</div>\r\n</div>\r\n<div class="row">\r\n<div class="small-12 columns">Frame material:Hi-ten steel</div>\r\n</div>\r\n<div class="row">\r\n<div class="small-12 columns">Headtube length:100mm</div>\r\n</div>\r\n<pre id="tw-target-text" class="tw-data-text tw-ta tw-text-small" dir="ltr" data-placeholder="Перевод" data-fulltext=""><span lang="ru"> </span></pre>', 'Bmx for kids', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-11-25 11:20:21', '2017-11-25 08:20:21', '', 0, 'http://my-project/?page_id=32', 0, 'page', '', 0),
(33, 1, '2017-11-18 12:49:16', '2017-11-18 09:49:16', '', '140', '', 'inherit', 'open', 'closed', '', '140-2', '', '', '2017-11-18 12:49:16', '2017-11-18 09:49:16', '', 32, 'http://my-project/wp-content/uploads/2017/11/140-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(34, 1, '2017-11-18 14:01:23', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-11-18 14:01:23', '0000-00-00 00:00:00', '', 0, 'http://my-project/?page_id=34', 0, 'page', '', 0),
(35, 1, '2017-11-25 11:14:10', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-11-25 11:14:10', '0000-00-00 00:00:00', '', 0, 'http://my-project/?p=35', 0, 'post', '', 0),
(36, 1, '2017-11-25 11:19:43', '2017-11-25 08:19:43', '<img class="alignnone size-medium wp-image-28" src="http://my-project/wp-content/uploads/2017/11/1580468395.jpg" alt="" width="278" height="278" />   - Велосипед, который прославился на весь мир. Его перестали выпускать, но после нескольких лет его производство возобновилось, благодаря многочисленным просьбам велосипедистов. вышел в свет в новом обличии - обновлённый дизайн делает теперь эту модель ещё более желаемой. Но всё, что было хорошего в этой модели, так и осталось: втулка Freecoaster,рама, отличающаяся низким расположением с логотипом (смерть с косой и "Е"), а также нижняя труба, изготовленная из хромомолибденового сплава. являются: вилка, изготовленная из хромомолибденового сплава, вынос с крышкой наверху, трубчатые шатуны из хромомолибденовой стали (состоят из трёх деталей), а также педали Throttle. Обеспечивают качественную и лёгкую езду надёжные герметичные втулки, обода колёс, обладающие двойной стенкой, каретка MID и рулевая колонка, которые обладают герметичными подшипниками.- втулка Freecoaster (способна перемениться в кассетную втулку без лишних усилий);- втулка даёт возможность регулирования просвета и производится со встроенным корпусом (имеются выемки под Eastern Poploc и Hub Guard). является одним из самых успешных брендов в BMX индустрии. Компания занимает одну из первых позиций в сфере инновационного дизайна BMX-ов. Создатели знают по себе, что нужно райдеру, ведь они сами имеют за плечами долгий опыт катания. С каждым годом комплиты постоянно эволюционируют. Большая часть байков комплектуется трёхэлементными системами из закаленной CrMo стали.', 'Bmx for pro riders', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2017-11-25 11:19:43', '2017-11-25 08:19:43', '', 23, 'http://my-project/2017/11/25/23-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2017-11-25 11:20:21', '2017-11-25 08:20:21', '<div class="row">\r\n<div class="small-12 columns">Otal height:70см</div>\r\n<div class="small-12 columns">Pegs:Not included</div>\r\n</div>\r\n<div class="row">\r\n<div class="small-12 columns">Hub:Cassette, Sealed bearings</div>\r\n</div>\r\n<div class="row">\r\n<div class="small-12 columns">Bar height:10" (25.4cm)</div>\r\n</div>\r\n<div class="row">\r\n<div class="small-12 columns">Bar width:28" (71.1cm)<img class="size-medium wp-image-24 alignright" src="http://my-project/wp-content/uploads/2017/11/3-300x300.png" alt="" width="300" height="300" /></div>\r\n</div>\r\n<div class="row">\r\n<div class="small-12 columns">Bar material:Chrome steel</div>\r\n</div>\r\n<div class="row">\r\n<div class="small-12 columns">Weight:10.5kg</div>\r\n</div>\r\n<div class="row">\r\n<div class="small-12 columns">Frame Top Tube:12" (30.5cm)</div>\r\n</div>\r\n<div class="row">\r\n<div class="small-12 columns">Frame standover height:6.3" (16cm)</div>\r\n</div>\r\n<div class="row">\r\n<div class="small-12 columns">Chainstay length:8.46" (21.5cm)</div>\r\n</div>\r\n<div class="row">\r\n<div class="small-12 columns">Headset type:Integrated 1 1/8"</div>\r\n</div>\r\n<div class="row">\r\n<div class="small-12 columns">Frame material:Hi-ten steel</div>\r\n</div>\r\n<div class="row">\r\n<div class="small-12 columns">Headtube length:100mm</div>\r\n</div>\r\n<pre id="tw-target-text" class="tw-data-text tw-ta tw-text-small" dir="ltr" data-placeholder="Перевод" data-fulltext=""><span lang="ru"> </span></pre>', 'Bmx for kids', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2017-11-25 11:20:21', '2017-11-25 08:20:21', '', 32, 'http://my-project/2017/11/25/32-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2017-11-25 11:46:07', '2017-11-25 08:46:07', 'Brand: Eastern                                                                                                                                                                Gray: FREESTYLE                                                                                                                                                             Рік: 2013                                                                                                                                                                        Catana Style: Street / Freestyle                                                                                                                                    Frame: Main CrMo pipes, 21 "top tube length Integrated seat post clamp Integrated steering column Mid Bucket unit Width of the carriage unit 78 mm                                                                                                           Fork: Creamator 100% CrMo, 10 mm axle Shatun: Eastern Shaft, 3-element                                                            Leader: Eastern Phorcys 25T, steel                                                                                                                         Carriage: Eastern Mid BB, closed bearings                                                                                                               Pedal: Eastern Crown                                                                                                                                                           Wheel in the go: 9T driver Lanczyug: KMC Z510                                                                                                        Rim: Aluminum, podvіynі stinky, 36H                                                                                                                    Pokryshki: Eastern Fuquay Flyer 20 "x2.3" Front bush: Eastern, closed bearings, 36n                                Задня plug: Eastern, five seize bearings, the driver installation can be installed in any direction, empty is hardened CrMo вісь, 36H<img class="alignnone size-medium wp-image-13 alignright" src="http://my-project/wp-content/uploads/2017/11/creamator_orange_759808_763950-300x199.jpg" alt="" width="300" height="199" />', 'Bmx for begginers', '', 'inherit', 'closed', 'closed', '', '2-autosave-v1', '', '', '2017-11-25 11:46:07', '2017-11-25 08:46:07', '', 2, 'http://my-project/2017/11/25/2-autosave-v1/', 0, 'revision', '', 0),
(39, 1, '2017-11-25 11:26:53', '2017-11-25 08:26:53', '', 'Bmx for begginers', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-11-25 11:26:53', '2017-11-25 08:26:53', '', 2, 'http://my-project/2017/11/25/2-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--

CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без рубрики', '%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8', 0),
(2, 'Меню', '%d0%bc%d0%b5%d0%bd%d1%8e', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Дамп данных таблицы `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'locale', ''),
(11, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(12, 1, 'wp_user_level', '10'),
(13, 1, 'dismissed_wp_pointers', ''),
(14, 1, 'show_welcome_panel', '1'),
(15, 1, 'session_tokens', 'a:1:{s:64:"bde02319a3ff0941191d4ba879998938170a202bec48d1dd27ac51b984250963";a:4:{s:10:"expiration";i:1511604416;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:77:"Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:56.0) Gecko/20100101 Firefox/56.0";s:5:"login";i:1510394816;}}'),
(16, 1, 'wp_dashboard_quick_press_last_post_id', '35'),
(17, 1, 'community-events-location', 'a:1:{s:2:"ip";s:9:"127.0.0.0";}'),
(18, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce'),
(19, 1, 'wp_user-settings-time', '1510995879'),
(20, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(21, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BlbXJVcQQfnNi.FBl.RbH3lvr56foh/', 'admin', 'OfficialbmxJenya@gmail.com', '', '2017-11-11 10:06:42', '', 0, 'admin');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
