-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 24, 2022 at 12:16 PM
-- Server version: 10.3.32-MariaDB
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laguna_local_shop_custom`
--

--
-- Truncate table before insert `md_config_email`
--

TRUNCATE TABLE `md_config_email`;
--
-- Dumping data for table `md_config_email`
--

INSERT INTO `md_config_email` (`id`, `email_type_id`, `email_body`, `created_by`, `created_dt`, `modified_by`, `modified_dt`) VALUES
(1, 1, 'You have successfully completed your registration..', 'admin@gmail.com', '2021-11-25 13:14:57', NULL, NULL),
(2, 2, 'Your order has been placed successfully.', 'admin@gmail.com', '2021-11-25 13:15:41', NULL, NULL),
(3, 3, 'We are happy to have you as a part of the Shop Local Laguna family!\nYour payment has been done successfully.', 'admin@gmail.com', '2021-11-25 13:16:25', NULL, NULL);

--
-- Truncate table before insert `md_config_inst`
--

TRUNCATE TABLE `md_config_inst`;
--
-- Dumping data for table `md_config_inst`
--

INSERT INTO `md_config_inst` (`id`, `menu_help`, `calender_help`, `qr_help`, `birthday_help`, `cantact_info_help`, `birthday_body`, `event_body`, `event_img`, `order_conf`, `cover_img`, `created_by`, `created_dt`, `modified_by`, `modified_dt`) VALUES
(1, 'This is a sample help text for menu. ', 'This is a sample help text for calendar. ', 'This is a sample help text for QR Code signage. ', 'This is a sample help text for birthday/anniversary. ', 'This is a sample help text for contact information. ', '<font face=\"Arial\">This is a rule set for birthdays and anniversary. There are certain rules to be followed if someone has chosen birthday/anniversary. The facility is free by default and it is up to the admin to decide whether is free or not. The rules are as followed:</font><p></p><ol><li><font face=\"Arial\">Rule 1</font></li><li><font face=\"Arial\">Rule 2</font></li><li><font face=\"Arial\">Rule 3</font></li></ol><p></p>', '<font face=\"Arial\">This is a rule set for event calendar. There are certain rules to be followed if someone has chosen event calendar. The facility is free by default and it is up to the admin to decide whether is free or not. The rules are as followed:</font><p></p><ol><li><font face=\"Arial\">Rule 1</font></li><li><font face=\"Arial\">Rule 2</font></li><li><font face=\"Arial\">Rule 3</font></li></ol><p></p>', 'dif_eventsample.jpg', 'We are happy to have you as a part of the Shop Local Laguna family!\nWe\'ve received your order, including all photos and data (or link to your website\nfor us to collect), and will now commence with the development of your Digital\nMenu.\nIf for any reason there are any problems then we will contact you by email.\nWhat\'s Next?\nBefore your Digital Menu can go live you must check that all of the menu\ncontent is correct, and meets with your overall approval. You should do this by\nscanning the QR Code contained in the completion email we send you, this way\nyou will experience (the same way that your customers will) viewing and\nnavigating your new menu platform on your mobile.\nIf everything is in order then you will Approve the Menu.\nHowever if there are any errors or omissions you will identify those issues in the\nform and they would be corrected by our technical support team and once\ncompleted you will receive the confirmation email again. Any future\namendments to the Menu will be handled by you or your authorized staff, from\nwithin your platform\'s back-office.\nOnce you\'ve provided us with your final approval, your Menu will go LIVE. You\nwill receive an email which includes a link to your sign-in page, where your\nUsername will be your registered email address. We will provide a temporary\npassword which expires 2 hours after first logging in, so the first thing you must\ndo is to create your new password.', 'dif_cov_rest_cov.jpg', 'admin@gmail.com', '2021-11-18 12:41:22', 'undefined', '2021-12-07 07:26:28');

--
-- Truncate table before insert `md_config_menu`
--

TRUNCATE TABLE `md_config_menu`;
--
-- Dumping data for table `md_config_menu`
--

INSERT INTO `md_config_menu` (`id`, `footer_color`, `footer_content`, `text_color`, `greet_text_color`) VALUES
(1, '#0d0d0d', '<div><font face=\"Arial\">This is a sample footer text and this is a sample&#160;</font><a href=\"https://online.kfc.co.in/\" target=\"_blank\">link</a><font face=\"Arial\">.</font></div>', '#ffffff', '#fa00b7');

--
-- Truncate table before insert `md_country`
--

TRUNCATE TABLE `md_country`;
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

--
-- Truncate table before insert `md_email_type`
--

TRUNCATE TABLE `md_email_type`;
--
-- Dumping data for table `md_email_type`
--

INSERT INTO `md_email_type` (`id`, `type_name`, `created_by`, `created_dt`) VALUES
(1, 'Order Placement', 'admin@gmail.com', '2021-11-05 00:00:00'),
(2, 'Payment', 'admin@gmail.com', '2021-11-05 00:00:00'),
(3, 'Login Credential', 'admin@gmail.com', '2021-11-05 00:00:00'),
(4, 'Order Confirm', 'admin@gmail.com', '2022-01-20 18:19:34');

--
-- Truncate table before insert `md_holder_cling`
--

TRUNCATE TABLE `md_holder_cling`;
--
-- Dumping data for table `md_holder_cling`
--

INSERT INTO `md_holder_cling` (`id`, `free_flag`, `price`, `created_by`, `created_dt`, `modified_by`, `modified_dt`) VALUES
(6, 'N', 2.00, 'Subham', '2021-09-15 00:00:00', 'admin@gmail.com', '2021-12-24 13:13:24'),
(7, 'N', 5.00, 'Subham', '2021-09-15 00:00:00', 'admin@gmail.com', '2021-10-13 05:30:28'),
(8, 'N', 8.00, 'Subham', '2021-09-15 00:00:00', 'admin@gmail.com', '2021-10-13 05:30:29'),
(9, 'N', 6.00, 'Subham', '2021-09-15 00:00:00', 'admin@gmail.com', '2021-10-13 05:30:34');

--
-- Truncate table before insert `md_items_custom`
--

TRUNCATE TABLE `md_items_custom`;
--
-- Dumping data for table `md_items_custom`
--

INSERT INTO `md_items_custom` (`id`, `restaurant_id`, `venue_id`, `menu_id`, `section_id`, `item_name`, `created_by`, `created_dt`, `modified_by`, `modified_dt`) VALUES
(1, 4, 9, 14, 1, 'Jumbo Pizza', '4', '2022-01-24 11:02:06', NULL, NULL),
(2, 4, 9, 14, 2, 'Breakfast Buritos', '4', '2022-01-24 11:02:17', NULL, NULL),
(3, 4, 9, 14, 3, 'Afghani Burger', '4', '2022-01-24 11:02:29', NULL, NULL),
(4, 4, 10, 16, 4, 'Lasagna', '4', '2022-01-24 11:04:50', NULL, NULL),
(5, 4, 10, 17, 5, 'Turkey', '4', '2022-01-24 11:05:06', NULL, NULL);

--
-- Truncate table before insert `md_item_description_custom`
--

TRUNCATE TABLE `md_item_description_custom`;
--
-- Dumping data for table `md_item_description_custom`
--

INSERT INTO `md_item_description_custom` (`id`, `restaurant_id`, `venue_id`, `menu_id`, `section_id`, `item_id`, `item_price`, `item_desc`, `item_note`, `note_color`, `note_back_color`, `created_by`, `created_dt`, `modified_by`, `modified_dt`) VALUES
(1, 4, 9, 14, 1, 1, 34.00, 'Jumbo Pizza is available at the very best.', 'IN STOCK', '#04ff00', '#ffffff', '4', '2022-01-24 11:10:53', NULL, NULL),
(2, 4, 9, 14, 2, 2, 99.00, 'Breakfast buritos now available at cheaper rates', 'OUT OF STOCK', '#ff0000', '#ffffff', '4', '2022-01-24 11:11:32', NULL, NULL),
(3, 4, 9, 14, 3, 3, 77.00, 'Afghani Burger at its best', '', '#ff0000', '#ffffff', '4', '2022-01-24 11:11:58', NULL, NULL),
(4, 4, 10, 16, 4, 4, 67.00, 'Lasagna at its very best', '', '#ff0000', '#ffffff', '4', '2022-01-24 11:12:48', NULL, NULL),
(5, 4, 10, 17, 5, 5, 102.00, 'Turkey from Turkey', 'OUT OF STOCK', '#ff0019', '#ffffff', '4', '2022-01-24 11:14:22', NULL, NULL);

--
-- Truncate table before insert `md_menu`
--

TRUNCATE TABLE `md_menu`;
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

--
-- Truncate table before insert `md_package_custom`
--

TRUNCATE TABLE `md_package_custom`;
--
-- Dumping data for table `md_package_custom`
--

INSERT INTO `md_package_custom` (`id`, `restaurant_id`, `pakage_name`, `no_of_menu`, `special_menu`, `setup_fee`, `monthly_fee`, `created_by`, `created_dt`, `modified_by`, `modified_dt`) VALUES
(1, 1, 'Custom', 3, 'Y', 15.00, 20.00, 'admin@gmail.com', '2021-12-24 12:02:22', 'admin@gmail.com', '2021-12-24 12:12:34');

--
-- Truncate table before insert `md_parm_value`
--

TRUNCATE TABLE `md_parm_value`;
--
-- Dumping data for table `md_parm_value`
--

INSERT INTO `md_parm_value` (`id`, `param_desc`, `param_value`) VALUES
(1, 'Project Name', 'Shop Local Laguna'),
(2, 'Email Name', 'Cindy Ferguson');

--
-- Truncate table before insert `md_promotion_admin`
--

TRUNCATE TABLE `md_promotion_admin`;
--
-- Dumping data for table `md_promotion_admin`
--

INSERT INTO `md_promotion_admin` (`id`, `intro`, `confirm_email`, `image`, `pop_up_offer_title`, `pop_up_offer_body`, `questions1`, `questions2`, `questions3`, `mailing_email_subject`, `mailing_email_body`, `privacy`, `authorization`, `back_color`, `created_by`, `created_at`, `modified_by`, `modified_at`) VALUES
(1, 'We would love to make your next Birthday/Anniversary extra special.', 'We would like to thank you for registering on our Birthday/Anniversary Offer program and will contact you again a couple of weeks before the date/s you have provided. Please show this email to our staff who will make sure you receive your FREE Beverage. Many thanks and enjoy your meal.', 'birthday.jpg', 'Free Drinks', 'Register now and get a free drinks with your meal. Show the code you receive by text to our waiter', 'What hobbies/interests do you have? ', 'What is your favorit sport?', 'Where is your favorit vacation destination?', 'A [Happy Birthday] PRESENT from [The Cliff Restaur', 'Hello [name from promotion registration]!\n			\nWe are SO HAPPY to hear, it is almost your [Birthday]!\n\nWe would like to invite you to JOIN US on your [Birthday], and receive a SPECIAL SURPRISE!\n\nSimply make a reservation, then show the waiter/waitress this email when you are first seated.\n\nSee you soon!\n[Restaurant\'s Contact Name]\n\n[Name of Restaurant]\n[Address]\n[Phone]\n[Email]\n[URL to MENU LANDING PAGE] (ie. https://www.shoplocallaguna.com/restaurants/the-cliff/LandingPage.php)\n			\nSAVE THIS INF', '    This Privacy Policy describes how Wiley collects and uses the personal information you provide to Wiley. It also describes the choices available to you regarding our use of your personal information ', '    Personal information will not be kept longer than is necessary for the purpose.', '#e68484', 'admin@gmail.com', '2021-10-27 06:37:26', 'admin@gmail.com', '2021-11-29 11:19:08');

--
-- Truncate table before insert `md_promotion_restaurant`
--

TRUNCATE TABLE `md_promotion_restaurant`;
--
-- Dumping data for table `md_promotion_restaurant`
--

INSERT INTO `md_promotion_restaurant` (`id`, `restaurant_id`, `intro`, `confirm_email`, `image`, `pop_up_offer_title`, `pop_up_offer_body`, `questions1`, `questions2`, `questions3`, `mailing_email_subject`, `mailing_email_body`, `menu_id`, `month_day`, `status_id`, `created_by`, `created_at`, `modified_by`, `modified_at`) VALUES
(1, 26, 'We would love to make your next Birthday/Anniversary extra special.', 'We would like to thank you for registering on our Birthday/Anniversary Offer program and will contact you again a couple of weeks before the date/s you have provided. Please show this email to our staff who will make sure you receive your FREE Beverage. Many thanks and enjoy your meal.', 'birthday.jpg', 'Free Drinks', 'Register now and get a free drinks with your meal. Show the code you receive by text to our waiter', '', 'What is your favorit city?', 'Where is your favorit vacation destination?', 'A [Birthday/Anniversary]! PRESENT from [Name of Restaurant]!', 'Hello [User Name]!\r\n \r\nWe are SO HAPPY to hear, it is almost your [Birthday/Anniversary]!\r\n\r\nWe would like to invite you to JOIN US on your [Birthday/Anniversary]!, and receive a SPECIAL SURPRISE!\r\n\r\nSimply make a reservation, then show the waiter/waitress this email when you are first seated.\r\n\r\nSee you soon!\r\n[Restaurant\'s Contact Name]!\r\n\r\n[Name of Restaurant]!\r\n[Address]!\r\n[Phone]!\r\n[Email]!\r\n[Menu Url]! (ie. https://www.shoplocallaguna.com/restaurants/the-cliff/LandingPage.php)\r\n \r\nSAVE THIS INF', 0, 1, '0', '26', '2021-10-27 06:49:24', '26', '2021-11-05 10:54:59'),
(2, 44, 'We would love to make your next Birthday/Anniversary extra special.', 'We would like to thank you for registering on our Birthday/Anniversary Offer program and will contact you again a couple of weeks before the date/s you have provided. Please show this email to our staff who will make sure you receive your FREE Beverage. Many thanks and enjoy your meal.', 'birthday.jpg', 'Free Drinks', 'Register now and get a free drinks with your meal. Show the code you receive by text to our waiter', 'What hobbies/interests do you have? ', 'What is your favorit sport?', 'Where is your favorit vacation destination?', 'A [Happy Birthday] PRESENT from [The Cliff Restaur', 'Hello [name from promotion registration]!\n			\nWe are SO HAPPY to hear, it is almost your [Birthday]!\n\nWe would like to invite you to JOIN US on your [Birthday], and receive a SPECIAL SURPRISE!\n\nSimply make a reservation, then show the waiter/waitress this email when you are first seated.\n\nSee you soon!\n[Restaurant\'s Contact Name]\n\n[Name of Restaurant]\n[Address]\n[Phone]\n[Email]\n[URL to MENU LANDING PAGE] (ie. https://www.shoplocallaguna.com/restaurants/the-cliff/LandingPage.php)\n			\nSAVE THIS INF', 0, 1, '0', '44', '2021-11-22 11:37:13', '44', '2021-11-22 11:45:59'),
(3, 48, 'We would love to make your next Birthday/Anniversary extra special.', 'We would like to thank you for registering on our Birthday/Anniversary Offer program and will contact you again a couple of weeks before the date/s you have provided. Please show this email to our staff who will make sure you receive your FREE Beverage. Many thanks and enjoy your meal.', 'birthday.jpg', 'Free Drinks', 'Register now and get a free drinks with your meal. Show the code you receive by text to our waiter', 'What hobbies/interests do you have? ', 'What is your favorit sport?', 'Where is your favorit vacation destination?', 'A [Happy Birthday] PRESENT from [The Cliff Restaur', 'Hello [name from promotion registration]!\n			\nWe are SO HAPPY to hear, it is almost your [Birthday]!\n\nWe would like to invite you to JOIN US on your [Birthday], and receive a SPECIAL SURPRISE!\n\nSimply make a reservation, then show the waiter/waitress this email when you are first seated.\n\nSee you soon!\n[Restaurant\'s Contact Name]\n\n[Name of Restaurant]\n[Address]\n[Phone]\n[Email]\n[URL to MENU LANDING PAGE] (ie. https://www.shoplocallaguna.com/restaurants/the-cliff/LandingPage.php)\n			\nSAVE THIS INF', 0, 1, '0', '48', '2021-11-26 09:14:12', '48', '2021-11-26 09:16:18');

--
-- Truncate table before insert `md_promo_calander`
--

TRUNCATE TABLE `md_promo_calander`;
--
-- Dumping data for table `md_promo_calander`
--

INSERT INTO `md_promo_calander` (`id`, `free_flag`, `price`, `created_by`, `created_dt`, `modified_by`, `modified_dt`) VALUES
(4, 'Y', 0.00, 'admin@gmail.com', '2021-09-28 06:07:17', 'admin@gmail.com', '2021-12-24 12:38:53'),
(5, 'Y', 0.00, 'admin@gmail.com', '2021-09-28 06:07:18', 'admin@gmail.com', '2021-10-13 05:36:19');

--
-- Truncate table before insert `md_section_custom`
--

TRUNCATE TABLE `md_section_custom`;
--
-- Dumping data for table `md_section_custom`
--

INSERT INTO `md_section_custom` (`id`, `restaurant_id`, `venue_id`, `menu_id`, `section_name`, `section_img`, `created_by`, `created_dt`, `modified_by`, `modified_dt`) VALUES
(1, 4, 9, 14, 'Jumbo', '4_9_14_sectionJumbo_65286.jpg', '4', '2022-01-21 11:24:36', '4', '2022-01-21 11:25:25'),
(2, 4, 9, 14, 'Buritos', '4_9_14_sectionBuritos_1_1_cover_lunch_cover_img.jpg', '4', '2022-01-24 10:58:51', NULL, NULL),
(3, 4, 9, 14, 'Burger', '4_9_14_sectionBurger_1_1_section_3_sec_bf_3.jpg', '4', '2022-01-24 10:59:52', NULL, NULL),
(4, 4, 10, 16, 'Brunch delights', '4_10_16_sectionBrunch_delights_1_1_section_3_sec3.jpg', '4', '2022-01-24 11:03:56', NULL, NULL),
(5, 4, 10, 17, 'Lunch Delights', '4_10_17_sectionLunch_Delights_1_1_sectionChoice_of Burgars_sec_bf_1.jpg', '4', '2022-01-24 11:04:16', NULL, NULL);

--
-- Truncate table before insert `md_special_category`
--

TRUNCATE TABLE `md_special_category`;
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

--
-- Truncate table before insert `md_time_zone`
--

TRUNCATE TABLE `md_time_zone`;
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

--
-- Truncate table before insert `md_url_custom`
--

TRUNCATE TABLE `md_url_custom`;
--
-- Dumping data for table `md_url_custom`
--

INSERT INTO `md_url_custom` (`id`, `restaurant_id`, `venue_id`, `url`, `bitly_url`, `image`, `dynamic_img`, `v_card_img`, `fun_directory_img`, `approval_flag`, `approved_by`, `approved_date`) VALUES
(1, 4, 9, 'http://localhost:4200/#/menu/The_Cliff/NC85', 'undefined', NULL, '4_9_dynamic_qr_qr-code (3).png', NULL, NULL, 'U', NULL, NULL),
(2, 4, 10, 'http://localhost:4200/#/menu/The_Cliff/NC8xMA==', 'undefined', NULL, '4_10_dynamic_qr_qr-code (4).png', NULL, NULL, 'U', NULL, NULL);

--
-- Truncate table before insert `td_about`
--

TRUNCATE TABLE `td_about`;
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
(15, 48, 'Known For\nDine under the roof and feel like dining in China!\n', '48', '2021-11-26 05:53:31', '48', '2021-11-26 08:34:22'),
(16, 4, 'Please add a short bio of your restaurant: cuisine type, days/hours, safety, etc.,', '4', '2022-01-21 11:18:59', NULL, NULL);

--
-- Truncate table before insert `td_calendar`
--

TRUNCATE TABLE `td_calendar`;
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

--
-- Truncate table before insert `td_contacts_custom`
--

TRUNCATE TABLE `td_contacts_custom`;
--
-- Dumping data for table `td_contacts_custom`
--

INSERT INTO `td_contacts_custom` (`id`, `contact_date`, `restaurant_name`, `contact_name`, `phone_no`, `email`, `addr_line1`, `addr_line2`, `city`, `zip`, `country`, `time_zone`, `website`, `active_user`, `proposal_status`, `created_by`, `created_at`, `modified_by`, `modified_dt`) VALUES
(1, '2021-12-23 19:04:19', 'Cafe Kathmandu', 'Rajiv Batra', '9835751294', 'somnath.thakur16@gmail.com', 'Lake Place', 'Southern Avenue', 'Kolkata', '700029', '2', 'Asia/Calcutta', 'kafekathmandu.com', 'N', 'P', 'somnath.thakur16@gmail.com', '2021-12-23 19:04:19', NULL, NULL),
(2, '2022-01-20 09:02:38', 'The Euphoria Lounge', 'Suman Mitra', '9903936701', 'meettan@gmail.com', 'B/205, Raja Subodh Chandra Mallick Rd, ', 'Shyama Pally, Bapuji Nagar, Jadavpur,', 'Kolkata', '700032', '2', 'Asia/Calcutta', 'https://www.zomato.com/kolkata/the-euphoria-lounge-jadavpur', 'N', 'P', 'meettan@gmail.com', '2022-01-20 09:02:38', NULL, NULL),
(4, '2022-01-21 10:34:32', 'The Cliff', 'Subham Samanta', '(949) 494-1956', 'samantasubham9804@gmail.com', 'Laguna Beach', NULL, 'California', '92651', '22', 'Asia/Calcutta', 'https://www.thecliffrestaurant.com/', 'Y', 'C', 'samantasubham9804@gmail.com', '2022-01-21 10:34:32', 'samantasubham9804@gmail.com', '2022-01-21 11:08:11'),
(5, '2022-01-24 06:57:40', 'D Bapi Biriyani', 'Suman Mitra', '8777528909', 'sumanmitra0096@gmail.com', 'Madhyamgram', 'BadamTola', 'Kolkata', '700113', '2', 'Asia/Calcutta', 'Google.com', 'N', 'P', 'sumanmitra0096@gmail.com', '2022-01-24 06:57:40', NULL, NULL),
(6, '2022-01-24 08:49:03', 'Susan\'s kitchen', 'Susan Mitra', '54789652156', 'somnath.thakur16+56@gmail.com', 'No. 1858/1,  Rajdanga Main Road', NULL, 'KOLKATA', '700107', '2', 'Asia/Calcutta', '', 'Y', 'C', 'somnath.thakur16+56@gmail.com', '2022-01-24 08:49:03', 'somnath.thakur16+56@gmail.com', '2022-01-24 09:44:14');

--
-- Truncate table before insert `td_date_time_custom`
--

TRUNCATE TABLE `td_date_time_custom`;
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
(7, 1, 1, 3, 'Y', 7, '13:57:00', '15:57:00', '1', '2022-01-18 13:38:34', '1', '2022-01-18 15:24:39'),
(8, 4, 9, 14, 'Y', 6, '16:41:00', '18:41:00', '4', '2022-01-21 11:11:30', NULL, NULL),
(9, 4, 9, 14, 'Y', 7, '16:41:00', '18:41:00', '4', '2022-01-21 11:11:30', NULL, NULL),
(10, 4, 9, 14, 'Y', 8, '16:41:00', '18:41:00', '4', '2022-01-21 11:11:30', NULL, NULL),
(11, 4, 9, 14, 'Y', 5, '16:41:00', '18:41:00', '4', '2022-01-21 11:11:30', NULL, NULL),
(12, 4, 9, 14, 'Y', 3, '16:41:00', '18:41:00', '4', '2022-01-21 11:11:30', NULL, NULL),
(13, 4, 9, 14, 'Y', 4, '16:41:00', '18:41:00', '4', '2022-01-21 11:11:30', NULL, NULL),
(14, 4, 9, 14, 'Y', 2, '16:41:00', '18:41:00', '4', '2022-01-21 11:11:30', NULL, NULL),
(15, 4, 9, 15, 'Y', 6, '19:42:00', '21:43:00', '4', '2022-01-21 11:13:06', NULL, NULL),
(16, 4, 9, 15, 'Y', 2, '19:42:00', '21:43:00', '4', '2022-01-21 11:13:06', NULL, NULL),
(17, 4, 9, 15, 'Y', 4, '19:42:00', '21:43:00', '4', '2022-01-21 11:13:06', NULL, NULL);

--
-- Truncate table before insert `td_logo_custom`
--

TRUNCATE TABLE `td_logo_custom`;
--
-- Dumping data for table `td_logo_custom`
--

INSERT INTO `td_logo_custom` (`id`, `restaurant_id`, `venue_id`, `logo_url`, `logo_path`, `created_by`, `created_dt`, `modified_by`, `modified_dt`) VALUES
(1, 4, 9, '', '4_9_logo_logo.png', '4', '2022-01-21 11:17:45', NULL, NULL),
(2, 4, 10, '', '4_10_logo_imageedit_2_6060479171.png', '4', '2022-01-21 11:18:37', NULL, NULL);

--
-- Truncate table before insert `td_menu_image_custom`
--

TRUNCATE TABLE `td_menu_image_custom`;
--
-- Dumping data for table `td_menu_image_custom`
--

INSERT INTO `td_menu_image_custom` (`id`, `restaurant_id`, `venue_id`, `menu_id`, `active_flag`, `menu_url`, `menu_img`, `created_by`, `created_dt`) VALUES
(1, 1, 1, 3, 'Y', '', NULL, '1', '2022-01-18 13:38:34'),
(2, 1, 1, 3, 'Y', '', '1_3_menu_Industry Leaders.pdf', '1', '2022-01-18 13:38:34'),
(3, 4, 9, 14, 'Y', 'menu.com', '4_14_menu_English exam set without ans - 8-15.pdf', '4', '2022-01-21 11:11:31'),
(4, 4, 9, 14, 'Y', 'menu.com', NULL, '4', '2022-01-21 11:11:31'),
(5, 4, 9, 15, 'Y', '', '4_15_menu_2041521155436.pdf', '4', '2022-01-21 11:13:07'),
(6, 4, 9, 15, 'Y', '', NULL, '4', '2022-01-21 11:13:07');

--
-- Truncate table before insert `td_menu_notice_custom`
--

TRUNCATE TABLE `td_menu_notice_custom`;
--
-- Dumping data for table `td_menu_notice_custom`
--

INSERT INTO `td_menu_notice_custom` (`id`, `restaurant_id`, `venue_id`, `menu_id`, `notice_flag`, `position_id`, `header_title`, `font_color`, `back_color`, `notice_content`, `created_by`, `created_dt`, `modified_by`, `modified_dt`) VALUES
(1, 4, 9, 14, 'Y', 1, 'Fresh Breakfast', '#f70202', '#cdbf65', 'Have fresh breakfast at our place', '4', '2022-01-21 11:19:29', '4', '2022-01-24 11:15:24'),
(2, 4, 9, 15, 'Y', 2, 'Dinner delights', '#ff0505', '#fcfcfc', 'Dinner delights at our place', '4', '2022-01-24 11:16:40', NULL, NULL),
(3, 4, 10, 16, 'Y', 3, 'Brunch delights', '#ff0000', '#fcfcfc', 'SMOKING IS INJURIOUS TO HEALTH', '4', '2022-01-24 11:17:14', NULL, NULL);

--
-- Truncate table before insert `td_menu_request`
--

TRUNCATE TABLE `td_menu_request`;
--
-- Truncate table before insert `td_order_items_custom`
--

TRUNCATE TABLE `td_order_items_custom`;
--
-- Dumping data for table `td_order_items_custom`
--

INSERT INTO `td_order_items_custom` (`id`, `restaurant_id`, `package_name`, `no_of_menu`, `special_menu`, `setup_fee`, `monthly_fee`, `birth_calendar_flag`, `birth_calendar_free_flag`, `birth_calendar_price`, `event_calendar_flag`, `event_calendar_free_flag`, `event_calendar_price`, `table_top_6`, `table_top_6_price`, `table_top_7`, `table_top_7_price`, `table_top_8`, `table_top_8_price`, `window_cling_9`, `window_cling_9_price`, `approval_flag`, `menu_approval_flag`, `payment_flag`, `remarks`, `created_by`, `created_dt`, `modified_by`, `modified_dt`) VALUES
(1, 1, 'Custom', 2, 'Y', 20.00, 20.00, 'Y', 'N', 4.00, 'Y', 'Y', 0.00, 3, 1.00, 4, 2.00, 5, 3.00, 6, 5, 'U', 'U', NULL, NULL, 'admin@gmail.com', '2021-12-24 12:35:04', 'admin@gmail.com', '2022-01-19 13:26:16'),
(2, 4, 'Custom', 3, 'Y', 12.00, 20.00, 'Y', 'Y', 0.00, 'Y', 'N', 2.00, 2, 10.00, 4, 5.00, 10, 8.00, 5, 7, 'A', 'S', 'Y', 'Issue', 'admin@gmail.com', '2022-01-21 10:38:00', 'samantasubham9804@gmail.com', '2022-01-21 10:52:35'),
(3, 5, 'Custom', 5, 'Y', 50.00, 70.00, 'Y', 'N', 100.00, 'Y', 'Y', 0.00, 2, 10.00, 8, 5.00, 2, 14.00, 8, 4, 'U', 'U', NULL, NULL, 'admin@gmail.com', '2022-01-24 07:22:14', 'admin@gmail.com', '2022-01-24 07:49:28'),
(4, 6, 'Custom', 2, 'N', 20.00, 50.00, 'Y', 'N', 2.00, 'Y', 'N', 5.00, 6, 5.00, 8, 7.00, 10, 9.00, 2, 2, 'A', 'U', 'Y', NULL, 'admin@gmail.com', '2022-01-24 08:51:37', 'admin@gmail.com', '2022-01-24 09:09:29');

--
-- Truncate table before insert `td_other_image_custom`
--

TRUNCATE TABLE `td_other_image_custom`;
--
-- Dumping data for table `td_other_image_custom`
--

INSERT INTO `td_other_image_custom` (`id`, `restaurant_id`, `venue_id`, `menu_id`, `active_flag`, `cover_page_img`, `cover_page_url`, `top_image_img`, `top_img_url`, `created_by`, `created_dt`, `modified_by`, `modified_dt`) VALUES
(1, 1, 1, 3, 'Y', '1_1_3_cover_rest_logo.jpg', 'url.com', '1_1_3_top_screen.jpg', '', '1', '2022-01-18 13:38:34', '1', '2022-01-18 15:24:39'),
(2, 4, 9, 14, 'Y', '4_9_14_cover_opentech4u.co.in_wbcardb_index.php_dc_approve_details_1.png', 'cov.com', '4_9_14_top_Untitled.png', 'top.com', '4', '2022-01-21 11:11:30', NULL, NULL),
(3, 4, 9, 15, 'Y', '4_9_15_cover_opentech4u.co.in_wbcardb_index.php_dc_dc_entry_0_0 (1).png', '', '4_9_15_top_wbardpranishakti.localhost_cattle_insurance_proposal_view.png', '', '4', '2022-01-21 11:13:06', NULL, NULL);

--
-- Truncate table before insert `td_payment`
--

TRUNCATE TABLE `td_payment`;
--
-- Truncate table before insert `td_promotions`
--

TRUNCATE TABLE `td_promotions`;
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

--
-- Truncate table before insert `td_section_image_request`
--

TRUNCATE TABLE `td_section_image_request`;
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

--
-- Truncate table before insert `td_special_data`
--

TRUNCATE TABLE `td_special_data`;
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

--
-- Truncate table before insert `td_special_date_time`
--

TRUNCATE TABLE `td_special_date_time`;
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

--
-- Truncate table before insert `td_stock_image`
--

TRUNCATE TABLE `td_stock_image`;
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

--
-- Truncate table before insert `td_subscription`
--

TRUNCATE TABLE `td_subscription`;
--
-- Truncate table before insert `td_users`
--

TRUNCATE TABLE `td_users`;
--
-- Dumping data for table `td_users`
--

INSERT INTO `td_users` (`id`, `restaurant_id`, `email_id`, `pwd`, `active_flag`, `last_login_dt`, `modified_by`, `modified_dt`) VALUES
(1, 0, 'admin@gmail.com', '$2b$10$mvFwPgBGvSgMCuUWSP.uNedd22Er6UeZxNMN.ahqq9lVn62utY5b2', 'Y', '2022-01-24 10:54:37', NULL, NULL),
(3, 4, 'samantasubham9804@gmail.com', '$2b$10$LEaKyVgj2H5WcJ.yT3Gl2OUVfkknngIXU82u4.m9U9ILalB1r03lq', 'Y', '2022-01-24 05:39:36', NULL, NULL),
(4, 6, 'somnath.thakur16+56@gmail.com', '$2b$10$bMEy8vpgsPAtDAyDXAOyAeb1F8t7/xuWcT79SmzwCHDw4.bVLLl1K', 'Y', '2022-01-24 09:58:32', NULL, NULL);

--
-- Truncate table before insert `td_venue_custom`
--

TRUNCATE TABLE `td_venue_custom`;
--
-- Dumping data for table `td_venue_custom`
--

INSERT INTO `td_venue_custom` (`id`, `restaurant_id`, `venue_name`, `created_by`, `created_dt`, `modified_by`, `modified_dt`) VALUES
(1, 1, 'Sports Bars', 'admin@gmail.com', '2021-12-24 15:47:49', 'admin@gmail.com', '2021-12-24 16:20:31'),
(5, 1, 'Kennilworth Lounge', 'admin@gmail.com', '2021-12-24 16:03:53', 'admin@gmail.com', '2021-12-24 16:21:37'),
(8, 1, 'Garden Bar', 'admin@gmail.com', '2022-01-05 19:22:34', NULL, NULL),
(9, 4, 'Kids', 'admin@gmail.com', '2022-01-21 10:48:05', NULL, NULL),
(10, 4, 'Football', 'admin@gmail.com', '2022-01-21 10:48:19', NULL, NULL),
(11, 5, 'Kids', 'admin@gmail.com', '2022-01-24 07:54:30', NULL, NULL),
(12, 5, 'Football', 'admin@gmail.com', '2022-01-24 07:54:41', NULL, NULL),
(13, 5, 'Cricket', 'admin@gmail.com', '2022-01-24 07:54:49', NULL, NULL),
(14, 6, 'Garden Bar', 'admin@gmail.com', '2022-01-24 09:09:41', NULL, NULL),
(15, 6, 'Sports Bar', 'admin@gmail.com', '2022-01-24 09:09:54', 'admin@gmail.com', '2022-01-24 09:10:03');

--
-- Truncate table before insert `td_venue_menu_custom`
--

TRUNCATE TABLE `td_venue_menu_custom`;
--
-- Dumping data for table `td_venue_menu_custom`
--

INSERT INTO `td_venue_menu_custom` (`id`, `restaurant_id`, `venue_id`, `menu_name`, `created_by`, `created_dt`, `modified_by`, `modified_dt`) VALUES
(1, 1, 5, 'Dinner', 'admin@gmail.com', '2021-12-24 16:38:18', 'admin@gmail.com', '2021-12-24 17:02:50'),
(3, 1, 1, 'Brunch', 'admin@gmail.com', '2021-12-24 16:53:51', 'admin@gmail.com', '2021-12-24 16:57:20'),
(7, 1, 5, 'Lunch', 'admin@gmail.com', '2022-01-05 19:19:44', NULL, NULL),
(8, 1, 1, 'Add', 'admin@gmail.com', '2022-01-06 13:02:42', 'admin@gmail.com', '2022-01-06 13:09:56'),
(12, 1, 1, 'wwf', 'admin@gmail.com', '2022-01-06 13:17:45', 'admin@gmail.com', '2022-01-06 13:17:57'),
(14, 4, 9, 'Breakfast', 'admin@gmail.com', '2022-01-21 10:48:34', NULL, NULL),
(15, 4, 9, 'Dinner', 'admin@gmail.com', '2022-01-21 10:48:47', NULL, NULL),
(16, 4, 10, 'Brunch', 'admin@gmail.com', '2022-01-21 10:49:03', NULL, NULL),
(17, 4, 10, 'Lunch', 'admin@gmail.com', '2022-01-21 10:49:11', NULL, NULL),
(18, 5, 11, 'Breakfast', 'admin@gmail.com', '2022-01-24 07:55:07', NULL, NULL),
(19, 5, 11, 'Lunch', 'admin@gmail.com', '2022-01-24 07:55:18', NULL, NULL),
(20, 5, 12, 'Vegan', 'admin@gmail.com', '2022-01-24 07:55:37', NULL, NULL),
(21, 5, 12, 'Veg', 'admin@gmail.com', '2022-01-24 07:55:47', NULL, NULL),
(22, 5, 13, 'Starter', 'admin@gmail.com', '2022-01-24 07:56:03', NULL, NULL),
(23, 5, 13, 'Dinner', 'admin@gmail.com', '2022-01-24 07:56:12', NULL, NULL),
(24, 6, 14, 'Breakfast', 'admin@gmail.com', '2022-01-24 09:10:23', NULL, NULL),
(25, 6, 14, 'Lunch', 'admin@gmail.com', '2022-01-24 09:10:35', NULL, NULL);

--
-- Truncate table before insert `test`
--

TRUNCATE TABLE `test`;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
