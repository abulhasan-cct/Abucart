-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 10, 2022 at 11:02 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add category', 7, 'add_category'),
(26, 'Can change category', 7, 'change_category'),
(27, 'Can delete category', 7, 'delete_category'),
(28, 'Can view category', 7, 'view_category'),
(29, 'Can add product', 8, 'add_product'),
(30, 'Can change product', 8, 'change_product'),
(31, 'Can delete product', 8, 'delete_product'),
(32, 'Can view product', 8, 'view_product'),
(33, 'Can add cart', 9, 'add_cart'),
(34, 'Can change cart', 9, 'change_cart'),
(35, 'Can delete cart', 9, 'delete_cart'),
(36, 'Can view cart', 9, 'view_cart'),
(37, 'Can add favourite', 10, 'add_favourite'),
(38, 'Can change favourite', 10, 'change_favourite'),
(39, 'Can delete favourite', 10, 'delete_favourite'),
(40, 'Can view favourite', 10, 'view_favourite');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$320000$WTWPQiuwEY3x7PuUg0yn1N$Jst3AxTH6Naq99Tbd6thH4qDnGD3J1ah/Lqb3LeNvjg=', '2022-08-06 16:52:43.943105', 1, 'abul', '', '', 'abuaseem119@gmail.com', 1, 1, '2022-08-01 12:12:37.087659'),
(9, 'pbkdf2_sha256$320000$2g9faaBf2csetAX45bjyV4$s+DYpNg7atun9XlyQ/muYZZ3U87WAf63eUuNdqJtb0I=', '2022-08-06 08:30:46.564768', 0, 'aseem', '', '', 'as@gmail.com', 0, 1, '2022-08-05 11:04:03.146191'),
(10, 'pbkdf2_sha256$320000$LCHaMBUSxvnyVcg22B8IAl$5Pc2ohchYYdUSLQoCFNnmJTk5GkqABhwB83KO9DmBtg=', NULL, 0, 'aseem1', '', '', 'as1@gmail.com', 0, 1, '2022-08-05 11:17:17.559597');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2022-08-01 12:42:53.913985', '1', 'MOBILE', 1, '[{\"added\": {}}]', 7, 1),
(2, '2022-08-01 14:21:09.049246', '1', 'realme', 1, '[{\"added\": {}}]', 8, 1),
(3, '2022-08-04 09:37:42.015563', '2', 'MENS WEAR', 1, '[{\"added\": {}}]', 7, 1),
(4, '2022-08-04 09:38:22.230551', '3', 'WOMENS WEAR', 1, '[{\"added\": {}}]', 7, 1),
(5, '2022-08-04 09:39:01.328004', '4', 'JEWELLERY', 1, '[{\"added\": {}}]', 7, 1),
(6, '2022-08-04 09:39:56.640461', '5', 'KIDS TOYS', 1, '[{\"added\": {}}]', 7, 1),
(7, '2022-08-04 10:52:30.836123', '6', 'RINGS', 1, '[{\"added\": {}}]', 7, 1),
(8, '2022-08-04 10:53:03.475021', '2', 'MENS WEAR', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(9, '2022-08-04 10:53:17.237146', '1', 'MOBILE', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(10, '2022-08-04 11:25:22.887663', '2', 'stylish t-shirt', 1, '[{\"added\": {}}]', 8, 1),
(11, '2022-08-04 11:26:06.286035', '3', 'chudi', 1, '[{\"added\": {}}]', 8, 1),
(12, '2022-08-04 11:26:52.281768', '4', 'gold chain', 1, '[{\"added\": {}}]', 8, 1),
(13, '2022-08-04 11:27:29.000759', '5', 'nerf guns', 1, '[{\"added\": {}}]', 8, 1),
(14, '2022-08-04 11:28:08.315924', '6', 'gold ring', 1, '[{\"added\": {}}]', 8, 1),
(15, '2022-08-05 09:31:54.060884', '3', 'chudi', 2, '[{\"changed\": {\"fields\": [\"Trending\"]}}]', 8, 1),
(16, '2022-08-05 09:36:14.429400', '3', 'chudi', 2, '[{\"changed\": {\"fields\": [\"Product image\"]}}]', 8, 1),
(17, '2022-08-05 09:50:28.604813', '6', 'gold ring', 2, '[{\"changed\": {\"fields\": [\"Trending\"]}}]', 8, 1),
(18, '2022-08-05 09:50:42.425018', '2', 'stylish t-shirt', 2, '[{\"changed\": {\"fields\": [\"Trending\"]}}]', 8, 1),
(19, '2022-08-05 09:50:55.944463', '5', 'nerf guns', 2, '[{\"changed\": {\"fields\": [\"Trending\"]}}]', 8, 1),
(20, '2022-08-05 10:50:37.343410', '2', 'aseem', 3, '', 4, 1),
(21, '2022-08-05 10:53:25.895369', '3', 'aseem', 3, '', 4, 1),
(22, '2022-08-05 10:57:24.580663', '4', 'queen', 3, '', 4, 1),
(23, '2022-08-05 10:57:30.227737', '5', 'teem', 3, '', 4, 1),
(24, '2022-08-05 11:03:23.150389', '7', 'rafe', 3, '', 4, 1),
(25, '2022-08-05 11:03:33.667188', '6', 'raf', 3, '', 4, 1),
(26, '2022-08-05 11:07:07.088058', '8', 'raf', 3, '', 4, 1),
(27, '2022-08-05 14:47:35.366446', '6', 'gold ring', 2, '[{\"changed\": {\"fields\": [\"Quantity\", \"Trending\"]}}]', 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(9, 'shop', 'cart'),
(7, 'shop', 'category'),
(10, 'shop', 'favourite'),
(8, 'shop', 'product');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-08-01 11:44:31.692653'),
(2, 'auth', '0001_initial', '2022-08-01 11:44:32.537555'),
(3, 'admin', '0001_initial', '2022-08-01 11:44:32.714810'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-08-01 11:44:32.730865'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-08-01 11:44:32.747821'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-08-01 11:44:32.869493'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-08-01 11:44:32.906399'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-08-01 11:44:32.943298'),
(9, 'auth', '0004_alter_user_username_opts', '2022-08-01 11:44:32.999146'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-08-01 11:44:33.132790'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-08-01 11:44:33.136781'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-08-01 11:44:33.155728'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-08-01 11:44:33.209584'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-08-01 11:44:33.242496'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-08-01 11:44:33.268435'),
(16, 'auth', '0011_update_proxy_permissions', '2022-08-01 11:44:33.285390'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-08-01 11:44:33.318300'),
(18, 'sessions', '0001_initial', '2022-08-01 11:44:33.381134'),
(19, 'shop', '0001_initial', '2022-08-01 11:44:33.541058'),
(20, 'shop', '0002_rename_products_product', '2022-08-01 11:44:33.595960'),
(21, 'shop', '0002_cart', '2022-08-06 05:35:52.733877'),
(22, 'shop', '0003_favourite', '2022-08-06 07:59:14.846011');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('og80bg0ag6xwka95eu13y6br10vcmjua', '.eJxVjEEOgjAQRe_StWk6FMapS_ecgUw7U4saSCisjHdXEha6_e-9_zIDb2sZtqrLMIq5GDCn3y1yeui0A7nzdJttmqd1GaPdFXvQavtZ9Hk93L-DwrV8a6cNtZIbJFAXybdnAVJkjxS6DpUDBMCUxXUhAXkV78BlCowtikTz_gDGbjdU:1oKN2Z:nyo8x-LyJNiuJSUAg9ZcFvdTnLYV8TQNfZ2phbGlVNo', '2022-08-20 16:52:43.947160');

-- --------------------------------------------------------

--
-- Table structure for table `shop_cart`
--

CREATE TABLE `shop_cart` (
  `id` bigint(20) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shop_cart`
--

INSERT INTO `shop_cart` (`id`, `product_qty`, `created_at`, `product_id`, `user_id`) VALUES
(1, 1, '2022-08-06 06:51:23.495583', 4, 9);

-- --------------------------------------------------------

--
-- Table structure for table `shop_category`
--

CREATE TABLE `shop_category` (
  `id` bigint(20) NOT NULL,
  `name` varchar(150) NOT NULL,
  `image` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shop_category`
--

INSERT INTO `shop_category` (`id`, `name`, `image`, `description`, `status`, `created_at`) VALUES
(1, 'MOBILE', 'uploads/20220804162317mob1.jpg', 'ALL TYPES OF MOBILE', 0, '2022-08-04 10:53:17.234541'),
(2, 'MENS WEAR', 'uploads/20220804162303chain1.webp', 'All mens wear available....', 0, '2022-08-04 10:53:03.471030'),
(3, 'WOMENS WEAR', 'uploads/20220804150822wom1.jpg', 'All womens wear available......', 0, '2022-08-04 09:38:22.228557'),
(4, 'JEWELLERY', 'uploads/20220804150901chain.jpg', 'All jewellery available....', 0, '2022-08-04 09:39:01.326009'),
(5, 'KIDS TOYS', 'uploads/20220804150956nerf.jpg', 'All toys available.....', 0, '2022-08-04 09:39:56.636467'),
(6, 'RINGS', 'uploads/20220804162230ring.jpg', 'All kinds of rings availabe....', 0, '2022-08-04 10:52:30.834128');

-- --------------------------------------------------------

--
-- Table structure for table `shop_favourite`
--

CREATE TABLE `shop_favourite` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `shop_product`
--

CREATE TABLE `shop_product` (
  `id` bigint(20) NOT NULL,
  `name` varchar(150) NOT NULL,
  `vendor` varchar(150) NOT NULL,
  `product_image` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL,
  `orginal_price` double NOT NULL,
  `selling_price` double NOT NULL,
  `description` longtext NOT NULL,
  `trending` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `status` int(2) NOT NULL,
  `category_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shop_product`
--

INSERT INTO `shop_product` (`id`, `name`, `vendor`, `product_image`, `quantity`, `orginal_price`, `selling_price`, `description`, `trending`, `created_at`, `status`, `category_id`) VALUES
(1, 'realme', 'cdm_ven', 'uploads/20220801195109mob1.jpg', 18, 18999, 15000, 'Realme (stylized as realme) is a manufacturer based in Shenzhen, China. It was founded by Li Bingzhong (known as Sky Li) on May 4, 2018, who was former vice president of Oppo.', 1, '2022-08-01 14:21:09.041868', 0, 1),
(2, 'stylish t-shirt', 'cdm_ven', 'uploads/20220804165522men.jpg', 24, 1999, 999, 'Good qulatity product in this store and COD available return and replacement also available.', 0, '2022-08-05 09:50:42.413313', 0, 2),
(3, 'chudi', 'cdm_ven', 'uploads/20220805150614chain2.jpg', 33, 600, 400, 'Good qulatity product in this store and COD available return and replacement also available.', 0, '2022-08-05 09:36:14.428400', 0, 3),
(4, 'gold chain', 'cdm_ven', 'uploads/20220804165652chain2.jpg', 44, 30000, 20000, 'Good qulatity product in this store and COD available return and replacement also available.', 1, '2022-08-04 11:26:52.279773', 0, 4),
(5, 'nerf guns', 'cdm_ven', 'uploads/20220804165728nerf1.jpg', 23, 800, 500, 'Good qulatity product in this store and COD available return and replacement also available.', 0, '2022-08-05 09:50:55.931659', 0, 5),
(6, 'gold ring', 'cdm_ven', 'uploads/20220804165808ring1.jpg', 0, 2900, 1599, 'Good qulatity product in this store and COD available return and replacement also available.', 1, '2022-08-05 14:47:35.358466', 0, 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `shop_cart`
--
ALTER TABLE `shop_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop_cart_product_id_48b482ee_fk_shop_product_id` (`product_id`),
  ADD KEY `shop_cart_user_id_27925ac6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `shop_category`
--
ALTER TABLE `shop_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_favourite`
--
ALTER TABLE `shop_favourite`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop_favourite_product_id_dc4d9f31_fk_shop_product_id` (`product_id`),
  ADD KEY `shop_favourite_user_id_7375eacf_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `shop_product`
--
ALTER TABLE `shop_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop_products_category_id_ba6920ae_fk_shop_category_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `shop_cart`
--
ALTER TABLE `shop_cart`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `shop_category`
--
ALTER TABLE `shop_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `shop_favourite`
--
ALTER TABLE `shop_favourite`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `shop_product`
--
ALTER TABLE `shop_product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `shop_cart`
--
ALTER TABLE `shop_cart`
  ADD CONSTRAINT `shop_cart_product_id_48b482ee_fk_shop_product_id` FOREIGN KEY (`product_id`) REFERENCES `shop_product` (`id`),
  ADD CONSTRAINT `shop_cart_user_id_27925ac6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `shop_favourite`
--
ALTER TABLE `shop_favourite`
  ADD CONSTRAINT `shop_favourite_product_id_dc4d9f31_fk_shop_product_id` FOREIGN KEY (`product_id`) REFERENCES `shop_product` (`id`),
  ADD CONSTRAINT `shop_favourite_user_id_7375eacf_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `shop_product`
--
ALTER TABLE `shop_product`
  ADD CONSTRAINT `shop_products_category_id_ba6920ae_fk_shop_category_id` FOREIGN KEY (`category_id`) REFERENCES `shop_category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
