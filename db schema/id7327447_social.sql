-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 15, 2018 at 12:24 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id7327447_social`
--

-- --------------------------------------------------------

--
-- Table structure for table `calendar_events`
--

CREATE TABLE `calendar_events` (
  `ID` int(11) NOT NULL,
  `title` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `description` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `userid` int(11) NOT NULL,
  `pageid` int(11) NOT NULL,
  `location` varchar(500) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `calendar_event_users`
--

CREATE TABLE `calendar_event_users` (
  `ID` int(11) NOT NULL,
  `eventid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('1do0fubpdq45cf88gebco519dr17q6t3', '203.101.178.44', 1539604420, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393630343432303b),
('2u1p6agc33psf95jul4j2mrkenq9gtcf', '203.101.178.44', 1539602517, ''),
('3kth9t9uemto8bojmve64gd9re39gn1j', '203.101.178.44', 1539602902, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393630323930313b),
('6olgfmju90i8afsvj8jlbmjt3i6qlj2t', '203.101.178.44', 1539604109, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393630343130393b),
('9fb7d8rp416njg53rq0ceik3kdte7o6r', '52.114.6.38', 1539602684, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393630323638333b),
('deqkn9h98pca4f32qv9bn68iummq8r9s', '203.101.178.44', 1539603345, ''),
('e15qiomhrls9nmqe697iqrqkbnr0bhv7', '203.101.178.44', 1539604770, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393630343736383b),
('e5729fghlv3q3j1p9r8a9ta12k0p7im6', '203.101.178.44', 1539603649, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393630333634383b73637c693a36383139363b),
('ftdtclfr786lge0k4vne9va1qk8gkj37', '52.114.6.38', 1539602684, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393630323638343b),
('k4rf8f20cuj76ndro8o5or8g1ql83ced', '203.130.24.218', 1539602846, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393630323834353b),
('n2iqbc717kbgk97481jifi54tck1dj1g', '203.101.178.44', 1539604768, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393630343736383b),
('p45ilffmdhtkio75duho2p2gs2o1oe7a', '203.101.178.44', 1539602642, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393630323634313b);

-- --------------------------------------------------------

--
-- Table structure for table `custom_fields`
--

CREATE TABLE `custom_fields` (
  `ID` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` int(11) NOT NULL,
  `options` varchar(2000) NOT NULL,
  `required` int(11) NOT NULL,
  `profile` int(11) NOT NULL,
  `edit` int(11) NOT NULL,
  `help_text` varchar(500) NOT NULL,
  `register` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `custom_fields`
--

INSERT INTO `custom_fields` (`ID`, `name`, `type`, `options`, `required`, `profile`, `edit`, `help_text`, `register`) VALUES
(1, 'Hobbies', 0, '', 0, 1, 1, 'Tell us what you like doing', 0),
(2, 'Work', 0, '', 0, 1, 1, 'Where do you work?', 0);

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `ID` int(11) NOT NULL,
  `title` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `hook` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `language` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`ID`, `title`, `message`, `hook`, `language`) VALUES
(1, 'Forgot Your Password', '<p>Dear [NAME],<br />\r\n<br />\r\nSomeone (hopefully you) requested a password reset at [SITE_URL].<br />\r\n<br />\r\nTo reset your password, please follow the following link: [EMAIL_LINK]<br />\r\n<br />\r\nIf you did not reset your password, please kindly ignore this email.<br />\r\n<br />\r\nYours,<br />\r\n[SITE_NAME]</p>\r\n', 'forgot_password', 'english'),
(2, 'Email Activation', '<p>Dear [NAME],<br />\r\n<br />\r\nSomeone (hopefully you) has registered an account on [SITE_NAME] using this email address.<br />\r\n<br />\r\nPlease activate the account by following this link: [EMAIL_LINK]<br />\r\n<br />\r\nIf you did not register an account, please kindly ignore this email.<br />\r\n<br />\r\nYours,<br />\r\n[SITE_NAME]</p>\r\n', 'email_activation', 'english');

-- --------------------------------------------------------

--
-- Table structure for table `feed_hashtags`
--

CREATE TABLE `feed_hashtags` (
  `ID` int(11) NOT NULL,
  `hashtag` varchar(70) NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `feed_item`
--

CREATE TABLE `feed_item` (
  `ID` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `content` text NOT NULL,
  `timestamp` int(11) NOT NULL,
  `imageid` int(11) NOT NULL,
  `videoid` int(11) NOT NULL,
  `likes` int(11) NOT NULL,
  `comments` int(11) NOT NULL,
  `location` varchar(500) NOT NULL,
  `user_flag` int(11) NOT NULL,
  `profile_userid` int(11) NOT NULL,
  `template` varchar(255) NOT NULL,
  `pageid` int(11) NOT NULL,
  `hide_profile` int(11) NOT NULL,
  `post_as` varchar(255) NOT NULL,
  `eventid` int(11) NOT NULL,
  `site_flag` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feed_item`
--

INSERT INTO `feed_item` (`ID`, `userid`, `content`, `timestamp`, `imageid`, `videoid`, `likes`, `comments`, `location`, `user_flag`, `profile_userid`, `template`, `pageid`, `hide_profile`, `post_as`, `eventid`, `site_flag`) VALUES
(1, 1, '', 1539604295, 0, 0, 1, 0, '', 0, 0, 'album', 0, 0, '', 0, 0),
(2, 1, '', 1539604375, 7, 0, 1, 0, '', 0, 0, '', 0, 0, '', 0, 0),
(3, 1, 'Saad Waseem&#039;s Post on @[Hamid Saeed](HamidSaeed)&#039;s profile.  :innocent:', 1539604554, 8, 0, 0, 0, 'Lahore, Pakistan', 1, 5, '', 0, 0, '', 0, 0),
(4, 1, 'Saad Waseem&#039;s Post on @[Hamid Saeed](HamidSaeed)&#039;s profile.  :innocent:', 1539604566, 9, 0, 0, 0, 'Lahore, Pakistan', 1, 5, '', 0, 0, '', 0, 0),
(5, 1, 'Saad Waseem&#039;s Post on @[Hamid Saeed](HamidSaeed)&#039;s profile.  :innocent:', 1539604569, 10, 0, 0, 0, 'Lahore, Pakistan', 1, 5, '', 0, 0, '', 0, 0),
(6, 1, 'Saad Waseem&#039;s Post on @[Hamid Saeed](HamidSaeed)&#039;s profile.  :innocent:', 1539604570, 11, 0, 0, 0, 'Lahore, Pakistan', 1, 5, '', 0, 0, '', 0, 0),
(7, 1, 'Saad Waseem&#039;s Post on @[Hamid Saeed](HamidSaeed)&#039;s profile.  :innocent:', 1539604572, 12, 0, 0, 0, 'Lahore, Pakistan', 1, 5, '', 0, 0, '', 0, 0),
(8, 1, 'Saad Waseem&#039;s Post on @[Hamid Saeed](HamidSaeed)&#039;s profile.  :innocent:', 1539604572, 13, 0, 0, 0, 'Lahore, Pakistan', 1, 5, '', 0, 0, '', 0, 0),
(9, 1, 'Saad Waseem&#039;s Post on @[Hamid Saeed](HamidSaeed)&#039;s profile.  :innocent:', 1539604572, 14, 0, 0, 0, 'Lahore, Pakistan', 1, 5, '', 0, 0, '', 0, 0),
(10, 1, 'Saad Waseem&#039;s Post on @[Hamid Saeed](HamidSaeed)&#039;s profile.  :innocent:', 1539604573, 15, 0, 0, 0, 'Lahore, Pakistan', 1, 5, '', 0, 0, '', 0, 0),
(11, 1, 'Saad Waseem&#039;s Post on @[Hamid Saeed](HamidSaeed)&#039;s profile.  :innocent:', 1539604573, 16, 0, 0, 0, 'Lahore, Pakistan', 1, 5, '', 0, 0, '', 0, 0),
(12, 1, 'Saad Waseem&#039;s Post on @[Hamid Saeed](HamidSaeed)&#039;s profile.  :innocent:', 1539604579, 17, 0, 0, 0, 'Lahore, Pakistan', 1, 5, '', 0, 0, '', 0, 0),
(13, 6, 'Saad Waseem&#039;s Post on @[Junaid Iftikhar](JunaidIftikhar) profile.  :innocent:', 1539604699, 0, 0, 0, 0, '', 0, 5, '', 0, 0, '', 0, 0),
(14, 6, 'Saad Waseem&#039;s Post on profile.  :innocent:', 1539604723, 0, 0, 0, 0, '', 0, 5, '', 0, 0, '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `feed_item_comments`
--

CREATE TABLE `feed_item_comments` (
  `ID` int(11) NOT NULL,
  `postid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `comment` varchar(3000) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `likes` int(11) NOT NULL,
  `commentid` int(11) NOT NULL,
  `replies` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `feed_item_comment_likes`
--

CREATE TABLE `feed_item_comment_likes` (
  `ID` int(11) NOT NULL,
  `commentid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `feed_item_images`
--

CREATE TABLE `feed_item_images` (
  `ID` int(11) NOT NULL,
  `postid` int(11) NOT NULL,
  `imageid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feed_item_images`
--

INSERT INTO `feed_item_images` (`ID`, `postid`, `imageid`) VALUES
(1, 1, 0),
(2, 1, 1),
(3, 1, 2),
(4, 1, 3),
(5, 1, 4),
(6, 1, 5),
(7, 1, 6);

-- --------------------------------------------------------

--
-- Table structure for table `feed_item_subscribers`
--

CREATE TABLE `feed_item_subscribers` (
  `ID` int(11) NOT NULL,
  `postid` int(11) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feed_item_subscribers`
--

INSERT INTO `feed_item_subscribers` (`ID`, `postid`, `userid`) VALUES
(1, 3, 5),
(2, 4, 5),
(3, 5, 5),
(4, 6, 5),
(5, 7, 5),
(6, 8, 5),
(7, 9, 5),
(8, 10, 5),
(9, 11, 5),
(10, 12, 5),
(11, 13, 5),
(12, 14, 5);

-- --------------------------------------------------------

--
-- Table structure for table `feed_item_urls`
--

CREATE TABLE `feed_item_urls` (
  `ID` int(11) NOT NULL,
  `postid` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `image` varchar(500) NOT NULL,
  `url` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `feed_item_users`
--

CREATE TABLE `feed_item_users` (
  `ID` int(11) NOT NULL,
  `postid` int(11) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `feed_likes`
--

CREATE TABLE `feed_likes` (
  `ID` int(11) NOT NULL,
  `postid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feed_likes`
--

INSERT INTO `feed_likes` (`ID`, `postid`, `userid`, `timestamp`) VALUES
(1, 2, 5, 1539604439),
(2, 1, 5, 1539604442);

-- --------------------------------------------------------

--
-- Table structure for table `feed_tagged_users`
--

CREATE TABLE `feed_tagged_users` (
  `ID` int(11) NOT NULL,
  `postid` int(11) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `home_stats`
--

CREATE TABLE `home_stats` (
  `ID` int(11) NOT NULL,
  `google_members` int(11) NOT NULL DEFAULT '0',
  `facebook_members` int(11) NOT NULL DEFAULT '0',
  `twitter_members` int(11) NOT NULL DEFAULT '0',
  `total_members` int(11) NOT NULL DEFAULT '0',
  `new_members` int(11) NOT NULL DEFAULT '0',
  `active_today` int(11) NOT NULL DEFAULT '0',
  `timestamp` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `home_stats`
--

INSERT INTO `home_stats` (`ID`, `google_members`, `facebook_members`, `twitter_members`, `total_members`, `new_members`, `active_today`, `timestamp`) VALUES
(1, 0, 0, 0, 1, 1, 1, 1499160358);

-- --------------------------------------------------------

--
-- Table structure for table `ipn_log`
--

CREATE TABLE `ipn_log` (
  `ID` int(11) NOT NULL,
  `data` text,
  `timestamp` int(11) NOT NULL DEFAULT '0',
  `IP` varchar(500) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ip_block`
--

CREATE TABLE `ip_block` (
  `ID` int(11) NOT NULL,
  `IP` varchar(500) NOT NULL DEFAULT '',
  `timestamp` int(11) NOT NULL DEFAULT '0',
  `reason` varchar(1000) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `live_chat`
--

CREATE TABLE `live_chat` (
  `ID` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `title` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `last_reply_userid` int(11) NOT NULL,
  `last_replyid` int(11) NOT NULL,
  `last_reply_timestamp` int(11) NOT NULL,
  `posts` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `live_chat`
--

INSERT INTO `live_chat` (`ID`, `userid`, `timestamp`, `title`, `last_reply_userid`, `last_replyid`, `last_reply_timestamp`, `posts`) VALUES
(1, 1, 1539602569, '', 3, 13, 1539602837, 13),
(2, 1, 1539603117, '', 1, 15, 1539603129, 2);

-- --------------------------------------------------------

--
-- Table structure for table `live_chat_messages`
--

CREATE TABLE `live_chat_messages` (
  `ID` int(11) NOT NULL,
  `chatid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `live_chat_messages`
--

INSERT INTO `live_chat_messages` (`ID`, `chatid`, `userid`, `message`, `timestamp`) VALUES
(1, 1, 1, 'hi Taimur, it&#039;s first test message', 1539602569),
(2, 1, 3, 'Hi Hamid, Thanks for connecting with me.', 1539602608),
(3, 1, 3, 'Hi', 1539602771),
(4, 1, 1, 'received.', 1539602778),
(5, 1, 3, 'yep', 1539602786),
(6, 1, 3, 'working good', 1539602793),
(7, 1, 1, 'typing show ni hta...baki working awala', 1539602801),
(8, 1, 3, 'yes', 1539602809),
(9, 1, 3, 'beep b ha', 1539602813),
(10, 1, 3, 'beep b ha', 1539602814),
(11, 1, 1, 'good hogya, chlo ab logout kr do :D thanks', 1539602830),
(12, 1, 3, 'run time working', 1539602830),
(13, 1, 3, 'okay', 1539602837),
(14, 2, 1, 'hi Majid!', 1539603117),
(15, 2, 1, 'welcome to shahruh family', 1539603129);

-- --------------------------------------------------------

--
-- Table structure for table `live_chat_users`
--

CREATE TABLE `live_chat_users` (
  `ID` int(11) NOT NULL,
  `chatid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `unread` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `live_chat_users`
--

INSERT INTO `live_chat_users` (`ID`, `chatid`, `userid`, `active`, `unread`, `title`) VALUES
(1, 1, 1, 2, 0, 'Chat with <strong>TaimurRashid</strong>'),
(2, 1, 3, 2, 0, 'Chat with <strong>HamidSaeed</strong>'),
(3, 2, 1, 2, 0, 'Chat with <strong>MajidQadri</strong>'),
(4, 2, 4, 0, 1, 'Chat with <strong>HamidSaeed</strong>');

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE `login_attempts` (
  `ID` int(11) NOT NULL,
  `IP` varchar(500) NOT NULL DEFAULT '',
  `username` varchar(500) NOT NULL DEFAULT '',
  `count` int(11) NOT NULL DEFAULT '0',
  `timestamp` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login_attempts`
--

INSERT INTO `login_attempts` (`ID`, `IP`, `username`, `count`, `timestamp`) VALUES
(1, '203.101.178.44', 'hamid.saeed@shahruh.com', 2, 1539602126),
(2, '203.101.178.44', 'taimur.rashid@shahruh.com', 1, 1539602434);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `ID` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `type` int(11) NOT NULL,
  `categoryid` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `pageviews` int(11) NOT NULL,
  `likes` int(11) NOT NULL,
  `profile_header` varchar(500) NOT NULL,
  `profile_avatar` varchar(500) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `posting_status` int(11) NOT NULL,
  `location` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `phone` varchar(500) NOT NULL,
  `website` varchar(500) NOT NULL,
  `nonmembers_view` int(11) NOT NULL,
  `members` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `page_categories`
--

CREATE TABLE `page_categories` (
  `ID` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `page_categories`
--

INSERT INTO `page_categories` (`ID`, `name`, `description`) VALUES
(2, 'Digital Business', 'Got a website, blog or other digital business?'),
(3, 'Television', 'Pages about T.V'),
(4, 'Blogs', 'Pages to do with blogging');

-- --------------------------------------------------------

--
-- Table structure for table `page_invites`
--

CREATE TABLE `page_invites` (
  `ID` int(11) NOT NULL,
  `pageid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `fromid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `page_users`
--

CREATE TABLE `page_users` (
  `ID` int(11) NOT NULL,
  `pageid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `roleid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset`
--

CREATE TABLE `password_reset` (
  `ID` int(11) NOT NULL,
  `userid` int(11) NOT NULL DEFAULT '0',
  `token` varchar(255) NOT NULL DEFAULT '',
  `timestamp` int(11) NOT NULL DEFAULT '0',
  `IP` varchar(500) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `payment_logs`
--

CREATE TABLE `payment_logs` (
  `ID` int(11) NOT NULL,
  `userid` int(11) NOT NULL DEFAULT '0',
  `amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `timestamp` int(11) NOT NULL DEFAULT '0',
  `email` varchar(500) NOT NULL DEFAULT '',
  `processor` varchar(255) NOT NULL,
  `hash` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `payment_plans`
--

CREATE TABLE `payment_plans` (
  `ID` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `hexcolor` varchar(6) NOT NULL DEFAULT '',
  `fontcolor` varchar(6) NOT NULL DEFAULT '',
  `cost` decimal(10,2) NOT NULL DEFAULT '0.00',
  `days` int(11) NOT NULL DEFAULT '0',
  `sales` int(11) NOT NULL DEFAULT '0',
  `description` varchar(255) NOT NULL DEFAULT '',
  `icon` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payment_plans`
--

INSERT INTO `payment_plans` (`ID`, `name`, `hexcolor`, `fontcolor`, `cost`, `days`, `sales`, `description`, `icon`) VALUES
(2, 'BASIC', '65E0EB', 'FFFFFF', 3.00, 30, 8, 'This is the basic plan which gives you a introduction to our Premium Plans', 'glyphicon glyphicon-heart-empty'),
(3, 'Professional', '55CD7B', 'FFFFFF', 7.99, 90, 3, 'Get all the benefits of basic at a cheaper price and gain content for longer.', 'glyphicon glyphicon-piggy-bank'),
(4, 'LIFETIME', 'EE5782', 'FFFFFF', 300.00, 0, 1, 'Become a premium member for life and have access to all our premium content.', 'glyphicon glyphicon-gift');

-- --------------------------------------------------------

--
-- Table structure for table `profile_comments`
--

CREATE TABLE `profile_comments` (
  `ID` int(11) NOT NULL,
  `profileid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `relationship_requests`
--

CREATE TABLE `relationship_requests` (
  `ID` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `friendid` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `relationship_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `ID` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `pageid` int(11) NOT NULL,
  `reason` text NOT NULL,
  `timestamp` int(11) NOT NULL,
  `fromid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reset_log`
--

CREATE TABLE `reset_log` (
  `ID` int(11) NOT NULL,
  `IP` varchar(500) NOT NULL DEFAULT '',
  `timestamp` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `site_layouts`
--

CREATE TABLE `site_layouts` (
  `ID` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `layout_path` varchar(500) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `site_layouts`
--

INSERT INTO `site_layouts` (`ID`, `name`, `layout_path`) VALUES
(1, 'Basic', 'layout/themes/layout.php'),
(2, 'Titan', 'layout/themes/titan_layout.php'),
(3, 'Dark Fire', 'layout/themes/dark_fire_layout.php'),
(4, 'Light Blue', 'layout/themes/light_blue_layout.php');

-- --------------------------------------------------------

--
-- Table structure for table `site_settings`
--

CREATE TABLE `site_settings` (
  `ID` int(11) NOT NULL,
  `site_name` varchar(500) NOT NULL,
  `site_desc` varchar(500) NOT NULL,
  `upload_path` varchar(500) NOT NULL,
  `upload_path_relative` varchar(500) NOT NULL,
  `site_email` varchar(500) NOT NULL,
  `site_logo` varchar(1000) NOT NULL DEFAULT 'logo.png',
  `register` int(11) NOT NULL,
  `disable_captcha` int(11) NOT NULL,
  `date_format` varchar(25) NOT NULL,
  `avatar_upload` int(11) NOT NULL DEFAULT '1',
  `file_types` varchar(500) NOT NULL,
  `twitter_consumer_key` varchar(255) NOT NULL,
  `twitter_consumer_secret` varchar(255) NOT NULL,
  `disable_social_login` int(11) NOT NULL,
  `facebook_app_id` varchar(255) NOT NULL,
  `facebook_app_secret` varchar(255) NOT NULL,
  `google_client_id` varchar(255) NOT NULL,
  `google_client_secret` varchar(255) NOT NULL,
  `file_size` int(11) NOT NULL,
  `paypal_email` varchar(1000) NOT NULL,
  `paypal_currency` varchar(100) NOT NULL DEFAULT 'USD',
  `payment_enabled` int(11) NOT NULL,
  `payment_symbol` varchar(5) NOT NULL DEFAULT '$',
  `global_premium` int(11) NOT NULL,
  `install` int(11) NOT NULL DEFAULT '1',
  `login_protect` int(11) NOT NULL,
  `activate_account` int(11) NOT NULL,
  `default_user_role` int(11) NOT NULL,
  `secure_login` int(11) NOT NULL,
  `stripe_secret_key` varchar(1000) NOT NULL,
  `stripe_publish_key` varchar(1000) NOT NULL,
  `google_recaptcha` int(11) NOT NULL,
  `google_recaptcha_secret` varchar(255) NOT NULL,
  `google_recaptcha_key` varchar(255) NOT NULL,
  `logo_option` int(11) NOT NULL,
  `layout` varchar(500) NOT NULL,
  `profile_comments` int(11) NOT NULL,
  `avatar_width` int(11) NOT NULL,
  `avatar_height` int(11) NOT NULL,
  `cache_time` int(11) NOT NULL,
  `checkout2_secret` varchar(255) NOT NULL,
  `checkout2_accountno` varchar(255) NOT NULL,
  `user_display_type` int(11) NOT NULL,
  `page_slugs` int(11) NOT NULL,
  `calendar_picker_format` varchar(255) NOT NULL,
  `disable_chat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `site_settings`
--

INSERT INTO `site_settings` (`ID`, `site_name`, `site_desc`, `upload_path`, `upload_path_relative`, `site_email`, `site_logo`, `register`, `disable_captcha`, `date_format`, `avatar_upload`, `file_types`, `twitter_consumer_key`, `twitter_consumer_secret`, `disable_social_login`, `facebook_app_id`, `facebook_app_secret`, `google_client_id`, `google_client_secret`, `file_size`, `paypal_email`, `paypal_currency`, `payment_enabled`, `payment_symbol`, `global_premium`, `install`, `login_protect`, `activate_account`, `default_user_role`, `secure_login`, `stripe_secret_key`, `stripe_publish_key`, `google_recaptcha`, `google_recaptcha_secret`, `google_recaptcha_key`, `logo_option`, `layout`, `profile_comments`, `avatar_width`, `avatar_height`, `cache_time`, `checkout2_secret`, `checkout2_accountno`, `user_display_type`, `page_slugs`, `calendar_picker_format`, `disable_chat`) VALUES
(1, 'ShahRuh Team Network', 'Welcome to ShahRuh Family!', '/storage/ssd5/447/7327447/public_html/uploads', 'uploads', 'test@test.com', 'logo.png', 0, 1, 'd/m/Y', 1, 'gif|png|jpg|jpeg', '', '', 0, '', '', '', '', 10028, '', 'USD', 1, '$', 0, 0, 1, 0, 5, 0, '', '', 0, '', '', 0, 'layout/themes/titan_layout.php', 1, 200, 200, 3600, '', '', 1, 1, 'Y/m/d H:i', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `email` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `token` varchar(255) NOT NULL DEFAULT '',
  `IP` varchar(500) NOT NULL DEFAULT '',
  `username` varchar(25) NOT NULL DEFAULT '',
  `first_name` varchar(25) NOT NULL DEFAULT '',
  `last_name` varchar(25) NOT NULL DEFAULT '',
  `avatar` varchar(1000) NOT NULL DEFAULT 'default.png',
  `joined` int(11) NOT NULL DEFAULT '0',
  `joined_date` varchar(10) NOT NULL DEFAULT '',
  `online_timestamp` int(11) NOT NULL DEFAULT '0',
  `oauth_provider` varchar(40) NOT NULL DEFAULT '',
  `oauth_id` varchar(1000) NOT NULL DEFAULT '',
  `oauth_token` varchar(1500) NOT NULL DEFAULT '',
  `oauth_secret` varchar(500) NOT NULL DEFAULT '',
  `email_notification` int(11) NOT NULL DEFAULT '1',
  `aboutme` varchar(1000) NOT NULL DEFAULT '',
  `points` decimal(10,2) NOT NULL DEFAULT '0.00',
  `premium_time` int(11) NOT NULL DEFAULT '0',
  `user_role` int(11) NOT NULL DEFAULT '0',
  `premium_planid` int(11) NOT NULL DEFAULT '0',
  `active` int(11) NOT NULL DEFAULT '1',
  `activate_code` varchar(255) NOT NULL DEFAULT '',
  `profile_comments` int(11) NOT NULL DEFAULT '1',
  `profile_views` int(11) NOT NULL,
  `address_1` varchar(255) NOT NULL,
  `address_2` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `noti_count` int(11) NOT NULL,
  `profile_header` varchar(500) NOT NULL DEFAULT 'default_header.png',
  `location_from` varchar(500) NOT NULL,
  `location_live` varchar(500) NOT NULL,
  `friends` text NOT NULL,
  `pages` text NOT NULL,
  `profile_view` int(11) NOT NULL,
  `posts_view` int(11) NOT NULL,
  `post_profile` int(11) NOT NULL,
  `allow_friends` int(11) NOT NULL,
  `allow_pages` int(11) NOT NULL,
  `chat_option` int(11) NOT NULL,
  `relationship_status` int(11) NOT NULL,
  `relationship_userid` int(11) NOT NULL,
  `tag_user` int(11) NOT NULL,
  `post_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `email`, `password`, `token`, `IP`, `username`, `first_name`, `last_name`, `avatar`, `joined`, `joined_date`, `online_timestamp`, `oauth_provider`, `oauth_id`, `oauth_token`, `oauth_secret`, `email_notification`, `aboutme`, `points`, `premium_time`, `user_role`, `premium_planid`, `active`, `activate_code`, `profile_comments`, `profile_views`, `address_1`, `address_2`, `city`, `state`, `zipcode`, `country`, `noti_count`, `profile_header`, `location_from`, `location_live`, `friends`, `pages`, `profile_view`, `posts_view`, `post_profile`, `allow_friends`, `allow_pages`, `chat_option`, `relationship_status`, `relationship_userid`, `tag_user`, `post_count`) VALUES
(1, 'hamid.saeed@shahruh.com', '$2a$12$rpRKMNScKCzXhbgYEXqGfuvq9Jy.KTVJCV8Q5DbNNg/wRaP411Cg.', '24e28bdb2d4465b0f3878a6a3cc22b07', '203.101.178.44', 'HamidSaeed', 'Hamid', 'Saeed', 'f812deb17cd0554d46561c66612b331b.png', 1539602169, '10-2018', 1539604289, '', '', '', '', 1, 'Passionate Software Engineer having leadership skills and Literary taste.', 0.00, 0, 5, 0, 1, '', 1, 16, 'House 15, Street # 7, Kotli Peer Abdul rehman', 'Shalimar link road', 'Lahore', 'Punjab', '54000', 'Pakistan', 2, '12f6d4bbd6c162c16ca2067129788d9c.png', '', '', 'a:3:{i:0;s:1:\"3\";i:1;s:1:\"4\";i:2;s:1:\"5\";}', '', 0, 0, 1, 0, 0, 0, 1, 0, 0, 0),
(2, 'https://livexto.000webhostapp.com', '$2a$12$46W.jkX1ZL8W.NWa7XrhF.7I3vBdKiL5p2sCJ.OgYtJS53vH3X62m', '', '203.101.178.44', 'hamid', 'Admin', 'User', 'default.png', 1539602265, '10-2018', 0, '', '', '', '', 1, '', 0.00, 0, 1, 0, 1, '', 1, 0, '', '', '', '', '', '', 0, 'default_header.png', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, 'taimur.rashid@shahruh.com', '$2a$12$O8mOds1xx9gIN7cHu9Qy6uYWnusIMyv0BNBbPDW.HY8y8xSuExPAG', '2d7893fcd9fc89ae28c91573fec55405', '203.101.178.44', 'TaimurRashid', 'Taimur', 'Rashid', 'default.png', 1539602473, '10-2018', 1539603158, '', '', '', '', 1, '', 0.00, 0, 5, 0, 1, '', 1, 4, '', '', '', '', '', '', 3, 'default_header.png', '', '', 'a:2:{i:0;s:1:\"1\";i:1;s:1:\"4\";}', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 'majid.qadri@shahruh.com', '$2a$12$IG3S77/GR53UBLUMjaBpQuRvZgB553EDrKjrZB3FM5EEhjWFEJo6G', '4d13608e7da088278b523890a6c3fc8e', '203.101.178.44', 'MajidQadri', 'Majid', 'Qadri', 'default.png', 1539602965, '10-2018', 1539602979, '', '', '', '', 1, '', 0.00, 0, 5, 0, 1, '', 1, 3, '', '', '', '', '', '', 5, 'default_header.png', '', '', 'a:2:{i:0;s:1:\"1\";i:1;s:1:\"3\";}', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5, 'saad.waseem@shahruh.com', '$2a$12$fetZ74qgiJeoLfN1GJPO9eZDb7pWLX.IdjWTTtfxG5GCWMAMYIMaS', '0c79dee686468deebdd00d7b0921e4aa', '203.101.178.44', 'SaadWaseem', 'Saad', 'Waseem', 'default.png', 1539603287, '10-2018', 1539604738, '', '', '', '', 1, '', 0.00, 0, 5, 0, 1, '', 1, 6, '', '', '', '', '', '', 0, 'default_header.png', '', '', 'a:3:{i:0;s:1:\"1\";i:1;s:1:\"7\";i:2;s:1:\"6\";}', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6, 'junaid.iftikhar@shahruh.com', '$2a$12$hTKraj83cFIBd8FIAXkOBuQZB7shGFYS11TxnhRUTkwof7leRDGE2', '41b44570a5592464612da40ce0c784bc', '203.101.178.44', 'JunaidIftikhar', 'Junaid', 'Iftikhar', 'default.png', 1539603504, '10-2018', 1539603742, '', '', '', '', 1, '', 0.00, 0, 5, 0, 1, '', 1, 2, '', '', '', '', '', '', 2, 'default_header.png', '', '', 'a:2:{i:0;s:1:\"7\";i:1;s:1:\"5\";}', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7, 'maryam.qureshi@shahruh.com', '$2a$12$BK3gpSVHrCZXCG3mbI.N7OmDQIldT3wRkJld53VstFKFlnyINkW7.', 'd8bf3ad4d14de74651effe637ce4533b', '203.101.178.44', 'MaryamQureshi', 'Maryam', 'Qureshi', 'default.png', 1539603591, '10-2018', 1539603604, '', '', '', '', 1, '', 0.00, 0, 5, 0, 1, '', 1, 2, '', '', '', '', '', '', 3, 'default_header.png', '', '', 'a:2:{i:0;s:1:\"6\";i:1;s:1:\"5\";}', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_albums`
--

CREATE TABLE `user_albums` (
  `ID` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `timestamp` int(11) NOT NULL,
  `feed_album` int(11) NOT NULL,
  `images` int(11) NOT NULL,
  `pageid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_albums`
--

INSERT INTO `user_albums` (`ID`, `userid`, `name`, `description`, `timestamp`, `feed_album`, `images`, `pageid`) VALUES
(1, 1, 'HD first Album', 'HD first Album for testing purposes', 1539604227, 0, 7, 0),
(2, 5, 'Feed Album', 'Images you posted on your feed.', 1539604554, 1, 10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_custom_fields`
--

CREATE TABLE `user_custom_fields` (
  `ID` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `fieldid` int(11) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_custom_fields`
--

INSERT INTO `user_custom_fields` (`ID`, `userid`, `fieldid`, `value`) VALUES
(1, 1, 1, 'Reading'),
(2, 1, 2, 'ShahRuh');

-- --------------------------------------------------------

--
-- Table structure for table `user_data`
--

CREATE TABLE `user_data` (
  `ID` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `twitter` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `facebook` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `google` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `linkedin` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `website` varchar(500) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_data`
--

INSERT INTO `user_data` (`ID`, `userid`, `twitter`, `facebook`, `google`, `linkedin`, `website`) VALUES
(1, 1, 'hamidsaeedpro', 'hamidsaeedpro', 'hamidsaeedpro', 'hamidaseed', 'shahruh.com');

-- --------------------------------------------------------

--
-- Table structure for table `user_events`
--

CREATE TABLE `user_events` (
  `ID` int(11) NOT NULL,
  `IP` varchar(255) NOT NULL DEFAULT '',
  `event` varchar(255) NOT NULL DEFAULT '',
  `timestamp` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user_friends`
--

CREATE TABLE `user_friends` (
  `ID` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `friendid` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_friends`
--

INSERT INTO `user_friends` (`ID`, `userid`, `friendid`, `timestamp`) VALUES
(1, 3, 1, 1539602549),
(2, 1, 3, 1539602549),
(3, 4, 1, 1539603094),
(4, 1, 4, 1539603094),
(5, 4, 3, 1539603165),
(6, 3, 4, 1539603165),
(7, 5, 1, 1539603703),
(8, 1, 5, 1539603703),
(11, 7, 6, 1539603754),
(12, 6, 7, 1539603754),
(15, 7, 5, 1539604454),
(16, 5, 7, 1539604454),
(17, 6, 5, 1539604456),
(18, 5, 6, 1539604456);

-- --------------------------------------------------------

--
-- Table structure for table `user_friend_requests`
--

CREATE TABLE `user_friend_requests` (
  `ID` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `friendid` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_friend_requests`
--

INSERT INTO `user_friend_requests` (`ID`, `userid`, `friendid`, `timestamp`) VALUES
(4, 5, 4, 1539603303),
(6, 5, 3, 1539603341),
(9, 7, 4, 1539603622),
(10, 7, 3, 1539603635),
(14, 6, 4, 1539603786),
(15, 6, 3, 1539603800);

-- --------------------------------------------------------

--
-- Table structure for table `user_groups`
--

CREATE TABLE `user_groups` (
  `ID` int(11) NOT NULL,
  `name` varchar(40) NOT NULL DEFAULT '',
  `default` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_groups`
--

INSERT INTO `user_groups` (`ID`, `name`, `default`) VALUES
(1, 'Default Group', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_group_users`
--

CREATE TABLE `user_group_users` (
  `ID` int(11) NOT NULL,
  `groupid` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_group_users`
--

INSERT INTO `user_group_users` (`ID`, `groupid`, `userid`) VALUES
(1, 1, 1),
(2, 1, 3),
(3, 1, 4),
(4, 1, 5),
(5, 1, 6),
(6, 1, 7);

-- --------------------------------------------------------

--
-- Table structure for table `user_images`
--

CREATE TABLE `user_images` (
  `ID` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `file_name` varchar(1000) NOT NULL,
  `file_type` varchar(50) NOT NULL,
  `extension` varchar(20) NOT NULL,
  `file_size` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `file_url` varchar(2000) NOT NULL,
  `albumid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_images`
--

INSERT INTO `user_images` (`ID`, `userid`, `file_name`, `file_type`, `extension`, `file_size`, `timestamp`, `file_url`, `albumid`, `name`, `description`) VALUES
(1, 1, 'd271a8c084d4f72a2b8c89715426bce7.png', 'image/png', '.png', 2, 1539604295, '', 1, '', ''),
(3, 1, 'a1d09d28c53a8cc5629542146374cf68.jpg', 'image/jpeg', '.jpg', 53, 1539604295, '', 1, '', ''),
(4, 1, '44af1680f9372a70a9176ede85d3f6e7.jpg', 'image/jpeg', '.jpg', 39, 1539604295, '', 1, '', ''),
(6, 1, '75ae02a11e2ab299760ce7e407cc609d.png', 'image/png', '.png', 26, 1539604295, '', 1, '', ''),
(7, 1, '0376ae2090466b06a2cae112132aee6d.jpg', 'image/jpeg', '.jpg', 39, 1539604375, '', 1, '', ''),
(8, 5, '858e32f35c5fd11551db6449d3ae7db1.png', 'image/png', '.png', 3, 1539604554, '', 2, '', ''),
(9, 5, '699d9a76301c2bedd51d141832298a38.png', 'image/png', '.png', 3, 1539604566, '', 2, '', ''),
(10, 5, 'adbc167a3ab1e46e9b0d587a33b16d9d.png', 'image/png', '.png', 3, 1539604569, '', 2, '', ''),
(11, 5, 'bbdc1736b95e949fc25c596b3ed6eb6e.png', 'image/png', '.png', 3, 1539604570, '', 2, '', ''),
(12, 5, 'a9d4bdcc04d1766643c52449fc0ad4c1.png', 'image/png', '.png', 3, 1539604572, '', 2, '', ''),
(13, 5, 'c407826e7046fe48e536c17cfc5eb143.png', 'image/png', '.png', 3, 1539604572, '', 2, '', ''),
(14, 5, 'a7b0677d8870b9d6cc89e9d3224e869d.png', 'image/png', '.png', 3, 1539604572, '', 2, '', ''),
(15, 5, '51e280e65faa7cfabc65db4c7bab45e2.png', 'image/png', '.png', 3, 1539604573, '', 2, '', ''),
(16, 5, 'ceaf8b18b5175a44bcd960fe5a71e0cf.png', 'image/png', '.png', 3, 1539604573, '', 2, '', ''),
(17, 5, '971cf02b4f3a3bbe1f7034d150163799.png', 'image/png', '.png', 3, 1539604579, '', 2, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_notifications`
--

CREATE TABLE `user_notifications` (
  `ID` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `url` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `message` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `fromid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_notifications`
--

INSERT INTO `user_notifications` (`ID`, `userid`, `url`, `timestamp`, `status`, `message`, `fromid`) VALUES
(1, 1, 'user_settings/friend_requests', 1539602509, 1, 'Taimur Rashid has sent you a friend request!', 3),
(2, 3, 'home/index', 1539602549, 1, 'Hamid Saeed has accepted your friend request!', 1),
(3, 3, 'user_settings/friend_requests', 1539603046, 1, 'Majid Qadri has sent you a friend request!', 4),
(4, 1, 'user_settings/friend_requests', 1539603056, 1, 'Majid Qadri has sent you a friend request!', 4),
(5, 4, 'home/index', 1539603094, 0, 'Hamid Saeed has accepted your friend request!', 1),
(6, 4, 'home/index', 1539603165, 0, 'Taimur Rashid has accepted your friend request!', 3),
(7, 4, 'user_settings/friend_requests', 1539603303, 0, 'Saad Waseem has sent you a friend request!', 5),
(8, 1, 'user_settings/friend_requests', 1539603323, 1, 'Saad Waseem has sent you a friend request!', 5),
(9, 3, 'user_settings/friend_requests', 1539603341, 0, 'Saad Waseem has sent you a friend request!', 5),
(10, 6, 'user_settings/friend_requests', 1539603608, 1, 'Maryam Qureshi has sent you a friend request!', 7),
(11, 5, 'user_settings/friend_requests', 1539603615, 1, 'Maryam Qureshi has sent you a friend request!', 7),
(12, 4, 'user_settings/friend_requests', 1539603622, 0, 'Maryam Qureshi has sent you a friend request!', 7),
(13, 3, 'user_settings/friend_requests', 1539603635, 0, 'Maryam Qureshi has sent you a friend request!', 7),
(14, 1, 'user_settings/friend_requests', 1539603650, 1, 'Maryam Qureshi has sent you a friend request!', 7),
(15, 5, 'home/index', 1539603697, 1, 'Hamid Saeed has accepted your friend request!', 1),
(16, 7, 'home/index', 1539603706, 0, 'Hamid Saeed has accepted your friend request!', 1),
(17, 7, 'home/index', 1539603754, 0, 'Junaid Iftikhar has accepted your friend request!', 6),
(18, 1, 'user_settings/friend_requests', 1539603767, 1, 'Junaid Iftikhar has sent you a friend request!', 6),
(19, 5, 'user_settings/friend_requests', 1539603779, 1, 'Junaid Iftikhar has sent you a friend request!', 6),
(20, 4, 'user_settings/friend_requests', 1539603786, 0, 'Junaid Iftikhar has sent you a friend request!', 6),
(21, 3, 'user_settings/friend_requests', 1539603800, 0, 'Junaid Iftikhar has sent you a friend request!', 6),
(22, 6, 'home/index', 1539603833, 0, 'Hamid Saeed has accepted your friend request!', 1),
(23, 1, 'home/index/3?postid=2', 1539604439, 0, 'Saad Waseem has liked your post!', 5),
(24, 1, 'home/index/3?postid=1', 1539604442, 0, 'Saad Waseem has liked your post!', 5),
(25, 7, 'home/index', 1539604453, 0, 'Saad Waseem has accepted your friend request!', 5),
(26, 6, 'home/index', 1539604456, 0, 'Saad Waseem has accepted your friend request!', 5);

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `ID` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `admin` int(11) NOT NULL DEFAULT '0',
  `admin_settings` int(11) NOT NULL DEFAULT '0',
  `admin_members` int(11) NOT NULL DEFAULT '0',
  `admin_payment` int(11) NOT NULL DEFAULT '0',
  `banned` int(11) NOT NULL,
  `live_chat` int(11) NOT NULL,
  `page_creator` int(11) NOT NULL,
  `page_admin` int(11) NOT NULL,
  `post_admin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`ID`, `name`, `admin`, `admin_settings`, `admin_members`, `admin_payment`, `banned`, `live_chat`, `page_creator`, `page_admin`, `post_admin`) VALUES
(1, 'Admin', 1, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 'Member Manager', 0, 0, 1, 0, 0, 0, 0, 0, 0),
(3, 'Admin Settings', 0, 1, 0, 0, 0, 0, 0, 0, 0),
(4, 'Admin Payments', 0, 0, 0, 1, 0, 0, 0, 0, 0),
(5, 'Member', 0, 0, 0, 0, 0, 1, 1, 0, 0),
(6, 'Banned', 0, 0, 0, 0, 1, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_role_permissions`
--

CREATE TABLE `user_role_permissions` (
  `ID` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `classname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hook` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_role_permissions`
--

INSERT INTO `user_role_permissions` (`ID`, `name`, `description`, `classname`, `hook`) VALUES
(1, 'ctn_308', 'ctn_308', 'admin', 'admin'),
(2, 'ctn_309', 'ctn_309', 'admin', 'admin_settings'),
(3, 'ctn_310', 'ctn_310', 'admin', 'admin_members'),
(4, 'ctn_311', 'ctn_311', 'admin', 'admin_payment'),
(5, 'ctn_33', 'ctn_33', 'banned', 'banned'),
(6, 'ctn_430', 'ctn_431', 'site', 'live_chat'),
(7, 'ctn_432', 'ctn_435', 'page', 'page_creator'),
(8, 'ctn_433', 'ctn_436', 'page', 'page_admin'),
(9, 'ctn_434', 'ctn_437', 'page', 'post_admin');

-- --------------------------------------------------------

--
-- Table structure for table `user_saved_posts`
--

CREATE TABLE `user_saved_posts` (
  `ID` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `postid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_videos`
--

CREATE TABLE `user_videos` (
  `ID` int(11) NOT NULL,
  `file_name` varchar(500) NOT NULL,
  `file_type` varchar(255) NOT NULL,
  `userid` int(11) NOT NULL,
  `extension` varchar(50) NOT NULL,
  `file_size` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `youtube_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `calendar_events`
--
ALTER TABLE `calendar_events`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `calendar_event_users`
--
ALTER TABLE `calendar_event_users`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `custom_fields`
--
ALTER TABLE `custom_fields`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `feed_hashtags`
--
ALTER TABLE `feed_hashtags`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `feed_item`
--
ALTER TABLE `feed_item`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `feed_item_comments`
--
ALTER TABLE `feed_item_comments`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `feed_item_comment_likes`
--
ALTER TABLE `feed_item_comment_likes`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `feed_item_images`
--
ALTER TABLE `feed_item_images`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `feed_item_subscribers`
--
ALTER TABLE `feed_item_subscribers`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `feed_item_urls`
--
ALTER TABLE `feed_item_urls`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `feed_item_users`
--
ALTER TABLE `feed_item_users`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `feed_likes`
--
ALTER TABLE `feed_likes`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `feed_tagged_users`
--
ALTER TABLE `feed_tagged_users`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `home_stats`
--
ALTER TABLE `home_stats`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ipn_log`
--
ALTER TABLE `ipn_log`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ip_block`
--
ALTER TABLE `ip_block`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `live_chat`
--
ALTER TABLE `live_chat`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `live_chat_messages`
--
ALTER TABLE `live_chat_messages`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `live_chat_users`
--
ALTER TABLE `live_chat_users`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `page_categories`
--
ALTER TABLE `page_categories`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `page_invites`
--
ALTER TABLE `page_invites`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `page_users`
--
ALTER TABLE `page_users`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `password_reset`
--
ALTER TABLE `password_reset`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `payment_logs`
--
ALTER TABLE `payment_logs`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `payment_plans`
--
ALTER TABLE `payment_plans`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `profile_comments`
--
ALTER TABLE `profile_comments`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `relationship_requests`
--
ALTER TABLE `relationship_requests`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `reset_log`
--
ALTER TABLE `reset_log`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `site_layouts`
--
ALTER TABLE `site_layouts`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `site_settings`
--
ALTER TABLE `site_settings`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `user_albums`
--
ALTER TABLE `user_albums`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `user_custom_fields`
--
ALTER TABLE `user_custom_fields`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `user_data`
--
ALTER TABLE `user_data`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `user_events`
--
ALTER TABLE `user_events`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `user_friends`
--
ALTER TABLE `user_friends`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `user_friend_requests`
--
ALTER TABLE `user_friend_requests`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `user_groups`
--
ALTER TABLE `user_groups`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `user_group_users`
--
ALTER TABLE `user_group_users`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `user_images`
--
ALTER TABLE `user_images`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `user_notifications`
--
ALTER TABLE `user_notifications`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `user_role_permissions`
--
ALTER TABLE `user_role_permissions`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `user_saved_posts`
--
ALTER TABLE `user_saved_posts`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `user_videos`
--
ALTER TABLE `user_videos`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `calendar_events`
--
ALTER TABLE `calendar_events`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `calendar_event_users`
--
ALTER TABLE `calendar_event_users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `custom_fields`
--
ALTER TABLE `custom_fields`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `feed_hashtags`
--
ALTER TABLE `feed_hashtags`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feed_item`
--
ALTER TABLE `feed_item`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `feed_item_comments`
--
ALTER TABLE `feed_item_comments`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feed_item_comment_likes`
--
ALTER TABLE `feed_item_comment_likes`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feed_item_images`
--
ALTER TABLE `feed_item_images`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `feed_item_subscribers`
--
ALTER TABLE `feed_item_subscribers`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `feed_item_urls`
--
ALTER TABLE `feed_item_urls`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feed_item_users`
--
ALTER TABLE `feed_item_users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feed_likes`
--
ALTER TABLE `feed_likes`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `feed_tagged_users`
--
ALTER TABLE `feed_tagged_users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_stats`
--
ALTER TABLE `home_stats`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ipn_log`
--
ALTER TABLE `ipn_log`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ip_block`
--
ALTER TABLE `ip_block`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `live_chat`
--
ALTER TABLE `live_chat`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `live_chat_messages`
--
ALTER TABLE `live_chat_messages`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `live_chat_users`
--
ALTER TABLE `live_chat_users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `page_categories`
--
ALTER TABLE `page_categories`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `page_invites`
--
ALTER TABLE `page_invites`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `page_users`
--
ALTER TABLE `page_users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `password_reset`
--
ALTER TABLE `password_reset`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_logs`
--
ALTER TABLE `payment_logs`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_plans`
--
ALTER TABLE `payment_plans`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `profile_comments`
--
ALTER TABLE `profile_comments`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `relationship_requests`
--
ALTER TABLE `relationship_requests`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reset_log`
--
ALTER TABLE `reset_log`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `site_layouts`
--
ALTER TABLE `site_layouts`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `site_settings`
--
ALTER TABLE `site_settings`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_albums`
--
ALTER TABLE `user_albums`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_custom_fields`
--
ALTER TABLE `user_custom_fields`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_data`
--
ALTER TABLE `user_data`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_events`
--
ALTER TABLE `user_events`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_friends`
--
ALTER TABLE `user_friends`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `user_friend_requests`
--
ALTER TABLE `user_friend_requests`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user_groups`
--
ALTER TABLE `user_groups`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_group_users`
--
ALTER TABLE `user_group_users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_images`
--
ALTER TABLE `user_images`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `user_notifications`
--
ALTER TABLE `user_notifications`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_role_permissions`
--
ALTER TABLE `user_role_permissions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user_saved_posts`
--
ALTER TABLE `user_saved_posts`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_videos`
--
ALTER TABLE `user_videos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
