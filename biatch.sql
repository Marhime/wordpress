-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mar. 13 mars 2018 à 11:06
-- Version du serveur :  10.1.26-MariaDB
-- Version de PHP :  7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `biatch`
--

-- --------------------------------------------------------

--
-- Structure de la table `monsite_commentmeta`
--

CREATE TABLE `monsite_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `monsite_comments`
--

CREATE TABLE `monsite_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `monsite_comments`
--

INSERT INTO `monsite_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un commentateur WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-03-12 09:50:43', '2018-03-12 08:50:43', 'Bonjour, ceci est un commentaire.\nPour débuter avec la modération, la modification et la suppression de commentaires, veuillez visiter l’écran des Commentaires dans le Tableau de bord.\nLes avatars des personnes qui commentent arrivent depuis <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `monsite_links`
--

CREATE TABLE `monsite_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `monsite_options`
--

CREATE TABLE `monsite_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `monsite_options`
--

INSERT INTO `monsite_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wordpress', 'yes'),
(2, 'home', 'http://localhost/wordpress', 'yes'),
(3, 'blogname', 'Mega site', 'yes'),
(4, 'blogdescription', 'Un site utilisant WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'maxime.joyes@gmail.com', 'yes'),
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
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'G \\h i \\m\\i\\n', 'yes'),
(25, 'links_updated_date_format', 'j F Y G \\h i \\m\\i\\n', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:113:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:10:\"concert/?$\";s:27:\"index.php?post_type=concert\";s:40:\"concert/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=concert&feed=$matches[1]\";s:35:\"concert/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=concert&feed=$matches[1]\";s:27:\"concert/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=concert&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:35:\"concert/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"concert/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"concert/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"concert/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"concert/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"concert/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"concert/([^/]+)/embed/?$\";s:40:\"index.php?concert=$matches[1]&embed=true\";s:28:\"concert/([^/]+)/trackback/?$\";s:34:\"index.php?concert=$matches[1]&tb=1\";s:48:\"concert/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?concert=$matches[1]&feed=$matches[2]\";s:43:\"concert/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?concert=$matches[1]&feed=$matches[2]\";s:36:\"concert/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?concert=$matches[1]&paged=$matches[2]\";s:43:\"concert/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?concert=$matches[1]&cpage=$matches[2]\";s:32:\"concert/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?concert=$matches[1]&page=$matches[2]\";s:24:\"concert/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"concert/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"concert/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"concert/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"concert/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"concert/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=40&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:6:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";i:2;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";i:3;s:31:\"easy-fancybox/easy-fancybox.php\";i:4;s:39:\"sf-adminbar-tools/sf-adminbar-tools.php\";i:5;s:31:\"wp-google-maps/wpGoogleMaps.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:69:\"C:\\xampp\\htdocs\\wordpress/wp-content/themes/twentyseventeen/style.css\";i:1;s:0:\"\";}', 'no'),
(40, 'template', 'bootstrap-basic4', 'yes'),
(41, 'stylesheet', 'basic-child', 'yes'),
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
(53, 'show_on_front', 'page', 'yes'),
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
(66, 'image_default_link_type', '', 'yes'),
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
(78, 'widget_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:5:{i:2;a:4:{s:5:\"title\";s:14:\"Retrouvez-nous\";s:4:\"text\";s:189:\"<strong>Adresse</strong>\nAvenue des Champs-Élysées\n75008, Paris\n\n<strong>Heures d’ouverture</strong>\nDu lundi au vendredi : 9h00&ndash;17h00\nLes samedi et dimanche : 11h00&ndash;15h00\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:3;a:4:{s:5:\"title\";s:20:\"À propos de ce site\";s:4:\"text\";s:99:\"C’est peut-être le bon endroit pour vous présenter et votre site ou insérer quelques crédits.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:4;a:4:{s:5:\"title\";s:14:\"Retrouvez-nous\";s:4:\"text\";s:189:\"<strong>Adresse</strong>\nAvenue des Champs-Élysées\n75008, Paris\n\n<strong>Heures d’ouverture</strong>\nDu lundi au vendredi : 9h00&ndash;17h00\nLes samedi et dimanche : 11h00&ndash;15h00\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:5;a:4:{s:5:\"title\";s:20:\"À propos de ce site\";s:4:\"text\";s:99:\"C’est peut-être le bon endroit pour vous présenter et votre site ou insérer quelques crédits.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'Europe/Paris', 'yes'),
(83, 'page_for_posts', '42', 'yes'),
(84, 'page_on_front', '40', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'monsite_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'WPLANG', 'fr_FR', 'yes'),
(95, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:8:{s:19:\"wp_inactive_widgets\";a:4:{i:0;s:6:\"text-2\";i:1;s:6:\"text-3\";i:2;s:6:\"text-4\";i:3;s:6:\"text-5\";}s:12:\"sidebar-left\";a:0:{}s:13:\"sidebar-right\";a:1:{i:0;s:10:\"calendar-2\";}s:12:\"header-right\";a:0:{}s:12:\"navbar-right\";a:0:{}s:11:\"footer-left\";a:0:{}s:12:\"footer-right\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'cron', 'a:4:{i:1520974244;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1521017457;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1521018537;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(111, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1520845534;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(125, '_site_transient_timeout_browser_999265f691573e2522f30b8de8fa5306', '1521449458', 'no'),
(126, '_site_transient_browser_999265f691573e2522f30b8de8fa5306', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"64.0.3282.186\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(140, 'can_compress_scripts', '1', 'no'),
(156, 'current_theme', 'Basic Child', 'yes'),
(157, 'theme_mods_bootstrap-basic4', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1520847871;s:4:\"data\";a:7:{s:19:\"wp_inactive_widgets\";a:4:{i:0;s:6:\"text-2\";i:1;s:6:\"text-3\";i:2;s:6:\"text-4\";i:3;s:6:\"text-5\";}s:12:\"sidebar-left\";a:0:{}s:13:\"sidebar-right\";a:1:{i:0;s:10:\"calendar-2\";}s:12:\"header-right\";a:0:{}s:12:\"navbar-right\";a:0:{}s:11:\"footer-left\";a:0:{}s:12:\"footer-right\";a:0:{}}}}', 'yes'),
(158, 'theme_switched', '', 'yes'),
(160, 'theme_mods_twentyfifteen', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1520845724;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:4:{i:0;s:6:\"text-2\";i:1;s:6:\"text-3\";i:2;s:6:\"text-4\";i:3;s:6:\"text-5\";}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(165, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(167, '_transient_timeout_plugin_slugs', '1521019847', 'no'),
(168, '_transient_plugin_slugs', 'a:7:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:19:\"akismet/akismet.php\";i:2;s:36:\"contact-form-7/wp-contact-form-7.php\";i:3;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";i:4;s:31:\"easy-fancybox/easy-fancybox.php\";i:5;s:9:\"hello.php\";i:6;s:39:\"sf-adminbar-tools/sf-adminbar-tools.php\";}', 'no'),
(169, 'recently_activated', 'a:0:{}', 'yes'),
(174, '_sf_abt', 'a:1:{s:9:\"coworkers\";a:1:{i:1;i:1;}}', 'yes'),
(178, 'theme_mods_basic-child', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(183, 'acf_version', '4.4.12', 'yes'),
(192, 'wpcf7', 'a:3:{s:7:\"version\";s:5:\"5.0.1\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";d:1520868416;s:7:\"version\";s:5:\"5.0.1\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}s:9:\"recaptcha\";a:1:{s:40:\"6LcVLEwUAAAAAFD2Pn_m-M0cHtVDSZCqVSuZrT_j\";s:40:\"6LcVLEwUAAAAAP-A2oqxAdg61icgP0cR0e7MJxbx\";}}', 'yes'),
(194, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-4.9.4.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-4.9.4.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.4\";s:7:\"version\";s:5:\"4.9.4\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1520933472;s:15:\"version_checked\";s:5:\"4.9.4\";s:12:\"translations\";a:0:{}}', 'no'),
(196, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1520933473;s:7:\"checked\";a:5:{s:11:\"basic-child\";s:3:\"1.0\";s:16:\"bootstrap-basic4\";s:5:\"1.0.2\";s:13:\"twentyfifteen\";s:3:\"1.9\";s:15:\"twentyseventeen\";s:3:\"1.4\";s:13:\"twentysixteen\";s:3:\"1.4\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(199, 'fancybox_enableImg', '1', 'yes'),
(200, 'fancybox_enableInline', '', 'yes'),
(201, 'fancybox_enablePDF', '', 'yes'),
(202, 'fancybox_enableSWF', '', 'yes'),
(203, 'fancybox_enableSVG', '', 'yes'),
(204, 'fancybox_enableYoutube', '', 'yes'),
(205, 'fancybox_enableVimeo', '', 'yes'),
(206, 'fancybox_enableDailymotion', '', 'yes'),
(207, 'fancybox_enableiFrame', '', 'yes'),
(208, 'fancybox_overlayShow', '1', 'yes'),
(209, 'fancybox_hideOnOverlayClick', '1', 'yes'),
(210, 'fancybox_overlayOpacity', '', 'yes'),
(211, 'fancybox_overlayColor', '', 'yes'),
(212, 'fancybox_overlaySpotlight', '', 'yes'),
(213, 'fancybox_showCloseButton', '1', 'yes'),
(214, 'fancybox_backgroundColor', '', 'yes'),
(215, 'fancybox_textColor', '', 'yes'),
(216, 'fancybox_titleColor', '', 'yes'),
(217, 'fancybox_paddingColor', '', 'yes'),
(218, 'fancybox_borderRadius', '', 'yes'),
(219, 'fancybox_width', '', 'yes'),
(220, 'fancybox_height', '', 'yes'),
(221, 'fancybox_padding', '', 'yes'),
(222, 'fancybox_margin', '20', 'yes'),
(223, 'fancybox_centerOnScroll', '1', 'yes'),
(224, 'fancybox_enableEscapeButton', '1', 'yes'),
(225, 'fancybox_autoScale', '1', 'yes'),
(226, 'fancybox_speedIn', '', 'yes'),
(227, 'fancybox_speedOut', '', 'yes'),
(228, 'fancybox_autoClick', '1', 'yes'),
(229, 'fancybox_delayClick', '1000', 'yes'),
(230, 'fancybox_compatIE8', '', 'yes'),
(231, 'fancybox_metaData', '', 'yes'),
(232, 'fancybox_autoAttribute', '.jpg .jpeg .png .webp', 'yes'),
(233, 'fancybox_autoAttributeLimit', '', 'yes'),
(234, 'fancybox_classType', '', 'yes'),
(235, 'fancybox_transitionIn', '', 'yes'),
(236, 'fancybox_easingIn', 'easeOutBack', 'yes'),
(237, 'fancybox_transitionOut', '', 'yes'),
(238, 'fancybox_easingOut', 'easeOutBack', 'yes'),
(239, 'fancybox_opacity', '', 'yes'),
(240, 'fancybox_hideOnContentClick', '', 'yes'),
(241, 'fancybox_titleShow', '1', 'yes'),
(242, 'fancybox_titlePosition', 'over', 'yes'),
(243, 'fancybox_titleFromAlt', '1', 'yes'),
(244, 'fancybox_autoGallery', '1', 'yes'),
(245, 'fancybox_showNavArrows', '1', 'yes'),
(246, 'fancybox_enableKeyboardNav', '1', 'yes'),
(247, 'fancybox_mouseWheel', '1', 'yes'),
(248, 'fancybox_cyclic', '', 'yes'),
(249, 'fancybox_changeSpeed', '', 'yes'),
(250, 'fancybox_changeFade', '', 'yes'),
(251, 'fancybox_autoSelector', 'div.gallery', 'yes'),
(260, 'cptui_new_install', 'false', 'yes'),
(261, 'cptui_post_types', 'a:1:{s:7:\"concert\";a:28:{s:4:\"name\";s:7:\"concert\";s:5:\"label\";s:8:\"Concerts\";s:14:\"singular_label\";s:7:\"Concert\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:12:\"show_in_rest\";s:5:\"false\";s:9:\"rest_base\";s:0:\"\";s:11:\"has_archive\";s:4:\"true\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:22:\"dashicons-format-audio\";s:8:\"supports\";a:5:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";i:3;s:8:\"comments\";i:4;s:15:\"page-attributes\";}s:10:\"taxonomies\";a:2:{i:0;s:8:\"category\";i:1;s:8:\"post_tag\";}s:6:\"labels\";a:23:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}}', 'yes'),
(265, 'category_children', 'a:0:{}', 'yes'),
(274, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1520944252', 'no'),
(275, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:\"stdClass\":100:{s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4438;}s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:2642;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2543;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2408;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:1856;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1637;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1630;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1447;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1384;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1380;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1378;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1301;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1280;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1184;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1088;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1056;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:1014;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:993;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:868;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:862;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:823;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:797;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:791;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:698;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:689;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:682;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:674;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:671;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:654;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:651;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:639;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:636;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:631;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:609;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:608;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:599;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:599;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:587;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:584;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:584;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:558;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:545;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:535;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:530;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:519;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:512;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:510;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:504;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:489;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:486;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:485;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:484;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:478;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:470;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:464;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:462;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:453;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:451;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:435;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:426;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:423;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:418;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:416;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:416;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:410;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:410;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:402;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:396;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:390;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:383;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:375;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:361;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:355;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:353;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:350;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:343;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:341;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:339;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:337;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:335;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:334;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:334;}s:4:\"list\";a:3:{s:4:\"name\";s:4:\"list\";s:4:\"slug\";s:4:\"list\";s:5:\"count\";i:333;}s:3:\"url\";a:3:{s:4:\"name\";s:3:\"url\";s:4:\"slug\";s:3:\"url\";s:5:\"count\";i:330;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:328;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:325;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:316;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:310;}s:16:\"custom-post-type\";a:3:{s:4:\"name\";s:16:\"custom post type\";s:4:\"slug\";s:16:\"custom-post-type\";s:5:\"count\";i:305;}s:6:\"simple\";a:3:{s:4:\"name\";s:6:\"simple\";s:4:\"slug\";s:6:\"simple\";s:5:\"count\";i:302;}s:11:\"advertising\";a:3:{s:4:\"name\";s:11:\"advertising\";s:4:\"slug\";s:11:\"advertising\";s:5:\"count\";i:302;}s:3:\"tag\";a:3:{s:4:\"name\";s:3:\"tag\";s:4:\"slug\";s:3:\"tag\";s:5:\"count\";i:300;}s:7:\"adsense\";a:3:{s:4:\"name\";s:7:\"adsense\";s:4:\"slug\";s:7:\"adsense\";s:5:\"count\";i:295;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:292;}s:4:\"html\";a:3:{s:4:\"name\";s:4:\"html\";s:4:\"slug\";s:4:\"html\";s:5:\"count\";i:292;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:290;}s:6:\"author\";a:3:{s:4:\"name\";s:6:\"author\";s:4:\"slug\";s:6:\"author\";s:5:\"count\";i:288;}s:16:\"google-analytics\";a:3:{s:4:\"name\";s:16:\"google analytics\";s:4:\"slug\";s:16:\"google-analytics\";s:5:\"count\";i:287;}s:8:\"lightbox\";a:3:{s:4:\"name\";s:8:\"lightbox\";s:4:\"slug\";s:8:\"lightbox\";s:5:\"count\";i:285;}s:11:\"performance\";a:3:{s:4:\"name\";s:11:\"performance\";s:4:\"slug\";s:11:\"performance\";s:5:\"count\";i:285;}}', 'no'),
(277, '_site_transient_timeout_theme_roots', '1520935273', 'no'),
(278, '_site_transient_theme_roots', 'a:5:{s:11:\"basic-child\";s:7:\"/themes\";s:16:\"bootstrap-basic4\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no');
INSERT INTO `monsite_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(279, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1520933476;s:7:\"checked\";a:8:{s:30:\"advanced-custom-fields/acf.php\";s:6:\"4.4.12\";s:19:\"akismet/akismet.php\";s:5:\"4.0.2\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.0.1\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:5:\"1.5.7\";s:31:\"easy-fancybox/easy-fancybox.php\";s:5:\"1.6.2\";s:9:\"hello.php\";s:3:\"1.6\";s:39:\"sf-adminbar-tools/sf-adminbar-tools.php\";s:5:\"3.0.4\";s:31:\"wp-google-maps/wpGoogleMaps.php\";s:6:\"6.4.10\";}s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":11:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.3.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:7:\"default\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";s:7:\"default\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:7:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:6:\"4.4.12\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.4.4.12.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:7:\"default\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:7:\"default\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.0.1\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.0.1.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:7:\"default\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";s:7:\"default\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";}s:11:\"banners_rtl\";a:0:{}}s:43:\"custom-post-type-ui/custom-post-type-ui.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:33:\"w.org/plugins/custom-post-type-ui\";s:4:\"slug\";s:19:\"custom-post-type-ui\";s:6:\"plugin\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:11:\"new_version\";s:5:\"1.5.7\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/custom-post-type-ui/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.5.7.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=1069557\";s:2:\"2x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=1069557\";s:7:\"default\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=1069557\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:75:\"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=1069557\";s:2:\"1x\";s:74:\"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=1069557\";s:7:\"default\";s:75:\"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=1069557\";}s:11:\"banners_rtl\";a:0:{}}s:31:\"easy-fancybox/easy-fancybox.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:27:\"w.org/plugins/easy-fancybox\";s:4:\"slug\";s:13:\"easy-fancybox\";s:6:\"plugin\";s:31:\"easy-fancybox/easy-fancybox.php\";s:11:\"new_version\";s:5:\"1.6.2\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/easy-fancybox/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/easy-fancybox.1.6.2.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:66:\"https://ps.w.org/easy-fancybox/assets/icon-128x128.png?rev=1112136\";s:7:\"default\";s:66:\"https://ps.w.org/easy-fancybox/assets/icon-128x128.png?rev=1112136\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:68:\"https://ps.w.org/easy-fancybox/assets/banner-772x250.jpg?rev=1112136\";s:7:\"default\";s:68:\"https://ps.w.org/easy-fancybox/assets/banner-772x250.jpg?rev=1112136\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:7:\"default\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";s:7:\"default\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}s:39:\"sf-adminbar-tools/sf-adminbar-tools.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:31:\"w.org/plugins/sf-adminbar-tools\";s:4:\"slug\";s:17:\"sf-adminbar-tools\";s:6:\"plugin\";s:39:\"sf-adminbar-tools/sf-adminbar-tools.php\";s:11:\"new_version\";s:5:\"3.0.4\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/sf-adminbar-tools/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/sf-adminbar-tools.zip\";s:5:\"icons\";a:0:{}s:7:\"banners\";a:3:{s:2:\"2x\";s:73:\"https://ps.w.org/sf-adminbar-tools/assets/banner-1544x500.jpg?rev=1286676\";s:2:\"1x\";s:72:\"https://ps.w.org/sf-adminbar-tools/assets/banner-772x250.jpg?rev=1286676\";s:7:\"default\";s:73:\"https://ps.w.org/sf-adminbar-tools/assets/banner-1544x500.jpg?rev=1286676\";}s:11:\"banners_rtl\";a:3:{s:2:\"2x\";s:77:\"https://ps.w.org/sf-adminbar-tools/assets/banner-1544x500-rtl.jpg?rev=1286676\";s:2:\"1x\";s:76:\"https://ps.w.org/sf-adminbar-tools/assets/banner-772x250-rtl.jpg?rev=1286676\";s:7:\"default\";s:77:\"https://ps.w.org/sf-adminbar-tools/assets/banner-1544x500-rtl.jpg?rev=1286676\";}}s:31:\"wp-google-maps/wpGoogleMaps.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/wp-google-maps\";s:4:\"slug\";s:14:\"wp-google-maps\";s:6:\"plugin\";s:31:\"wp-google-maps/wpGoogleMaps.php\";s:11:\"new_version\";s:6:\"6.4.10\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/wp-google-maps/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/wp-google-maps.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:66:\"https://ps.w.org/wp-google-maps/assets/icon-128x128.png?rev=970398\";s:2:\"2x\";s:66:\"https://ps.w.org/wp-google-maps/assets/icon-256x256.png?rev=970398\";s:7:\"default\";s:66:\"https://ps.w.org/wp-google-maps/assets/icon-256x256.png?rev=970398\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:68:\"https://ps.w.org/wp-google-maps/assets/banner-772x250.jpg?rev=792293\";s:7:\"default\";s:68:\"https://ps.w.org/wp-google-maps/assets/banner-772x250.jpg?rev=792293\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(280, 'wpgmza_temp_api', 'AIzaSyChPphumyabdfggISDNBuGOlGVBgEvZnGE', 'yes'),
(281, 'wpgmza_xml_location', '{uploads_dir}/wp-google-maps/', 'yes'),
(282, 'wpgmza_xml_url', '{uploads_url}/wp-google-maps/', 'yes'),
(283, 'wpgmza_db_version', '6.4.10', 'yes'),
(284, 'wpgmaps_current_version', '6.4.10', 'yes'),
(285, 'WPGM_V6_FIRST_TIME', '1', 'yes'),
(286, 'widget_wpgmza_map_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(287, 'WPGMZA_OTHER_SETTINGS', 'a:1:{s:27:\"wpgmza_settings_marker_pull\";s:1:\"0\";}', 'yes'),
(288, 'WPGMZA_FIRST_TIME', '6.4.10', 'yes'),
(289, 'wpgmza_stats', 'a:2:{s:15:\"list_maps_basic\";a:3:{s:5:\"views\";i:4;s:13:\"last_accessed\";s:19:\"2018-03-13 10:02:16\";s:14:\"first_accessed\";s:19:\"2018-03-13 09:32:07\";}s:9:\"dashboard\";a:3:{s:5:\"views\";i:5;s:13:\"last_accessed\";s:19:\"2018-03-13 10:02:18\";s:14:\"first_accessed\";s:19:\"2018-03-13 09:34:33\";}}', 'yes'),
(290, 'wpgmza_google_maps_api_key', 'AIzaSyA8eTP2HaBXsS5kpc5LxtRIWRG0CJXzcws', 'yes'),
(291, 'WPGMZA_SETTINGS', 'a:10:{s:24:\"map_default_starting_lat\";s:10:\"48.8905829\";s:24:\"map_default_starting_lng\";s:18:\"2.3917436000000407\";s:18:\"map_default_height\";s:3:\"400\";s:17:\"map_default_width\";s:3:\"100\";s:16:\"map_default_zoom\";i:5;s:20:\"map_default_max_zoom\";i:1;s:16:\"map_default_type\";i:1;s:21:\"map_default_alignment\";i:1;s:22:\"map_default_width_type\";s:2:\"\\%\";s:23:\"map_default_height_type\";s:2:\"px\";}', 'yes');

-- --------------------------------------------------------

--
-- Structure de la table `monsite_postmeta`
--

CREATE TABLE `monsite_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `monsite_postmeta`
--

INSERT INTO `monsite_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_wp_attached_file', '2018/03/espresso.jpg'),
(3, 4, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:20:\"2018/03/espresso.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"espresso-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"espresso-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"espresso-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"espresso-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:20:\"espresso-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(4, 4, '_starter_content_theme', 'twentyseventeen'),
(5, 4, '_customize_draft_post_name', 'expresso'),
(6, 5, '_wp_attached_file', '2018/03/sandwich.jpg'),
(7, 5, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:20:\"2018/03/sandwich.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"sandwich-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"sandwich-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"sandwich-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"sandwich-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:20:\"sandwich-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(8, 5, '_starter_content_theme', 'twentyseventeen'),
(9, 5, '_customize_draft_post_name', 'sandwich'),
(10, 6, '_wp_attached_file', '2018/03/coffee.jpg'),
(11, 6, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:18:\"2018/03/coffee.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"coffee-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"coffee-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"coffee-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"coffee-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:18:\"coffee-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(12, 6, '_starter_content_theme', 'twentyseventeen'),
(13, 6, '_customize_draft_post_name', 'cafe'),
(14, 7, '_customize_draft_post_name', 'accueil'),
(15, 7, '_customize_changeset_uuid', '373e5fa3-54ec-45af-969f-271266044cba'),
(16, 8, '_thumbnail_id', '5'),
(17, 8, '_customize_draft_post_name', 'a-propos-de'),
(18, 8, '_customize_changeset_uuid', '373e5fa3-54ec-45af-969f-271266044cba'),
(19, 9, '_thumbnail_id', '4'),
(20, 9, '_customize_draft_post_name', 'contact'),
(21, 9, '_customize_changeset_uuid', '373e5fa3-54ec-45af-969f-271266044cba'),
(22, 10, '_thumbnail_id', '6'),
(23, 10, '_customize_draft_post_name', 'blog'),
(24, 10, '_customize_changeset_uuid', '373e5fa3-54ec-45af-969f-271266044cba'),
(25, 11, '_thumbnail_id', '4'),
(26, 11, '_customize_draft_post_name', 'une-section-de-page-daccueil'),
(27, 11, '_customize_changeset_uuid', '373e5fa3-54ec-45af-969f-271266044cba'),
(28, 13, '_wp_attached_file', '2018/03/espresso-1.jpg'),
(29, 13, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:22:\"2018/03/espresso-1.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"espresso-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"espresso-1-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"espresso-1-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"espresso-1-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:22:\"espresso-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(30, 13, '_starter_content_theme', 'twentyseventeen'),
(31, 13, '_customize_draft_post_name', 'expresso'),
(32, 14, '_wp_attached_file', '2018/03/sandwich-1.jpg'),
(33, 14, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:22:\"2018/03/sandwich-1.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"sandwich-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"sandwich-1-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"sandwich-1-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"sandwich-1-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:22:\"sandwich-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(34, 14, '_starter_content_theme', 'twentyseventeen'),
(35, 14, '_customize_draft_post_name', 'sandwich'),
(36, 15, '_wp_attached_file', '2018/03/coffee-1.jpg'),
(37, 15, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:20:\"2018/03/coffee-1.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"coffee-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"coffee-1-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"coffee-1-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"coffee-1-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:20:\"coffee-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(38, 15, '_starter_content_theme', 'twentyseventeen'),
(39, 15, '_customize_draft_post_name', 'cafe'),
(40, 16, '_customize_draft_post_name', 'accueil'),
(41, 16, '_customize_changeset_uuid', '8ef27612-47ec-4343-b93b-0d9f5afbb524'),
(42, 17, '_thumbnail_id', '14'),
(43, 17, '_customize_draft_post_name', 'a-propos-de'),
(44, 17, '_customize_changeset_uuid', '8ef27612-47ec-4343-b93b-0d9f5afbb524'),
(45, 18, '_thumbnail_id', '13'),
(46, 18, '_customize_draft_post_name', 'contact'),
(47, 18, '_customize_changeset_uuid', '8ef27612-47ec-4343-b93b-0d9f5afbb524'),
(48, 19, '_thumbnail_id', '15'),
(49, 19, '_customize_draft_post_name', 'blog'),
(50, 19, '_customize_changeset_uuid', '8ef27612-47ec-4343-b93b-0d9f5afbb524'),
(51, 20, '_thumbnail_id', '13'),
(52, 20, '_customize_draft_post_name', 'une-section-de-page-daccueil'),
(53, 20, '_customize_changeset_uuid', '8ef27612-47ec-4343-b93b-0d9f5afbb524'),
(55, 12, '_customize_restore_dismissed', '1'),
(56, 22, '_wp_attached_file', '2018/03/espresso-2.jpg'),
(57, 22, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:22:\"2018/03/espresso-2.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"espresso-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"espresso-2-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"espresso-2-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"espresso-2-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:22:\"espresso-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(58, 22, '_starter_content_theme', 'twentyseventeen'),
(59, 22, '_customize_draft_post_name', 'expresso'),
(60, 23, '_wp_attached_file', '2018/03/sandwich-2.jpg'),
(61, 23, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:22:\"2018/03/sandwich-2.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"sandwich-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"sandwich-2-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"sandwich-2-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"sandwich-2-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:22:\"sandwich-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(62, 23, '_starter_content_theme', 'twentyseventeen'),
(63, 23, '_customize_draft_post_name', 'sandwich'),
(64, 24, '_wp_attached_file', '2018/03/coffee-2.jpg'),
(65, 24, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:20:\"2018/03/coffee-2.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"coffee-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"coffee-2-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"coffee-2-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"coffee-2-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:20:\"coffee-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(66, 24, '_starter_content_theme', 'twentyseventeen'),
(67, 24, '_customize_draft_post_name', 'cafe'),
(68, 25, '_customize_draft_post_name', 'accueil'),
(69, 25, '_customize_changeset_uuid', '12cd2bb1-3aae-4451-86a9-92c075f39653'),
(70, 26, '_thumbnail_id', '23'),
(71, 26, '_customize_draft_post_name', 'a-propos-de'),
(72, 26, '_customize_changeset_uuid', '12cd2bb1-3aae-4451-86a9-92c075f39653'),
(73, 27, '_thumbnail_id', '22'),
(74, 27, '_customize_draft_post_name', 'contact'),
(75, 27, '_customize_changeset_uuid', '12cd2bb1-3aae-4451-86a9-92c075f39653'),
(76, 28, '_thumbnail_id', '24'),
(77, 28, '_customize_draft_post_name', 'blog'),
(78, 28, '_customize_changeset_uuid', '12cd2bb1-3aae-4451-86a9-92c075f39653'),
(79, 29, '_thumbnail_id', '22'),
(80, 29, '_customize_draft_post_name', 'une-section-de-page-daccueil'),
(81, 29, '_customize_changeset_uuid', '12cd2bb1-3aae-4451-86a9-92c075f39653'),
(82, 31, '_wp_attached_file', '2018/03/espresso-3.jpg'),
(83, 31, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:22:\"2018/03/espresso-3.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"espresso-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"espresso-3-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"espresso-3-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"espresso-3-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:22:\"espresso-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(84, 31, '_starter_content_theme', 'twentyseventeen'),
(85, 31, '_customize_draft_post_name', 'expresso'),
(86, 32, '_wp_attached_file', '2018/03/sandwich-3.jpg'),
(87, 32, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:22:\"2018/03/sandwich-3.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"sandwich-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"sandwich-3-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"sandwich-3-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"sandwich-3-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:22:\"sandwich-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(88, 32, '_starter_content_theme', 'twentyseventeen'),
(89, 32, '_customize_draft_post_name', 'sandwich'),
(90, 33, '_wp_attached_file', '2018/03/coffee-3.jpg'),
(91, 33, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:20:\"2018/03/coffee-3.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"coffee-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"coffee-3-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"coffee-3-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"coffee-3-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:20:\"coffee-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(92, 33, '_starter_content_theme', 'twentyseventeen'),
(93, 33, '_customize_draft_post_name', 'cafe'),
(94, 34, '_customize_draft_post_name', 'accueil'),
(95, 34, '_customize_changeset_uuid', '6c901573-0561-49c6-a03b-600e402a4a69'),
(96, 35, '_thumbnail_id', '32'),
(97, 35, '_customize_draft_post_name', 'a-propos-de'),
(98, 35, '_customize_changeset_uuid', '6c901573-0561-49c6-a03b-600e402a4a69'),
(99, 36, '_thumbnail_id', '31'),
(100, 36, '_customize_draft_post_name', 'contact'),
(101, 36, '_customize_changeset_uuid', '6c901573-0561-49c6-a03b-600e402a4a69'),
(102, 37, '_thumbnail_id', '33'),
(103, 37, '_customize_draft_post_name', 'blog'),
(104, 37, '_customize_changeset_uuid', '6c901573-0561-49c6-a03b-600e402a4a69'),
(105, 38, '_thumbnail_id', '31'),
(106, 38, '_customize_draft_post_name', 'une-section-de-page-daccueil'),
(107, 38, '_customize_changeset_uuid', '6c901573-0561-49c6-a03b-600e402a4a69'),
(108, 30, '_customize_restore_dismissed', '1'),
(109, 21, '_customize_restore_dismissed', '1'),
(110, 39, '_customize_restore_dismissed', '1'),
(111, 40, '_edit_last', '1'),
(112, 40, '_edit_lock', '1520932782:1'),
(113, 42, '_edit_last', '1'),
(114, 42, '_edit_lock', '1520845660:1'),
(115, 44, '_menu_item_type', 'post_type'),
(116, 44, '_menu_item_menu_item_parent', '0'),
(117, 44, '_menu_item_object_id', '40'),
(118, 44, '_menu_item_object', 'page'),
(119, 44, '_menu_item_target', ''),
(120, 44, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(121, 44, '_menu_item_xfn', ''),
(122, 44, '_menu_item_url', ''),
(123, 44, '_menu_item_orphaned', '1520845955'),
(124, 45, '_menu_item_type', 'post_type'),
(125, 45, '_menu_item_menu_item_parent', '0'),
(126, 45, '_menu_item_object_id', '40'),
(127, 45, '_menu_item_object', 'page'),
(128, 45, '_menu_item_target', ''),
(129, 45, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(130, 45, '_menu_item_xfn', ''),
(131, 45, '_menu_item_url', ''),
(132, 45, '_menu_item_orphaned', '1520845955'),
(133, 46, '_menu_item_type', 'post_type'),
(134, 46, '_menu_item_menu_item_parent', '0'),
(135, 46, '_menu_item_object_id', '42'),
(136, 46, '_menu_item_object', 'page'),
(137, 46, '_menu_item_target', ''),
(138, 46, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(139, 46, '_menu_item_xfn', ''),
(140, 46, '_menu_item_url', ''),
(141, 46, '_menu_item_orphaned', '1520845955'),
(142, 47, '_menu_item_type', 'post_type'),
(143, 47, '_menu_item_menu_item_parent', '0'),
(144, 47, '_menu_item_object_id', '2'),
(145, 47, '_menu_item_object', 'page'),
(146, 47, '_menu_item_target', ''),
(147, 47, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(148, 47, '_menu_item_xfn', ''),
(149, 47, '_menu_item_url', ''),
(150, 47, '_menu_item_orphaned', '1520845955'),
(151, 48, '_menu_item_type', 'post_type'),
(152, 48, '_menu_item_menu_item_parent', '0'),
(153, 48, '_menu_item_object_id', '40'),
(154, 48, '_menu_item_object', 'page'),
(155, 48, '_menu_item_target', ''),
(156, 48, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(157, 48, '_menu_item_xfn', ''),
(158, 48, '_menu_item_url', ''),
(159, 48, '_menu_item_orphaned', '1520846007'),
(160, 49, '_menu_item_type', 'post_type'),
(161, 49, '_menu_item_menu_item_parent', '0'),
(162, 49, '_menu_item_object_id', '40'),
(163, 49, '_menu_item_object', 'page'),
(164, 49, '_menu_item_target', ''),
(165, 49, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(166, 49, '_menu_item_xfn', ''),
(167, 49, '_menu_item_url', ''),
(168, 49, '_menu_item_orphaned', '1520846007'),
(169, 50, '_menu_item_type', 'post_type'),
(170, 50, '_menu_item_menu_item_parent', '0'),
(171, 50, '_menu_item_object_id', '42'),
(172, 50, '_menu_item_object', 'page'),
(173, 50, '_menu_item_target', ''),
(174, 50, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(175, 50, '_menu_item_xfn', ''),
(176, 50, '_menu_item_url', ''),
(177, 50, '_menu_item_orphaned', '1520846007'),
(178, 51, '_menu_item_type', 'post_type'),
(179, 51, '_menu_item_menu_item_parent', '0'),
(180, 51, '_menu_item_object_id', '2'),
(181, 51, '_menu_item_object', 'page'),
(182, 51, '_menu_item_target', ''),
(183, 51, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(184, 51, '_menu_item_xfn', ''),
(185, 51, '_menu_item_url', ''),
(186, 51, '_menu_item_orphaned', '1520846007'),
(187, 52, '_menu_item_type', 'post_type'),
(188, 52, '_menu_item_menu_item_parent', '0'),
(189, 52, '_menu_item_object_id', '40'),
(190, 52, '_menu_item_object', 'page'),
(191, 52, '_menu_item_target', ''),
(192, 52, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(193, 52, '_menu_item_xfn', ''),
(194, 52, '_menu_item_url', ''),
(195, 52, '_menu_item_orphaned', '1520846041'),
(196, 53, '_menu_item_type', 'post_type'),
(197, 53, '_menu_item_menu_item_parent', '0'),
(198, 53, '_menu_item_object_id', '40'),
(199, 53, '_menu_item_object', 'page'),
(200, 53, '_menu_item_target', ''),
(201, 53, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(202, 53, '_menu_item_xfn', ''),
(203, 53, '_menu_item_url', ''),
(204, 53, '_menu_item_orphaned', '1520846041'),
(205, 54, '_menu_item_type', 'post_type'),
(206, 54, '_menu_item_menu_item_parent', '0'),
(207, 54, '_menu_item_object_id', '42'),
(208, 54, '_menu_item_object', 'page'),
(209, 54, '_menu_item_target', ''),
(210, 54, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(211, 54, '_menu_item_xfn', ''),
(212, 54, '_menu_item_url', ''),
(213, 54, '_menu_item_orphaned', '1520846041'),
(214, 55, '_menu_item_type', 'post_type'),
(215, 55, '_menu_item_menu_item_parent', '0'),
(216, 55, '_menu_item_object_id', '2'),
(217, 55, '_menu_item_object', 'page'),
(218, 55, '_menu_item_target', ''),
(219, 55, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(220, 55, '_menu_item_xfn', ''),
(221, 55, '_menu_item_url', ''),
(222, 55, '_menu_item_orphaned', '1520846041'),
(223, 56, '_menu_item_type', 'post_type'),
(224, 56, '_menu_item_menu_item_parent', '0'),
(225, 56, '_menu_item_object_id', '40'),
(226, 56, '_menu_item_object', 'page'),
(227, 56, '_menu_item_target', ''),
(228, 56, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(229, 56, '_menu_item_xfn', ''),
(230, 56, '_menu_item_url', ''),
(231, 56, '_menu_item_orphaned', '1520846062'),
(232, 57, '_menu_item_type', 'post_type'),
(233, 57, '_menu_item_menu_item_parent', '0'),
(234, 57, '_menu_item_object_id', '40'),
(235, 57, '_menu_item_object', 'page'),
(236, 57, '_menu_item_target', ''),
(237, 57, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(238, 57, '_menu_item_xfn', ''),
(239, 57, '_menu_item_url', ''),
(240, 57, '_menu_item_orphaned', '1520846062'),
(241, 58, '_menu_item_type', 'post_type'),
(242, 58, '_menu_item_menu_item_parent', '0'),
(243, 58, '_menu_item_object_id', '42'),
(244, 58, '_menu_item_object', 'page'),
(245, 58, '_menu_item_target', ''),
(246, 58, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(247, 58, '_menu_item_xfn', ''),
(248, 58, '_menu_item_url', ''),
(249, 58, '_menu_item_orphaned', '1520846062'),
(250, 59, '_menu_item_type', 'post_type'),
(251, 59, '_menu_item_menu_item_parent', '0'),
(252, 59, '_menu_item_object_id', '2'),
(253, 59, '_menu_item_object', 'page'),
(254, 59, '_menu_item_target', ''),
(255, 59, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(256, 59, '_menu_item_xfn', ''),
(257, 59, '_menu_item_url', ''),
(258, 59, '_menu_item_orphaned', '1520846062'),
(259, 60, '_menu_item_type', 'post_type'),
(260, 60, '_menu_item_menu_item_parent', '0'),
(261, 60, '_menu_item_object_id', '40'),
(262, 60, '_menu_item_object', 'page'),
(263, 60, '_menu_item_target', ''),
(264, 60, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(265, 60, '_menu_item_xfn', ''),
(266, 60, '_menu_item_url', ''),
(267, 60, '_menu_item_orphaned', '1520846076'),
(268, 61, '_menu_item_type', 'post_type'),
(269, 61, '_menu_item_menu_item_parent', '0'),
(270, 61, '_menu_item_object_id', '40'),
(271, 61, '_menu_item_object', 'page'),
(272, 61, '_menu_item_target', ''),
(273, 61, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(274, 61, '_menu_item_xfn', ''),
(275, 61, '_menu_item_url', ''),
(277, 62, '_menu_item_type', 'post_type'),
(278, 62, '_menu_item_menu_item_parent', '0'),
(279, 62, '_menu_item_object_id', '42'),
(280, 62, '_menu_item_object', 'page'),
(281, 62, '_menu_item_target', ''),
(282, 62, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(283, 62, '_menu_item_xfn', ''),
(284, 62, '_menu_item_url', ''),
(295, 64, '_edit_last', '1'),
(296, 64, '_edit_lock', '1520846097:1'),
(299, 66, '_edit_last', '1'),
(300, 66, 'field_5aa65e7f5f336', 'a:11:{s:3:\"key\";s:19:\"field_5aa65e7f5f336\";s:5:\"label\";s:10:\"Z1 slide 1\";s:4:\"name\";s:10:\"z1_slide_1\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:6:\"object\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(301, 66, 'field_5aa65eaf5f337', 'a:11:{s:3:\"key\";s:19:\"field_5aa65eaf5f337\";s:5:\"label\";s:10:\"Z1 slide 2\";s:4:\"name\";s:10:\"z1_slide_2\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:6:\"object\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(302, 66, 'field_5aa65ec35f338', 'a:11:{s:3:\"key\";s:19:\"field_5aa65ec35f338\";s:5:\"label\";s:10:\"Z1 slide 3\";s:4:\"name\";s:10:\"z1_slide_3\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:6:\"object\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:2;}'),
(304, 66, 'position', 'normal'),
(305, 66, 'layout', 'no_box'),
(306, 66, 'hide_on_screen', ''),
(307, 66, '_edit_lock', '1520861177:1'),
(308, 67, '_wp_attached_file', '2018/03/slider1.jpg'),
(309, 67, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:19:\"2018/03/slider1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"slider1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"slider1-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"slider1-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"slider1-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(310, 68, '_wp_attached_file', '2018/03/slider2.jpg'),
(311, 68, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:19:\"2018/03/slider2.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"slider2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"slider2-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"slider2-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"slider2-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(312, 69, '_wp_attached_file', '2018/03/slider3.jpg'),
(313, 69, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:19:\"2018/03/slider3.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"slider3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"slider3-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"slider3-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"slider3-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(314, 70, 'z1_slide_1', '69'),
(315, 70, '_z1_slide_1', 'field_5aa65e7f5f336'),
(316, 70, 'z1_slide_2', ''),
(317, 70, '_z1_slide_2', 'field_5aa65eaf5f337'),
(318, 70, 'z1_slide_3', ''),
(319, 70, '_z1_slide_3', 'field_5aa65ec35f338'),
(320, 40, 'z1_slide_1', '69'),
(321, 40, '_z1_slide_1', 'field_5aa65e7f5f336'),
(322, 40, 'z1_slide_2', '68'),
(323, 40, '_z1_slide_2', 'field_5aa65eaf5f337'),
(324, 40, 'z1_slide_3', '67'),
(325, 40, '_z1_slide_3', 'field_5aa65ec35f338'),
(326, 71, 'z1_slide_1', '69'),
(327, 71, '_z1_slide_1', 'field_5aa65e7f5f336'),
(328, 71, 'z1_slide_2', '68'),
(329, 71, '_z1_slide_2', 'field_5aa65eaf5f337'),
(330, 71, 'z1_slide_3', '67'),
(331, 71, '_z1_slide_3', 'field_5aa65ec35f338'),
(332, 66, 'field_5aa67bf72789d', 'a:11:{s:3:\"key\";s:19:\"field_5aa67bf72789d\";s:5:\"label\";s:15:\"Z2 Texte Gauche\";s:4:\"name\";s:15:\"z2_texte_gauche\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";s:3:\"yes\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:3;}'),
(333, 66, 'field_5aa67c2a2789e', 'a:11:{s:3:\"key\";s:19:\"field_5aa67c2a2789e\";s:5:\"label\";s:14:\"Z2 Texte Droit\";s:4:\"name\";s:14:\"z2_texte_droit\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";s:3:\"yes\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:4;}'),
(335, 72, 'z1_slide_1', '69'),
(336, 72, '_z1_slide_1', 'field_5aa65e7f5f336'),
(337, 72, 'z1_slide_2', '68'),
(338, 72, '_z1_slide_2', 'field_5aa65eaf5f337'),
(339, 72, 'z1_slide_3', '67'),
(340, 72, '_z1_slide_3', 'field_5aa65ec35f338'),
(341, 72, 'z2_texte_gauche', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin eget dapibus lacus, a ultricies leo. <strong>Etiam</strong> quis ex diam. Proin venenatis elit nunc, nec pulvinar turpis facilisis ac. Nullam vitae tellus nisi. <strong>Pellentesque</strong> hendrerit leo nec odio semper <strong>interdum</strong>. Pellentesque vitae lectus et diam consectetur porta. Etiam at nisi ut purus sagittis interdum in quis leo. Aliquam malesuada faucibus sem in vestibulum. Fusce finibus a est et consequat. Quisque porttitor justo id dictum malesuada. Aenean quis risus ac leo molestie laoreet. Interdum et malesuada fames ac ante ipsum primis in faucibus. Curabitur placerat mi sed massa congue, id sagittis mi scelerisque. Aenean sagittis placerat est eget ullamcorper. Praesent tincidunt turpis <strong>ipsum</strong>, nec pellentesque eros luctus et.\r\n<blockquote><em>Etiam nec nunc ac eros luctus vehicula. Nullam ut enim sed odio dictum scelerisque sed eget sapien. In tortor odio, tempor et sollicitudin nec, posuere semper tellus. Fusce nec lorem a tellus lacinia vulputate consequat ut arcu. </em></blockquote>'),
(342, 72, '_z2_texte_gauche', 'field_5aa67bf72789d'),
(343, 72, 'z2_texte_droit', '<em>Vivamus dapibus nulla nec ex mollis pharetra. In volutpat fermentum viverra. Ut imperdiet nibh nec varius bibendum. Quisque dapibus pellentesque erat a ullamcorper. Maecenas sapien elit, commodo ac lorem a, condimentum convallis lacus.</em>\r\n\r\nNunc porta, arcu ut vehicula sagittis, libero urna malesuada nulla, ut lacinia velit magna vitae ipsum. Etiam ultrices, felis vitae ultrices sodales, ante sapien gravida leo, eu rutrum sem elit non nisi. Ut nisi nulla, consectetur hendrerit convallis id, sollicitudin non augue. Morbi id augue nec dui mollis suscipit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sit amet vestibulum lacus. Aenean in sem maximus, auctor felis nec, laoreet felis. <strong>Curabitur ultricies tincidunt faucibus. Mauris iaculis orci at maximus posuere. In placerat lacus sed maximus varius. Praesent consequat sem ante, vel aliquet metus venenatis nec</strong>. Suspendisse placerat placerat cursus. Integer enim dui, pulvinar vel diam eu, condimentum mollis quam. Aliquam erat volutpat. Fusce malesuada nibh sed semper suscipit.'),
(344, 72, '_z2_texte_droit', 'field_5aa67c2a2789e'),
(345, 40, 'z2_texte_gauche', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin eget dapibus lacus, a ultricies leo. <strong>Etiam</strong> quis ex diam. Proin venenatis elit nunc, nec pulvinar turpis facilisis ac. Nullam vitae tellus nisi. <strong>Pellentesque</strong> hendrerit leo nec odio semper <strong>interdum</strong>. Pellentesque vitae lectus et diam consectetur porta. Etiam at nisi ut purus sagittis interdum in quis leo. Aliquam malesuada faucibus sem in vestibulum. Fusce finibus a est et consequat. Quisque porttitor justo id dictum malesuada. Aenean quis risus ac leo molestie laoreet. Interdum et malesuada fames ac ante ipsum primis in faucibus. Curabitur placerat mi sed massa congue, id sagittis mi scelerisque. Aenean sagittis placerat est eget ullamcorper. Praesent tincidunt turpis <strong>ipsum</strong>, nec pellentesque eros luctus et.\r\n\r\n<a href=\"http://localhost/wordpress/wp-content/uploads/2018/03/slider3.jpg\"><img class=\"aligncenter wp-image-69 size-medium\" src=\"http://localhost/wordpress/wp-content/uploads/2018/03/slider3-300x169.jpg\" alt=\"\" width=\"300\" height=\"169\" /></a>\r\n<blockquote><em>Etiam nec nunc ac eros luctus vehicula. Nullam ut enim sed odio dictum scelerisque sed eget sapien. In tortor odio, tempor et sollicitudin nec, posuere semper tellus. Fusce nec lorem a tellus lacinia vulputate consequat ut arcu. </em></blockquote>'),
(346, 40, '_z2_texte_gauche', 'field_5aa67bf72789d'),
(347, 40, 'z2_texte_droit', '<em>Vivamus dapibus nulla nec ex mollis pharetra. In volutpat fermentum viverra. Ut imperdiet nibh nec varius bibendum. Quisque dapibus pellentesque erat a ullamcorper. Maecenas sapien elit, commodo ac lorem a, condimentum convallis lacus.</em>\r\n\r\nNunc porta, arcu ut vehicula sagittis, libero urna malesuada nulla, ut lacinia velit magna vitae ipsum. Etiam ultrices, felis vitae ultrices sodales, ante sapien gravida leo, eu rutrum sem elit non nisi. Ut nisi nulla, consectetur hendrerit convallis id, sollicitudin non augue. Morbi id augue nec dui mollis suscipit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sit amet vestibulum lacus. Aenean in sem maximus, auctor felis nec, laoreet felis. <strong>Curabitur ultricies tincidunt faucibus. Mauris iaculis orci at maximus posuere. In placerat lacus sed maximus varius. Praesent consequat sem ante, vel aliquet metus venenatis nec</strong>. Suspendisse placerat placerat cursus. Integer enim dui, pulvinar vel diam eu, condimentum mollis quam. Aliquam erat volutpat. Fusce malesuada nibh sed semper suscipit.'),
(348, 40, '_z2_texte_droit', 'field_5aa67c2a2789e'),
(352, 66, 'field_5aa67fa74e0b7', 'a:11:{s:3:\"key\";s:19:\"field_5aa67fa74e0b7\";s:5:\"label\";s:17:\"Z3 Image Parallax\";s:4:\"name\";s:17:\"z3_image_parallax\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:6:\"object\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:5;}'),
(353, 66, 'field_5aa67fd34e0b8', 'a:15:{s:3:\"key\";s:19:\"field_5aa67fd34e0b8\";s:5:\"label\";s:10:\"Z3 Hauteur\";s:4:\"name\";s:10:\"z3_hauteur\";s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:3:\"300\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:2:\"px\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:6;}'),
(355, 66, 'field_5aa68015cd21f', 'a:11:{s:3:\"key\";s:19:\"field_5aa68015cd21f\";s:5:\"label\";s:16:\"Z4 Texte Central\";s:4:\"name\";s:16:\"z4_texte_central\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";s:3:\"yes\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:7;}'),
(356, 66, 'field_5aa6802ecd220', 'a:11:{s:3:\"key\";s:19:\"field_5aa6802ecd220\";s:5:\"label\";s:13:\"Z5 Vignette 1\";s:4:\"name\";s:13:\"z5_vignette_1\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:6:\"object\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:8;}'),
(357, 66, 'field_5aa6803fcd221', 'a:11:{s:3:\"key\";s:19:\"field_5aa6803fcd221\";s:5:\"label\";s:13:\"Z5 Vignette 2\";s:4:\"name\";s:13:\"z5_vignette_2\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:6:\"object\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:9;}'),
(358, 66, 'field_5aa68046cd222', 'a:11:{s:3:\"key\";s:19:\"field_5aa68046cd222\";s:5:\"label\";s:13:\"Z5 Vignette 3\";s:4:\"name\";s:13:\"z5_vignette_3\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:6:\"object\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:10;}'),
(359, 66, 'field_5aa68055cd223', 'a:11:{s:3:\"key\";s:19:\"field_5aa68055cd223\";s:5:\"label\";s:13:\"Z5 Vignette 4\";s:4:\"name\";s:13:\"z5_vignette_4\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:6:\"object\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:11;}'),
(360, 66, 'rule', 'a:5:{s:5:\"param\";s:9:\"page_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:10:\"front_page\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(361, 73, '_wp_attached_file', '2018/03/parallax1.jpg'),
(362, 73, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1200;s:4:\"file\";s:21:\"2018/03/parallax1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"parallax1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"parallax1-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"parallax1-768x480.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"parallax1-1024x640.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:640;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(363, 74, '_wp_attached_file', '2018/03/vignette.jpg'),
(364, 74, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:20:\"2018/03/vignette.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"vignette-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"vignette-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(365, 75, '_wp_attached_file', '2018/03/vignette1.jpg'),
(366, 75, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:21:\"2018/03/vignette1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"vignette1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"vignette1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(367, 76, '_wp_attached_file', '2018/03/vignette2.jpg'),
(368, 76, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:21:\"2018/03/vignette2.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"vignette2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"vignette2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.4\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:9:\"iPad mini\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1408460976\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:3:\"3.3\";s:3:\"iso\";s:2:\"40\";s:13:\"shutter_speed\";s:17:\"0.016666666666667\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(369, 77, '_wp_attached_file', '2018/03/vignette3.jpg'),
(370, 77, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:21:\"2018/03/vignette3.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"vignette3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"vignette3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(371, 78, 'z1_slide_1', '69'),
(372, 78, '_z1_slide_1', 'field_5aa65e7f5f336'),
(373, 78, 'z1_slide_2', '68'),
(374, 78, '_z1_slide_2', 'field_5aa65eaf5f337'),
(375, 78, 'z1_slide_3', '67'),
(376, 78, '_z1_slide_3', 'field_5aa65ec35f338'),
(377, 78, 'z2_texte_gauche', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin eget dapibus lacus, a ultricies leo. <strong>Etiam</strong> quis ex diam. Proin venenatis elit nunc, nec pulvinar turpis facilisis ac. Nullam vitae tellus nisi. <strong>Pellentesque</strong> hendrerit leo nec odio semper <strong>interdum</strong>. Pellentesque vitae lectus et diam consectetur porta. Etiam at nisi ut purus sagittis interdum in quis leo. Aliquam malesuada faucibus sem in vestibulum. Fusce finibus a est et consequat. Quisque porttitor justo id dictum malesuada. Aenean quis risus ac leo molestie laoreet. Interdum et malesuada fames ac ante ipsum primis in faucibus. Curabitur placerat mi sed massa congue, id sagittis mi scelerisque. Aenean sagittis placerat est eget ullamcorper. Praesent tincidunt turpis <strong>ipsum</strong>, nec pellentesque eros luctus et.\r\n<blockquote><em>Etiam nec nunc ac eros luctus vehicula. Nullam ut enim sed odio dictum scelerisque sed eget sapien. In tortor odio, tempor et sollicitudin nec, posuere semper tellus. Fusce nec lorem a tellus lacinia vulputate consequat ut arcu. </em></blockquote>'),
(378, 78, '_z2_texte_gauche', 'field_5aa67bf72789d');
INSERT INTO `monsite_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(379, 78, 'z2_texte_droit', '<em>Vivamus dapibus nulla nec ex mollis pharetra. In volutpat fermentum viverra. Ut imperdiet nibh nec varius bibendum. Quisque dapibus pellentesque erat a ullamcorper. Maecenas sapien elit, commodo ac lorem a, condimentum convallis lacus.</em>\r\n\r\nNunc porta, arcu ut vehicula sagittis, libero urna malesuada nulla, ut lacinia velit magna vitae ipsum. Etiam ultrices, felis vitae ultrices sodales, ante sapien gravida leo, eu rutrum sem elit non nisi. Ut nisi nulla, consectetur hendrerit convallis id, sollicitudin non augue. Morbi id augue nec dui mollis suscipit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sit amet vestibulum lacus. Aenean in sem maximus, auctor felis nec, laoreet felis. <strong>Curabitur ultricies tincidunt faucibus. Mauris iaculis orci at maximus posuere. In placerat lacus sed maximus varius. Praesent consequat sem ante, vel aliquet metus venenatis nec</strong>. Suspendisse placerat placerat cursus. Integer enim dui, pulvinar vel diam eu, condimentum mollis quam. Aliquam erat volutpat. Fusce malesuada nibh sed semper suscipit.'),
(380, 78, '_z2_texte_droit', 'field_5aa67c2a2789e'),
(381, 78, 'z3_image_parallax', '73'),
(382, 78, '_z3_image_parallax', 'field_5aa67fa74e0b7'),
(383, 78, 'z3_hauteur', '300'),
(384, 78, '_z3_hauteur', 'field_5aa67fd34e0b8'),
(385, 78, 'z4_texte_central', ''),
(386, 78, '_z4_texte_central', 'field_5aa68015cd21f'),
(387, 78, 'z5_vignette_1', '76'),
(388, 78, '_z5_vignette_1', 'field_5aa6802ecd220'),
(389, 78, 'z5_vignette_2', '77'),
(390, 78, '_z5_vignette_2', 'field_5aa6803fcd221'),
(391, 78, 'z5_vignette_3', '75'),
(392, 78, '_z5_vignette_3', 'field_5aa68046cd222'),
(393, 78, 'z5_vignette_4', '74'),
(394, 78, '_z5_vignette_4', 'field_5aa68055cd223'),
(395, 40, 'z3_image_parallax', '97'),
(396, 40, '_z3_image_parallax', 'field_5aa67fa74e0b7'),
(397, 40, 'z3_hauteur', '300'),
(398, 40, '_z3_hauteur', 'field_5aa67fd34e0b8'),
(399, 40, 'z4_texte_central', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin eget dapibus lacus, a ultricies leo. Etiam quis ex diam. Proin venenatis elit nunc, nec pulvinar turpis facilisis ac. Nullam vitae tellus nisi. Pellentesque hendrerit leo nec odio semper interdum. Pellentesque vitae lectus et diam consectetur porta. Etiam at nisi ut purus sagittis interdum in quis leo. Aliquam malesuada faucibus sem in vestibulum. Fusce finibus a est et consequat. Quisque porttitor justo id dictum malesuada. Aenean quis risus ac leo molestie laoreet. Interdum et malesuada fames ac ante ipsum primis in faucibus. Curabitur placerat mi sed massa congue, id sagittis mi scelerisque. Aenean sagittis placerat est eget ullamcorper. Praesent tincidunt turpis ipsum, nec pellentesque eros luctus et.\r\n\r\nEtiam nec nunc ac eros luctus vehicula. Nullam ut enim sed odio dictum scelerisque sed eget sapien. In tortor odio, tempor et sollicitudin nec, posuere semper tellus. Fusce nec lorem a tellus lacinia vulputate consequat ut arcu. Vivamus dapibus nulla nec ex mollis pharetra. In volutpat fermentum viverra. Ut imperdiet nibh nec varius bibendum. Quisque dapibus pellentesque erat a ullamcorper. Maecenas sapien elit, commodo ac lorem a, condimentum convallis lacus.\r\n\r\nNunc porta, arcu ut vehicula sagittis, libero urna malesuada nulla, ut lacinia velit magna vitae ipsum. Etiam ultrices, felis vitae ultrices sodales, ante sapien gravida leo, eu rutrum sem elit non nisi. Ut nisi nulla, consectetur hendrerit convallis id, sollicitudin non augue. Morbi id augue nec dui mollis suscipit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sit amet vestibulum lacus. Aenean in sem maximus, auctor felis nec, laoreet felis. Curabitur ultricies tincidunt faucibus. Mauris iaculis orci at maximus posuere. In placerat lacus sed maximus varius. Praesent consequat sem ante, vel aliquet metus venenatis nec. Suspendisse placerat placerat cursus. Integer enim dui, pulvinar vel diam eu, condimentum mollis quam. Aliquam erat volutpat. Fusce malesuada nibh sed semper suscipit.\r\n\r\nIn egestas aliquam imperdiet. Aenean dolor sem, tempor vel tincidunt non, cursus at nisl. Pellentesque sit amet velit vel quam eleifend rutrum et ac augue. Cras vulputate tellus et fermentum pretium. Morbi lobortis risus consectetur, blandit magna scelerisque, euismod elit. Vestibulum elementum ut metus et ullamcorper. Nullam malesuada et tortor eu eleifend.\r\n\r\nDonec tempor diam sed congue blandit. Vivamus ornare pretium libero. Sed sed tincidunt erat. Maecenas luctus, elit ac rutrum placerat, velit enim scelerisque arcu, eu vestibulum lorem magna vitae tellus. Sed blandit volutpat ullamcorper. Nulla aliquam rhoncus nulla ut volutpat. Maecenas id nunc justo. Donec arcu turpis, efficitur ut vehicula in, ornare vitae massa. Vivamus in ipsum neque. Vestibulum convallis tincidunt neque sit amet sodales. In interdum urna sit amet nunc pretium, non laoreet turpis vehicula. Nam leo justo, blandit a risus varius, efficitur consequat odio. Maecenas sagittis hendrerit ex nec semper. Aliquam volutpat leo sit amet arcu vestibulum pulvinar.'),
(400, 40, '_z4_texte_central', 'field_5aa68015cd21f'),
(401, 40, 'z5_vignette_1', '76'),
(402, 40, '_z5_vignette_1', 'field_5aa6802ecd220'),
(403, 40, 'z5_vignette_2', '77'),
(404, 40, '_z5_vignette_2', 'field_5aa6803fcd221'),
(405, 40, 'z5_vignette_3', '75'),
(406, 40, '_z5_vignette_3', 'field_5aa68046cd222'),
(407, 40, 'z5_vignette_4', '74'),
(408, 40, '_z5_vignette_4', 'field_5aa68055cd223'),
(409, 79, 'z1_slide_1', '69'),
(410, 79, '_z1_slide_1', 'field_5aa65e7f5f336'),
(411, 79, 'z1_slide_2', '68'),
(412, 79, '_z1_slide_2', 'field_5aa65eaf5f337'),
(413, 79, 'z1_slide_3', '67'),
(414, 79, '_z1_slide_3', 'field_5aa65ec35f338'),
(415, 79, 'z2_texte_gauche', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin eget dapibus lacus, a ultricies leo. <strong>Etiam</strong> quis ex diam. Proin venenatis elit nunc, nec pulvinar turpis facilisis ac. Nullam vitae tellus nisi. <strong>Pellentesque</strong> hendrerit leo nec odio semper <strong>interdum</strong>. Pellentesque vitae lectus et diam consectetur porta. Etiam at nisi ut purus sagittis interdum in quis leo. Aliquam malesuada faucibus sem in vestibulum. Fusce finibus a est et consequat. Quisque porttitor justo id dictum malesuada. Aenean quis risus ac leo molestie laoreet. Interdum et malesuada fames ac ante ipsum primis in faucibus. Curabitur placerat mi sed massa congue, id sagittis mi scelerisque. Aenean sagittis placerat est eget ullamcorper. Praesent tincidunt turpis <strong>ipsum</strong>, nec pellentesque eros luctus et.\r\n<blockquote><em>Etiam nec nunc ac eros luctus vehicula. Nullam ut enim sed odio dictum scelerisque sed eget sapien. In tortor odio, tempor et sollicitudin nec, posuere semper tellus. Fusce nec lorem a tellus lacinia vulputate consequat ut arcu. </em></blockquote>'),
(416, 79, '_z2_texte_gauche', 'field_5aa67bf72789d'),
(417, 79, 'z2_texte_droit', '<em>Vivamus dapibus nulla nec ex mollis pharetra. In volutpat fermentum viverra. Ut imperdiet nibh nec varius bibendum. Quisque dapibus pellentesque erat a ullamcorper. Maecenas sapien elit, commodo ac lorem a, condimentum convallis lacus.</em>\r\n\r\nNunc porta, arcu ut vehicula sagittis, libero urna malesuada nulla, ut lacinia velit magna vitae ipsum. Etiam ultrices, felis vitae ultrices sodales, ante sapien gravida leo, eu rutrum sem elit non nisi. Ut nisi nulla, consectetur hendrerit convallis id, sollicitudin non augue. Morbi id augue nec dui mollis suscipit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sit amet vestibulum lacus. Aenean in sem maximus, auctor felis nec, laoreet felis. <strong>Curabitur ultricies tincidunt faucibus. Mauris iaculis orci at maximus posuere. In placerat lacus sed maximus varius. Praesent consequat sem ante, vel aliquet metus venenatis nec</strong>. Suspendisse placerat placerat cursus. Integer enim dui, pulvinar vel diam eu, condimentum mollis quam. Aliquam erat volutpat. Fusce malesuada nibh sed semper suscipit.'),
(418, 79, '_z2_texte_droit', 'field_5aa67c2a2789e'),
(419, 79, 'z3_image_parallax', '73'),
(420, 79, '_z3_image_parallax', 'field_5aa67fa74e0b7'),
(421, 79, 'z3_hauteur', '300'),
(422, 79, '_z3_hauteur', 'field_5aa67fd34e0b8'),
(423, 79, 'z4_texte_central', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin eget dapibus lacus, a ultricies leo. Etiam quis ex diam. Proin venenatis elit nunc, nec pulvinar turpis facilisis ac. Nullam vitae tellus nisi. Pellentesque hendrerit leo nec odio semper interdum. Pellentesque vitae lectus et diam consectetur porta. Etiam at nisi ut purus sagittis interdum in quis leo. Aliquam malesuada faucibus sem in vestibulum. Fusce finibus a est et consequat. Quisque porttitor justo id dictum malesuada. Aenean quis risus ac leo molestie laoreet. Interdum et malesuada fames ac ante ipsum primis in faucibus. Curabitur placerat mi sed massa congue, id sagittis mi scelerisque. Aenean sagittis placerat est eget ullamcorper. Praesent tincidunt turpis ipsum, nec pellentesque eros luctus et.\r\n\r\nEtiam nec nunc ac eros luctus vehicula. Nullam ut enim sed odio dictum scelerisque sed eget sapien. In tortor odio, tempor et sollicitudin nec, posuere semper tellus. Fusce nec lorem a tellus lacinia vulputate consequat ut arcu. Vivamus dapibus nulla nec ex mollis pharetra. In volutpat fermentum viverra. Ut imperdiet nibh nec varius bibendum. Quisque dapibus pellentesque erat a ullamcorper. Maecenas sapien elit, commodo ac lorem a, condimentum convallis lacus.\r\n\r\nNunc porta, arcu ut vehicula sagittis, libero urna malesuada nulla, ut lacinia velit magna vitae ipsum. Etiam ultrices, felis vitae ultrices sodales, ante sapien gravida leo, eu rutrum sem elit non nisi. Ut nisi nulla, consectetur hendrerit convallis id, sollicitudin non augue. Morbi id augue nec dui mollis suscipit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sit amet vestibulum lacus. Aenean in sem maximus, auctor felis nec, laoreet felis. Curabitur ultricies tincidunt faucibus. Mauris iaculis orci at maximus posuere. In placerat lacus sed maximus varius. Praesent consequat sem ante, vel aliquet metus venenatis nec. Suspendisse placerat placerat cursus. Integer enim dui, pulvinar vel diam eu, condimentum mollis quam. Aliquam erat volutpat. Fusce malesuada nibh sed semper suscipit.\r\n\r\nIn egestas aliquam imperdiet. Aenean dolor sem, tempor vel tincidunt non, cursus at nisl. Pellentesque sit amet velit vel quam eleifend rutrum et ac augue. Cras vulputate tellus et fermentum pretium. Morbi lobortis risus consectetur, blandit magna scelerisque, euismod elit. Vestibulum elementum ut metus et ullamcorper. Nullam malesuada et tortor eu eleifend.\r\n\r\nDonec tempor diam sed congue blandit. Vivamus ornare pretium libero. Sed sed tincidunt erat. Maecenas luctus, elit ac rutrum placerat, velit enim scelerisque arcu, eu vestibulum lorem magna vitae tellus. Sed blandit volutpat ullamcorper. Nulla aliquam rhoncus nulla ut volutpat. Maecenas id nunc justo. Donec arcu turpis, efficitur ut vehicula in, ornare vitae massa. Vivamus in ipsum neque. Vestibulum convallis tincidunt neque sit amet sodales. In interdum urna sit amet nunc pretium, non laoreet turpis vehicula. Nam leo justo, blandit a risus varius, efficitur consequat odio. Maecenas sagittis hendrerit ex nec semper. Aliquam volutpat leo sit amet arcu vestibulum pulvinar.'),
(424, 79, '_z4_texte_central', 'field_5aa68015cd21f'),
(425, 79, 'z5_vignette_1', '76'),
(426, 79, '_z5_vignette_1', 'field_5aa6802ecd220'),
(427, 79, 'z5_vignette_2', '77'),
(428, 79, '_z5_vignette_2', 'field_5aa6803fcd221'),
(429, 79, 'z5_vignette_3', '75'),
(430, 79, '_z5_vignette_3', 'field_5aa68046cd222'),
(431, 79, 'z5_vignette_4', '74'),
(432, 79, '_z5_vignette_4', 'field_5aa68055cd223'),
(433, 80, '_form', '<label> Votre nom (obligatoire)\n    [text* your-name] </label>\n\n<label> Votre adresse de messagerie (obligatoire)\n    [email* your-email] </label>\n\n<label> Objet\n    [text your-subject] </label>\n\n<label> Votre message\n    [textarea your-message] </label>\n\n[recaptcha]\n\n[submit \"Envoyer\"]'),
(434, 80, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:26:\"Mega site \"[your-subject]\"\";s:6:\"sender\";s:36:\"[your-name] <maxime.joyes@gmail.com>\";s:9:\"recipient\";s:22:\"maxime.joyes@gmail.com\";s:4:\"body\";s:195:\"De : [your-name] <[your-email]>\nObjet : [your-subject]\n\nCorps du message :\n[your-message]\n\n-- \nCet e-mail a été envoyé via le formulaire de contact de Mega site (http://localhost/wordpress)\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(435, 80, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:26:\"Mega site \"[your-subject]\"\";s:6:\"sender\";s:34:\"Mega site <maxime.joyes@gmail.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:137:\"Corps du message :\n[your-message]\n\n-- \nCet e-mail a été envoyé via le formulaire de contact de Mega site (http://localhost/wordpress)\";s:18:\"additional_headers\";s:32:\"Reply-To: maxime.joyes@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(436, 80, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:45:\"Merci pour votre message. Il a été envoyé.\";s:12:\"mail_sent_ng\";s:102:\"Une erreur s’est produite lors de l’envoi de votre message. Veuillez essayer à nouveau plus tard.\";s:16:\"validation_error\";s:88:\"Un ou plusieurs champs contiennent une erreur. Veuillez vérifier et essayer à nouveau.\";s:4:\"spam\";s:102:\"Une erreur s’est produite lors de l’envoi de votre message. Veuillez essayer à nouveau plus tard.\";s:12:\"accept_terms\";s:77:\"Vous devez accepter les termes et conditions avant d’envoyer votre message.\";s:16:\"invalid_required\";s:25:\"Ce champ est obligatoire.\";s:16:\"invalid_too_long\";s:23:\"Le champ est trop long.\";s:17:\"invalid_too_short\";s:24:\"Le champ est trop court.\";s:12:\"invalid_date\";s:32:\"Le format de date est incorrect.\";s:14:\"date_too_early\";s:47:\"La date précède la première date autorisée.\";s:13:\"date_too_late\";s:57:\"La date est postérieure à la dernière date autorisée.\";s:13:\"upload_failed\";s:72:\"Une erreur inconnue s’est produite lors du téléversement du fichier.\";s:24:\"upload_file_type_invalid\";s:79:\"Vous n’avez pas les droits nécessaires pour téléverser ce type de fichier.\";s:21:\"upload_file_too_large\";s:31:\"Le fichier est trop volumineux.\";s:23:\"upload_failed_php_error\";s:63:\"Une erreur s’est produite lors du téléversement du fichier.\";s:14:\"invalid_number\";s:33:\"Le format du nombre est invalide.\";s:16:\"number_too_small\";s:50:\"Le nombre est plus petit que le minimum autorisé.\";s:16:\"number_too_large\";s:50:\"Le nombre est plus grand que le maximum autorisé.\";s:23:\"quiz_answer_not_correct\";s:42:\"La réponse à la question est incorrecte.\";s:17:\"captcha_not_match\";s:29:\"Le code entré est incorrect.\";s:13:\"invalid_email\";s:38:\"L’adresse e-mail n’est pas valide.\";s:11:\"invalid_url\";s:27:\"L’URL n’est pas valide.\";s:11:\"invalid_tel\";s:45:\"Le numéro de téléphone n’est pas valide.\";}'),
(437, 80, '_additional_settings', ''),
(438, 80, '_locale', 'fr_FR'),
(439, 81, '_edit_last', '1'),
(440, 81, '_edit_lock', '1520935191:1'),
(441, 83, '_menu_item_type', 'post_type'),
(442, 83, '_menu_item_menu_item_parent', '0'),
(443, 83, '_menu_item_object_id', '81'),
(444, 83, '_menu_item_object', 'page'),
(445, 83, '_menu_item_target', ''),
(446, 83, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(447, 83, '_menu_item_xfn', ''),
(448, 83, '_menu_item_url', ''),
(450, 84, 'z1_slide_1', '69'),
(451, 84, '_z1_slide_1', 'field_5aa65e7f5f336'),
(452, 84, 'z1_slide_2', '68'),
(453, 84, '_z1_slide_2', 'field_5aa65eaf5f337'),
(454, 84, 'z1_slide_3', '67'),
(455, 84, '_z1_slide_3', 'field_5aa65ec35f338'),
(456, 84, 'z2_texte_gauche', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin eget dapibus lacus, a ultricies leo. <strong>Etiam</strong> quis ex diam. Proin venenatis elit nunc, nec pulvinar turpis facilisis ac. Nullam vitae tellus nisi. <strong>Pellentesque</strong> hendrerit leo nec odio semper <strong>interdum</strong>. Pellentesque vitae lectus et diam consectetur porta. Etiam at nisi ut purus sagittis interdum in quis leo. Aliquam malesuada faucibus sem in vestibulum. Fusce finibus a est et consequat. Quisque porttitor justo id dictum malesuada. Aenean quis risus ac leo molestie laoreet. Interdum et malesuada fames ac ante ipsum primis in faucibus. Curabitur placerat mi sed massa congue, id sagittis mi scelerisque. Aenean sagittis placerat est eget ullamcorper. Praesent tincidunt turpis <strong>ipsum</strong>, nec pellentesque eros luctus et.\r\n\r\n<a href=\"http://localhost/wordpress/wp-content/uploads/2018/03/slider3.jpg\"><img class=\"aligncenter wp-image-69 size-medium\" src=\"http://localhost/wordpress/wp-content/uploads/2018/03/slider3-300x169.jpg\" alt=\"\" width=\"300\" height=\"169\" /></a>\r\n<blockquote><em>Etiam nec nunc ac eros luctus vehicula. Nullam ut enim sed odio dictum scelerisque sed eget sapien. In tortor odio, tempor et sollicitudin nec, posuere semper tellus. Fusce nec lorem a tellus lacinia vulputate consequat ut arcu. </em></blockquote>'),
(457, 84, '_z2_texte_gauche', 'field_5aa67bf72789d'),
(458, 84, 'z2_texte_droit', '<em>Vivamus dapibus nulla nec ex mollis pharetra. In volutpat fermentum viverra. Ut imperdiet nibh nec varius bibendum. Quisque dapibus pellentesque erat a ullamcorper. Maecenas sapien elit, commodo ac lorem a, condimentum convallis lacus.</em>\r\n\r\nNunc porta, arcu ut vehicula sagittis, libero urna malesuada nulla, ut lacinia velit magna vitae ipsum. Etiam ultrices, felis vitae ultrices sodales, ante sapien gravida leo, eu rutrum sem elit non nisi. Ut nisi nulla, consectetur hendrerit convallis id, sollicitudin non augue. Morbi id augue nec dui mollis suscipit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sit amet vestibulum lacus. Aenean in sem maximus, auctor felis nec, laoreet felis. <strong>Curabitur ultricies tincidunt faucibus. Mauris iaculis orci at maximus posuere. In placerat lacus sed maximus varius. Praesent consequat sem ante, vel aliquet metus venenatis nec</strong>. Suspendisse placerat placerat cursus. Integer enim dui, pulvinar vel diam eu, condimentum mollis quam. Aliquam erat volutpat. Fusce malesuada nibh sed semper suscipit.'),
(459, 84, '_z2_texte_droit', 'field_5aa67c2a2789e'),
(460, 84, 'z3_image_parallax', '73'),
(461, 84, '_z3_image_parallax', 'field_5aa67fa74e0b7'),
(462, 84, 'z3_hauteur', '300'),
(463, 84, '_z3_hauteur', 'field_5aa67fd34e0b8'),
(464, 84, 'z4_texte_central', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin eget dapibus lacus, a ultricies leo. Etiam quis ex diam. Proin venenatis elit nunc, nec pulvinar turpis facilisis ac. Nullam vitae tellus nisi. Pellentesque hendrerit leo nec odio semper interdum. Pellentesque vitae lectus et diam consectetur porta. Etiam at nisi ut purus sagittis interdum in quis leo. Aliquam malesuada faucibus sem in vestibulum. Fusce finibus a est et consequat. Quisque porttitor justo id dictum malesuada. Aenean quis risus ac leo molestie laoreet. Interdum et malesuada fames ac ante ipsum primis in faucibus. Curabitur placerat mi sed massa congue, id sagittis mi scelerisque. Aenean sagittis placerat est eget ullamcorper. Praesent tincidunt turpis ipsum, nec pellentesque eros luctus et.\r\n\r\nEtiam nec nunc ac eros luctus vehicula. Nullam ut enim sed odio dictum scelerisque sed eget sapien. In tortor odio, tempor et sollicitudin nec, posuere semper tellus. Fusce nec lorem a tellus lacinia vulputate consequat ut arcu. Vivamus dapibus nulla nec ex mollis pharetra. In volutpat fermentum viverra. Ut imperdiet nibh nec varius bibendum. Quisque dapibus pellentesque erat a ullamcorper. Maecenas sapien elit, commodo ac lorem a, condimentum convallis lacus.\r\n\r\nNunc porta, arcu ut vehicula sagittis, libero urna malesuada nulla, ut lacinia velit magna vitae ipsum. Etiam ultrices, felis vitae ultrices sodales, ante sapien gravida leo, eu rutrum sem elit non nisi. Ut nisi nulla, consectetur hendrerit convallis id, sollicitudin non augue. Morbi id augue nec dui mollis suscipit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sit amet vestibulum lacus. Aenean in sem maximus, auctor felis nec, laoreet felis. Curabitur ultricies tincidunt faucibus. Mauris iaculis orci at maximus posuere. In placerat lacus sed maximus varius. Praesent consequat sem ante, vel aliquet metus venenatis nec. Suspendisse placerat placerat cursus. Integer enim dui, pulvinar vel diam eu, condimentum mollis quam. Aliquam erat volutpat. Fusce malesuada nibh sed semper suscipit.\r\n\r\nIn egestas aliquam imperdiet. Aenean dolor sem, tempor vel tincidunt non, cursus at nisl. Pellentesque sit amet velit vel quam eleifend rutrum et ac augue. Cras vulputate tellus et fermentum pretium. Morbi lobortis risus consectetur, blandit magna scelerisque, euismod elit. Vestibulum elementum ut metus et ullamcorper. Nullam malesuada et tortor eu eleifend.\r\n\r\nDonec tempor diam sed congue blandit. Vivamus ornare pretium libero. Sed sed tincidunt erat. Maecenas luctus, elit ac rutrum placerat, velit enim scelerisque arcu, eu vestibulum lorem magna vitae tellus. Sed blandit volutpat ullamcorper. Nulla aliquam rhoncus nulla ut volutpat. Maecenas id nunc justo. Donec arcu turpis, efficitur ut vehicula in, ornare vitae massa. Vivamus in ipsum neque. Vestibulum convallis tincidunt neque sit amet sodales. In interdum urna sit amet nunc pretium, non laoreet turpis vehicula. Nam leo justo, blandit a risus varius, efficitur consequat odio. Maecenas sagittis hendrerit ex nec semper. Aliquam volutpat leo sit amet arcu vestibulum pulvinar.'),
(465, 84, '_z4_texte_central', 'field_5aa68015cd21f'),
(466, 84, 'z5_vignette_1', '76'),
(467, 84, '_z5_vignette_1', 'field_5aa6802ecd220'),
(468, 84, 'z5_vignette_2', '77'),
(469, 84, '_z5_vignette_2', 'field_5aa6803fcd221'),
(470, 84, 'z5_vignette_3', '75'),
(471, 84, '_z5_vignette_3', 'field_5aa68046cd222'),
(472, 84, 'z5_vignette_4', '74'),
(473, 84, '_z5_vignette_4', 'field_5aa68055cd223'),
(474, 86, '_edit_last', '1'),
(475, 86, 'field_5aa6a096f065b', 'a:11:{s:3:\"key\";s:19:\"field_5aa6a096f065b\";s:5:\"label\";s:5:\"Photo\";s:4:\"name\";s:5:\"photo\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:6:\"object\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(476, 86, 'field_5aa6a09ff065c', 'a:14:{s:3:\"key\";s:19:\"field_5aa6a09ff065c\";s:5:\"label\";s:10:\"Date Heure\";s:4:\"name\";s:10:\"date_heure\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(477, 86, 'field_5aa6a0c0f065d', 'a:14:{s:3:\"key\";s:19:\"field_5aa6a0c0f065d\";s:5:\"label\";s:5:\"Salle\";s:4:\"name\";s:5:\"salle\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:3;}'),
(478, 86, 'field_5aa6a0eef065e', 'a:15:{s:3:\"key\";s:19:\"field_5aa6a0eef065e\";s:5:\"label\";s:4:\"Prix\";s:4:\"name\";s:4:\"prix\";s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:3:\"€\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:4;}'),
(480, 86, 'position', 'normal'),
(481, 86, 'layout', 'no_box'),
(482, 86, 'hide_on_screen', ''),
(483, 86, '_edit_lock', '1520932304:1'),
(484, 86, 'field_5aa6a10207969', 'a:11:{s:3:\"key\";s:19:\"field_5aa6a10207969\";s:5:\"label\";s:7:\"Adresse\";s:4:\"name\";s:7:\"adresse\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";s:3:\"yes\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:2;}'),
(487, 88, '_edit_last', '1'),
(488, 88, '_edit_lock', '1520870155:1'),
(489, 89, '_wp_attached_file', '2018/03/affiche_kendrick.jpg'),
(490, 89, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:473;s:6:\"height\";i:358;s:4:\"file\";s:28:\"2018/03/affiche_kendrick.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"affiche_kendrick-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"affiche_kendrick-300x227.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:227;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(491, 88, 'photo', '89'),
(492, 88, '_photo', 'field_5aa6a096f065b'),
(493, 88, 'date_heure', '03/04/2018 à 20h00'),
(494, 88, '_date_heure', 'field_5aa6a09ff065c'),
(495, 88, 'adresse', '8 Boulevard de Bercy, 75012 Paris'),
(496, 88, '_adresse', 'field_5aa6a10207969'),
(497, 88, 'salle', 'AccorHotels Arena'),
(498, 88, '_salle', 'field_5aa6a0c0f065d'),
(499, 88, 'prix', '120'),
(500, 88, '_prix', 'field_5aa6a0eef065e'),
(501, 90, '_menu_item_type', 'post_type_archive'),
(502, 90, '_menu_item_menu_item_parent', '0'),
(503, 90, '_menu_item_object_id', '-15'),
(504, 90, '_menu_item_object', 'concert'),
(505, 90, '_menu_item_target', ''),
(506, 90, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(507, 90, '_menu_item_xfn', ''),
(508, 90, '_menu_item_url', ''),
(510, 91, '_edit_last', '1'),
(511, 91, '_edit_lock', '1520932219:1'),
(512, 91, 'photo', '92'),
(513, 91, '_photo', 'field_5aa6a096f065b'),
(514, 91, 'date_heure', '10/03/2018 à 20h00'),
(515, 91, '_date_heure', 'field_5aa6a09ff065c'),
(516, 91, 'adresse', '8 Boulevard de Bercy, 75012 Paris'),
(517, 91, '_adresse', 'field_5aa6a10207969'),
(518, 91, 'salle', 'Accord Hotel Arena'),
(519, 91, '_salle', 'field_5aa6a0c0f065d'),
(520, 91, 'prix', '130'),
(521, 91, '_prix', 'field_5aa6a0eef065e'),
(522, 92, '_wp_attached_file', '2018/03/affiche_ntm.jpg'),
(523, 92, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1394;s:6:\"height\";i:1441;s:4:\"file\";s:23:\"2018/03/affiche_ntm.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"affiche_ntm-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"affiche_ntm-290x300.jpg\";s:5:\"width\";i:290;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"affiche_ntm-768x794.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:794;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"affiche_ntm-991x1024.jpg\";s:5:\"width\";i:991;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(524, 94, '_wp_attached_file', '2018/03/vald_xeu.jpg'),
(525, 94, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:753;s:4:\"file\";s:20:\"2018/03/vald_xeu.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"vald_xeu-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"vald_xeu-239x300.jpg\";s:5:\"width\";i:239;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(526, 93, '_edit_last', '1'),
(527, 93, '_edit_lock', '1520933303:1'),
(528, 93, 'photo', '94'),
(529, 93, '_photo', 'field_5aa6a096f065b'),
(530, 93, 'date_heure', '24/11/2018 à 20h30'),
(531, 93, '_date_heure', 'field_5aa6a09ff065c'),
(532, 93, 'adresse', '<span class=\"_Xbe\">211 Avenue Jean Jaurès, 75019 Paris</span>'),
(533, 93, '_adresse', 'field_5aa6a10207969'),
(534, 93, 'salle', 'Le Zénith Paris - La Villette'),
(535, 93, '_salle', 'field_5aa6a0c0f065d'),
(536, 93, 'prix', '40'),
(537, 93, '_prix', 'field_5aa6a0eef065e'),
(538, 95, '_edit_last', '1'),
(539, 95, '_edit_lock', '1520931835:1'),
(540, 96, '_wp_attached_file', '2018/03/kaaris.jpg'),
(541, 96, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:649;s:6:\"height\";i:350;s:4:\"file\";s:18:\"2018/03/kaaris.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"kaaris-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"kaaris-300x162.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:162;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(542, 95, 'photo', '96'),
(543, 95, '_photo', 'field_5aa6a096f065b'),
(544, 95, 'date_heure', '11/11/2018 à 19h'),
(545, 95, '_date_heure', 'field_5aa6a09ff065c'),
(546, 95, 'adresse', '<span class=\"_Xbe\">99 Jardins de l\'Arche, 92000 Nanterre</span>'),
(547, 95, '_adresse', 'field_5aa6a10207969'),
(548, 95, 'salle', 'U Arena'),
(549, 95, '_salle', 'field_5aa6a0c0f065d'),
(550, 95, 'prix', '35'),
(551, 95, '_prix', 'field_5aa6a0eef065e'),
(552, 86, 'rule', 'a:5:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"concert\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(553, 97, '_wp_attached_file', '2018/03/parallax2.jpg'),
(554, 97, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1329;s:4:\"file\";s:21:\"2018/03/parallax2.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"parallax2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"parallax2-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"parallax2-768x510.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"parallax2-1024x680.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:680;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(555, 98, 'z1_slide_1', '69'),
(556, 98, '_z1_slide_1', 'field_5aa65e7f5f336'),
(557, 98, 'z1_slide_2', '68'),
(558, 98, '_z1_slide_2', 'field_5aa65eaf5f337'),
(559, 98, 'z1_slide_3', '67'),
(560, 98, '_z1_slide_3', 'field_5aa65ec35f338'),
(561, 98, 'z2_texte_gauche', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin eget dapibus lacus, a ultricies leo. <strong>Etiam</strong> quis ex diam. Proin venenatis elit nunc, nec pulvinar turpis facilisis ac. Nullam vitae tellus nisi. <strong>Pellentesque</strong> hendrerit leo nec odio semper <strong>interdum</strong>. Pellentesque vitae lectus et diam consectetur porta. Etiam at nisi ut purus sagittis interdum in quis leo. Aliquam malesuada faucibus sem in vestibulum. Fusce finibus a est et consequat. Quisque porttitor justo id dictum malesuada. Aenean quis risus ac leo molestie laoreet. Interdum et malesuada fames ac ante ipsum primis in faucibus. Curabitur placerat mi sed massa congue, id sagittis mi scelerisque. Aenean sagittis placerat est eget ullamcorper. Praesent tincidunt turpis <strong>ipsum</strong>, nec pellentesque eros luctus et.\r\n\r\n<a href=\"http://localhost/wordpress/wp-content/uploads/2018/03/slider3.jpg\"><img class=\"aligncenter wp-image-69 size-medium\" src=\"http://localhost/wordpress/wp-content/uploads/2018/03/slider3-300x169.jpg\" alt=\"\" width=\"300\" height=\"169\" /></a>\r\n<blockquote><em>Etiam nec nunc ac eros luctus vehicula. Nullam ut enim sed odio dictum scelerisque sed eget sapien. In tortor odio, tempor et sollicitudin nec, posuere semper tellus. Fusce nec lorem a tellus lacinia vulputate consequat ut arcu. </em></blockquote>'),
(562, 98, '_z2_texte_gauche', 'field_5aa67bf72789d'),
(563, 98, 'z2_texte_droit', '<em>Vivamus dapibus nulla nec ex mollis pharetra. In volutpat fermentum viverra. Ut imperdiet nibh nec varius bibendum. Quisque dapibus pellentesque erat a ullamcorper. Maecenas sapien elit, commodo ac lorem a, condimentum convallis lacus.</em>\r\n\r\nNunc porta, arcu ut vehicula sagittis, libero urna malesuada nulla, ut lacinia velit magna vitae ipsum. Etiam ultrices, felis vitae ultrices sodales, ante sapien gravida leo, eu rutrum sem elit non nisi. Ut nisi nulla, consectetur hendrerit convallis id, sollicitudin non augue. Morbi id augue nec dui mollis suscipit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sit amet vestibulum lacus. Aenean in sem maximus, auctor felis nec, laoreet felis. <strong>Curabitur ultricies tincidunt faucibus. Mauris iaculis orci at maximus posuere. In placerat lacus sed maximus varius. Praesent consequat sem ante, vel aliquet metus venenatis nec</strong>. Suspendisse placerat placerat cursus. Integer enim dui, pulvinar vel diam eu, condimentum mollis quam. Aliquam erat volutpat. Fusce malesuada nibh sed semper suscipit.'),
(564, 98, '_z2_texte_droit', 'field_5aa67c2a2789e'),
(565, 98, 'z3_image_parallax', '97'),
(566, 98, '_z3_image_parallax', 'field_5aa67fa74e0b7'),
(567, 98, 'z3_hauteur', '300'),
(568, 98, '_z3_hauteur', 'field_5aa67fd34e0b8'),
(569, 98, 'z4_texte_central', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin eget dapibus lacus, a ultricies leo. Etiam quis ex diam. Proin venenatis elit nunc, nec pulvinar turpis facilisis ac. Nullam vitae tellus nisi. Pellentesque hendrerit leo nec odio semper interdum. Pellentesque vitae lectus et diam consectetur porta. Etiam at nisi ut purus sagittis interdum in quis leo. Aliquam malesuada faucibus sem in vestibulum. Fusce finibus a est et consequat. Quisque porttitor justo id dictum malesuada. Aenean quis risus ac leo molestie laoreet. Interdum et malesuada fames ac ante ipsum primis in faucibus. Curabitur placerat mi sed massa congue, id sagittis mi scelerisque. Aenean sagittis placerat est eget ullamcorper. Praesent tincidunt turpis ipsum, nec pellentesque eros luctus et.\r\n\r\nEtiam nec nunc ac eros luctus vehicula. Nullam ut enim sed odio dictum scelerisque sed eget sapien. In tortor odio, tempor et sollicitudin nec, posuere semper tellus. Fusce nec lorem a tellus lacinia vulputate consequat ut arcu. Vivamus dapibus nulla nec ex mollis pharetra. In volutpat fermentum viverra. Ut imperdiet nibh nec varius bibendum. Quisque dapibus pellentesque erat a ullamcorper. Maecenas sapien elit, commodo ac lorem a, condimentum convallis lacus.\r\n\r\nNunc porta, arcu ut vehicula sagittis, libero urna malesuada nulla, ut lacinia velit magna vitae ipsum. Etiam ultrices, felis vitae ultrices sodales, ante sapien gravida leo, eu rutrum sem elit non nisi. Ut nisi nulla, consectetur hendrerit convallis id, sollicitudin non augue. Morbi id augue nec dui mollis suscipit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sit amet vestibulum lacus. Aenean in sem maximus, auctor felis nec, laoreet felis. Curabitur ultricies tincidunt faucibus. Mauris iaculis orci at maximus posuere. In placerat lacus sed maximus varius. Praesent consequat sem ante, vel aliquet metus venenatis nec. Suspendisse placerat placerat cursus. Integer enim dui, pulvinar vel diam eu, condimentum mollis quam. Aliquam erat volutpat. Fusce malesuada nibh sed semper suscipit.\r\n\r\nIn egestas aliquam imperdiet. Aenean dolor sem, tempor vel tincidunt non, cursus at nisl. Pellentesque sit amet velit vel quam eleifend rutrum et ac augue. Cras vulputate tellus et fermentum pretium. Morbi lobortis risus consectetur, blandit magna scelerisque, euismod elit. Vestibulum elementum ut metus et ullamcorper. Nullam malesuada et tortor eu eleifend.\r\n\r\nDonec tempor diam sed congue blandit. Vivamus ornare pretium libero. Sed sed tincidunt erat. Maecenas luctus, elit ac rutrum placerat, velit enim scelerisque arcu, eu vestibulum lorem magna vitae tellus. Sed blandit volutpat ullamcorper. Nulla aliquam rhoncus nulla ut volutpat. Maecenas id nunc justo. Donec arcu turpis, efficitur ut vehicula in, ornare vitae massa. Vivamus in ipsum neque. Vestibulum convallis tincidunt neque sit amet sodales. In interdum urna sit amet nunc pretium, non laoreet turpis vehicula. Nam leo justo, blandit a risus varius, efficitur consequat odio. Maecenas sagittis hendrerit ex nec semper. Aliquam volutpat leo sit amet arcu vestibulum pulvinar.'),
(570, 98, '_z4_texte_central', 'field_5aa68015cd21f'),
(571, 98, 'z5_vignette_1', '76'),
(572, 98, '_z5_vignette_1', 'field_5aa6802ecd220'),
(573, 98, 'z5_vignette_2', '77'),
(574, 98, '_z5_vignette_2', 'field_5aa6803fcd221'),
(575, 98, 'z5_vignette_3', '75'),
(576, 98, '_z5_vignette_3', 'field_5aa68046cd222'),
(577, 98, 'z5_vignette_4', '74'),
(578, 98, '_z5_vignette_4', 'field_5aa68055cd223');

-- --------------------------------------------------------

--
-- Structure de la table `monsite_posts`
--

CREATE TABLE `monsite_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `monsite_posts`
--

INSERT INTO `monsite_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-03-12 09:50:43', '2018-03-12 08:50:43', 'Bienvenue sur WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous !', 'Bonjour tout le monde !', '', 'publish', 'open', 'open', '', 'bonjour-tout-le-monde', '', '', '2018-03-12 09:50:43', '2018-03-12 08:50:43', '', 0, 'http://localhost/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2018-03-12 09:50:43', '2018-03-12 08:50:43', 'Voici un exemple de page. Elle est différente d’un article de blog, en cela qu’elle restera à la même place, et s’affichera dans le menu de navigation de votre site (en fonction de votre thème). La plupart des gens commencent par écrire une page « À Propos » qui les présente aux visiteurs potentiels du site. Vous pourriez y écrire quelque chose de ce tenant :\n\n<blockquote>Bonjour ! Je suis un mécanicien qui aspire à devenir un acteur, et ceci est mon blog. J’habite à Bordeaux, j’ai un super chien qui s’appelle Russell, et j’aime la vodka-ananas (ainsi que perdre mon temps à regarder la pluie tomber).</blockquote>\n\n...ou bien quelque chose comme cela :\n\n<blockquote>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis cette année. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</blockquote>\n\nÉtant donné que vous êtes un nouvel utilisateur ou une nouvelle utilisatrice de WordPress, vous devriez vous rendre sur votre <a href=\"http://localhost/wordpress/wp-admin/\">tableau de bord</a> pour effacer la présente page, et créer de nouvelles pages avec votre propre contenu. Amusez-vous bien !', 'Page d’exemple', '', 'publish', 'closed', 'open', '', 'page-d-exemple', '', '', '2018-03-12 09:50:43', '2018-03-12 08:50:43', '', 0, 'http://localhost/wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-03-12 09:50:58', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-03-12 09:50:58', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=3', 0, 'post', '', 0),
(4, 1, '2018-03-12 09:57:10', '0000-00-00 00:00:00', '', 'Expresso', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-12 09:57:08', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/03/espresso.jpg', 0, 'attachment', 'image/jpeg', 0),
(5, 1, '2018-03-12 09:57:10', '0000-00-00 00:00:00', '', 'Sandwich', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-12 09:57:08', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/03/sandwich.jpg', 0, 'attachment', 'image/jpeg', 0),
(6, 1, '2018-03-12 09:57:10', '0000-00-00 00:00:00', '', 'Café', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-12 09:57:09', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/03/coffee.jpg', 0, 'attachment', 'image/jpeg', 0),
(7, 1, '2018-03-12 09:57:10', '0000-00-00 00:00:00', 'Bienvenue sur votre site ! C’est votre page d’accueil que vos visiteurs verront lorsqu’ils arriveront sur votre site la première fois.', 'Accueil', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-12 09:57:10', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=7', 0, 'page', '', 0),
(8, 1, '2018-03-12 09:57:10', '0000-00-00 00:00:00', 'Vous pourriez être un artiste et vouloir présenter vos travaux et vous même ou encore être une entreprise avec une mission à promouvoir.', 'À propos de', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-12 09:57:10', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=8', 0, 'page', '', 0),
(9, 1, '2018-03-12 09:57:10', '0000-00-00 00:00:00', 'C’est une page avec des informations de contact de base, comme l’adresse et le numéro de téléphone. Vous pouvez aussi essayer une extension pour ajouter un formulaire de contact.', 'Contact', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-12 09:57:10', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=9', 0, 'page', '', 0),
(10, 1, '2018-03-12 09:57:10', '0000-00-00 00:00:00', '', 'Blog', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-12 09:57:10', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=10', 0, 'page', '', 0),
(11, 1, '2018-03-12 09:57:10', '0000-00-00 00:00:00', 'C’est un exemple de section de page d’accueil. Les sections de page d’accueil peuvent être n’importe quelle page autre que la page d’accueil elle-même, y compris la page qui affiche vos derniers articles de blog.', 'Une section de page d’accueil', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-12 09:57:10', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=11', 0, 'page', '', 0),
(12, 1, '2018-03-12 09:57:10', '0000-00-00 00:00:00', '{\n    \"widget_text[2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjE0OiJSZXRyb3V2ZXotbm91cyI7czo0OiJ0ZXh0IjtzOjE4OToiPHN0cm9uZz5BZHJlc3NlPC9zdHJvbmc+CkF2ZW51ZSBkZXMgQ2hhbXBzLcOJbHlzw6llcwo3NTAwOCwgUGFyaXMKCjxzdHJvbmc+SGV1cmVzIGTigJlvdXZlcnR1cmU8L3N0cm9uZz4KRHUgbHVuZGkgYXUgdmVuZHJlZGnCoDogOWgwMCZuZGFzaDsxN2gwMApMZXMgc2FtZWRpIGV0IGRpbWFuY2hlwqA6IDExaDAwJm5kYXNoOzE1aDAwIjtzOjY6ImZpbHRlciI7YjoxO3M6NjoidmlzdWFsIjtiOjE7fQ==\",\n            \"title\": \"Retrouvez-nous\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"7949785d16838caad8a0c8066e6ca119\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:57:10\"\n    },\n    \"widget_search[3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjU6InRpdGxlIjtzOjEwOiJSZWNoZXJjaGVyIjt9\",\n            \"title\": \"Rechercher\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"c0c6f2d6600aea187142ed5f1cf2571a\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:57:10\"\n    },\n    \"widget_text[3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjIwOiLDgCBwcm9wb3MgZGUgY2Ugc2l0ZSI7czo0OiJ0ZXh0IjtzOjk5OiJD4oCZZXN0IHBldXQtw6p0cmUgbGUgYm9uIGVuZHJvaXQgcG91ciB2b3VzIHByw6lzZW50ZXIgZXQgdm90cmUgc2l0ZSBvdSBpbnPDqXJlciBxdWVscXVlcyBjcsOpZGl0cy4iO3M6NjoiZmlsdGVyIjtiOjE7czo2OiJ2aXN1YWwiO2I6MTt9\",\n            \"title\": \"\\u00c0 propos de ce site\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"fb8e87fd48c433280d3942e57dfceea8\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:57:10\"\n    },\n    \"sidebars_widgets[sidebar-1]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-2\",\n            \"search-3\",\n            \"text-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:57:10\"\n    },\n    \"widget_text[4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjE0OiJSZXRyb3V2ZXotbm91cyI7czo0OiJ0ZXh0IjtzOjE4OToiPHN0cm9uZz5BZHJlc3NlPC9zdHJvbmc+CkF2ZW51ZSBkZXMgQ2hhbXBzLcOJbHlzw6llcwo3NTAwOCwgUGFyaXMKCjxzdHJvbmc+SGV1cmVzIGTigJlvdXZlcnR1cmU8L3N0cm9uZz4KRHUgbHVuZGkgYXUgdmVuZHJlZGnCoDogOWgwMCZuZGFzaDsxN2gwMApMZXMgc2FtZWRpIGV0IGRpbWFuY2hlwqA6IDExaDAwJm5kYXNoOzE1aDAwIjtzOjY6ImZpbHRlciI7YjoxO3M6NjoidmlzdWFsIjtiOjE7fQ==\",\n            \"title\": \"Retrouvez-nous\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"7949785d16838caad8a0c8066e6ca119\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:57:10\"\n    },\n    \"sidebars_widgets[sidebar-2]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-4\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:57:10\"\n    },\n    \"widget_text[5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjIwOiLDgCBwcm9wb3MgZGUgY2Ugc2l0ZSI7czo0OiJ0ZXh0IjtzOjk5OiJD4oCZZXN0IHBldXQtw6p0cmUgbGUgYm9uIGVuZHJvaXQgcG91ciB2b3VzIHByw6lzZW50ZXIgZXQgdm90cmUgc2l0ZSBvdSBpbnPDqXJlciBxdWVscXVlcyBjcsOpZGl0cy4iO3M6NjoiZmlsdGVyIjtiOjE7czo2OiJ2aXN1YWwiO2I6MTt9\",\n            \"title\": \"\\u00c0 propos de ce site\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"fb8e87fd48c433280d3942e57dfceea8\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:57:10\"\n    },\n    \"widget_search[4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjU6InRpdGxlIjtzOjEwOiJSZWNoZXJjaGVyIjt9\",\n            \"title\": \"Rechercher\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"c0c6f2d6600aea187142ed5f1cf2571a\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:57:10\"\n    },\n    \"sidebars_widgets[sidebar-3]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-5\",\n            \"search-4\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:57:10\"\n    },\n    \"nav_menus_created_posts\": {\n        \"starter_content\": true,\n        \"value\": [\n            4,\n            5,\n            6,\n            7,\n            8,\n            9,\n            10,\n            11\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:57:10\"\n    },\n    \"nav_menu[-1]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"name\": \"Menu sup\\u00e9rieur\"\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:57:10\"\n    },\n    \"nav_menu_item[-1]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"custom\",\n            \"title\": \"Accueil\",\n            \"url\": \"http://localhost/wordpress/\",\n            \"position\": 0,\n            \"nav_menu_term_id\": -1,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:57:10\"\n    },\n    \"nav_menu_item[-2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 8,\n            \"position\": 1,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"\\u00c0 propos de\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:57:10\"\n    },\n    \"nav_menu_item[-3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 10,\n            \"position\": 2,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"Blog\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:57:10\"\n    },\n    \"nav_menu_item[-4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 9,\n            \"position\": 3,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"Contact\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:57:10\"\n    },\n    \"twentyseventeen::nav_menu_locations[top]\": {\n        \"starter_content\": true,\n        \"value\": -1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:57:10\"\n    },\n    \"nav_menu[-5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"name\": \"Menu des liens de r\\u00e9seaux sociaux\"\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:57:10\"\n    },\n    \"nav_menu_item[-5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Yelp\",\n            \"url\": \"https://www.yelp.com\",\n            \"position\": 0,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:57:10\"\n    },\n    \"nav_menu_item[-6]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Facebook\",\n            \"url\": \"https://www.facebook.com/wordpress\",\n            \"position\": 1,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:57:10\"\n    },\n    \"nav_menu_item[-7]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Twitter\",\n            \"url\": \"https://twitter.com/wordpress\",\n            \"position\": 2,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:57:10\"\n    },\n    \"nav_menu_item[-8]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Instagram\",\n            \"url\": \"https://www.instagram.com/explore/tags/wordcamp/\",\n            \"position\": 3,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:57:10\"\n    },\n    \"nav_menu_item[-9]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"E-mail\",\n            \"url\": \"mailto:wordpress@example.com\",\n            \"position\": 4,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:57:10\"\n    },\n    \"twentyseventeen::nav_menu_locations[social]\": {\n        \"starter_content\": true,\n        \"value\": -5,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:57:10\"\n    },\n    \"show_on_front\": {\n        \"starter_content\": true,\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:57:10\"\n    },\n    \"page_on_front\": {\n        \"starter_content\": true,\n        \"value\": 7,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:57:10\"\n    },\n    \"page_for_posts\": {\n        \"starter_content\": true,\n        \"value\": 10,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:57:10\"\n    },\n    \"twentyseventeen::panel_1\": {\n        \"starter_content\": true,\n        \"value\": 11,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:57:10\"\n    },\n    \"twentyseventeen::panel_2\": {\n        \"starter_content\": true,\n        \"value\": 8,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:57:10\"\n    },\n    \"twentyseventeen::panel_3\": {\n        \"starter_content\": true,\n        \"value\": 10,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:57:10\"\n    },\n    \"twentyseventeen::panel_4\": {\n        \"starter_content\": true,\n        \"value\": 9,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:57:10\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '373e5fa3-54ec-45af-969f-271266044cba', '', '', '2018-03-12 09:57:10', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=12', 0, 'customize_changeset', '', 0),
(13, 1, '2018-03-12 09:58:51', '0000-00-00 00:00:00', '', 'Expresso', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-12 09:57:23', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/03/espresso-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(14, 1, '2018-03-12 09:58:51', '0000-00-00 00:00:00', '', 'Sandwich', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-12 09:57:24', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/03/sandwich-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(15, 1, '2018-03-12 09:58:51', '0000-00-00 00:00:00', '', 'Café', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-12 09:57:24', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/03/coffee-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(16, 1, '2018-03-12 09:58:51', '0000-00-00 00:00:00', 'Bienvenue sur votre site ! C’est votre page d’accueil que vos visiteurs verront lorsqu’ils arriveront sur votre site la première fois.', 'Accueil', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-12 09:57:25', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=16', 0, 'page', '', 0),
(17, 1, '2018-03-12 09:58:51', '0000-00-00 00:00:00', 'Vous pourriez être un artiste et vouloir présenter vos travaux et vous même ou encore être une entreprise avec une mission à promouvoir.', 'À propos de', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-12 09:57:25', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=17', 0, 'page', '', 0),
(18, 1, '2018-03-12 09:58:51', '0000-00-00 00:00:00', 'C’est une page avec des informations de contact de base, comme l’adresse et le numéro de téléphone. Vous pouvez aussi essayer une extension pour ajouter un formulaire de contact.', 'Contact', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-12 09:57:25', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=18', 0, 'page', '', 0),
(19, 1, '2018-03-12 09:58:51', '0000-00-00 00:00:00', '', 'Blog', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-12 09:57:25', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=19', 0, 'page', '', 0),
(20, 1, '2018-03-12 09:58:51', '0000-00-00 00:00:00', 'C’est un exemple de section de page d’accueil. Les sections de page d’accueil peuvent être n’importe quelle page autre que la page d’accueil elle-même, y compris la page qui affiche vos derniers articles de blog.', 'Une section de page d’accueil', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-12 09:57:25', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=20', 0, 'page', '', 0),
(21, 1, '2018-03-12 09:58:51', '0000-00-00 00:00:00', '{\n    \"widget_text[6]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjE0OiJSZXRyb3V2ZXotbm91cyI7czo0OiJ0ZXh0IjtzOjE4OToiPHN0cm9uZz5BZHJlc3NlPC9zdHJvbmc+CkF2ZW51ZSBkZXMgQ2hhbXBzLcOJbHlzw6llcwo3NTAwOCwgUGFyaXMKCjxzdHJvbmc+SGV1cmVzIGTigJlvdXZlcnR1cmU8L3N0cm9uZz4KRHUgbHVuZGkgYXUgdmVuZHJlZGnCoDogOWgwMCZuZGFzaDsxN2gwMApMZXMgc2FtZWRpIGV0IGRpbWFuY2hlwqA6IDExaDAwJm5kYXNoOzE1aDAwIjtzOjY6ImZpbHRlciI7YjoxO3M6NjoidmlzdWFsIjtiOjE7fQ==\",\n            \"title\": \"Retrouvez-nous\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"7949785d16838caad8a0c8066e6ca119\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:57:25\"\n    },\n    \"widget_search[3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjU6InRpdGxlIjtzOjEwOiJSZWNoZXJjaGVyIjt9\",\n            \"title\": \"Rechercher\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"c0c6f2d6600aea187142ed5f1cf2571a\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:57:25\"\n    },\n    \"widget_text[7]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjIwOiLDgCBwcm9wb3MgZGUgY2Ugc2l0ZSI7czo0OiJ0ZXh0IjtzOjk5OiJD4oCZZXN0IHBldXQtw6p0cmUgbGUgYm9uIGVuZHJvaXQgcG91ciB2b3VzIHByw6lzZW50ZXIgZXQgdm90cmUgc2l0ZSBvdSBpbnPDqXJlciBxdWVscXVlcyBjcsOpZGl0cy4iO3M6NjoiZmlsdGVyIjtiOjE7czo2OiJ2aXN1YWwiO2I6MTt9\",\n            \"title\": \"\\u00c0 propos de ce site\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"fb8e87fd48c433280d3942e57dfceea8\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:57:25\"\n    },\n    \"sidebars_widgets[sidebar-1]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-6\",\n            \"search-3\",\n            \"text-7\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:57:25\"\n    },\n    \"widget_text[8]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjE0OiJSZXRyb3V2ZXotbm91cyI7czo0OiJ0ZXh0IjtzOjE4OToiPHN0cm9uZz5BZHJlc3NlPC9zdHJvbmc+CkF2ZW51ZSBkZXMgQ2hhbXBzLcOJbHlzw6llcwo3NTAwOCwgUGFyaXMKCjxzdHJvbmc+SGV1cmVzIGTigJlvdXZlcnR1cmU8L3N0cm9uZz4KRHUgbHVuZGkgYXUgdmVuZHJlZGnCoDogOWgwMCZuZGFzaDsxN2gwMApMZXMgc2FtZWRpIGV0IGRpbWFuY2hlwqA6IDExaDAwJm5kYXNoOzE1aDAwIjtzOjY6ImZpbHRlciI7YjoxO3M6NjoidmlzdWFsIjtiOjE7fQ==\",\n            \"title\": \"Retrouvez-nous\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"7949785d16838caad8a0c8066e6ca119\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:57:25\"\n    },\n    \"sidebars_widgets[sidebar-2]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-8\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:57:25\"\n    },\n    \"widget_text[9]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjIwOiLDgCBwcm9wb3MgZGUgY2Ugc2l0ZSI7czo0OiJ0ZXh0IjtzOjk5OiJD4oCZZXN0IHBldXQtw6p0cmUgbGUgYm9uIGVuZHJvaXQgcG91ciB2b3VzIHByw6lzZW50ZXIgZXQgdm90cmUgc2l0ZSBvdSBpbnPDqXJlciBxdWVscXVlcyBjcsOpZGl0cy4iO3M6NjoiZmlsdGVyIjtiOjE7czo2OiJ2aXN1YWwiO2I6MTt9\",\n            \"title\": \"\\u00c0 propos de ce site\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"fb8e87fd48c433280d3942e57dfceea8\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:57:25\"\n    },\n    \"widget_search[4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjU6InRpdGxlIjtzOjEwOiJSZWNoZXJjaGVyIjt9\",\n            \"title\": \"Rechercher\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"c0c6f2d6600aea187142ed5f1cf2571a\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:57:25\"\n    },\n    \"sidebars_widgets[sidebar-3]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-9\",\n            \"search-4\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:57:25\"\n    },\n    \"nav_menus_created_posts\": {\n        \"starter_content\": true,\n        \"value\": [\n            13,\n            14,\n            15,\n            16,\n            17,\n            18,\n            19,\n            20\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:57:25\"\n    },\n    \"nav_menu[-1]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"name\": \"Menu sup\\u00e9rieur\"\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:57:25\"\n    },\n    \"nav_menu_item[-1]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"custom\",\n            \"title\": \"Accueil\",\n            \"url\": \"http://localhost/wordpress/\",\n            \"position\": 0,\n            \"nav_menu_term_id\": -1,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:57:25\"\n    },\n    \"nav_menu_item[-2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 17,\n            \"position\": 1,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"\\u00c0 propos de\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:57:25\"\n    },\n    \"nav_menu_item[-3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 19,\n            \"position\": 2,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"Blog\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:57:25\"\n    },\n    \"nav_menu_item[-4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 18,\n            \"position\": 3,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"Contact\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:57:25\"\n    },\n    \"twentyseventeen::nav_menu_locations[top]\": {\n        \"starter_content\": true,\n        \"value\": -1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:57:25\"\n    },\n    \"nav_menu[-5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"name\": \"Menu des liens de r\\u00e9seaux sociaux\"\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:57:25\"\n    },\n    \"nav_menu_item[-5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Yelp\",\n            \"url\": \"https://www.yelp.com\",\n            \"position\": 0,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:57:25\"\n    },\n    \"nav_menu_item[-6]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Facebook\",\n            \"url\": \"https://www.facebook.com/wordpress\",\n            \"position\": 1,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:57:25\"\n    },\n    \"nav_menu_item[-7]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Twitter\",\n            \"url\": \"https://twitter.com/wordpress\",\n            \"position\": 2,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:57:25\"\n    },\n    \"nav_menu_item[-8]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Instagram\",\n            \"url\": \"https://www.instagram.com/explore/tags/wordcamp/\",\n            \"position\": 3,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:57:25\"\n    },\n    \"nav_menu_item[-9]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"E-mail\",\n            \"url\": \"mailto:wordpress@example.com\",\n            \"position\": 4,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:57:25\"\n    },\n    \"twentyseventeen::nav_menu_locations[social]\": {\n        \"starter_content\": true,\n        \"value\": -5,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:57:25\"\n    },\n    \"show_on_front\": {\n        \"starter_content\": true,\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:57:25\"\n    },\n    \"page_on_front\": {\n        \"starter_content\": true,\n        \"value\": 16,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:57:25\"\n    },\n    \"page_for_posts\": {\n        \"starter_content\": true,\n        \"value\": 19,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:57:25\"\n    },\n    \"twentyseventeen::panel_1\": {\n        \"starter_content\": true,\n        \"value\": 20,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:57:25\"\n    },\n    \"twentyseventeen::panel_2\": {\n        \"starter_content\": true,\n        \"value\": 17,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:57:25\"\n    },\n    \"twentyseventeen::panel_3\": {\n        \"starter_content\": true,\n        \"value\": 19,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:57:25\"\n    },\n    \"twentyseventeen::panel_4\": {\n        \"starter_content\": true,\n        \"value\": 18,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:57:25\"\n    },\n    \"blogdescription\": {\n        \"value\": \"SUPER MEGA SITE\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:58:51\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '8ef27612-47ec-4343-b93b-0d9f5afbb524', '', '', '2018-03-12 09:58:51', '2018-03-12 08:58:51', '', 0, 'http://localhost/wordpress/?p=21', 0, 'customize_changeset', '', 0),
(22, 1, '2018-03-12 10:00:45', '0000-00-00 00:00:00', '', 'Expresso', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-12 10:00:41', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/03/espresso-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(23, 1, '2018-03-12 10:00:45', '0000-00-00 00:00:00', '', 'Sandwich', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-12 10:00:42', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/03/sandwich-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(24, 1, '2018-03-12 10:00:45', '0000-00-00 00:00:00', '', 'Café', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-12 10:00:43', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/03/coffee-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(25, 1, '2018-03-12 10:00:45', '0000-00-00 00:00:00', 'Bienvenue sur votre site ! C’est votre page d’accueil que vos visiteurs verront lorsqu’ils arriveront sur votre site la première fois.', 'Accueil', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-12 10:00:44', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=25', 0, 'page', '', 0),
(26, 1, '2018-03-12 10:00:45', '0000-00-00 00:00:00', 'Vous pourriez être un artiste et vouloir présenter vos travaux et vous même ou encore être une entreprise avec une mission à promouvoir.', 'À propos de', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-12 10:00:44', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=26', 0, 'page', '', 0),
(27, 1, '2018-03-12 10:00:45', '0000-00-00 00:00:00', 'C’est une page avec des informations de contact de base, comme l’adresse et le numéro de téléphone. Vous pouvez aussi essayer une extension pour ajouter un formulaire de contact.', 'Contact', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-12 10:00:45', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=27', 0, 'page', '', 0),
(28, 1, '2018-03-12 10:00:45', '0000-00-00 00:00:00', '', 'Blog', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-12 10:00:45', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=28', 0, 'page', '', 0),
(29, 1, '2018-03-12 10:00:45', '0000-00-00 00:00:00', 'C’est un exemple de section de page d’accueil. Les sections de page d’accueil peuvent être n’importe quelle page autre que la page d’accueil elle-même, y compris la page qui affiche vos derniers articles de blog.', 'Une section de page d’accueil', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-12 10:00:45', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=29', 0, 'page', '', 0),
(30, 1, '2018-03-12 10:00:45', '0000-00-00 00:00:00', '{\n    \"widget_text[6]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjE0OiJSZXRyb3V2ZXotbm91cyI7czo0OiJ0ZXh0IjtzOjE4OToiPHN0cm9uZz5BZHJlc3NlPC9zdHJvbmc+CkF2ZW51ZSBkZXMgQ2hhbXBzLcOJbHlzw6llcwo3NTAwOCwgUGFyaXMKCjxzdHJvbmc+SGV1cmVzIGTigJlvdXZlcnR1cmU8L3N0cm9uZz4KRHUgbHVuZGkgYXUgdmVuZHJlZGnCoDogOWgwMCZuZGFzaDsxN2gwMApMZXMgc2FtZWRpIGV0IGRpbWFuY2hlwqA6IDExaDAwJm5kYXNoOzE1aDAwIjtzOjY6ImZpbHRlciI7YjoxO3M6NjoidmlzdWFsIjtiOjE7fQ==\",\n            \"title\": \"Retrouvez-nous\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"7949785d16838caad8a0c8066e6ca119\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 09:00:45\"\n    },\n    \"widget_search[3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjU6InRpdGxlIjtzOjEwOiJSZWNoZXJjaGVyIjt9\",\n            \"title\": \"Rechercher\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"c0c6f2d6600aea187142ed5f1cf2571a\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 09:00:45\"\n    },\n    \"widget_text[7]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjIwOiLDgCBwcm9wb3MgZGUgY2Ugc2l0ZSI7czo0OiJ0ZXh0IjtzOjk5OiJD4oCZZXN0IHBldXQtw6p0cmUgbGUgYm9uIGVuZHJvaXQgcG91ciB2b3VzIHByw6lzZW50ZXIgZXQgdm90cmUgc2l0ZSBvdSBpbnPDqXJlciBxdWVscXVlcyBjcsOpZGl0cy4iO3M6NjoiZmlsdGVyIjtiOjE7czo2OiJ2aXN1YWwiO2I6MTt9\",\n            \"title\": \"\\u00c0 propos de ce site\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"fb8e87fd48c433280d3942e57dfceea8\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 09:00:45\"\n    },\n    \"sidebars_widgets[sidebar-1]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-6\",\n            \"search-3\",\n            \"text-7\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 09:00:45\"\n    },\n    \"widget_text[8]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjE0OiJSZXRyb3V2ZXotbm91cyI7czo0OiJ0ZXh0IjtzOjE4OToiPHN0cm9uZz5BZHJlc3NlPC9zdHJvbmc+CkF2ZW51ZSBkZXMgQ2hhbXBzLcOJbHlzw6llcwo3NTAwOCwgUGFyaXMKCjxzdHJvbmc+SGV1cmVzIGTigJlvdXZlcnR1cmU8L3N0cm9uZz4KRHUgbHVuZGkgYXUgdmVuZHJlZGnCoDogOWgwMCZuZGFzaDsxN2gwMApMZXMgc2FtZWRpIGV0IGRpbWFuY2hlwqA6IDExaDAwJm5kYXNoOzE1aDAwIjtzOjY6ImZpbHRlciI7YjoxO3M6NjoidmlzdWFsIjtiOjE7fQ==\",\n            \"title\": \"Retrouvez-nous\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"7949785d16838caad8a0c8066e6ca119\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 09:00:45\"\n    },\n    \"sidebars_widgets[sidebar-2]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-8\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 09:00:45\"\n    },\n    \"widget_text[9]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjIwOiLDgCBwcm9wb3MgZGUgY2Ugc2l0ZSI7czo0OiJ0ZXh0IjtzOjk5OiJD4oCZZXN0IHBldXQtw6p0cmUgbGUgYm9uIGVuZHJvaXQgcG91ciB2b3VzIHByw6lzZW50ZXIgZXQgdm90cmUgc2l0ZSBvdSBpbnPDqXJlciBxdWVscXVlcyBjcsOpZGl0cy4iO3M6NjoiZmlsdGVyIjtiOjE7czo2OiJ2aXN1YWwiO2I6MTt9\",\n            \"title\": \"\\u00c0 propos de ce site\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"fb8e87fd48c433280d3942e57dfceea8\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 09:00:45\"\n    },\n    \"widget_search[4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjU6InRpdGxlIjtzOjEwOiJSZWNoZXJjaGVyIjt9\",\n            \"title\": \"Rechercher\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"c0c6f2d6600aea187142ed5f1cf2571a\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 09:00:45\"\n    },\n    \"sidebars_widgets[sidebar-3]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-9\",\n            \"search-4\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 09:00:45\"\n    },\n    \"nav_menus_created_posts\": {\n        \"starter_content\": true,\n        \"value\": [\n            22,\n            23,\n            24,\n            25,\n            26,\n            27,\n            28,\n            29\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 09:00:45\"\n    },\n    \"nav_menu[-1]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"name\": \"Menu sup\\u00e9rieur\"\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 09:00:45\"\n    },\n    \"nav_menu_item[-1]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"custom\",\n            \"title\": \"Accueil\",\n            \"url\": \"http://localhost/wordpress/\",\n            \"position\": 0,\n            \"nav_menu_term_id\": -1,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 09:00:45\"\n    },\n    \"nav_menu_item[-2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 26,\n            \"position\": 1,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"\\u00c0 propos de\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 09:00:45\"\n    },\n    \"nav_menu_item[-3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 28,\n            \"position\": 2,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"Blog\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 09:00:45\"\n    },\n    \"nav_menu_item[-4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 27,\n            \"position\": 3,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"Contact\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 09:00:45\"\n    },\n    \"twentyseventeen::nav_menu_locations[top]\": {\n        \"starter_content\": true,\n        \"value\": -1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 09:00:45\"\n    },\n    \"nav_menu[-5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"name\": \"Menu des liens de r\\u00e9seaux sociaux\"\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 09:00:45\"\n    },\n    \"nav_menu_item[-5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Yelp\",\n            \"url\": \"https://www.yelp.com\",\n            \"position\": 0,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 09:00:45\"\n    },\n    \"nav_menu_item[-6]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Facebook\",\n            \"url\": \"https://www.facebook.com/wordpress\",\n            \"position\": 1,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 09:00:45\"\n    },\n    \"nav_menu_item[-7]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Twitter\",\n            \"url\": \"https://twitter.com/wordpress\",\n            \"position\": 2,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 09:00:45\"\n    },\n    \"nav_menu_item[-8]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Instagram\",\n            \"url\": \"https://www.instagram.com/explore/tags/wordcamp/\",\n            \"position\": 3,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 09:00:45\"\n    },\n    \"nav_menu_item[-9]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"E-mail\",\n            \"url\": \"mailto:wordpress@example.com\",\n            \"position\": 4,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 09:00:45\"\n    },\n    \"twentyseventeen::nav_menu_locations[social]\": {\n        \"starter_content\": true,\n        \"value\": -5,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 09:00:45\"\n    },\n    \"show_on_front\": {\n        \"starter_content\": true,\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 09:00:45\"\n    },\n    \"page_on_front\": {\n        \"starter_content\": true,\n        \"value\": 25,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 09:00:45\"\n    },\n    \"page_for_posts\": {\n        \"starter_content\": true,\n        \"value\": 28,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 09:00:45\"\n    },\n    \"twentyseventeen::panel_1\": {\n        \"starter_content\": true,\n        \"value\": 29,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 09:00:45\"\n    },\n    \"twentyseventeen::panel_2\": {\n        \"starter_content\": true,\n        \"value\": 26,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 09:00:45\"\n    },\n    \"twentyseventeen::panel_3\": {\n        \"starter_content\": true,\n        \"value\": 28,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 09:00:45\"\n    },\n    \"twentyseventeen::panel_4\": {\n        \"starter_content\": true,\n        \"value\": 27,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 09:00:45\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '12cd2bb1-3aae-4451-86a9-92c075f39653', '', '', '2018-03-12 10:00:45', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=30', 0, 'customize_changeset', '', 0),
(31, 1, '2018-03-12 10:00:49', '0000-00-00 00:00:00', '', 'Expresso', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-12 10:00:46', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/03/espresso-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(32, 1, '2018-03-12 10:00:49', '0000-00-00 00:00:00', '', 'Sandwich', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-12 10:00:47', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/03/sandwich-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(33, 1, '2018-03-12 10:00:49', '0000-00-00 00:00:00', '', 'Café', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-12 10:00:48', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/03/coffee-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(34, 1, '2018-03-12 10:00:49', '0000-00-00 00:00:00', 'Bienvenue sur votre site ! C’est votre page d’accueil que vos visiteurs verront lorsqu’ils arriveront sur votre site la première fois.', 'Accueil', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-12 10:00:49', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=34', 0, 'page', '', 0),
(35, 1, '2018-03-12 10:00:49', '0000-00-00 00:00:00', 'Vous pourriez être un artiste et vouloir présenter vos travaux et vous même ou encore être une entreprise avec une mission à promouvoir.', 'À propos de', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-12 10:00:49', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=35', 0, 'page', '', 0),
(36, 1, '2018-03-12 10:00:49', '0000-00-00 00:00:00', 'C’est une page avec des informations de contact de base, comme l’adresse et le numéro de téléphone. Vous pouvez aussi essayer une extension pour ajouter un formulaire de contact.', 'Contact', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-12 10:00:49', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=36', 0, 'page', '', 0),
(37, 1, '2018-03-12 10:00:49', '0000-00-00 00:00:00', '', 'Blog', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-12 10:00:49', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=37', 0, 'page', '', 0),
(38, 1, '2018-03-12 10:00:49', '0000-00-00 00:00:00', 'C’est un exemple de section de page d’accueil. Les sections de page d’accueil peuvent être n’importe quelle page autre que la page d’accueil elle-même, y compris la page qui affiche vos derniers articles de blog.', 'Une section de page d’accueil', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-12 10:00:49', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=38', 0, 'page', '', 0);
INSERT INTO `monsite_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(39, 1, '2018-03-12 10:00:49', '0000-00-00 00:00:00', '{\n    \"widget_text[6]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjE0OiJSZXRyb3V2ZXotbm91cyI7czo0OiJ0ZXh0IjtzOjE4OToiPHN0cm9uZz5BZHJlc3NlPC9zdHJvbmc+CkF2ZW51ZSBkZXMgQ2hhbXBzLcOJbHlzw6llcwo3NTAwOCwgUGFyaXMKCjxzdHJvbmc+SGV1cmVzIGTigJlvdXZlcnR1cmU8L3N0cm9uZz4KRHUgbHVuZGkgYXUgdmVuZHJlZGnCoDogOWgwMCZuZGFzaDsxN2gwMApMZXMgc2FtZWRpIGV0IGRpbWFuY2hlwqA6IDExaDAwJm5kYXNoOzE1aDAwIjtzOjY6ImZpbHRlciI7YjoxO3M6NjoidmlzdWFsIjtiOjE7fQ==\",\n            \"title\": \"Retrouvez-nous\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"7949785d16838caad8a0c8066e6ca119\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 09:00:49\"\n    },\n    \"widget_search[3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjU6InRpdGxlIjtzOjEwOiJSZWNoZXJjaGVyIjt9\",\n            \"title\": \"Rechercher\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"c0c6f2d6600aea187142ed5f1cf2571a\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 09:00:49\"\n    },\n    \"widget_text[7]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjIwOiLDgCBwcm9wb3MgZGUgY2Ugc2l0ZSI7czo0OiJ0ZXh0IjtzOjk5OiJD4oCZZXN0IHBldXQtw6p0cmUgbGUgYm9uIGVuZHJvaXQgcG91ciB2b3VzIHByw6lzZW50ZXIgZXQgdm90cmUgc2l0ZSBvdSBpbnPDqXJlciBxdWVscXVlcyBjcsOpZGl0cy4iO3M6NjoiZmlsdGVyIjtiOjE7czo2OiJ2aXN1YWwiO2I6MTt9\",\n            \"title\": \"\\u00c0 propos de ce site\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"fb8e87fd48c433280d3942e57dfceea8\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 09:00:49\"\n    },\n    \"sidebars_widgets[sidebar-1]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-6\",\n            \"search-3\",\n            \"text-7\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 09:00:49\"\n    },\n    \"widget_text[8]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjE0OiJSZXRyb3V2ZXotbm91cyI7czo0OiJ0ZXh0IjtzOjE4OToiPHN0cm9uZz5BZHJlc3NlPC9zdHJvbmc+CkF2ZW51ZSBkZXMgQ2hhbXBzLcOJbHlzw6llcwo3NTAwOCwgUGFyaXMKCjxzdHJvbmc+SGV1cmVzIGTigJlvdXZlcnR1cmU8L3N0cm9uZz4KRHUgbHVuZGkgYXUgdmVuZHJlZGnCoDogOWgwMCZuZGFzaDsxN2gwMApMZXMgc2FtZWRpIGV0IGRpbWFuY2hlwqA6IDExaDAwJm5kYXNoOzE1aDAwIjtzOjY6ImZpbHRlciI7YjoxO3M6NjoidmlzdWFsIjtiOjE7fQ==\",\n            \"title\": \"Retrouvez-nous\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"7949785d16838caad8a0c8066e6ca119\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 09:00:49\"\n    },\n    \"sidebars_widgets[sidebar-2]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-8\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 09:00:49\"\n    },\n    \"widget_text[9]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjIwOiLDgCBwcm9wb3MgZGUgY2Ugc2l0ZSI7czo0OiJ0ZXh0IjtzOjk5OiJD4oCZZXN0IHBldXQtw6p0cmUgbGUgYm9uIGVuZHJvaXQgcG91ciB2b3VzIHByw6lzZW50ZXIgZXQgdm90cmUgc2l0ZSBvdSBpbnPDqXJlciBxdWVscXVlcyBjcsOpZGl0cy4iO3M6NjoiZmlsdGVyIjtiOjE7czo2OiJ2aXN1YWwiO2I6MTt9\",\n            \"title\": \"\\u00c0 propos de ce site\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"fb8e87fd48c433280d3942e57dfceea8\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 09:00:49\"\n    },\n    \"widget_search[4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjU6InRpdGxlIjtzOjEwOiJSZWNoZXJjaGVyIjt9\",\n            \"title\": \"Rechercher\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"c0c6f2d6600aea187142ed5f1cf2571a\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 09:00:49\"\n    },\n    \"sidebars_widgets[sidebar-3]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-9\",\n            \"search-4\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 09:00:49\"\n    },\n    \"nav_menus_created_posts\": {\n        \"starter_content\": true,\n        \"value\": [\n            31,\n            32,\n            33,\n            34,\n            35,\n            36,\n            37,\n            38\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 09:00:49\"\n    },\n    \"nav_menu[-1]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"name\": \"Menu sup\\u00e9rieur\"\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 09:00:49\"\n    },\n    \"nav_menu_item[-1]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"custom\",\n            \"title\": \"Accueil\",\n            \"url\": \"http://localhost/wordpress/\",\n            \"position\": 0,\n            \"nav_menu_term_id\": -1,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 09:00:49\"\n    },\n    \"nav_menu_item[-2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 35,\n            \"position\": 1,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"\\u00c0 propos de\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 09:00:49\"\n    },\n    \"nav_menu_item[-3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 37,\n            \"position\": 2,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"Blog\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 09:00:49\"\n    },\n    \"nav_menu_item[-4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 36,\n            \"position\": 3,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"Contact\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 09:00:49\"\n    },\n    \"twentyseventeen::nav_menu_locations[top]\": {\n        \"starter_content\": true,\n        \"value\": -1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 09:00:49\"\n    },\n    \"nav_menu[-5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"name\": \"Menu des liens de r\\u00e9seaux sociaux\"\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 09:00:49\"\n    },\n    \"nav_menu_item[-5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Yelp\",\n            \"url\": \"https://www.yelp.com\",\n            \"position\": 0,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 09:00:49\"\n    },\n    \"nav_menu_item[-6]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Facebook\",\n            \"url\": \"https://www.facebook.com/wordpress\",\n            \"position\": 1,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 09:00:49\"\n    },\n    \"nav_menu_item[-7]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Twitter\",\n            \"url\": \"https://twitter.com/wordpress\",\n            \"position\": 2,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 09:00:49\"\n    },\n    \"nav_menu_item[-8]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Instagram\",\n            \"url\": \"https://www.instagram.com/explore/tags/wordcamp/\",\n            \"position\": 3,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 09:00:49\"\n    },\n    \"nav_menu_item[-9]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"E-mail\",\n            \"url\": \"mailto:wordpress@example.com\",\n            \"position\": 4,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 09:00:49\"\n    },\n    \"twentyseventeen::nav_menu_locations[social]\": {\n        \"starter_content\": true,\n        \"value\": -5,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 09:00:49\"\n    },\n    \"show_on_front\": {\n        \"starter_content\": true,\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 09:00:49\"\n    },\n    \"page_on_front\": {\n        \"starter_content\": true,\n        \"value\": 34,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 09:00:49\"\n    },\n    \"page_for_posts\": {\n        \"starter_content\": true,\n        \"value\": 37,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 09:00:49\"\n    },\n    \"twentyseventeen::panel_1\": {\n        \"starter_content\": true,\n        \"value\": 38,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 09:00:49\"\n    },\n    \"twentyseventeen::panel_2\": {\n        \"starter_content\": true,\n        \"value\": 35,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 09:00:49\"\n    },\n    \"twentyseventeen::panel_3\": {\n        \"starter_content\": true,\n        \"value\": 37,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 09:00:49\"\n    },\n    \"twentyseventeen::panel_4\": {\n        \"starter_content\": true,\n        \"value\": 36,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 09:00:49\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '6c901573-0561-49c6-a03b-600e402a4a69', '', '', '2018-03-12 10:00:49', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=39', 0, 'customize_changeset', '', 0),
(40, 1, '2018-03-12 10:09:48', '2018-03-12 09:09:48', 'Salut salut !', 'Accueil', '', 'publish', 'closed', 'closed', '', 'accueil', '', '', '2018-03-13 10:14:44', '2018-03-13 09:14:44', '', 0, 'http://localhost/wordpress/?page_id=40', 0, 'page', '', 0),
(41, 1, '2018-03-12 10:09:48', '2018-03-12 09:09:48', 'Salut salut !', 'Accueil', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2018-03-12 10:09:48', '2018-03-12 09:09:48', '', 40, 'http://localhost/wordpress/2018/03/12/40-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2018-03-12 10:09:57', '2018-03-12 09:09:57', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2018-03-12 10:09:57', '2018-03-12 09:09:57', '', 0, 'http://localhost/wordpress/?page_id=42', 0, 'page', '', 0),
(43, 1, '2018-03-12 10:09:57', '2018-03-12 09:09:57', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2018-03-12 10:09:57', '2018-03-12 09:09:57', '', 42, 'http://localhost/wordpress/2018/03/12/42-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2018-03-12 10:12:35', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-03-12 10:12:35', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=44', 1, 'nav_menu_item', '', 0),
(45, 1, '2018-03-12 10:12:35', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-03-12 10:12:35', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=45', 1, 'nav_menu_item', '', 0),
(46, 1, '2018-03-12 10:12:35', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-03-12 10:12:35', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=46', 1, 'nav_menu_item', '', 0),
(47, 1, '2018-03-12 10:12:35', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-03-12 10:12:35', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=47', 1, 'nav_menu_item', '', 0),
(48, 1, '2018-03-12 10:13:27', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-03-12 10:13:27', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=48', 1, 'nav_menu_item', '', 0),
(49, 1, '2018-03-12 10:13:27', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-03-12 10:13:27', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=49', 1, 'nav_menu_item', '', 0),
(50, 1, '2018-03-12 10:13:27', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-03-12 10:13:27', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=50', 1, 'nav_menu_item', '', 0),
(51, 1, '2018-03-12 10:13:27', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-03-12 10:13:27', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=51', 1, 'nav_menu_item', '', 0),
(52, 1, '2018-03-12 10:14:01', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-03-12 10:14:01', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=52', 1, 'nav_menu_item', '', 0),
(53, 1, '2018-03-12 10:14:01', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-03-12 10:14:01', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=53', 1, 'nav_menu_item', '', 0),
(54, 1, '2018-03-12 10:14:01', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-03-12 10:14:01', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=54', 1, 'nav_menu_item', '', 0),
(55, 1, '2018-03-12 10:14:01', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-03-12 10:14:01', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=55', 1, 'nav_menu_item', '', 0),
(56, 1, '2018-03-12 10:14:22', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-03-12 10:14:22', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=56', 1, 'nav_menu_item', '', 0),
(57, 1, '2018-03-12 10:14:22', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-03-12 10:14:22', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=57', 1, 'nav_menu_item', '', 0),
(58, 1, '2018-03-12 10:14:22', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-03-12 10:14:22', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=58', 1, 'nav_menu_item', '', 0),
(59, 1, '2018-03-12 10:14:22', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-03-12 10:14:22', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=59', 1, 'nav_menu_item', '', 0),
(60, 1, '2018-03-12 10:14:36', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-03-12 10:14:36', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=60', 1, 'nav_menu_item', '', 0),
(61, 1, '2018-03-12 10:15:10', '2018-03-12 09:15:10', ' ', '', '', 'publish', 'closed', 'closed', '', '61', '', '', '2018-03-12 16:57:28', '2018-03-12 15:57:28', '', 0, 'http://localhost/wordpress/?p=61', 1, 'nav_menu_item', '', 0),
(62, 1, '2018-03-12 10:15:10', '2018-03-12 09:15:10', ' ', '', '', 'publish', 'closed', 'closed', '', '62', '', '', '2018-03-12 16:57:28', '2018-03-12 15:57:28', '', 0, 'http://localhost/wordpress/?p=62', 2, 'nav_menu_item', '', 0),
(64, 1, '2018-03-12 10:15:53', '2018-03-12 09:15:53', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin eget dapibus lacus, a ultricies leo. Etiam quis ex diam. Proin venenatis elit nunc, nec pulvinar turpis facilisis ac. Nullam vitae tellus nisi. Pellentesque hendrerit leo nec odio semper interdum. Pellentesque vitae lectus et diam consectetur porta. Etiam at nisi ut purus sagittis interdum in quis leo. Aliquam malesuada faucibus sem in vestibulum. Fusce finibus a est et consequat. Quisque porttitor justo id dictum malesuada. Aenean quis risus ac leo molestie laoreet. Interdum et malesuada fames ac ante ipsum primis in faucibus. Curabitur placerat mi sed massa congue, id sagittis mi scelerisque. Aenean sagittis placerat est eget ullamcorper. Praesent tincidunt turpis ipsum, nec pellentesque eros luctus et.\r\n\r\nEtiam nec nunc ac eros luctus vehicula. Nullam ut enim sed odio dictum scelerisque sed eget sapien. In tortor odio, tempor et sollicitudin nec, posuere semper tellus. Fusce nec lorem a tellus lacinia vulputate consequat ut arcu. Vivamus dapibus nulla nec ex mollis pharetra. In volutpat fermentum viverra. Ut imperdiet nibh nec varius bibendum. Quisque dapibus pellentesque erat a ullamcorper. Maecenas sapien elit, commodo ac lorem a, condimentum convallis lacus.\r\n\r\nNunc porta, arcu ut vehicula sagittis, libero urna malesuada nulla, ut lacinia velit magna vitae ipsum. Etiam ultrices, felis vitae ultrices sodales, ante sapien gravida leo, eu rutrum sem elit non nisi. Ut nisi nulla, consectetur hendrerit convallis id, sollicitudin non augue. Morbi id augue nec dui mollis suscipit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sit amet vestibulum lacus. Aenean in sem maximus, auctor felis nec, laoreet felis. Curabitur ultricies tincidunt faucibus. Mauris iaculis orci at maximus posuere. In placerat lacus sed maximus varius. Praesent consequat sem ante, vel aliquet metus venenatis nec. Suspendisse placerat placerat cursus. Integer enim dui, pulvinar vel diam eu, condimentum mollis quam. Aliquam erat volutpat. Fusce malesuada nibh sed semper suscipit.\r\n\r\nIn egestas aliquam imperdiet. Aenean dolor sem, tempor vel tincidunt non, cursus at nisl. Pellentesque sit amet velit vel quam eleifend rutrum et ac augue. Cras vulputate tellus et fermentum pretium. Morbi lobortis risus consectetur, blandit magna scelerisque, euismod elit. Vestibulum elementum ut metus et ullamcorper. Nullam malesuada et tortor eu eleifend.\r\n\r\nDonec tempor diam sed congue blandit. Vivamus ornare pretium libero. Sed sed tincidunt erat. Maecenas luctus, elit ac rutrum placerat, velit enim scelerisque arcu, eu vestibulum lorem magna vitae tellus. Sed blandit volutpat ullamcorper. Nulla aliquam rhoncus nulla ut volutpat. Maecenas id nunc justo. Donec arcu turpis, efficitur ut vehicula in, ornare vitae massa. Vivamus in ipsum neque. Vestibulum convallis tincidunt neque sit amet sodales. In interdum urna sit amet nunc pretium, non laoreet turpis vehicula. Nam leo justo, blandit a risus varius, efficitur consequat odio. Maecenas sagittis hendrerit ex nec semper. Aliquam volutpat leo sit amet arcu vestibulum pulvinar.', 'Mon premier article', '', 'publish', 'open', 'open', '', 'mon-premier-article', '', '', '2018-03-12 10:15:53', '2018-03-12 09:15:53', '', 0, 'http://localhost/wordpress/?p=64', 0, 'post', '', 0),
(65, 1, '2018-03-12 10:15:53', '2018-03-12 09:15:53', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin eget dapibus lacus, a ultricies leo. Etiam quis ex diam. Proin venenatis elit nunc, nec pulvinar turpis facilisis ac. Nullam vitae tellus nisi. Pellentesque hendrerit leo nec odio semper interdum. Pellentesque vitae lectus et diam consectetur porta. Etiam at nisi ut purus sagittis interdum in quis leo. Aliquam malesuada faucibus sem in vestibulum. Fusce finibus a est et consequat. Quisque porttitor justo id dictum malesuada. Aenean quis risus ac leo molestie laoreet. Interdum et malesuada fames ac ante ipsum primis in faucibus. Curabitur placerat mi sed massa congue, id sagittis mi scelerisque. Aenean sagittis placerat est eget ullamcorper. Praesent tincidunt turpis ipsum, nec pellentesque eros luctus et.\r\n\r\nEtiam nec nunc ac eros luctus vehicula. Nullam ut enim sed odio dictum scelerisque sed eget sapien. In tortor odio, tempor et sollicitudin nec, posuere semper tellus. Fusce nec lorem a tellus lacinia vulputate consequat ut arcu. Vivamus dapibus nulla nec ex mollis pharetra. In volutpat fermentum viverra. Ut imperdiet nibh nec varius bibendum. Quisque dapibus pellentesque erat a ullamcorper. Maecenas sapien elit, commodo ac lorem a, condimentum convallis lacus.\r\n\r\nNunc porta, arcu ut vehicula sagittis, libero urna malesuada nulla, ut lacinia velit magna vitae ipsum. Etiam ultrices, felis vitae ultrices sodales, ante sapien gravida leo, eu rutrum sem elit non nisi. Ut nisi nulla, consectetur hendrerit convallis id, sollicitudin non augue. Morbi id augue nec dui mollis suscipit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sit amet vestibulum lacus. Aenean in sem maximus, auctor felis nec, laoreet felis. Curabitur ultricies tincidunt faucibus. Mauris iaculis orci at maximus posuere. In placerat lacus sed maximus varius. Praesent consequat sem ante, vel aliquet metus venenatis nec. Suspendisse placerat placerat cursus. Integer enim dui, pulvinar vel diam eu, condimentum mollis quam. Aliquam erat volutpat. Fusce malesuada nibh sed semper suscipit.\r\n\r\nIn egestas aliquam imperdiet. Aenean dolor sem, tempor vel tincidunt non, cursus at nisl. Pellentesque sit amet velit vel quam eleifend rutrum et ac augue. Cras vulputate tellus et fermentum pretium. Morbi lobortis risus consectetur, blandit magna scelerisque, euismod elit. Vestibulum elementum ut metus et ullamcorper. Nullam malesuada et tortor eu eleifend.\r\n\r\nDonec tempor diam sed congue blandit. Vivamus ornare pretium libero. Sed sed tincidunt erat. Maecenas luctus, elit ac rutrum placerat, velit enim scelerisque arcu, eu vestibulum lorem magna vitae tellus. Sed blandit volutpat ullamcorper. Nulla aliquam rhoncus nulla ut volutpat. Maecenas id nunc justo. Donec arcu turpis, efficitur ut vehicula in, ornare vitae massa. Vivamus in ipsum neque. Vestibulum convallis tincidunt neque sit amet sodales. In interdum urna sit amet nunc pretium, non laoreet turpis vehicula. Nam leo justo, blandit a risus varius, efficitur consequat odio. Maecenas sagittis hendrerit ex nec semper. Aliquam volutpat leo sit amet arcu vestibulum pulvinar.', 'Mon premier article', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2018-03-12 10:15:53', '2018-03-12 09:15:53', '', 64, 'http://localhost/wordpress/2018/03/12/64-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2018-03-12 12:04:52', '2018-03-12 11:04:52', '', 'Zones de la page d\'accueil', '', 'publish', 'closed', 'closed', '', 'acf_zones-de-la-page-daccueil', '', '', '2018-03-12 14:28:34', '2018-03-12 13:28:34', '', 0, 'http://localhost/wordpress/?post_type=acf&#038;p=66', 0, 'acf', '', 0),
(67, 1, '2018-03-12 12:12:25', '2018-03-12 11:12:25', '', 'slider1', '', 'inherit', 'open', 'closed', '', 'slider1', '', '', '2018-03-12 12:12:25', '2018-03-12 11:12:25', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/03/slider1.jpg', 0, 'attachment', 'image/jpeg', 0),
(68, 1, '2018-03-12 12:12:26', '2018-03-12 11:12:26', '', 'slider2', '', 'inherit', 'open', 'closed', '', 'slider2', '', '', '2018-03-12 12:12:26', '2018-03-12 11:12:26', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/03/slider2.jpg', 0, 'attachment', 'image/jpeg', 0),
(69, 1, '2018-03-12 12:12:51', '2018-03-12 11:12:51', '', 'slider3', '', 'inherit', 'open', 'closed', '', 'slider3', '', '', '2018-03-12 15:55:42', '2018-03-12 14:55:42', '', 40, 'http://localhost/wordpress/wp-content/uploads/2018/03/slider3.jpg', 0, 'attachment', 'image/jpeg', 0),
(70, 1, '2018-03-12 12:14:37', '2018-03-12 11:14:37', 'Salut salut !', 'Accueil', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2018-03-12 12:14:37', '2018-03-12 11:14:37', '', 40, 'http://localhost/wordpress/2018/03/12/40-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2018-03-12 12:14:48', '2018-03-12 11:14:48', 'Salut salut !', 'Accueil', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2018-03-12 12:14:48', '2018-03-12 11:14:48', '', 40, 'http://localhost/wordpress/2018/03/12/40-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2018-03-12 14:13:07', '2018-03-12 13:13:07', 'Salut salut !', 'Accueil', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2018-03-12 14:13:07', '2018-03-12 13:13:07', '', 40, 'http://localhost/wordpress/2018/03/12/40-revision-v1/', 0, 'revision', '', 0),
(73, 1, '2018-03-12 14:49:45', '2018-03-12 13:49:45', '', 'parallax1', '', 'inherit', 'open', 'closed', '', 'parallax1', '', '', '2018-03-12 14:49:45', '2018-03-12 13:49:45', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/03/parallax1.jpg', 0, 'attachment', 'image/jpeg', 0),
(74, 1, '2018-03-12 14:56:13', '2018-03-12 13:56:13', '', 'vignette', '', 'inherit', 'open', 'closed', '', 'vignette', '', '', '2018-03-12 14:56:13', '2018-03-12 13:56:13', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/03/vignette.jpg', 0, 'attachment', 'image/jpeg', 0),
(75, 1, '2018-03-12 14:56:14', '2018-03-12 13:56:14', '', 'vignette1', '', 'inherit', 'open', 'closed', '', 'vignette1', '', '', '2018-03-12 14:56:14', '2018-03-12 13:56:14', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/03/vignette1.jpg', 0, 'attachment', 'image/jpeg', 0),
(76, 1, '2018-03-12 14:56:14', '2018-03-12 13:56:14', '', 'vignette2', '', 'inherit', 'open', 'closed', '', 'vignette2', '', '', '2018-03-12 14:56:14', '2018-03-12 13:56:14', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/03/vignette2.jpg', 0, 'attachment', 'image/jpeg', 0),
(77, 1, '2018-03-12 14:56:15', '2018-03-12 13:56:15', '', 'vignette3', '', 'inherit', 'open', 'closed', '', 'vignette3', '', '', '2018-03-12 14:56:15', '2018-03-12 13:56:15', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/03/vignette3.jpg', 0, 'attachment', 'image/jpeg', 0),
(78, 1, '2018-03-12 14:57:49', '2018-03-12 13:57:49', 'Salut salut !', 'Accueil', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2018-03-12 14:57:49', '2018-03-12 13:57:49', '', 40, 'http://localhost/wordpress/2018/03/12/40-revision-v1/', 0, 'revision', '', 0),
(79, 1, '2018-03-12 15:06:37', '2018-03-12 14:06:37', 'Salut salut !', 'Accueil', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2018-03-12 15:06:37', '2018-03-12 14:06:37', '', 40, 'http://localhost/wordpress/2018/03/12/40-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2018-03-12 15:26:56', '2018-03-12 14:26:56', '<label> Votre nom (obligatoire)\r\n    [text* your-name] </label>\r\n\r\n<label> Votre adresse de messagerie (obligatoire)\r\n    [email* your-email] </label>\r\n\r\n<label> Objet\r\n    [text your-subject] </label>\r\n\r\n<label> Votre message\r\n    [textarea your-message] </label>\r\n\r\n[recaptcha]\r\n\r\n[submit \"Envoyer\"]\n1\nMega site \"[your-subject]\"\n[your-name] <maxime.joyes@gmail.com>\nmaxime.joyes@gmail.com\nDe : [your-name] <[your-email]>\r\nObjet : [your-subject]\r\n\r\nCorps du message :\r\n[your-message]\r\n\r\n-- \r\nCet e-mail a été envoyé via le formulaire de contact de Mega site (http://localhost/wordpress)\nReply-To: [your-email]\n\n\n\n\nMega site \"[your-subject]\"\nMega site <maxime.joyes@gmail.com>\n[your-email]\nCorps du message :\r\n[your-message]\r\n\r\n-- \r\nCet e-mail a été envoyé via le formulaire de contact de Mega site (http://localhost/wordpress)\nReply-To: maxime.joyes@gmail.com\n\n\n\nMerci pour votre message. Il a été envoyé.\nUne erreur s’est produite lors de l’envoi de votre message. Veuillez essayer à nouveau plus tard.\nUn ou plusieurs champs contiennent une erreur. Veuillez vérifier et essayer à nouveau.\nUne erreur s’est produite lors de l’envoi de votre message. Veuillez essayer à nouveau plus tard.\nVous devez accepter les termes et conditions avant d’envoyer votre message.\nCe champ est obligatoire.\nLe champ est trop long.\nLe champ est trop court.\nLe format de date est incorrect.\nLa date précède la première date autorisée.\nLa date est postérieure à la dernière date autorisée.\nUne erreur inconnue s’est produite lors du téléversement du fichier.\nVous n’avez pas les droits nécessaires pour téléverser ce type de fichier.\nLe fichier est trop volumineux.\nUne erreur s’est produite lors du téléversement du fichier.\nLe format du nombre est invalide.\nLe nombre est plus petit que le minimum autorisé.\nLe nombre est plus grand que le maximum autorisé.\nLa réponse à la question est incorrecte.\nLe code entré est incorrect.\nL’adresse e-mail n’est pas valide.\nL’URL n’est pas valide.\nLe numéro de téléphone n’est pas valide.', 'Formulaire de contact 1', '', 'publish', 'closed', 'closed', '', 'formulaire-de-contact-1', '', '', '2018-03-12 15:40:34', '2018-03-12 14:40:34', '', 0, 'http://localhost/wordpress/?post_type=wpcf7_contact_form&#038;p=80', 0, 'wpcf7_contact_form', '', 0),
(81, 1, '2018-03-12 15:31:26', '2018-03-12 14:31:26', '[wpgmza id=\"1\"]\r\n\r\n[contact-form-7 id=\"80\" title=\"Formulaire de contact 1\"]', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2018-03-13 10:41:07', '2018-03-13 09:41:07', '', 0, 'http://localhost/wordpress/?page_id=81', 0, 'page', '', 0),
(82, 1, '2018-03-12 15:31:26', '2018-03-12 14:31:26', '[contact-form-7 id=\"80\" title=\"Formulaire de contact 1\"]', 'Contact', '', 'inherit', 'closed', 'closed', '', '81-revision-v1', '', '', '2018-03-12 15:31:26', '2018-03-12 14:31:26', '', 81, 'http://localhost/wordpress/2018/03/12/81-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2018-03-12 15:31:39', '2018-03-12 14:31:39', ' ', '', '', 'publish', 'closed', 'closed', '', '83', '', '', '2018-03-12 16:57:28', '2018-03-12 15:57:28', '', 0, 'http://localhost/wordpress/?p=83', 3, 'nav_menu_item', '', 0),
(84, 1, '2018-03-12 15:56:15', '2018-03-12 14:56:15', 'Salut salut !', 'Accueil', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2018-03-12 15:56:15', '2018-03-12 14:56:15', '', 40, 'http://localhost/wordpress/2018/03/12/40-revision-v1/', 0, 'revision', '', 0),
(85, 1, '2018-03-12 16:42:48', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-12 16:42:48', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=acf&p=85', 0, 'acf', '', 0),
(86, 1, '2018-03-12 16:47:08', '2018-03-12 15:47:08', '', 'Section de Concert', '', 'publish', 'closed', 'closed', '', 'acf_section-de-concert', '', '', '2018-03-13 10:13:01', '2018-03-13 09:13:01', '', 0, 'http://localhost/wordpress/?post_type=acf&#038;p=86', 0, 'acf', '', 0),
(87, 1, '2018-03-12 16:47:58', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-12 16:47:58', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=concert&p=87', 0, 'concert', '', 0),
(88, 1, '2018-03-12 16:56:36', '2018-03-12 15:56:36', '<p class=\"rtejustify\"><strong>Kendrick Lamar</strong>, l’artiste de <strong>Top Dawg Entertainment</strong> et vainqueur de sept Grammys, s’apprête à embarquer pour la branche européenne du <strong>THE DAMN. TOUR</strong> au printemps 2018. Produit par Live Nation, <strong>THE DAMN. TOUR</strong> verra Kendrick performer 15 dates à travers 11 pays différents, en commençant par Dublin, Irlande, le 7 Février, au the 3Arena. La tournée inclus des dates en Angleterre, Allemagne, Hollande, Ecosse, France, Belgique, Danemark, Norvège et Suède.</p>\r\n<p class=\"rtejustify\"><strong>THE DAMN. TOUR</strong> accompagne la sortie de son quatrième album salué par la critique, DAMN. (Top Dawg Entertainment/Aftermath/Interscope Records), entré #1 au Billboard 200 – sa troisième présence au sommet – vendu à plus de 2.3 millions d’albums à ce jour, et additionnant plus de 400 million de streams. 14 titres qui observent la complexité de la culture contemporaine. D’après Pitchfork: \"DAMN. est un chef d’oeuvre de rap sur écran large, rempli de beats coûteux, de rimes furieuses, et d’un storytelling sans pareil à propos du destin de <strong>Kendrick Lamar</strong> en Amérique” et Rolling Stone décrit DAMN. comme un \"éblouissant assemblage de rimes spectaculaires, de tirades politiques aptes à ouvrir les consciences, de recherche sur soi et de basses coups de pieds…\"</p>', 'THE DAMN. TOUR - Kendrick Lamar', '', 'publish', 'open', 'closed', '', 'the-damn-tour-kendrick-lamar', '', '', '2018-03-12 16:56:36', '2018-03-12 15:56:36', '', 0, 'http://localhost/wordpress/?post_type=concert&#038;p=88', 0, 'concert', '', 0),
(89, 1, '2018-03-12 16:53:12', '2018-03-12 15:53:12', '', 'affiche_kendrick', '', 'inherit', 'open', 'closed', '', 'affiche_kendrick', '', '', '2018-03-12 16:53:12', '2018-03-12 15:53:12', '', 88, 'http://localhost/wordpress/wp-content/uploads/2018/03/affiche_kendrick.jpg', 0, 'attachment', 'image/jpeg', 0),
(90, 1, '2018-03-12 16:57:29', '2018-03-12 15:57:29', '', 'Tous les concerts', '', 'publish', 'closed', 'closed', '', 'tous-les-concerts', '', '', '2018-03-12 16:57:29', '2018-03-12 15:57:29', '', 0, 'http://localhost/wordpress/?p=90', 4, 'nav_menu_item', '', 0),
(91, 1, '2018-03-13 09:56:22', '2018-03-13 08:56:22', 'Après 10 ans, ils reviennent, NTM en concert exceptionnel à l\'AccorHotels Arena\r\n<p class=\"rtecenter\">Le retour de <strong>Suprême NTM</strong> sur scène !\r\nLes jeudi 8 vendredi 9 et samedi 10 mars 2018, à Paris !</p>\r\n<p class=\"rtecenter\">30 ans après le début de carrière du légendaire groupe de rap et de hip hop français Suprême NTM, <strong>Joeystarr</strong> et <strong>Kool Shen</strong> sont de retour pour trois concerts exceptionnels à l’AccorHotels Arena.</p>\r\n\r\n<h5 class=\"rtecenter\"><strong>Mise en vente générale : Vendredi 19 mai à 10h </strong></h5>', 'SUPRÊME NTM', '', 'publish', 'open', 'closed', '', 'supreme-ntm', '', '', '2018-03-13 10:06:32', '2018-03-13 09:06:32', '', 0, 'http://localhost/wordpress/?post_type=concert&#038;p=91', 0, 'concert', '', 0),
(92, 1, '2018-03-13 09:56:40', '2018-03-13 08:56:40', '', 'affiche_ntm', '', 'inherit', 'open', 'closed', '', 'affiche_ntm', '', '', '2018-03-13 09:56:40', '2018-03-13 08:56:40', '', 91, 'http://localhost/wordpress/wp-content/uploads/2018/03/affiche_ntm.jpg', 0, 'attachment', 'image/jpeg', 0),
(93, 1, '2018-03-13 09:59:29', '2018-03-13 08:59:29', 'Vald, de son vrai nom Valentin Le Du, né le 15 juillet 1992 est un rappeur français. Il découvre le rap vers ses 15 ans en surfant sur Internet et en tombant sur Kery James, il commence à rapper à l\'âge de 17 ans. Encore aujourd\'hui, il affirme lui-même ne pas avoir une grande culture dans le genre à cause de cette découverte tardive.\r\nIl dit fortement apprécier les mathématiques et est titulaire d\'un baccalauréat scientifique, au Lycée privé catholique l\'Espérance. Avant de se consacrer au rap, il effectue un semestre d\'études de médecine avant d\'arrêter, pour poursuivre avec une licence mathématiques-informatique où il décroche son diplôme, et une école d\'ingénieur du son.\r\nSes premières mixtapes, NQNTMQMQMB (Ni Queue Ni Tête Mais Qui Met Quand Même Bien) en 2012, puis Cours de rattrapage dans le courant de la même année, étaient mises en téléchargement gratuit sur son site. Elles sont rééditées en 2016 dans une édition double CD, vendue sur son site.\r\nLe 27 octobre 2014, il sort son premier EP NQNT (Ni Queue Ni Tête) signé sur le label du rappeur Tunisiano. Par la suite il sort, en juin 2015, le clip de son morceau Bonjour, avec lequel il fait remarquer sa propension pour l\'absurde et atteint rapidement le million de vues. Morceau qui apparaitra sur son deuxième EP NQNT 2 sorti le 25 septembre 2015 et qui se classe 1er des ventes numériques hebdomadaires et 11e tous supports confondus en France.\r\nLa sortie du premier album studio de Vald, intitulé Agartha, paraît en janvier 2017. Certifié platine, l’album s’écoule à plus de 100 000 exemplaires porté par les singles « Ma meilleure amie » et « Vitrine » feat Damso qui seront tous les deux certifiés single « OR ».\r\nVald est de retour avec un nouvel album « XEU » pour le 2 février, qui est porté par le tube « Désaccordé » !\r\n\r\nC’est donc ce nouvel effort, ainsi que tous ses classiques, que Vald viendra présenter à son public à travers la France à l’automne 2018.', 'VALD - XEU Tour', '', 'publish', 'open', 'closed', '', 'vald-xeu-tour', '', '', '2018-03-13 10:22:13', '2018-03-13 09:22:13', '', 0, 'http://localhost/wordpress/?post_type=concert&#038;p=93', 0, 'concert', '', 0),
(94, 1, '2018-03-13 09:58:06', '2018-03-13 08:58:06', '', 'vald_xeu', '', 'inherit', 'open', 'closed', '', 'vald_xeu', '', '', '2018-03-13 09:58:06', '2018-03-13 08:58:06', '', 93, 'http://localhost/wordpress/wp-content/uploads/2018/03/vald_xeu.jpg', 0, 'attachment', 'image/jpeg', 0),
(95, 1, '2018-03-13 10:05:56', '2018-03-13 09:05:56', 'Originaire du 9.3 (Seine-Saint-Denis), département mythique du rap le plus dur de la scène française, Kaaris est dans le sillage d\'un Booba. Sa carrière débute en 1999 et prend l\'habituelle trajectoire des freestyles et des collaborations. Kaaris figure en particulier sur Autopsie, Vol. 4 de Booba en 2011. En 2012, Kaaris est à l\'origine du clash entre Booba et La Fouine par l\'entremise de son titre « Ejaculation faciale », dans le clip duquel il fait disparaître le cadavre de La Fouine. Le déclenchement des hostilités entre les deux ténors début 2013, fait remonter à la surface le nom de Kaaris. Celui ci en profite pour placer « Zoo » parmi les meilleures ventes de singles en mars 2013.', 'Kaaris', '', 'publish', 'open', 'closed', '', 'kaaris', '', '', '2018-03-13 10:05:56', '2018-03-13 09:05:56', '', 0, 'http://localhost/wordpress/?post_type=concert&#038;p=95', 0, 'concert', '', 0),
(96, 1, '2018-03-13 10:05:18', '2018-03-13 09:05:18', '', 'kaaris', '', 'inherit', 'open', 'closed', '', 'kaaris', '', '', '2018-03-13 10:05:18', '2018-03-13 09:05:18', '', 95, 'http://localhost/wordpress/wp-content/uploads/2018/03/kaaris.jpg', 0, 'attachment', 'image/jpeg', 0),
(97, 1, '2018-03-13 10:14:27', '2018-03-13 09:14:27', '', 'parallax2', '', 'inherit', 'open', 'closed', '', 'parallax2', '', '', '2018-03-13 10:14:27', '2018-03-13 09:14:27', '', 40, 'http://localhost/wordpress/wp-content/uploads/2018/03/parallax2.jpg', 0, 'attachment', 'image/jpeg', 0),
(98, 1, '2018-03-13 10:14:44', '2018-03-13 09:14:44', 'Salut salut !', 'Accueil', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2018-03-13 10:14:44', '2018-03-13 09:14:44', '', 40, 'http://localhost/wordpress/2018/03/13/40-revision-v1/', 0, 'revision', '', 0),
(99, 1, '2018-03-13 10:41:07', '2018-03-13 09:41:07', '[wpgmza id=\"1\"]\r\n\r\n[contact-form-7 id=\"80\" title=\"Formulaire de contact 1\"]', 'Contact', '', 'inherit', 'closed', 'closed', '', '81-revision-v1', '', '', '2018-03-13 10:41:07', '2018-03-13 09:41:07', '', 81, 'http://localhost/wordpress/2018/03/13/81-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `monsite_termmeta`
--

CREATE TABLE `monsite_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `monsite_terms`
--

CREATE TABLE `monsite_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `monsite_terms`
--

INSERT INTO `monsite_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0),
(2, 'Menu 1', 'menu-1', 0),
(3, 'Hip-hop', 'hip-hop', 0),
(4, 'Rap', 'rap', 0);

-- --------------------------------------------------------

--
-- Structure de la table `monsite_term_relationships`
--

CREATE TABLE `monsite_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `monsite_term_relationships`
--

INSERT INTO `monsite_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(61, 2, 0),
(62, 2, 0),
(64, 1, 0),
(83, 2, 0),
(88, 3, 0),
(88, 4, 0),
(90, 2, 0);

-- --------------------------------------------------------

--
-- Structure de la table `monsite_term_taxonomy`
--

CREATE TABLE `monsite_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `monsite_term_taxonomy`
--

INSERT INTO `monsite_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2),
(2, 2, 'nav_menu', '', 0, 4),
(3, 3, 'category', '', 0, 1),
(4, 4, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `monsite_usermeta`
--

CREATE TABLE `monsite_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `monsite_usermeta`
--

INSERT INTO `monsite_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'monsite_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'monsite_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"8b1ca3d00a1d9a4dee4c619fdaeb18f7afbf61b004a0b552e0c70702bd9d504d\";a:4:{s:10:\"expiration\";i:1521017457;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:110:\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36\";s:5:\"login\";i:1520844657;}}'),
(17, 1, 'monsite_dashboard_quick_press_last_post_id', '3'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:2:\"::\";}'),
(19, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}'),
(21, 1, 'nav_menu_recently_edited', '2'),
(22, 1, 'monsite_user-settings', 'libraryContent=browse&mfold=o'),
(23, 1, 'monsite_user-settings-time', '1520864822');

-- --------------------------------------------------------

--
-- Structure de la table `monsite_users`
--

CREATE TABLE `monsite_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `monsite_users`
--

INSERT INTO `monsite_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BY40fHpL1WgVwwjtiabTdm21.vPbnh0', 'admin', 'maxime.joyes@gmail.com', '', '2018-03-12 08:50:43', '', 0, 'admin');

-- --------------------------------------------------------

--
-- Structure de la table `monsite_wpgmza`
--

CREATE TABLE `monsite_wpgmza` (
  `id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL,
  `address` varchar(700) NOT NULL,
  `description` mediumtext NOT NULL,
  `pic` varchar(700) NOT NULL,
  `link` varchar(700) NOT NULL,
  `icon` varchar(700) NOT NULL,
  `lat` varchar(100) NOT NULL,
  `lng` varchar(100) NOT NULL,
  `anim` varchar(3) NOT NULL,
  `title` varchar(700) NOT NULL,
  `infoopen` varchar(3) NOT NULL,
  `category` varchar(500) NOT NULL,
  `approved` tinyint(1) DEFAULT '1',
  `retina` tinyint(1) DEFAULT '0',
  `type` tinyint(1) DEFAULT '0',
  `did` varchar(500) NOT NULL,
  `other_data` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `monsite_wpgmza`
--

INSERT INTO `monsite_wpgmza` (`id`, `map_id`, `address`, `description`, `pic`, `link`, `icon`, `lat`, `lng`, `anim`, `title`, `infoopen`, `category`, `approved`, `retina`, `type`, `did`, `other_data`) VALUES
(3, 1, '211 Avenue Jean Jaurès, 75019 Paris, France', '', '', '', '', '48.8905829', '2.3917436000000407', '1', '', '1', '', 1, 0, 0, '', '');

-- --------------------------------------------------------

--
-- Structure de la table `monsite_wpgmza_categories`
--

CREATE TABLE `monsite_wpgmza_categories` (
  `id` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `category_name` varchar(50) NOT NULL,
  `category_icon` varchar(700) NOT NULL,
  `retina` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `monsite_wpgmza_category_maps`
--

CREATE TABLE `monsite_wpgmza_category_maps` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `monsite_wpgmza_maps`
--

CREATE TABLE `monsite_wpgmza_maps` (
  `id` int(11) NOT NULL,
  `map_title` varchar(55) NOT NULL,
  `map_width` varchar(6) NOT NULL,
  `map_height` varchar(6) NOT NULL,
  `map_start_lat` varchar(700) NOT NULL,
  `map_start_lng` varchar(700) NOT NULL,
  `map_start_location` varchar(700) NOT NULL,
  `map_start_zoom` int(10) NOT NULL,
  `default_marker` varchar(700) NOT NULL,
  `type` int(10) NOT NULL,
  `alignment` int(10) NOT NULL,
  `directions_enabled` int(10) NOT NULL,
  `styling_enabled` int(10) NOT NULL,
  `styling_json` mediumtext NOT NULL,
  `active` int(1) NOT NULL,
  `kml` varchar(700) NOT NULL,
  `bicycle` int(10) NOT NULL,
  `traffic` int(10) NOT NULL,
  `dbox` int(10) NOT NULL,
  `dbox_width` varchar(10) NOT NULL,
  `listmarkers` int(10) NOT NULL,
  `listmarkers_advanced` int(10) NOT NULL,
  `filterbycat` tinyint(1) NOT NULL,
  `ugm_enabled` int(10) NOT NULL,
  `ugm_category_enabled` tinyint(1) NOT NULL,
  `fusion` varchar(100) NOT NULL,
  `map_width_type` varchar(3) NOT NULL,
  `map_height_type` varchar(3) NOT NULL,
  `mass_marker_support` int(10) NOT NULL,
  `ugm_access` int(10) NOT NULL,
  `order_markers_by` int(10) NOT NULL,
  `order_markers_choice` int(10) NOT NULL,
  `show_user_location` int(3) NOT NULL,
  `default_to` varchar(700) NOT NULL,
  `other_settings` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `monsite_wpgmza_maps`
--

INSERT INTO `monsite_wpgmza_maps` (`id`, `map_title`, `map_width`, `map_height`, `map_start_lat`, `map_start_lng`, `map_start_location`, `map_start_zoom`, `default_marker`, `type`, `alignment`, `directions_enabled`, `styling_enabled`, `styling_json`, `active`, `kml`, `bicycle`, `traffic`, `dbox`, `dbox_width`, `listmarkers`, `listmarkers_advanced`, `filterbycat`, `ugm_enabled`, `ugm_category_enabled`, `fusion`, `map_width_type`, `map_height_type`, `mass_marker_support`, `ugm_access`, `order_markers_by`, `order_markers_choice`, `show_user_location`, `default_to`, `other_settings`) VALUES
(1, 'My first map', '100', '400', '48.890583', '2.391744', '48.8905829,2.3917436000000407', 5, '0', 1, 1, 1, 0, '', 0, '', 2, 2, 1, '100', 0, 0, 0, 0, 0, '', '\\%', 'px', 1, 0, 1, 2, 0, '', 'a:12:{s:21:\"store_locator_enabled\";i:2;s:22:\"store_locator_distance\";i:2;s:28:\"store_locator_default_radius\";s:2:\"10\";s:31:\"store_locator_not_found_message\";s:52:\"No results found in this location. Please try again.\";s:20:\"store_locator_bounce\";i:1;s:26:\"store_locator_query_string\";s:21:\"Code Postal / Adresse\";s:29:\"store_locator_default_address\";s:0:\"\";s:29:\"wpgmza_store_locator_restrict\";s:0:\"\";s:12:\"map_max_zoom\";s:1:\"1\";s:15:\"transport_layer\";i:2;s:17:\"wpgmza_theme_data\";s:0:\"\";s:30:\"wpgmza_show_points_of_interest\";i:1;}');

-- --------------------------------------------------------

--
-- Structure de la table `monsite_wpgmza_polygon`
--

CREATE TABLE `monsite_wpgmza_polygon` (
  `id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL,
  `polydata` longtext NOT NULL,
  `innerpolydata` longtext NOT NULL,
  `linecolor` varchar(7) NOT NULL,
  `lineopacity` varchar(7) NOT NULL,
  `fillcolor` varchar(7) NOT NULL,
  `opacity` varchar(3) NOT NULL,
  `title` varchar(250) NOT NULL,
  `link` varchar(700) NOT NULL,
  `ohfillcolor` varchar(7) NOT NULL,
  `ohlinecolor` varchar(7) NOT NULL,
  `ohopacity` varchar(3) NOT NULL,
  `polyname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `monsite_wpgmza_polylines`
--

CREATE TABLE `monsite_wpgmza_polylines` (
  `id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL,
  `polydata` longtext NOT NULL,
  `linecolor` varchar(7) NOT NULL,
  `linethickness` varchar(3) NOT NULL,
  `opacity` varchar(3) NOT NULL,
  `polyname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `monsite_commentmeta`
--
ALTER TABLE `monsite_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `monsite_comments`
--
ALTER TABLE `monsite_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Index pour la table `monsite_links`
--
ALTER TABLE `monsite_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Index pour la table `monsite_options`
--
ALTER TABLE `monsite_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Index pour la table `monsite_postmeta`
--
ALTER TABLE `monsite_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `monsite_posts`
--
ALTER TABLE `monsite_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Index pour la table `monsite_termmeta`
--
ALTER TABLE `monsite_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `monsite_terms`
--
ALTER TABLE `monsite_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Index pour la table `monsite_term_relationships`
--
ALTER TABLE `monsite_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Index pour la table `monsite_term_taxonomy`
--
ALTER TABLE `monsite_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Index pour la table `monsite_usermeta`
--
ALTER TABLE `monsite_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `monsite_users`
--
ALTER TABLE `monsite_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Index pour la table `monsite_wpgmza`
--
ALTER TABLE `monsite_wpgmza`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `monsite_wpgmza_categories`
--
ALTER TABLE `monsite_wpgmza_categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `monsite_wpgmza_category_maps`
--
ALTER TABLE `monsite_wpgmza_category_maps`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `monsite_wpgmza_maps`
--
ALTER TABLE `monsite_wpgmza_maps`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `monsite_wpgmza_polygon`
--
ALTER TABLE `monsite_wpgmza_polygon`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `monsite_wpgmza_polylines`
--
ALTER TABLE `monsite_wpgmza_polylines`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `monsite_commentmeta`
--
ALTER TABLE `monsite_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `monsite_comments`
--
ALTER TABLE `monsite_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `monsite_links`
--
ALTER TABLE `monsite_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `monsite_options`
--
ALTER TABLE `monsite_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=292;

--
-- AUTO_INCREMENT pour la table `monsite_postmeta`
--
ALTER TABLE `monsite_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=579;

--
-- AUTO_INCREMENT pour la table `monsite_posts`
--
ALTER TABLE `monsite_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT pour la table `monsite_termmeta`
--
ALTER TABLE `monsite_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `monsite_terms`
--
ALTER TABLE `monsite_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `monsite_term_taxonomy`
--
ALTER TABLE `monsite_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `monsite_usermeta`
--
ALTER TABLE `monsite_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT pour la table `monsite_users`
--
ALTER TABLE `monsite_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `monsite_wpgmza`
--
ALTER TABLE `monsite_wpgmza`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `monsite_wpgmza_categories`
--
ALTER TABLE `monsite_wpgmza_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `monsite_wpgmza_category_maps`
--
ALTER TABLE `monsite_wpgmza_category_maps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `monsite_wpgmza_maps`
--
ALTER TABLE `monsite_wpgmza_maps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `monsite_wpgmza_polygon`
--
ALTER TABLE `monsite_wpgmza_polygon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `monsite_wpgmza_polylines`
--
ALTER TABLE `monsite_wpgmza_polylines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
