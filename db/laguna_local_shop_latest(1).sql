-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 10, 2023 at 02:39 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laguna_local_shop_latest`
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
(2, 2, 'Your order has been placed successfully.', 'admin@gmail.com', '2021-11-25 13:15:41', 'admin@gmail.com', '2022-12-30 09:31:32'),
(3, 3, 'We are happy to have you as a part of the Shop Local Laguna family!\nYour payment has been done successfully.', 'admin@gmail.com', '2021-11-25 13:16:25', NULL, NULL),
(4, 5, '<p><font color=\"#000000\"><font face=\"Arial\"><font>Dear <b>#[contact-person]</b> at the <b>#[hotel-name]</b></font></font></font></p><p><font color=\"#000000\"><font face=\"Arial\"><font>We would like to thank you for your interest in the above platform ad confirm we will be in contact with you very shortly to discuss this in more detail.</font></font></font></p><p><br></p><p><font color=\"#000000\"><font face=\"Arial\"><font>If for any reason your schedule changes and you would like to re-arrange the day and time you indicated for us to call, which was <b>#[contact-time]</b>, then please do not hesitate to reply to this email.</font></font></font></p><p><br></p><p><font color=\"#000000\"><font face=\"Arial\"><font>Kind regards</font></font></font></p><p><font color=\"#000000\"><font face=\"Arial\"><font>Cindy Ferguson</font></font></font></p>', 'admin@gmail.com', '2022-01-27 09:55:01', NULL, NULL),
(5, 6, '<p><font color=\"#000000\"><font face=\"Arial\"><font>An enquiry form has just been completed by the following Hotel, Please make contact with them to discuss their requirement on the date and time indicated.</font></font></font></p><p><font color=\"#000000\"><font face=\"Roboto, sans-serif\"><font><font face=\"Arial\">Hotel Name: </font><font face=\"Arial\"><b>#[hotel-name]</span></b></font></font></font></font></font></p><p><font color=\"#000000\"><font face=\"Arial\"><font><span>Address: <b>#[address]</b></span></font></font></font></p><p><font color=\"#000000\"><font face=\"Arial\"><font><span>Zip Code: <b>#[zip-code]</b></span></font></font></font></p><p><font color=\"#000000\"><font face=\"Roboto, sans-serif\"><font><font face=\"Arial\"><font><span>Contact Person: </span></font></font><font face=\"Arial\"><font><b><span>#[contact-person]</span></b></font></font></font></font></font></p><p><font color=\"#000000\"><font face=\"Arial\"><font>Mobile: <b>#[mobile]</b></font></font></font></p><p><font color=\"#000000\"><font face=\"Arial\"><font>Email: <b>#[email]</b></font></font></font></p><p><font color=\"#000000\"><font face=\"Arial\"><font>Best Day to contact: <b>#[contact-time]</b></font></font></font></p>', 'admin@gmail.com', '2022-01-27 09:55:52', NULL, NULL);

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
(1, 'This is a sample help text for menu. ', 'This is a sample help text for calendar. ', 'This is a sample help text for QR Code signage. ', 'This is a sample help text for birthday/anniversary. ', 'This is a sample help text for contact information. ', '<font face=\"Arial\">This is a rule set for birthdays and anniversary. There are certain rules to be followed if someone has chosen birthday/anniversary. The facility is free by default and it is up to the admin to decide whether is free or not. The rules are as followed:</font><p></p><ol><li><font face=\"Arial\">Rule 1</font></li><li><font face=\"Arial\">Rule 2</font></li><li><font face=\"Arial\">Rule 3</font></li></ol><p></p>', '<font face=\"Arial\">This is a rule set for event calendar. There are certain rules to be followed if someone has chosen event calendar. The facility is free by default and it is up to the admin to decide whether is free or not. The rules are as followed:</font><p></p><ol><li><font face=\"Arial\">Rule 1</font></li><li><font face=\"Arial\">Rule 2</font></li><li><font face=\"Arial\">Rule 3</font></li></ol><p></p>', 'dif_THA.png', 'We are happy to have you as a part of the Shop Local Laguna family!\nWe\'ve received your order, including all photos and data (or link to your website\nfor us to collect), and will now commence with the development of your Digital\nMenu.\nIf for any reason there are any problems then we will contact you by email.\nWhat\'s Next?\nBefore your Digital Menu can go live you must check that all of the menu\ncontent is correct, and meets with your overall approval. You should do this by\nscanning the QR Code contained in the completion email we send you, this way\nyou will experience (the same way that your customers will) viewing and\nnavigating your new menu platform on your mobile.\nIf everything is in order then you will Approve the Menu.\nHowever if there are any errors or omissions you will identify those issues in the\nform and they would be corrected by our technical support team and once\ncompleted you will receive the confirmation email again. Any future\namendments to the Menu will be handled by you or your authorized staff, from\nwithin your platform\'s back-office.\nOnce you\'ve provided us with your final approval, your Menu will go LIVE. You\nwill receive an email which includes a link to your sign-in page, where your\nUsername will be your registered email address. We will provide a temporary\npassword which expires 2 hours after first logging in, so the first thing you must\ndo is to create your new password.', 'dif_cov_rest_cov.jpg', 'admin@gmail.com', '2021-11-18 12:41:22', 'admin@gmail.com', '2023-01-09 05:44:18');

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
(1, '#0d0d0d', '<div><font face=\"Arial\">This is a sample footer text and this is a sample&#160;</font><a href=\"https://online.kfc.co.in/\" target=\"_blank\">link</a><font face=\"Arial\">.</font></div>', '#ffffff', '#3600fa');

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
-- Table structure for table `md_department`
--

CREATE TABLE `md_department` (
  `id` int(11) NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `dept_name` varchar(50) NOT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `created_dt` datetime DEFAULT NULL,
  `modified_by` varchar(50) DEFAULT NULL,
  `modified_dt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `md_department`
--

INSERT INTO `md_department` (`id`, `hotel_id`, `dept_name`, `created_by`, `created_dt`, `modified_by`, `modified_dt`) VALUES
(1, 1, 'Front Office', 'admin@gmail.com', '2023-02-06 13:56:19', NULL, NULL),
(2, 1, 'Housekeeping', 'admin@gmail.com', '2023-02-06 13:56:52', NULL, NULL),
(3, 1, 'Food & Beverage service', 'admin@gmail.com', '2023-02-06 14:37:04', NULL, NULL),
(4, 1, 'Kitchen', 'admin@gmail.com', '2023-02-06 15:03:49', 'admin@gmail.com', '2023-02-06 15:15:41'),
(5, 1, 'Engineering & Maintenance', 'admin@gmail.com', '2023-02-06 15:04:05', NULL, NULL),
(6, 1, 'Accounts', 'admin@gmail.com', '2023-02-06 15:03:49', NULL, NULL),
(7, 1, 'Security', 'admin@gmail.com', '2023-02-06 00:00:00', NULL, NULL),
(8, 1, 'Human Resources', 'admin@gmail.com', '2023-02-06 15:03:49', NULL, NULL),
(9, 1, 'Sales & Marketing', 'admin@gmail.com', '2023-02-06 15:04:05', NULL, NULL),
(10, 1, 'Purchase', 'admin@gmail.com', '2023-02-06 00:00:00', NULL, NULL),
(11, 1, 'Information Technology', 'admin@gmail.com', '2023-02-06 00:00:00', NULL, NULL);

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
(3, 'Login Credential', 'admin@gmail.com', '2021-11-05 00:00:00'),
(4, 'Order Confirm', 'admin@gmail.com', '2022-01-20 18:19:34'),
(5, 'Enquiry Restaurant', NULL, NULL),
(6, 'Enquiry Admin', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `md_employee`
--

CREATE TABLE `md_employee` (
  `id` int(11) NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `emp_name` varchar(50) NOT NULL,
  `emp_dept_id` int(11) NOT NULL COMMENT 'md_department->id',
  `mobile_no` varchar(20) DEFAULT NULL,
  `email_id` varchar(50) DEFAULT NULL,
  `manager_flag` enum('Y','N') NOT NULL DEFAULT 'N',
  `pref_lang` varchar(50) DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `created_dt` datetime DEFAULT NULL,
  `modified_by` varchar(50) DEFAULT NULL,
  `modified_dt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `md_employee`
--

INSERT INTO `md_employee` (`id`, `hotel_id`, `emp_id`, `emp_name`, `emp_dept_id`, `mobile_no`, `email_id`, `manager_flag`, `pref_lang`, `created_by`, `created_dt`, `modified_by`, `modified_dt`) VALUES
(1, 1, 1, 'Cindy ', 1, '999999999', 'cindy@gmail.com', 'N', NULL, 'admin@gmail.com', '2023-02-08 15:26:00', NULL, NULL),
(2, 1, 2, 'Brian', 2, '9836751294', 'brian@hotmail.com', 'Y', NULL, 'admin@gmail.com', '2023-02-08 15:31:51', 'admin@gmail.com', '2023-02-08 15:42:41'),
(3, 1, 3, 'Utsab Roy', 3, '9999', 'utsab@gmail.com', 'N', NULL, 'admin@gmail.com', '2023-02-08 15:33:31', 'admin@gmail.com', '2023-02-08 15:45:46'),
(4, 1, 4, 'Debdas da', 4, '(949) 494-1956', 'debdas@gmail.com', 'Y', NULL, 'admin@gmail.com', '2023-02-08 15:43:04', NULL, NULL),
(5, 1, 5, 'Sayantika', 2, '9836751294', 'sayant@gmail.com', 'N', NULL, 'admin@gmail.com', '2023-02-08 15:44:14', NULL, NULL),
(6, 1, 6, 'Tanmoy Mondal', 5, '9999999', 'mondal.tanmoy@synergicsoftek.com', 'Y', NULL, 'admin@gmail.com', '2023-02-08 15:44:43', 'admin@gmail.com', '2023-02-08 15:53:53');

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
(5, 'Special', 'This is a demo instruction for special menu. Once you choose them, you can enter the details and the admin will approve it.\nRemember Special Menu is for special occasion only', 0, NULL, NULL, 'admin@gmail.com', '2022-01-20 08:13:15'),
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
(1, 1, 'Custom', 3, 'Y', 15.00, 20.00, 'admin@gmail.com', '2021-12-24 12:02:22', 'admin@gmail.com', '2021-12-24 12:12:34'),
(2, 2, 'Custom', 3, 'Y', 200.00, 25.00, 'admin@gmail.com', '2021-12-24 12:02:22', 'admin@gmail.com', '2021-12-24 12:12:34');

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
-- Table structure for table `md_promotion_admin_custom`
--

CREATE TABLE `md_promotion_admin_custom` (
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
-- Dumping data for table `md_promotion_admin_custom`
--

INSERT INTO `md_promotion_admin_custom` (`id`, `intro`, `confirm_email`, `image`, `pop_up_offer_title`, `pop_up_offer_body`, `questions1`, `questions2`, `questions3`, `mailing_email_subject`, `mailing_email_body`, `privacy`, `authorization`, `back_color`, `created_by`, `created_at`, `modified_by`, `modified_at`) VALUES
(1, 'We would love to make your next Birthday/Anniversary extra special.', 'We would like to thank you for registering on our Birthday/Anniversary Offer program and will contact you again a couple of weeks before the date/s you have provided. Please show this email to our staff who will make sure you receive your FREE Beverage. Many thanks and enjoy your meal.', 'birthday.jpg', 'Free Drinks', 'Register now and get a free drinks with your meal. Show the code you receive by text to our waiter', 'What hobbies/interests do you have? ', 'What is your favorit sport?', 'Where is your favorit vacation destination?', 'A [Happy Birthday] PRESENT from [The Cliff Restaur', 'Hello [name from promotion registration]!\n			\nWe are SO HAPPY to hear, it is almost your [Birthday]!\n\nWe would like to invite you to JOIN US on your [Birthday], and receive a SPECIAL SURPRISE!\n\nSimply make a reservation, then show the waiter/waitress this email when you are first seated.\n\nSee you soon!\n[Restaurant\'s Contact Name]\n\n[Name of Restaurant]\n[Address]\n[Phone]\n[Email]\n[URL to MENU LANDING PAGE] (ie. https://www.shoplocallaguna.com/restaurants/the-cliff/LandingPage.php)\n			\nSAVE THIS INF', '    This Privacy Policy describes how Wiley collects and uses the personal information you provide to Wiley. It also describes the choices available to you regarding our use of your personal information ', '    Personal information will not be kept longer than is necessary for the purpose.', '#e68484', 'admin@gmail.com', '2021-10-27 06:37:26', 'admin@gmail.com', '2021-11-29 11:19:08');

-- --------------------------------------------------------

--
-- Table structure for table `md_promotion_restaurant_custom`
--

CREATE TABLE `md_promotion_restaurant_custom` (
  `id` bigint(22) NOT NULL,
  `restaurant_id` bigint(22) NOT NULL,
  `venue_id` int(11) NOT NULL,
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
-- Dumping data for table `md_promotion_restaurant_custom`
--

INSERT INTO `md_promotion_restaurant_custom` (`id`, `restaurant_id`, `venue_id`, `intro`, `confirm_email`, `image`, `pop_up_offer_title`, `pop_up_offer_body`, `questions1`, `questions2`, `questions3`, `mailing_email_subject`, `mailing_email_body`, `menu_id`, `month_day`, `status_id`, `created_by`, `created_at`, `modified_by`, `modified_at`) VALUES
(1, 1, 9, 'We would love to make your next Birthday/Anniversary extra special.', 'We would like to thank you for registering on our Birthday/Anniversary Offer program and will contact you again a couple of weeks before the date/s you have provided. Please show this email to our staff who will make sure you receive your FREE Beverage. Many thanks and enjoy your meal.', 'birthday.jpg', 'Free Drinks', 'Register now and get a free drinks with your meal. Show the code you receive by text to our waiter', 'What hobbies/interests do you have? ', 'What is your favorit sport?', 'Where is your favorit vacation destination?', 'A [Happy Birthday] PRESENT from [The Cliff Restaur', 'Hello [name from promotion registration]!\n			\nWe are SO HAPPY to hear, it is almost your [Birthday]!\n\nWe would like to invite you to JOIN US on your [Birthday], and receive a SPECIAL SURPRISE!\n\nSimply make a reservation, then show the waiter/waitress this email when you are first seated.\n\nSee you soon!\n[Restaurant\'s Contact Name]\n\n[Name of Restaurant]\n[Address]\n[Phone]\n[Email]\n[URL to MENU LANDING PAGE] (ie. https://www.shoplocallaguna.com/restaurants/the-cliff/LandingPage.php)\n			\nSAVE THIS INF', 0, 1, '0', '4', '2022-02-04 11:45:30', '4', '2022-02-04 14:38:11');

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
-- Table structure for table `md_restaurant_items`
--

CREATE TABLE `md_restaurant_items` (
  `item_id` int(11) NOT NULL,
  `restaurant_id` int(10) NOT NULL,
  `menu_id` enum('B','L','D','R','S','A','V') NOT NULL COMMENT 'B:Breakfast L:Lunch D:Dinner R:Brunch S:Special A:Bar V:Menu Service',
  `section_id` int(11) NOT NULL,
  `item_name` varchar(100) NOT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `created_dt` datetime DEFAULT NULL,
  `modified_by` varchar(50) DEFAULT NULL,
  `modified_dt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `md_restaurant_item_description`
--

CREATE TABLE `md_restaurant_item_description` (
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
-- Dumping data for table `md_restaurant_item_description`
--

INSERT INTO `md_restaurant_item_description` (`item_id`, `item_price`, `item_desc`, `item_note`, `note_color`, `note_back_color`, `created_by`, `created_dt`, `modified_by`, `modified_dt`) VALUES
(1, 34.00, 'Jumbo Pizza is available at the very best.', 'IN STOCK', '#04ff00', '#ffffff', '4', '2022-01-24 11:10:53', NULL, NULL),
(2, 99.00, 'Breakfast buritos now available at cheaper rates', 'OUT OF STOCK', '#ff0000', '#ffffff', '4', '2022-01-24 11:11:32', NULL, NULL),
(3, 77.00, 'Afghani Burger at its best', '', '#ff0000', '#ffffff', '4', '2022-01-24 11:11:58', NULL, NULL),
(4, 67.00, 'Lasagna at its very best', '', '#ff0000', '#ffffff', '4', '2022-01-24 11:12:48', NULL, NULL),
(5, 102.00, 'Turkey from Turkey', 'OUT OF STOCK', '#ff0019', '#ffffff', '4', '2022-01-24 11:14:22', NULL, NULL),
(36, 3.50, '(vegan)', '', NULL, NULL, '34', '2021-11-01 13:16:00', NULL, NULL),
(37, 8.00, 'with Korean BBQ Ketchup, sesame, scallions', '', NULL, NULL, '34', '2021-11-01 13:14:08', NULL, NULL),
(38, 6.00, 'with Korean BBQ Ketchup, sesame, scallions (vegan)', '', NULL, NULL, '34', '2021-11-01 13:15:20', NULL, NULL),
(39, 8.00, 'Mr Wolf ’s spiced bean salad, radicchio', '', NULL, NULL, '34', '2021-11-01 13:16:47', NULL, NULL),
(40, 8.00, 'crispy oyster mushroom, vegan sheeze, hot sauce, pumpkin seeds (vegan)', '', NULL, NULL, '34', '2021-11-01 13:18:40', NULL, NULL),
(41, 6.00, 'croutes, crusty bread (vegetarian)', '', NULL, NULL, '34', '2021-11-01 13:21:53', NULL, NULL),
(42, 7.00, 'Heathers Harvest carrot chutney, artisan toast', '', NULL, NULL, '34', '2021-11-01 13:22:15', NULL, NULL),
(43, 9.00, 'smoked salmon, crayfish & crab, lemon & lobster mayo, gem hearts, caviar, buttered granary bread', '', NULL, NULL, '34', '2021-11-01 13:23:09', NULL, NULL),
(44, 6.50, 'sage aioli, lemon', '', NULL, NULL, '34', '2021-11-01 13:23:41', NULL, NULL),
(45, 6.50, 'dukkah hummus, ful medames, olives, pomegranate molasses, warm pitta', '', NULL, NULL, '34', '2021-11-01 13:24:11', NULL, NULL),
(46, 19.00, ' dukkah hummus, ful madames, crispy halloumi, marinated olives, crispy falafels, \nwarm pittas  (vegetarian) (can be made vegan)', '', NULL, NULL, '34', '2021-11-01 13:25:03', NULL, NULL),
(47, 24.00, 'half crispy duckling with hoisin, scallions, cucumber & pancakes, chicken satay skewers with bang bang sauce, firecracker noodle salad, prawn cracker', '', NULL, NULL, '34', '2021-11-01 13:25:39', NULL, NULL),
(48, 22.00, 'Moydens cheeses, pork pie, cured meats, terrine of the day, pickles, olives, breads', '', NULL, NULL, '34', '2021-11-01 13:26:14', NULL, NULL),
(49, 14.00, 'minted mushy peas, tartare sauce', '', NULL, NULL, '34', '2021-11-01 13:26:47', NULL, NULL),
(50, 14.00, 'Hollowdene hens eggs, chips', '', NULL, NULL, '34', '2021-11-01 13:27:26', NULL, NULL),
(51, 14.50, 'acorn buttered vegetables, chips', '', NULL, NULL, '34', '2021-11-01 13:28:01', NULL, NULL),
(52, 14.50, 'Moydens Wrekin blue, tomato, pickle, Korean ketchup, toasted brioche, chips ', '', NULL, NULL, '34', '2021-11-01 13:28:41', NULL, NULL),
(53, 9.00, 'summer greens, pumpkin seeds  (vegan)', '', NULL, NULL, '34', '2021-11-01 13:29:28', '34', '2021-11-01 13:35:13'),
(54, 9.00, 'succulent chicken, smoked bacon, Caesar mayo, gem, beef tomato, toasted artisan \nbread, Kuhn pickle', '', NULL, NULL, '34', '2021-11-01 13:36:01', NULL, NULL),
(55, 6.50, 'Delicious', '', NULL, NULL, '34', '2021-11-01 13:36:52', NULL, NULL),
(56, 8.50, 'tartare, gem, beef tomato', '', NULL, NULL, '34', '2021-11-01 13:37:22', NULL, NULL),
(57, 8.00, 'crisp apple, grapes, celery & toasted walnut, garden herb vegan mayo (vegan)', '', NULL, NULL, '34', '2021-11-01 13:38:11', NULL, NULL),
(58, 10.00, 'Moydens Wrekin white, gem, beef tomato, horseradish mayo, red onions', '', NULL, NULL, '34', '2021-11-01 13:40:36', NULL, NULL),
(59, 15.50, 'firecracker rice noodles, cucumber, scallions, miso roasted cashews ', '', NULL, NULL, '34', '2021-11-01 13:41:17', NULL, NULL),
(60, 13.50, 'chicken & smoked bacon, gem leaves, croutons, caesar dressing, anchovies, parmesan', '', NULL, NULL, '34', '2021-11-01 13:44:46', NULL, NULL),
(61, 12.50, 'sun-dried tomatoes, cucumber, red onion, marinated olives, barrel aged feta, gem, oregano & marjoram dressing', '', NULL, NULL, '34', '2021-11-01 13:45:23', NULL, NULL),
(62, 11.50, 'tempura avocado, hot firecracker rice noodles with beansprouts, carrot pickle, nam \nprik dressing, cucumber & scallions Bao bun, hot sauce', '', NULL, NULL, '34', '2021-11-01 13:46:05', NULL, NULL),
(63, 22.75, 'delicious', '', NULL, NULL, '34', '2021-11-01 13:47:23', NULL, NULL),
(64, 22.75, 'Delicious', '', NULL, NULL, '34', '2021-11-01 13:47:51', NULL, NULL),
(65, 7.00, 'biscoff, popping candy ', '', NULL, NULL, '34', '2021-11-01 14:18:09', NULL, NULL),
(66, 6.00, 'crumble crumbs, baby apples', '', NULL, NULL, '34', '2021-11-01 14:18:42', NULL, NULL),
(67, 6.00, 'butterscotch sauce, pouring cream or Madagascan vanilla bean ice cream ', '', NULL, NULL, '34', '2021-11-01 14:19:24', NULL, NULL),
(68, 8.00, 'please ask your server for details', '', NULL, NULL, '34', '2021-11-01 14:19:56', NULL, NULL),
(69, 7.00, 'meringue, chantilly, berries, cherry syrup', '', NULL, NULL, '34', '2021-11-01 14:20:25', NULL, NULL),
(70, 7.00, 'please ask your server for details', '', NULL, NULL, '34', '2021-11-01 14:21:05', NULL, NULL),
(71, 5.00, 'please ask your server for details (vegan)', '', NULL, NULL, '34', '2021-11-01 14:22:12', NULL, NULL),
(72, 9.00, 'please ask your server for details selection of crackers, celery, grapes, Heathers Harvest carrot chutney', '', NULL, NULL, '34', '2021-11-01 14:22:32', NULL, NULL),
(73, 14.00, 'summer greens, pumpkin seeds (vegan)', '', NULL, NULL, '34', '2021-11-01 13:34:56', NULL, NULL),
(102, 3.50, 'Our own delicious recipe (vegan)', '', '#ffffff', '#000000', '34', '2022-01-16 23:11:07', '34', '2022-01-19 15:40:31'),
(103, 8.00, 'with Korean BBQ sauce, sesame, scallions ', '', '#ffffff', '#000000', '34', '2022-01-16 23:11:49', NULL, NULL),
(104, 6.00, 'with crispy garlic & chilli sauce, sesame, scallions', '', '#ffffff', '#000000', '34', '2022-01-16 23:12:30', NULL, NULL),
(105, 15.00, 'Crispy duck, oyster sauce, Chinatown noodles, greens, crispy chilli, kochajang, sesame', '', '#ffffff', '#000000', '34', '2022-01-16 23:13:08', NULL, NULL),
(106, 11.50, 'Tempura avocado, hot firecracker rice noodles with beansprouts, carrot pickle, nam\nprik dressing, cucumber & scallions Bao bun, hot sauce', '', '#ffffff', '#000000', '34', '2022-01-16 23:13:51', NULL, NULL),
(107, 14.00, 'Corbett\'s roast beef, pork & lamb, stuffing, gravy pot & roasties', '', '#ffffff', '#000000', '34', '2022-01-16 23:14:24', NULL, NULL),
(108, 7.50, 'From local producers', 'Served with French Fries *', '#ffffff', '#000000', '34', '2022-01-16 23:15:32', NULL, NULL),
(109, 10.00, 'Lobster mayo, cucumber, lemon', '', '#ffffff', '#000000', '34', '2022-01-16 23:16:07', NULL, NULL),
(110, 10.00, 'Chicken, harissa, halloumi, tomato, nuts & seeds', '', '#ffffff', '#000000', '34', '2022-01-16 23:16:41', NULL, NULL),
(111, 9.00, 'Summer greens, pumpkin seeds', 'Large 12.00\nVegan', '#ffffff', '#000000', '34', '2022-01-16 23:17:55', NULL, NULL),
(112, 14.00, 'Shropshire chicken, bacon, anchovies, croutons, gem, Caesar dressing, parmesan', '', '#ffffff', '#000000', '34', '2022-01-16 23:18:28', NULL, NULL),
(113, 15.50, 'Firecracker rice noodles, cucumber, scallions, miso roasted cashews ', '', '#ffffff', '#000000', '34', '2022-01-16 23:19:03', NULL, NULL),
(114, 14.00, 'Hollowdene hens eggs, chips', '', '#ffffff', '#000000', '34', '2022-01-16 23:19:56', NULL, NULL),
(115, 13.00, 'Stuffing, rich pan jus', '', '#ffffff', '#000000', '34', '2022-01-16 23:20:43', NULL, NULL),
(116, 14.50, 'Stuffing, cracklings, rich pan jus ', '', '#ffffff', '#000000', '34', '2022-01-16 23:21:21', NULL, NULL),
(117, 15.00, 'Yorkshire pudding, rich pan jus', '', '#ffffff', '#000000', '34', '2022-01-16 23:21:51', NULL, NULL),
(118, 15.00, 'Rich pan jus', 'THIS ITEM IS SOLD OUT', '#ffffff', '#e70808', '34', '2022-01-16 23:22:25', '34', '2022-01-19 14:37:49'),
(119, 19.00, 'Corbett\'s beef, pork & lamb, Yorkshire pudding, stuffing, pigs in blankets, rich pan jus ', '', '#ffffff', '#000000', '34', '2022-01-16 23:22:58', NULL, NULL),
(120, 3.50, 'please ask your server for details', '', '#ffffff', '#000000', '34', '2022-01-19 14:08:56', '34', '2022-01-19 14:23:44'),
(121, 3.50, 'please ask your server for details', '', '#ffffff', '#000000', '34', '2022-01-19 14:09:31', '34', '2022-01-19 14:24:03'),
(122, 3.50, 'please ask your server for details', '', '#ffffff', '#000000', '34', '2022-01-19 14:10:26', '34', '2022-01-19 14:24:23'),
(123, 3.50, 'please ask your server for details', '', '#ffffff', '#000000', '34', '2022-01-19 14:11:12', '34', '2022-01-19 14:24:59'),
(124, 3.50, 'please ask your server for details', '', '#ffffff', '#000000', '34', '2022-01-19 14:11:34', '34', '2022-01-19 14:25:24'),
(125, 3.50, 'please ask your server for details', '', '#ffffff', '#000000', '34', '2022-01-19 14:11:52', '34', '2022-01-19 14:26:09'),
(126, 3.50, 'please ask your server for details', '', '#ffffff', '#000000', '34', '2022-01-19 14:12:11', '34', '2022-01-19 14:26:34'),
(127, 3.50, 'please ask your server for details', '', '#ffffff', '#000000', '34', '2022-01-19 14:12:41', '34', '2022-01-19 14:27:13'),
(128, 3.50, 'please ask your server for details', '', '#ffffff', '#000000', '34', '2022-01-19 14:13:00', '34', '2022-01-19 14:29:42'),
(129, 3.50, 'please ask your server for details', '', '#ffffff', '#000000', '34', '2022-01-19 14:13:17', '34', '2022-01-19 14:27:30'),
(130, 3.50, 'please ask your server for details', '', '#ffffff', '#000000', '34', '2022-01-19 14:13:36', '34', '2022-01-19 14:29:23'),
(131, 3.50, 'please ask your server for details', '', '#ffffff', '#000000', '34', '2022-01-19 14:13:55', '34', '2022-01-19 14:28:57'),
(132, 7.00, 'profiteroles, chocolate, butterscotch, berries, cocoa nibs, popping candy', '', '#ffffff', '#000000', '34', '2022-01-19 14:14:59', NULL, NULL),
(133, 6.00, 'butterscotch sauce, pouring cream or Madagascan vanilla bean ice cream', '', '#ffffff', '#000000', '34', '2022-01-19 14:15:34', NULL, NULL),
(134, 8.00, 'please ask your server for details', '', '#ffffff', '#000000', '34', '2022-01-19 14:16:22', NULL, NULL),
(135, 7.00, 'custard cream crumbs, summer berries', '', '#ffffff', '#000000', '34', '2022-01-19 14:16:58', NULL, NULL),
(136, 7.00, 'Shropshire meringue, chantilly, berries, cherry syrup, raspberry crumb', '', '#ffffff', '#000000', '34', '2022-01-19 14:17:30', NULL, NULL),
(137, 5.00, 'please ask your server for details', '', '#ffffff', '#000000', '34', '2022-01-19 14:18:22', '34', '2022-01-19 14:32:00'),
(138, 9.00, 'selection of crackers, celery, grapes, Heather Harvest carrot pickle\n(please ask your server for details)', '', '#ffffff', '#000000', '34', '2022-01-19 14:19:53', NULL, NULL),
(140, 12.00, 'pita bread & fresh vegetables', '', '#ffffff', '#000000', '5', '2023-01-09 06:43:02', '5', '2023-01-09 07:06:21'),
(141, 21.50, 'lobster or crab, egg, tomatoes, marinated vegetables, olives, avocado, romaine & thousand island', '', '#ffffff', '#000000', '5', '2023-01-09 06:46:09', NULL, NULL),
(142, 17.00, 'diced ahi tuna, soy, jalapeno, onion, sesame, wonton bowl & taro chips', '', '#ffffff', '#000000', '5', '2023-01-09 06:43:31', NULL, NULL),
(143, 16.00, 'coconut breaded shrimp, mango & papaya dipping sauce', '', '#ffffff', '#000000', '5', '2023-01-09 06:45:14', NULL, NULL),
(144, 18.50, 'romaine, parmesan, creamy caesar dressing, croutons', '', '#ffffff', '#000000', '5', '2023-01-09 06:46:38', NULL, NULL),
(145, 22.50, 'baby spinach, feta, candied pecans, strawberries, raspberry vinaigrette', '', '#ffffff', '#000000', '5', '2023-01-09 06:47:03', NULL, NULL),
(146, 25.00, 'fettuccini, garlic, capers and butter sauce', '', '#ffffff', '#000000', '5', '2023-01-09 06:47:37', NULL, NULL),
(147, 8.00, 'grilled shrimp, salmon or ahi', '', '#ffffff', '#000000', '5', '2023-01-09 06:48:13', NULL, NULL),
(148, 19.00, 'penne pasta, sun dried tomatoes, creamy tomato sauce', '', '#ffffff', '#000000', '5', '2023-01-09 06:48:42', NULL, NULL),
(149, 20.00, 'anaheim pepper [hand stuffed] with jack, cheddar and parmesan, sour cream & tomatillo salsa, spanish rice & refried beans', '', '#ffffff', '#000000', '5', '2023-01-09 06:49:17', NULL, NULL),
(150, 22.00, 'corn tortillas with marinated chicken & cheddar cheese, topped with guacamole, sour cream, enchilada sauce, spanish rice and refried beans', '', '#ffffff', '#000000', '5', '2023-01-09 06:49:45', NULL, NULL),
(151, 21.00, 'grilled mahi, shredded cabbage, cilantro, red onion, roasted salsa, corn or flour t orllas,  spanish rice & mixed greens', '', '#ffffff', '#000000', '5', '2023-01-09 06:50:27', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `md_section`
--

CREATE TABLE `md_section` (
  `section_id` int(11) NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `restaurant_id` int(10) NOT NULL COMMENT 'td_quest_res_bars',
  `menu_id` enum('B','L','D','R','S','A','V') NOT NULL COMMENT 'B:Breakfast L:Lunch D:Dinner R:Brunch S:Special A:Bar V:Menu Service',
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

INSERT INTO `md_section` (`section_id`, `hotel_id`, `restaurant_id`, `menu_id`, `section_name`, `section_img`, `created_by`, `created_dt`, `modified_by`, `modified_dt`) VALUES
(1, 1, 1, 'B', 'House Specialities', '34_2_sectionAPPETISERS_appetizers.jpg', '1', '2023-01-15 06:38:54', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `md_service_items`
--

CREATE TABLE `md_service_items` (
  `service_item_id` int(11) NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL COMMENT 'md_section',
  `item_name` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `created_by` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL,
  `created_dt` datetime DEFAULT NULL,
  `modified_by` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL,
  `modified_dt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `md_service_items`
--

INSERT INTO `md_service_items` (`service_item_id`, `hotel_id`, `section_id`, `item_name`, `created_by`, `created_dt`, `modified_by`, `modified_dt`) VALUES
(1, 1, 1, 'BREAKFAST BURRITO', '1', '2023-01-15 07:18:32', NULL, NULL),
(2, 1, 1, 'LOX BAGEL', '1', '2023-01-15 07:28:59', '1', '2023-01-15 07:34:26'),
(3, 1, 1, 'STEEL CUT OATS BREAKFASTs', '1', '2023-01-15 07:31:34', '1', '2023-01-30 06:25:52');

-- --------------------------------------------------------

--
-- Table structure for table `md_service_item_description`
--

CREATE TABLE `md_service_item_description` (
  `service_item_id` int(11) NOT NULL,
  `item_price` float(10,2) NOT NULL DEFAULT 0.00,
  `item_desc` text CHARACTER SET utf8mb4 NOT NULL,
  `item_note` text CHARACTER SET utf8mb4 NOT NULL,
  `note_color` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL,
  `note_back_color` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL,
  `created_by` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL,
  `created_dt` datetime DEFAULT NULL,
  `modified_by` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL,
  `modified_dt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `md_service_item_description`
--

INSERT INTO `md_service_item_description` (`service_item_id`, `item_price`, `item_desc`, `item_note`, `note_color`, `note_back_color`, `created_by`, `created_dt`, `modified_by`, `modified_dt`) VALUES
(1, 46.00, 'Choice of bacon or chorizo with scrambled eggs, potatoes & cheese, wrapped in a flour tortilla Served with breakfast potatoes or fresh fruit', 'shwut', '#ffffff', '#000000', '1', '2023-01-15 08:00:02', NULL, NULL),
(2, 5.00, 'Cold smoked salmon, tomato, cucumber, avocado, capers, red onion & cream cheese', 'sdf', '#ffffff', '#000000', '1', '2023-01-15 08:00:32', NULL, NULL);

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
  `hotel_id` int(11) NOT NULL,
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

INSERT INTO `md_url` (`id`, `hotel_id`, `restaurant_id`, `url`, `bitly_url`, `image`, `dynamic_img`, `v_card_img`, `fun_directory_img`, `approval_flag`, `approved_by`, `approved_date`) VALUES
(1, 0, 1, 'https://custom.shoplocal-lagunabeach.com/#/menu/The_Cliff/NC85', 'undefined', NULL, '4_9_dynamic_qr_qr-code (5).png', NULL, NULL, 'U', NULL, NULL),
(2, 0, 1, 'http://localhost:4200/#/menu/The_Cliff/NC8xMA==', 'undefined', NULL, '4_10_dynamic_qr_qr-code (4).png', NULL, NULL, 'U', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `td_about`
--

CREATE TABLE `td_about` (
  `id` int(11) NOT NULL,
  `hotel_id` int(11) NOT NULL,
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

INSERT INTO `td_about` (`id`, `hotel_id`, `restaurant_id`, `about_us`, `created_by`, `created_dt`, `modified_by`, `modified_dt`) VALUES
(1, 0, 1, 'qetaesgasdgsdg', '38', '2021-11-01 22:57:39', '1', '2023-01-14 08:12:45'),
(2, 0, 2, 'A family owned coaching inn on the banks of the River Severn in Shrewsbury\r\n\r\nThis is a magnificent grade II listed building on the outskirts of town', '34', '2021-11-01 10:44:06', NULL, NULL),
(3, 0, 5, 'sdfsdfasdfasdfasdfqwegrwrGVwesdvsaecg', '5', '2023-01-04 10:15:53', '5', '2023-01-04 11:13:17'),
(4, 1, 1, 'about restu', '1', '2023-01-14 10:28:08', NULL, NULL),
(5, 1, 3, 'about bar', '3', '2023-01-14 10:28:29', NULL, NULL),
(6, 1, 2, 'about room', '2', '2023-01-14 10:29:12', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `td_calendar_custom`
--

CREATE TABLE `td_calendar_custom` (
  `id` bigint(22) NOT NULL,
  `restaurant_id` bigint(22) NOT NULL,
  `venue_id` int(11) NOT NULL,
  `event_date` date NOT NULL,
  `event_name` varchar(100) NOT NULL,
  `event_time` time NOT NULL,
  `event_title` varchar(100) NOT NULL,
  `tkt_url` text NOT NULL,
  `description` text NOT NULL,
  `img_path` text DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL,
  `video_url` varchar(100) DEFAULT NULL,
  `event_col` varchar(50) DEFAULT NULL,
  `user_type` enum('R','A','U') NOT NULL DEFAULT 'R',
  `approval_flag` enum('Y','N') NOT NULL DEFAULT 'Y',
  `created_by` varchar(50) DEFAULT NULL,
  `created_dt` datetime DEFAULT NULL,
  `modified_by` varchar(50) DEFAULT NULL,
  `modified_dt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `td_calendar_custom`
--

INSERT INTO `td_calendar_custom` (`id`, `restaurant_id`, `venue_id`, `event_date`, `event_name`, `event_time`, `event_title`, `tkt_url`, `description`, `img_path`, `website`, `video_url`, `event_col`, `user_type`, `approval_flag`, `created_by`, `created_dt`, `modified_by`, `modified_dt`) VALUES
(1, 1, 9, '2022-02-02', 'songs 1', '13:38:00', '', 'ticket url 1', '', '', NULL, NULL, NULL, 'A', 'Y', 'abcd@gmail.com', '2021-12-02 07:08:52', NULL, NULL),
(2, 1, 9, '2022-02-02', 'songs 2', '13:40:00', '', 'ticket url 2', '', '', NULL, NULL, NULL, 'A', 'Y', 'abcd@gmail.com', '2021-12-02 07:10:17', NULL, NULL),
(3, 1, 9, '2022-02-03', 'Event', '12:37:00', '', 'ktc.com', '', '', NULL, NULL, NULL, 'A', 'Y', 'somnath.thakur16@gmail.com', '2021-12-07 07:07:46', NULL, NULL),
(4, 1, 9, '2022-02-03', 'Event', '12:39:00', '', 'event.con', '', '', NULL, NULL, NULL, 'A', 'Y', 'somnatht000@gmail.com', '2021-12-07 07:10:07', NULL, NULL),
(6, 1, 9, '2022-02-05', 'Michael Jackson at the Wembley', '12:15:00', 'Michael Jackson at the Wembley', 'https://en.wikipedia.org/wiki/Michael_Jackson', 'Michael Jackson will be doing his iconic renditions at the legendary stadiums.', '44_calender_mj.jpg', NULL, NULL, NULL, 'A', 'Y', 'admin@gmail.com', '2021-12-11 05:48:39', NULL, NULL),
(7, 1, 9, '2022-02-02', 'songs 1', '13:38:00', '', 'ticket url 1', '', '', NULL, NULL, NULL, 'U', 'Y', 'abcd@gmail.com', '2021-12-02 07:08:52', NULL, NULL),
(8, 1, 9, '2022-02-03', 'Event', '12:37:00', '', 'ktc.com', '', '', NULL, NULL, NULL, 'U', 'Y', 'somnath.thakur16@gmail.com', '2021-12-07 07:07:46', NULL, NULL),
(9, 1, 9, '2022-02-04', 'Event', '12:43:00', '', 'event.com', '', '', NULL, NULL, NULL, 'U', 'Y', 'abcd@gmail.com', '2021-12-07 07:13:16', NULL, NULL),
(10, 1, 9, '2022-02-19', 'Michael Jackson at the Wembley', '12:15:00', 'Michael Jackson at the Wembley', 'https://en.wikipedia.org/wiki/Michael_Jackson', 'Michael Jackson will be doing his iconic renditions at the legendary stadiums.', '44_calender_mj.jpg', NULL, NULL, NULL, 'U', 'Y', 'admin@gmail.com', '2021-12-11 05:48:39', NULL, NULL),
(13, 1, 9, '2022-02-24', 'Kolkata Video Speed Dating - Filter Off', '20:00:00', 'Kolkata Video Speed Dating', 'https://www.eventbrite.com/e/kolkata-video-speed-dating-filter-off-tickets-106558886498?aff=ebdssbcitybrowse', '', '4_calender_48_9_top_salty_desserts_cover.jpg', 'null', 'null', '#5F9EA0', 'A', 'Y', 'abcd@gmail.com', '2021-12-07 07:13:16', 'admin@gmail.com', '2022-02-22 05:21:47'),
(14, 1, 9, '2022-02-23', 'ONLINE : Free Meditation course - Kolkata. Experience the peace & balance', '21:30:00', 'Free Meditation course', 'https://www.eventbrite.com/e/online-free-meditation-course-kolkata-experience-the-peace-balance-tickets-192149272647?aff=ebdssbcitybrowse', 'Looking for peace, balance, joy, overcome stress, transform and meet other seekers? Welcome to free guided \'Sahaja Yoga\' online meditation classes that help you achieve meditation benefits in quick and easy steps and discover its healing power. No prior experience needed. These classes are designed to provide experience of an in-person interactive session.', '4_calender_1.jpeg', NULL, NULL, NULL, 'A', 'Y', 'abcd@gmail.com', '2021-12-07 07:13:16', 'admin@gmail.com', '2022-02-04 15:09:20'),
(15, 1, 9, '2022-02-22', 'New year offer', '19:00:00', 'New year offer', 'https://www.eventbrite.com/e/new-year-offer-tickets-240757621527?aff=ebdssbcitybrowse', 'new year game', '4_calender_2.jpeg', NULL, NULL, NULL, 'A', 'Y', 'abcd@gmail.com', '2021-12-07 07:13:16', 'admin@gmail.com', '2022-02-04 15:10:59'),
(16, 1, 9, '2022-02-22', 'Develop a Successful Healthcare Tech Startup Business Today!', '13:00:00', 'Tech Startup Business', 'https://www.eventbrite.com/e/develop-a-successful-healthcare-tech-startup-business-today-tickets-241858303697?aff=ebdssbcitybrowse', 'Always wanted to start an Healthcare Tech Startup? Now we have a complete blueprint for you start your own Healthcare Tech Startup Business. During our tech startup program you will learn and navigate through tools, software, hardware, platforms, resources, projects, processes, methods and strategies to penetrate your own Healthcare Tech Startup Business into different market.s and industries. For more information visit our website at Atechup.com', '4_calender_3.jpeg', NULL, NULL, NULL, 'A', 'Y', 'abcd@gmail.com', '2021-12-07 07:13:16', 'admin@gmail.com', '2022-02-04 15:11:55'),
(17, 1, 9, '2022-02-22', 'Thriller Tour', '16:15:00', 'Michael Jackson\'s Bad Tour', 'https://g.co/kgs/3KMTbe', 'Michael Jackson will be back after his hiatus', '4_calender_dif_eventsample.jpg', 'https://g.co/kgs/3KMTbe', 'https://www.youtube.com/embed/CfeT02iEwUU/724s', '#f9f106', 'A', 'Y', 'admin@gmail.com', '2022-02-09 09:46:11', NULL, NULL),
(18, 1, 10, '2023-03-08', 'klflyjfcljflyf', '10:48:00', 'ioyrkuydkjd', 'glkug;k', '', '', '', '', 'undefined', 'A', 'Y', 'admin@gmail.com', '2023-01-06 05:17:17', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `td_contacts_custom`
--

CREATE TABLE `td_contacts_custom` (
  `id` bigint(22) NOT NULL,
  `contact_date` datetime NOT NULL,
  `restaurant_name` varchar(150) NOT NULL,
  `contact_name` varchar(100) NOT NULL,
  `cnct_position` varchar(100) DEFAULT NULL,
  `cnct_phone_no` varchar(50) DEFAULT NULL,
  `cnct_whatsapp_no` varchar(50) DEFAULT NULL,
  `phone_no` varchar(50) NOT NULL,
  `whatsapp_no` varchar(50) DEFAULT NULL,
  `email` varchar(70) NOT NULL,
  `addr_line1` text NOT NULL,
  `addr_line2` text DEFAULT NULL,
  `city` varchar(50) NOT NULL,
  `zip` varchar(20) NOT NULL,
  `country` varchar(50) NOT NULL,
  `time_zone` varchar(100) NOT NULL,
  `website` text DEFAULT NULL,
  `contact_time` varchar(100) DEFAULT NULL,
  `active_user` enum('Y','N') DEFAULT 'Y',
  `approval_flag` enum('Y','N') NOT NULL DEFAULT 'N',
  `account_type` enum('H','S') DEFAULT NULL COMMENT 'H : House Account\r\nS : Sales Account',
  `sales_agent` int(10) NOT NULL DEFAULT 0,
  `proposal_status` enum('P','S','C','N') NOT NULL DEFAULT 'P' COMMENT 'P:Pending\r\nS:Send\r\nC:Accepted \r\nN:No Sale\r\n',
  `proposal_amt` decimal(10,2) NOT NULL DEFAULT 0.00,
  `first_pay` date DEFAULT NULL,
  `final_pay` date DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `questionnaire_send` enum('Y','N') NOT NULL DEFAULT 'N',
  `questionnaire_send_dt` datetime DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_by` varchar(50) DEFAULT NULL,
  `modified_dt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `td_contacts_custom`
--

INSERT INTO `td_contacts_custom` (`id`, `contact_date`, `restaurant_name`, `contact_name`, `cnct_position`, `cnct_phone_no`, `cnct_whatsapp_no`, `phone_no`, `whatsapp_no`, `email`, `addr_line1`, `addr_line2`, `city`, `zip`, `country`, `time_zone`, `website`, `contact_time`, `active_user`, `approval_flag`, `account_type`, `sales_agent`, `proposal_status`, `proposal_amt`, `first_pay`, `final_pay`, `remarks`, `questionnaire_send`, `questionnaire_send_dt`, `created_by`, `created_at`, `modified_by`, `modified_dt`) VALUES
(1, '2022-01-21 10:34:32', 'The Cliff', 'Somnath Thakur', 'Manager', '56789890', '23567890', '(949) 494-1956', '5748484567', 'somnath.thakur16@gmail.com', 'Laguna Beach', NULL, 'California', '92651', '22', 'Asia/Calcutta', 'https://www.thecliffrestaurant.com/', NULL, 'Y', 'Y', NULL, 0, 'C', '120.00', '2023-01-26', '2023-01-31', 'Notes', 'Y', '2023-01-10 08:16:37', 'samantasubham9804@gmail.com', '2022-01-21 10:34:32', 'somnath.thakur16@gmail.com', '2023-01-14 17:19:10'),
(2, '2021-11-01 08:35:50', 'UGM Diner', 'Brian Robert Foster', NULL, NULL, NULL, '+447970292203', NULL, 'ugolfmedia@gmail.com', '1 Sefton Drive', 'Bomere Heath', 'Shropshire', 'SY4 3NL', '22', 'Etc/Greenwich', 'www.ugolfmedia.com', NULL, 'Y', 'N', NULL, 0, 'C', '0.00', '0000-00-00', '0000-00-00', NULL, 'N', NULL, 'ugolfmedia@gmail.com', '2021-11-01 08:35:50', NULL, NULL),
(3, '2022-09-13 19:11:56', 'Test Restaurant', 'Brian Robert Foster', NULL, NULL, NULL, '+447970292203', NULL, 'kwoodpol@msn.com', '1 Sefton Drive', 'Bomere Heath', 'Shrewsbury', 'SY4 3NL', '22', 'Etc/Greenwich', 'www.testrestaurant.com', '10.00', 'N', 'N', NULL, 0, 'C', '0.00', '0000-00-00', '0000-00-00', NULL, 'N', NULL, 'kwoodpol@msn.com', '2022-09-13 19:11:56', 'kwoodpol@msn.com', '2023-01-04 05:38:08'),
(5, '2022-12-22 11:34:13', 'Horir Hotel', 'Gubham Samanta', NULL, NULL, NULL, '9830327803', NULL, 'somnath.thakur16+90@gmail.com', 'samanta jekhane thake', 'hain jekhane samanta thake', 'samantar sohor', '700047', '2', 'Asia/Calcutta', 'samanta.com', 'kokhona na', 'N', 'N', NULL, 0, 'C', '0.00', '0000-00-00', '0000-00-00', NULL, 'N', NULL, 'somnath.thakur16+90@gmail.com', '2022-12-22 11:34:13', 'somnath.thakur16+90@gmail.com', '2022-12-23 06:41:47'),
(6, '2023-01-02 05:06:10', 'New Hotel', 'Hotel_contact', 'Manager', '56789890', '34547454', '9836751294', '6290759694', 's@gmail.com', 'Naktala', 'a', 'a', 'a', '2', 'Asia/Calcutta', 'hotel.com', 'undefined', 'Y', 'N', NULL, 0, 'P', '0.00', '2023-01-19', '2023-01-28', 'We are here for some fun', 'N', NULL, 's@gmail.com', '2023-01-02 05:06:10', 's@gmail.com', '2023-01-10 07:17:43'),
(7, '2023-01-09 10:39:56', 'Hotel 1', '436436343', 'pos', '9883765589', 'Hotel_contact', '9836751294', '37574574357', 'wery@gmail.com', 'add1', 'add2', 'Kolkata', '700047', '2', 'Asia/Calcutta', 'hotel.com', 'undefined', 'N', 'N', 'H', 0, 'P', '0.00', NULL, NULL, 'null', 'N', NULL, 'wery@gmail.com', '2023-01-09 10:39:56', 'wery@gmail.com', '2023-01-27 12:18:49'),
(8, '2023-01-25 07:37:18', 'KFC', 'Subham Samanta', 'Employee', '9051203118', '9051203118', '9051203118', '9051203118', 'samantasubham9804@gmail.com', '29/12 Shambhunath Das Lane', '29/12 Shambhunath das lane', 'Kolkata', '700050', '2', 'Asia/Calcutta', 'http://localhost:3000', 'undefined', 'Y', 'N', 'H', 0, 'P', '0.00', NULL, NULL, 'undefined', 'N', NULL, 'samantasubham9804@gmail.com', '2023-01-25 07:37:18', NULL, NULL),
(9, '2023-01-27 10:38:09', 'Darao Pothik Bor', 'Subham Samanta', 'Subham Samanta', '9051203118', '9051203118', '9051203119', '9051203118', 'samantasubham9804+1@gmail.com', '29/12 Shambhunath Das Lane', '29/12 Shambhunath das lane', 'Kolkata', '700050', '2', 'Asia/Calcutta', 'http://localhost:3000', 'undefined', 'Y', 'N', 'H', 0, 'P', '120.00', NULL, NULL, 'undefined', 'N', NULL, 'samantasubham9804+1@gmail.com', '2023-01-27 10:38:09', 'samantasubham9804+1@gmail.com', '2023-01-27 11:17:50');

-- --------------------------------------------------------

--
-- Table structure for table `td_date_time`
--

CREATE TABLE `td_date_time` (
  `hotel_id` int(11) NOT NULL,
  `srv_res_flag` enum('S','R') NOT NULL COMMENT 'S :Service R :Restaurant',
  `srv_res_id` int(10) NOT NULL COMMENT 'Service (S):td_quest_service Restaurant (R) :td_quest_res_bars	',
  `menu_id` enum('B','L','D','R','S','A','V') NOT NULL COMMENT 'B:Breakfast L:Lunch D:Dinner R:Brunch S:Special A:Bar V:Menu Service',
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
-- Dumping data for table `td_date_time`
--

INSERT INTO `td_date_time` (`hotel_id`, `srv_res_flag`, `srv_res_id`, `menu_id`, `active_flag`, `month_day`, `start_time`, `end_time`, `created_by`, `created_dt`, `modified_by`, `modified_dt`) VALUES
(1, 'R', 1, 'B', 'Y', 3, '19:40:00', '12:40:00', '1', '2023-01-13 18:41:04', NULL, NULL),
(1, 'R', 1, 'B', 'Y', 4, '19:40:00', '12:40:00', '1', '2023-01-13 18:41:04', NULL, NULL),
(1, 'R', 1, 'B', 'Y', 6, '19:40:00', '12:40:00', '1', '2023-01-13 18:41:04', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `td_emergency_rec_report`
--

CREATE TABLE `td_emergency_rec_report` (
  `id` int(11) NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `record_date` date NOT NULL,
  `guest_group_id` int(11) NOT NULL,
  `message_body` text NOT NULL,
  `repo_status` enum('P','S','F') NOT NULL DEFAULT 'P' COMMENT 'P-> pending; S-> solved; F-> forwarded',
  `action_taken` varchar(50) DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `created_dt` datetime DEFAULT NULL,
  `modified_by` varchar(50) DEFAULT NULL,
  `modified_dt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `td_emergency_rec_report`
--

INSERT INTO `td_emergency_rec_report` (`id`, `hotel_id`, `record_date`, `guest_group_id`, `message_body`, `repo_status`, `action_taken`, `created_by`, `created_dt`, `modified_by`, `modified_dt`) VALUES
(1, 1, '2023-01-04', 1, 'A guy was murdered.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'P', 'Under investigation', 'undefined', '2023-01-20 13:19:40', 'undefined', '2023-01-20 14:17:24'),
(2, 1, '2023-01-26', 1, 'A storm is coming', 'S', 'It was chased away', 'undefined', '2023-01-20 13:20:47', NULL, NULL),
(3, 1, '2023-01-25', 1, 'Lots of bugs in the bed', 'F', 'Nothing yet', 'undefined', '2023-01-20 13:26:53', NULL, NULL),
(4, 1, '2023-01-01', 1, 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.', 'P', 'Still waiting.', 'undefined', '2023-01-20 17:47:43', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `td_emp_schedule`
--

CREATE TABLE `td_emp_schedule` (
  `id` int(11) NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `msg_type` varchar(2) NOT NULL,
  `emp_id` int(11) NOT NULL COMMENT 'td_guest_user -> id',
  `emp_code` int(11) NOT NULL,
  `day_dt` int(11) NOT NULL,
  `date_on_off` enum('Y','N') NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `created_dt` datetime DEFAULT NULL,
  `modified_by` varchar(50) DEFAULT NULL,
  `modified_dt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `td_emp_schedule`
--

INSERT INTO `td_emp_schedule` (`id`, `hotel_id`, `msg_type`, `emp_id`, `emp_code`, `day_dt`, `date_on_off`, `start_time`, `end_time`, `created_by`, `created_dt`, `modified_by`, `modified_dt`) VALUES
(1, 1, 'V', 10, 4, 1, 'N', '01:03:00', '00:03:00', 'admin@gmail.com', '2023-02-09 11:09:46', NULL, NULL),
(2, 1, 'V', 10, 4, 2, 'Y', '00:00:00', '00:00:00', 'admin@gmail.com', '2023-02-09 11:09:46', NULL, NULL),
(3, 1, 'V', 10, 4, 3, 'Y', '00:00:00', '00:00:00', 'admin@gmail.com', '2023-02-09 11:09:46', NULL, NULL),
(4, 1, 'V', 10, 4, 4, 'N', '02:04:00', '11:00:00', 'admin@gmail.com', '2023-02-09 11:09:46', NULL, NULL),
(5, 1, 'V', 10, 4, 5, 'Y', '00:00:00', '00:00:00', 'admin@gmail.com', '2023-02-09 11:09:46', NULL, NULL),
(6, 1, 'V', 10, 4, 6, 'N', '04:05:00', '02:03:00', 'admin@gmail.com', '2023-02-09 11:09:46', NULL, NULL),
(7, 1, 'V', 10, 4, 7, 'Y', '00:00:00', '00:00:00', 'admin@gmail.com', '2023-02-09 11:09:46', NULL, NULL),
(8, 1, 'E', 10, 4, 1, 'N', '01:03:00', '00:03:00', 'admin@gmail.com', '2023-02-09 11:09:46', NULL, NULL),
(9, 1, 'E', 10, 4, 2, 'Y', '00:00:00', '00:00:00', 'admin@gmail.com', '2023-02-09 11:09:46', NULL, NULL),
(10, 1, 'E', 10, 4, 3, 'Y', '00:00:00', '00:00:00', 'admin@gmail.com', '2023-02-09 11:09:46', NULL, NULL),
(11, 1, 'E', 10, 4, 4, 'N', '02:04:00', '11:00:00', 'admin@gmail.com', '2023-02-09 11:09:46', NULL, NULL),
(12, 1, 'E', 10, 4, 5, 'Y', '00:00:00', '00:00:00', 'admin@gmail.com', '2023-02-09 11:09:46', NULL, NULL),
(13, 1, 'E', 10, 4, 6, 'N', '04:05:00', '02:03:00', 'admin@gmail.com', '2023-02-09 11:09:46', NULL, NULL),
(14, 1, 'E', 10, 4, 7, 'Y', '00:00:00', '00:00:00', 'admin@gmail.com', '2023-02-09 11:09:46', NULL, NULL),
(15, 1, 'H', 11, 2, 1, 'N', '03:11:00', '04:16:00', 'admin@gmail.com', '2023-02-09 11:12:24', NULL, NULL),
(16, 1, 'H', 11, 2, 2, 'N', '01:15:00', '05:18:00', 'admin@gmail.com', '2023-02-09 11:12:24', NULL, NULL),
(17, 1, 'H', 11, 2, 3, 'Y', '00:00:00', '00:00:00', 'admin@gmail.com', '2023-02-09 11:12:24', NULL, NULL),
(18, 1, 'H', 11, 2, 4, 'Y', '00:00:00', '00:00:00', 'admin@gmail.com', '2023-02-09 11:12:24', NULL, NULL),
(19, 1, 'H', 11, 2, 5, 'N', '02:15:00', '05:18:00', 'admin@gmail.com', '2023-02-09 11:12:24', NULL, NULL),
(20, 1, 'H', 11, 2, 6, 'Y', '00:00:00', '00:00:00', 'admin@gmail.com', '2023-02-09 11:12:24', NULL, NULL),
(21, 1, 'H', 11, 2, 7, 'Y', '00:00:00', '00:00:00', 'admin@gmail.com', '2023-02-09 11:12:24', NULL, NULL),
(22, 1, 'E', 11, 2, 1, 'N', '03:11:00', '04:16:00', 'admin@gmail.com', '2023-02-09 11:12:24', NULL, NULL),
(23, 1, 'E', 11, 2, 2, 'N', '01:15:00', '05:18:00', 'admin@gmail.com', '2023-02-09 11:12:24', NULL, NULL),
(24, 1, 'E', 11, 2, 3, 'Y', '00:00:00', '00:00:00', 'admin@gmail.com', '2023-02-09 11:12:24', NULL, NULL),
(25, 1, 'E', 11, 2, 4, 'Y', '00:00:00', '00:00:00', 'admin@gmail.com', '2023-02-09 11:12:24', NULL, NULL),
(26, 1, 'E', 11, 2, 5, 'N', '02:15:00', '05:18:00', 'admin@gmail.com', '2023-02-09 11:12:24', NULL, NULL),
(27, 1, 'E', 11, 2, 6, 'Y', '00:00:00', '00:00:00', 'admin@gmail.com', '2023-02-09 11:12:24', NULL, NULL),
(28, 1, 'E', 11, 2, 7, 'Y', '00:00:00', '00:00:00', 'admin@gmail.com', '2023-02-09 11:12:24', NULL, NULL),
(29, 1, 'G', 12, 6, 1, 'N', '00:14:00', '02:16:00', 'admin@gmail.com', '2023-02-09 11:13:35', NULL, NULL),
(30, 1, 'G', 12, 6, 2, 'N', '00:15:00', '03:17:00', 'admin@gmail.com', '2023-02-09 11:13:35', NULL, NULL),
(31, 1, 'G', 12, 6, 3, 'N', '00:14:00', '04:18:00', 'admin@gmail.com', '2023-02-09 11:13:35', NULL, NULL),
(32, 1, 'G', 12, 6, 4, 'N', '05:19:00', '09:24:00', 'admin@gmail.com', '2023-02-09 11:13:35', NULL, NULL),
(33, 1, 'G', 12, 6, 5, 'Y', '00:00:00', '00:00:00', 'admin@gmail.com', '2023-02-09 11:13:35', NULL, NULL),
(34, 1, 'G', 12, 6, 6, 'Y', '00:00:00', '00:00:00', 'admin@gmail.com', '2023-02-09 11:13:35', NULL, NULL),
(35, 1, 'G', 12, 6, 7, 'Y', '00:00:00', '00:00:00', 'admin@gmail.com', '2023-02-09 11:13:35', NULL, NULL),
(36, 1, 'M', 12, 6, 1, 'N', '00:14:00', '02:16:00', 'admin@gmail.com', '2023-02-09 11:13:35', NULL, NULL),
(37, 1, 'M', 12, 6, 2, 'N', '00:15:00', '03:17:00', 'admin@gmail.com', '2023-02-09 11:13:35', NULL, NULL),
(38, 1, 'M', 12, 6, 3, 'N', '00:14:00', '04:18:00', 'admin@gmail.com', '2023-02-09 11:13:35', NULL, NULL),
(39, 1, 'M', 12, 6, 4, 'N', '05:19:00', '09:24:00', 'admin@gmail.com', '2023-02-09 11:13:35', NULL, NULL),
(40, 1, 'M', 12, 6, 5, 'Y', '00:00:00', '00:00:00', 'admin@gmail.com', '2023-02-09 11:13:35', NULL, NULL),
(41, 1, 'M', 12, 6, 6, 'Y', '00:00:00', '00:00:00', 'admin@gmail.com', '2023-02-09 11:13:35', NULL, NULL),
(42, 1, 'M', 12, 6, 7, 'Y', '00:00:00', '00:00:00', 'admin@gmail.com', '2023-02-09 11:13:35', NULL, NULL),
(43, 1, 'H', 12, 6, 1, 'N', '00:14:00', '02:16:00', 'admin@gmail.com', '2023-02-09 11:13:35', NULL, NULL),
(44, 1, 'H', 12, 6, 2, 'N', '00:15:00', '03:17:00', 'admin@gmail.com', '2023-02-09 11:13:35', NULL, NULL),
(45, 1, 'H', 12, 6, 3, 'N', '00:14:00', '04:18:00', 'admin@gmail.com', '2023-02-09 11:13:35', NULL, NULL),
(46, 1, 'H', 12, 6, 4, 'N', '05:19:00', '09:24:00', 'admin@gmail.com', '2023-02-09 11:13:35', NULL, NULL),
(47, 1, 'H', 12, 6, 5, 'Y', '00:00:00', '00:00:00', 'admin@gmail.com', '2023-02-09 11:13:35', NULL, NULL),
(48, 1, 'H', 12, 6, 6, 'Y', '00:00:00', '00:00:00', 'admin@gmail.com', '2023-02-09 11:13:35', NULL, NULL),
(49, 1, 'H', 12, 6, 7, 'Y', '00:00:00', '00:00:00', 'admin@gmail.com', '2023-02-09 11:13:35', NULL, NULL),
(50, 1, 'E', 13, 6, 1, 'N', '00:00:00', '00:00:00', 'admin@gmail.com', '2023-02-09 14:07:40', NULL, NULL),
(51, 1, 'E', 13, 6, 2, 'N', '00:00:00', '00:00:00', 'admin@gmail.com', '2023-02-09 14:07:40', NULL, NULL),
(52, 1, 'E', 13, 6, 3, 'N', '00:00:00', '00:00:00', 'admin@gmail.com', '2023-02-09 14:07:40', NULL, NULL),
(53, 1, 'E', 13, 6, 4, 'N', '00:00:00', '00:00:00', 'admin@gmail.com', '2023-02-09 14:07:40', NULL, NULL),
(54, 1, 'E', 13, 6, 5, 'N', '00:00:00', '00:00:00', 'admin@gmail.com', '2023-02-09 14:07:40', NULL, NULL),
(55, 1, 'E', 13, 6, 6, 'N', '00:00:00', '00:00:00', 'admin@gmail.com', '2023-02-09 14:07:40', NULL, NULL),
(56, 1, 'E', 13, 6, 7, 'N', '00:00:00', '00:00:00', 'admin@gmail.com', '2023-02-09 14:07:40', NULL, NULL),
(57, 1, 'V', 13, 6, 1, 'N', '00:00:00', '00:00:00', 'admin@gmail.com', '2023-02-09 14:07:40', NULL, NULL),
(58, 1, 'V', 13, 6, 2, 'N', '00:00:00', '00:00:00', 'admin@gmail.com', '2023-02-09 14:07:40', NULL, NULL),
(59, 1, 'V', 13, 6, 3, 'N', '00:00:00', '00:00:00', 'admin@gmail.com', '2023-02-09 14:07:40', NULL, NULL),
(60, 1, 'V', 13, 6, 4, 'N', '00:00:00', '00:00:00', 'admin@gmail.com', '2023-02-09 14:07:40', NULL, NULL),
(61, 1, 'V', 13, 6, 5, 'N', '00:00:00', '00:00:00', 'admin@gmail.com', '2023-02-09 14:07:40', NULL, NULL),
(62, 1, 'V', 13, 6, 6, 'N', '00:00:00', '00:00:00', 'admin@gmail.com', '2023-02-09 14:07:40', NULL, NULL),
(63, 1, 'V', 13, 6, 7, 'N', '00:00:00', '00:00:00', 'admin@gmail.com', '2023-02-09 14:07:40', NULL, NULL),
(64, 1, 'E', 14, 6, 1, 'N', '00:00:00', '00:00:00', 'admin@gmail.com', '2023-02-09 14:08:45', NULL, NULL),
(65, 1, 'E', 14, 6, 2, 'N', '00:00:00', '00:00:00', 'admin@gmail.com', '2023-02-09 14:08:45', NULL, NULL),
(66, 1, 'E', 14, 6, 3, 'N', '00:00:00', '00:00:00', 'admin@gmail.com', '2023-02-09 14:08:45', NULL, NULL),
(67, 1, 'E', 14, 6, 4, 'N', '00:00:00', '00:00:00', 'admin@gmail.com', '2023-02-09 14:08:45', NULL, NULL),
(68, 1, 'E', 14, 6, 5, 'N', '00:00:00', '00:00:00', 'admin@gmail.com', '2023-02-09 14:08:45', NULL, NULL),
(69, 1, 'E', 14, 6, 6, 'N', '00:00:00', '00:00:00', 'admin@gmail.com', '2023-02-09 14:08:45', NULL, NULL),
(70, 1, 'E', 14, 6, 7, 'N', '00:00:00', '00:00:00', 'admin@gmail.com', '2023-02-09 14:08:45', NULL, NULL),
(71, 1, 'V', 14, 6, 1, 'N', '00:00:00', '00:00:00', 'admin@gmail.com', '2023-02-09 14:08:45', NULL, NULL),
(72, 1, 'V', 14, 6, 2, 'N', '00:00:00', '00:00:00', 'admin@gmail.com', '2023-02-09 14:08:45', NULL, NULL),
(73, 1, 'V', 14, 6, 3, 'N', '00:00:00', '00:00:00', 'admin@gmail.com', '2023-02-09 14:08:45', NULL, NULL),
(74, 1, 'V', 14, 6, 4, 'N', '00:00:00', '00:00:00', 'admin@gmail.com', '2023-02-09 14:08:45', NULL, NULL),
(75, 1, 'V', 14, 6, 5, 'N', '00:00:00', '00:00:00', 'admin@gmail.com', '2023-02-09 14:08:45', NULL, NULL),
(76, 1, 'V', 14, 6, 6, 'N', '00:00:00', '00:00:00', 'admin@gmail.com', '2023-02-09 14:08:45', NULL, NULL),
(77, 1, 'V', 14, 6, 7, 'N', '00:00:00', '00:00:00', 'admin@gmail.com', '2023-02-09 14:08:45', NULL, NULL),
(78, 1, 'E', 15, 6, 1, 'N', '00:00:00', '00:00:00', 'admin@gmail.com', '2023-02-09 14:10:55', NULL, NULL),
(79, 1, 'E', 15, 6, 2, 'N', '00:00:00', '00:00:00', 'admin@gmail.com', '2023-02-09 14:10:55', NULL, NULL),
(80, 1, 'E', 15, 6, 3, 'N', '00:02:00', '00:00:00', 'admin@gmail.com', '2023-02-09 14:10:55', NULL, NULL),
(81, 1, 'E', 15, 6, 4, 'N', '00:00:00', '00:00:00', 'admin@gmail.com', '2023-02-09 14:10:55', NULL, NULL),
(82, 1, 'E', 15, 6, 5, 'N', '00:00:00', '00:00:00', 'admin@gmail.com', '2023-02-09 14:10:55', NULL, NULL),
(83, 1, 'E', 15, 6, 6, 'N', '00:00:00', '00:00:00', 'admin@gmail.com', '2023-02-09 14:10:55', NULL, NULL),
(84, 1, 'E', 15, 6, 7, 'N', '00:00:00', '00:00:00', 'admin@gmail.com', '2023-02-09 14:10:55', NULL, NULL),
(85, 1, 'V', 15, 6, 1, 'N', '00:00:00', '00:00:00', 'admin@gmail.com', '2023-02-09 14:10:55', NULL, NULL),
(86, 1, 'V', 15, 6, 2, 'N', '00:00:00', '00:00:00', 'admin@gmail.com', '2023-02-09 14:10:55', NULL, NULL),
(87, 1, 'V', 15, 6, 3, 'N', '00:02:00', '00:00:00', 'admin@gmail.com', '2023-02-09 14:10:55', NULL, NULL),
(88, 1, 'V', 15, 6, 4, 'N', '00:00:00', '00:00:00', 'admin@gmail.com', '2023-02-09 14:10:55', NULL, NULL),
(89, 1, 'V', 15, 6, 5, 'N', '00:00:00', '00:00:00', 'admin@gmail.com', '2023-02-09 14:10:55', NULL, NULL),
(90, 1, 'V', 15, 6, 6, 'N', '00:00:00', '00:00:00', 'admin@gmail.com', '2023-02-09 14:10:55', NULL, NULL),
(91, 1, 'V', 15, 6, 7, 'N', '00:00:00', '00:00:00', 'admin@gmail.com', '2023-02-09 14:10:55', NULL, NULL),
(92, 1, 'G', 16, 4, 1, 'N', '00:00:00', '23:59:00', 'admin@gmail.com', '2023-02-09 14:31:31', NULL, NULL),
(93, 1, 'G', 16, 4, 2, 'N', '00:00:00', '00:00:00', 'admin@gmail.com', '2023-02-09 14:31:31', NULL, NULL),
(94, 1, 'G', 16, 4, 3, 'N', '00:00:00', '23:59:00', 'admin@gmail.com', '2023-02-09 14:31:31', NULL, NULL),
(95, 1, 'G', 16, 4, 4, 'N', '00:00:00', '00:00:00', 'admin@gmail.com', '2023-02-09 14:31:31', NULL, NULL),
(96, 1, 'G', 16, 4, 5, 'N', '00:00:00', '23:59:00', 'admin@gmail.com', '2023-02-09 14:31:31', NULL, NULL),
(97, 1, 'G', 16, 4, 6, 'N', '00:00:00', '00:00:00', 'admin@gmail.com', '2023-02-09 14:31:31', NULL, NULL),
(98, 1, 'G', 16, 4, 7, 'N', '00:00:00', '00:00:00', 'admin@gmail.com', '2023-02-09 14:31:31', NULL, NULL),
(99, 1, 'M', 16, 4, 1, 'N', '00:00:00', '23:59:00', 'admin@gmail.com', '2023-02-09 14:31:31', NULL, NULL),
(100, 1, 'M', 16, 4, 2, 'N', '00:00:00', '00:00:00', 'admin@gmail.com', '2023-02-09 14:31:31', NULL, NULL),
(101, 1, 'M', 16, 4, 3, 'N', '00:00:00', '23:59:00', 'admin@gmail.com', '2023-02-09 14:31:31', NULL, NULL),
(102, 1, 'M', 16, 4, 4, 'N', '00:00:00', '00:00:00', 'admin@gmail.com', '2023-02-09 14:31:31', NULL, NULL),
(103, 1, 'M', 16, 4, 5, 'N', '00:00:00', '23:59:00', 'admin@gmail.com', '2023-02-09 14:31:31', NULL, NULL),
(104, 1, 'M', 16, 4, 6, 'N', '00:00:00', '00:00:00', 'admin@gmail.com', '2023-02-09 14:31:31', NULL, NULL),
(105, 1, 'M', 16, 4, 7, 'N', '00:00:00', '00:00:00', 'admin@gmail.com', '2023-02-09 14:31:31', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `td_guest_user`
--

CREATE TABLE `td_guest_user` (
  `id` int(11) NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_type` enum('N','G','V','E') NOT NULL COMMENT 'N-> Normal; G-> Group; V-> VIP; E-> Employee',
  `mobile_no` varchar(20) DEFAULT NULL,
  `email_id` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `group_emp_id` int(11) DEFAULT NULL COMMENT 'td_group -> id',
  `group_leader_flag` enum('Y','N') NOT NULL DEFAULT 'N',
  `dept_id` int(11) DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `created_dt` datetime DEFAULT NULL,
  `modified_by` varchar(50) DEFAULT NULL,
  `modified_dt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `td_guest_user`
--

INSERT INTO `td_guest_user` (`id`, `hotel_id`, `user_name`, `user_type`, `mobile_no`, `email_id`, `password`, `group_emp_id`, `group_leader_flag`, `dept_id`, `created_by`, `created_dt`, `modified_by`, `modified_dt`) VALUES
(1, 1, 'Antu', 'V', NULL, NULL, NULL, NULL, 'N', NULL, 'admin@gmail.com', '2023-02-04 08:56:04', NULL, NULL),
(2, 1, 'Sayantika Dadu', 'V', NULL, NULL, NULL, NULL, 'N', NULL, 'admin@gmail.com', '2023-02-04 08:56:04', NULL, NULL),
(3, 1, 'Antu', 'V', NULL, NULL, NULL, NULL, 'N', NULL, 'admin@gmail.com', '2023-02-04 08:58:01', NULL, NULL),
(4, 1, 'Sayantika Dadu', 'V', NULL, NULL, NULL, NULL, 'N', NULL, 'admin@gmail.com', '2023-02-04 08:58:01', NULL, NULL),
(10, 1, 'Debdas da', 'E', '(949) 494-1956', 'debdas@gmail.com', NULL, NULL, 'Y', 4, 'admin@gmail.com', '2023-02-09 11:09:46', NULL, NULL),
(11, 1, 'Brian', 'E', '9836751294', 'brian@hotmail.com', NULL, NULL, 'Y', 2, 'admin@gmail.com', '2023-02-09 11:12:24', NULL, NULL),
(12, 1, 'Tanmoy Mondal', 'E', '9999999', 'mondal.tanmoy@synergicsoftek.com', '$2b$10$mvFwPgBGvSgMCuUWSP.uNedd22Er6UeZxNMN.ahqq9lVn62utY5b2', NULL, 'Y', 5, 'admin@gmail.com', '2023-02-09 11:13:35', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `td_lodgging`
--

CREATE TABLE `td_lodgging` (
  `hotel_id` int(11) NOT NULL,
  `guest_id` int(11) NOT NULL,
  `check_in` datetime NOT NULL,
  `check_out` datetime NOT NULL,
  `room_no` int(11) NOT NULL,
  `status_flag` enum('A','D') NOT NULL COMMENT 'A-> Active; D-> Deactive',
  `created_by` varchar(50) DEFAULT NULL,
  `created_dt` datetime DEFAULT NULL,
  `modified_by` varchar(50) DEFAULT NULL,
  `modified_dt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `td_lodgging`
--

INSERT INTO `td_lodgging` (`hotel_id`, `guest_id`, `check_in`, `check_out`, `room_no`, `status_flag`, `created_by`, `created_dt`, `modified_by`, `modified_dt`) VALUES
(1, 3, '2023-02-04 10:25:00', '2023-02-21 14:29:00', 0, 'A', 'admin@gmail.com', '2023-02-04 08:58:01', NULL, NULL),
(1, 4, '2023-02-04 10:25:00', '2023-02-25 14:29:00', 0, 'A', 'admin@gmail.com', '2023-02-04 08:58:01', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `td_logo`
--

CREATE TABLE `td_logo` (
  `hotel_id` int(11) NOT NULL,
  `srv_res_flag` enum('S','R','H') NOT NULL COMMENT 'S :Service\r\nR :Restaurant\r\nH :Hotel',
  `srv_res_id` int(11) NOT NULL DEFAULT 0 COMMENT 'Service (S):td_quest_service\r\nRestaurant (R) :td_quest_res_bars\r\nHotel (H) : 0',
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

INSERT INTO `td_logo` (`hotel_id`, `srv_res_flag`, `srv_res_id`, `logo_url`, `logo_path`, `created_by`, `created_dt`, `modified_by`, `modified_dt`) VALUES
(0, 'S', 9, '', '9_19_logo_kfc_logo.jpeg', '4', '2022-01-21 11:17:45', '4', '2022-01-25 06:24:40'),
(0, 'S', 10, '', '9_19_logo_kfc_logo.jpeg', '4', '2022-01-21 11:18:37', NULL, NULL),
(0, 'S', 17, '', '34_logo_logo.png', '34', '2021-11-01 10:42:42', '34', '2021-12-10 08:45:31'),
(0, 'S', 18, '', '', '5', '2023-01-04 11:47:38', '5', '2023-01-04 12:01:52'),
(1, 'R', 1, '', '1_R_1_logo_BIT_MESRA_certificate.jpg', '1', '2023-01-14 07:48:35', '1', '2023-02-01 11:46:14'),
(1, 'R', 2, '', 'undefined_2_logo_logo_name', '1', '2023-01-14 08:10:21', NULL, NULL),
(1, 'R', 3, '', 'undefined_3_logo_logo_name', '1', '2023-01-14 08:00:36', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `td_menu_image`
--

CREATE TABLE `td_menu_image` (
  `hotel_id` int(11) NOT NULL,
  `srv_res_flag` enum('R','S') NOT NULL COMMENT 'S :Service R :Restaurant	',
  `srv_res_id` int(10) NOT NULL COMMENT 'Service (S):td_quest_service Restaurant (R) :td_quest_res_bars	',
  `menu_id` enum('B','L','D','R','S','A','V') NOT NULL COMMENT 'B:Breakfast\r\nL:Lunch\r\nD:Dinner\r\nR:Brunch\r\nS:Special\r\nA:Bar\r\nV:Menu Service',
  `active_flag` enum('Y','N') NOT NULL DEFAULT 'N',
  `menu_url` text DEFAULT NULL,
  `menu_img` text NOT NULL,
  `created_by` varchar(50) NOT NULL,
  `created_dt` datetime NOT NULL,
  `modified_by` varchar(50) DEFAULT NULL,
  `modified_dt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `td_menu_image`
--

INSERT INTO `td_menu_image` (`hotel_id`, `srv_res_flag`, `srv_res_id`, `menu_id`, `active_flag`, `menu_url`, `menu_img`, `created_by`, `created_dt`, `modified_by`, `modified_dt`) VALUES
(1, 'R', 1, 'B', 'Y', '', '34_2_menu_3_little-people-daily-dec-2.pdf', '1', '2023-01-13 18:20:19', '1', '2023-01-13 18:20:19'),
(1, 'R', 1, 'B', 'Y', '', '34_2_menu_4_mm-menu-august-2021.pdf', '1', '2023-01-13 18:20:19', '1', '2023-01-13 18:20:19');

-- --------------------------------------------------------

--
-- Table structure for table `td_menu_notice`
--

CREATE TABLE `td_menu_notice` (
  `id` int(11) NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `restaurant_id` bigint(22) NOT NULL,
  `menu_id` enum('B','L','D','R','S','A','V') NOT NULL COMMENT 'B:Breakfast L:Lunch D:Dinner R:Brunch S:Special A:Bar V:Menu Service',
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

INSERT INTO `td_menu_notice` (`id`, `hotel_id`, `restaurant_id`, `menu_id`, `notice_flag`, `position_id`, `header_title`, `font_color`, `back_color`, `notice_content`, `created_by`, `created_dt`, `modified_by`, `modified_dt`) VALUES
(1, 1, 1, 'B', 'Y', 1, 'dsf', '#4d3232', '#c05959', 'notice breakfastdhdgjhdf', '1', '2023-01-14 10:47:16', '1', '2023-01-15 08:44:02'),
(2, 1, 1, 'L', 'Y', 2, 'dsfdgsgdsgds', '#ff0000', '#c05959', 'notice lunch', '1', '2023-01-14 10:48:20', '1', '2023-01-15 08:45:06'),
(3, 1, 3, 'B', 'Y', 2, 'dgsdgsdgf', '#8e3e3e', '#757575', 'fsdaafsd', '3', '2023-01-14 10:49:13', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `td_notification`
--

CREATE TABLE `td_notification` (
  `id` int(11) NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `message_center_type` enum('H','E','V','G','M','P','C') NOT NULL COMMENT 'H-> Hotel; E-> Emergency; V-> VIP; G-> Group; M-> Employee; P-> Promotions; C-> Custom;',
  `audience` varchar(50) NOT NULL,
  `language` varchar(50) DEFAULT NULL,
  `img_name` varchar(100) DEFAULT NULL,
  `img_path` varchar(100) DEFAULT NULL,
  `msg_title` varchar(100) DEFAULT NULL,
  `msg_subtitle` varchar(100) NOT NULL,
  `msg_body` text DEFAULT NULL,
  `dept_id` varchar(50) DEFAULT NULL,
  `dept_link` varchar(100) DEFAULT NULL,
  `time_period_msg` enum('Y','N') NOT NULL,
  `msg_snt_frm_time` time DEFAULT NULL,
  `msg_snt_to_time` time DEFAULT NULL,
  `msg_snt_type` enum('O','D','W','M') NOT NULL COMMENT 'O-> Once; D-> Daily; W-> W; M-> Monthly',
  `msg_snt_dt` date DEFAULT NULL,
  `msg_snt_day` varchar(50) DEFAULT NULL,
  `msg_snt_time` time DEFAULT NULL,
  `msg_lifetime` enum('D','I') NOT NULL COMMENT 'D->90 Days; I->Indefinite',
  `send_flag` enum('Y','N') NOT NULL DEFAULT 'N',
  `extended_flag` enum('Y','N') NOT NULL DEFAULT 'N',
  `created_by` varchar(50) DEFAULT NULL,
  `created_dt` datetime DEFAULT NULL,
  `modified_by` varchar(50) DEFAULT NULL,
  `modified_dt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `td_notification`
--

INSERT INTO `td_notification` (`id`, `hotel_id`, `message_center_type`, `audience`, `language`, `img_name`, `img_path`, `msg_title`, `msg_subtitle`, `msg_body`, `dept_id`, `dept_link`, `time_period_msg`, `msg_snt_frm_time`, `msg_snt_to_time`, `msg_snt_type`, `msg_snt_dt`, `msg_snt_day`, `msg_snt_time`, `msg_lifetime`, `send_flag`, `extended_flag`, `created_by`, `created_dt`, `modified_by`, `modified_dt`) VALUES
(1, 1, 'H', '1', 'E', 'undefined', 'app-image-lunch.jpg', 'LUNCH ON THE ISLAND', '11:30AM - Meet at the Pier.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s. ', NULL, 'D', 'Y', '08:00:00', '18:39:00', 'O', '2023-01-12', '', '13:11:00', 'I', 'N', 'N', 'undefined', '2023-01-18 12:33:44', 'admin@gmail.com', '2023-01-23 08:44:26'),
(2, 1, 'H', 'NaN', 'E', 'undefined', 'app-image-photo-opp.jpg', 'SUNRISE PHOTO OP', '6:00AM - Cliffs area on the Beach.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ', NULL, 'E', 'Y', '19:54:00', '22:54:00', 'D', '0000-00-00', '', '00:00:00', 'D', 'N', 'N', 'undefined', '2023-01-18 17:56:11', 'admin@gmail.com', '2023-01-23 08:51:54'),
(3, 1, 'H', 'NaN', 'E', NULL, 'canceled.png', 'FIRE DANCER - RAIN CANCELLATION', '6:30PM - On Main Beach, Main Stage.', 'Our lost & Found section keeps your lost things safely until someone reports for it. We have it safe and sound.', NULL, '', 'Y', '00:38:00', '16:43:00', 'W', '0000-00-00', 'Thursday', '16:39:00', 'D', 'N', 'N', 'undefined', '2023-01-19 11:39:45', 'admin@gmail.com', '2023-01-23 08:52:47'),
(4, 1, 'H', 'NaN', 'E', NULL, 'app-image-horseride-sunrise.jpg', 'HORSEBACK AT SUNRISE-', '6:00AM - Stables area on the beach.', 'A man named Shubham Samanta was reported to be missing last night. He was last seen near his room (139) in Baranagar. He was wearing nothing.', NULL, 'E', 'Y', '01:48:00', '11:54:00', 'M', '2023-01-22', '', '05:48:00', 'I', 'N', 'N', 'undefined', '2023-01-19 11:48:29', 'admin@gmail.com', '2023-01-23 08:55:36'),
(15, 1, 'V', '4', 'E', NULL, 'SHAWN_MENDES.jpg', 'SHAWN MENDES', 'Thu, 13 Jul 2023Thu, 13 Jul 2023 | Royal Arena, København S', 'epmsg', NULL, 'D', 'Y', '00:50:00', '03:51:00', 'D', '0000-00-00', '', '04:51:00', 'D', 'N', 'N', 'admin@gmail.com', '2023-02-06 11:59:32', NULL, NULL),
(16, 1, 'H', 'NaN', 'E', NULL, 'app-image-sunset-sail.jpg', 'SUNSET SAIL', '4:30PM - Meet at the Pier.', 'Our lost & Found section keeps your lost things safely until someone reports for it. We have it safe and sound.', NULL, '', 'Y', '00:38:00', '16:43:00', 'W', '0000-00-00', 'Thursday', '16:39:00', 'D', 'N', 'N', 'undefined', '2023-01-19 11:39:45', 'admin@gmail.com', '2023-01-23 08:52:47'),
(17, 1, 'H', 'NaN', 'E', NULL, 'app-image-turtle-hatch.jpg', 'TURTLE HATCH AT SUNRISE', '6:30AM - Rocky area on the beach.', 'A man named Shubham Samanta was reported to be missing last night. He was last seen near his room (139) in Baranagar. He was wearing nothing.', NULL, 'E', 'Y', '01:48:00', '11:54:00', 'M', '2023-01-22', '', '05:48:00', 'I', 'N', 'N', 'undefined', '2023-01-19 11:48:29', 'admin@gmail.com', '2023-01-23 08:55:36'),
(18, 1, 'V', '3', 'E', NULL, '1_V_video (2).mp4', 'Hey, let us take a tour of the hotel?', 'We have made a customized tour for you.', 'Hello, we will take you on a tour during your stay.', NULL, '4', 'Y', '14:51:00', '18:51:00', 'O', '2023-02-12', '', '16:51:00', 'I', 'N', 'N', 'admin@gmail.com', '2023-02-10 13:51:30', NULL, NULL),
(19, 1, 'V', '3', 'E', NULL, '1_V_msgImg_0.029965063232505473.jpg', 'Do you have a minute to talk?', 'We have custom made chat bots at your service.', 'Heard of chatbots? We make sure that the guests are never lonely. The chatbots are always at your disposal.', NULL, '5', 'Y', '15:55:00', '17:55:00', 'W', '0000-00-00', 'Tuesday', '17:55:00', 'I', 'N', 'N', 'admin@gmail.com', '2023-02-10 13:55:26', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `td_notification_audience`
--

CREATE TABLE `td_notification_audience` (
  `id` int(11) NOT NULL,
  `notification_id` int(11) NOT NULL COMMENT 'td_notification -> id',
  `guest_user_id` int(11) NOT NULL COMMENT 'td_guest_user -> id',
  `created_by` varchar(50) DEFAULT NULL,
  `created_dt` datetime DEFAULT NULL,
  `modified_by` varchar(50) DEFAULT NULL,
  `modified_dt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `td_notification_audience`
--

INSERT INTO `td_notification_audience` (`id`, `notification_id`, `guest_user_id`, `created_by`, `created_dt`, `modified_by`, `modified_dt`) VALUES
(1, 15, 3, 'admin@gmail.com', '2023-02-06 11:59:32', NULL, NULL),
(2, 15, 4, 'admin@gmail.com', '2023-02-06 11:59:32', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `td_notification_dtls`
--

CREATE TABLE `td_notification_dtls` (
  `id` int(11) NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `msg_id` int(11) NOT NULL,
  `send_by` varchar(50) NOT NULL,
  `send_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `td_notification_dtls`
--

INSERT INTO `td_notification_dtls` (`id`, `hotel_id`, `msg_id`, `send_by`, `send_at`) VALUES
(1, 1, 1, 'admin@gmail.com', '2023-01-23 15:20:00'),
(2, 1, 2, 'admin@gmail.com', '2023-01-23 15:20:00'),
(3, 1, 3, 'admin@gmail.com', '2023-01-23 15:20:00'),
(4, 1, 4, 'admin@gmail.com', '2023-02-01 15:20:00'),
(5, 1, 16, 'admin@gmail.com', '2023-02-10 15:20:00'),
(6, 1, 17, 'admin@gmail.com', '2023-02-10 15:20:00'),
(7, 1, 15, 'admin@gmail.com', '2023-02-10 15:20:00'),
(8, 1, 18, 'admin@gmail.com', '2023-02-10 15:20:00'),
(9, 1, 19, 'admin@gmail.com', '2023-02-10 15:20:00');

-- --------------------------------------------------------

--
-- Table structure for table `td_other_image`
--

CREATE TABLE `td_other_image` (
  `hotel_id` int(11) NOT NULL,
  `srv_res_flag` enum('S','R') NOT NULL COMMENT 'S :Service R :Restaurant',
  `srv_res_id` int(10) NOT NULL COMMENT 'Service (S):td_quest_service Restaurant (R) :td_quest_res_bars',
  `menu_id` enum('B','L','D','R','S','A','V') NOT NULL COMMENT 'B:Breakfast\r\nL:Lunch\r\nD:Dinner\r\nR:Brunch\r\nS:Special\r\nA:Bar\r\nV:Menu Service',
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
-- Dumping data for table `td_other_image`
--

INSERT INTO `td_other_image` (`hotel_id`, `srv_res_flag`, `srv_res_id`, `menu_id`, `active_flag`, `cover_page_img`, `cover_page_url`, `top_image_img`, `top_img_url`, `created_by`, `created_dt`, `modified_by`, `modified_dt`) VALUES
(1, 'R', 1, 'B', 'Y', '1_1_3_cover_rest_logo.jpg', '', '34_3_top_top-dinner.jpg', '', '1', '2023-01-13 17:52:10', '1', '2023-01-13 18:41:04');

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
-- Table structure for table `td_pc_avatar`
--

CREATE TABLE `td_pc_avatar` (
  `id` int(11) NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `avt_name` varchar(100) NOT NULL,
  `img_path` varchar(100) DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `created_dt` datetime DEFAULT NULL,
  `modified_by` varchar(50) DEFAULT NULL,
  `modified_dt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `td_pc_avatar`
--

INSERT INTO `td_pc_avatar` (`id`, `hotel_id`, `avt_name`, `img_path`, `created_by`, `created_dt`, `modified_by`, `modified_dt`) VALUES
(1, 1, 'Samata Avatar', '1_avatar_avImg_0.5654126751807969.jpg', 'admin@gmail.com', '2023-01-24 14:15:52', 'admin@gmail.com', '2023-01-25 18:37:46'),
(2, 9, 'Luca', '9_avatar_avImg_0.7864681343114077.jpg', 'admin@gmail.com', '2023-01-30 10:51:38', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `td_pc_voice`
--

CREATE TABLE `td_pc_voice` (
  `id` int(11) NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `srv_res_flag` enum('R','S') DEFAULT NULL,
  `srv_res_id` int(11) NOT NULL,
  `voice_id` varchar(50) DEFAULT NULL,
  `voice_speed` int(11) DEFAULT 0,
  `use_premium` tinyint(1) NOT NULL DEFAULT 0,
  `voice_path` text DEFAULT NULL,
  `sound_path` text DEFAULT NULL,
  `old_sound_path` text DEFAULT NULL,
  `sound_flag` enum('Y','N') NOT NULL DEFAULT 'Y',
  `msg_text` text DEFAULT NULL,
  `msg_active_flag` enum('Y','N') NOT NULL DEFAULT 'Y',
  `created_by` varchar(50) DEFAULT NULL,
  `created_dt` datetime DEFAULT NULL,
  `modified_by` varchar(50) DEFAULT NULL,
  `modified_dt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `td_pc_voice`
--

INSERT INTO `td_pc_voice` (`id`, `hotel_id`, `srv_res_flag`, `srv_res_id`, `voice_id`, `voice_speed`, `use_premium`, `voice_path`, `sound_path`, `old_sound_path`, `sound_flag`, `msg_text`, `msg_active_flag`, `created_by`, `created_dt`, `modified_by`, `modified_dt`) VALUES
(1, 1, 'R', 1, 'Mia', 100, 1, 'https://www.texttovoice.online/audios/v_A_es-MX_63dcdfcf5a285.mp3', 'audio/v_A_es-MX_63dcdfcf5a285.mp3', NULL, 'Y', 'Hello this is samata1', 'N', 'undefined', '2023-02-03 13:28:46', 'undefined', '2023-02-03 15:50:30'),
(8, 1, 'R', 3, 'Enrique', 100, 1, 'https://www.texttovoice.online/audios/v_A_es-ES_63dcc09244e81.mp3', 'audio/v_A_es-ES_63dcc09244e81.mp3', NULL, 'Y', 'The Trigger Fish Restaurant serves fresh locally caught fish, salads and fresh baked breads.\n\nWe are located by the Pool and the attire is casual.\n\nWe are open every day from 11 oclock in the morning until 10 oclock at night.\n\nBe sure to use the tabs above to view our menus, check todays specials and for any changes to the menus.\n\nEnjoy your meal!', 'Y', 'undefined', '2023-02-03 13:38:44', NULL, NULL),
(9, 1, '', 0, 'Zeina', 100, 1, 'https://www.texttovoice.online/audios/v_A_arb_63dce2b5147e3.mp3', 'audio/v_A_arb_63dce2b5147e3.mp3', NULL, 'N', 'Utsab da antibiotic kheye durbol hoye porechhe', 'Y', 'admin@gmail.com', '2023-02-03 15:55:59', 'admin@gmail.com', '2023-02-03 16:02:40'),
(10, 1, 'R', 3, 'Brian', 100, 1, 'https://www.texttovoice.online/audios/v_A_en-GB_63dcea102610e.mp3', 'audio/v_A_en-GB_63dcea102610e.mp3', NULL, 'Y', 'To order from the POOL MENU, simply scroll through the items, then select those that you would like to order.\nADD YOUR LOUNGE NUMBER to the order form.\nYour order will then be prepared and delivered to you, normally within 20 minutes.\nIf there is a delay or a menu change, we will contact you with an update here on the Directory.', 'Y', 'undefined', '2023-02-03 16:34:36', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `td_promotions_custom`
--

CREATE TABLE `td_promotions_custom` (
  `id` bigint(22) NOT NULL,
  `restaurant_id` bigint(22) NOT NULL,
  `venue_id` int(11) NOT NULL,
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
-- Dumping data for table `td_promotions_custom`
--

INSERT INTO `td_promotions_custom` (`id`, `restaurant_id`, `venue_id`, `first_name`, `last_name`, `email`, `birth_dt`, `anniversary_dt`, `authorization`, `mobile_no`, `questions1`, `questions2`, `questions3`, `created_by`, `created_at`, `modified_by`, `modified_at`) VALUES
(1, 9, 19, 'Subham', 'Samanta', 'samantasubham9804@gmail.com', '1996-05-29', '2022-02-04', 'Y', '9051203118', 'a', 'a', 'a', 'samantasubham9804@gmail.com', '2022-02-04 06:48:52', NULL, NULL),
(2, 9, 19, 'Chitto', 'Maity', 'meettan@gmail.com', '1994-02-09', '2019-03-08', 'Y', '8240378957', 'Sports', 'Football', 'Darjeeling', 'meettan@gmail.com', '2022-02-04 06:49:15', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `td_proposal`
--

CREATE TABLE `td_proposal` (
  `id` int(11) NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `greeting` text DEFAULT NULL,
  `send_dt` date DEFAULT NULL,
  `dev_dtls` text DEFAULT NULL,
  `resend_dt` date DEFAULT NULL,
  `receive_dt` date DEFAULT NULL,
  `status` enum('D','P','A') NOT NULL COMMENT 'D: Decline,\r\nP: Pending,\r\nA: Accept',
  `status_dt` date DEFAULT NULL,
  `hotel_remarks` text DEFAULT NULL,
  `admin_notes` text DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `created_dt` datetime DEFAULT NULL,
  `modified_by` varchar(50) DEFAULT NULL,
  `modified_dt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `td_proposal`
--

INSERT INTO `td_proposal` (`id`, `hotel_id`, `greeting`, `send_dt`, `dev_dtls`, `resend_dt`, `receive_dt`, `status`, `status_dt`, `hotel_remarks`, `admin_notes`, `created_by`, `created_dt`, `modified_by`, `modified_dt`) VALUES
(1, 1, 'Hello', '2023-01-16', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', NULL, '2023-01-12', 'P', '2023-01-16', 'This is a sample follow-up note', '', 'admin@gmail.com', '2023-01-11 17:07:24', 'admin@gmail.com', '2023-01-16 10:35:04');

-- --------------------------------------------------------

--
-- Table structure for table `td_proposal_dtls`
--

CREATE TABLE `td_proposal_dtls` (
  `id` int(11) NOT NULL,
  `proposal_id` int(11) NOT NULL,
  `fee_type` varchar(100) NOT NULL,
  `fee_amount` float(10,2) NOT NULL,
  `remarks` text DEFAULT NULL,
  `additional_remarks` text DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `created_dt` datetime DEFAULT NULL,
  `modified_by` varchar(50) DEFAULT NULL,
  `modified_dt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `td_proposal_dtls`
--

INSERT INTO `td_proposal_dtls` (`id`, `proposal_id`, `fee_type`, `fee_amount`, `remarks`, `additional_remarks`, `created_by`, `created_dt`, `modified_by`, `modified_dt`) VALUES
(1, 1, 'Setup fee', 100.00, 'Sample note for setup fee. ', 'Sample additional notes for setup fee', 'admin@gmail.com', '2023-01-11 17:07:24', 'admin@gmail.com', '2023-01-16 10:35:04'),
(3, 1, 'Subscription fee', 756.00, 'Sample note for Subscription fee', 'Sample additional notes for Subscription fee', 'admin@gmail.com', '2023-01-12 11:04:18', 'admin@gmail.com', '2023-01-16 10:35:04');

-- --------------------------------------------------------

--
-- Table structure for table `td_quest_add_lang`
--

CREATE TABLE `td_quest_add_lang` (
  `id` bigint(22) NOT NULL,
  `hotel_id` bigint(22) NOT NULL,
  `lang_id` varchar(20) NOT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `created_dt` datetime DEFAULT NULL,
  `modified_by` varchar(50) DEFAULT NULL,
  `modified_dt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `td_quest_add_lang`
--

INSERT INTO `td_quest_add_lang` (`id`, `hotel_id`, `lang_id`, `created_by`, `created_dt`, `modified_by`, `modified_dt`) VALUES
(1, 1, 'lo', 'The Cliff', '2023-01-11 11:28:02', NULL, NULL),
(2, 1, 'lo', 'The Cliff', '2023-01-12 15:07:21', NULL, NULL),
(3, 1, 'lo', 'The Cliff', '2023-01-12 15:07:29', NULL, NULL),
(4, 1, 'lo', 'The Cliff', '2023-01-12 15:08:47', NULL, NULL),
(5, 1, 'lo', 'The Cliff', '2023-01-12 15:09:41', NULL, NULL),
(6, 1, 'lo', 'The Cliff', '2023-01-12 15:25:08', NULL, NULL),
(7, 1, 'lo', 'The Cliff', '2023-01-12 15:25:42', NULL, NULL),
(8, 1, 'lo', 'The Cliff', '2023-01-16 07:50:57', NULL, NULL),
(9, 1, 'lo', 'The Cliff', '2023-01-16 08:07:10', NULL, NULL),
(10, 1, 'lo', 'The Cliff', '2023-01-16 08:12:45', NULL, NULL),
(11, 1, 'lo', 'The Cliff', '2023-01-16 08:24:15', NULL, NULL),
(12, 1, 'lo', 'The Cliff', '2023-01-16 08:28:45', NULL, NULL),
(13, 9, 'ms', 'Darao Pothik Bor', '2023-01-27 12:41:22', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `td_quest_res_bars`
--

CREATE TABLE `td_quest_res_bars` (
  `id` bigint(22) NOT NULL,
  `hotel_id` bigint(22) NOT NULL,
  `hotel_type` enum('R','B') NOT NULL DEFAULT 'R' COMMENT 'R->Restaurant; B->Bars',
  `name` varchar(50) DEFAULT NULL,
  `breakfast` enum('Y','N') NOT NULL DEFAULT 'N',
  `lunch` enum('Y','N') NOT NULL DEFAULT 'N',
  `dinner` enum('Y','N') NOT NULL DEFAULT 'N',
  `brunch` enum('Y','N') NOT NULL DEFAULT 'N',
  `bar_menu` enum('Y','N') NOT NULL DEFAULT 'N',
  `special_menu` enum('Y','N') NOT NULL,
  `chat_option` enum('CO','CA','CB') DEFAULT NULL COMMENT 'CO-> Chat Only; CA-> Call; CB-> Chat Bot',
  `reservation` enum('Y','N') NOT NULL DEFAULT 'N',
  `reservation_paltform` enum('Y','N') NOT NULL DEFAULT 'N',
  `reservation_option` enum('CO','CA') DEFAULT NULL COMMENT 'CO-> Chat Only; CA-> Call',
  `created_by` varchar(50) DEFAULT NULL,
  `created_dt` datetime DEFAULT NULL,
  `modified_by` varchar(50) DEFAULT NULL,
  `modified_dt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `td_quest_res_bars`
--

INSERT INTO `td_quest_res_bars` (`id`, `hotel_id`, `hotel_type`, `name`, `breakfast`, `lunch`, `dinner`, `brunch`, `bar_menu`, `special_menu`, `chat_option`, `reservation`, `reservation_paltform`, `reservation_option`, `created_by`, `created_dt`, `modified_by`, `modified_dt`) VALUES
(1, 1, 'R', 'Trigger Fish', 'Y', 'Y', 'N', 'N', 'Y', 'N', 'CO', 'N', 'N', NULL, 'The Cliff', '2023-01-11 11:28:02', 'The Cliff', '2023-01-12 15:25:42'),
(3, 1, 'B', 'Pool Bar', 'Y', 'N', 'N', 'N', 'N', 'N', 'CA', 'Y', 'Y', 'CO', 'The Cliff', '2023-01-12 15:25:42', NULL, NULL),
(4, 9, 'B', 'POOL BAR', 'N', 'N', 'N', 'N', 'Y', 'N', 'CA', 'Y', 'N', 'CO', 'Darao Pothik Bor', '2023-01-27 12:41:22', NULL, NULL),
(5, 9, 'R', 'LAGOON', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'CA', 'Y', 'Y', 'CO', 'Darao Pothik Bor', '2023-01-27 12:41:22', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `td_quest_service`
--

CREATE TABLE `td_quest_service` (
  `id` bigint(22) NOT NULL,
  `hotel_id` bigint(22) NOT NULL,
  `service_name` varchar(100) DEFAULT NULL,
  `breakfast` enum('Y','N') NOT NULL DEFAULT 'N',
  `lunch` enum('Y','N') NOT NULL DEFAULT 'N',
  `dinner` enum('Y','N') NOT NULL DEFAULT 'N',
  `brunch` enum('Y','N') NOT NULL DEFAULT 'N',
  `special` enum('Y','N') NOT NULL DEFAULT 'N',
  `calendar` enum('Y','N') NOT NULL DEFAULT 'N',
  `menu_service_list` enum('Y','N') NOT NULL DEFAULT 'N',
  `chat_type` enum('CO','CA','CB') DEFAULT NULL COMMENT 'CO-> Chat Only; CA-> Call; CB-> Chat Bot',
  `comments` varchar(100) NOT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `created_dt` datetime DEFAULT NULL,
  `modified_by` varchar(50) DEFAULT NULL,
  `modified_dt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `td_quest_service`
--

INSERT INTO `td_quest_service` (`id`, `hotel_id`, `service_name`, `breakfast`, `lunch`, `dinner`, `brunch`, `special`, `calendar`, `menu_service_list`, `chat_type`, `comments`, `created_by`, `created_dt`, `modified_by`, `modified_dt`) VALUES
(1, 1, 'Front Desk', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'CO', 'null', 'The Cliff', '2023-01-11 11:28:02', 'The Cliff', '2023-01-16 08:28:45'),
(2, 1, 'Room Service', 'N', 'N', 'N', 'Y', 'Y', 'N', 'N', 'CB', 'null', 'The Cliff', '2023-01-11 11:28:02', 'The Cliff', '2023-01-16 08:28:45'),
(4, 1, 'Gym', 'N', 'N', 'N', 'N', 'N', 'N', 'Y', 'CA', 'Gym comments', 'The Cliff', '2023-01-11 11:28:02', 'The Cliff', '2023-01-16 08:28:45'),
(5, 1, 'Spa', 'N', 'N', 'N', 'N', 'N', 'Y', 'Y', 'CO', 'Business Comments', 'The Cliff', '2023-01-12 15:25:08', 'The Cliff', '2023-01-16 08:28:45'),
(6, 9, 'GOLF', 'N', 'N', 'N', 'N', 'N', 'Y', 'N', 'CA', '', 'Darao Pothik Bor', '2023-01-27 12:41:22', NULL, NULL),
(7, 9, 'SPA', 'N', 'N', 'N', 'N', 'N', 'Y', 'Y', 'CA', '', 'Darao Pothik Bor', '2023-01-27 12:41:22', NULL, NULL),
(8, 9, 'Room Service', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'CO', 'null', 'Darao Pothik Bor', '2023-01-27 12:41:22', NULL, NULL),
(9, 9, 'Front Desk', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'CO', 'null', 'Darao Pothik Bor', '2023-01-27 12:41:22', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `td_qustionnaire`
--

CREATE TABLE `td_qustionnaire` (
  `id` int(11) NOT NULL,
  `hotel_id` bigint(22) DEFAULT NULL,
  `first_call_dt` date DEFAULT NULL,
  `num_of_rooms` int(11) DEFAULT NULL,
  `platform_lang` enum('Y','N') DEFAULT 'N',
  `primary_lang` varchar(20) DEFAULT NULL,
  `add_lang_platform` varchar(50) DEFAULT NULL,
  `num_of_res` int(11) DEFAULT NULL,
  `num_of_bars` int(11) DEFAULT NULL,
  `hotel_part_of_chain` enum('Y','N') DEFAULT 'N',
  `quote` enum('Y','N') DEFAULT 'N',
  `comments` text DEFAULT NULL,
  `send_dt` date DEFAULT NULL,
  `receive_dt` date DEFAULT NULL,
  `admin_note` text DEFAULT NULL,
  `resend_flag` enum('Y','N') DEFAULT 'N',
  `last_resend_dt` date DEFAULT NULL,
  `resend_qts` text DEFAULT NULL,
  `reply_resend_qts` text DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `created_dt` datetime DEFAULT NULL,
  `modified_by` varchar(50) DEFAULT NULL,
  `modified_dt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `td_qustionnaire`
--

INSERT INTO `td_qustionnaire` (`id`, `hotel_id`, `first_call_dt`, `num_of_rooms`, `platform_lang`, `primary_lang`, `add_lang_platform`, `num_of_res`, `num_of_bars`, `hotel_part_of_chain`, `quote`, `comments`, `send_dt`, `receive_dt`, `admin_note`, `resend_flag`, `last_resend_dt`, `resend_qts`, `reply_resend_qts`, `created_by`, `created_dt`, `modified_by`, `modified_dt`) VALUES
(1, 1, '2022-12-25', 3, 'Y', 'sq', '2', 3, 1, 'Y', 'Y', '2023-01-16 08:28:45', '2023-01-16', '2023-01-16', 'Sample note', 'N', NULL, 'sample additional questions', '', 'admin@gmail.com', '2023-01-11 11:00:51', 'admin@gmail.com', '2023-01-16 15:42:06'),
(2, 9, '2023-01-27', 12, 'Y', 'en', 'null', 6, 6, 'N', 'N', '2023-01-27 12:41:22', '2023-01-27', '2023-01-27', 'First Note', 'N', NULL, '', '', 'admin@gmail.com', '2023-01-27 11:36:06', 'admin@gmail.com', '2023-01-27 12:41:22');

-- --------------------------------------------------------

--
-- Table structure for table `td_restaurant_update`
--

CREATE TABLE `td_restaurant_update` (
  `id` int(11) NOT NULL,
  `restaurant_id` int(10) NOT NULL,
  `update_txt` text NOT NULL,
  `on_off_flag` enum('Y','N') NOT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `created_dt` datetime DEFAULT NULL,
  `modified_by` varchar(50) DEFAULT NULL,
  `modified_dt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `td_schedue`
--

CREATE TABLE `td_schedue` (
  `id` int(11) NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `dept_id` int(11) NOT NULL,
  `date_on_off` enum('Y','N') NOT NULL DEFAULT 'Y',
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `created_dt` datetime DEFAULT NULL,
  `modified_by` varchar(50) DEFAULT NULL,
  `modified_dt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `special_id` bigint(22) NOT NULL,
  `restaurant_id` int(10) NOT NULL,
  `menu_id` varchar(5) NOT NULL DEFAULT 'S',
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

INSERT INTO `td_special_data` (`special_id`, `restaurant_id`, `menu_id`, `menu_desc`, `img_catg`, `img_path`, `created_by`, `created_dt`, `modified_by`, `modified_dt`) VALUES
(1, 13, '5', NULL, 17, 'https://lagunaapi.shoplocal-lagunabeach.com/stock/halloween.jpg', '13', '2021-10-11', '13', '2021-10-11'),
(2, 16, '5', 'null', 10, 'https://lagunaapi.shoplocal-lagunabeach.com/stock/Book-cover-page-5-CRC.jpeg', '16', '2021-10-11', NULL, NULL),
(3, 17, '5', 'null', 10, 'https://lagunaapi.shoplocal-lagunabeach.com/stock/Book-cover-page-5-CRC.jpeg', '17', '2021-10-11', NULL, NULL),
(4, 18, '5', 'null', 10, 'https://lagunaapi.shoplocal-lagunabeach.com/stock/images (1).jpeg', '18', '2021-10-11', '18', '2021-10-11'),
(5, 19, '5', 'null', 7, 'https://lagunaapi.shoplocal-lagunabeach.com/stock/user2.jpeg', '19', '2021-10-11', NULL, NULL),
(6, 22, '5', 'hghg\njvhgvhghghghg]\njvjdjvdjvdvdvdvd\nkjvndjknvdnvjdnvjnvdnv', 17, 'halloween.jpg', '22', '2021-10-13', '22', '2021-10-18'),
(7, 24, '5', 'null', 17, 'https://lagunaapi.shoplocal-lagunabeach.com/stock/halloween.jpg', '24', '2021-10-16', NULL, NULL),
(8, 5, '5', '<font face=\"Arial\">kghjkhk</font>', 24, 'birthday.jpg', '5', '2021-10-18', '5', '2023-01-07'),
(9, 26, '5', '<span style=\"font-family: Arial;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the $150 Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of&nbsp;</span><i style=\"font-family: Arial;\"><u>classical Latin literature</u></i><span style=\"font-family: Arial;\">&nbsp;from&nbsp;</span><span style=\"font-weight: bolder; font-family: Arial;\">$200</span><span style=\"font-family: Arial;\">&nbsp;All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true <b>generator</b> on the Internet. It uses a&nbsp;</span><u style=\"font-family: Arial;\"><i>dictionary</i></u><span style=\"font-family: Arial;\">&nbsp;of over<b>&nbsp;</b></span><span style=\"font-family: Arial;\"><b>$300.50</b></span>', 20, '79947294.png', '26', '2021-10-19', '26', '2021-11-05'),
(10, 28, '5', 'The country house cafe delights\n33\nThe country house cafe specials\n66', 20, 'Christmas-Wishes-Feature.jpg', '28', '2021-10-21', '28', '2021-10-21'),
(11, 30, '5', '8th day cafe and bakery specials\n88\n', 20, 'https://lagunaapi.shoplocal-lagunabeach.com/stock/79947294.png', '30', '2021-10-21', '30', '2021-10-21'),
(12, 31, '5', 'null', 20, 'https://lagunaapi.shoplocal-lagunabeach.com/stock/79947294.png', '31', '2021-10-22', NULL, NULL),
(13, 34, '5', 'TO SHARE\nMarinated Olives 3.50 (vegan)\nCrispy Meaty Bits - with Korean BBQ sauce, sesame, scallions 8\nVeggie Bits - with crispy garlic & chilli sauce, sesame, scallions 6 (vegan)\nAPPETISERS\nSoup of the Day, croutes, crusty bread 6\nChicken Liver Parfait , Heathers Harvest carrot pickle, artisan toast 7\nFishermans Cocktail, smoked salmon, crayfish & crab, lemon & lobster mayo, gem hearts, buttered granary bread 9\nMezze, mixed bean hummus, ful medames, olives, pomegranate molasses, warm pitta 6.50 (vegan)\nFalafel Kamikaze, harissa ketchup, seeds & spices 6.50 (vegan)\nBOWLS \n‘SAN FRAN’ - crispy duck, oyster sauce, Chinatown noodles, greens, crispy chilli, kochajang, sesame 15 \nVIETNAMESE ‘SREET BUN’ - tempura avocado, hot firecracker rice noodles with beansprouts, carrot pickle, nam \nprik dressing, cucumber & scallions Bao bun, hot sauce 11.50 (vegan)\nSANDWICHES \nserved until 5pm\n{served on White or Brown Bread}\n‘TRIPLE ROAST’ - Corbett\'s roast beef, pork & lamb, stuffing, gravy pot & roasties 14\n‘MATURE CHEDDAR & HEATHERS HARVEST CARROT PICKLE’ - 7.50*\n‘SMOKED SALMON & CRAYFISH COCKTAIL’ - lobster mayo, cucumber, lemon 10*\n‘MEDINA’ - chicken, harissa, halloumi, tomato, nuts & seeds 10*\nserved with French Fries *\nCLASSICS\nWild Mushroom Risotto, summer greens, pumpkin seeds - small 9 • large 14 (vegan)\n‘Caesar Salad’, Shropshire chicken, bacon, anchovies, croutons, gem, Caesar dressing, parmesan 14\nMiso Sesame Buttered Roast Salmon, firecracker rice noodles, cucumber, scallions, miso roasted cashews 15.50\nShropshire Ham, Hollowdene hens eggs, chips 14\nPlease advise us of any allergies or dietary requirements and our chefs will be pleased to help', 20, 'Christmas-Wishes-Feature.jpg', '34', '2021-11-01', '34', '2021-11-15'),
(14, 38, '5', 'View our online menu below or search to view and download a specific cafe\'s menu. Indulgences. Served with two eggs any style and choice of baked bacon, house', 17, 'halloween.jpg', '38', '2021-11-02', '38', '2021-11-02'),
(15, 44, '5', '<p><span><font color=\"#ff1414\"><b>Located on Boise restaurant row on Eighth Street, The Matador turns out a clever luncheon special called the Mix and Match Lunch. Choose two menu items for $8.50 or three for $12 a choice of three from tacos made from braised beef, carnitas, pork belly, house made chorizo, braised chicken thigh, house-made tortilla soup, and seasonal salad or romaine salad. You can find other Matador locations in Seattle, Denver, and Portland, <u>Ore.</u></b></font></span></p>', 24, 'birthday.jpg', '44', '2021-11-22', '44', '2021-11-23'),
(16, 48, '5', '<p><font color=\"#f26363\"><b>We have special menu on christmas</b></font></p><p><font face=\"Arial\" color=\"#f26363\"><b>Bacons $88</b></font></p><p><font face=\"Arial\" color=\"#f26363\"><b>Bagel $56</b></font></p><p><font face=\"Arial\" color=\"#f26363\"><b>Turkey $55</b></font></p>', 20, 'Christmas-Wishes-Feature.jpg', '48', '2021-11-26', '48', '2021-11-26'),
(24, 1, 'S', 'ghrsgsr', 19, 'thanksgiving.jpeg', '1', '2023-01-15', '1', '2023-01-15');

-- --------------------------------------------------------

--
-- Table structure for table `td_special_date_time`
--

CREATE TABLE `td_special_date_time` (
  `special_id` bigint(22) NOT NULL,
  `active_flag` enum('Y','N') NOT NULL,
  `regular_menu_flag` enum('E','A') NOT NULL COMMENT 'E: Exclusively; A: In Addition',
  `day_flag` enum('E','S') NOT NULL COMMENT 'E: Every Week; S: Specific Date',
  `month_day` int(11) DEFAULT NULL,
  `menu_frm_dt` date DEFAULT NULL,
  `menu_to_dt` date DEFAULT NULL,
  `regular_menu_id` enum('B','L','D','R','S','A','V') NOT NULL COMMENT 'B:Breakfast L:Lunch D:Dinner R:Brunch S:Special A:Bar V:Menu Service',
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `created_dt` datetime DEFAULT NULL,
  `modified_by` varchar(50) DEFAULT NULL,
  `modified_dt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
(14, 20, '79947294.png', 'admin@gmail.com', '2021-10-18 12:04:35'),
(16, 20, 'Christmas-Wishes-Feature.jpg', 'admin@gmail.com', '2021-10-18 12:07:11'),
(19, 24, 'birthday.jpg', 'admin@gmail.com', '2021-10-27 06:40:37'),
(20, 25, 'anniversary.jpg', 'admin@gmail.com', '2021-10-27 06:41:42'),
(21, 9, 'mothers_day.jpg', 'admin@gmail.com', '2022-01-20 07:45:59'),
(22, 19, 'thanksgiving.jpeg', 'admin@gmail.com', '2022-01-20 07:47:11');

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
(1, 0, 'admin@gmail.com', '$2b$10$mvFwPgBGvSgMCuUWSP.uNedd22Er6UeZxNMN.ahqq9lVn62utY5b2', 'Y', '2023-02-10 12:48:36', NULL, NULL),
(2, 1, 'somnath.thakur16@gmail.com', '$2b$10$mvFwPgBGvSgMCuUWSP.uNedd22Er6UeZxNMN.ahqq9lVn62utY5b2', 'Y', '2023-02-09 10:44:35', NULL, NULL),
(3, 2, 'ugolfmedia@gmail.com', '$2b$10$mvFwPgBGvSgMCuUWSP.uNedd22Er6UeZxNMN.ahqq9lVn62utY5b2', 'Y', '2023-01-09 14:51:38', NULL, NULL),
(4, 5, 'somnath.thakur16+90@gmail.com', '$2b$10$mvFwPgBGvSgMCuUWSP.uNedd22Er6UeZxNMN.ahqq9lVn62utY5b2', 'N', '2023-01-14 06:40:14', NULL, NULL);

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
-- Indexes for table `md_department`
--
ALTER TABLE `md_department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `md_email_type`
--
ALTER TABLE `md_email_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `md_employee`
--
ALTER TABLE `md_employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `md_holder_cling`
--
ALTER TABLE `md_holder_cling`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `md_promotion_admin_custom`
--
ALTER TABLE `md_promotion_admin_custom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `md_promotion_restaurant_custom`
--
ALTER TABLE `md_promotion_restaurant_custom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `md_promo_calander`
--
ALTER TABLE `md_promo_calander`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `md_restaurant_items`
--
ALTER TABLE `md_restaurant_items`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `md_restaurant_item_description`
--
ALTER TABLE `md_restaurant_item_description`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `md_section`
--
ALTER TABLE `md_section`
  ADD PRIMARY KEY (`section_id`);

--
-- Indexes for table `md_service_items`
--
ALTER TABLE `md_service_items`
  ADD PRIMARY KEY (`service_item_id`);

--
-- Indexes for table `md_service_item_description`
--
ALTER TABLE `md_service_item_description`
  ADD PRIMARY KEY (`service_item_id`);

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
-- Indexes for table `td_calendar_custom`
--
ALTER TABLE `td_calendar_custom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `td_contacts_custom`
--
ALTER TABLE `td_contacts_custom`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `phone_no` (`phone_no`);

--
-- Indexes for table `td_date_time`
--
ALTER TABLE `td_date_time`
  ADD PRIMARY KEY (`srv_res_flag`,`srv_res_id`,`menu_id`,`month_day`) USING BTREE;

--
-- Indexes for table `td_emergency_rec_report`
--
ALTER TABLE `td_emergency_rec_report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `td_emp_schedule`
--
ALTER TABLE `td_emp_schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `td_guest_user`
--
ALTER TABLE `td_guest_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `td_logo`
--
ALTER TABLE `td_logo`
  ADD PRIMARY KEY (`srv_res_flag`,`srv_res_id`);

--
-- Indexes for table `td_menu_image`
--
ALTER TABLE `td_menu_image`
  ADD PRIMARY KEY (`srv_res_flag`,`srv_res_id`,`menu_id`,`menu_img`(100)) USING BTREE;

--
-- Indexes for table `td_menu_notice`
--
ALTER TABLE `td_menu_notice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `td_notification`
--
ALTER TABLE `td_notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `td_notification_audience`
--
ALTER TABLE `td_notification_audience`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `td_notification_dtls`
--
ALTER TABLE `td_notification_dtls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `td_other_image`
--
ALTER TABLE `td_other_image`
  ADD PRIMARY KEY (`srv_res_flag`,`srv_res_id`,`menu_id`) USING BTREE;

--
-- Indexes for table `td_payment`
--
ALTER TABLE `td_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `td_pc_avatar`
--
ALTER TABLE `td_pc_avatar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `td_pc_voice`
--
ALTER TABLE `td_pc_voice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `td_promotions_custom`
--
ALTER TABLE `td_promotions_custom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `td_proposal`
--
ALTER TABLE `td_proposal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `td_proposal_dtls`
--
ALTER TABLE `td_proposal_dtls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `td_quest_add_lang`
--
ALTER TABLE `td_quest_add_lang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `td_quest_res_bars`
--
ALTER TABLE `td_quest_res_bars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `td_quest_service`
--
ALTER TABLE `td_quest_service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `td_qustionnaire`
--
ALTER TABLE `td_qustionnaire`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `td_restaurant_update`
--
ALTER TABLE `td_restaurant_update`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `td_schedue`
--
ALTER TABLE `td_schedue`
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
  ADD PRIMARY KEY (`special_id`);

--
-- Indexes for table `td_special_date_time`
--
ALTER TABLE `td_special_date_time`
  ADD PRIMARY KEY (`special_id`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `md_config_email`
--
ALTER TABLE `md_config_email`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
-- AUTO_INCREMENT for table `md_department`
--
ALTER TABLE `md_department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `md_email_type`
--
ALTER TABLE `md_email_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `md_employee`
--
ALTER TABLE `md_employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `md_menu`
--
ALTER TABLE `md_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `md_package_custom`
--
ALTER TABLE `md_package_custom`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `md_parm_value`
--
ALTER TABLE `md_parm_value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `md_promotion_admin_custom`
--
ALTER TABLE `md_promotion_admin_custom`
  MODIFY `id` bigint(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `md_promotion_restaurant_custom`
--
ALTER TABLE `md_promotion_restaurant_custom`
  MODIFY `id` bigint(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `md_restaurant_items`
--
ALTER TABLE `md_restaurant_items`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `md_section`
--
ALTER TABLE `md_section`
  MODIFY `section_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `md_service_items`
--
ALTER TABLE `md_service_items`
  MODIFY `service_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `td_about`
--
ALTER TABLE `td_about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `td_calendar_custom`
--
ALTER TABLE `td_calendar_custom`
  MODIFY `id` bigint(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `td_contacts_custom`
--
ALTER TABLE `td_contacts_custom`
  MODIFY `id` bigint(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `td_emergency_rec_report`
--
ALTER TABLE `td_emergency_rec_report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `td_emp_schedule`
--
ALTER TABLE `td_emp_schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `td_guest_user`
--
ALTER TABLE `td_guest_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `td_menu_notice`
--
ALTER TABLE `td_menu_notice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `td_notification`
--
ALTER TABLE `td_notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `td_notification_audience`
--
ALTER TABLE `td_notification_audience`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `td_notification_dtls`
--
ALTER TABLE `td_notification_dtls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `td_pc_avatar`
--
ALTER TABLE `td_pc_avatar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `td_pc_voice`
--
ALTER TABLE `td_pc_voice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `td_promotions_custom`
--
ALTER TABLE `td_promotions_custom`
  MODIFY `id` bigint(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `td_proposal`
--
ALTER TABLE `td_proposal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `td_proposal_dtls`
--
ALTER TABLE `td_proposal_dtls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `td_quest_add_lang`
--
ALTER TABLE `td_quest_add_lang`
  MODIFY `id` bigint(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `td_quest_res_bars`
--
ALTER TABLE `td_quest_res_bars`
  MODIFY `id` bigint(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `td_quest_service`
--
ALTER TABLE `td_quest_service`
  MODIFY `id` bigint(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `td_qustionnaire`
--
ALTER TABLE `td_qustionnaire`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `td_restaurant_update`
--
ALTER TABLE `td_restaurant_update`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `td_schedue`
--
ALTER TABLE `td_schedue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `td_section_image_request`
--
ALTER TABLE `td_section_image_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `td_special_data`
--
ALTER TABLE `td_special_data`
  MODIFY `special_id` bigint(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `td_stock_image`
--
ALTER TABLE `td_stock_image`
  MODIFY `id` bigint(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `td_users`
--
ALTER TABLE `td_users`
  MODIFY `id` bigint(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
