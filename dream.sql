-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2018 at 01:35 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dream`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `job_title`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'brij', 'admin@admin.com', 'teacher', '$2y$10$4qY/Te5Z4yEKZbfoBawHq.BVKWdgsJ/nkkxAu8yv/yJhWTOCUH4.a', 'kNAgTlaUMJMjYtWrKaovSBgUMAgtdV70IVAAHoqoiCReJk7WufpRP7vPL1jq', '2018-02-05 09:57:59', '2018-02-06 13:16:36');

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dis` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `user_id`, `title`, `slug`, `type`, `category_id`, `dis`, `body`, `status`, `created_at`, `updated_at`) VALUES
(28, '1', 'This is title of my blog test new update', 'this-is-test-new-article-with-slug-ioioi', 'article', '5', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500', 'this is body', 'Approved', '2018-02-14 02:17:47', '2018-03-01 12:38:10'),
(29, '1', 'This is Web Development title of my Blog', 'This-is-Web-Development-title-of-my-Blog', 'tricks', '9', 'This is deics of my blogLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy', 'this is main bodywww.laravelinterviewquestions.com', 'Approved', '2018-02-19 13:10:31', '2018-03-01 12:37:51'),
(30, '1', 'This is Web new Development title of my Blog', 'this-will-reduce', 'article', '4', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500', '<p>This is main <strong>body</strong></p>\r\n<ol>\r\n<li>this is list</li>\r\n<li>this is second list</li>\r\n<li>ths </li>\r\n</ol>', 'Approved', '2018-02-23 00:54:38', '2018-03-01 12:06:12'),
(32, '1', 'This is web Developer of my blog', 'This-is-web-Developer-of-my-blog', 'tricks', '5', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500', '<p>The Code Sample plugin (<code class="prettyprint prettyprinted"><span class="pln">codesample</span></code>) lets a user insert and embed syntax color highlighted code snippets into the editable area. It also adds a button to the toolbar which on click will open a dialog box to accept raw code input.</p>\r\n<p>This plugin demonstrates the support for the new block based <code class="prettyprint prettyprinted"><span class="pln">contenteditable</span><span class="pun">=</span><span class="kwd">false</span></code> elements available in version TinyMCE 4.3</p>\r\n<pre class="language-javascript"><code>tinymce.init({\r\n  selector: "textarea",  // \r\n  plugins: "codesample",\r\n  toolbar: "codesample"\r\nselector: "textarea",  // \r\n  plugins: "codesample",\r\n  toolbar: "codesample"\r\n});\r\n\r\n</code></pre>\r\n<p>This configuration option sets the <em>internal, editable area</em> width of the <code class="prettyprint prettyprinted"><span class="pln">codesample</span></code> dialog box.</p>\r\n<p>Note that the external dimensions of the actual modal will be slightly larger than the value set.</p>\r\n<h1>This is html Code</h1>\r\n<pre class="language-javascript"><code><script type="text/javascript">\r\n    tinyMCE.init({\r\n            // General options\r\n            mode : "textareas",\r\n            theme : "advanced",\r\n            editor_selector : "mceSimple",\r\n              ......\r\n              ......\r\n    }\r\n    </script></code></pre>\r\n<header></header><header></header>', 'Approved', '2018-02-23 02:53:36', '2018-03-01 12:05:42'),
(33, '1', 'This is main title for code test', 'null', 'article', '4', 'this is dis', '<pre class="language-markup"><code>&lt;link rel="stylesheet" type="text/css" href="prism.css"&gt;\n&lt;script src="prism.js"&gt;&lt;/script&gt;\n&lt;pre class="language-markup"&gt;&lt;code&gt;...&lt;/code&gt;&lt;/pre&gt;</code></pre>\n<p><img src="https://www.google.co.in/search?q=salman+khan+image&amp;rlz=1C1CHBD_enIN778IN778&amp;tbm=isch&amp;source=iu&amp;ictx=1&amp;fir=Wgvv1Y85UCFrxM%253A%252CZOuRvf-okEqbtM%252C_&amp;usg=__extmBEjnqLxo4ZD4HnjOXanPIfU%3D&amp;sa=X&amp;ved=0ahUKEwjlj_254L3ZAhWFupQKHVPqCoUQ9QEILjAC#imgrc=Wgvv1Y85UCFrxM:" alt="" /></p>', 'Draft', '2018-02-23 21:14:12', '2018-02-24 04:26:16'),
(34, '1', 'This is Database Related To sql', 'null', 'article', '6', 'this is Description', '<h1><strong>This is image Body test</strong></h1>\r\n<p><strong><img src="data:image/jpeg;base64,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" alt="" width="334" height="225" /></strong></p>', 'Pending', '2018-02-27 09:50:30', '2018-02-27 09:50:30'),
(35, '1', 'This is Title of Multimedia', 'null', 'article', '7', 'this is a description', '<p>this is boboy</p>', 'Approved', '2018-02-27 14:27:44', '2018-03-26 09:04:36'),
(36, '1', 'This is my Tricks post', 'null', 'tricks', '5', 'SiteWorthTraffic is a free service designed to estimate value, daily pageviews, daily visitors and daily revenue of a website. Quickly calculate the w', '<p>This is bold text body of my post</p>', 'Approved', '2018-03-25 01:08:55', '2018-03-25 01:10:36'),
(37, '2', 'this is admin post of news', 'null', 'news', '4', 'this is discripitim', '<p>tjo tkmt<strong> kggkgm&nbsp;</strong></p>\r\n<p><strong>kgmg</strong></p>', 'Pending', '2018-03-25 04:39:49', '2018-03-25 04:39:49');

-- --------------------------------------------------------

--
-- Table structure for table `article_tag`
--

CREATE TABLE `article_tag` (
  `id` int(10) UNSIGNED NOT NULL,
  `article_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `article_tag`
--

INSERT INTO `article_tag` (`id`, `article_id`, `tag_id`) VALUES
(18, 28, 3),
(19, 28, 4),
(20, 29, 2),
(21, 29, 4),
(22, 30, 2),
(23, 30, 4),
(25, 32, 4),
(26, 33, 4),
(27, 32, 3),
(28, 34, 2),
(29, 34, 4),
(30, 35, 2),
(31, 35, 4),
(32, 36, 3),
(33, 36, 4),
(34, 37, 2);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(4, 'Web Development', 'web-development', '2018-02-15 16:21:13', '2018-02-15 16:21:13'),
(5, 'Mobile Development', 'mobile-development', '2018-02-15 16:21:44', '2018-02-15 16:21:44'),
(6, 'Database', 'database', '2018-02-15 16:22:00', '2018-02-15 16:22:00'),
(7, 'Multimedia', 'multimedia', '2018-02-15 16:22:28', '2018-02-15 16:22:28'),
(8, 'Cloud Computing', 'cloud-computing', '2018-02-15 16:23:24', '2018-02-15 16:23:24'),
(9, 'Graphics / Design', 'graphics-design', '2018-02-15 16:24:37', '2018-02-15 16:24:37'),
(10, 'Language', 'language', '2018-02-15 16:25:29', '2018-02-15 16:25:29');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `article_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `comment`, `article_id`, `created_at`, `updated_at`) VALUES
(3, '1', 'this is news comment updata', 32, '2018-02-28 12:37:19', '2018-04-04 05:49:19'),
(8, '1', 'this is new comment', 32, '2018-03-01 01:41:54', '2018-03-01 01:41:54'),
(9, '1', 'This is main title for code test \r\nThis is web Developer of my blog \r\nThis is Web new Development title of my Blog \r\nThis is golu article and single update', 30, '2018-03-01 01:43:41', '2018-03-01 01:43:41'),
(10, '2', 'this is golu comment', 29, '2018-03-01 02:38:48', '2018-03-01 02:38:48'),
(11, '2', 'this is go,u commen this will', 30, '2018-03-01 02:41:59', '2018-03-01 02:41:59'),
(12, '2', 'this is new golu babu', 32, '2018-03-01 02:52:24', '2018-03-01 06:58:28');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_02_01_075009_add_about_column', 2),
(4, '2018_02_01_133826_create_categories_table', 3),
(5, '2018_02_01_140225_create_categories_table', 4),
(6, '2018_02_01_150244_create_articles_table', 5),
(7, '2018_02_01_151704_add_status_to_article', 6),
(8, '2018_02_05_141405_create_admin_table', 7),
(9, '2018_02_07_131043_add_category', 8),
(10, '2018_02_07_134809_create_categories_tab', 9),
(11, '2018_02_07_154244_create_categories_table', 10),
(12, '2018_02_07_191339_create_tags_table', 11),
(13, '2018_02_07_201330_create_article_tag', 12),
(14, '2018_02_28_103805_create_comments_table', 13),
(15, '2018_03_25_130532_create_news_table', 14),
(16, '2018_03_25_140233_create_blogs_table', 15),
(17, '2018_03_25_153805_create_posts_table', 16),
(18, '2018_03_31_074911_create_newsComment_table', 17),
(19, '2018_04_03_155034_create_ncomments_table', 18);

-- --------------------------------------------------------

--
-- Table structure for table `ncomments`
--

CREATE TABLE `ncomments` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ncomments`
--

INSERT INTO `ncomments` (`id`, `user_id`, `comment`, `post_id`, `created_at`, `updated_at`) VALUES
(3, '1', 'This is admin edit comment, please Don''t comment on this', 10, '2018-04-03 11:15:53', '2018-04-04 05:55:36');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('brijpalsharma99@gmail.com', '$2y$10$6Hfjqpozmdt3Y1UoypI79OccfeQfYLDrYA1acLbVLDVruqxgegmfS', '2018-02-06 13:35:16');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dis` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user`, `title`, `slug`, `type`, `dis`, `body`, `status`, `created_at`, `updated_at`) VALUES
(9, 'Brij', 'This is test new titile', 'null', 'News', 'this is news di', '<p>this is main body of news</p>', 'Approved', '2018-03-28 05:05:27', '2018-03-28 05:05:58'),
(10, 'Brij', 'This is draft new post of my blog updated', 'this-is-test-new-article-with-slug', 'News', 'This is test for news This is draft new post of my blog updatedThis is draft new post of my blog updatedThis is draft new post of my blog updated', '<p>this is main body</p>\r\n<p>of my post&nbsp;</p>\r\n<p>this is news&nbsp;</p>', 'Approved', '2018-03-28 05:06:42', '2018-04-04 05:08:50');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`) VALUES
(2, 'php', '2018-02-07 14:19:31', '2018-03-05 15:38:19'),
(3, 'java', '2018-02-07 14:51:43', '2018-02-07 14:51:43'),
(4, 'asp.net', '2018-02-10 15:37:22', '2018-02-10 15:37:22'),
(5, 'c', '2018-02-10 15:37:30', '2018-02-10 15:37:30'),
(6, 'C++', '2018-02-10 15:37:36', '2018-02-10 15:37:36'),
(7, 'sql', '2018-03-01 11:44:23', '2018-03-01 11:44:23'),
(8, 'laravel', '2018-03-01 11:44:32', '2018-03-01 11:44:32'),
(9, 'html', '2018-03-25 02:13:34', '2018-03-25 02:13:34'),
(10, 'css', '2018-03-25 02:13:38', '2018-03-25 02:13:38'),
(11, 'codeigniter', '2018-03-25 02:14:20', '2018-03-25 02:14:20');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `country`, `about`, `image`) VALUES
(1, 'Brijpal Sharma', 'brijpalsharma99@gmail.com', '$2y$10$WMCWa9tIUdQ0Rr7GsllsluL0K4hRmJg1RnEuLA7vDnvoBbzDakyTq', '39d438UE2xEouI5xw8UpNjjdD2AjSf6cyyIqDOuNnGogUeqi3TT90k4sw9ol', '2018-01-29 13:18:04', '2018-02-09 14:32:16', 'India', 'this is about update', '1517611086.jpg'),
(2, 'golu', 'golu@gmail.com', '$2y$10$w5vPAfyyK.zhcxTT6kub/.28lumgaMV5Q1PW/Cria3tAfYbw9zoym', 'uF3utLbLBoKY6qQhWon0Wu2X0wXfy9dSbnTmixWSWrfFhzMMbvK1466lApcz', '2018-02-02 15:08:31', '2018-02-02 15:34:45', 'londan', 'i am golu ji', NULL),
(3, 'mahesh', 'mahesh@gmail.com', '$2y$10$C5OTTzoPJCLvEseoVOgF8.ESI4QaO.pj6nEFwrEzpWgcTbvopJxe2', 'kq616zGJKSpKAcRxkm1kLbjufyebvwcUwJdUxcjdUrRyMPwSz5btxFBoqeRd', '2018-02-27 05:15:15', '2018-02-27 05:15:15', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `article_tag`
--
ALTER TABLE `article_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `article_tag_article_id_foreign` (`article_id`),
  ADD KEY `article_tag_tag_id_foreign` (`tag_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_article_id_foreign` (`article_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ncomments`
--
ALTER TABLE `ncomments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `article_tag`
--
ALTER TABLE `article_tag`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `ncomments`
--
ALTER TABLE `ncomments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `article_tag`
--
ALTER TABLE `article_tag`
  ADD CONSTRAINT `article_tag_article_id_foreign` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`),
  ADD CONSTRAINT `article_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`);

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_article_id_foreign` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
