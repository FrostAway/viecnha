-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 22, 2015 at 06:17 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `viecnha_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
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
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Mr WordPress', '', 'https://wordpress.org/', '', '2015-01-21 13:56:03', '2015-01-21 13:56:03', 'Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
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
-- Table structure for table `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=146 ;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/viecnha', 'yes'),
(2, 'home', 'http://localhost/viecnha', 'yes'),
(3, 'blogname', 'Giúp việc 365', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'skyfrost.07@gmail.com', 'yes'),
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
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '', 'yes'),
(29, 'gzipcompression', '0', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'advanced_edit', '0', 'yes'),
(37, 'comment_max_links', '2', 'yes'),
(38, 'gmt_offset', '0', 'yes'),
(39, 'default_email_category', '1', 'yes'),
(40, 'recently_edited', '', 'no'),
(41, 'template', 'viecnha365', 'yes'),
(42, 'stylesheet', 'viecnha365', 'yes'),
(43, 'comment_whitelist', '1', 'yes'),
(44, 'blacklist_keys', '', 'no'),
(45, 'comment_registration', '0', 'yes'),
(46, 'html_type', 'text/html', 'yes'),
(47, 'use_trackback', '0', 'yes'),
(48, 'default_role', 'subscriber', 'yes'),
(49, 'db_version', '30133', 'yes'),
(50, 'uploads_use_yearmonth_folders', '1', 'yes'),
(51, 'upload_path', '', 'yes'),
(52, 'blog_public', '1', 'yes'),
(53, 'default_link_category', '2', 'yes'),
(54, 'show_on_front', 'posts', 'yes'),
(55, 'tag_base', '', 'yes'),
(56, 'show_avatars', '1', 'yes'),
(57, 'avatar_rating', 'G', 'yes'),
(58, 'upload_url_path', '', 'yes'),
(59, 'thumbnail_size_w', '150', 'yes'),
(60, 'thumbnail_size_h', '150', 'yes'),
(61, 'thumbnail_crop', '1', 'yes'),
(62, 'medium_size_w', '300', 'yes'),
(63, 'medium_size_h', '300', 'yes'),
(64, 'avatar_default', 'mystery', 'yes'),
(65, 'large_size_w', '1024', 'yes'),
(66, 'large_size_h', '1024', 'yes'),
(67, 'image_default_link_type', 'file', 'yes'),
(68, 'image_default_size', '', 'yes'),
(69, 'image_default_align', '', 'yes'),
(70, 'close_comments_for_old_posts', '0', 'yes'),
(71, 'close_comments_days_old', '14', 'yes'),
(72, 'thread_comments', '1', 'yes'),
(73, 'thread_comments_depth', '5', 'yes'),
(74, 'page_comments', '0', 'yes'),
(75, 'comments_per_page', '50', 'yes'),
(76, 'default_comments_page', 'newest', 'yes'),
(77, 'comment_order', 'asc', 'yes'),
(78, 'sticky_posts', 'a:0:{}', 'yes'),
(79, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_text', 'a:0:{}', 'yes'),
(81, 'widget_rss', 'a:0:{}', 'yes'),
(82, 'uninstall_plugins', 'a:0:{}', 'no'),
(83, 'timezone_string', '', 'yes'),
(84, 'page_for_posts', '0', 'yes'),
(85, 'page_on_front', '0', 'yes'),
(86, 'default_post_format', '0', 'yes'),
(87, 'link_manager_enabled', '0', 'yes'),
(88, 'initial_db_version', '30133', 'yes'),
(89, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(90, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(91, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(92, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:15:"sidebar-widgets";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(96, 'cron', 'a:5:{i:1421910000;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1421934968;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1421935022;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1421936104;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(98, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:57:"https://downloads.wordpress.org/release/wordpress-4.1.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:57:"https://downloads.wordpress.org/release/wordpress-4.1.zip";s:10:"no_content";s:68:"https://downloads.wordpress.org/release/wordpress-4.1-no-content.zip";s:11:"new_bundled";s:69:"https://downloads.wordpress.org/release/wordpress-4.1-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:3:"4.1";s:7:"version";s:3:"4.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.1";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1421903826;s:15:"version_checked";s:3:"4.1";s:12:"translations";a:0:{}}', 'yes'),
(99, '_transient_random_seed', 'f6679f8fe0b38e367c825664af8c1140', 'yes'),
(100, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1421903832;s:8:"response";a:0:{}s:12:"translations";a:0:{}s:9:"no_update";a:2:{s:19:"akismet/akismet.php";O:8:"stdClass":6:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"3.0.4";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.3.0.4.zip";}s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:4:"3564";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}}}', 'yes'),
(103, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1421903835;s:7:"checked";a:4:{s:13:"twentyfifteen";s:3:"1.0";s:14:"twentyfourteen";s:3:"1.3";s:14:"twentythirteen";s:3:"1.4";s:10:"viecnha365";s:3:"1.0";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'yes'),
(105, '_site_transient_timeout_browser_e909bb81518ca4e19a3a2b80fe39db29', '1422453394', 'yes'),
(106, '_site_transient_browser_e909bb81518ca4e19a3a2b80fe39db29', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:7:"Firefox";s:7:"version";s:4:"35.0";s:10:"update_url";s:23:"http://www.firefox.com/";s:7:"img_src";s:50:"http://s.wordpress.org/images/browsers/firefox.png";s:11:"img_src_ssl";s:49:"https://wordpress.org/images/browsers/firefox.png";s:15:"current_version";s:2:"16";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(107, 'can_compress_scripts', '1', 'yes'),
(109, '_transient_timeout_feed_b9388c83948825c1edaef0d856b7b109', '1421891827', 'no'),
(110, '_transient_feed_b9388c83948825c1edaef0d856b7b109', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:3:"\n	\n";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:72:"\n		\n		\n		\n		\n		\n		\n				\n\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n\n	";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:39:"WordPress Plugins » View: Most Popular";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:45:"https://wordpress.org/plugins/browse/popular/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:39:"WordPress Plugins » View: Most Popular";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:5:"en-US";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 21 Jan 2015 13:35:55 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"generator";a:1:{i:0;a:5:{s:4:"data";s:25:"http://bbpress.org/?v=1.1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:15:{i:0;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:7:"Akismet";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:46:"https://wordpress.org/plugins/akismet/#post-15";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Mar 2007 22:11:30 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"15@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:98:"Akismet checks your comments against the Akismet Web service to see if they look like spam or not.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Matt Mullenweg";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"Contact Form 7";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:55:"https://wordpress.org/plugins/contact-form-7/#post-2141";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 02 Aug 2007 12:45:03 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"2141@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:54:"Just another contact form plugin. Simple but flexible.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Takayuki Miyoshi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:18:"Wordfence Security";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"https://wordpress.org/plugins/wordfence/#post-29832";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 04 Sep 2011 03:13:51 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"29832@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:137:"Wordfence Security is a free enterprise class security and performance plugin that makes your site up to 50 times faster and more secure.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Wordfence";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:19:"All in One SEO Pack";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:59:"https://wordpress.org/plugins/all-in-one-seo-pack/#post-753";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 30 Mar 2007 20:08:18 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"753@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:126:"All in One SEO Pack is a WordPress SEO plugin to automatically optimize your WordPress blog for Search Engines such as Google.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:8:"uberdose";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:24:"Jetpack by WordPress.com";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:49:"https://wordpress.org/plugins/jetpack/#post-23862";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 20 Jan 2011 02:21:38 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"23862@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:28:"Your WordPress, Streamlined.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Tim Moore";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:22:"WordPress SEO by Yoast";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:54:"https://wordpress.org/plugins/wordpress-seo/#post-8321";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 01 Jan 2009 20:34:44 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"8321@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:131:"Improve your WordPress SEO: Write better content and have a fully optimized WordPress site using Yoast&#039;s WordPress SEO plugin.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Joost de Valk";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:25:"Google Analytics by Yoast";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:71:"https://wordpress.org/plugins/google-analytics-for-wordpress/#post-2316";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 14 Sep 2007 12:15:27 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"2316@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:124:"Track your WordPress site easily with the latest tracking codes and lots added data for search result pages and error pages.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Joost de Valk";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:33:"WooCommerce - excelling eCommerce";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:53:"https://wordpress.org/plugins/woocommerce/#post-29860";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 05 Sep 2011 08:13:36 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"29860@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:97:"WooCommerce is a powerful, extendable eCommerce plugin that helps you sell anything. Beautifully.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"WooThemes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:8;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:18:"WordPress Importer";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:60:"https://wordpress.org/plugins/wordpress-importer/#post-18101";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 20 May 2010 17:42:45 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"18101@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:101:"Import posts, pages, comments, custom fields, categories, tags and more from a WordPress export file.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Brian Colinger";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:9;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:46:"iThemes Security (formerly Better WP Security)";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:60:"https://wordpress.org/plugins/better-wp-security/#post-21738";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 22 Oct 2010 22:06:05 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"21738@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:63:"The easiest, most effective way to secure WordPress in seconds.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Chris Wiegman";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:10;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:33:"Google Analytics Dashboard for WP";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:75:"https://wordpress.org/plugins/google-analytics-dashboard-for-wp/#post-50539";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 10 Mar 2013 17:07:11 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"50539@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:148:"Displays Google Analytics reports and real-time statistics in your WordPress Dashboard. Inserts the latest tracking code in every page of your site.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Alin Marcu";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:11;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:19:"Google XML Sitemaps";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"https://wordpress.org/plugins/google-sitemap-generator/#post-132";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Mar 2007 22:31:32 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"132@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:105:"This plugin will generate a special XML sitemap which will help search engines to better index your blog.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:5:"arnee";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:12;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:11:"Redirection";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:52:"https://wordpress.org/plugins/redirection/#post-2286";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 10 Sep 2007 04:45:08 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"2286@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:144:"Redirection is a WordPress plugin to manage 301 redirections and keep track of 404 errors without requiring knowledge of Apache .htaccess files.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"John Godley";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:13;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:26:"Page Builder by SiteOrigin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:59:"https://wordpress.org/plugins/siteorigin-panels/#post-51888";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 11 Apr 2013 10:36:42 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"51888@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:111:"Build responsive page layouts using the widgets you know and love using this simple drag and drop page builder.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Greg Priday";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:14;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:91:"NextGEN Facebook - Advanced Social SEO for Facebook, Google+, Pinterest, Twitter &amp; More";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:58:"https://wordpress.org/plugins/nextgen-facebook/#post-40409";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 11 Jul 2012 20:13:22 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"40409@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:132:"Display your content in the best possible way on Facebook, Google+, Twitter, Pinterest, etc. - no matter how your webpage is shared!";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"JS Morisset";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:4:"href";s:46:"https://wordpress.org/plugins/rss/view/popular";s:3:"rel";s:4:"self";s:4:"type";s:19:"application/rss+xml";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";a:11:{s:6:"server";s:5:"nginx";s:4:"date";s:29:"Wed, 21 Jan 2015 13:57:03 GMT";s:12:"content-type";s:23:"text/xml; charset=UTF-8";s:10:"connection";s:5:"close";s:4:"vary";s:15:"Accept-Encoding";s:7:"expires";s:29:"Wed, 21 Jan 2015 14:10:55 GMT";s:13:"cache-control";s:0:"";s:6:"pragma";s:0:"";s:13:"last-modified";s:31:"Wed, 21 Jan 2015 13:35:55 +0000";s:15:"x-frame-options";s:10:"SAMEORIGIN";s:4:"x-nc";s:11:"HIT lax 250";}s:5:"build";s:14:"20130910210210";}', 'no'),
(111, '_transient_timeout_feed_mod_b9388c83948825c1edaef0d856b7b109', '1421891827', 'no'),
(112, '_transient_feed_mod_b9388c83948825c1edaef0d856b7b109', '1421848627', 'no'),
(113, '_transient_timeout_plugin_slugs', '1421935027', 'no'),
(114, '_transient_plugin_slugs', 'a:2:{i:0;s:19:"akismet/akismet.php";i:1;s:9:"hello.php";}', 'no'),
(115, 'theme_mods_twentyfifteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1421848627;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(116, '_transient_timeout_dash_4077549d03da2e451c8b5f002294ff51', '1421891835', 'no'),
(118, 'current_theme', 'Việc Nhà 365', 'yes'),
(119, 'theme_mods_viecnha365', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:0:{}}', 'yes'),
(120, 'theme_switched', '', 'yes'),
(122, '_transient_dash_4077549d03da2e451c8b5f002294ff51', '<div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: Operation timed out after 10000 milliseconds with 32471 bytes received</p></div><div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: Operation timed out after 9125 milliseconds with 44779 out of 248181 bytes received</p></div><div class="rss-widget"><ul><li class=''dashboard-news-plugin''><span>Popular Plugin:</span> <a href=''https://wordpress.org/plugins/google-analytics-dashboard-for-wp/'' class=''dashboard-news-plugin-link''>Google Analytics Dashboard for WP</a>&nbsp;<span>(<a href=''plugin-install.php?tab=plugin-information&amp;plugin=google-analytics-dashboard-for-wp&amp;_wpnonce=42fde8ce2c&amp;TB_iframe=true&amp;width=600&amp;height=800'' class=''thickbox'' title=''Google Analytics Dashboard for WP''>Install</a>)</span></li></ul></div>', 'no'),
(124, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(132, 'category_children', 'a:0:{}', 'yes'),
(144, '_site_transient_timeout_theme_roots', '1421905623', 'yes'),
(145, '_site_transient_theme_roots', 'a:4:{s:13:"twentyfifteen";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";s:14:"twentythirteen";s:7:"/themes";s:10:"viecnha365";s:7:"/themes";}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=215 ;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 2, '_wp_trash_meta_status', 'publish'),
(3, 2, '_wp_trash_meta_time', '1421849702'),
(4, 5, '_edit_last', '1'),
(5, 5, '_edit_lock', '1421849585:1'),
(6, 7, '_edit_last', '1'),
(7, 7, '_edit_lock', '1421849596:1'),
(8, 9, '_edit_last', '1'),
(9, 9, '_edit_lock', '1421849608:1'),
(10, 11, '_edit_last', '1'),
(11, 11, '_edit_lock', '1421849619:1'),
(12, 13, '_edit_last', '1'),
(13, 13, '_edit_lock', '1421853435:1'),
(14, 15, '_edit_last', '1'),
(15, 15, '_edit_lock', '1421851605:1'),
(16, 17, '_edit_last', '1'),
(17, 17, '_edit_lock', '1421851631:1'),
(18, 18, '_edit_last', '1'),
(19, 18, '_edit_lock', '1421851649:1'),
(20, 19, '_edit_last', '1'),
(21, 19, '_edit_lock', '1421851670:1'),
(22, 20, '_edit_last', '1'),
(23, 20, '_edit_lock', '1421851692:1'),
(24, 21, '_edit_last', '1'),
(25, 21, '_edit_lock', '1421851709:1'),
(26, 27, '_menu_item_type', 'custom'),
(27, 27, '_menu_item_menu_item_parent', '0'),
(28, 27, '_menu_item_object_id', '27'),
(29, 27, '_menu_item_object', 'custom'),
(30, 27, '_menu_item_target', ''),
(31, 27, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(32, 27, '_menu_item_xfn', ''),
(33, 27, '_menu_item_url', 'http://localhost/viecnha/'),
(35, 28, '_menu_item_type', 'post_type'),
(36, 28, '_menu_item_menu_item_parent', '0'),
(37, 28, '_menu_item_object_id', '11'),
(38, 28, '_menu_item_object', 'page'),
(39, 28, '_menu_item_target', ''),
(40, 28, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(41, 28, '_menu_item_xfn', ''),
(42, 28, '_menu_item_url', ''),
(44, 29, '_menu_item_type', 'post_type'),
(45, 29, '_menu_item_menu_item_parent', '0'),
(46, 29, '_menu_item_object_id', '7'),
(47, 29, '_menu_item_object', 'page'),
(48, 29, '_menu_item_target', ''),
(49, 29, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(50, 29, '_menu_item_xfn', ''),
(51, 29, '_menu_item_url', ''),
(53, 30, '_menu_item_type', 'post_type'),
(54, 30, '_menu_item_menu_item_parent', '29'),
(55, 30, '_menu_item_object_id', '20'),
(56, 30, '_menu_item_object', 'page'),
(57, 30, '_menu_item_target', ''),
(58, 30, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(59, 30, '_menu_item_xfn', ''),
(60, 30, '_menu_item_url', ''),
(62, 31, '_menu_item_type', 'post_type'),
(63, 31, '_menu_item_menu_item_parent', '29'),
(64, 31, '_menu_item_object_id', '15'),
(65, 31, '_menu_item_object', 'page'),
(66, 31, '_menu_item_target', ''),
(67, 31, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(68, 31, '_menu_item_xfn', ''),
(69, 31, '_menu_item_url', ''),
(71, 32, '_menu_item_type', 'post_type'),
(72, 32, '_menu_item_menu_item_parent', '29'),
(73, 32, '_menu_item_object_id', '17'),
(74, 32, '_menu_item_object', 'page'),
(75, 32, '_menu_item_target', ''),
(76, 32, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(77, 32, '_menu_item_xfn', ''),
(78, 32, '_menu_item_url', ''),
(80, 33, '_menu_item_type', 'post_type'),
(81, 33, '_menu_item_menu_item_parent', '29'),
(82, 33, '_menu_item_object_id', '21'),
(83, 33, '_menu_item_object', 'page'),
(84, 33, '_menu_item_target', ''),
(85, 33, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(86, 33, '_menu_item_xfn', ''),
(87, 33, '_menu_item_url', ''),
(89, 34, '_menu_item_type', 'post_type'),
(90, 34, '_menu_item_menu_item_parent', '29'),
(91, 34, '_menu_item_object_id', '19'),
(92, 34, '_menu_item_object', 'page'),
(93, 34, '_menu_item_target', ''),
(94, 34, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(95, 34, '_menu_item_xfn', ''),
(96, 34, '_menu_item_url', ''),
(98, 35, '_menu_item_type', 'post_type'),
(99, 35, '_menu_item_menu_item_parent', '29'),
(100, 35, '_menu_item_object_id', '18'),
(101, 35, '_menu_item_object', 'page'),
(102, 35, '_menu_item_target', ''),
(103, 35, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(104, 35, '_menu_item_xfn', ''),
(105, 35, '_menu_item_url', ''),
(107, 36, '_menu_item_type', 'post_type'),
(108, 36, '_menu_item_menu_item_parent', '0'),
(109, 36, '_menu_item_object_id', '5'),
(110, 36, '_menu_item_object', 'page'),
(111, 36, '_menu_item_target', ''),
(112, 36, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(113, 36, '_menu_item_xfn', ''),
(114, 36, '_menu_item_url', ''),
(116, 37, '_menu_item_type', 'post_type'),
(117, 37, '_menu_item_menu_item_parent', '0'),
(118, 37, '_menu_item_object_id', '13'),
(119, 37, '_menu_item_object', 'page'),
(120, 37, '_menu_item_target', ''),
(121, 37, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(122, 37, '_menu_item_xfn', ''),
(123, 37, '_menu_item_url', ''),
(125, 38, '_menu_item_type', 'post_type'),
(126, 38, '_menu_item_menu_item_parent', '0'),
(127, 38, '_menu_item_object_id', '9'),
(128, 38, '_menu_item_object', 'page'),
(129, 38, '_menu_item_target', ''),
(130, 38, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(131, 38, '_menu_item_xfn', ''),
(132, 38, '_menu_item_url', ''),
(134, 39, '_edit_last', '1'),
(135, 39, '_edit_lock', '1421850283:1'),
(136, 41, '_edit_last', '1'),
(137, 41, '_edit_lock', '1421851546:1'),
(138, 43, '_edit_last', '1'),
(139, 43, '_edit_lock', '1421851906:1'),
(140, 45, '_edit_last', '1'),
(141, 45, '_edit_lock', '1421850350:1'),
(142, 55, '_wp_attached_file', '2015/01/s1.png'),
(143, 55, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:39;s:6:"height";i:40;s:4:"file";s:14:"2015/01/s1.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(144, 15, '_thumbnail_id', '55'),
(145, 56, '_wp_attached_file', '2015/01/s2.png'),
(146, 56, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:40;s:6:"height";i:39;s:4:"file";s:14:"2015/01/s2.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(147, 17, '_thumbnail_id', '56'),
(148, 57, '_wp_attached_file', '2015/01/s3.png'),
(149, 57, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:40;s:6:"height";i:40;s:4:"file";s:14:"2015/01/s3.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(150, 18, '_thumbnail_id', '57'),
(151, 58, '_wp_attached_file', '2015/01/s4.png'),
(152, 58, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:40;s:6:"height";i:39;s:4:"file";s:14:"2015/01/s4.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(153, 19, '_thumbnail_id', '58'),
(154, 59, '_wp_attached_file', '2015/01/s5.png'),
(155, 59, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:40;s:6:"height";i:40;s:4:"file";s:14:"2015/01/s5.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(156, 20, '_thumbnail_id', '59'),
(157, 60, '_wp_attached_file', '2015/01/s6.png'),
(158, 60, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:40;s:6:"height";i:40;s:4:"file";s:14:"2015/01/s6.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(159, 21, '_thumbnail_id', '60'),
(160, 13, '_wp_page_template', 'contac-page.php'),
(161, 61, 'contact-name', ''),
(162, 61, 'contact-phone', ''),
(163, 61, 'contact-address', ''),
(164, 61, 'contact-email', ''),
(165, 62, 'contact-name', 'ho van ten'),
(166, 62, 'contact-phone', 'sodt'),
(167, 62, 'contact-address', 'dia chi'),
(168, 62, 'contact-email', 'email'),
(169, 62, '_edit_last', '1'),
(170, 62, '_edit_lock', '1421853855:1'),
(171, 62, 'contact-other', 'yeu cau khac'),
(172, 64, 'contact-name', ''),
(173, 64, 'contact-phone', ''),
(174, 64, 'contact-address', ''),
(175, 64, 'contact-other', ''),
(176, 64, '_edit_lock', '1421854066:1'),
(177, 65, 'contact-name', ''),
(178, 65, 'contact-phone', ''),
(179, 65, 'contact-address', ''),
(180, 65, 'contact-other', ''),
(181, 65, '_wp_trash_meta_status', 'pending'),
(182, 65, '_wp_trash_meta_time', '1421854282'),
(183, 64, '_wp_trash_meta_status', 'pending'),
(184, 64, '_wp_trash_meta_time', '1421854283'),
(185, 68, '_edit_last', '1'),
(186, 68, '_edit_lock', '1421854455:1'),
(187, 68, '_wp_page_template', 'register-page.php'),
(192, 70, '_wp_trash_meta_status', 'auto-draft'),
(193, 70, '_wp_trash_meta_time', '1421855262'),
(194, 72, '_menu_item_type', 'taxonomy'),
(195, 72, '_menu_item_menu_item_parent', '0'),
(196, 72, '_menu_item_object_id', '3'),
(197, 72, '_menu_item_object', 'category'),
(198, 72, '_menu_item_target', ''),
(199, 72, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(200, 72, '_menu_item_xfn', ''),
(201, 72, '_menu_item_url', ''),
(203, 73, '_edit_last', '1'),
(204, 73, '_edit_lock', '1421855930:1'),
(205, 74, '_wp_attached_file', '2015/01/post-img.jpg'),
(206, 74, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:180;s:6:"height";i:110;s:4:"file";s:20:"2015/01/post-img.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"post-img-150x110.jpg";s:5:"width";i:150;s:6:"height";i:110;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:10:"Untitled-1";s:11:"orientation";i:1;}}'),
(207, 73, '_thumbnail_id', '74'),
(210, 76, '_edit_last', '1'),
(211, 76, '_edit_lock', '1421856131:1'),
(212, 77, '_wp_attached_file', '2015/01/customer.png'),
(213, 77, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:117;s:6:"height";i:117;s:4:"file";s:20:"2015/01/customer.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(214, 76, '_thumbnail_id', '77');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
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
  `post_password` varchar(20) NOT NULL DEFAULT '',
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
  KEY `post_name` (`post_name`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=79 ;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2015-01-21 13:56:03', '2015-01-21 13:56:03', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2015-01-21 13:56:03', '2015-01-21 13:56:03', '', 0, 'http://localhost/viecnha/?p=1', 0, 'post', '', 1),
(2, 1, '2015-01-21 13:56:03', '2015-01-21 13:56:03', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost/viecnha/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'trash', 'open', 'open', '', 'sample-page', '', '', '2015-01-21 14:15:02', '2015-01-21 14:15:02', '', 0, 'http://localhost/viecnha/?page_id=2', 0, 'page', '', 0),
(3, 1, '2015-01-21 13:56:40', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-01-21 13:56:40', '0000-00-00 00:00:00', '', 0, 'http://localhost/viecnha/?p=3', 0, 'post', '', 0),
(4, 1, '2015-01-21 14:15:02', '2015-01-21 14:15:02', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost/viecnha/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2015-01-21 14:15:02', '2015-01-21 14:15:02', '', 2, 'http://localhost/viecnha/?p=4', 0, 'revision', '', 0),
(5, 1, '2015-01-21 14:15:27', '2015-01-21 14:15:27', '', 'Giới thiệu', '', 'publish', 'open', 'open', '', 'gioi-thieu', '', '', '2015-01-21 14:15:27', '2015-01-21 14:15:27', '', 0, 'http://localhost/viecnha/?page_id=5', 0, 'page', '', 0),
(6, 1, '2015-01-21 14:15:27', '2015-01-21 14:15:27', '', 'Giới thiệu', '', 'inherit', 'open', 'open', '', '5-revision-v1', '', '', '2015-01-21 14:15:27', '2015-01-21 14:15:27', '', 5, 'http://localhost/viecnha/?p=6', 0, 'revision', '', 0),
(7, 1, '2015-01-21 14:15:36', '2015-01-21 14:15:36', '', 'Dịch vụ', '', 'publish', 'open', 'open', '', 'dich-vu', '', '', '2015-01-21 14:15:36', '2015-01-21 14:15:36', '', 0, 'http://localhost/viecnha/?page_id=7', 0, 'page', '', 0),
(8, 1, '2015-01-21 14:15:36', '2015-01-21 14:15:36', '', 'Dịch vụ', '', 'inherit', 'open', 'open', '', '7-revision-v1', '', '', '2015-01-21 14:15:36', '2015-01-21 14:15:36', '', 7, 'http://localhost/viecnha/?p=8', 0, 'revision', '', 0),
(9, 1, '2015-01-21 14:15:48', '2015-01-21 14:15:48', '', 'Quy trình', '', 'publish', 'open', 'open', '', 'quy-trinh', '', '', '2015-01-21 14:15:48', '2015-01-21 14:15:48', '', 0, 'http://localhost/viecnha/?page_id=9', 0, 'page', '', 0),
(10, 1, '2015-01-21 14:15:48', '2015-01-21 14:15:48', '', 'Quy trình', '', 'inherit', 'open', 'open', '', '9-revision-v1', '', '', '2015-01-21 14:15:48', '2015-01-21 14:15:48', '', 9, 'http://localhost/viecnha/?p=10', 0, 'revision', '', 0),
(11, 1, '2015-01-21 14:15:59', '2015-01-21 14:15:59', '', 'Bảng giá', '', 'publish', 'open', 'open', '', 'bang-gia', '', '', '2015-01-21 14:15:59', '2015-01-21 14:15:59', '', 0, 'http://localhost/viecnha/?page_id=11', 0, 'page', '', 0),
(12, 1, '2015-01-21 14:15:59', '2015-01-21 14:15:59', '', 'Bảng giá', '', 'inherit', 'open', 'open', '', '11-revision-v1', '', '', '2015-01-21 14:15:59', '2015-01-21 14:15:59', '', 11, 'http://localhost/viecnha/?p=12', 0, 'revision', '', 0),
(13, 1, '2015-01-21 14:16:11', '2015-01-21 14:16:11', '', 'Liên hệ', '', 'publish', 'open', 'open', '', 'lien-he', '', '', '2015-01-21 15:14:23', '2015-01-21 15:14:23', '', 0, 'http://localhost/viecnha/?page_id=13', 0, 'page', '', 0),
(14, 1, '2015-01-21 14:16:11', '2015-01-21 14:16:11', '', 'Liên hệ', '', 'inherit', 'open', 'open', '', '13-revision-v1', '', '', '2015-01-21 14:16:11', '2015-01-21 14:16:11', '', 13, 'http://localhost/viecnha/?p=14', 0, 'revision', '', 0),
(15, 1, '2015-01-21 14:16:33', '2015-01-21 14:16:33', '<ul>\r\n	<li>Phát quang, dọn dẹp</li>\r\n	<li>Lau chùi bàn ghế nội thất</li>\r\n	<li>Trang trí nhà cửa</li>\r\n	<li>Làm việc theo yêu cầu</li>\r\n</ul>', 'Dọn nhà đón tết', '', 'publish', 'open', 'open', '', 'don-nha-don-tet', '', '', '2015-01-21 14:49:06', '2015-01-21 14:49:06', '', 7, 'http://localhost/viecnha/?page_id=15', 1, 'page', '', 0),
(16, 1, '2015-01-21 14:16:33', '2015-01-21 14:16:33', '', 'Dọn nhà đón tết', '', 'inherit', 'open', 'open', '', '15-revision-v1', '', '', '2015-01-21 14:16:33', '2015-01-21 14:16:33', '', 15, 'http://localhost/viecnha/?p=16', 0, 'revision', '', 0),
(17, 1, '2015-01-21 14:17:03', '2015-01-21 14:17:03', '<ul>\r\n	<li>Nấu ăn, giặt giũ, rửa bát</li>\r\n	<li>Chăm sóc trẻ con, người già</li>\r\n	<li>Quét dọn, lau chùi nhà cửa</li>\r\n	<li>Phục vụ theo yêu cầu</li>\r\n</ul>', 'Giúp việc theo giờ', '', 'publish', 'open', 'open', '', 'giup-viec-theo-gio', '', '', '2015-01-21 14:49:31', '2015-01-21 14:49:31', '', 7, 'http://localhost/viecnha/?page_id=17', 2, 'page', '', 0),
(18, 1, '2015-01-21 14:17:22', '2015-01-21 14:17:22', '<ul>\r\n	<li>Làm vệ sinh công nghiệp</li>\r\n	<li>các tòa nhà, chung cư,</li>\r\n	<li>văn phòng công ty mới xây</li>\r\n	<li>hoặc mới sửa</li>\r\n</ul>', 'Vệ sinh công nghiệp', '', 'publish', 'open', 'open', '', 've-sinh-cong-nghiep', '', '', '2015-01-21 14:49:50', '2015-01-21 14:49:50', '', 7, 'http://localhost/viecnha/?page_id=18', 3, 'page', '', 0),
(19, 1, '2015-01-21 14:17:40', '2015-01-21 14:17:40', '<ul>\r\n	<li>Vệ sinh dọn dẹp văn phòng</li>\r\n	<li>Tạp vụ văn phòng</li>\r\n	<li>Chuyển văn phòng trọn gói</li>\r\n	<li>Giúp việc theo yêu cầu</li>\r\n</ul>', 'Tạp vụ văn phòng', '', 'publish', 'open', 'open', '', 'tap-vu-van-phong', '', '', '2015-01-21 14:50:10', '2015-01-21 14:50:10', '', 7, 'http://localhost/viecnha/?page_id=19', 4, 'page', '', 0),
(20, 1, '2015-01-21 14:18:00', '2015-01-21 14:18:00', '<ul>\r\n	<li>Dịch vụ chuyển nhà trọn gói</li>\r\n	<li>bằng ô tô nhỏ hoặc xe</li>\r\n	<li>3 bánh với giá cực rẻ.</li>\r\n	<li>Nhanh gọn, cẩn thận, an toàn</li>\r\n</ul>', 'Chuyển nhà trọn gói', '', 'publish', 'open', 'open', '', 'chuyen-nha-tron-goi', '', '', '2015-01-21 14:50:33', '2015-01-21 14:50:33', '', 7, 'http://localhost/viecnha/?page_id=20', 5, 'page', '', 0),
(21, 1, '2015-01-21 14:18:13', '2015-01-21 14:18:13', '<ul>\r\n	<li>Cài win, ghost máy tính.</li>\r\n	<li>Diệt virus, sửa các lỗi</li>\r\n	<li>liên quan đến phần mềm.</li>\r\n	<li>Cài đặt các PM thông dụng.</li>\r\n</ul>', 'Sửa máy tính', '', 'publish', 'open', 'open', '', 'sua-may-tinh', '', '', '2015-01-21 14:50:51', '2015-01-21 14:50:51', '', 7, 'http://localhost/viecnha/?page_id=21', 6, 'page', '', 0),
(22, 1, '2015-01-21 14:17:03', '2015-01-21 14:17:03', '', 'Giúp việc theo giờ', '', 'inherit', 'open', 'open', '', '17-revision-v1', '', '', '2015-01-21 14:17:03', '2015-01-21 14:17:03', '', 17, 'http://localhost/viecnha/?p=22', 0, 'revision', '', 0),
(23, 1, '2015-01-21 14:17:22', '2015-01-21 14:17:22', '', 'Vệ sinh công nghiệp', '', 'inherit', 'open', 'open', '', '18-revision-v1', '', '', '2015-01-21 14:17:22', '2015-01-21 14:17:22', '', 18, 'http://localhost/viecnha/?p=23', 0, 'revision', '', 0),
(24, 1, '2015-01-21 14:17:40', '2015-01-21 14:17:40', '', 'Tạp vụ văn phòng', '', 'inherit', 'open', 'open', '', '19-revision-v1', '', '', '2015-01-21 14:17:40', '2015-01-21 14:17:40', '', 19, 'http://localhost/viecnha/?p=24', 0, 'revision', '', 0),
(25, 1, '2015-01-21 14:18:00', '2015-01-21 14:18:00', '', 'Chuyển nhà trọn gói', '', 'inherit', 'open', 'open', '', '20-revision-v1', '', '', '2015-01-21 14:18:00', '2015-01-21 14:18:00', '', 20, 'http://localhost/viecnha/?p=25', 0, 'revision', '', 0),
(26, 1, '2015-01-21 14:18:13', '2015-01-21 14:18:13', '', 'Sửa máy tính', '', 'inherit', 'open', 'open', '', '21-revision-v1', '', '', '2015-01-21 14:18:13', '2015-01-21 14:18:13', '', 21, 'http://localhost/viecnha/?p=26', 0, 'revision', '', 0),
(27, 1, '2015-01-21 14:19:45', '2015-01-21 14:19:45', '', 'Trang chủ', '', 'publish', 'open', 'open', '', 'trang-chu', '', '', '2015-01-21 15:48:30', '2015-01-21 15:48:30', '', 0, 'http://localhost/viecnha/?p=27', 1, 'nav_menu_item', '', 0),
(28, 1, '2015-01-21 14:19:47', '2015-01-21 14:19:47', ' ', '', '', 'publish', 'open', 'open', '', '28', '', '', '2015-01-21 15:48:31', '2015-01-21 15:48:31', '', 0, 'http://localhost/viecnha/?p=28', 11, 'nav_menu_item', '', 0),
(29, 1, '2015-01-21 14:19:46', '2015-01-21 14:19:46', ' ', '', '', 'publish', 'open', 'open', '', '29', '', '', '2015-01-21 15:48:30', '2015-01-21 15:48:30', '', 0, 'http://localhost/viecnha/?p=29', 3, 'nav_menu_item', '', 0),
(30, 1, '2015-01-21 14:19:46', '2015-01-21 14:19:46', ' ', '', '', 'publish', 'open', 'open', '', '30', '', '', '2015-01-21 15:48:30', '2015-01-21 15:48:30', '', 7, 'http://localhost/viecnha/?p=30', 4, 'nav_menu_item', '', 0),
(31, 1, '2015-01-21 14:19:46', '2015-01-21 14:19:46', ' ', '', '', 'publish', 'open', 'open', '', '31', '', '', '2015-01-21 15:48:30', '2015-01-21 15:48:30', '', 7, 'http://localhost/viecnha/?p=31', 5, 'nav_menu_item', '', 0),
(32, 1, '2015-01-21 14:19:46', '2015-01-21 14:19:46', ' ', '', '', 'publish', 'open', 'open', '', '32', '', '', '2015-01-21 15:48:30', '2015-01-21 15:48:30', '', 7, 'http://localhost/viecnha/?p=32', 6, 'nav_menu_item', '', 0),
(33, 1, '2015-01-21 14:19:47', '2015-01-21 14:19:47', ' ', '', '', 'publish', 'open', 'open', '', '33', '', '', '2015-01-21 15:48:30', '2015-01-21 15:48:30', '', 7, 'http://localhost/viecnha/?p=33', 7, 'nav_menu_item', '', 0),
(34, 1, '2015-01-21 14:19:47', '2015-01-21 14:19:47', ' ', '', '', 'publish', 'open', 'open', '', '34', '', '', '2015-01-21 15:48:30', '2015-01-21 15:48:30', '', 7, 'http://localhost/viecnha/?p=34', 8, 'nav_menu_item', '', 0),
(35, 1, '2015-01-21 14:19:47', '2015-01-21 14:19:47', ' ', '', '', 'publish', 'open', 'open', '', '35', '', '', '2015-01-21 15:48:30', '2015-01-21 15:48:30', '', 7, 'http://localhost/viecnha/?p=35', 9, 'nav_menu_item', '', 0),
(36, 1, '2015-01-21 14:19:45', '2015-01-21 14:19:45', ' ', '', '', 'publish', 'open', 'open', '', '36', '', '', '2015-01-21 15:48:30', '2015-01-21 15:48:30', '', 0, 'http://localhost/viecnha/?p=36', 2, 'nav_menu_item', '', 0),
(37, 1, '2015-01-21 14:19:48', '2015-01-21 14:19:48', ' ', '', '', 'publish', 'open', 'open', '', '37', '', '', '2015-01-21 15:48:31', '2015-01-21 15:48:31', '', 0, 'http://localhost/viecnha/?p=37', 12, 'nav_menu_item', '', 0),
(38, 1, '2015-01-21 14:19:47', '2015-01-21 14:19:47', ' ', '', '', 'publish', 'open', 'open', '', '38', '', '', '2015-01-21 15:48:31', '2015-01-21 15:48:31', '', 0, 'http://localhost/viecnha/?p=38', 10, 'nav_menu_item', '', 0),
(39, 1, '2015-01-21 14:27:03', '2015-01-21 14:27:03', 'Nhân viên giúp việc của chúng tôi là <strong>NỮ SINH VIÊN</strong> đến từ các trường đại học chính quy, có học thức, hiền lành chăm chỉ, có nhân thân rõ ràng. Luôn xuất trình <strong>GIẤY TỜ TÙY THÂN</strong> và thẻ nhân viên khi đến làm việc.', 'UY TÍN', '', 'publish', 'open', 'open', '', 'uy-tin', '', '', '2015-01-21 14:27:03', '2015-01-21 14:27:03', '', 0, 'http://localhost/viecnha/?page_id=39', 0, 'page', '', 0),
(40, 1, '2015-01-21 14:27:03', '2015-01-21 14:27:03', 'Nhân viên giúp việc của chúng tôi là <strong>NỮ SINH VIÊN</strong> đến từ các trường đại học chính quy, có học thức, hiền lành chăm chỉ, có nhân thân rõ ràng. Luôn xuất trình <strong>GIẤY TỜ TÙY THÂN</strong> và thẻ nhân viên khi đến làm việc.', 'UY TÍN', '', 'inherit', 'open', 'open', '', '39-revision-v1', '', '', '2015-01-21 14:27:03', '2015-01-21 14:27:03', '', 39, 'http://localhost/viecnha/?p=40', 0, 'revision', '', 0),
(41, 1, '2015-01-21 14:27:29', '2015-01-21 14:27:29', 'Việc nhà 365 luôn hướng đến sự <strong>CHUYÊN NGHIỆP</strong>, tuy nhiên vẫn giữ được sự <strong>THÂN TÌNH</strong>, <strong>GẦN GŨI</strong> với khách hàng. Hiểu được khách hàng, nắm được tâm tư mong muốn của họ.', 'CHUYÊN NGHIỆP', '', 'publish', 'open', 'open', '', 'chuyen-nghiep', '', '', '2015-01-21 14:27:29', '2015-01-21 14:27:29', '', 0, 'http://localhost/viecnha/?page_id=41', 0, 'page', '', 0),
(42, 1, '2015-01-21 14:27:29', '2015-01-21 14:27:29', 'Việc nhà 365 luôn hướng đến sự <strong>CHUYÊN NGHIỆP</strong>, tuy nhiên vẫn giữ được sự <strong>THÂN TÌNH</strong>, <strong>GẦN GŨI</strong> với khách hàng. Hiểu được khách hàng, nắm được tâm tư mong muốn của họ.', 'CHUYÊN NGHIỆP', '', 'inherit', 'open', 'open', '', '41-revision-v1', '', '', '2015-01-21 14:27:29', '2015-01-21 14:27:29', '', 41, 'http://localhost/viecnha/?p=42', 0, 'revision', '', 0),
(43, 1, '2015-01-21 14:27:48', '2015-01-21 14:27:48', 'Nhân viên của chúng tôi không nhiều nhưng được lựa chọn kỹ càng, có kinh nghiệm trong công việc. Làm việc <strong>TẬN TÌNH, ĐẾN NƠI ĐẾN CHỐN</strong>. 100% khách hàng hiện tại hài lòng với dịch vụ của chúng tôi', 'CHẤT LƯỢNG', '', 'publish', 'open', 'open', '', 'chat-luong', '', '', '2015-01-21 14:27:48', '2015-01-21 14:27:48', '', 0, 'http://localhost/viecnha/?page_id=43', 0, 'page', '', 0),
(44, 1, '2015-01-21 14:27:48', '2015-01-21 14:27:48', 'Nhân viên của chúng tôi không nhiều nhưng được lựa chọn kỹ càng, có kinh nghiệm trong công việc. Làm việc <strong>TẬN TÌNH, ĐẾN NƠI ĐẾN CHỐN</strong>. 100% khách hàng hiện tại hài lòng với dịch vụ của chúng tôi', 'CHẤT LƯỢNG', '', 'inherit', 'open', 'open', '', '43-revision-v1', '', '', '2015-01-21 14:27:48', '2015-01-21 14:27:48', '', 43, 'http://localhost/viecnha/?p=44', 0, 'revision', '', 0),
(45, 1, '2015-01-21 14:28:07', '2015-01-21 14:28:07', 'Chỉ với 50.000đ/h, quá tiết kiệm so với thuê giúp việc cố định. Mức giá cạnh tranh với các trung tâm và công ty khác. Ưu đãi lớn đối với những khách hàng ký <strong>HỢP ĐỒNG LÂU DÀI</strong>.', 'TIẾT KIỆM', '', 'publish', 'open', 'open', '', 'tiet-kiem', '', '', '2015-01-21 14:28:07', '2015-01-21 14:28:07', '', 0, 'http://localhost/viecnha/?page_id=45', 0, 'page', '', 0),
(46, 1, '2015-01-21 14:28:07', '2015-01-21 14:28:07', 'Chỉ với 50.000đ/h, quá tiết kiệm so với thuê giúp việc cố định. Mức giá cạnh tranh với các trung tâm và công ty khác. Ưu đãi lớn đối với những khách hàng ký <strong>HỢP ĐỒNG LÂU DÀI</strong>.', 'TIẾT KIỆM', '', 'inherit', 'open', 'open', '', '45-revision-v1', '', '', '2015-01-21 14:28:07', '2015-01-21 14:28:07', '', 45, 'http://localhost/viecnha/?p=46', 0, 'revision', '', 0),
(47, 1, '2015-01-21 14:41:29', '2015-01-21 14:41:29', '\n    Cài win, ghost máy tính.\n    Diệt virus, sửa các lỗi\n    liên quan đến phần mềm.\n    Cài đặt các PM thông dụng.\n', 'Sửa máy tính', '', 'inherit', 'open', 'open', '', '21-autosave-v1', '', '', '2015-01-21 14:41:29', '2015-01-21 14:41:29', '', 21, 'http://localhost/viecnha/?p=47', 0, 'revision', '', 0),
(48, 1, '2015-01-21 14:41:42', '2015-01-21 14:41:42', '<ul>\r\n	<li>Cài win, ghost máy tính.</li>\r\n	<li>Diệt virus, sửa các lỗi</li>\r\n	<li>liên quan đến phần mềm.</li>\r\n	<li>Cài đặt các PM thông dụng.</li>\r\n</ul>', 'Sửa máy tính', '', 'inherit', 'open', 'open', '', '21-revision-v1', '', '', '2015-01-21 14:41:42', '2015-01-21 14:41:42', '', 21, 'http://localhost/viecnha/?p=48', 0, 'revision', '', 0),
(49, 1, '2015-01-21 14:42:06', '2015-01-21 14:42:06', '<ul>\r\n	<li>Dịch vụ chuyển nhà trọn gói</li>\r\n	<li>bằng ô tô nhỏ hoặc xe</li>\r\n	<li>3 bánh với giá cực rẻ.</li>\r\n	<li>Nhanh gọn, cẩn thận, an toàn</li>\r\n</ul>', 'Chuyển nhà trọn gói', '', 'inherit', 'open', 'open', '', '20-revision-v1', '', '', '2015-01-21 14:42:06', '2015-01-21 14:42:06', '', 20, 'http://localhost/viecnha/?p=49', 0, 'revision', '', 0),
(50, 1, '2015-01-21 14:42:20', '2015-01-21 14:42:20', '<ul>\r\n	<li>Vệ sinh dọn dẹp văn phòng</li>\r\n	<li>Tạp vụ văn phòng</li>\r\n	<li>Chuyển văn phòng trọn gói</li>\r\n	<li>Giúp việc theo yêu cầu</li>\r\n</ul>', 'Tạp vụ văn phòng', '', 'inherit', 'open', 'open', '', '19-revision-v1', '', '', '2015-01-21 14:42:20', '2015-01-21 14:42:20', '', 19, 'http://localhost/viecnha/?p=50', 0, 'revision', '', 0),
(51, 1, '2015-01-21 14:42:31', '2015-01-21 14:42:31', '<ul>\r\n	<li>Làm vệ sinh công nghiệp</li>\r\n	<li>các tòa nhà, chung cư,</li>\r\n	<li>văn phòng công ty mới xây</li>\r\n	<li>hoặc mới sửa</li>\r\n</ul>', 'Vệ sinh công nghiệp', '', 'inherit', 'open', 'open', '', '18-revision-v1', '', '', '2015-01-21 14:42:31', '2015-01-21 14:42:31', '', 18, 'http://localhost/viecnha/?p=51', 0, 'revision', '', 0),
(52, 1, '2015-01-21 14:42:44', '2015-01-21 14:42:44', '<ul>\r\n	<li>Nấu ăn, giặt giũ, rửa bát</li>\r\n	<li>Chăm sóc trẻ con, người già</li>\r\n	<li>Quét dọn, lau chùi nhà cửa</li>\r\n	<li>Phục vụ theo yêu cầu</li>\r\n</ul>', 'Giúp việc theo giờ', '', 'inherit', 'open', 'open', '', '17-revision-v1', '', '', '2015-01-21 14:42:44', '2015-01-21 14:42:44', '', 17, 'http://localhost/viecnha/?p=52', 0, 'revision', '', 0),
(53, 1, '2015-01-21 14:43:01', '2015-01-21 14:43:01', '<ul>\r\n	<li>Phát quang, dọn dẹp</li>\r\n	<li>Lau chùi bàn ghế nội thất</li>\r\n	<li>Trang trí nhà cửa</li>\r\n	<li>Làm việc theo yêu cầu</li>\r\n</ul>', 'Dọn nhà đón tết', '', 'inherit', 'open', 'open', '', '15-revision-v1', '', '', '2015-01-21 14:43:01', '2015-01-21 14:43:01', '', 15, 'http://localhost/viecnha/?p=53', 0, 'revision', '', 0),
(54, 1, '2015-01-21 14:47:25', '2015-01-21 14:47:25', '<ul>\n<li>Phát quang, dọn dẹp</li>\n<li>Lau chùi bàn ghế nội thất</li>\n<li>Trang trí nhà cửa</li>\n<li>Làm việc theo yêu cầu</li>\n</ul>\n', 'Dọn nhà đón tết', '', 'inherit', 'open', 'open', '', '15-autosave-v1', '', '', '2015-01-21 14:47:25', '2015-01-21 14:47:25', '', 15, 'http://localhost/viecnha/?p=54', 0, 'revision', '', 0),
(55, 1, '2015-01-21 14:48:56', '2015-01-21 14:48:56', '', 's1', '', 'inherit', 'open', 'open', '', 's1', '', '', '2015-01-21 14:48:56', '2015-01-21 14:48:56', '', 15, 'http://localhost/viecnha/wp-content/uploads/2015/01/s1.png', 0, 'attachment', 'image/png', 0),
(56, 1, '2015-01-21 14:49:26', '2015-01-21 14:49:26', '', 's2', '', 'inherit', 'open', 'open', '', 's2', '', '', '2015-01-21 14:49:26', '2015-01-21 14:49:26', '', 17, 'http://localhost/viecnha/wp-content/uploads/2015/01/s2.png', 0, 'attachment', 'image/png', 0),
(57, 1, '2015-01-21 14:49:45', '2015-01-21 14:49:45', '', 's3', '', 'inherit', 'open', 'open', '', 's3', '', '', '2015-01-21 14:49:45', '2015-01-21 14:49:45', '', 18, 'http://localhost/viecnha/wp-content/uploads/2015/01/s3.png', 0, 'attachment', 'image/png', 0),
(58, 1, '2015-01-21 14:50:05', '2015-01-21 14:50:05', '', 's4', '', 'inherit', 'open', 'open', '', 's4', '', '', '2015-01-21 14:50:05', '2015-01-21 14:50:05', '', 19, 'http://localhost/viecnha/wp-content/uploads/2015/01/s4.png', 0, 'attachment', 'image/png', 0),
(59, 1, '2015-01-21 14:50:30', '2015-01-21 14:50:30', '', 's5', '', 'inherit', 'open', 'open', '', 's5', '', '', '2015-01-21 14:50:30', '2015-01-21 14:50:30', '', 20, 'http://localhost/viecnha/wp-content/uploads/2015/01/s5.png', 0, 'attachment', 'image/png', 0),
(60, 1, '2015-01-21 14:50:47', '2015-01-21 14:50:47', '', 's6', '', 'inherit', 'open', 'open', '', 's6', '', '', '2015-01-21 14:50:47', '2015-01-21 14:50:47', '', 21, 'http://localhost/viecnha/wp-content/uploads/2015/01/s6.png', 0, 'attachment', 'image/png', 0),
(61, 1, '2015-01-21 15:19:47', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-01-21 15:19:47', '0000-00-00 00:00:00', '', 0, 'http://localhost/viecnha/?post_type=contact&p=61', 0, 'contact', '', 0),
(62, 1, '2015-01-21 15:23:27', '2015-01-21 15:23:27', '', 'Lien he 1', 'noi dung lien he o day', 'publish', 'closed', 'closed', '', 'lien-he-1', '', '', '2015-01-21 15:26:00', '2015-01-21 15:26:00', '', 0, 'http://localhost/viecnha/?post_type=contact&#038;p=62', 0, 'contact', '', 0),
(63, 1, '2015-01-21 15:23:27', '2015-01-21 15:23:27', '', 'Lien he 1', 'noi dung lien he o day', 'inherit', 'open', 'open', '', '62-revision-v1', '', '', '2015-01-21 15:23:27', '2015-01-21 15:23:27', '', 62, 'http://localhost/viecnha/?p=63', 0, 'revision', '', 0),
(64, 1, '2015-01-21 15:26:31', '2015-01-21 15:26:31', '', 'contact_224', 'noi van cong', 'trash', 'open', 'open', '', 'contact_224', '', '', '2015-01-21 15:31:23', '2015-01-21 15:31:23', '', 0, 'http://localhost/viecnha/?post_type=contact&#038;p=64', 0, 'contact', '', 0),
(65, 1, '2015-01-21 15:30:06', '2015-01-21 15:30:06', '', 'contact_326', 'viec van cont', 'trash', 'open', 'open', '', 'contact_326', '', '', '2015-01-21 15:31:22', '2015-01-21 15:31:22', '', 0, 'http://localhost/viecnha/?post_type=contact&#038;p=65', 0, 'contact', '', 0),
(66, 1, '2015-01-21 15:31:22', '2015-01-21 15:31:22', '', 'contact_326', 'viec van cont', 'inherit', 'open', 'open', '', '65-revision-v1', '', '', '2015-01-21 15:31:22', '2015-01-21 15:31:22', '', 65, 'http://localhost/viecnha/?p=66', 0, 'revision', '', 0),
(67, 1, '2015-01-21 15:31:23', '2015-01-21 15:31:23', '', 'contact_224', 'noi van cong', 'inherit', 'open', 'open', '', '64-revision-v1', '', '', '2015-01-21 15:31:23', '2015-01-21 15:31:23', '', 64, 'http://localhost/viecnha/?p=67', 0, 'revision', '', 0),
(68, 1, '2015-01-21 15:35:09', '2015-01-21 15:35:09', '', 'Register Page', '', 'publish', 'open', 'open', '', 'register-page', '', '', '2015-01-21 15:35:09', '2015-01-21 15:35:09', '', 0, 'http://localhost/viecnha/?page_id=68', 0, 'page', '', 0),
(69, 1, '2015-01-21 15:35:09', '2015-01-21 15:35:09', '', 'Register Page', '', 'inherit', 'open', 'open', '', '68-revision-v1', '', '', '2015-01-21 15:35:09', '2015-01-21 15:35:09', '', 68, 'http://localhost/viecnha/?p=69', 0, 'revision', '', 0),
(70, 1, '2015-01-21 15:47:38', '2015-01-21 15:47:38', '', 'Auto Draft', '', 'trash', 'open', 'open', '', 'auto-draft', '', '', '2015-01-21 15:47:42', '2015-01-21 15:47:42', '', 0, 'http://localhost/viecnha/?post_type=contact&#038;p=70', 0, 'contact', '', 0),
(71, 1, '2015-01-21 15:47:42', '2015-01-21 15:47:42', '', 'Auto Draft', '', 'inherit', 'open', 'open', '', '70-revision-v1', '', '', '2015-01-21 15:47:42', '2015-01-21 15:47:42', '', 70, 'http://localhost/viecnha/?p=71', 0, 'revision', '', 0),
(72, 1, '2015-01-21 15:48:31', '2015-01-21 15:48:31', ' ', '', '', 'publish', 'open', 'open', '', '72', '', '', '2015-01-21 15:48:31', '2015-01-21 15:48:31', '', 0, 'http://localhost/viecnha/?p=72', 13, 'nav_menu_item', '', 0),
(73, 1, '2015-01-21 15:58:12', '2015-01-21 15:58:12', 'Tin tức mới nhất dịp tết Ất Mùi, nhào zô Tin tức mới nhất dịp tết Ất Mùi, nhào zôTin tức mới nhất dịp tết Ất Mùi, nhào zô Tin tức mới nhất dịp tết Ất Mùi, nhào zôTin tức mới nhất dịp tết Ất Mùi, nhào zô', 'Tin tức mới nhất dịp tết Ất Mùi, nhào zô', '', 'publish', 'open', 'open', '', 'tin-tuc-moi-nhat-dip-tet-at-mui-nhao-zo', '', '', '2015-01-21 15:58:12', '2015-01-21 15:58:12', '', 0, 'http://localhost/viecnha/?p=73', 0, 'post', '', 0),
(74, 1, '2015-01-21 15:58:08', '2015-01-21 15:58:08', '', 'Untitled-1', '', 'inherit', 'open', 'open', '', 'untitled-1', '', '', '2015-01-21 15:58:08', '2015-01-21 15:58:08', '', 73, 'http://localhost/viecnha/wp-content/uploads/2015/01/post-img.jpg', 0, 'attachment', 'image/jpeg', 0),
(75, 1, '2015-01-21 15:58:12', '2015-01-21 15:58:12', 'Tin tức mới nhất dịp tết Ất Mùi, nhào zô Tin tức mới nhất dịp tết Ất Mùi, nhào zôTin tức mới nhất dịp tết Ất Mùi, nhào zô Tin tức mới nhất dịp tết Ất Mùi, nhào zôTin tức mới nhất dịp tết Ất Mùi, nhào zô', 'Tin tức mới nhất dịp tết Ất Mùi, nhào zô', '', 'inherit', 'open', 'open', '', '73-revision-v1', '', '', '2015-01-21 15:58:12', '2015-01-21 15:58:12', '', 73, 'http://localhost/viecnha/?p=75', 0, 'revision', '', 0),
(76, 1, '2015-01-21 16:01:44', '2015-01-21 16:01:44', 'Tin tức mới nhất dịp tết Ất Mùi, nhào zô Tin tức mới nhất dịp tết Ất Mùi, nhào zôTin tức mới nhất dịp tết Ất Mùi, nhào zô Tin tức mới nhất dịp tết Ất Mùi, nhào zôTin tức mới nhất dịp tết Ất Mùi, nhào zô', 'Tin tức mới nhất dịp tết Ất Mùi, nhào zô', '', 'publish', 'open', 'open', '', 'tin-tuc-moi-nhat-dip-tet-at-mui-nhao-zo-2', '', '', '2015-01-21 16:01:57', '2015-01-21 16:01:57', '', 0, 'http://localhost/viecnha/?p=76', 0, 'post', '', 0),
(77, 1, '2015-01-21 16:01:40', '2015-01-21 16:01:40', '', 'customer', '', 'inherit', 'open', 'open', '', 'customer', '', '', '2015-01-21 16:01:40', '2015-01-21 16:01:40', '', 76, 'http://localhost/viecnha/wp-content/uploads/2015/01/customer.png', 0, 'attachment', 'image/png', 0),
(78, 1, '2015-01-21 16:01:44', '2015-01-21 16:01:44', 'Tin tức mới nhất dịp tết Ất Mùi, nhào zô Tin tức mới nhất dịp tết Ất Mùi, nhào zôTin tức mới nhất dịp tết Ất Mùi, nhào zô Tin tức mới nhất dịp tết Ất Mùi, nhào zôTin tức mới nhất dịp tết Ất Mùi, nhào zô', 'Tin tức mới nhất dịp tết Ất Mùi, nhào zô', '', 'inherit', 'open', 'open', '', '76-revision-v1', '', '', '2015-01-21 16:01:44', '2015-01-21 16:01:44', '', 76, 'http://localhost/viecnha/?p=78', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Main Menu', 'main-menu', 0),
(3, 'Tin tức', 'tin-tuc', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(27, 2, 0),
(28, 2, 0),
(29, 2, 0),
(30, 2, 0),
(31, 2, 0),
(32, 2, 0),
(33, 2, 0),
(34, 2, 0),
(35, 2, 0),
(36, 2, 0),
(37, 2, 0),
(38, 2, 0),
(72, 2, 0),
(73, 3, 0),
(76, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 13),
(3, 3, 'category', '', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'viec365'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp360_locks,wp390_widgets,wp410_dfw'),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'session_tokens', 'a:1:{s:64:"343a7745e84b5391a9b913f0c691bdb3d3f06f03c63e672e489e8946a79b33f5";a:4:{s:10:"expiration";i:1423058181;s:2:"ip";s:3:"::1";s:2:"ua";s:72:"Mozilla/5.0 (Windows NT 6.4; WOW64; rv:35.0) Gecko/20100101 Firefox/35.0";s:5:"login";i:1421848581;}}'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(16, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(17, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:8:"add-post";i:1;s:12:"add-post_tag";}'),
(18, 1, 'nav_menu_recently_edited', '2'),
(19, 1, 'wp_user-settings', 'editor=tinymce&libraryContent=browse'),
(20, 1, 'wp_user-settings-time', '1421851741');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'viec365', '$P$BY7AxeqX8T.5webiMOAlL51QSRk7IU1', 'viec365', 'skyfrost.07@gmail.com', '', '2015-01-21 13:56:03', '', 0, 'viec365');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
