-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 19, 2022 at 10:02 AM
-- Server version: 10.3.32-MariaDB-0ubuntu0.20.04.1
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laguna_local_shop_custom`
--

-- --------------------------------------------------------

--
-- Table structure for table `md_config_email`
--

CREATE TABLE `md_config_email` (
  `id` int(11) NOT NULL,
  `email_type_id` int(11) NOT NULL,
  `email_body` text NOT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `created_dt` datetime DEFAULT NULL,
  `modified_by` varchar(50) DEFAULT NULL,
  `modified_dt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `md_config_email`
--

INSERT INTO `md_config_email` (`id`, `email_type_id`, `email_body`, `created_by`, `created_dt`, `modified_by`, `modified_dt`) VALUES
(1, 1, 'You have successfully completed your registration..', 'admin@gmail.com', '2021-11-25 13:14:57', NULL, NULL),
(2, 2, 'Your order has been placed successfully.', 'admin@gmail.com', '2021-11-25 13:15:41', NULL, NULL),
(3, 3, 'We are happy to have you as a part of the Shop Local Laguna family!\nYour payment has been done successfully.', 'admin@gmail.com', '2021-11-25 13:16:25', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `md_config_inst`
--

CREATE TABLE `md_config_inst` (
  `id` int(11) NOT NULL,
  `menu_help` text DEFAULT NULL,
  `calender_help` text DEFAULT NULL,
  `qr_help` text DEFAULT NULL,
  `birthday_help` text DEFAULT NULL,
  `cantact_info_help` text DEFAULT NULL,
  `birthday_body` text DEFAULT NULL,
  `event_body` text DEFAULT NULL,
  `event_img` text DEFAULT NULL,
  `order_conf` text DEFAULT NULL,
  `cover_img` varchar(100) DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `created_dt` datetime DEFAULT NULL,
  `modified_by` varchar(50) DEFAULT NULL,
  `modified_dt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `md_config_inst`
--

INSERT INTO `md_config_inst` (`id`, `menu_help`, `calender_help`, `qr_help`, `birthday_help`, `cantact_info_help`, `birthday_body`, `event_body`, `event_img`, `order_conf`, `cover_img`, `created_by`, `created_dt`, `modified_by`, `modified_dt`) VALUES
(1, 'This is a sample help text for menu. ', 'This is a sample help text for calendar. ', 'This is a sample help text for QR Code signage. ', 'This is a sample help text for birthday/anniversary. ', 'This is a sample help text for contact information. ', '<font face=\"Arial\">This is a rule set for birthdays and anniversary. There are certain rules to be followed if someone has chosen birthday/anniversary. The facility is free by default and it is up to the admin to decide whether is free or not. The rules are as followed:</font><p></p><ol><li><font face=\"Arial\">Rule 1</font></li><li><font face=\"Arial\">Rule 2</font></li><li><font face=\"Arial\">Rule 3</font></li></ol><p></p>', '<font face=\"Arial\">This is a rule set for event calendar. There are certain rules to be followed if someone has chosen event calendar. The facility is free by default and it is up to the admin to decide whether is free or not. The rules are as followed:</font><p></p><ol><li><font face=\"Arial\">Rule 1</font></li><li><font face=\"Arial\">Rule 2</font></li><li><font face=\"Arial\">Rule 3</font></li></ol><p></p>', 'dif_eventsample.jpg', 'We are happy to have you as a part of the Shop Local Laguna family!\nWe\'ve received your order, including all photos and data (or link to your website\nfor us to collect), and will now commence with the development of your Digital\nMenu.\nIf for any reason there are any problems then we will contact you by email.\nWhat\'s Next?\nBefore your Digital Menu can go live you must check that all of the menu\ncontent is correct, and meets with your overall approval. You should do this by\nscanning the QR Code contained in the completion email we send you, this way\nyou will experience (the same way that your customers will) viewing and\nnavigating your new menu platform on your mobile.\nIf everything is in order then you will Approve the Menu.\nHowever if there are any errors or omissions you will identify those issues in the\nform and they would be corrected by our technical support team and once\ncompleted you will receive the confirmation email again. Any future\namendments to the Menu will be handled by you or your authorized staff, from\nwithin your platform\'s back-office.\nOnce you\'ve provided us with your final approval, your Menu will go LIVE. You\nwill receive an email which includes a link to your sign-in page, where your\nUsername will be your registered email address. We will provide a temporary\npassword which expires 2 hours after first logging in, so the first thing you must\ndo is to create your new password.', 'dif_cov_rest_cov.jpg', 'admin@gmail.com', '2021-11-18 12:41:22', 'undefined', '2021-12-07 07:26:28');

-- --------------------------------------------------------

--
-- Table structure for table `md_config_menu`
--

CREATE TABLE `md_config_menu` (
  `id` int(11) NOT NULL,
  `footer_color` varchar(50) DEFAULT NULL,
  `footer_content` text DEFAULT NULL,
  `text_color` varchar(50) DEFAULT NULL,
  `greet_text_color` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `md_config_menu`
--

INSERT INTO `md_config_menu` (`id`, `footer_color`, `footer_content`, `text_color`, `greet_text_color`) VALUES
(1, '#0d0d0d', '<div><font face=\"Arial\">This is a sample footer text and this is a sample&#160;</font><a href=\"https://online.kfc.co.in/\" target=\"_blank\">link</a><font face=\"Arial\">.</font></div>', '#ffffff', '#fa00b7');

-- --------------------------------------------------------

--
-- Table structure for table `md_country`
--

CREATE TABLE `md_country` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `md_country`
--

INSERT INTO `md_country` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'China', NULL, NULL),
(2, 'India', NULL, NULL),
(3, 'United States', NULL, NULL),
(4, 'Indonesia', NULL, NULL),
(5, 'Brazil', NULL, NULL),
(6, 'Pakistan', NULL, NULL),
(7, 'Nigeria', NULL, NULL),
(8, 'Bangladesh', NULL, NULL),
(9, 'Russia', NULL, NULL),
(10, 'Japan', NULL, NULL),
(11, 'Mexico', NULL, NULL),
(12, 'Philippines', NULL, NULL),
(13, 'Vietnam', NULL, NULL),
(14, 'Ethiopia', NULL, NULL),
(15, 'Egypt', NULL, NULL),
(16, 'Germany', NULL, NULL),
(17, 'Iran', NULL, NULL),
(18, 'Turkey', NULL, NULL),
(19, 'Democratic Republic of the Congo', NULL, NULL),
(20, 'Thailand', NULL, NULL),
(21, 'France', NULL, NULL),
(22, 'United Kingdom', NULL, NULL),
(23, 'Italy', NULL, NULL),
(24, 'Burma', NULL, NULL),
(25, 'South Africa', NULL, NULL),
(26, 'South Korea', NULL, NULL),
(27, 'Colombia', NULL, NULL),
(28, 'Spain', NULL, NULL),
(29, 'Ukraine', NULL, NULL),
(30, 'Tanzania', NULL, NULL),
(31, 'Kenya', NULL, NULL),
(32, 'Argentina', NULL, NULL),
(33, 'Algeria', NULL, NULL),
(34, 'Poland', NULL, NULL),
(35, 'Sudan', NULL, NULL),
(36, 'Uganda', NULL, NULL),
(37, 'Canada', NULL, NULL),
(38, 'Iraq', NULL, NULL),
(39, 'Morocco', NULL, NULL),
(40, 'Peru', NULL, NULL),
(41, 'Uzbekistan', NULL, NULL),
(42, 'Saudi Arabia', NULL, NULL),
(43, 'Malaysia', NULL, NULL),
(44, 'Venezuela', NULL, NULL),
(45, 'Nepal', NULL, NULL),
(46, 'Afghanistan', NULL, NULL),
(47, 'Yemen', NULL, NULL),
(48, 'North Korea', NULL, NULL),
(49, 'Ghana', NULL, NULL),
(50, 'Mozambique', NULL, NULL),
(51, 'Taiwan', NULL, NULL),
(52, 'Australia', NULL, NULL),
(53, 'Ivory Coast', NULL, NULL),
(54, 'Syria', NULL, NULL),
(55, 'Madagascar', NULL, NULL),
(56, 'Angola', NULL, NULL),
(57, 'Cameroon', NULL, NULL),
(58, 'Sri Lanka', NULL, NULL),
(59, 'Romania', NULL, NULL),
(60, 'Burkina Faso', NULL, NULL),
(61, 'Niger', NULL, NULL),
(62, 'Kazakhstan', NULL, NULL),
(63, 'Netherlands', NULL, NULL),
(64, 'Chile', NULL, NULL),
(65, 'Malawi', NULL, NULL),
(66, 'Ecuador', NULL, NULL),
(67, 'Guatemala', NULL, NULL),
(68, 'Mali', NULL, NULL),
(69, 'Cambodia', NULL, NULL),
(70, 'Senegal', NULL, NULL),
(71, 'Zambia', NULL, NULL),
(72, 'Zimbabwe', NULL, NULL),
(73, 'Chad', NULL, NULL),
(74, 'South Sudan', NULL, NULL),
(75, 'Belgium', NULL, NULL),
(76, 'Cuba', NULL, NULL),
(77, 'Tunisia', NULL, NULL),
(78, 'Guinea', NULL, NULL),
(79, 'Greece', NULL, NULL),
(80, 'Portugal', NULL, NULL),
(81, 'Rwanda', NULL, NULL),
(82, 'Czech Republic', NULL, NULL),
(83, 'Somalia', NULL, NULL),
(84, 'Haiti', NULL, NULL),
(85, 'Benin', NULL, NULL),
(86, 'Burundi', NULL, NULL),
(87, 'Bolivia', NULL, NULL),
(88, 'Hungary', NULL, NULL),
(89, 'Sweden', NULL, NULL),
(90, 'Belarus', NULL, NULL),
(91, 'Dominican Republic', NULL, NULL),
(92, 'Azerbaijan', NULL, NULL),
(93, 'Honduras', NULL, NULL),
(94, 'Austria', NULL, NULL),
(95, 'United Arab Emirates', NULL, NULL),
(96, 'Israel', NULL, NULL),
(97, 'Switzerland', NULL, NULL),
(98, 'Tajikistan', NULL, NULL),
(99, 'Bulgaria', NULL, NULL),
(100, 'Hong Kong (China)', NULL, NULL),
(101, 'Serbia', NULL, NULL),
(102, 'Papua New Guinea', NULL, NULL),
(103, 'Paraguay', NULL, NULL),
(104, 'Laos', NULL, NULL),
(105, 'Jordan', NULL, NULL),
(106, 'El Salvador', NULL, NULL),
(107, 'Eritrea', NULL, NULL),
(108, 'Libya', NULL, NULL),
(109, 'Togo', NULL, NULL),
(110, 'Sierra Leone', NULL, NULL),
(111, 'Nicaragua', NULL, NULL),
(112, 'Kyrgyzstan', NULL, NULL),
(113, 'Denmark', NULL, NULL),
(114, 'Finland', NULL, NULL),
(115, 'Slovakia', NULL, NULL),
(116, 'Singapore', NULL, NULL),
(117, 'Turkmenistan', NULL, NULL),
(118, 'Norway', NULL, NULL),
(119, 'Lebanon', NULL, NULL),
(120, 'Costa Rica', NULL, NULL),
(121, 'Central African Republic', NULL, NULL),
(122, 'Ireland', NULL, NULL),
(123, 'Georgia', NULL, NULL),
(124, 'New Zealand', NULL, NULL),
(125, 'Republic of the Congo', NULL, NULL),
(126, 'Palestine', NULL, NULL),
(127, 'Liberia', NULL, NULL),
(128, 'Croatia', NULL, NULL),
(129, 'Oman', NULL, NULL),
(130, 'Bosnia and Herzegovina', NULL, NULL),
(131, 'Puerto Rico', NULL, NULL),
(132, 'Kuwait', NULL, NULL),
(133, 'Moldov', NULL, NULL),
(134, 'Mauritania', NULL, NULL),
(135, 'Panama', NULL, NULL),
(136, 'Uruguay', NULL, NULL),
(137, 'Armenia', NULL, NULL),
(138, 'Lithuania', NULL, NULL),
(139, 'Albania', NULL, NULL),
(140, 'Mongolia', NULL, NULL),
(141, 'Jamaica', NULL, NULL),
(142, 'Namibia', NULL, NULL),
(143, 'Lesotho', NULL, NULL),
(144, 'Qatar', NULL, NULL),
(145, 'Macedonia', NULL, NULL),
(146, 'Slovenia', NULL, NULL),
(147, 'Botswana', NULL, NULL),
(148, 'Latvia', NULL, NULL),
(149, 'Gambia', NULL, NULL),
(150, 'Kosovo', NULL, NULL),
(151, 'Guinea-Bissau', NULL, NULL),
(152, 'Gabon', NULL, NULL),
(153, 'Equatorial Guinea', NULL, NULL),
(154, 'Trinidad and Tobago', NULL, NULL),
(155, 'Estonia', NULL, NULL),
(156, 'Mauritius', NULL, NULL),
(157, 'Swaziland', NULL, NULL),
(158, 'Bahrain', NULL, NULL),
(159, 'Timor-Leste', NULL, NULL),
(160, 'Djibouti', NULL, NULL),
(161, 'Cyprus', NULL, NULL),
(162, 'Fiji', NULL, NULL),
(163, 'Reunion (France)', NULL, NULL),
(164, 'Guyana', NULL, NULL),
(165, 'Comoros', NULL, NULL),
(166, 'Bhutan', NULL, NULL),
(167, 'Montenegro', NULL, NULL),
(168, 'Macau (China)', NULL, NULL),
(169, 'Solomon Islands', NULL, NULL),
(170, 'Western Sahara', NULL, NULL),
(171, 'Luxembourg', NULL, NULL),
(172, 'Suriname', NULL, NULL),
(173, 'Cape Verde', NULL, NULL),
(174, 'Malta', NULL, NULL),
(175, 'Guadeloupe (France)', NULL, NULL),
(176, 'Martinique (France)', NULL, NULL),
(177, 'Brunei', NULL, NULL),
(178, 'Bahamas', NULL, NULL),
(179, 'Iceland', NULL, NULL),
(180, 'Maldives', NULL, NULL),
(181, 'Belize', NULL, NULL),
(182, 'Barbados', NULL, NULL),
(183, 'French Polynesia (France)', NULL, NULL),
(184, 'Vanuatu', NULL, NULL),
(185, 'New Caledonia (France)', NULL, NULL),
(186, 'French Guiana (France)', NULL, NULL),
(187, 'Mayotte (France)', NULL, NULL),
(188, 'Samoa', NULL, NULL),
(189, 'Sao Tom and Principe', NULL, NULL),
(190, 'Saint Lucia', NULL, NULL),
(191, 'Guam (USA)', NULL, NULL),
(192, 'Curacao (Netherlands)', NULL, NULL),
(193, 'Saint Vincent and the Grenadines', NULL, NULL),
(194, 'Kiribati', NULL, NULL),
(195, 'United States Virgin Islands (USA)', NULL, NULL),
(196, 'Grenada', NULL, NULL),
(197, 'Tonga', NULL, NULL),
(198, 'Aruba (Netherlands)', NULL, NULL),
(199, 'Federated States of Micronesia', NULL, NULL),
(200, 'Jersey (UK)', NULL, NULL),
(201, 'Seychelles', NULL, NULL),
(202, 'Antigua and Barbuda', NULL, NULL),
(203, 'Isle of Man (UK)', NULL, NULL),
(204, 'Andorra', NULL, NULL),
(205, 'Dominica', NULL, NULL),
(206, 'Bermuda (UK)', NULL, NULL),
(207, 'Guernsey (UK)', NULL, NULL),
(208, 'Greenland (Denmark)', NULL, NULL),
(209, 'Marshall Islands', NULL, NULL),
(210, 'American Samoa (USA)', NULL, NULL),
(211, 'Cayman Islands (UK)', NULL, NULL),
(212, 'Saint Kitts and Nevis', NULL, NULL),
(213, 'Northern Mariana Islands (USA)', NULL, NULL),
(214, 'Faroe Islands (Denmark)', NULL, NULL),
(215, 'Sint Maarten (Netherlands)', NULL, NULL),
(216, 'Saint Martin (France)', NULL, NULL),
(217, 'Liechtenstein', NULL, NULL),
(218, 'Monaco', NULL, NULL),
(219, 'San Marino', NULL, NULL),
(220, 'Turks and Caicos Islands (UK)', NULL, NULL),
(221, 'Gibraltar (UK)', NULL, NULL),
(222, 'British Virgin Islands (UK)', NULL, NULL),
(223, 'Aland Islands (Finland)', NULL, NULL),
(224, 'Caribbean Netherlands (Netherlands)', NULL, NULL),
(225, 'Palau', NULL, NULL),
(226, 'Cook Islands (NZ)', NULL, NULL),
(227, 'Anguilla (UK)', NULL, NULL),
(228, 'Wallis and Futuna (France)', NULL, NULL),
(229, 'Tuvalu', NULL, NULL),
(230, 'Nauru', NULL, NULL),
(231, 'Saint Barthelemy (France)', NULL, NULL),
(232, 'Saint Pierre and Miquelon (France)', NULL, NULL),
(233, 'Montserrat (UK)', NULL, NULL),
(234, 'Saint Helena', NULL, NULL),
(235, 'Svalbard and Jan Mayen (Norway)', NULL, NULL),
(236, 'Falkland Islands (UK)', NULL, NULL),
(237, 'Norfolk Island (Australia)', NULL, NULL),
(238, 'Christmas Island (Australia)', NULL, NULL),
(239, 'Niue (NZ)', NULL, NULL),
(240, 'Tokelau (NZ)', NULL, NULL),
(241, 'Vatican City', NULL, NULL),
(242, 'Cocos (Keeling) Islands (Australia)', NULL, NULL),
(243, 'Pitcairn Islands (UK)', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `md_email_type`
--

CREATE TABLE `md_email_type` (
  `id` int(11) NOT NULL,
  `type_name` varchar(100) NOT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `created_dt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `md_email_type`
--

INSERT INTO `md_email_type` (`id`, `type_name`, `created_by`, `created_dt`) VALUES
(1, 'Order Placement', 'admin@gmail.com', '2021-11-05 00:00:00'),
(2, 'Payment', 'admin@gmail.com', '2021-11-05 00:00:00'),
(3, 'Login Credential', 'admin@gmail.com', '2021-11-05 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `md_holder_cling`
--

CREATE TABLE `md_holder_cling` (
  `id` int(11) NOT NULL,
  `free_flag` enum('Y','N') NOT NULL DEFAULT 'Y',
  `price` float(10,2) NOT NULL DEFAULT 0.00,
  `created_by` varchar(50) DEFAULT NULL,
  `created_dt` datetime DEFAULT NULL,
  `modified_by` varchar(50) DEFAULT NULL,
  `modified_dt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `md_holder_cling`
--

INSERT INTO `md_holder_cling` (`id`, `free_flag`, `price`, `created_by`, `created_dt`, `modified_by`, `modified_dt`) VALUES
(6, 'N', 2.00, 'Subham', '2021-09-15 00:00:00', 'admin@gmail.com', '2021-12-24 13:13:24'),
(7, 'N', 5.00, 'Subham', '2021-09-15 00:00:00', 'admin@gmail.com', '2021-10-13 05:30:28'),
(8, 'N', 8.00, 'Subham', '2021-09-15 00:00:00', 'admin@gmail.com', '2021-10-13 05:30:29'),
(9, 'N', 6.00, 'Subham', '2021-09-15 00:00:00', 'admin@gmail.com', '2021-10-13 05:30:34');

-- --------------------------------------------------------

--
-- Table structure for table `md_items`
--

CREATE TABLE `md_items` (
  `id` int(11) NOT NULL,
  `restaurant_id` bigint(22) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `item_name` varchar(100) NOT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `created_dt` datetime DEFAULT NULL,
  `modified_by` varchar(50) DEFAULT NULL,
  `modified_dt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `md_items`
--

INSERT INTO `md_items` (`id`, `restaurant_id`, `menu_id`, `section_id`, `item_name`, `created_by`, `created_dt`, `modified_by`, `modified_dt`) VALUES
(1, 3, 1, 1, 'Mediterranean Breakfast', '3', '2021-10-07 10:05:48', NULL, NULL),
(2, 3, 1, 1, 'Finnan haddie', '3', '2021-10-07 10:06:00', NULL, NULL),
(3, 3, 2, 3, 'Braised Beef Cheeks', '3', '2021-10-07 10:49:07', NULL, NULL),
(4, 5, 1, 4, 'Oats & Milk with seasonal fruit', '5', '2021-10-08 11:59:54', NULL, NULL),
(5, 22, 1, 5, 'BREAKFAST BURRITO', '22', '2021-10-13 06:35:54', NULL, NULL),
(6, 22, 1, 5, 'LOX BAGEL', '22', '2021-10-13 06:36:07', NULL, NULL),
(7, 22, 1, 5, 'EGGS SARDOU', '22', '2021-10-13 06:36:23', NULL, NULL),
(8, 22, 1, 6, 'TWO EGGS ANY STYLE', '22', '2021-10-13 06:36:42', NULL, NULL),
(9, 22, 1, 6, 'STEAK & EGGS', '22', '2021-10-13 06:36:53', NULL, NULL),
(16, 26, 1, 7, 'Mediterranean', '26', '2021-10-19 07:37:51', '26', '2021-10-22 10:02:02'),
(17, 26, 1, 7, 'Finnan Haddie', '26', '2021-10-19 07:38:07', '26', '2021-10-19 07:39:23'),
(18, 26, 1, 7, 'Ulster Fry', '26', '2021-10-19 07:38:16', NULL, NULL),
(19, 26, 1, 8, 'Eggy Bread', '26', '2021-10-19 07:38:32', NULL, NULL),
(20, 26, 1, 8, 'Kennington Special', '26', '2021-10-19 07:39:02', NULL, NULL),
(21, 26, 4, 11, 'Veggie Brunch', '26', '2021-10-19 07:40:47', NULL, NULL),
(22, 26, 2, 9, 'Ceviche Gigha Halibut', '26', '2021-10-19 07:41:09', '26', '2021-10-19 07:41:48'),
(23, 26, 2, 9, 'Feuillantine Of Veal Sweet Breads', '26', '2021-10-19 07:42:33', NULL, NULL),
(24, 26, 2, 10, 'Fillet Of Cod', '26', '2021-10-19 07:42:48', NULL, NULL),
(25, 26, 2, 10, 'Braised Beef Cheeks', '26', '2021-10-19 07:43:10', NULL, NULL),
(26, 26, 4, 11, 'Passion Fruit Posset', '26', '2021-10-19 07:43:26', NULL, NULL),
(27, 26, 4, 11, 'Valrhona Guanaja Chocolate', '26', '2021-10-19 07:43:41', NULL, NULL),
(28, 26, 3, 12, 'Champagne Michel Roux Brut N.V.', '26', '2021-10-19 07:44:02', NULL, NULL),
(29, 26, 3, 12, 'Muscadet sue Lie, Sèvre et Maine ', '26', '2021-10-19 07:44:28', NULL, NULL),
(30, 26, 3, 12, 'Château Rieussec', '26', '2021-10-19 07:44:40', NULL, NULL),
(31, 26, 3, 12, 'Château Rieussec', '26', '2021-10-19 07:44:41', NULL, NULL),
(32, 28, 1, 13, 'Oats & Milk with seasonal fruit', '28', '2021-10-21 08:07:44', NULL, NULL),
(33, 30, 1, 15, 'Oats & Milk with seasonal fruit', '30', '2021-10-21 11:08:37', NULL, NULL),
(34, 30, 2, 16, 'Fish and Chips', '30', '2021-10-21 11:08:50', NULL, NULL),
(35, 3, 2, 17, 'Strawberry Sponge and fresh cream', '3', '2021-10-28 14:10:24', NULL, NULL),
(36, 34, 2, 18, 'Marinated Olives & Sun Dried Tomatoes', '34', '2021-11-01 11:32:06', NULL, NULL),
(37, 34, 2, 18, 'Crispy Piggy Bits', '34', '2021-11-01 11:32:39', NULL, NULL),
(38, 34, 2, 18, 'Veggie Bits', '34', '2021-11-01 11:33:04', NULL, NULL),
(39, 34, 2, 18, 'Acorn Oil Grilled Goats Cheese', '34', '2021-11-01 11:33:41', NULL, NULL),
(40, 34, 2, 18, 'The Vegan Tear & Share Pizza', '34', '2021-11-01 11:34:22', NULL, NULL),
(41, 34, 2, 19, 'Soup Of The Day', '34', '2021-11-01 11:35:23', NULL, NULL),
(42, 34, 2, 19, 'Chicken Liver Parfait', '34', '2021-11-01 11:35:51', NULL, NULL),
(43, 34, 2, 19, 'Fishermans Cocktail', '34', '2021-11-01 11:36:12', NULL, NULL),
(44, 34, 2, 19, '1/2 a Pint of Crispy Whitebait', '34', '2021-11-01 11:36:36', NULL, NULL),
(45, 34, 2, 19, 'Mezze', '34', '2021-11-01 11:36:57', NULL, NULL),
(46, 34, 2, 20, '‘A Taste of The Middle East’ ', '34', '2021-11-01 11:37:26', NULL, NULL),
(47, 34, 2, 20, '‘A Taste of Asia’', '34', '2021-11-01 11:37:51', NULL, NULL),
(48, 34, 2, 20, '‘A Taste of Shropshire’', '34', '2021-11-01 11:38:11', NULL, NULL),
(49, 34, 2, 21, 'Beer Battered Fish & Chips', '34', '2021-11-01 11:38:40', NULL, NULL),
(50, 34, 2, 21, 'Shropshire Ham', '34', '2021-11-01 11:38:58', NULL, NULL),
(51, 34, 2, 21, 'Pie of The Day', '34', '2021-11-01 11:39:20', NULL, NULL),
(52, 34, 2, 21, 'Mytton Burger', '34', '2021-11-01 11:39:49', NULL, NULL),
(53, 34, 2, 21, 'Wild Mushroom Risotto (small)', '34', '2021-11-01 11:40:14', '34', '2021-11-01 13:33:18'),
(54, 34, 2, 22, 'The Mytton Club Sandwich', '34', '2021-11-01 11:40:42', NULL, NULL),
(55, 34, 2, 22, 'Mature Cheddar & Heathers Harvest Carrot Pickle Sandwich', '34', '2021-11-01 11:41:06', NULL, NULL),
(56, 34, 2, 22, 'Fish Finger Sandwich', '34', '2021-11-01 11:41:32', NULL, NULL),
(57, 34, 2, 22, 'The Waldorf Sarnie', '34', '2021-11-01 11:41:53', NULL, NULL),
(58, 34, 2, 22, 'Shropshire Minute Steak & Cheese Sandwich', '34', '2021-11-01 11:42:20', NULL, NULL),
(59, 34, 2, 23, 'Miso Sesame Buttered Roast Salmon', '34', '2021-11-01 13:05:24', NULL, NULL),
(60, 34, 2, 23, 'Caesar Salad,', '34', '2021-11-01 13:05:42', NULL, NULL),
(61, 34, 2, 23, 'Greek Salad', '34', '2021-11-01 13:06:24', NULL, NULL),
(62, 34, 2, 23, 'Vietnamese ‘Street Bun’ Bowl', '34', '2021-11-01 13:06:56', NULL, NULL),
(63, 34, 2, 24, '8oz dry aged Shropshire Sirloin', '34', '2021-11-01 13:07:38', NULL, NULL),
(64, 34, 2, 24, '8oz dry aged Shropshire Rib Eye', '34', '2021-11-01 13:08:00', NULL, NULL),
(65, 34, 2, 26, '‘Rhubarb & Lemon Posset’', '34', '2021-11-01 13:08:47', NULL, NULL),
(66, 34, 2, 26, '‘The Green Apple Cheesecake Pot’', '34', '2021-11-01 13:09:04', NULL, NULL),
(67, 34, 2, 26, '‘Sticky Toffee Pudding’', '34', '2021-11-01 13:09:25', NULL, NULL),
(68, 34, 2, 26, 'Luker Chocolate Journey Tasting Plate', '34', '2021-11-01 13:09:54', NULL, NULL),
(69, 34, 2, 26, '‘The Mytton Mess’', '34', '2021-11-01 13:10:21', NULL, NULL),
(70, 34, 2, 26, '\'Vegan Dessert of The Day’', '34', '2021-11-01 13:10:47', NULL, NULL),
(71, 34, 2, 26, 'Selection of Traditional & Vegan Ice Creams', '34', '2021-11-01 13:11:21', NULL, NULL),
(72, 34, 2, 27, '‘The Cheese Board’', '34', '2021-11-01 13:11:43', NULL, NULL),
(73, 34, 2, 21, 'Wild Mushroom Risotto (large)', '34', '2021-11-01 13:33:52', NULL, NULL),
(74, 38, 1, 33, 'Denver Omlet', '38', '2021-11-02 16:47:01', NULL, NULL),
(75, 38, 1, 34, 'scrambled', '38', '2021-11-02 16:47:28', NULL, NULL),
(76, 38, 1, 35, 'Mixed Fruit', '38', '2021-11-02 16:47:38', NULL, NULL),
(77, 44, 1, 39, 'Oats & Milk with seasonal fruit', '44', '2021-11-22 11:04:47', NULL, NULL),
(78, 44, 1, 39, 'Fruit Loops', '44', '2021-11-22 11:05:03', NULL, NULL),
(79, 44, 2, 41, 'Cottage Pie', '44', '2021-11-22 11:05:30', NULL, NULL),
(80, 44, 2, 41, 'Steak and Kidney Pudding', '44', '2021-11-22 11:05:47', NULL, NULL),
(81, 44, 2, 42, 'Toad in the Hole', '44', '2021-11-22 11:06:16', NULL, NULL),
(82, 48, 1, 43, 'Spicy Sausage', '48', '2021-11-26 06:17:45', NULL, NULL),
(83, 48, 1, 43, 'Smoky scrambled eggs', '48', '2021-11-26 06:18:09', '48', '2021-11-26 08:32:50'),
(84, 48, 1, 44, 'Oats Porridge', '48', '2021-11-26 06:18:56', '48', '2021-11-26 06:22:41'),
(85, 48, 1, 44, 'Oats Tart', '48', '2021-11-26 06:19:07', '48', '2021-11-26 06:22:50'),
(86, 48, 2, 45, 'Lamb Shawarma', '48', '2021-11-26 06:19:19', NULL, NULL),
(87, 48, 2, 45, 'Lamb Curry', '48', '2021-11-26 06:20:40', NULL, NULL),
(88, 48, 2, 46, 'Goan Fish Curry', '48', '2021-11-26 06:20:56', NULL, NULL),
(89, 48, 2, 46, 'Seafood Delights', '48', '2021-11-26 06:21:21', NULL, NULL),
(90, 48, 8, 51, ' Sugar Snap Pea and Carrot Soba Noodles', '48', '2021-11-26 09:35:32', NULL, NULL),
(91, 48, 8, 51, 'Kale, Black Bean and Avocado Burrito Bowl', '48', '2021-11-26 09:36:05', NULL, NULL),
(92, 48, 8, 52, 'Creamy (vegan!) Butternut Squash Linguine with Fried Sage', '48', '2021-11-26 09:36:28', NULL, NULL),
(93, 48, 8, 52, ' Favorite Veggie Burgers', '48', '2021-11-26 09:37:11', NULL, NULL),
(94, 48, 9, 53, ' Vegetable Paella', '48', '2021-11-26 09:37:26', NULL, NULL),
(95, 48, 9, 54, ' Mujadara (Lentils and Rice with Caramelized Onions)', '48', '2021-11-26 09:37:44', NULL, NULL),
(96, 44, 6, 55, 'Fish(Haddock or Cod)', '44', '2021-11-29 07:06:32', NULL, NULL),
(97, 44, 6, 55, 'Scollops', '44', '2021-11-29 07:06:49', NULL, NULL),
(98, 44, 6, 56, 'Chicken Linguine Pasta', '44', '2021-11-29 07:08:40', NULL, NULL),
(99, 44, 6, 56, 'Spaghetti', '44', '2021-11-29 07:08:55', NULL, NULL),
(100, 44, 7, 57, 'Black Bean Burger Patty', '44', '2021-11-29 07:12:28', NULL, NULL),
(101, 44, 7, 57, 'Black Bean Burger with extra spice', '44', '2021-11-29 07:15:38', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `md_item_description`
--

CREATE TABLE `md_item_description` (
  `id` int(11) NOT NULL,
  `restaurant_id` bigint(22) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_price` float(10,2) NOT NULL DEFAULT 0.00,
  `item_desc` text NOT NULL,
  `item_note` text NOT NULL,
  `note_color` varchar(50) DEFAULT NULL,
  `note_back_color` varchar(100) DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `created_dt` datetime DEFAULT NULL,
  `modified_by` varchar(50) DEFAULT NULL,
  `modified_dt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `md_item_description`
--

INSERT INTO `md_item_description` (`id`, `restaurant_id`, `menu_id`, `section_id`, `item_id`, `item_price`, `item_desc`, `item_note`, `note_color`, `note_back_color`, `created_by`, `created_dt`, `modified_by`, `modified_dt`) VALUES
(1, 3, 1, 1, 1, 10.00, 'Eggs poached/fried, spicy sausage (Sucuk) Halloumi, cheddar, olives,\n', '', NULL, NULL, '3', '2021-10-07 10:07:02', NULL, NULL),
(2, 3, 1, 1, 2, 20.00, 'Finnan haddie is a Scottish delicacy of cold smoked, flavored \nhaddock. The fish is often roasted or grilled over high heat', '', NULL, NULL, '3', '2021-10-07 10:09:00', NULL, NULL),
(3, 3, 2, 3, 3, 50.00, 'Creamed potato, autumn vegetables, red wine sauce', '', NULL, NULL, '3', '2021-10-07 10:49:24', NULL, NULL),
(4, 5, 1, 4, 4, 15.00, 'Breakfast Treat', '', NULL, NULL, '5', '2021-10-08 12:00:40', NULL, NULL),
(5, 22, 1, 5, 5, 12.00, 'Choice of bacon or chorizo with scrambled eggs, potatoes & cheese, wrapped in a flour tortilla.\n\n', 'Served with breakfast potatoes or fresh fruit', NULL, NULL, '22', '2021-10-13 06:37:51', NULL, NULL),
(6, 22, 1, 5, 6, 12.00, 'Cold smoked salmon, tomato, cucumber, avocado, capers, red onion & cream cheese', '', NULL, NULL, '22', '2021-10-13 06:39:11', NULL, NULL),
(7, 22, 1, 5, 7, 13.50, 'Two artichoke crowns, sauteed spinach, poached eggs & hollandaise.', 'Served with potatoes or fruit and toast or english muffin.', NULL, NULL, '22', '2021-10-13 06:39:39', NULL, NULL),
(8, 22, 1, 6, 8, 11.00, 'With Ham, Bacon or Sausage', '', NULL, NULL, '22', '2021-10-13 06:40:03', NULL, NULL),
(9, 22, 1, 6, 9, 33.00, 'USDA Choice Ribeye Steak with two eggs any style', '', NULL, NULL, '22', '2021-10-13 06:40:43', NULL, NULL),
(10, 26, 1, 7, 16, 40.00, 'Eggs poached/fried, spicy sausage (Sucuk) Halloumi, cheddar, olives,cue, tom, honey or jam or marmalade', '', NULL, NULL, '26', '2021-10-19 07:45:57', '26', '2021-11-12 12:37:51'),
(11, 26, 1, 7, 17, 20.50, 'Finnan haddie is a Scottish delicacy of cold smoked, flavored \nhaddock. The fish is often roasted or grilled over high heat', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500', NULL, NULL, '26', '2021-10-19 07:49:06', NULL, NULL),
(12, 26, 1, 7, 18, 30.00, 'Considered to be the ultimate breakfast food, Ulster fry is \nNorthern Ireland\'s favorite dish consisting of sausages, streaky bacon, eggs and tomatoes', '', NULL, NULL, '26', '2021-10-19 07:49:42', NULL, NULL),
(13, 26, 1, 8, 19, 20.00, 'Eggy bread is the British version of French toast. \nAlso known as Poor Knights of Windsor, the dish is usually prepared with a combination of crustle', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500', NULL, NULL, '26', '2021-10-19 07:50:24', NULL, NULL),
(14, 26, 1, 8, 20, 25.80, 'Eggs, Bacon, Sausages, Fried Slice, Beans or Tin Tomatoes', '', NULL, NULL, '26', '2021-10-19 07:50:44', NULL, NULL),
(15, 26, 4, 11, 21, 15.00, 'Egg, Mushrooms, Bubble, 2 Special Veggie Sausage', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500', NULL, NULL, '26', '2021-10-19 07:51:14', NULL, NULL),
(16, 26, 2, 9, 22, 10.00, 'Mango & passion fruit', '', NULL, NULL, '26', '2021-10-19 07:51:48', NULL, NULL),
(17, 26, 2, 9, 23, 20.50, 'Buttered cabbage & truffle purée', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500', NULL, NULL, '26', '2021-10-19 07:52:33', NULL, NULL),
(18, 26, 2, 10, 24, 45.00, 'Celeriac, apple, curry  & Sauternes sauce\n', '', NULL, NULL, '26', '2021-10-19 07:53:04', NULL, NULL),
(19, 26, 2, 10, 25, 50.00, 'Creamed potato, autumn vegetables, red wine sauce', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500', NULL, NULL, '26', '2021-10-19 07:53:29', NULL, NULL),
(22, 26, 4, 11, 26, 20.00, 'Yogurt sorbet, mango & ginger', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500', NULL, NULL, '26', '2021-10-19 07:55:49', NULL, NULL),
(23, 26, 4, 11, 27, 25.00, 'Amarena cherry, crème fraiche mousse', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500', NULL, NULL, '26', '2021-10-19 07:56:14', NULL, NULL),
(24, 26, 3, 12, 28, 95.69, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500', NULL, NULL, '26', '2021-10-19 07:56:43', '26', '2021-10-19 07:57:14'),
(25, 26, 3, 12, 29, 67.00, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500', NULL, NULL, '26', '2021-10-19 07:57:02', NULL, NULL),
(26, 26, 3, 12, 30, 167.00, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500', NULL, NULL, '26', '2021-10-19 07:57:39', NULL, NULL),
(27, 28, 1, 13, 32, 55.00, 'It is a concoction of fruits and milk', 'In Stock', NULL, NULL, '28', '2021-10-21 08:08:17', NULL, NULL),
(28, 30, 1, 15, 33, 66.00, 'Test Description for breakfast oats and milk', 'In Stock', NULL, NULL, '30', '2021-10-21 11:09:16', NULL, NULL),
(29, 30, 2, 16, 34, 55.00, 'Test Description for lunch and fried rice', 'Out of stock', NULL, NULL, '30', '2021-10-21 11:09:40', NULL, NULL),
(30, 3, 2, 17, 35, 15.00, 'No good for your figure but essential for your happiness', '', NULL, NULL, '3', '2021-10-28 14:11:27', NULL, NULL),
(38, 34, 2, 18, 37, 8.00, 'with Korean BBQ Ketchup, sesame, scallions', '', NULL, NULL, '34', '2021-11-01 13:14:08', NULL, NULL),
(39, 34, 2, 18, 38, 6.00, 'with Korean BBQ Ketchup, sesame, scallions (vegan)', '', NULL, NULL, '34', '2021-11-01 13:15:20', NULL, NULL),
(40, 34, 2, 18, 36, 3.50, '(vegan)', '', NULL, NULL, '34', '2021-11-01 13:16:00', NULL, NULL),
(41, 34, 2, 18, 39, 8.00, 'Mr Wolf ’s spiced bean salad, radicchio', '', NULL, NULL, '34', '2021-11-01 13:16:47', NULL, NULL),
(42, 34, 2, 18, 40, 8.00, 'crispy oyster mushroom, vegan sheeze, hot sauce, pumpkin seeds (vegan)', '', NULL, NULL, '34', '2021-11-01 13:18:40', NULL, NULL),
(43, 34, 2, 19, 41, 6.00, 'croutes, crusty bread (vegetarian)', '', NULL, NULL, '34', '2021-11-01 13:21:53', NULL, NULL),
(44, 34, 2, 19, 42, 7.00, 'Heathers Harvest carrot chutney, artisan toast', '', NULL, NULL, '34', '2021-11-01 13:22:15', NULL, NULL),
(45, 34, 2, 19, 43, 9.00, 'smoked salmon, crayfish & crab, lemon & lobster mayo, gem hearts, caviar, buttered granary bread', '', NULL, NULL, '34', '2021-11-01 13:23:09', NULL, NULL),
(46, 34, 2, 19, 44, 6.50, 'sage aioli, lemon', '', NULL, NULL, '34', '2021-11-01 13:23:41', NULL, NULL),
(47, 34, 2, 19, 45, 6.50, 'dukkah hummus, ful medames, olives, pomegranate molasses, warm pitta', '', NULL, NULL, '34', '2021-11-01 13:24:11', NULL, NULL),
(48, 34, 2, 20, 46, 19.00, ' dukkah hummus, ful madames, crispy halloumi, marinated olives, crispy falafels, \nwarm pittas  (vegetarian) (can be made vegan)', '', NULL, NULL, '34', '2021-11-01 13:25:03', NULL, NULL),
(49, 34, 2, 20, 47, 24.00, 'half crispy duckling with hoisin, scallions, cucumber & pancakes, chicken satay skewers with bang bang sauce, firecracker noodle salad, prawn cracker', '', NULL, NULL, '34', '2021-11-01 13:25:39', NULL, NULL),
(50, 34, 2, 20, 48, 22.00, 'Moydens cheeses, pork pie, cured meats, terrine of the day, pickles, olives, breads', '', NULL, NULL, '34', '2021-11-01 13:26:14', NULL, NULL),
(51, 34, 2, 21, 49, 14.00, 'minted mushy peas, tartare sauce', '', NULL, NULL, '34', '2021-11-01 13:26:47', NULL, NULL),
(52, 34, 2, 21, 50, 14.00, 'Hollowdene hens eggs, chips', '', NULL, NULL, '34', '2021-11-01 13:27:26', NULL, NULL),
(53, 34, 2, 21, 51, 14.50, 'acorn buttered vegetables, chips', '', NULL, NULL, '34', '2021-11-01 13:28:01', NULL, NULL),
(54, 34, 2, 21, 52, 14.50, 'Moydens Wrekin blue, tomato, pickle, Korean ketchup, toasted brioche, chips ', '', NULL, NULL, '34', '2021-11-01 13:28:41', NULL, NULL),
(55, 34, 2, 21, 53, 9.00, 'summer greens, pumpkin seeds  (vegan)', '', NULL, NULL, '34', '2021-11-01 13:29:28', '34', '2021-11-01 13:35:13'),
(57, 34, 2, 21, 73, 14.00, 'summer greens, pumpkin seeds (vegan)', '', NULL, NULL, '34', '2021-11-01 13:34:56', NULL, NULL),
(58, 34, 2, 22, 54, 9.00, 'succulent chicken, smoked bacon, Caesar mayo, gem, beef tomato, toasted artisan \nbread, Kuhn pickle', '', NULL, NULL, '34', '2021-11-01 13:36:01', NULL, NULL),
(59, 34, 2, 22, 55, 6.50, 'Delicious', '', NULL, NULL, '34', '2021-11-01 13:36:52', NULL, NULL),
(60, 34, 2, 22, 56, 8.50, 'tartare, gem, beef tomato', '', NULL, NULL, '34', '2021-11-01 13:37:22', NULL, NULL),
(61, 34, 2, 22, 57, 8.00, 'crisp apple, grapes, celery & toasted walnut, garden herb vegan mayo (vegan)', '', NULL, NULL, '34', '2021-11-01 13:38:11', NULL, NULL),
(62, 34, 2, 22, 58, 10.00, 'Moydens Wrekin white, gem, beef tomato, horseradish mayo, red onions', '', NULL, NULL, '34', '2021-11-01 13:40:36', NULL, NULL),
(63, 34, 2, 23, 59, 15.50, 'firecracker rice noodles, cucumber, scallions, miso roasted cashews ', '', NULL, NULL, '34', '2021-11-01 13:41:17', NULL, NULL),
(66, 34, 2, 23, 60, 13.50, 'chicken & smoked bacon, gem leaves, croutons, caesar dressing, anchovies, parmesan', '', NULL, NULL, '34', '2021-11-01 13:44:46', NULL, NULL),
(67, 34, 2, 23, 61, 12.50, 'sun-dried tomatoes, cucumber, red onion, marinated olives, barrel aged feta, gem, oregano & marjoram dressing', '', NULL, NULL, '34', '2021-11-01 13:45:23', NULL, NULL),
(68, 34, 2, 23, 62, 11.50, 'tempura avocado, hot firecracker rice noodles with beansprouts, carrot pickle, nam \nprik dressing, cucumber & scallions Bao bun, hot sauce', '', NULL, NULL, '34', '2021-11-01 13:46:05', NULL, NULL),
(69, 34, 2, 24, 63, 22.75, 'delicious', '', NULL, NULL, '34', '2021-11-01 13:47:23', NULL, NULL),
(70, 34, 2, 24, 64, 22.75, 'Delicious', '', NULL, NULL, '34', '2021-11-01 13:47:51', NULL, NULL),
(72, 34, 2, 26, 65, 7.00, 'biscoff, popping candy ', '', NULL, NULL, '34', '2021-11-01 14:18:09', NULL, NULL),
(73, 34, 2, 26, 66, 6.00, 'crumble crumbs, baby apples', '', NULL, NULL, '34', '2021-11-01 14:18:42', NULL, NULL),
(74, 34, 2, 26, 67, 6.00, 'butterscotch sauce, pouring cream or Madagascan vanilla bean ice cream ', '', NULL, NULL, '34', '2021-11-01 14:19:24', NULL, NULL),
(75, 34, 2, 26, 68, 8.00, 'please ask your server for details', '', NULL, NULL, '34', '2021-11-01 14:19:56', NULL, NULL),
(76, 34, 2, 26, 69, 7.00, 'meringue, chantilly, berries, cherry syrup', '', NULL, NULL, '34', '2021-11-01 14:20:25', NULL, NULL),
(77, 34, 2, 26, 70, 7.00, 'please ask your server for details', '', NULL, NULL, '34', '2021-11-01 14:21:05', NULL, NULL),
(78, 34, 2, 26, 71, 5.00, 'please ask your server for details (vegan)', '', NULL, NULL, '34', '2021-11-01 14:22:12', NULL, NULL),
(79, 34, 2, 27, 72, 9.00, 'please ask your server for details selection of crackers, celery, grapes, Heathers Harvest carrot chutney', '', NULL, NULL, '34', '2021-11-01 14:22:32', NULL, NULL),
(80, 38, 1, 33, 74, 8.00, 'Ham, cheese, tomatoes, onions.', 'Sells out fast!', NULL, NULL, '38', '2021-11-02 16:49:02', NULL, NULL),
(81, 38, 1, 35, 76, 2.00, 'Oranges, melon, apple, strawberry.', 'Seasonal fruit.', NULL, NULL, '38', '2021-11-02 16:49:57', NULL, NULL),
(82, 44, 1, 39, 77, 15.28, 'Hearty soups and stews are equally popular. And then, of course, a traditional fish supper is hard to beat. Cod or haddock in crispy.', 'In Stock', '#fafafa', '#3f28e6', '44', '2021-11-22 11:06:47', '44', '2021-12-03 10:47:00'),
(83, 44, 1, 39, 78, 23.00, 'Hearty soups and stews are equally popular. And then, of course, a traditional fish supper is hard to beat. Cod or haddock in crispy,', '', NULL, NULL, '44', '2021-11-22 11:07:07', NULL, NULL),
(84, 44, 2, 41, 79, 12.00, 'And liberally sprinkled with salt (and malt vinegar for the real traditionalists). Even better, when eaten outside, straight from the wrapper. ', '', NULL, NULL, '44', '2021-11-22 11:07:42', NULL, NULL),
(85, 44, 2, 42, 81, 34.00, 'As you can see, there\'s much more to English food than just roast beef and Yorkshire puddings. ', 'Out of stock', NULL, NULL, '44', '2021-11-22 11:08:51', NULL, NULL),
(86, 48, 1, 43, 82, 10.00, 'Spicy sausage with extra peri-peri', 'Out of Stock', '#ff0505', NULL, '48', '2021-11-26 06:23:53', '48', '2021-11-26 07:13:54'),
(87, 48, 1, 43, 83, 33.18, 'Scrambled eggs and black pepper', 'IN STOCK', '#2fff05', NULL, '48', '2021-11-26 06:24:39', '48', '2021-11-26 07:14:10'),
(88, 48, 1, 44, 84, 10.25, 'Small-5\nLarge-11', 'Our recommendation', '#f1481e', NULL, '48', '2021-11-26 06:25:34', '48', '2021-11-26 07:14:32'),
(89, 48, 1, 44, 85, 12.00, 'Oats tart now comes with different flavours-Chocolate, Strawberry and Lemon', 'OUT OF STOCK', '#ff3300', NULL, '48', '2021-11-26 06:26:24', '48', '2021-11-26 07:14:50'),
(90, 48, 2, 45, 86, 55.00, 'Lamb Shawarma with Flour wrap', 'IN STOCK', '#54ff0a', NULL, '48', '2021-11-26 06:28:51', '48', '2021-11-26 07:15:07'),
(91, 48, 2, 45, 87, 10.25, 'Lamb Curry is now extra spicy', '', '#ffffff', NULL, '48', '2021-11-26 06:29:13', '48', '2021-11-26 07:15:23'),
(92, 48, 2, 46, 88, 8.00, 'Experience authentic Goan cuisine', '', '#000000', NULL, '48', '2021-11-26 06:29:56', '48', '2021-11-26 07:15:31'),
(93, 48, 2, 46, 89, 10.25, 'Seafood comes in the likes of crabs, fishes, octopus and squids', 'In Stock', '#09f60d', NULL, '48', '2021-11-26 06:30:23', '48', '2021-11-26 07:15:47'),
(94, 48, 8, 51, 90, 13.00, 'Gluten Free', '', '#ffffff', NULL, '48', '2021-11-26 09:38:17', NULL, NULL),
(95, 48, 8, 51, 91, 33.25, 'With Gluten', 'In Stock', '#ffffff', NULL, '48', '2021-11-26 09:38:46', NULL, NULL),
(96, 48, 8, 52, 92, 22.00, 'Gluten Free', 'OUT OF STOCK', '#b61616', NULL, '48', '2021-11-26 09:39:13', NULL, NULL),
(97, 48, 8, 52, 93, 10.00, 'New spicy burgers', '', '#b61616', NULL, '48', '2021-11-26 09:39:38', NULL, NULL),
(98, 48, 9, 53, 94, 10.00, 'Delicious Veggies', '', '#b61616', NULL, '48', '2021-11-26 09:39:58', NULL, NULL),
(99, 48, 9, 54, 95, 25.20, 'Mujadara is back', '', '#b61616', NULL, '48', '2021-11-26 09:40:37', NULL, NULL),
(100, 44, 6, 55, 96, 3.80, 'Battered', 'In Stock', '#50ff05', NULL, '44', '2021-11-29 07:07:19', NULL, NULL),
(101, 44, 6, 55, 97, 0.45, 'Battered', 'OUT OF STOCK', '#ff0537', NULL, '44', '2021-11-29 07:07:52', NULL, NULL),
(102, 44, 6, 56, 98, 60.00, 'Authentic Chicken Linguine Pasta', '', '#ff0537', NULL, '44', '2021-11-29 07:09:19', NULL, NULL),
(103, 44, 6, 56, 99, 38.00, 'Authentic Spaghetti', 'OFF THE MENU', '#ff0033', NULL, '44', '2021-11-29 07:09:41', NULL, NULL),
(104, 44, 7, 57, 100, 30.00, 'Authentic Bean Burger Patty', '', '#ffffff', NULL, '44', '2021-11-29 07:17:19', NULL, NULL),
(105, 44, 7, 57, 101, 3.90, 'With extra sauce and peri-peri', '', '#ffffff', NULL, '44', '2021-11-29 07:18:02', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `md_menu`
--

CREATE TABLE `md_menu` (
  `id` int(11) NOT NULL,
  `menu_description` text NOT NULL,
  `info` text DEFAULT NULL,
  `restaurant_id` bigint(22) NOT NULL DEFAULT 0,
  `created_by` varchar(50) DEFAULT NULL,
  `created_dt` datetime DEFAULT NULL,
  `modified_by` varchar(50) DEFAULT NULL,
  `modified_dt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `md_menu`
--

INSERT INTO `md_menu` (`id`, `menu_description`, `info`, `restaurant_id`, `created_by`, `created_dt`, `modified_by`, `modified_dt`) VALUES
(1, 'Breakfast', 'This is a demo instruction for breakfast menu. Once you choose them, you can enter the details and the admin will approve it.', 0, NULL, NULL, 'admin@gmail.com', '2021-11-26 04:45:41'),
(2, 'Lunch', 'This is a demo instruction for lunch menu. Once you choose them, you can enter the details and the admin will approve it.', 0, NULL, NULL, 'admin@gmail.com', '2021-11-26 04:45:50'),
(3, 'Dinner', 'This is a demo instruction for dinner menu. Once you choose them, you can enter the details and the admin will approve it.', 0, NULL, NULL, 'admin@gmail.com', '2021-11-26 04:46:03'),
(4, 'Brunch', 'This is a demo instruction for brunch menu. Once you choose them, you can enter the details and the admin will approve it.', 0, NULL, NULL, 'admin@gmail.com', '2021-11-26 04:46:13'),
(5, 'Special', 'This is a demo instruction for special menu. Once you choose them, you can enter the details and the admin will approve it.', 0, NULL, NULL, 'admin@gmail.com', '2021-11-26 04:46:22'),
(6, 'Kids', NULL, 44, '44', '2021-11-22 12:46:44', NULL, NULL),
(7, 'Vegan', NULL, 44, '44', '2021-11-22 12:46:49', NULL, NULL),
(8, 'Vegan', NULL, 48, '48', '2021-11-26 09:20:24', NULL, NULL),
(9, 'Desserts', NULL, 48, '48', '2021-11-26 09:20:30', NULL, NULL),
(14, 'Test', NULL, 44, '44', '2021-11-29 10:33:07', NULL, NULL),
(20, 'Drinks', NULL, 51, '51', '2021-12-03 20:34:53', NULL, NULL),
(21, 'Vegan', NULL, 51, '51', '2021-12-03 20:35:36', NULL, NULL),
(22, 'Desserts', NULL, 51, '51', '2021-12-03 20:35:47', NULL, NULL),
(23, 'Sunday Lunch', NULL, 51, '51', '2021-12-03 20:36:41', NULL, NULL),
(24, 'Kids', NULL, 51, '51', '2021-12-03 20:37:07', NULL, NULL),
(25, 'Slimming', NULL, 51, '51', '2021-12-03 20:37:36', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `md_package_custom`
--

CREATE TABLE `md_package_custom` (
  `id` int(11) NOT NULL,
  `restaurant_id` int(11) NOT NULL,
  `pakage_name` varchar(50) NOT NULL,
  `no_of_menu` int(11) NOT NULL DEFAULT 0,
  `special_menu` enum('Y','N') NOT NULL DEFAULT 'Y',
  `setup_fee` float(10,2) NOT NULL DEFAULT 0.00,
  `monthly_fee` float(10,2) NOT NULL DEFAULT 0.00,
  `created_by` varchar(50) DEFAULT NULL,
  `created_dt` datetime DEFAULT NULL,
  `modified_by` varchar(50) DEFAULT NULL,
  `modified_dt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `md_package_custom`
--

INSERT INTO `md_package_custom` (`id`, `restaurant_id`, `pakage_name`, `no_of_menu`, `special_menu`, `setup_fee`, `monthly_fee`, `created_by`, `created_dt`, `modified_by`, `modified_dt`) VALUES
(1, 1, 'Custom', 3, 'Y', 15.00, 20.00, 'admin@gmail.com', '2021-12-24 12:02:22', 'admin@gmail.com', '2021-12-24 12:12:34');

-- --------------------------------------------------------

--
-- Table structure for table `md_parm_value`
--

CREATE TABLE `md_parm_value` (
  `id` int(11) NOT NULL,
  `param_desc` varchar(100) NOT NULL,
  `param_value` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `md_parm_value`
--

INSERT INTO `md_parm_value` (`id`, `param_desc`, `param_value`) VALUES
(1, 'Project Name', 'Shop Local Laguna'),
(2, 'Email Name', 'Cindy Ferguson');

-- --------------------------------------------------------

--
-- Table structure for table `md_promotion_admin`
--

CREATE TABLE `md_promotion_admin` (
  `id` bigint(22) NOT NULL,
  `intro` text DEFAULT NULL,
  `confirm_email` text DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `pop_up_offer_title` varchar(100) DEFAULT NULL,
  `pop_up_offer_body` text DEFAULT NULL,
  `questions1` text DEFAULT NULL,
  `questions2` text DEFAULT NULL,
  `questions3` text DEFAULT NULL,
  `mailing_email_subject` varchar(100) DEFAULT NULL,
  `mailing_email_body` text DEFAULT NULL,
  `privacy` text DEFAULT NULL,
  `authorization` text DEFAULT NULL,
  `back_color` text DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_by` varchar(50) DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `md_promotion_admin`
--

INSERT INTO `md_promotion_admin` (`id`, `intro`, `confirm_email`, `image`, `pop_up_offer_title`, `pop_up_offer_body`, `questions1`, `questions2`, `questions3`, `mailing_email_subject`, `mailing_email_body`, `privacy`, `authorization`, `back_color`, `created_by`, `created_at`, `modified_by`, `modified_at`) VALUES
(1, 'We would love to make your next Birthday/Anniversary extra special.', 'We would like to thank you for registering on our Birthday/Anniversary Offer program and will contact you again a couple of weeks before the date/s you have provided. Please show this email to our staff who will make sure you receive your FREE Beverage. Many thanks and enjoy your meal.', 'birthday.jpg', 'Free Drinks', 'Register now and get a free drinks with your meal. Show the code you receive by text to our waiter', 'What hobbies/interests do you have? ', 'What is your favorit sport?', 'Where is your favorit vacation destination?', 'A [Happy Birthday] PRESENT from [The Cliff Restaur', 'Hello [name from promotion registration]!\n			\nWe are SO HAPPY to hear, it is almost your [Birthday]!\n\nWe would like to invite you to JOIN US on your [Birthday], and receive a SPECIAL SURPRISE!\n\nSimply make a reservation, then show the waiter/waitress this email when you are first seated.\n\nSee you soon!\n[Restaurant\'s Contact Name]\n\n[Name of Restaurant]\n[Address]\n[Phone]\n[Email]\n[URL to MENU LANDING PAGE] (ie. https://www.shoplocallaguna.com/restaurants/the-cliff/LandingPage.php)\n			\nSAVE THIS INF', '    This Privacy Policy describes how Wiley collects and uses the personal information you provide to Wiley. It also describes the choices available to you regarding our use of your personal information ', '    Personal information will not be kept longer than is necessary for the purpose.', '#e68484', 'admin@gmail.com', '2021-10-27 06:37:26', 'admin@gmail.com', '2021-11-29 11:19:08');

-- --------------------------------------------------------

--
-- Table structure for table `md_promotion_restaurant`
--

CREATE TABLE `md_promotion_restaurant` (
  `id` bigint(22) NOT NULL,
  `restaurant_id` bigint(22) NOT NULL,
  `intro` text DEFAULT NULL,
  `confirm_email` text DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `pop_up_offer_title` varchar(100) DEFAULT NULL,
  `pop_up_offer_body` text DEFAULT NULL,
  `questions1` text DEFAULT NULL,
  `questions2` text DEFAULT NULL,
  `questions3` text DEFAULT NULL,
  `mailing_email_subject` varchar(100) DEFAULT NULL,
  `mailing_email_body` text DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL,
  `month_day` int(11) DEFAULT NULL,
  `status_id` enum('0','1') NOT NULL DEFAULT '1' COMMENT '0: enable; 1: disable',
  `created_by` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_by` varchar(50) DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `md_promotion_restaurant`
--

INSERT INTO `md_promotion_restaurant` (`id`, `restaurant_id`, `intro`, `confirm_email`, `image`, `pop_up_offer_title`, `pop_up_offer_body`, `questions1`, `questions2`, `questions3`, `mailing_email_subject`, `mailing_email_body`, `menu_id`, `month_day`, `status_id`, `created_by`, `created_at`, `modified_by`, `modified_at`) VALUES
(1, 26, 'We would love to make your next Birthday/Anniversary extra special.', 'We would like to thank you for registering on our Birthday/Anniversary Offer program and will contact you again a couple of weeks before the date/s you have provided. Please show this email to our staff who will make sure you receive your FREE Beverage. Many thanks and enjoy your meal.', 'birthday.jpg', 'Free Drinks', 'Register now and get a free drinks with your meal. Show the code you receive by text to our waiter', '', 'What is your favorit city?', 'Where is your favorit vacation destination?', 'A [Birthday/Anniversary]! PRESENT from [Name of Restaurant]!', 'Hello [User Name]!\r\n \r\nWe are SO HAPPY to hear, it is almost your [Birthday/Anniversary]!\r\n\r\nWe would like to invite you to JOIN US on your [Birthday/Anniversary]!, and receive a SPECIAL SURPRISE!\r\n\r\nSimply make a reservation, then show the waiter/waitress this email when you are first seated.\r\n\r\nSee you soon!\r\n[Restaurant\'s Contact Name]!\r\n\r\n[Name of Restaurant]!\r\n[Address]!\r\n[Phone]!\r\n[Email]!\r\n[Menu Url]! (ie. https://www.shoplocallaguna.com/restaurants/the-cliff/LandingPage.php)\r\n \r\nSAVE THIS INF', 0, 1, '0', '26', '2021-10-27 06:49:24', '26', '2021-11-05 10:54:59'),
(2, 44, 'We would love to make your next Birthday/Anniversary extra special.', 'We would like to thank you for registering on our Birthday/Anniversary Offer program and will contact you again a couple of weeks before the date/s you have provided. Please show this email to our staff who will make sure you receive your FREE Beverage. Many thanks and enjoy your meal.', 'birthday.jpg', 'Free Drinks', 'Register now and get a free drinks with your meal. Show the code you receive by text to our waiter', 'What hobbies/interests do you have? ', 'What is your favorit sport?', 'Where is your favorit vacation destination?', 'A [Happy Birthday] PRESENT from [The Cliff Restaur', 'Hello [name from promotion registration]!\n			\nWe are SO HAPPY to hear, it is almost your [Birthday]!\n\nWe would like to invite you to JOIN US on your [Birthday], and receive a SPECIAL SURPRISE!\n\nSimply make a reservation, then show the waiter/waitress this email when you are first seated.\n\nSee you soon!\n[Restaurant\'s Contact Name]\n\n[Name of Restaurant]\n[Address]\n[Phone]\n[Email]\n[URL to MENU LANDING PAGE] (ie. https://www.shoplocallaguna.com/restaurants/the-cliff/LandingPage.php)\n			\nSAVE THIS INF', 0, 1, '0', '44', '2021-11-22 11:37:13', '44', '2021-11-22 11:45:59'),
(3, 48, 'We would love to make your next Birthday/Anniversary extra special.', 'We would like to thank you for registering on our Birthday/Anniversary Offer program and will contact you again a couple of weeks before the date/s you have provided. Please show this email to our staff who will make sure you receive your FREE Beverage. Many thanks and enjoy your meal.', 'birthday.jpg', 'Free Drinks', 'Register now and get a free drinks with your meal. Show the code you receive by text to our waiter', 'What hobbies/interests do you have? ', 'What is your favorit sport?', 'Where is your favorit vacation destination?', 'A [Happy Birthday] PRESENT from [The Cliff Restaur', 'Hello [name from promotion registration]!\n			\nWe are SO HAPPY to hear, it is almost your [Birthday]!\n\nWe would like to invite you to JOIN US on your [Birthday], and receive a SPECIAL SURPRISE!\n\nSimply make a reservation, then show the waiter/waitress this email when you are first seated.\n\nSee you soon!\n[Restaurant\'s Contact Name]\n\n[Name of Restaurant]\n[Address]\n[Phone]\n[Email]\n[URL to MENU LANDING PAGE] (ie. https://www.shoplocallaguna.com/restaurants/the-cliff/LandingPage.php)\n			\nSAVE THIS INF', 0, 1, '0', '48', '2021-11-26 09:14:12', '48', '2021-11-26 09:16:18');

-- --------------------------------------------------------

--
-- Table structure for table `md_promo_calander`
--

CREATE TABLE `md_promo_calander` (
  `id` int(11) NOT NULL,
  `free_flag` enum('Y','N') NOT NULL,
  `price` float(10,2) NOT NULL DEFAULT 0.00,
  `created_by` varchar(50) DEFAULT NULL,
  `created_dt` datetime DEFAULT NULL,
  `modified_by` varchar(50) DEFAULT NULL,
  `modified_dt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `md_promo_calander`
--

INSERT INTO `md_promo_calander` (`id`, `free_flag`, `price`, `created_by`, `created_dt`, `modified_by`, `modified_dt`) VALUES
(4, 'Y', 0.00, 'admin@gmail.com', '2021-09-28 06:07:17', 'admin@gmail.com', '2021-12-24 12:38:53'),
(5, 'Y', 0.00, 'admin@gmail.com', '2021-09-28 06:07:18', 'admin@gmail.com', '2021-10-13 05:36:19');

-- --------------------------------------------------------

--
-- Table structure for table `md_section`
--

CREATE TABLE `md_section` (
  `id` int(11) NOT NULL,
  `restaurant_id` bigint(22) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `section_name` varchar(100) NOT NULL,
  `section_img` text DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `created_dt` datetime DEFAULT NULL,
  `modified_by` varchar(50) DEFAULT NULL,
  `modified_dt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `md_section`
--

INSERT INTO `md_section` (`id`, `restaurant_id`, `menu_id`, `section_name`, `section_img`, `created_by`, `created_dt`, `modified_by`, `modified_dt`) VALUES
(1, 3, 1, 'Egg Soldiers', '3_1_sectionEgg_Soldiers_breakfast_section_1.jpg', '3', '2021-10-07 10:04:28', NULL, NULL),
(2, 3, 1, 'Special Breakfast', '3_1_sectionSpecial_Breakfast_Breakfast_section_2.jpg', '3', '2021-10-07 10:05:17', NULL, NULL),
(3, 3, 2, 'Main Courses', '3_2_sectionMain_Courses_lunch_cover_img.jpg', '3', '2021-10-07 10:48:45', NULL, NULL),
(4, 5, 1, 'BREAKFAST BURRITO', '5_1_sectionBREAKFAST_BURRITO_download (3).jpeg', '5', '2021-10-08 11:59:25', '5', '2021-10-18 11:51:27'),
(5, 22, 1, 'HOUSE SPECIALTIES', '22_1_sectionHOUSE_SPECIALTIES_Breakfast_section_2.jpg', '22', '2021-10-13 06:35:00', NULL, NULL),
(6, 22, 1, 'TRADITIONAL BREAKFASTS', '22_1_sectionTRADITIONAL_BREAKFASTS_breakfast_section_1.jpg', '22', '2021-10-13 06:35:34', NULL, NULL),
(7, 26, 1, 'Special Breakfast', '26_1_sectionSpecial_Breakfast_breakfast_section_1.jpg', '26', '2021-10-19 07:22:48', NULL, NULL),
(8, 26, 1, 'Egg Soldiers', '26_1_sectionEgg_Soldiers_Breakfast_section_2.jpg', '26', '2021-10-19 07:23:23', NULL, NULL),
(9, 26, 2, 'Starter', '26_2_sectionStarter_lunch_cover_img.jpg', '26', '2021-10-19 07:24:44', '26', '2021-10-22 10:01:12'),
(10, 26, 2, 'Main Courses', '26_2_sectionMain_Courses_main_section.jpeg', '26', '2021-10-19 07:25:50', NULL, NULL),
(11, 26, 4, 'Desserts', '26_4_sectionDesserts_dessert_section.jpg', '26', '2021-10-19 07:28:24', NULL, NULL),
(12, 26, 3, 'Wines', '26_3_sectionWines_wine_section.jpg', '26', '2021-10-19 07:29:56', NULL, NULL),
(13, 28, 1, 'BREAKFAST BURRITO', '28_1_sectionBREAKFAST_BURRITO_download (3).jpeg', '28', '2021-10-21 08:07:27', NULL, NULL),
(14, 28, 1, 'BREAKFAST BURRITO', '28_1_sectionBREAKFAST_BURRITO_download (3).jpeg', '28', '2021-10-21 08:07:29', NULL, NULL),
(15, 30, 1, 'BREAKFAST BURRITO', '30_1_sectionBREAKFAST_BURRITO_download (1).jpeg', '30', '2021-10-21 11:08:01', NULL, NULL),
(16, 30, 2, 'Fried Rice', '30_2_sectionFried_Rice_download (3).jpeg', '30', '2021-10-21 11:08:24', NULL, NULL),
(17, 3, 2, 'Deserts', '3_2_sectionDeserts_dinner-4.jpg', '3', '2021-10-28 14:07:05', NULL, NULL),
(18, 34, 2, 'WHILE YOU WAIT', '34_2_sectionWHILE_YOU WAIT_undefined', '34', '2021-11-01 11:17:54', NULL, NULL),
(19, 34, 2, 'APPETISERS', '34_2_sectionAPPETISERS_undefined', '34', '2021-11-01 11:18:20', NULL, NULL),
(20, 34, 2, 'SHARERS', '34_2_sectionSHARERS_undefined', '34', '2021-11-01 11:18:38', NULL, NULL),
(21, 34, 2, 'MYTTON CLASSICS', '34_2_sectionMYTTON_CLASSICS_undefined', '34', '2021-11-01 11:18:58', NULL, NULL),
(22, 34, 2, 'SANDWICHES', '34_2_sectionSANDWICHES_undefined', '34', '2021-11-01 11:19:14', NULL, NULL),
(23, 34, 2, 'HEALTHY & LIGHT', '34_2_sectionHEALTHY_& LIGHT_undefined', '34', '2021-11-01 11:19:38', NULL, NULL),
(24, 34, 2, 'FROM THE CHARGRILL ', '34_2_sectionFROM_THE CHARGRILL _undefined', '34', '2021-11-01 11:19:56', NULL, NULL),
(25, 34, 2, 'SIDES - all 3.50 • 3 sides for 9', '34_2_sectionSIDES_- all 3.50 • 3 sides for 9_undefined', '34', '2021-11-01 11:20:17', NULL, NULL),
(26, 34, 2, 'DESSERTS', '34_2_sectionDESSERTS_undefined', '34', '2021-11-01 11:20:38', NULL, NULL),
(27, 34, 2, 'CHEESE ', '34_2_sectionCHEESE__undefined', '34', '2021-11-01 11:20:59', NULL, NULL),
(28, 34, 3, 'TO SHARE', '34_3_sectionTO_SHARE_food-3.jpg', '34', '2021-11-01 21:58:13', NULL, NULL),
(29, 34, 3, 'BOWLS', '34_3_sectionBOWLS_undefined', '34', '2021-11-01 22:07:11', NULL, NULL),
(30, 34, 3, 'SANDWICHES', '34_3_sectionSANDWICHES_undefined', '34', '2021-11-01 22:07:46', NULL, NULL),
(31, 34, 3, 'CLASSICS', '34_3_sectionCLASSICS_undefined', '34', '2021-11-01 22:08:13', NULL, NULL),
(32, 34, 3, 'SUNDAY ROAST', '34_3_sectionSUNDAY_ROAST_undefined', '34', '2021-11-01 22:09:20', NULL, NULL),
(33, 38, 1, 'Omlets', '38_1_sectionOmlets_renner 24 lg.jpg', '38', '2021-11-02 16:35:24', NULL, NULL),
(34, 38, 1, 'Eggs', '38_1_sectionEggs_renner 16.jpg', '38', '2021-11-02 16:36:17', NULL, NULL),
(35, 38, 1, 'Fruit', '38_1_sectionFruit_bigstock--129199307(1).jpg', '38', '2021-11-02 16:39:16', NULL, NULL),
(36, 38, 3, 'Appetizers', '38_3_sectionAppetizers_bigstock-Backyard-Waterfall-5306120.jpg', '38', '2021-11-02 16:40:45', NULL, NULL),
(37, 38, 3, 'Entre', '38_3_sectionEntre_bigstock--128973329.jpg', '38', '2021-11-02 16:42:05', NULL, NULL),
(38, 5, 2, 'Lunch', '5_2_sectionLunch_breakfast_3.jpg', '5', '2021-11-15 08:30:05', NULL, NULL),
(39, 44, 1, 'Breakfast BURRITO', '44_1_sectionBreakfast_BURRITO_breakfast-burrito.jpg', '44', '2021-11-22 11:01:30', '44', '2021-12-03 11:32:04'),
(40, 44, 1, 'Ulster Fry', '44_1_sectionUlster_Fry_download (3).jpeg', '44', '2021-11-22 11:03:15', NULL, NULL),
(41, 44, 2, 'Lancashire Hotpot.', '44_2_sectionLancashire_Hotpot._Bean-Salad-Recipe-2-1200-1200x800.jpg', '44', '2021-11-22 11:04:11', NULL, NULL),
(42, 44, 2, 'Bangers and Mash', '44_2_sectionBangers_and Mash_ab0d7c52-438b-4d8a-bcba-7d5eb18ee892.jpg', '44', '2021-11-22 11:04:37', NULL, NULL),
(43, 48, 1, 'Breakfast Burritos', '', '48', '2021-11-26 06:04:55', '48', '2021-11-26 08:31:32'),
(44, 48, 1, 'Oats & Milk with seasonal fruits', '48_1_sectionOats_& Milk with seasonal fruits_download (1).jpeg', '48', '2021-11-26 06:05:56', '48', '2021-11-26 06:14:49'),
(45, 48, 2, 'Lamb Dishes', '48_2_sectionLamb_Dishes_Roasted-Rack-of-Lamb-recipe-1-800x800.jpg', '48', '2021-11-26 06:08:58', NULL, NULL),
(46, 48, 2, 'Seafood Dishes', '48_2_sectionSeafood_Dishes_seafood_tung_fong.jpeg', '48', '2021-11-26 06:16:40', NULL, NULL),
(51, 48, 8, 'Vegan Mac and Cheese', '48_8_sectionVegan_Mac and Cheese_vegan.jpeg', '48', '2021-11-26 09:31:53', NULL, NULL),
(52, 48, 8, 'Butternut Squash Linguine ', '48_8_sectionButternut_Squash Linguine _ab0d7c52-438b-4d8a-bcba-7d5eb18ee892.jpg', '48', '2021-11-26 09:33:18', NULL, NULL),
(53, 48, 9, 'Muffins', '48_9_sectionMuffins_muffin_cover.jpg', '48', '2021-11-26 09:34:24', NULL, NULL),
(54, 48, 9, 'Ice cream', '48_9_sectionIce_cream_60b14a3bbee0fc0019d5a5d6.jpeg', '48', '2021-11-26 09:34:47', NULL, NULL),
(55, 44, 6, 'Fish and Chips', '44_6_sectionFish_and Chips_fish and chips.jpg', '44', '2021-11-29 07:01:37', NULL, NULL),
(56, 44, 6, 'Linguine Pasta', '44_6_sectionLinguine_Pasta_Linguini-garlic-prawns-848x477.jpg', '44', '2021-11-29 07:03:12', NULL, NULL),
(57, 44, 7, 'Black Bean Burger Melt', '44_7_sectionBlack_Bean Burger Melt_blackbean.jpg', '44', '2021-11-29 07:05:23', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `md_special_category`
--

CREATE TABLE `md_special_category` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `md_special_category`
--

INSERT INTO `md_special_category` (`id`, `name`) VALUES
(1, 'New year\'s Day'),
(2, 'Martin Luther King Day'),
(3, 'Valentine\'s Day'),
(4, 'President\'s Day'),
(5, 'St.Patrick\'s Day'),
(6, 'April Fool\'s Day'),
(7, 'Good Friday'),
(8, 'Easter'),
(9, 'Mother\'s Day'),
(10, 'Father\'s Day'),
(11, 'Memorial Day'),
(12, 'Independence Day'),
(13, 'Labor Day'),
(14, 'Columbus Day'),
(15, 'Daughter\'s Day'),
(16, 'Friendship Day'),
(17, 'Halloween'),
(18, 'Veterans Day'),
(19, 'Thanksgiving Day'),
(20, 'Christmas'),
(21, 'Friday Specials'),
(22, 'Taco Tuesday Specials'),
(23, 'Grand Feast'),
(24, 'Birthday'),
(25, 'Anniversary');

-- --------------------------------------------------------

--
-- Table structure for table `md_time_zone`
--

CREATE TABLE `md_time_zone` (
  `id` int(11) NOT NULL,
  `time_zone` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `md_time_zone`
--

INSERT INTO `md_time_zone` (`id`, `time_zone`, `name`) VALUES
(1, '(GMT-12:00) International Date Line West', 'Etc/GMT+12'),
(2, '(GMT-11:00) Midway Island, Samoa', 'Pacific/Midway'),
(3, '(GMT-07:00) Arizona', 'US/Arizona'),
(4, '(GMT-06:00) Central America', 'America/Managua'),
(5, '(GMT-10:00) Hawaii', 'Pacific/Honolulu'),
(6, '(GMT-08:00) Tijuana, Baja California', 'America/Tijuana'),
(7, '(GMT-08:00) Pacific Time (US & Canada)', 'America/Los_Angeles'),
(8, '(GMT-07:00) Mountain Time (US & Canada)', 'US/Mountain'),
(9, '(GMT-09:00) Alaska', 'US/Alaska'),
(10, '(GMT-07:00) Chihuahua, La Paz, Mazatlan', 'America/Chihuahua'),
(11, '(GMT-06:00) Central Time (US & Canada)', 'US/Central'),
(12, '(GMT-06:00) Guadalajara, Mexico City, Monterrey', 'America/Mexico_City'),
(13, '(GMT-05:00) Indiana (East)', 'US/East-Indiana'),
(14, '(GMT-06:00) Saskatchewan', 'Canada/Saskatchewan'),
(15, '(GMT-05:00) Bogota, Lima, Quito, Rio Branco', 'America/Bogota'),
(16, '(GMT-05:00) Eastern Time (US & Canada)', 'US/Eastern'),
(17, '(GMT-04:00) Manaus', 'America/Manaus'),
(18, '(GMT-04:00) Santiago', 'America/Santiago'),
(19, '(GMT-03:30) Newfoundland', 'Canada/Newfoundland'),
(20, '(GMT-04:00) Atlantic Time (Canada)', 'Canada/Atlantic'),
(21, '(GMT-04:00) Caracas, La Paz', 'America/Caracas'),
(22, '(GMT-03:00) Greenland', 'America/Godthab'),
(23, '(GMT-03:00) Montevideo', 'America/Montevideo'),
(24, '(GMT-03:00) Brasilia', 'America/Sao_Paulo'),
(25, '(GMT-03:00) Buenos Aires, Georgetown', 'America/Argentina/Buenos_Aires'),
(26, '(GMT-02:00) Mid-Atlantic', 'America/Noronha'),
(27, '(GMT-01:00) Cape Verde Is.', 'Atlantic/Cape_Verde'),
(28, '(GMT+00:00) Casablanca, Monrovia, Reykjavik', 'Africa/Casablanca'),
(29, '(GMT+00:00) Greenwich Mean Time : Dublin, Edinburgh, Lisbon, London', 'Etc/Greenwich'),
(30, '(GMT-01:00) Azores', 'Atlantic/Azores'),
(31, '(GMT+01:00) Amsterdam, Berlin, Bern, Rome, Stockholm, Vienna', 'Europe/Amsterdam'),
(32, '(GMT+01:00) Brussels, Copenhagen, Madrid, Paris', 'Europe/Brussels'),
(33, '(GMT+01:00) Sarajevo, Skopje, Warsaw, Zagreb', 'Europe/Sarajevo'),
(34, '(GMT+01:00) Belgrade, Bratislava, Budapest, Ljubljana, Prague', 'Europe/Belgrade'),
(35, '(GMT+01:00) West Central Africa', 'Africa/Lagos'),
(36, '(GMT+02:00) Amman', 'Asia/Amman'),
(37, '(GMT+02:00) Athens, Bucharest, Istanbul', 'Europe/Athens'),
(38, '(GMT+02:00) Cairo', 'Africa/Cairo'),
(39, '(GMT+02:00) Harare, Pretoria', 'Africa/Harare'),
(40, '(GMT+02:00) Helsinki, Kyiv, Riga, Sofia, Tallinn, Vilnius', 'Europe/Helsinki'),
(41, '(GMT+02:00) Beirut', 'Asia/Beirut'),
(42, '(GMT+02:00) Jerusalem', 'Asia/Jerusalem'),
(43, '(GMT+02:00) Minsk', 'Europe/Minsk'),
(44, '(GMT+02:00) Windhoek', 'Africa/Windhoek'),
(45, '(GMT+03:00) Kuwait, Riyadh, Baghdad', 'Asia/Kuwait'),
(46, '(GMT+03:00) Moscow, St. Petersburg, Volgograd', 'Europe/Moscow'),
(47, '(GMT+03:00) Tbilisi', 'Asia/Tbilisi'),
(48, '(GMT+04:00) Abu Dhabi, Muscat', 'Asia/Muscat'),
(49, '(GMT+04:00) Baku', 'Asia/Baku'),
(50, '(GMT+03:00) Nairobi', 'Africa/Nairobi'),
(51, '(GMT+03:30) Tehran', 'Asia/Tehran'),
(52, '(GMT+04:30) Kabul', 'Asia/Kabul'),
(53, '(GMT+05:00) Yekaterinburg', 'Asia/Yekaterinburg'),
(54, '(GMT+05:00) Islamabad, Karachi, Tashkent', 'Asia/Karachi'),
(55, '(GMT+04:00) Yerevan', 'Asia/Yerevan'),
(56, '(GMT+05:30) Chennai, Kolkata, Mumbai, New Delhi', 'Asia/Calcutta'),
(57, '(GMT+05:30) Sri Jayawardenapura', 'Asia/Calcutta'),
(58, '(GMT+06:00) Almaty, Novosibirsk', 'Asia/Almaty'),
(59, '(GMT+06:00) Astana, Dhaka', 'Asia/Dhaka'),
(60, '(GMT+06:30) Yangon (Rangoon)', 'Asia/Rangoon'),
(61, '(GMT+05:45) Kathmandu', 'Asia/Katmandu'),
(62, '(GMT+07:00) Krasnoyarsk', 'Asia/Krasnoyarsk'),
(63, '(GMT+08:00) Kuala Lumpur, Singapore', 'Asia/Kuala_Lumpur'),
(64, '(GMT+07:00) Bangkok, Hanoi, Jakarta', 'Asia/Bangkok'),
(65, '(GMT+08:00) Beijing, Chongqing, Hong Kong, Urumqi', 'Asia/Hong_Kong'),
(66, '(GMT+08:00) Irkutsk, Ulaan Bataar', 'Asia/Irkutsk'),
(67, '(GMT+08:00) Perth', 'Australia/Perth'),
(68, '(GMT+09:00) Osaka, Sapporo, Tokyo', 'Asia/Tokyo'),
(69, '(GMT+09:00) Seoul', 'Asia/Seoul'),
(70, '(GMT+09:00) Yakutsk', 'Asia/Yakutsk'),
(71, '(GMT+08:00) Taipei', 'Asia/Taipei'),
(72, '(GMT+10:00) Brisbane', 'Australia/Brisbane'),
(73, '(GMT+09:30) Darwin', 'Australia/Darwin'),
(74, '(GMT+09:30) Adelaide', 'Australia/Adelaide'),
(75, '(GMT+10:00) Hobart', 'Australia/Hobart'),
(76, '(GMT+10:00) Canberra, Melbourne, Sydney', 'Australia/Canberra'),
(77, '(GMT+10:00) Guam, Port Moresby', 'Pacific/Guam'),
(78, '(GMT+12:00) Fiji, Kamchatka, Marshall Is.', 'Pacific/Fiji'),
(79, '(GMT+10:00) Vladivostok', 'Asia/Vladivostok'),
(80, '(GMT+11:00) Magadan, Solomon Is., New Caledonia', 'Asia/Magadan'),
(81, '(GMT+12:00) Auckland, Wellington', 'Pacific/Auckland'),
(82, '(GMT+13:00) Nuku\'alofa', 'Pacific/Tongatapu');

-- --------------------------------------------------------

--
-- Table structure for table `md_url`
--

CREATE TABLE `md_url` (
  `id` int(11) NOT NULL,
  `restaurant_id` bigint(22) NOT NULL,
  `url` text DEFAULT NULL,
  `bitly_url` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `dynamic_img` varchar(100) DEFAULT NULL,
  `v_card_img` varchar(100) DEFAULT NULL,
  `fun_directory_img` varchar(100) DEFAULT NULL,
  `approval_flag` enum('U','A','S') NOT NULL DEFAULT 'U',
  `approved_by` varchar(50) DEFAULT NULL,
  `approved_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `md_url`
--

INSERT INTO `md_url` (`id`, `restaurant_id`, `url`, `bitly_url`, `image`, `dynamic_img`, `v_card_img`, `fun_directory_img`, `approval_flag`, `approved_by`, `approved_date`) VALUES
(1, 1, 'https://shoplocal-lagunabeach.com/#/menu/ddsd/TWk5dFpXVjBkR0Z1UUdkdFlXbHNMbU52YlE9PQ==', NULL, NULL, NULL, NULL, NULL, 'U', NULL, NULL),
(2, 3, 'https://shoplocal-lagunabeach.com/#/menu/The_Water Side Inn/Mw==', NULL, '3_qr.png', NULL, NULL, NULL, 'S', NULL, NULL),
(3, 4, 'https://shoplocal-lagunabeach.com/#/menu/ddff/TkM5dmNHVnVkR1ZqYURSMVFHZHRZV2xzTG1OdmJRPT0=', NULL, NULL, NULL, NULL, NULL, 'U', NULL, NULL),
(4, 5, 'https://shoplocal-lagunabeach.com/#/menu/abcd_res/NQ==', NULL, '5_qr.png', NULL, NULL, NULL, 'S', NULL, NULL),
(5, 6, 'https://shoplocal-lagunabeach.com/#/menu/The_River Side Inn/Tmk5dFpXVjBkR0Z1S3pGQVoyMWhhV3d1WTI5dA==', NULL, NULL, NULL, NULL, NULL, 'U', NULL, NULL),
(6, 7, 'https://shoplocal-lagunabeach.com/#/menu/The_River Side Dine Inn/Tnk5dFpXVjBkR0Z1S3pKQVoyMWhhV3d1WTI5dA==', NULL, NULL, NULL, NULL, NULL, 'U', NULL, NULL),
(7, 8, 'https://shoplocal-lagunabeach.com/#/menu/The_Road Side Dhaba/T0M5dFpXVjBkR0Z1S3pOQVoyMWhhV3d1WTI5dA==', NULL, NULL, NULL, NULL, NULL, 'U', NULL, NULL),
(8, 9, 'https://shoplocal-lagunabeach.com/#/menu/hill/T1M5b2FXbHNiR3hBWjIxaGFXd3VZMjl0', NULL, NULL, NULL, NULL, NULL, 'U', NULL, NULL),
(9, 10, 'https://shoplocal-lagunabeach.com/#/menu/Test_Res/TVRBdmRHVnpkRUJuYldGcGJDNWpiMjA9', NULL, NULL, NULL, NULL, NULL, 'U', NULL, NULL),
(10, 11, 'https://shoplocal-lagunabeach.com/#/menu/Test/TVRFdmRHVnpkREV5UUdkdFlXbHNMbU52YlE9PQ==', NULL, NULL, NULL, NULL, NULL, 'U', NULL, NULL),
(11, 12, 'https://shoplocal-lagunabeach.com/#/menu/asdsad/TVRJdmMzVnRZVzQ1T0RjMk5UVkFaMjFoYVd3dVkyOXQ=', NULL, NULL, NULL, NULL, NULL, 'U', NULL, NULL),
(12, 13, 'https://shoplocal-lagunabeach.com/#/menu/The_Cliff_Resort_&_Residences_Mui_Ne_-_Luxury_Living/MTM=', NULL, '13_qr.png', NULL, NULL, NULL, 'S', NULL, NULL),
(13, 15, 'https://shoplocal-lagunabeach.com/#/menu/sss/TVRVdmMzVnRZVzV0YVhSeVlUQXdPVFlyT0VCbmJXRnBiQzVqYjIwPQ==', NULL, NULL, NULL, NULL, NULL, 'U', NULL, NULL),
(14, 16, 'https://shoplocal-lagunabeach.com/#/menu/sss/TVRZdmMzVnRZVzV0YVhSeVlUQXdPVFlyT1VCbmJXRnBiQzVqYjIwPQ==', NULL, NULL, NULL, NULL, NULL, 'S', NULL, NULL),
(15, 17, 'https://shoplocal-lagunabeach.com/#/menu/THe_Hill Restaurant/TVRjdmMzVnRZVzV0YVhSeVlUQXdPVFlyTVRGQVoyMWhhV3d1WTI5dA==', NULL, NULL, NULL, NULL, NULL, 'U', NULL, NULL),
(16, 18, 'https://shoplocal-lagunabeach.com/#/menu/ssss/TVRndmMzVnRZVzV0YVhSeVlUQXdPVFlyTVRKQVoyMWhhV3d1WTI5dA==', NULL, NULL, NULL, NULL, NULL, 'U', NULL, NULL),
(17, 19, 'https://shoplocal-lagunabeach.com/#/menu/sss/TVRrdmMzVnRZVzV0YVhSeVlUQXdPVFlyTVROQVoyMWhhV3d1WTI5dA==', NULL, NULL, NULL, NULL, NULL, 'S', NULL, NULL),
(18, 22, 'https://shoplocal-lagunabeach.com/#/menu/The_Cliff/MjI=', NULL, '22_qr.png', NULL, NULL, NULL, 'S', '22', '2021-10-13 07:33:43'),
(19, 23, 'https://shoplocal-lagunabeach.com/#/menu/The_Holiday Inn/TWpNdllYWnBjMmhsYTJodmJHbGtZWGxwYm01QVoyMWhhV3d1WTI5dA==', NULL, NULL, NULL, NULL, NULL, 'U', NULL, NULL),
(20, 24, 'https://shoplocal-lagunabeach.com/#/menu/The_Hill Restaurant/TWpRdmMzVnRZVzV0YVhSeVlUQXdPVFlyTVRoQVoyMWhhV3d1WTI5dA==', NULL, NULL, NULL, NULL, NULL, 'U', NULL, NULL),
(21, 25, 'https://shoplocal-lagunabeach.com/#/menu/Royal_Bengal Dhaba/TWpVdmMyRnRZVzUwWVhOMVltaGhiVGs0TURRck1VQm5iV0ZwYkM1amIyMD0=', NULL, NULL, NULL, NULL, NULL, 'S', NULL, NULL),
(22, 26, 'https://shoplocal-lagunabeach.com/#/menu/The_White_Brook/MjY=The_White_Brook/MjY=', NULL, '26_qr.png', NULL, NULL, NULL, 'S', '26', '2021-10-22 10:15:57'),
(23, 27, 'https://shoplocal-lagunabeach.com/#/menu/Test/TWpjdmMzVnRZVzV0YVhSeVlUQXdPVFlyTVRCQVoyMWhhV3d1WTI5dA==', NULL, NULL, NULL, NULL, NULL, 'U', NULL, NULL),
(24, 28, 'https://shoplocal-lagunabeach.com/#/menu/The_Country_House_Cafe/Mjg=', NULL, '28_qr.png', NULL, NULL, NULL, 'U', NULL, NULL),
(25, 29, 'https://shoplocal-lagunabeach.com/#/menu/Bijoligrill/TWprdmMyOXRibUYwYUM1MGFHRnJkWEl4TmlzeFFHZHRZV2xzTG1OdmJRPT0=', NULL, NULL, NULL, NULL, NULL, 'S', NULL, NULL),
(26, 30, 'https://shoplocal-lagunabeach.com/#/menu/8th_Day_Cafe_and_Bakery/MzA=', NULL, '30_qr.png', NULL, NULL, NULL, 'S', NULL, NULL),
(27, 31, 'https://shoplocal-lagunabeach.com/#/menu/Roastery_Coffee_House/MzE=', NULL, '31_qr.png', NULL, NULL, NULL, 'S', NULL, NULL),
(28, 32, 'https://shoplocal-lagunabeach.com/#/menu/Suvrajit_Banerjee/TXpJdllXRkFkM2N1YVc0PQ==', NULL, NULL, NULL, NULL, NULL, 'U', NULL, NULL),
(29, 34, 'https://shoplocal-lagunabeach.com/#/menu/UGM_Diner/MzQ=', 'https://bit.ly/3EAVaRM', '34_qr.png', '34_dynamic_qr.png', NULL, NULL, 'S', '34', '2021-12-10 09:22:30'),
(30, 36, 'https://shoplocal-lagunabeach.com/#/menu/Ranch_Test2/TXpZdlkybHVaSGxBYzJodmNHeHZZMkZzYkdGbmRXNWhMbU52YlE9PQ==', NULL, NULL, NULL, NULL, NULL, 'S', NULL, NULL),
(31, 37, 'https://shoplocal-lagunabeach.com/#/menu/RanchTest3/TXpjdlkybHVaSGxtUUhCc1lYbG5jbTkxYm1SemIyWjBhR1YzYjNKc1pDNWpiMjA9', NULL, NULL, NULL, NULL, NULL, 'S', NULL, NULL),
(32, 38, 'https://shoplocal-lagunabeach.com/#/menu/RanchTest4/Mzg=', NULL, '38_qr.png', NULL, NULL, NULL, 'S', NULL, NULL),
(33, 40, 'https://shoplocal-lagunabeach.com/#/menu/Dhaba/TkRBdmIzQmxiblJsWTJnMGRTc3lRR2R0WVdsc0xtTnZiUT09', NULL, NULL, NULL, NULL, NULL, 'U', NULL, NULL),
(34, 41, 'https://shoplocal-lagunabeach.com/#/menu/Kitchen/NDE=', NULL, '41_qr.png', NULL, NULL, NULL, 'S', NULL, NULL),
(35, 42, 'https://shoplocal-lagunabeach.com/#/menu/Happy_Jacks/TkRJdmRISjViWGxsYldGcGJFQm5iV0ZwYkM1amIyMD0=', NULL, NULL, NULL, NULL, NULL, 'S', NULL, NULL),
(36, 44, 'https://shoplocal-lagunabeach.com/#/menu/The_Dayroom_Cafe/NDQ=', 'https://bit.ly/3FXtdE2', '44_qr.png', '44_dynamic_qr.png', '44_v_card_qr.png', '44_fun_directory_qr.png', 'S', '44', '2021-11-23 05:19:05'),
(37, 47, 'https://shoplocal-lagunabeach.com/#/menu/Avishek_Basu/TkRjdmMyOXRibUYwYUM1MGFHRnJkWEl4Tmlzd01ERkFaMjFoYVd3dVkyOXQ=', NULL, NULL, NULL, NULL, NULL, 'U', NULL, NULL),
(38, 48, 'https://shoplocal-lagunabeach.com/#/menu/Tung_Fong/TkRndmMyOXRibUYwYUM1MGFHRnJkWElyT0RoQVoyMWhhV3d1WTI5dA==', 'https://bit.ly/3lccaX8', NULL, '48_dynamic_qr.png', '48_v_card_qr_qr-code (7).png', '48_fun_directory_qr_qr-code (7).png', 'A', '48', '2021-11-26 13:25:17'),
(39, 51, 'https://shoplocal-lagunabeach.com/#/menu/Billy\'s_Pizzas/TlRFdlluSnBZVzR1Wm05emRHVnlRSEpsYVdkelozSnZkWEF1WTI5dA==', NULL, NULL, NULL, NULL, NULL, 'S', NULL, NULL),
(40, 52, 'https://shoplocal-lagunabeach.com/#/menu/test15/TlRJdmRXZHZiR1p0WldScFlYVnJRR2R0WVdsc0xtTnZiUT09', NULL, NULL, NULL, NULL, NULL, 'S', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `td_about`
--

CREATE TABLE `td_about` (
  `id` int(11) NOT NULL,
  `restaurant_id` bigint(22) NOT NULL,
  `about_us` text NOT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `created_dt` datetime DEFAULT NULL,
  `modified_by` varchar(50) DEFAULT NULL,
  `modified_dt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `td_about`
--

INSERT INTO `td_about` (`id`, `restaurant_id`, `about_us`, `created_by`, `created_dt`, `modified_by`, `modified_dt`) VALUES
(1, 3, 'A unique riverside haven in a dreamy village setting, offering a luxurious stay, accessible fine dining and seamless hospitality.', '3', '2021-10-07 09:46:45', NULL, NULL),
(2, 1, 'abcd', '1', '2021-10-07 12:15:43', NULL, NULL),
(3, 5, 'abc', '5', '2021-10-08 12:12:30', NULL, NULL),
(4, 13, 'A unique riverside haven in a dreamy village setting, offering a luxurious stay, accessible fine dining and seamless hospitality.', '13', '2021-10-11 06:38:00', NULL, NULL),
(5, 18, 'sdascascascac', '18', '2021-10-11 15:57:06', NULL, NULL),
(6, 22, 'We serve breakfast, lunch and dinner seven days a week, excluding Thanksgiving and Christmas.Happy hour is from 3 p.m. to 6 p.m. Monday through Friday', '22', '2021-10-13 06:09:46', NULL, NULL),
(7, 26, 'A unique riverside haven in a dreamy village setting, offering a luxurious stay, accessible fine dining and seamless hospitality.', '26', '2021-10-19 07:07:53', NULL, NULL),
(8, 28, 'The country house cafe offers the best coffee in town and the desserts are one of a kind.', '28', '2021-10-21 08:03:47', NULL, NULL),
(9, 30, '8th Day Bakeryg g vy g gv gy yg ygbygyu ygygvtfcr6dctgbyg yufvygbu', '30', '2021-10-21 10:19:32', NULL, NULL),
(10, 31, 'Our cafe serves the best coffee in town.', '31', '2021-10-22 09:49:04', NULL, NULL),
(11, 34, 'A family owned coaching inn on the banks of the River Severn in Shrewsbury\n\nThis is a magnificent grade II listed building on the outskirts of town', '34', '2021-11-01 10:44:06', NULL, NULL),
(12, 38, 'We are 99 years old, down in laguna beach, california.', '38', '2021-11-01 22:57:39', '38', '2021-11-02 17:00:12'),
(13, 41, 'gsfdfsjjh\nsdflsdglk\nsafsdf\n', '41', '2021-11-09 09:10:07', NULL, NULL),
(14, 44, 'We are the dayroom cafe located near 221 B Baker street in England', '44', '2021-11-22 10:52:08', '44', '2021-11-23 07:48:19'),
(15, 48, 'Known For\nDine under the roof and feel like dining in China!\n', '48', '2021-11-26 05:53:31', '48', '2021-11-26 08:34:22');

-- --------------------------------------------------------

--
-- Table structure for table `td_calendar`
--

CREATE TABLE `td_calendar` (
  `id` bigint(22) NOT NULL,
  `restaurant_id` bigint(22) NOT NULL,
  `event_date` date NOT NULL,
  `event_name` varchar(100) NOT NULL,
  `event_time` time NOT NULL,
  `event_title` varchar(100) NOT NULL,
  `tkt_url` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `img_path` text DEFAULT NULL,
  `user_type` enum('R','A','U') NOT NULL DEFAULT 'R',
  `approval_flag` enum('Y','N') NOT NULL DEFAULT 'Y',
  `created_by` varchar(50) DEFAULT NULL,
  `created_dt` datetime DEFAULT NULL,
  `modified_by` varchar(50) DEFAULT NULL,
  `modified_dt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `td_calendar`
--

INSERT INTO `td_calendar` (`id`, `restaurant_id`, `event_date`, `event_name`, `event_time`, `event_title`, `tkt_url`, `description`, `img_path`, `user_type`, `approval_flag`, `created_by`, `created_dt`, `modified_by`, `modified_dt`) VALUES
(1, 26, '2021-11-19', 'test', '15:34:00', 'test', 'test.com', 'abc', '', 'A', 'Y', 'admin@gmail.com', '2021-11-12 09:04:34', NULL, NULL),
(2, 26, '2021-11-12', 'Taco friday', '17:32:00', '', 'http://shubham.com', '', '', 'U', 'N', 'samantasubham9804@gmail.com', '2021-11-12 12:03:30', NULL, NULL),
(3, 44, '2021-11-23', 'Take That in Concert', '18:00:00', 'Take That in concert', 'takethat.com', 'Take That are back with the magnificent trio and they will be singing their popular renditions tonight.', '44_calender_takethat.jpg', 'A', 'Y', 'admin@gmail.com', '2021-11-22 11:57:38', NULL, NULL),
(4, 44, '2021-11-24', 'Paul McCartney', '18:00:00', 'Paul McCarteney in concert', 'pmcart.com', 'Paul McCarteney, the ionic singer from Beatles will be mesmerizing the fines with his iconic voice.', '', 'A', 'Y', 'admin@gmail.com', '2021-11-22 11:59:20', 'admin@gmail.com', '2021-11-22 12:14:18'),
(5, 44, '2021-12-25', 'Christmas ', '17:00:00', '', 'christmas.com', '', '', 'U', 'N', 'somnath.thakur16@gmail.com', '2021-11-22 12:02:42', NULL, NULL),
(6, 44, '2021-12-01', 'Helsinki, Finland', '12:30:00', 'Helsinki', 'https://www.slush.org/events/helsinki/', 'World-s leading start-up event with 150+ speakers and 8,800 attendees, Slush 2021 brings together the most ambitious startups worldwide, connecting them with leading investors, industry executives, customers, media, academia, and future talent.', '44_calender_event.jpg', 'U', 'Y', 'samantasubham9804@gmail.com', '2021-11-22 12:04:47', 'admin@gmail.com', '2021-11-22 12:10:43'),
(7, 48, '2021-11-27', 'Beatles in action', '15:00:00', 'Beatles in action', 'http://www.thebeatles.com/', 'The legendary Paul McCartney comes back with amazing renditions of the band.', '48_calender_beatles.jpg', 'R', 'Y', 'admin@gmail.com', '2021-11-26 08:40:38', NULL, NULL),
(8, 48, '2021-12-27', 'Sonu Nigam Concert', '14:00:00', 'Sonu Nigam in concert', 'sonunigammusic.com', 'Sonu Nigam comes back to London with his iconic renditions', '48_calender_sonunigam.jpg', 'U', 'Y', 'somnath.thakur16@gmail.com', '2021-11-26 08:43:46', '48', '2021-11-26 08:46:35'),
(9, 48, '2021-11-26', 'Event name ', '14:14:00', '', 'event.com', '', '', 'U', 'N', 'somnatht000@gmail.com', '2021-11-26 08:44:24', NULL, NULL),
(10, 48, '2021-11-26', 'Hhjh', '15:18:00', '', 'yyyy', '', '', 'U', 'N', 'fccvvb', '2021-11-26 09:48:30', NULL, NULL),
(11, 44, '2021-11-30', 'Test Event 1', '17:55:00', 'Test Event 2', 'testcom.com', 'test desc', '', 'A', 'Y', 'admin@gmail.com', '2021-11-29 11:25:49', NULL, NULL),
(12, 44, '2021-11-30', 'test event 3', '17:55:00', 'test event 4', 'testcom.com', 'test desc', '', 'A', 'Y', 'admin@gmail.com', '2021-11-29 11:26:15', NULL, NULL),
(13, 44, '2021-11-30', 'test event 5', '17:56:00', 'test event 5', 'testcom.com', 'test desc', '', 'A', 'Y', 'admin@gmail.com', '2021-11-29 11:26:44', NULL, NULL),
(14, 44, '2021-11-30', 'test 6', '17:56:00', 'test6', 'testcom.com', 'test desc', '', 'A', 'Y', 'admin@gmail.com', '2021-11-29 11:27:04', NULL, NULL),
(15, 44, '2021-11-30', 'test 7', '17:57:00', 'test 7', 'testcom.com', 'test desc', '', 'A', 'Y', 'admin@gmail.com', '2021-11-29 11:27:25', NULL, NULL),
(16, 44, '2021-11-30', 'test 8', '17:57:00', 'test 8', 'test com.com', 'test desc', '', 'A', 'Y', 'admin@gmail.com', '2021-11-29 11:27:43', NULL, NULL),
(17, 44, '2021-11-16', 'Take That in concert', '18:08:00', '', 'ticket.url', '', '', 'U', 'N', 'somnath.thakur16@gmail.com', '2021-11-29 11:38:50', NULL, NULL),
(18, 44, '2021-11-30', 'event99', '18:46:00', 'event99', 'url', 'desc', '', 'A', 'Y', 'admin@gmail.com', '2021-11-29 12:16:31', NULL, NULL),
(19, 26, '2021-12-04', 'Test Event', '16:00:00', '', 'Event url', '', '', 'U', 'Y', 'abcd@gmail.com', '2021-11-30 09:32:26', 'admin@gmail.com', '2021-11-30 09:33:20'),
(20, 44, '2021-12-02', 'songs 1', '13:38:00', '', 'ticket url', '', '', 'U', 'N', 'abcd@gmail.com', '2021-12-02 07:08:52', NULL, NULL),
(21, 44, '2021-12-02', 'songs 1', '13:40:00', '', 'ticket url', '', '', 'U', 'N', 'abcd@gmail.com', '2021-12-02 07:10:17', NULL, NULL),
(22, 44, '2021-12-07', 'Event', '12:37:00', '', 'ktc.com', '', '', 'U', 'N', 'somnath.thakur16@gmail.com', '2021-12-07 07:07:46', NULL, NULL),
(23, 44, '2021-12-07', 'Event', '12:39:00', '', 'event.con', '', '', 'U', 'N', 'somnatht000@gmail.com', '2021-12-07 07:10:07', NULL, NULL),
(24, 44, '2021-12-07', 'Event', '12:43:00', '', 'event.com', '', '', 'U', 'N', 'abcd@gmail.com', '2021-12-07 07:13:16', NULL, NULL),
(25, 44, '2021-12-16', 'Michael Jackson at the Wembley', '12:15:00', 'Michael Jackson at the Wembley', 'https://en.wikipedia.org/wiki/Michael_Jackson', 'Michael Jackson will be doing his iconic renditions at the legendary stadiums.', '44_calender_mj.jpg', 'A', 'Y', 'admin@gmail.com', '2021-12-11 05:48:39', NULL, NULL),
(26, 44, '2021-12-16', 'Justin Timberlake at the MSG', '12:18:00', 'Justin Timberlake at the MSG', 'https://justintimberlake.com/', 'JT will be performing at the MSG after 8 years', '44_calender_jt.jpg', 'A', 'Y', 'admin@gmail.com', '2021-12-11 05:51:33', NULL, NULL),
(27, 44, '2021-12-16', 'Elton John in concert', '12:22:00', 'Elton John in Concert', 'https://www.eltonjohn.com/', 'Elton John, the legend will be performing in the UK', '44_calender_ej.jpeg', 'A', 'Y', 'admin@gmail.com', '2021-12-11 05:54:32', NULL, NULL),
(28, 44, '2021-12-16', 'The Graham Norton Show', '12:24:00', 'The Graham Norton Show', 'grahamnorton.com', 'Graham Norton is back with his gags', '44_calender_ej.jpeg', 'A', 'Y', 'admin@gmail.com', '2021-12-11 05:55:19', NULL, NULL),
(29, 44, '2021-11-13', 'Event', '16:18:00', '', 'event.com', '', '', 'U', 'N', 'somnath.thakur16@gmail.com', '2021-12-13 10:48:44', NULL, NULL),
(30, 44, '2021-12-30', 'Haappy birthday', '17:39:00', 'ssssss', 'google.com', 'loj iiiiiiiiiiiiiiiiiiiiiii', '44_calender_good-night-images-16.jpg', 'A', 'Y', 'admin@gmail.com', '2021-12-22 11:10:02', NULL, NULL),
(31, 44, '2021-12-31', 'Haappy birthday', '09:45:00', 'Birthday', 'google.com', 'Loj iiiiiiiiii....', '', 'A', 'Y', 'admin@gmail.com', '2021-12-22 13:12:50', 'admin@gmail.com', '2021-12-22 13:16:32'),
(32, 44, '2022-01-01', 'Haappy birthday', '11:50:00', '', 'figma.com', 'Loj iiiiiiiii....', '', 'A', 'Y', 'admin@gmail.com', '2021-12-22 13:17:07', NULL, NULL),
(33, 44, '2022-01-02', '', '09:58:00', '', 'google.com', 'LOJ IIIIIIIIII', '', 'A', 'Y', 'admin@gmail.com', '2021-12-22 13:25:56', NULL, NULL),
(34, 44, '2022-01-03', 'Haappy birthday', '09:00:00', '', 'google.com', 'TEST', '', 'A', 'Y', 'admin@gmail.com', '2021-12-22 13:27:26', NULL, NULL),
(35, 44, '2022-01-04', 'Haappy birthday', '10:02:00', '', 'google.com', 'LOJ IIIII', '', 'A', 'Y', 'admin@gmail.com', '2021-12-22 13:29:47', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `td_contacts_custom`
--

CREATE TABLE `td_contacts_custom` (
  `id` bigint(22) NOT NULL,
  `contact_date` datetime NOT NULL,
  `restaurant_name` varchar(150) NOT NULL,
  `contact_name` varchar(100) NOT NULL,
  `phone_no` varchar(50) NOT NULL,
  `email` varchar(70) NOT NULL,
  `addr_line1` text NOT NULL,
  `addr_line2` text DEFAULT NULL,
  `city` varchar(50) NOT NULL,
  `zip` varchar(20) NOT NULL,
  `country` varchar(50) NOT NULL,
  `time_zone` varchar(100) NOT NULL,
  `website` text DEFAULT NULL,
  `active_user` enum('Y','N') DEFAULT 'N',
  `proposal_status` enum('P','S','C') NOT NULL DEFAULT 'P' COMMENT 'P: pending; S:Send; C:confirmed ',
  `created_by` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_by` varchar(50) DEFAULT NULL,
  `modified_dt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `td_contacts_custom`
--

INSERT INTO `td_contacts_custom` (`id`, `contact_date`, `restaurant_name`, `contact_name`, `phone_no`, `email`, `addr_line1`, `addr_line2`, `city`, `zip`, `country`, `time_zone`, `website`, `active_user`, `proposal_status`, `created_by`, `created_at`, `modified_by`, `modified_dt`) VALUES
(1, '2021-12-23 19:04:19', 'Cafe Kathmandu', 'Rajiv Batra', '9835751294', 'somnath.thakur16@gmail.com', 'Lake Place', 'Southern Avenue', 'Kolkata', '700029', '2', 'Asia/Calcutta', 'kafekathmandu.com', 'N', 'P', 'somnath.thakur16@gmail.com', '2021-12-23 19:04:19', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `td_date_time_custom`
--

CREATE TABLE `td_date_time_custom` (
  `id` int(11) NOT NULL,
  `restaurant_id` bigint(22) NOT NULL,
  `venue_id` int(11) NOT NULL COMMENT 'td_venue_custom: id',
  `menu_id` int(11) NOT NULL COMMENT 'td_venue_menu_custom: id',
  `active_flag` enum('Y','N') NOT NULL DEFAULT 'N',
  `month_day` int(11) NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `created_dt` datetime DEFAULT NULL,
  `modified_by` varchar(50) DEFAULT NULL,
  `modified_dt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `td_date_time_custom`
--

INSERT INTO `td_date_time_custom` (`id`, `restaurant_id`, `venue_id`, `menu_id`, `active_flag`, `month_day`, `start_time`, `end_time`, `created_by`, `created_dt`, `modified_by`, `modified_dt`) VALUES
(1, 1, 1, 3, 'Y', 2, '13:57:00', '15:57:00', '1', '2022-01-18 13:38:34', '1', '2022-01-18 15:24:39'),
(2, 1, 1, 3, 'Y', 3, '13:57:00', '15:57:00', '1', '2022-01-18 13:38:34', '1', '2022-01-18 15:24:39'),
(3, 1, 1, 3, 'Y', 6, '13:57:00', '15:57:00', '1', '2022-01-18 13:38:34', '1', '2022-01-18 15:24:39'),
(4, 1, 1, 3, 'Y', 8, '13:57:00', '15:57:00', '1', '2022-01-18 13:38:34', '1', '2022-01-18 15:24:39'),
(5, 1, 1, 3, 'Y', 4, '13:57:00', '15:57:00', '1', '2022-01-18 13:38:34', '1', '2022-01-18 15:24:39'),
(6, 1, 1, 3, 'Y', 5, '13:57:00', '15:57:00', '1', '2022-01-18 13:38:34', '1', '2022-01-18 15:24:39'),
(7, 1, 1, 3, 'Y', 7, '13:57:00', '15:57:00', '1', '2022-01-18 13:38:34', '1', '2022-01-18 15:24:39');

-- --------------------------------------------------------

--
-- Table structure for table `td_logo`
--

CREATE TABLE `td_logo` (
  `id` int(11) NOT NULL,
  `restaurant_id` bigint(22) NOT NULL,
  `logo_url` text NOT NULL,
  `logo_path` text NOT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `created_dt` datetime DEFAULT NULL,
  `modified_by` varchar(50) DEFAULT NULL,
  `modified_dt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `td_logo`
--

INSERT INTO `td_logo` (`id`, `restaurant_id`, `logo_url`, `logo_path`, `created_by`, `created_dt`, `modified_by`, `modified_dt`) VALUES
(1, 3, 'https://www.waterside-inn.co.uk/gallery/', '3_logo_undefined', '3', '2021-10-07 09:39:21', NULL, NULL),
(2, 5, 'undefined', '5_logo_download (4).jpeg', '5', '2021-10-08 11:07:42', '5', '2021-10-08 11:33:54'),
(3, 13, 'https://www.thecliffresort.com.vn/facilities/gym/', '13_logo_undefined', '13', '2021-10-11 06:37:34', NULL, NULL),
(4, 22, 'https://www.thecliffresort.com.vn/facilities/gym/', '22_logo_undefined', '22', '2021-10-13 06:09:15', NULL, NULL),
(5, 25, '', '25_logo_undefined', '25', '2021-10-18 12:05:29', NULL, NULL),
(6, 26, '', '26_logo_whitebrook-logo-top.png', '26', '2021-10-19 07:07:25', '26', '2021-10-22 09:57:39'),
(7, 28, 'https://online.kfc.co.in/', '28_logo_undefined', '28', '2021-10-21 08:03:21', NULL, NULL),
(8, 30, 'https://online.kfc.co.in/', '30_logo_undefined', '30', '2021-10-21 10:19:13', NULL, NULL),
(9, 29, 'undefined', '29_logo_download (6).jpeg', '29', '2021-10-21 11:46:15', '29', '2021-10-21 11:46:58'),
(10, 31, '', '31_logo_whitebrook-logo-top.png', '31', '2021-10-22 09:48:40', NULL, NULL),
(11, 34, '', '34_logo_logo.png', '34', '2021-11-01 10:42:42', '34', '2021-12-10 08:45:31'),
(12, 38, '', '38_logo_bigstock-Castle-Of-Neuschwanstein-Near--89686214(1).jpg', '38', '2021-11-01 22:57:24', NULL, NULL),
(13, 41, '', '41_logo_IP.jpg', '41', '2021-11-09 09:09:58', NULL, NULL),
(14, 44, 'https://online.kfc.co.in/', '44_logo_kfc-india.png', '44', '2021-11-22 10:50:49', '44', '2021-12-03 11:14:17'),
(15, 48, 'https://www.zomato.com/kolkata/tung-fong-park-street-area/order', '48_logo_tung_fong_logo.png', '48', '2021-11-26 05:50:10', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `td_menu_image_custom`
--

CREATE TABLE `td_menu_image_custom` (
  `id` int(11) NOT NULL,
  `restaurant_id` bigint(22) NOT NULL,
  `venue_id` int(11) NOT NULL COMMENT 'td_venue_custom: id',
  `menu_id` int(11) NOT NULL COMMENT 'td_venue_menu_custom: id',
  `active_flag` enum('Y','N') NOT NULL DEFAULT 'N',
  `menu_url` text DEFAULT NULL,
  `menu_img` text DEFAULT NULL,
  `created_by` varchar(50) NOT NULL,
  `created_dt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `td_menu_image_custom`
--

INSERT INTO `td_menu_image_custom` (`id`, `restaurant_id`, `venue_id`, `menu_id`, `active_flag`, `menu_url`, `menu_img`, `created_by`, `created_dt`) VALUES
(1, 1, 1, 3, 'Y', '', NULL, '1', '2022-01-18 13:38:34'),
(2, 1, 1, 3, 'Y', '', '1_3_menu_Industry Leaders.pdf', '1', '2022-01-18 13:38:34');

-- --------------------------------------------------------

--
-- Table structure for table `td_menu_notice`
--

CREATE TABLE `td_menu_notice` (
  `id` int(11) NOT NULL,
  `restaurant_id` bigint(22) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `notice_flag` enum('Y','N') NOT NULL DEFAULT 'N',
  `position_id` int(11) NOT NULL,
  `header_title` varchar(200) NOT NULL,
  `font_color` varchar(50) NOT NULL,
  `back_color` varchar(50) NOT NULL,
  `notice_content` text NOT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `created_dt` datetime DEFAULT NULL,
  `modified_by` varchar(50) DEFAULT NULL,
  `modified_dt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `td_menu_notice`
--

INSERT INTO `td_menu_notice` (`id`, `restaurant_id`, `menu_id`, `notice_flag`, `position_id`, `header_title`, `font_color`, `back_color`, `notice_content`, `created_by`, `created_dt`, `modified_by`, `modified_dt`) VALUES
(1, 3, 1, 'Y', 2, 'Food allergy and intolerances', '#ffffff', '#ee1111', 'Please inform a member of the front of the house when placing your order', '3', '2021-10-07 09:50:09', NULL, NULL),
(2, 18, 5, 'Y', 2, 'xzc', '#d60000', '#ff0000', 'sadasdcascsac', '18', '2021-10-11 15:57:25', NULL, NULL),
(3, 18, 2, 'Y', 1, 'sadsadasdasda', '#0057fa', '#6cff0a', 'cxcsdcdsvdfvb', '18', '2021-10-11 15:57:51', NULL, NULL),
(4, 22, 1, 'Y', 2, 'Consumer Advisory:', '#000000', '#ffffff', 'Consumption of undercooked meat, poultry, eggs or seafood may increase the risk of foodborne illnesses. Alert your server if you have special dietary requirements.\nWe reserve the right to refuse service to anyone. We are not responsible for lost or stolen items. Please respect our two hour table limit. $15 per Bottle Corkage Fee.', '22', '2021-10-13 06:13:45', NULL, NULL),
(5, 26, 5, 'Y', 2, 'Food allergy and intolerances:', '#f50000', '#fafafa', 'Please inform a member of the front of the house when placing your order.', '26', '2021-10-19 07:11:13', '26', '2021-10-19 08:08:29'),
(6, 28, 1, 'Y', 1, 'Breakfast Delights!!', '#fcfcfc', '#6a52e5', 'We serve the culinary delicacies in breakfast', '28', '2021-10-21 08:05:07', '28', '2021-10-21 08:09:04'),
(7, 30, 1, 'Y', 1, 'Breakfast Delights', '#ffffff', '#4542ff', 'Breakfast delights test notice content', '30', '2021-10-21 11:05:42', '30', '2021-10-21 11:10:15'),
(8, 31, 1, 'Y', 2, 'Breakfast Delights', '#ffffff', '#ff2424', 'We provide the best breakfast in town.', '31', '2021-10-22 09:49:43', NULL, NULL),
(9, 34, 2, 'Y', 1, 'NOTICE', '#e91616', '#ffffff', 'Please advise us of any allergies or dietary requirements and our chefs will be pleased to help', '34', '2021-11-01 10:49:32', '34', '2021-11-15 08:52:16'),
(10, 38, 1, 'Y', 3, 'Tell waiter if you are allergi', '#8080ff', '#c0c0c0', 'View our online menu below or search to view and download a specific cafe\'s menu. Indulgences. Serve', '38', '2021-11-02 16:58:33', NULL, NULL),
(11, 44, 1, 'Y', 1, 'Breakfast delights', '#f5f5f5', '#ec9393', 'Lorem Ipsum Dolor Sit Amet', '44', '2021-11-22 10:52:52', NULL, NULL),
(12, 44, 2, 'Y', 2, 'Lunch Delights', '#ffffff', '#dc0909', 'Lorem Ipsum Dolor Sit Amet', '44', '2021-11-22 10:53:28', '44', '2021-11-23 07:01:12'),
(13, 48, 1, 'Y', 3, 'Alert!!', '#ffffff', '#f27d7d', 'Breakfast items are not available in the evening', '48', '2021-11-26 05:54:53', '48', '2021-11-26 09:51:13'),
(14, 48, 2, 'Y', 2, 'Lunch Delights', '#fafafa', '#6cf97d', 'We serve the exquisite stuff.', '48', '2021-11-26 05:55:36', NULL, NULL),
(15, 48, 8, 'Y', 1, 'Alert', '#fbf9f9', '#050505', 'Smoking is inurious to health', '48', '2021-11-26 09:41:12', NULL, NULL),
(16, 48, 9, 'Y', 2, 'Alert', '#ff0000', '#ffffff', 'Smoking is injurious to health', '48', '2021-11-26 09:42:02', NULL, NULL),
(17, 44, 6, 'Y', 1, 'Kids Delight', '#f7f7f7', '#ff0000', 'Kids Section Random notice text', '44', '2021-11-29 11:03:39', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `td_menu_request`
--

CREATE TABLE `td_menu_request` (
  `id` bigint(22) NOT NULL,
  `entry_date` date NOT NULL,
  `restaurant_id` bigint(22) NOT NULL,
  `menu_id` bigint(22) NOT NULL,
  `cover_page_img` varchar(100) NOT NULL,
  `cover_page_url` varchar(100) NOT NULL,
  `top_image_img` varchar(100) NOT NULL,
  `top_img_url` varchar(100) NOT NULL,
  `section_img` varchar(100) NOT NULL,
  `section_img_url` varchar(100) NOT NULL,
  `menu_img` varchar(100) NOT NULL,
  `menu_url` varchar(100) NOT NULL,
  `logo_img` varchar(100) NOT NULL,
  `logo_url` varchar(100) NOT NULL,
  `menu_days` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `td_order_items_custom`
--

CREATE TABLE `td_order_items_custom` (
  `id` bigint(22) NOT NULL,
  `restaurant_id` bigint(22) NOT NULL,
  `package_name` varchar(50) DEFAULT NULL,
  `no_of_menu` int(11) DEFAULT NULL,
  `special_menu` enum('Y','N') DEFAULT 'N',
  `setup_fee` float(10,2) DEFAULT NULL,
  `monthly_fee` float(10,2) DEFAULT NULL,
  `birth_calendar_flag` enum('Y','N') DEFAULT 'N',
  `birth_calendar_free_flag` enum('Y','N') DEFAULT 'N',
  `birth_calendar_price` float(10,2) DEFAULT NULL,
  `event_calendar_flag` enum('Y','N') DEFAULT 'N',
  `event_calendar_free_flag` enum('Y','N') DEFAULT 'N',
  `event_calendar_price` float(10,2) DEFAULT NULL,
  `table_top_6` int(11) DEFAULT NULL,
  `table_top_6_price` float(10,2) DEFAULT NULL,
  `table_top_7` int(11) DEFAULT NULL,
  `table_top_7_price` float(10,2) DEFAULT NULL,
  `table_top_8` int(11) DEFAULT NULL,
  `table_top_8_price` float(10,2) DEFAULT NULL,
  `window_cling_9` int(11) DEFAULT NULL,
  `window_cling_9_price` int(11) DEFAULT NULL,
  `approval_flag` enum('U','A','R') DEFAULT 'U',
  `payment_flag` int(11) DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `created_dt` datetime DEFAULT NULL,
  `modified_by` varchar(50) DEFAULT NULL,
  `modified_dt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `td_order_items_custom`
--

INSERT INTO `td_order_items_custom` (`id`, `restaurant_id`, `package_name`, `no_of_menu`, `special_menu`, `setup_fee`, `monthly_fee`, `birth_calendar_flag`, `birth_calendar_free_flag`, `birth_calendar_price`, `event_calendar_flag`, `event_calendar_free_flag`, `event_calendar_price`, `table_top_6`, `table_top_6_price`, `table_top_7`, `table_top_7_price`, `table_top_8`, `table_top_8_price`, `window_cling_9`, `window_cling_9_price`, `approval_flag`, `payment_flag`, `created_by`, `created_dt`, `modified_by`, `modified_dt`) VALUES
(1, 1, 'Custom', 2, 'Y', 20.00, 20.00, 'Y', 'N', 4.00, 'Y', 'Y', 0.00, 2, 1.00, 3, 2.00, 4, 3.00, 10, 5, 'U', NULL, 'admin@gmail.com', '2021-12-24 12:35:04', 'admin@gmail.com', '2022-01-18 17:30:11');

-- --------------------------------------------------------

--
-- Table structure for table `td_other_image_custom`
--

CREATE TABLE `td_other_image_custom` (
  `id` int(11) NOT NULL,
  `restaurant_id` bigint(22) NOT NULL,
  `venue_id` int(11) NOT NULL COMMENT 'td_venue_custom: id',
  `menu_id` bigint(22) NOT NULL COMMENT 'td_venue_menu_custom: id',
  `active_flag` enum('Y','N') NOT NULL DEFAULT 'N',
  `cover_page_img` text NOT NULL,
  `cover_page_url` text NOT NULL,
  `top_image_img` text NOT NULL,
  `top_img_url` text NOT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `created_dt` datetime DEFAULT NULL,
  `modified_by` varchar(50) DEFAULT NULL,
  `modified_dt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `td_other_image_custom`
--

INSERT INTO `td_other_image_custom` (`id`, `restaurant_id`, `venue_id`, `menu_id`, `active_flag`, `cover_page_img`, `cover_page_url`, `top_image_img`, `top_img_url`, `created_by`, `created_dt`, `modified_by`, `modified_dt`) VALUES
(1, 1, 1, 3, 'Y', '1_1_3_cover_rest_logo.jpg', 'url.com', '1_1_3_top_screen.jpg', '', '1', '2022-01-18 13:38:34', '1', '2022-01-18 15:24:39');

-- --------------------------------------------------------

--
-- Table structure for table `td_payment`
--

CREATE TABLE `td_payment` (
  `id` int(11) NOT NULL,
  `restaurant_id` bigint(22) NOT NULL,
  `payment_through` varchar(20) NOT NULL,
  `payment_type` varchar(20) NOT NULL,
  `amount` float(10,2) NOT NULL DEFAULT 0.00,
  `payment_flag` enum('Y','N') NOT NULL DEFAULT 'N',
  `payment_dt` datetime NOT NULL,
  `payment_by` varchar(50) NOT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `created_dt` datetime DEFAULT NULL,
  `modified_by` varchar(50) DEFAULT NULL,
  `modified_dt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `td_promotions`
--

CREATE TABLE `td_promotions` (
  `id` bigint(22) NOT NULL,
  `restaurant_id` bigint(22) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `birth_dt` date DEFAULT NULL,
  `anniversary_dt` date DEFAULT NULL,
  `authorization` enum('Y','N') NOT NULL,
  `mobile_no` varchar(50) NOT NULL,
  `questions1` text NOT NULL,
  `questions2` text NOT NULL,
  `questions3` text NOT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_by` varchar(50) DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `td_promotions`
--

INSERT INTO `td_promotions` (`id`, `restaurant_id`, `first_name`, `last_name`, `email`, `birth_dt`, `anniversary_dt`, `authorization`, `mobile_no`, `questions1`, `questions2`, `questions3`, `created_by`, `created_at`, `modified_by`, `modified_at`) VALUES
(1, 26, 'Tanmoy', 'Mondal', 'meettan@gmail.com', '1980-02-25', '2011-10-11', 'Y', '9831887194', 'Music ', 'Soccer', 'Darjeeling', 'meettan@gmail.com', '2021-10-27 07:13:37', NULL, NULL),
(2, 26, 'Subham', 'Samanta', 'samantasubham9804@gmail.com', '1996-05-29', '2021-10-27', 'Y', '9051203118', 'Gardening', 'Football', 'Goa', 'samantasubham9804@gmail.com', '2021-10-27 09:25:11', 'samantasubham9804@gmail.com', '2021-10-27 09:36:21'),
(3, 26, 'Somnath', 'Thakur', 'somnath.thakur16@gmail.com', '1994-01-31', '2021-10-27', 'Y', '', 'Reading', 'Cricket', 'London', 'somnath.thakur16@gmail.com', '2021-10-27 11:12:58', 'somnath.thakur16@gmail.com', '2021-11-05 10:40:02'),
(4, 26, 'Adam', 'Levine', 'samantasubham9804@gmail.com', '1979-03-01', NULL, 'Y', '9051203118', 'Gardening', 'Football', 'Goa', 'samantasubham9804@gmail.com', '2021-10-27 09:25:11', 'samantasubham9804@gmail.com', '2021-10-27 09:36:21'),
(5, 26, 'Avishek', 'Das', 'avishekdas478@gmail.com', '2021-10-31', NULL, 'Y', '8420598998', 'Gardening', 'Test', 'Test', 'avishekdas478@gmail.com', '2021-10-31 08:22:57', NULL, NULL),
(6, 44, 'Somnath', 'Thakur ', 'somnath.thakur16@gmail.com', '2021-12-13', '2021-12-13', 'N', '', '', '', '', 'somnath.thakur16@gmail.com', '2021-11-22 11:48:29', 'somnath.thakur16@gmail.com', '2021-12-13 10:49:12'),
(7, 48, 'Avishek', 'Basu', 'somnath.thakur16@gmail.com', '2021-11-26', '2021-11-26', 'N', '08981762291', '', '', '', 'somnath.thakur16@gmail.com', '2021-11-26 13:27:48', NULL, NULL),
(8, 44, 'Avishek', 'Basu', 'abcd@gmail.com', '2021-12-02', NULL, 'N', '08981762291', '', '', '', 'abcd@gmail.com', '2021-12-01 10:44:21', 'abcd@gmail.com', '2021-12-02 07:10:34');

-- --------------------------------------------------------

--
-- Table structure for table `td_section_image_request`
--

CREATE TABLE `td_section_image_request` (
  `id` int(11) NOT NULL,
  `restaurant_id` bigint(22) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `active_flag` enum('Y','N') NOT NULL DEFAULT 'N',
  `sec_img` text DEFAULT NULL,
  `sec_url` text DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `created_dt` datetime DEFAULT NULL,
  `modified_by` varchar(50) DEFAULT NULL,
  `modified_dt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `td_section_image_request`
--

INSERT INTO `td_section_image_request` (`id`, `restaurant_id`, `menu_id`, `active_flag`, `sec_img`, `sec_url`, `created_by`, `created_dt`, `modified_by`, `modified_dt`) VALUES
(1, 3, 1, 'Y', NULL, 'https://www.waterside-inn.co.uk/', '3', '2021-10-07 09:38:13', '3', '2021-10-07 09:41:39'),
(2, 3, 1, 'Y', '3_1_section_1_menu_1.pdf', 'https://www.waterside-inn.co.uk/', '3', '2021-10-07 09:41:39', '3', '2021-10-07 09:41:39'),
(3, 3, 1, 'Y', '3_1_section_2_menu_2.pdf', 'https://www.waterside-inn.co.uk/', '3', '2021-10-07 09:41:39', '3', '2021-10-07 09:41:39'),
(4, 3, 2, 'Y', '3_2_section_1_menu_1.pdf', 'https://www.waterside-inn.co.uk/', '3', '2021-10-07 09:44:26', '3', '2021-10-07 09:44:26'),
(5, 3, 2, 'Y', '3_2_section_2_menu_2.pdf', 'https://www.waterside-inn.co.uk/', '3', '2021-10-07 09:44:26', '3', '2021-10-07 09:44:26'),
(6, 4, 1, 'Y', '4_1_section_IndusInd Partner Onboarding Doc.pdf', 'dasdasd', '4', '2021-10-07 12:55:42', NULL, NULL),
(7, 4, 1, 'Y', NULL, 'dasdasd', '4', '2021-10-07 12:55:42', NULL, NULL),
(8, 5, 1, 'Y', NULL, '', '5', '2021-10-07 13:12:01', NULL, NULL),
(9, 5, 2, 'Y', NULL, '', '5', '2021-10-07 13:13:24', NULL, NULL),
(10, 6, 1, 'Y', '6_1_section_1_menu_1.pdf', '', '6', '2021-10-08 06:22:23', '6', '2021-10-08 06:22:23'),
(11, 6, 1, 'Y', '6_1_section_2_menu_2.pdf', '', '6', '2021-10-08 06:22:23', '6', '2021-10-08 06:22:23'),
(12, 7, 1, 'Y', '7_1_section_1_menu_1.pdf', '', '7', '2021-10-08 06:30:21', '7', '2021-10-08 06:30:21'),
(13, 7, 1, 'Y', '7_1_section_2_menu_2.pdf', '', '7', '2021-10-08 06:30:21', '7', '2021-10-08 06:30:21'),
(14, 8, 2, 'Y', '8_2_section_1_menu_1.pdf', '', '8', '2021-10-08 06:49:30', '8', '2021-10-08 07:01:03'),
(15, 8, 2, 'Y', '8_2_section_2_menu_2.pdf', '', '8', '2021-10-08 06:49:30', '8', '2021-10-08 07:01:03'),
(16, 8, 2, 'Y', '8_2_section_3_menu_1.pdf', '', '8', '2021-10-08 07:01:03', '8', '2021-10-08 07:01:03'),
(17, 8, 2, 'Y', '8_2_section_4_menu_2.pdf', '', '8', '2021-10-08 07:01:03', '8', '2021-10-08 07:01:03'),
(18, 11, 1, 'Y', '', 'section.com', '11', '2021-10-08 13:10:35', '11', '2021-10-08 13:54:35'),
(19, 11, 1, 'Y', '', 'section.com', '11', '2021-10-08 13:10:35', '11', '2021-10-08 13:54:35'),
(20, 11, 1, 'Y', '', 'section.com', '11', '2021-10-08 13:31:17', '11', '2021-10-08 13:54:35'),
(21, 11, 1, 'Y', '', 'section.com', '11', '2021-10-08 13:34:37', '11', '2021-10-08 13:54:35'),
(22, 11, 1, 'Y', '', 'section.com', '11', '2021-10-08 13:34:37', '11', '2021-10-08 13:54:35'),
(23, 11, 1, 'Y', '', 'section.com', '11', '2021-10-08 13:34:37', '11', '2021-10-08 13:54:35'),
(24, 11, 1, 'Y', '', 'section.com', '11', '2021-10-08 13:44:10', '11', '2021-10-08 13:54:35'),
(25, 13, 1, 'Y', NULL, 'https://www.thecliffresort.com.vn/events-wedding/wedding/', '13', '2021-10-11 06:09:08', NULL, NULL),
(26, 16, 1, 'Y', '', 'section.com', '16', '2021-10-11 14:02:37', '16', '2021-10-11 14:04:11'),
(27, 16, 1, 'Y', '', 'section.com', '16', '2021-10-11 14:02:37', '16', '2021-10-11 14:04:11'),
(28, 16, 2, 'Y', '', 'launchsection.com', '16', '2021-10-11 14:10:11', '16', '2021-10-11 14:11:51'),
(29, 16, 2, 'Y', '', 'launchsection.com', '16', '2021-10-11 14:10:11', '16', '2021-10-11 14:11:51'),
(30, 17, 1, 'Y', '17_1_section_sample.pdf', 'assad', '17', '2021-10-11 15:22:07', NULL, NULL),
(31, 17, 1, 'Y', NULL, 'assad', '17', '2021-10-11 15:22:07', NULL, NULL),
(32, 17, 2, 'Y', NULL, 'sadasd', '17', '2021-10-11 15:33:35', NULL, NULL),
(33, 18, 1, 'N', '', 'asdasdasd', '18', '2021-10-11 15:42:55', '18', '2021-10-11 15:49:48'),
(34, 18, 4, 'Y', NULL, 'wertyjhbv', '18', '2021-10-11 15:46:39', NULL, NULL),
(35, 19, 3, 'N', '', 'section.com', '19', '2021-10-11 16:14:38', '19', '2021-10-11 16:25:17'),
(36, 19, 3, 'N', '', 'section.com', '19', '2021-10-11 16:14:38', '19', '2021-10-11 16:25:17'),
(37, 19, 1, 'Y', '19_1_section_Administration-Platform.pdf', 'dsadasd', '19', '2021-10-11 16:29:32', '19', '2021-10-11 16:29:32'),
(38, 22, 1, 'Y', '22_1_section_1_menu_1.pdf', 'https://www.thecliffresort.com.vn/facilities/gym/', '22', '2021-10-13 06:05:47', '22', '2021-10-13 06:05:47'),
(39, 22, 1, 'Y', '22_1_section_2_menu_2.pdf', 'https://www.thecliffresort.com.vn/facilities/gym/', '22', '2021-10-13 06:05:47', '22', '2021-10-13 06:05:47'),
(40, 24, 1, 'Y', '24_1_section_sample.pdf', '', '24', '2021-10-16 04:49:03', NULL, NULL),
(41, 24, 1, 'Y', NULL, '', '24', '2021-10-16 04:49:03', NULL, NULL),
(42, 24, 3, 'Y', NULL, 'section.com', '24', '2021-10-16 04:58:14', NULL, NULL),
(44, 25, 1, 'Y', '25_1_section_Administration-Platform.pdf', 'https://royal_lala.com/break/section', '25', '2021-10-18 11:12:44', '25', '2021-10-18 11:12:44'),
(45, 25, 2, 'Y', '25_2_section_Administration-Platform.pdf', 'https://royal_lala.com/lun/section', '25', '2021-10-18 11:58:12', NULL, NULL),
(46, 25, 2, 'Y', NULL, 'https://royal_lala.com/lun/section', '25', '2021-10-18 11:58:12', NULL, NULL),
(47, 26, 1, 'Y', '26_1_section_1_menu_1.pdf', 'https://www.rediff.com/cricket/special/meet-indias-t20-world-cup-team/20211019.htm', '26', '2021-10-19 06:49:59', '26', '2021-10-19 06:49:59'),
(48, 26, 1, 'Y', '26_1_section_2_menu_2.pdf', 'https://www.rediff.com/cricket/special/meet-indias-t20-world-cup-team/20211019.htm', '26', '2021-10-19 06:49:59', '26', '2021-10-19 06:49:59'),
(49, 26, 2, 'Y', '26_2_section_menu_2.pdf', 'https://www.rediff.com/getahead/report/movie-legend-helens-sari-style/20211019.htm', '26', '2021-10-19 06:53:31', NULL, NULL),
(50, 26, 2, 'Y', NULL, 'https://www.rediff.com/getahead/report/movie-legend-helens-sari-style/20211019.htm', '26', '2021-10-19 06:53:31', NULL, NULL),
(51, 28, 1, 'Y', NULL, 'https://online.kfc.co.in/', '28', '2021-10-21 08:01:00', NULL, NULL),
(52, 30, 2, 'Y', NULL, 'https://online.kfc.co.in/', '30', '2021-10-21 10:12:20', NULL, NULL),
(53, 30, 3, 'N', '', 'https://online.kfc.co.in/', '30', '2021-10-21 10:15:16', '30', '2021-10-21 10:26:01'),
(54, 30, 1, 'Y', '', 'https://online.kfc.co.in/', '30', '2021-10-21 10:27:06', '30', '2021-10-21 11:37:45'),
(55, 31, 1, 'Y', '', 'https://online.kfc.co.in/', '31', '2021-10-22 09:44:48', '31', '2021-10-28 08:52:23'),
(56, 31, 2, 'Y', NULL, 'https://online.kfc.co.in/', '31', '2021-10-22 09:46:24', NULL, NULL),
(57, 41, 1, 'Y', NULL, 'www.synergicsoftek.in', '41', '2021-11-09 09:09:45', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `td_special_data`
--

CREATE TABLE `td_special_data` (
  `id` bigint(22) NOT NULL,
  `restaurant_id` bigint(22) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `menu_desc` text DEFAULT NULL,
  `img_catg` int(11) NOT NULL,
  `img_path` text NOT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `created_dt` date DEFAULT NULL,
  `modified_by` varchar(50) DEFAULT NULL,
  `modified_dt` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `td_special_data`
--

INSERT INTO `td_special_data` (`id`, `restaurant_id`, `menu_id`, `menu_desc`, `img_catg`, `img_path`, `created_by`, `created_dt`, `modified_by`, `modified_dt`) VALUES
(1, 13, 5, NULL, 17, 'https://lagunaapi.shoplocal-lagunabeach.com/stock/halloween.jpg', '13', '2021-10-11', '13', '2021-10-11'),
(2, 16, 5, 'null', 10, 'https://lagunaapi.shoplocal-lagunabeach.com/stock/Book-cover-page-5-CRC.jpeg', '16', '2021-10-11', NULL, NULL),
(3, 17, 5, 'null', 10, 'https://lagunaapi.shoplocal-lagunabeach.com/stock/Book-cover-page-5-CRC.jpeg', '17', '2021-10-11', NULL, NULL),
(4, 18, 5, 'null', 10, 'https://lagunaapi.shoplocal-lagunabeach.com/stock/images (1).jpeg', '18', '2021-10-11', '18', '2021-10-11'),
(5, 19, 5, 'null', 7, 'https://lagunaapi.shoplocal-lagunabeach.com/stock/user2.jpeg', '19', '2021-10-11', NULL, NULL),
(6, 22, 5, 'hghg\njvhgvhghghghg]\njvjdjvdjvdvdvdvd\nkjvndjknvdnvjdnvjnvdnv', 17, 'halloween.jpg', '22', '2021-10-13', '22', '2021-10-18'),
(7, 24, 5, 'null', 17, 'https://lagunaapi.shoplocal-lagunabeach.com/stock/halloween.jpg', '24', '2021-10-16', NULL, NULL),
(8, 5, 5, 'abcde', 20, 'Christmas-Wishes-Feature.jpg', '5', '2021-10-18', '5', '2021-10-18'),
(9, 26, 5, '<span style=\"font-family: Arial;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the $150 Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of&nbsp;</span><i style=\"font-family: Arial;\"><u>classical Latin literature</u></i><span style=\"font-family: Arial;\">&nbsp;from&nbsp;</span><span style=\"font-weight: bolder; font-family: Arial;\">$200</span><span style=\"font-family: Arial;\">&nbsp;All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true <b>generator</b> on the Internet. It uses a&nbsp;</span><u style=\"font-family: Arial;\"><i>dictionary</i></u><span style=\"font-family: Arial;\">&nbsp;of over<b>&nbsp;</b></span><span style=\"font-family: Arial;\"><b>$300.50</b></span>', 20, '79947294.png', '26', '2021-10-19', '26', '2021-11-05'),
(10, 28, 5, 'The country house cafe delights\n33\nThe country house cafe specials\n66', 20, 'Christmas-Wishes-Feature.jpg', '28', '2021-10-21', '28', '2021-10-21'),
(11, 30, 5, '8th day cafe and bakery specials\n88\n', 20, 'https://lagunaapi.shoplocal-lagunabeach.com/stock/79947294.png', '30', '2021-10-21', '30', '2021-10-21'),
(12, 31, 5, 'null', 20, 'https://lagunaapi.shoplocal-lagunabeach.com/stock/79947294.png', '31', '2021-10-22', NULL, NULL),
(13, 34, 5, 'TO SHARE\nMarinated Olives 3.50 (vegan)\nCrispy Meaty Bits - with Korean BBQ sauce, sesame, scallions 8\nVeggie Bits - with crispy garlic & chilli sauce, sesame, scallions 6 (vegan)\nAPPETISERS\nSoup of the Day, croutes, crusty bread 6\nChicken Liver Parfait , Heathers Harvest carrot pickle, artisan toast 7\nFishermans Cocktail, smoked salmon, crayfish & crab, lemon & lobster mayo, gem hearts, buttered granary bread 9\nMezze, mixed bean hummus, ful medames, olives, pomegranate molasses, warm pitta 6.50 (vegan)\nFalafel Kamikaze, harissa ketchup, seeds & spices 6.50 (vegan)\nBOWLS \n‘SAN FRAN’ - crispy duck, oyster sauce, Chinatown noodles, greens, crispy chilli, kochajang, sesame 15 \nVIETNAMESE ‘SREET BUN’ - tempura avocado, hot firecracker rice noodles with beansprouts, carrot pickle, nam \nprik dressing, cucumber & scallions Bao bun, hot sauce 11.50 (vegan)\nSANDWICHES \nserved until 5pm\n{served on White or Brown Bread}\n‘TRIPLE ROAST’ - Corbett\'s roast beef, pork & lamb, stuffing, gravy pot & roasties 14\n‘MATURE CHEDDAR & HEATHERS HARVEST CARROT PICKLE’ - 7.50*\n‘SMOKED SALMON & CRAYFISH COCKTAIL’ - lobster mayo, cucumber, lemon 10*\n‘MEDINA’ - chicken, harissa, halloumi, tomato, nuts & seeds 10*\nserved with French Fries *\nCLASSICS\nWild Mushroom Risotto, summer greens, pumpkin seeds - small 9 • large 14 (vegan)\n‘Caesar Salad’, Shropshire chicken, bacon, anchovies, croutons, gem, Caesar dressing, parmesan 14\nMiso Sesame Buttered Roast Salmon, firecracker rice noodles, cucumber, scallions, miso roasted cashews 15.50\nShropshire Ham, Hollowdene hens eggs, chips 14\nPlease advise us of any allergies or dietary requirements and our chefs will be pleased to help', 20, 'Christmas-Wishes-Feature.jpg', '34', '2021-11-01', '34', '2021-11-15'),
(14, 38, 5, 'View our online menu below or search to view and download a specific cafe\'s menu. Indulgences. Served with two eggs any style and choice of baked bacon, house', 17, 'halloween.jpg', '38', '2021-11-02', '38', '2021-11-02'),
(15, 44, 5, '<p><span><font color=\"#ff1414\"><b>Located on Boise restaurant row on Eighth Street, The Matador turns out a clever luncheon special called the Mix and Match Lunch. Choose two menu items for $8.50 or three for $12 a choice of three from tacos made from braised beef, carnitas, pork belly, house made chorizo, braised chicken thigh, house-made tortilla soup, and seasonal salad or romaine salad. You can find other Matador locations in Seattle, Denver, and Portland, <u>Ore.</u></b></font></span></p>', 24, 'birthday.jpg', '44', '2021-11-22', '44', '2021-11-23'),
(16, 48, 5, '<p><font color=\"#f26363\"><b>We have special menu on christmas</b></font></p><p><font face=\"Arial\" color=\"#f26363\"><b>Bacons $88</b></font></p><p><font face=\"Arial\" color=\"#f26363\"><b>Bagel $56</b></font></p><p><font face=\"Arial\" color=\"#f26363\"><b>Turkey $55</b></font></p>', 20, 'Christmas-Wishes-Feature.jpg', '48', '2021-11-26', '48', '2021-11-26');

-- --------------------------------------------------------

--
-- Table structure for table `td_special_date_time`
--

CREATE TABLE `td_special_date_time` (
  `id` bigint(22) NOT NULL,
  `restaurant_id` bigint(22) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `active_flag` enum('Y','N') NOT NULL,
  `regular_menu_flag` enum('E','A') NOT NULL COMMENT 'E: Exclusively; A: In Addition',
  `day_flag` enum('E','S') NOT NULL COMMENT 'E: Every Week; S: Specific Date',
  `month_day` int(11) DEFAULT NULL,
  `menu_frm_dt` date DEFAULT NULL,
  `menu_to_dt` date DEFAULT NULL,
  `regular_menu_id` int(11) NOT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `created_dt` datetime DEFAULT NULL,
  `modified_by` varchar(50) DEFAULT NULL,
  `modified_dt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `td_special_date_time`
--

INSERT INTO `td_special_date_time` (`id`, `restaurant_id`, `menu_id`, `active_flag`, `regular_menu_flag`, `day_flag`, `month_day`, `menu_frm_dt`, `menu_to_dt`, `regular_menu_id`, `start_time`, `end_time`, `created_by`, `created_dt`, `modified_by`, `modified_dt`) VALUES
(2, 13, 5, 'Y', 'E', 'S', NULL, '2021-10-11', NULL, 3, NULL, NULL, '13', '2021-10-11 06:45:51', NULL, NULL),
(3, 13, 5, 'Y', 'E', 'S', NULL, '2021-10-11', NULL, 1, NULL, NULL, '13', '2021-10-11 06:45:51', NULL, NULL),
(4, 13, 5, 'Y', 'E', 'S', NULL, '2021-10-11', NULL, 2, NULL, NULL, '13', '2021-10-11 06:45:51', NULL, NULL),
(5, 16, 5, 'Y', 'E', 'S', NULL, '2021-10-16', NULL, 2, NULL, NULL, '16', '2021-10-11 14:13:25', NULL, NULL),
(6, 17, 5, 'Y', 'E', 'E', 2, NULL, NULL, 1, NULL, NULL, '17', '2021-10-11 15:24:47', NULL, NULL),
(7, 17, 5, 'Y', 'E', 'E', 4, NULL, NULL, 1, NULL, NULL, '17', '2021-10-11 15:24:47', NULL, NULL),
(8, 17, 5, 'Y', 'E', 'E', 6, NULL, NULL, 1, NULL, NULL, '17', '2021-10-11 15:24:47', NULL, NULL),
(9, 17, 5, 'Y', 'E', 'E', 5, NULL, NULL, 1, NULL, NULL, '17', '2021-10-11 15:24:47', NULL, NULL),
(10, 17, 5, 'Y', 'E', 'E', 3, NULL, NULL, 1, NULL, NULL, '17', '2021-10-11 15:24:47', NULL, NULL),
(11, 17, 5, 'Y', 'E', 'E', 7, NULL, NULL, 1, NULL, NULL, '17', '2021-10-11 15:24:47', NULL, NULL),
(12, 17, 5, 'Y', 'E', 'E', 8, NULL, NULL, 1, NULL, NULL, '17', '2021-10-11 15:24:47', NULL, NULL),
(27, 18, 5, 'Y', 'A', 'S', NULL, '2021-10-14', NULL, 1, NULL, NULL, '18', '2021-10-11 15:56:14', NULL, NULL),
(28, 18, 5, 'Y', 'A', 'S', NULL, '2021-10-14', NULL, 4, NULL, NULL, '18', '2021-10-11 15:56:14', NULL, NULL),
(29, 19, 5, 'Y', 'E', 'S', NULL, '2021-10-14', NULL, 3, NULL, NULL, '19', '2021-10-11 16:15:39', NULL, NULL),
(32, 24, 5, 'Y', 'E', 'E', 6, NULL, NULL, 1, '08:18:00', '22:20:00', '24', '2021-10-16 04:59:06', NULL, NULL),
(33, 24, 5, 'Y', 'E', 'E', 5, NULL, NULL, 3, '08:18:00', '22:20:00', '24', '2021-10-16 04:59:06', NULL, NULL),
(34, 24, 5, 'Y', 'E', 'E', 5, NULL, NULL, 1, '08:18:00', '22:20:00', '24', '2021-10-16 04:59:06', NULL, NULL),
(35, 24, 5, 'Y', 'E', 'E', 3, NULL, NULL, 3, '08:18:00', '22:20:00', '24', '2021-10-16 04:59:06', NULL, NULL),
(36, 24, 5, 'Y', 'E', 'E', 2, NULL, NULL, 1, '08:18:00', '22:20:00', '24', '2021-10-16 04:59:06', NULL, NULL),
(37, 24, 5, 'Y', 'E', 'E', 2, NULL, NULL, 3, '08:18:00', '22:20:00', '24', '2021-10-16 04:59:06', NULL, NULL),
(38, 24, 5, 'Y', 'E', 'E', 7, NULL, NULL, 3, '08:18:00', '22:20:00', '24', '2021-10-16 04:59:06', NULL, NULL),
(39, 24, 5, 'Y', 'E', 'E', 8, NULL, NULL, 3, '08:18:00', '22:20:00', '24', '2021-10-16 04:59:06', NULL, NULL),
(40, 24, 5, 'Y', 'E', 'E', 8, NULL, NULL, 1, '08:18:00', '22:20:00', '24', '2021-10-16 04:59:06', NULL, NULL),
(41, 24, 5, 'Y', 'E', 'E', 4, NULL, NULL, 3, '08:18:00', '22:20:00', '24', '2021-10-16 04:59:06', NULL, NULL),
(42, 24, 5, 'Y', 'E', 'E', 7, NULL, NULL, 1, '08:18:00', '22:20:00', '24', '2021-10-16 04:59:06', NULL, NULL),
(43, 24, 5, 'Y', 'E', 'E', 3, NULL, NULL, 1, '08:18:00', '22:20:00', '24', '2021-10-16 04:59:06', NULL, NULL),
(44, 24, 5, 'Y', 'E', 'E', 4, NULL, NULL, 1, '08:18:00', '22:20:00', '24', '2021-10-16 04:59:06', NULL, NULL),
(45, 24, 5, 'Y', 'E', 'E', 6, NULL, NULL, 3, '08:18:00', '22:20:00', '24', '2021-10-16 04:59:06', NULL, NULL),
(46, 5, 5, 'Y', 'A', 'E', 2, NULL, NULL, 1, '14:41:00', '20:41:00', '5', '2021-10-16 11:23:00', NULL, NULL),
(47, 5, 5, 'Y', 'A', 'E', 7, NULL, NULL, 1, '14:41:00', '20:41:00', '5', '2021-10-16 11:23:00', NULL, NULL),
(48, 5, 5, 'Y', 'A', 'E', 4, NULL, NULL, 1, '14:41:00', '20:41:00', '5', '2021-10-16 11:23:00', NULL, NULL),
(51, 22, 5, 'Y', 'A', 'S', NULL, '2021-10-18', NULL, 1, '08:00:00', '23:00:00', '22', '2021-10-18 05:21:55', NULL, NULL),
(52, 3, 5, 'Y', 'A', 'E', 2, NULL, NULL, 1, '08:05:00', '12:06:00', '3', '2021-10-18 11:50:03', NULL, NULL),
(53, 3, 5, 'Y', 'A', 'E', 3, NULL, NULL, 1, '08:05:00', '12:06:00', '3', '2021-10-18 11:50:03', NULL, NULL),
(54, 3, 5, 'Y', 'A', 'E', 5, NULL, NULL, 1, '08:05:00', '12:06:00', '3', '2021-10-18 11:50:03', NULL, NULL),
(55, 3, 5, 'Y', 'A', 'E', 4, NULL, NULL, 1, '08:05:00', '12:06:00', '3', '2021-10-18 11:50:03', NULL, NULL),
(56, 3, 5, 'Y', 'A', 'E', 8, NULL, NULL, 1, '08:05:00', '12:06:00', '3', '2021-10-18 11:50:03', NULL, NULL),
(57, 3, 5, 'Y', 'A', 'E', 7, NULL, NULL, 1, '08:05:00', '12:06:00', '3', '2021-10-18 11:50:03', NULL, NULL),
(58, 3, 5, 'Y', 'A', 'E', 6, NULL, NULL, 1, '08:05:00', '12:06:00', '3', '2021-10-18 11:50:03', NULL, NULL),
(59, 25, 5, 'Y', 'E', 'E', 2, NULL, NULL, 2, '08:00:00', '17:23:00', '25', '2021-10-18 12:06:40', NULL, NULL),
(60, 25, 5, 'Y', 'E', 'E', 4, NULL, NULL, 2, '08:00:00', '17:23:00', '25', '2021-10-18 12:06:40', NULL, NULL),
(61, 25, 5, 'Y', 'E', 'E', 4, NULL, NULL, 1, '08:00:00', '17:23:00', '25', '2021-10-18 12:06:40', NULL, NULL),
(62, 25, 5, 'Y', 'E', 'E', 3, NULL, NULL, 2, '08:00:00', '17:23:00', '25', '2021-10-18 12:06:40', NULL, NULL),
(63, 25, 5, 'Y', 'E', 'E', 3, NULL, NULL, 1, '08:00:00', '17:23:00', '25', '2021-10-18 12:06:40', NULL, NULL),
(64, 25, 5, 'Y', 'E', 'E', 2, NULL, NULL, 1, '08:00:00', '17:23:00', '25', '2021-10-18 12:06:40', NULL, NULL),
(65, 25, 5, 'Y', 'E', 'E', 6, NULL, NULL, 2, '08:00:00', '17:23:00', '25', '2021-10-18 12:06:40', NULL, NULL),
(66, 25, 5, 'Y', 'E', 'E', 6, NULL, NULL, 1, '08:00:00', '17:23:00', '25', '2021-10-18 12:06:40', NULL, NULL),
(86, 28, 5, 'Y', 'A', 'S', NULL, '2021-10-20', NULL, 1, '08:30:00', '15:30:00', '28', '2021-10-21 09:22:11', NULL, NULL),
(136, 30, 5, 'Y', 'A', 'E', 2, NULL, NULL, 1, '17:07:00', '18:07:00', '30', '2021-10-21 11:44:58', NULL, NULL),
(137, 30, 5, 'Y', 'A', 'E', 6, NULL, NULL, 1, '17:07:00', '18:07:00', '30', '2021-10-21 11:44:58', NULL, NULL),
(138, 30, 5, 'Y', 'A', 'E', 5, NULL, NULL, 1, '17:07:00', '18:07:00', '30', '2021-10-21 11:44:58', NULL, NULL),
(139, 30, 5, 'Y', 'A', 'E', 4, NULL, NULL, 1, '17:07:00', '18:07:00', '30', '2021-10-21 11:44:58', NULL, NULL),
(140, 30, 5, 'Y', 'A', 'E', 7, NULL, NULL, 1, '17:07:00', '18:07:00', '30', '2021-10-21 11:44:58', NULL, NULL),
(141, 30, 5, 'Y', 'A', 'E', 8, NULL, NULL, 1, '17:07:00', '18:07:00', '30', '2021-10-21 11:44:58', NULL, NULL),
(142, 30, 5, 'Y', 'A', 'E', 3, NULL, NULL, 1, '17:07:00', '18:07:00', '30', '2021-10-21 11:44:58', NULL, NULL),
(143, 31, 5, 'Y', 'A', 'E', 8, NULL, NULL, 1, '08:00:00', '11:30:00', '31', '2021-10-22 09:47:14', NULL, NULL),
(144, 31, 5, 'Y', 'A', 'E', 3, NULL, NULL, 1, '08:00:00', '11:30:00', '31', '2021-10-22 09:47:14', NULL, NULL),
(145, 31, 5, 'Y', 'A', 'E', 2, NULL, NULL, 1, '08:00:00', '11:30:00', '31', '2021-10-22 09:47:14', NULL, NULL),
(146, 31, 5, 'Y', 'A', 'E', 7, NULL, NULL, 1, '08:00:00', '11:30:00', '31', '2021-10-22 09:47:14', NULL, NULL),
(147, 31, 5, 'Y', 'A', 'E', 6, NULL, NULL, 1, '08:00:00', '11:30:00', '31', '2021-10-22 09:47:14', NULL, NULL),
(148, 31, 5, 'Y', 'A', 'E', 5, NULL, NULL, 1, '08:00:00', '11:30:00', '31', '2021-10-22 09:47:14', NULL, NULL),
(149, 31, 5, 'Y', 'A', 'E', 4, NULL, NULL, 1, '08:00:00', '11:30:00', '31', '2021-10-22 09:47:14', NULL, NULL),
(150, 26, 5, 'Y', 'A', 'E', 5, NULL, NULL, 4, '08:00:00', '23:45:00', '26', '2021-10-22 09:59:35', NULL, NULL),
(151, 26, 5, 'Y', 'A', 'E', 3, NULL, NULL, 3, '08:00:00', '23:45:00', '26', '2021-10-22 09:59:35', NULL, NULL),
(152, 26, 5, 'Y', 'A', 'E', 3, NULL, NULL, 2, '08:00:00', '23:45:00', '26', '2021-10-22 09:59:35', NULL, NULL),
(153, 26, 5, 'Y', 'A', 'E', 3, NULL, NULL, 1, '08:00:00', '23:45:00', '26', '2021-10-22 09:59:35', NULL, NULL),
(154, 26, 5, 'Y', 'A', 'E', 5, NULL, NULL, 2, '08:00:00', '23:45:00', '26', '2021-10-22 09:59:35', NULL, NULL),
(155, 26, 5, 'Y', 'A', 'E', 5, NULL, NULL, 3, '08:00:00', '23:45:00', '26', '2021-10-22 09:59:35', NULL, NULL),
(156, 26, 5, 'Y', 'A', 'E', 5, NULL, NULL, 1, '08:00:00', '23:45:00', '26', '2021-10-22 09:59:35', NULL, NULL),
(157, 26, 5, 'Y', 'A', 'E', 3, NULL, NULL, 4, '08:00:00', '23:45:00', '26', '2021-10-22 09:59:35', NULL, NULL),
(158, 26, 5, 'Y', 'A', 'E', 6, NULL, NULL, 1, '08:00:00', '23:45:00', '26', '2021-10-22 09:59:35', NULL, NULL),
(159, 26, 5, 'Y', 'A', 'E', 6, NULL, NULL, 3, '08:00:00', '23:45:00', '26', '2021-10-22 09:59:35', NULL, NULL),
(160, 26, 5, 'Y', 'A', 'E', 6, NULL, NULL, 2, '08:00:00', '23:45:00', '26', '2021-10-22 09:59:35', NULL, NULL),
(161, 26, 5, 'Y', 'A', 'E', 6, NULL, NULL, 4, '08:00:00', '23:45:00', '26', '2021-10-22 09:59:35', NULL, NULL),
(162, 34, 5, 'Y', 'A', 'E', 8, NULL, NULL, 3, '17:00:00', '22:00:00', '34', '2021-11-01 10:37:23', NULL, NULL),
(252, 48, 5, 'Y', 'A', 'E', 5, NULL, NULL, 2, '08:00:00', '15:00:00', '48', '2021-11-26 07:17:56', NULL, NULL),
(253, 48, 5, 'Y', 'A', 'E', 2, NULL, NULL, 1, '08:00:00', '15:00:00', '48', '2021-11-26 07:17:56', NULL, NULL),
(254, 48, 5, 'Y', 'A', 'E', 3, NULL, NULL, 1, '08:00:00', '15:00:00', '48', '2021-11-26 07:17:56', NULL, NULL),
(255, 48, 5, 'Y', 'A', 'E', 3, NULL, NULL, 2, '08:00:00', '15:00:00', '48', '2021-11-26 07:17:56', NULL, NULL),
(256, 48, 5, 'Y', 'A', 'E', 2, NULL, NULL, 2, '08:00:00', '15:00:00', '48', '2021-11-26 07:17:56', NULL, NULL),
(257, 48, 5, 'Y', 'A', 'E', 4, NULL, NULL, 1, '08:00:00', '15:00:00', '48', '2021-11-26 07:17:56', NULL, NULL),
(258, 48, 5, 'Y', 'A', 'E', 5, NULL, NULL, 1, '08:00:00', '15:00:00', '48', '2021-11-26 07:17:56', NULL, NULL),
(259, 48, 5, 'Y', 'A', 'E', 4, NULL, NULL, 2, '08:00:00', '15:00:00', '48', '2021-11-26 07:17:56', NULL, NULL),
(260, 48, 5, 'Y', 'A', 'E', 7, NULL, NULL, 1, '08:00:00', '15:00:00', '48', '2021-11-26 07:17:56', NULL, NULL),
(261, 48, 5, 'Y', 'A', 'E', 7, NULL, NULL, 2, '08:00:00', '15:00:00', '48', '2021-11-26 07:17:56', NULL, NULL),
(262, 48, 5, 'Y', 'A', 'E', 6, NULL, NULL, 2, '08:00:00', '15:00:00', '48', '2021-11-26 07:17:56', NULL, NULL),
(263, 48, 5, 'Y', 'A', 'E', 8, NULL, NULL, 2, '08:00:00', '15:00:00', '48', '2021-11-26 07:17:56', NULL, NULL),
(264, 48, 5, 'Y', 'A', 'E', 6, NULL, NULL, 1, '08:00:00', '15:00:00', '48', '2021-11-26 07:17:56', NULL, NULL),
(265, 48, 5, 'Y', 'A', 'E', 8, NULL, NULL, 1, '08:00:00', '15:00:00', '48', '2021-11-26 07:17:56', NULL, NULL),
(294, 44, 5, 'Y', 'A', 'E', 6, NULL, NULL, 2, '06:00:00', '19:00:00', '44', '2021-12-11 06:23:00', NULL, NULL),
(295, 44, 5, 'Y', 'A', 'E', 3, NULL, NULL, 1, '06:00:00', '19:00:00', '44', '2021-12-11 06:23:00', NULL, NULL),
(296, 44, 5, 'Y', 'A', 'E', 2, NULL, NULL, 2, '06:00:00', '19:00:00', '44', '2021-12-11 06:23:00', NULL, NULL),
(297, 44, 5, 'Y', 'A', 'E', 5, NULL, NULL, 2, '06:00:00', '19:00:00', '44', '2021-12-11 06:23:00', NULL, NULL),
(298, 44, 5, 'Y', 'A', 'E', 2, NULL, NULL, 1, '06:00:00', '19:00:00', '44', '2021-12-11 06:23:00', NULL, NULL),
(299, 44, 5, 'Y', 'A', 'E', 6, NULL, NULL, 1, '06:00:00', '19:00:00', '44', '2021-12-11 06:23:00', NULL, NULL),
(300, 44, 5, 'Y', 'A', 'E', 5, NULL, NULL, 1, '06:00:00', '19:00:00', '44', '2021-12-11 06:23:00', NULL, NULL),
(301, 44, 5, 'Y', 'A', 'E', 4, NULL, NULL, 2, '06:00:00', '19:00:00', '44', '2021-12-11 06:23:00', NULL, NULL),
(302, 44, 5, 'Y', 'A', 'E', 4, NULL, NULL, 1, '06:00:00', '19:00:00', '44', '2021-12-11 06:23:00', NULL, NULL),
(303, 44, 5, 'Y', 'A', 'E', 3, NULL, NULL, 2, '06:00:00', '19:00:00', '44', '2021-12-11 06:23:00', NULL, NULL),
(304, 44, 5, 'Y', 'A', 'E', 7, NULL, NULL, 1, '06:00:00', '19:00:00', '44', '2021-12-11 06:23:00', NULL, NULL),
(305, 44, 5, 'Y', 'A', 'E', 8, NULL, NULL, 2, '06:00:00', '19:00:00', '44', '2021-12-11 06:23:00', NULL, NULL),
(306, 44, 5, 'Y', 'A', 'E', 8, NULL, NULL, 1, '06:00:00', '19:00:00', '44', '2021-12-11 06:23:00', NULL, NULL),
(307, 44, 5, 'Y', 'A', 'E', 7, NULL, NULL, 2, '06:00:00', '19:00:00', '44', '2021-12-11 06:23:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `td_stock_image`
--

CREATE TABLE `td_stock_image` (
  `id` bigint(22) NOT NULL,
  `img_catg` int(11) NOT NULL COMMENT 'md_special_category -> id',
  `img_path` text NOT NULL,
  `created_by` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL,
  `created_dt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `td_stock_image`
--

INSERT INTO `td_stock_image` (`id`, `img_catg`, `img_path`, `created_by`, `created_dt`) VALUES
(13, 17, 'halloween.jpg', 'admin@gmail.com', '2021-10-11 06:30:14'),
(14, 20, '79947294.png', 'admin@gmail.com', '2021-10-18 12:04:35'),
(16, 20, 'Christmas-Wishes-Feature.jpg', 'admin@gmail.com', '2021-10-18 12:07:11'),
(19, 24, 'birthday.jpg', 'admin@gmail.com', '2021-10-27 06:40:37'),
(20, 25, 'anniversary.jpg', 'admin@gmail.com', '2021-10-27 06:41:42');

-- --------------------------------------------------------

--
-- Table structure for table `td_subscription`
--

CREATE TABLE `td_subscription` (
  `id` bigint(22) NOT NULL,
  `restaurant_id` bigint(22) NOT NULL,
  `subscription_date` datetime NOT NULL,
  `package_id` bigint(22) NOT NULL,
  `dedcution_date` datetime NOT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `created_dt` datetime DEFAULT NULL,
  `modified_by` varchar(50) DEFAULT NULL,
  `modified_dt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `td_users`
--

CREATE TABLE `td_users` (
  `id` bigint(22) NOT NULL,
  `restaurant_id` bigint(22) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `pwd` varchar(100) NOT NULL,
  `active_flag` enum('Y','N') NOT NULL DEFAULT 'N',
  `last_login_dt` datetime DEFAULT NULL,
  `modified_by` varchar(50) DEFAULT NULL,
  `modified_dt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `td_users`
--

INSERT INTO `td_users` (`id`, `restaurant_id`, `email_id`, `pwd`, `active_flag`, `last_login_dt`, `modified_by`, `modified_dt`) VALUES
(1, 0, 'admin@gmail.com', '$2b$10$mvFwPgBGvSgMCuUWSP.uNedd22Er6UeZxNMN.ahqq9lVn62utY5b2', 'Y', '2022-01-18 16:10:01', NULL, NULL),
(2, 1, 'somnath.thakur16@gmail.com', '$2b$10$mvFwPgBGvSgMCuUWSP.uNedd22Er6UeZxNMN.ahqq9lVn62utY5b2', 'Y', '2022-01-18 09:46:14', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `td_venue_custom`
--

CREATE TABLE `td_venue_custom` (
  `id` int(11) NOT NULL,
  `restaurant_id` bigint(22) NOT NULL,
  `venue_name` varchar(100) NOT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `created_dt` datetime DEFAULT NULL,
  `modified_by` varchar(50) DEFAULT NULL,
  `modified_dt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `td_venue_custom`
--

INSERT INTO `td_venue_custom` (`id`, `restaurant_id`, `venue_name`, `created_by`, `created_dt`, `modified_by`, `modified_dt`) VALUES
(1, 1, 'Sports Bars', 'admin@gmail.com', '2021-12-24 15:47:49', 'admin@gmail.com', '2021-12-24 16:20:31'),
(5, 1, 'Kennilworth Lounge', 'admin@gmail.com', '2021-12-24 16:03:53', 'admin@gmail.com', '2021-12-24 16:21:37'),
(8, 1, 'Garden Bar', 'admin@gmail.com', '2022-01-05 19:22:34', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `td_venue_menu_custom`
--

CREATE TABLE `td_venue_menu_custom` (
  `id` int(11) NOT NULL,
  `restaurant_id` bigint(22) NOT NULL,
  `venue_id` int(11) NOT NULL,
  `menu_name` varchar(100) NOT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `created_dt` datetime DEFAULT NULL,
  `modified_by` varchar(50) DEFAULT NULL,
  `modified_dt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `td_venue_menu_custom`
--

INSERT INTO `td_venue_menu_custom` (`id`, `restaurant_id`, `venue_id`, `menu_name`, `created_by`, `created_dt`, `modified_by`, `modified_dt`) VALUES
(1, 1, 5, 'Dinner', 'admin@gmail.com', '2021-12-24 16:38:18', 'admin@gmail.com', '2021-12-24 17:02:50'),
(3, 1, 1, 'Brunch', 'admin@gmail.com', '2021-12-24 16:53:51', 'admin@gmail.com', '2021-12-24 16:57:20'),
(7, 1, 5, 'Lunch', 'admin@gmail.com', '2022-01-05 19:19:44', NULL, NULL),
(8, 1, 1, 'Add', 'admin@gmail.com', '2022-01-06 13:02:42', 'admin@gmail.com', '2022-01-06 13:09:56'),
(12, 1, 1, 'wwf', 'admin@gmail.com', '2022-01-06 13:17:45', 'admin@gmail.com', '2022-01-06 13:17:57');

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `id` int(11) NOT NULL,
  `res_id` varchar(50) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `md_config_email`
--
ALTER TABLE `md_config_email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `md_config_inst`
--
ALTER TABLE `md_config_inst`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `md_config_menu`
--
ALTER TABLE `md_config_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `md_country`
--
ALTER TABLE `md_country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `md_email_type`
--
ALTER TABLE `md_email_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `md_holder_cling`
--
ALTER TABLE `md_holder_cling`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `md_items`
--
ALTER TABLE `md_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `md_item_description`
--
ALTER TABLE `md_item_description`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `item_id` (`item_id`);

--
-- Indexes for table `md_menu`
--
ALTER TABLE `md_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `md_package_custom`
--
ALTER TABLE `md_package_custom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `md_parm_value`
--
ALTER TABLE `md_parm_value`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `md_promotion_admin`
--
ALTER TABLE `md_promotion_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `md_promotion_restaurant`
--
ALTER TABLE `md_promotion_restaurant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `md_promo_calander`
--
ALTER TABLE `md_promo_calander`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `md_section`
--
ALTER TABLE `md_section`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `md_special_category`
--
ALTER TABLE `md_special_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `md_time_zone`
--
ALTER TABLE `md_time_zone`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `md_url`
--
ALTER TABLE `md_url`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `td_about`
--
ALTER TABLE `td_about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `td_calendar`
--
ALTER TABLE `td_calendar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `td_contacts_custom`
--
ALTER TABLE `td_contacts_custom`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `phone_no` (`phone_no`);

--
-- Indexes for table `td_date_time_custom`
--
ALTER TABLE `td_date_time_custom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `td_logo`
--
ALTER TABLE `td_logo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `td_menu_image_custom`
--
ALTER TABLE `td_menu_image_custom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `td_menu_notice`
--
ALTER TABLE `td_menu_notice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `td_menu_request`
--
ALTER TABLE `td_menu_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `td_order_items_custom`
--
ALTER TABLE `td_order_items_custom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `td_other_image_custom`
--
ALTER TABLE `td_other_image_custom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `td_payment`
--
ALTER TABLE `td_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `td_promotions`
--
ALTER TABLE `td_promotions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `td_section_image_request`
--
ALTER TABLE `td_section_image_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `td_special_data`
--
ALTER TABLE `td_special_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `td_special_date_time`
--
ALTER TABLE `td_special_date_time`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `td_stock_image`
--
ALTER TABLE `td_stock_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `td_subscription`
--
ALTER TABLE `td_subscription`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `td_users`
--
ALTER TABLE `td_users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `email_id` (`email_id`);

--
-- Indexes for table `td_venue_custom`
--
ALTER TABLE `td_venue_custom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `td_venue_menu_custom`
--
ALTER TABLE `td_venue_menu_custom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `md_config_email`
--
ALTER TABLE `md_config_email`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `md_config_inst`
--
ALTER TABLE `md_config_inst`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `md_config_menu`
--
ALTER TABLE `md_config_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `md_email_type`
--
ALTER TABLE `md_email_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `md_items`
--
ALTER TABLE `md_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `md_item_description`
--
ALTER TABLE `md_item_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `md_menu`
--
ALTER TABLE `md_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `md_package_custom`
--
ALTER TABLE `md_package_custom`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `md_parm_value`
--
ALTER TABLE `md_parm_value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `md_promotion_admin`
--
ALTER TABLE `md_promotion_admin`
  MODIFY `id` bigint(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `md_promotion_restaurant`
--
ALTER TABLE `md_promotion_restaurant`
  MODIFY `id` bigint(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `md_section`
--
ALTER TABLE `md_section`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `md_special_category`
--
ALTER TABLE `md_special_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `md_time_zone`
--
ALTER TABLE `md_time_zone`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `md_url`
--
ALTER TABLE `md_url`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `td_about`
--
ALTER TABLE `td_about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `td_calendar`
--
ALTER TABLE `td_calendar`
  MODIFY `id` bigint(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `td_contacts_custom`
--
ALTER TABLE `td_contacts_custom`
  MODIFY `id` bigint(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `td_date_time_custom`
--
ALTER TABLE `td_date_time_custom`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `td_logo`
--
ALTER TABLE `td_logo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `td_menu_image_custom`
--
ALTER TABLE `td_menu_image_custom`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `td_menu_notice`
--
ALTER TABLE `td_menu_notice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `td_menu_request`
--
ALTER TABLE `td_menu_request`
  MODIFY `id` bigint(22) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `td_order_items_custom`
--
ALTER TABLE `td_order_items_custom`
  MODIFY `id` bigint(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `td_other_image_custom`
--
ALTER TABLE `td_other_image_custom`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `td_promotions`
--
ALTER TABLE `td_promotions`
  MODIFY `id` bigint(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `td_section_image_request`
--
ALTER TABLE `td_section_image_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `td_special_data`
--
ALTER TABLE `td_special_data`
  MODIFY `id` bigint(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `td_special_date_time`
--
ALTER TABLE `td_special_date_time`
  MODIFY `id` bigint(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=308;

--
-- AUTO_INCREMENT for table `td_stock_image`
--
ALTER TABLE `td_stock_image`
  MODIFY `id` bigint(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `td_users`
--
ALTER TABLE `td_users`
  MODIFY `id` bigint(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `td_venue_custom`
--
ALTER TABLE `td_venue_custom`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `td_venue_menu_custom`
--
ALTER TABLE `td_venue_menu_custom`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
