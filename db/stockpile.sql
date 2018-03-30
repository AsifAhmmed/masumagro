-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 09, 2017 at 09:21 AM
-- Server version: 5.7.14
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stockpile`
--

-- --------------------------------------------------------

--
-- Table structure for table `backup`
--

CREATE TABLE `backup` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `backup`
--

INSERT INTO `backup` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, '2017-10-05-075534.sql', '2017-10-05 01:55:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `country` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(5) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country`, `code`) VALUES
(1, 'United States', 'US'),
(2, 'Canada', 'CA'),
(3, 'Afghanistan', 'AF'),
(4, 'Albania', 'AL'),
(5, 'Algeria', 'DZ'),
(6, 'American Samoa', 'AS'),
(7, 'Andorra', 'AD'),
(8, 'Angola', 'AO'),
(9, 'Anguilla', 'AI'),
(10, 'Antarctica', 'AQ'),
(11, 'Antigua and/or Barbuda', 'AG'),
(12, 'Argentina', 'AR'),
(13, 'Armenia', 'AM'),
(14, 'Aruba', 'AW'),
(15, 'Australia', 'AU'),
(16, 'Austria', 'AT'),
(17, 'Azerbaijan', 'AZ'),
(18, 'Bahamas', 'BS'),
(19, 'Bahrain', 'BH'),
(20, 'Bangladesh', 'BD'),
(21, 'Barbados', 'BB'),
(22, 'Belarus', 'BY'),
(23, 'Belgium', 'BE'),
(24, 'Belize', 'BZ'),
(25, 'Benin', 'BJ'),
(26, 'Bermuda', 'BM'),
(27, 'Bhutan', 'BT'),
(28, 'Bolivia', 'BO'),
(29, 'Bosnia and Herzegovina', 'BA'),
(30, 'Botswana', 'BW'),
(31, 'Bouvet Island', 'BV'),
(32, 'Brazil', 'BR'),
(33, 'British lndian Ocean Territory', 'IO'),
(34, 'Brunei Darussalam', 'BN'),
(35, 'Bulgaria', 'BG'),
(36, 'Burkina Faso', 'BF'),
(37, 'Burundi', 'BI'),
(38, 'Cambodia', 'KH'),
(39, 'Cameroon', 'CM'),
(40, 'Cape Verde', 'CV'),
(41, 'Cayman Islands', 'KY'),
(42, 'Central African Republic', 'CF'),
(43, 'Chad', 'TD'),
(44, 'Chile', 'CL'),
(45, 'China', 'CN'),
(46, 'Christmas Island', 'CX'),
(47, 'Cocos (Keeling) Islands', 'CC'),
(48, 'Colombia', 'CO'),
(49, 'Comoros', 'KM'),
(50, 'Congo', 'CG'),
(51, 'Cook Islands', 'CK'),
(52, 'Costa Rica', 'CR'),
(53, 'Croatia (Hrvatska)', 'HR'),
(54, 'Cuba', 'CU'),
(55, 'Cyprus', 'CY'),
(56, 'Czech Republic', 'CZ'),
(57, 'Democratic Republic of Congo', 'CD'),
(58, 'Denmark', 'DK'),
(59, 'Djibouti', 'DJ'),
(60, 'Dominica', 'DM'),
(61, 'Dominican Republic', 'DO'),
(62, 'East Timor', 'TP'),
(63, 'Ecudaor', 'EC'),
(64, 'Egypt', 'EG'),
(65, 'El Salvador', 'SV'),
(66, 'Equatorial Guinea', 'GQ'),
(67, 'Eritrea', 'ER'),
(68, 'Estonia', 'EE'),
(69, 'Ethiopia', 'ET'),
(70, 'Falkland Islands (Malvinas)', 'FK'),
(71, 'Faroe Islands', 'FO'),
(72, 'Fiji', 'FJ'),
(73, 'Finland', 'FI'),
(74, 'France', 'FR'),
(75, 'France, Metropolitan', 'FX'),
(76, 'French Guiana', 'GF'),
(77, 'French Polynesia', 'PF'),
(78, 'French Southern Territories', 'TF'),
(79, 'Gabon', 'GA'),
(80, 'Gambia', 'GM'),
(81, 'Georgia', 'GE'),
(82, 'Germany', 'DE'),
(83, 'Ghana', 'GH'),
(84, 'Gibraltar', 'GI'),
(85, 'Greece', 'GR'),
(86, 'Greenland', 'GL'),
(87, 'Grenada', 'GD'),
(88, 'Guadeloupe', 'GP'),
(89, 'Guam', 'GU'),
(90, 'Guatemala', 'GT'),
(91, 'Guinea', 'GN'),
(92, 'Guinea-Bissau', 'GW'),
(93, 'Guyana', 'GY'),
(94, 'Haiti', 'HT'),
(95, 'Heard and Mc Donald Islands', 'HM'),
(96, 'Honduras', 'HN'),
(97, 'Hong Kong', 'HK'),
(98, 'Hungary', 'HU'),
(99, 'Iceland', 'IS'),
(100, 'India', 'IN'),
(101, 'Indonesia', 'ID'),
(102, 'Iran (Islamic Republic of)', 'IR'),
(103, 'Iraq', 'IQ'),
(104, 'Ireland', 'IE'),
(105, 'Israel', 'IL'),
(106, 'Italy', 'IT'),
(107, 'Ivory Coast', 'CI'),
(108, 'Jamaica', 'JM'),
(109, 'Japan', 'JP'),
(110, 'Jordan', 'JO'),
(111, 'Kazakhstan', 'KZ'),
(112, 'Kenya', 'KE'),
(113, 'Kiribati', 'KI'),
(114, 'Korea, Democratic People\'s Republic of', 'KP'),
(115, 'Korea, Republic of', 'KR'),
(116, 'Kuwait', 'KW'),
(117, 'Kyrgyzstan', 'KG'),
(118, 'Lao People\'s Democratic Republic', 'LA'),
(119, 'Latvia', 'LV'),
(120, 'Lebanon', 'LB'),
(121, 'Lesotho', 'LS'),
(122, 'Liberia', 'LR'),
(123, 'Libyan Arab Jamahiriya', 'LY'),
(124, 'Liechtenstein', 'LI'),
(125, 'Lithuania', 'LT'),
(126, 'Luxembourg', 'LU'),
(127, 'Macau', 'MO'),
(128, 'Macedonia', 'MK'),
(129, 'Madagascar', 'MG'),
(130, 'Malawi', 'MW'),
(131, 'Malaysia', 'MY'),
(132, 'Maldives', 'MV'),
(133, 'Mali', 'ML'),
(134, 'Malta', 'MT'),
(135, 'Marshall Islands', 'MH'),
(136, 'Martinique', 'MQ'),
(137, 'Mauritania', 'MR'),
(138, 'Mauritius', 'MU'),
(139, 'Mayotte', 'TY'),
(140, 'Mexico', 'MX'),
(141, 'Micronesia, Federated States of', 'FM'),
(142, 'Moldova, Republic of', 'MD'),
(143, 'Monaco', 'MC'),
(144, 'Mongolia', 'MN'),
(145, 'Montserrat', 'MS'),
(146, 'Morocco', 'MA'),
(147, 'Mozambique', 'MZ'),
(148, 'Myanmar', 'MM'),
(149, 'Namibia', 'NA'),
(150, 'Nauru', 'NR'),
(151, 'Nepal', 'NP'),
(152, 'Netherlands', 'NL'),
(153, 'Netherlands Antilles', 'AN'),
(154, 'New Caledonia', 'NC'),
(155, 'New Zealand', 'NZ'),
(156, 'Nicaragua', 'NI'),
(157, 'Niger', 'NE'),
(158, 'Nigeria', 'NG'),
(159, 'Niue', 'NU'),
(160, 'Norfork Island', 'NF'),
(161, 'Northern Mariana Islands', 'MP'),
(162, 'Norway', 'NO'),
(163, 'Oman', 'OM'),
(164, 'Pakistan', 'PK'),
(165, 'Palau', 'PW'),
(166, 'Panama', 'PA'),
(167, 'Papua New Guinea', 'PG'),
(168, 'Paraguay', 'PY'),
(169, 'Peru', 'PE'),
(170, 'Philippines', 'PH'),
(171, 'Pitcairn', 'PN'),
(172, 'Poland', 'PL'),
(173, 'Portugal', 'PT'),
(174, 'Puerto Rico', 'PR'),
(175, 'Qatar', 'QA'),
(176, 'Republic of South Sudan', 'SS'),
(177, 'Reunion', 'RE'),
(178, 'Romania', 'RO'),
(179, 'Russian Federation', 'RU'),
(180, 'Rwanda', 'RW'),
(181, 'Saint Kitts and Nevis', 'KN'),
(182, 'Saint Lucia', 'LC'),
(183, 'Saint Vincent and the Grenadines', 'VC'),
(184, 'Samoa', 'WS'),
(185, 'San Marino', 'SM'),
(186, 'Sao Tome and Principe', 'ST'),
(187, 'Saudi Arabia', 'SA'),
(188, 'Senegal', 'SN'),
(189, 'Serbia', 'RS'),
(190, 'Seychelles', 'SC'),
(191, 'Sierra Leone', 'SL'),
(192, 'Singapore', 'SG'),
(193, 'Slovakia', 'SK'),
(194, 'Slovenia', 'SI'),
(195, 'Solomon Islands', 'SB'),
(196, 'Somalia', 'SO'),
(197, 'South Africa', 'ZA'),
(198, 'South Georgia South Sandwich Islands', 'GS'),
(199, 'Spain', 'ES'),
(200, 'Sri Lanka', 'LK'),
(201, 'St. Helena', 'SH'),
(202, 'St. Pierre and Miquelon', 'PM'),
(203, 'Sudan', 'SD'),
(204, 'Suriname', 'SR'),
(205, 'Svalbarn and Jan Mayen Islands', 'SJ'),
(206, 'Swaziland', 'SZ'),
(207, 'Sweden', 'SE'),
(208, 'Switzerland', 'CH'),
(209, 'Syrian Arab Republic', 'SY'),
(210, 'Taiwan', 'TW'),
(211, 'Tajikistan', 'TJ'),
(212, 'Tanzania, United Republic of', 'TZ'),
(213, 'Thailand', 'TH'),
(214, 'Togo', 'TG'),
(215, 'Tokelau', 'TK'),
(216, 'Tonga', 'TO'),
(217, 'Trinidad and Tobago', 'TT'),
(218, 'Tunisia', 'TN'),
(219, 'Turkey', 'TR'),
(220, 'Turkmenistan', 'TM'),
(221, 'Turks and Caicos Islands', 'TC'),
(222, 'Tuvalu', 'TV'),
(223, 'Uganda', 'UG'),
(224, 'Ukraine', 'UA'),
(225, 'United Arab Emirates', 'AE'),
(226, 'United Kingdom', 'GB'),
(227, 'United States minor outlying islands', 'UM'),
(228, 'Uruguay', 'UY'),
(229, 'Uzbekistan', 'UZ'),
(230, 'Vanuatu', 'VU'),
(231, 'Vatican City State', 'VA'),
(232, 'Venezuela', 'VE'),
(233, 'Vietnam', 'VN'),
(234, 'Virgin Islands (British)', 'VG'),
(235, 'Virgin Islands (U.S.)', 'VI'),
(236, 'Wallis and Futuna Islands', 'WF'),
(237, 'Western Sahara', 'EH'),
(238, 'Yemen', 'YE'),
(239, 'Yugoslavia', 'YU'),
(240, 'Zaire', 'ZR'),
(241, 'Zambia', 'ZM'),
(242, 'Zimbabwe', 'ZW');

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `symbol` char(3) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`id`, `name`, `symbol`) VALUES
(1, 'USD', '$'),
(2, 'BDT', 'BDT');

-- --------------------------------------------------------

--
-- Table structure for table `cust_branch`
--

CREATE TABLE `cust_branch` (
  `branch_code` int(10) UNSIGNED NOT NULL,
  `debtor_no` int(11) NOT NULL,
  `br_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `br_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `br_contact` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `billing_street` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `billing_city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `billing_state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `billing_zip_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `billing_country_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `shipping_street` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `shipping_city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `shipping_state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `shipping_zip_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `shipping_country_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cust_branch`
--

INSERT INTO `cust_branch` (`branch_code`, `debtor_no`, `br_name`, `br_address`, `br_contact`, `billing_street`, `billing_city`, `billing_state`, `billing_zip_code`, `billing_country_id`, `shipping_street`, `shipping_city`, `shipping_state`, `shipping_zip_code`, `shipping_country_id`) VALUES
(1, 1, 'Mary Roe', '', '', 'MARY ROE', 'MEGASYSTEMS INC', 'TUCSON', 'Washington', 'AZ 85705', 'USA', 'MEGASYSTEMS INC', 'TUCSON', 'Washington', 'AZ 85705'),
(2, 2, 'John Smith', '', '', 'JOHN SMITH', '300 BOYLSTON AVE E', 'SEATTLE', 'Washington', 'WA 98102', 'USA', '300 BOYLSTON AVE E', 'SEATTLE', 'Washington', 'WA 98102'),
(3, 3, 'Kyla Olsen', '', '', 'Kyla Olsen', 'Ap #651-8679 Sodales Av', 'Tamuning', 'Tamuning', 'PA 10855', 'TZ', 'Ap #651-8679 Sodales Av', 'Tamuning', 'Tamuning', 'PA 10855'),
(4, 4, 'Cecilia Chapman', '', '', 'Cecilia Chapman', '711-2880 Nulla St', 'Mankato', 'Mississippi', '96522', 'US', '711-2880 Nulla St', 'Mankato', 'Mississippi', '96522'),
(5, 5, 'Iris Watson', '', '', 'Iris Watson', 'Fusce Rd', 'Frederick', 'Nebraska', '20620', 'US', 'Fusce Rd', 'Frederick', 'Nebraska', '20620');

-- --------------------------------------------------------

--
-- Table structure for table `debtors_master`
--

CREATE TABLE `debtors_master` (
  `debtor_no` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `sales_type` int(11) NOT NULL,
  `remember_token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `inactive` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `debtors_master`
--

INSERT INTO `debtors_master` (`debtor_no`, `name`, `email`, `password`, `address`, `phone`, `sales_type`, `remember_token`, `inactive`, `created_at`, `updated_at`) VALUES
(1, 'Mary Roe', 'maryroe@gmail.com', '', '', '(257) 563-7401', 0, '', 0, NULL, NULL),
(2, 'John Smith', 'customer@techvill.net', '$2y$10$NFl9z/cbBkX8q41bIkZbm.32OT/Ogp2fYKIZXifzgm2M6n1oG5/0C', '', '(372) 587-2335', 0, '', 0, NULL, NULL),
(3, 'Kyla Olsen', 'kyla.olsen@gmail.com', '', '', '(654) 393-5734', 0, '', 0, NULL, NULL),
(4, 'Cecilia Chapman', 'cecilia@gmail.com', '', '', '(257) 563-7401', 0, '', 0, NULL, NULL),
(5, 'Iris Watson', 'iris@yahoo.com', '$2y$10$GwzEH2DV/98Fmt1s8bkk7.qWJsYZo9tW36c/cG/o9g/lGkrEp8fCC', '', '(372) 587-2335', 0, '', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `email_config`
--

CREATE TABLE `email_config` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `email_protocol` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_encryption` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `smtp_host` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `smtp_port` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `smtp_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `smtp_username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `smtp_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `from_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `from_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sender_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sender_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `email_config`
--

INSERT INTO `email_config` (`id`, `type`, `email_protocol`, `email_encryption`, `smtp_host`, `smtp_port`, `smtp_email`, `smtp_username`, `smtp_password`, `from_address`, `from_name`, `sender_name`, `sender_email`) VALUES
(1, 'smtp', 'smtp', 'tls', 'smtp.gmail.com', '587', 'stockpile.techvill@gmail.com', 'stockpile.techvill@gmail.com', 'xgldhlpedszmglvj', 'stockpile.techvill@gmail.com', 'stockpile.techvill@gmail.com', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `email_temp_details`
--

CREATE TABLE `email_temp_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `temp_id` int(11) NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lang_id` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `email_temp_details`
--

INSERT INTO `email_temp_details` (`id`, `temp_id`, `subject`, `body`, `lang`, `lang_id`) VALUES
(1, 2, 'Your Order # {order_reference_no} from {company_name} has been shipped', 'Hi {customer_name},<br><br>Thank you for your order. Here’s a brief overview of your shipment:<br>Sales Order # {order_reference_no} was packed on {packed_date} and shipped on {delivery_date}.<br> <br><b>Shipping address   </b><br><br>{shipping_street}<br>{shipping_city}<br>{shipping_state}<br>{shipping_zip_code}<br>{shipping_country}<br><br><b>Item Summery</b><br>{item_information}<br> <br>If you have any questions, please feel free to reply to this email.<br><br>Regards<br>{company_name}<br><br><br>', 'en', 1),
(2, 2, 'Subject', 'Body', 'ar', 2),
(3, 2, 'Subject', 'Body', 'ch', 3),
(4, 2, 'Subject', 'Body', 'fr', 4),
(5, 2, 'Subject', 'Body', 'po', 5),
(6, 2, 'Subject', 'Body', 'rs', 6),
(7, 2, 'Subject', 'Body', 'sp', 7),
(8, 2, 'Subject', 'Body', 'tu', 8),
(9, 1, 'Payment information for Order#{order_reference_no} and Invoice#{invoice_reference_no}.', '<p>Hi {customer_name},</p><p>Thank you for purchase our product and pay for this.</p><p>We just want to confirm a few details about payment information:</p><p><b>Customer Information</b></p><p>{billing_street}</p><p>{billing_city}</p><p>{billing_state}</p><p>{billing_zip_code}</p><p>{billing_country}<br></p><p><b>Payment Summary<br></b></p><p><b></b><i>Payment No : {payment_id}</i></p><p><i>Payment Date : {payment_date}&nbsp;</i></p><p><i>Payment Method : {payment_method} <br></i></p><p><i><b>Total Amount : {total_amount}</b></i></p><p><i>Order No : {order_reference_no}</i><br><i></i></p><p><i>Invoice No : {invoice_reference_no}</i><br></p><p><br></p><p>Regards,</p><p>{company_name}<br></p><br><br><br><br><br><br>', 'en', 1),
(10, 1, 'Subject', 'Body', 'ar', 2),
(11, 1, 'Subject', 'Body', 'ch', 3),
(12, 1, 'Subject', 'Body', 'fr', 4),
(13, 1, 'Subject', 'Body', 'po', 5),
(14, 1, 'Subject', 'Body', 'rs', 6),
(15, 1, 'Subject', 'Body', 'sp', 7),
(16, 1, 'Subject', 'Body', 'tu', 8),
(17, 3, 'Payment information for Order#{order_reference_no} and Invoice#{invoice_reference_no}.', '<p>Hi {customer_name},</p><p>Thank you for purchase our product and pay for this.</p><p>We just want to confirm a few details about payment information:</p><p><b>Customer Information</b></p><p>{billing_street}</p><p>{billing_city}</p><p>{billing_state}</p><p>{billing_zip_code}<br></p><p>{billing_country}<br>&nbsp; &nbsp; &nbsp; &nbsp; <br></p><p><b>Payment Summary<br></b></p><p><b></b><i>Payment No : {payment_id}</i></p><p><i>Payment Date : {payment_date}&nbsp;</i></p><p><i>Payment Method : {payment_method} <br></i></p><p><i><b>Total Amount : {total_amount}</b><br>Order No : {order_reference_no}<br>&nbsp;</i><i>Invoice No : {invoice_reference_no}<br>&nbsp;</i>Regards,</p><p>{company_name} <br></p><br>', 'en', 1),
(18, 3, 'Subject', 'Body', 'ar', 2),
(19, 3, 'Subject', 'Body', 'ch', 3),
(20, 3, 'Subject', 'Body', 'fr', 4),
(21, 3, 'Subject', 'Body', 'po', 5),
(22, 3, 'Subject', 'Body', 'rs', 6),
(23, 3, 'Subject', 'Body', 'sp', 7),
(24, 3, 'Subject', 'Body', 'tu', 8),
(25, 4, 'Your Invoice # {invoice_reference_no} for sales Order #{order_reference_no} from {company_name} has been created.', '<p>Hi {customer_name},</p><p>Thank you for your order. Here’s a brief overview of your invoice: Invoice #{invoice_reference_no} is for Sales Order #{order_reference_no}. The invoice total is {currency}{total_amount}, please pay before {due_date}.</p><p>If you have any questions, please feel free to reply to this email. </p><p><b>Billing address</b></p><p>&nbsp;{billing_street}</p><p>&nbsp;{billing_city}</p><p>&nbsp;{billing_state}</p><p>&nbsp;{billing_zip_code}</p><p>&nbsp;{billing_country}<br></p><p><br></p><p><b>Order summary<br></b></p><p><b></b>{invoice_summery}<br></p><p>Regards,</p><p>{company_name}<br></p><br><br>', 'en', 1),
(26, 4, 'Subject', 'Body', 'ar', 2),
(27, 4, 'Subject', 'Body', 'ch', 3),
(28, 4, 'Subject', 'Body', 'fr', 4),
(29, 4, 'Subject', 'Body', 'po', 5),
(30, 4, 'Subject', 'Body', 'rs', 6),
(31, 4, 'Subject', 'Body', 'sp', 7),
(32, 4, 'Subject', 'Body', 'tu', 8),
(33, 5, 'Your Order# {order_reference_no} from {company_name} has been created.', '<p>Hi {customer_name},</p><p>Thank you for your order. Here’s a brief overview of your Order #{order_reference_no} that was created on {order_date}. The order total is {currency}{total_amount}.</p><p>If you have any questions, please feel free to reply to this email. </p><p><b>Billing address</b></p><p>&nbsp;{billing_street}</p><p>&nbsp;{billing_city}</p><p>&nbsp;{billing_state}</p><p>&nbsp;{billing_zip_code}</p><p>&nbsp;{billing_country}<br></p><p><br></p><p><b>Order summary<br></b></p><p><b></b>{order_summery}<br></p><p>Regards,</p><p>{company_name}</p><br><br>', 'en', 1),
(34, 5, 'Subject', 'Body', 'ar', 2),
(35, 5, 'Subject', 'Body', 'ch', 3),
(36, 5, 'Subject', 'Body', 'fr', 4),
(37, 5, 'Subject', 'Body', 'po', 5),
(38, 5, 'Subject', 'Body', 'rs', 6),
(39, 5, 'Subject', 'Body', 'sp', 7),
(40, 5, 'Subject', 'Body', 'tu', 8),
(41, 6, 'Your Order # {order_reference_no} from {company_name} has been packed', 'Hi {customer_name},<br><br>Thank you for your order. Here’s a brief overview of your shipment:<br>Sales Order # {order_reference_no} was packed on {packed_date}.<br> <br><b>Shipping address   </b><br><br>{shipping_street}<br>{shipping_city}<br>{shipping_state}<br>{shipping_zip_code}<br>{shipping_country}<br><br><b>Item Summery</b><br>{item_information}<br> <br>If you have any questions, please feel free to reply to this email.<br><br>Regards<br>{company_name}<br><br><br>', 'en', 1),
(42, 6, 'Subject', 'Body', 'ar', 2),
(43, 6, 'Subject', 'Body', 'ch', 3),
(44, 6, 'Subject', 'Body', 'fr', 4),
(45, 6, 'Subject', 'Body', 'po', 5),
(46, 6, 'Subject', 'Body', 'rs', 6),
(47, 6, 'Subject', 'Body', 'sp', 7),
(48, 6, 'Subject', 'Body', 'tu', 8);

-- --------------------------------------------------------

--
-- Table structure for table `invoice_payment_terms`
--

CREATE TABLE `invoice_payment_terms` (
  `id` int(10) UNSIGNED NOT NULL,
  `terms` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `days_before_due` int(11) NOT NULL,
  `defaults` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `invoice_payment_terms`
--

INSERT INTO `invoice_payment_terms` (`id`, `terms`, `days_before_due`, `defaults`) VALUES
(1, 'Cash on deleivery', 0, 1),
(2, 'Net15', 15, 0),
(3, 'Net30', 30, 0);

-- --------------------------------------------------------

--
-- Table structure for table `item_code`
--

CREATE TABLE `item_code` (
  `id` int(10) UNSIGNED NOT NULL,
  `stock_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `category_id` smallint(6) NOT NULL,
  `item_image` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `inactive` tinyint(4) NOT NULL DEFAULT '0',
  `deleted_status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `item_code`
--

INSERT INTO `item_code` (`id`, `stock_id`, `description`, `category_id`, `item_image`, `inactive`, `deleted_status`, `created_at`, `updated_at`) VALUES
(1, 'APPLE', 'Iphone 7+', 1, 'iphone.jpg', 0, 0, NULL, NULL),
(2, 'HP', 'HP Pro Book', 1, 'hpprobook.jpg', 0, 0, NULL, NULL),
(3, 'LENEVO', 'LED TV', 1, 'ledtv.jpg', 0, 0, NULL, NULL),
(4, 'LG', 'LG Refrigeretor', 1, 'lgrefrigeretor.jpg', 0, 0, NULL, NULL),
(5, 'SAMSUNG', 'Samsung G7', 1, 'samsung-galaxy7.jpg', 0, 0, NULL, NULL),
(6, 'SINGER', 'Singer Refrigerator', 1, 'singer-refrideretor.jpg', 0, 0, NULL, NULL),
(7, 'SONY', 'Sony experia 5', 1, 'sony-xperia5.jpg', 0, 0, NULL, NULL),
(8, 'WALTON', 'Walton Primo GH', 1, 'walton-primo.jpg', 0, 0, NULL, NULL),
(9, '100012', 'TEST ITEM', 2, '', 0, 0, '2017-10-09 01:36:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `item_tax_types`
--

CREATE TABLE `item_tax_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tax_rate` double(8,2) NOT NULL,
  `exempt` tinyint(4) NOT NULL,
  `defaults` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `item_tax_types`
--

INSERT INTO `item_tax_types` (`id`, `name`, `tax_rate`, `exempt`, `defaults`) VALUES
(1, 'Tax Exempt', 0.00, 1, 0),
(2, 'Sales Tax', 15.00, 0, 1),
(3, 'Purchases Tax', 15.00, 0, 0),
(4, 'Normal', 5.00, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `item_unit`
--

CREATE TABLE `item_unit` (
  `id` int(10) UNSIGNED NOT NULL,
  `abbr` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `inactive` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `item_unit`
--

INSERT INTO `item_unit` (`id`, `abbr`, `name`, `inactive`, `created_at`, `updated_at`) VALUES
(1, 'each', 'Each', 0, '2017-10-05 04:07:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `id` int(10) UNSIGNED NOT NULL,
  `loc_code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `location_name` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `delivery_address` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `fax` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `contact` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `inactive` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id`, `loc_code`, `location_name`, `delivery_address`, `email`, `phone`, `fax`, `contact`, `inactive`, `created_at`, `updated_at`) VALUES
(1, 'PL', 'Primary Location', 'Primary Location', '', '', '', 'Primary Location', 0, '2017-10-05 04:07:56', NULL),
(2, 'JA', 'Jackson Av', '125 Hayes St, San Francisco, CA 94102, USA', '', '', '', 'Jackson Av', 0, '2017-10-05 04:07:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_100000_create_password_resets_table', 1),
('2015_09_26_161159_entrust_setup_tables', 1),
('2016_08_30_100832_create_users_table', 1),
('2016_08_30_104506_create_stock_category_table', 1),
('2016_08_30_105339_create_location_table', 1),
('2016_08_30_110408_create_item_code_table', 1),
('2016_08_30_114231_create_item_unit_table', 1),
('2016_09_02_070031_create_stock_master_table', 1),
('2016_09_20_123717_create_stock_move_table', 1),
('2016_10_05_113244_create_debtor_master_table', 1),
('2016_10_05_113333_create_sales_orders_table', 1),
('2016_10_05_113356_create_sales_order_details_table', 1),
('2016_10_18_060431_create_supplier_table', 1),
('2016_10_18_063931_create_purch_order_table', 1),
('2016_10_18_064211_create_purch_order_detail_table', 1),
('2016_10_18_064211_create_receive_order_detail_table', 1),
('2016_10_18_064211_create_receive_orders_table', 1),
('2016_11_15_121343_create_preference_table', 1),
('2016_12_01_130110_create_shipment_table', 1),
('2016_12_01_130443_create_shipment_details_table', 1),
('2016_12_03_051429_create_sale_price_table', 1),
('2016_12_03_052017_create_sales_types_table', 1),
('2016_12_03_061206_create_purchase_price_table', 1),
('2016_12_03_062131_create_payment_term_table', 1),
('2016_12_03_062247_create_payment_history_table', 1),
('2016_12_03_062932_create_item_tax_type_table', 1),
('2016_12_03_063827_create_invoice_payment_term_table', 1),
('2016_12_03_064157_create_email_temp_details_table', 1),
('2016_12_03_064747_create_email_config_table', 1),
('2016_12_03_065532_create_cust_branch_table', 1),
('2016_12_03_065915_create_currency_table', 1),
('2016_12_03_070030_create_country_table', 1),
('2016_12_03_070030_create_stock_transfer_table', 1),
('2016_12_03_071018_create_backup_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_history`
--

CREATE TABLE `payment_history` (
  `id` int(10) UNSIGNED NOT NULL,
  `payment_type_id` smallint(6) NOT NULL,
  `order_reference` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `invoice_reference` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payment_date` date NOT NULL,
  `amount` double DEFAULT '0',
  `person_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `reference` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payment_history`
--

INSERT INTO `payment_history` (`id`, `payment_type_id`, `order_reference`, `invoice_reference`, `payment_date`, `amount`, `person_id`, `customer_id`, `reference`, `created_at`, `updated_at`) VALUES
(1, 1, 'SO-0003', 'INV-0005', '2017-10-05', 27497.5, 1, 2, '', NULL, NULL),
(2, 1, 'SO-0002', 'INV-0002', '2017-10-05', 5000, 1, 2, '', NULL, NULL),
(3, 1, 'SO-0003', 'INV-0004', '2017-10-05', 1000, 1, 2, '', NULL, NULL),
(4, 1, 'SO-0006', 'INV-0009', '2017-10-05', 184.38295, 1, 1, 'by all pay', NULL, NULL),
(5, 1, 'SO-0007', 'INV-0010', '2017-10-05', 80500, 1, 1, 'by all pay', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payment_terms`
--

CREATE TABLE `payment_terms` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `defaults` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payment_terms`
--

INSERT INTO `payment_terms` (`id`, `name`, `defaults`) VALUES
(1, 'Bank', 1),
(2, 'Cash', 0);

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'manage_customer', 'Manage Customers', 'Manage Customers', NULL, NULL),
(2, 'add_customer', 'Add Customer', 'Add Customer', NULL, NULL),
(3, 'edit_customer', 'Edit Customer', 'Edit Customer', NULL, NULL),
(4, 'delete_customer', 'Delete Customer', 'Delete Customer', NULL, NULL),
(5, 'manage_item', 'Manage Items', 'Manage Items', NULL, NULL),
(6, 'add_item', 'Add Item', 'Add Item', NULL, NULL),
(7, 'edit_item', 'Edit Item', 'Edit Item', NULL, NULL),
(8, 'delete_item', 'Delete Item', 'Delete Item', NULL, NULL),
(9, 'manage_supplier', 'Manage Suppliers', 'Manage Suppliers', NULL, NULL),
(10, 'add_supplier', 'Add Supplier', 'Add Supplier', NULL, NULL),
(11, 'edit_supplier', 'Edit Supplier', 'Edit Supplier', NULL, NULL),
(12, 'delete_supplier', 'Delete Supplier', 'Delete Supplier', NULL, NULL),
(13, 'manage_sale', 'Manage Sales', 'Manage Sales', NULL, NULL),
(14, 'manage_order', 'Manage Orders', 'Manage Orders', NULL, NULL),
(15, 'add_order', 'Add Order', 'Add Order', NULL, NULL),
(16, 'edit_order', 'Edit Order', 'Edit Order', NULL, NULL),
(17, 'delete_order', 'Delete Order', 'Delete Order', NULL, NULL),
(18, 'manage_invoice', 'Manage Invoices', 'Manage Invoices', NULL, NULL),
(19, 'add_invoice', 'Add Invoice', 'Add Invoice', NULL, NULL),
(20, 'edit_invoice', 'Edit Invoice', 'Edit Invoice', NULL, NULL),
(21, 'delete_invoice', 'Delete Invoice', 'Delete Invoice', NULL, NULL),
(22, 'manage_payment', 'Manage Payment', 'Manage Payment', NULL, NULL),
(23, 'add_payment', 'Add Payment', 'Add Payment', NULL, NULL),
(24, 'edit_payment', 'Edit Payment', 'Edit Payment', NULL, NULL),
(25, 'delete_payment', 'Delete Payment', 'Delete Payment', NULL, NULL),
(26, 'manage_shipment', 'Manage Shipment', 'Manage Shipment', NULL, NULL),
(27, 'add_shipment', 'Add Shipment', 'Add Shipment', NULL, NULL),
(28, 'edit_shipment', 'Edit Shipment', 'Edit Shipment', NULL, NULL),
(29, 'delete_shipment', 'Delete Shipment', 'Delete Shipment', NULL, NULL),
(30, 'manage_purchase', 'Manage Purchase', 'Manage Purchase', NULL, NULL),
(31, 'add_purchase', 'Add Purchase', 'Add Purchase', NULL, NULL),
(32, 'edit_purchase', 'Edit Purchase', 'Edit Purchase', NULL, NULL),
(33, 'delete_purchase', 'Delete Purchase', 'Delete Purchase', NULL, NULL),
(34, 'manage_transfer', 'Manage Transfer', 'Manage Transfer', NULL, NULL),
(35, 'add_transfer', 'Add Transfer', 'Add Transfer', NULL, NULL),
(36, 'edit_transfer', 'Edit Transfer', 'Edit Transfer', NULL, NULL),
(37, 'delete_transfer', 'Delete Transfer', 'Delete Transfer', NULL, NULL),
(38, 'manage_report', 'Manage Reports', 'Manage Report', NULL, NULL),
(39, 'manage_stock_on_hand', 'Manage Inventory Stock On Hand', 'Manage Inventory Stock On Hand', NULL, NULL),
(40, 'manage_sale_report', 'Manage Sales Report', 'Manage Sales Report', NULL, NULL),
(41, 'manage_sale_history_report', 'Manage Sales History Report', 'Manage Sales History Report', NULL, NULL),
(42, 'manage_purchase_report', 'Manage Purchase Report', 'Manage Purchase Report', NULL, NULL),
(43, 'manage_team_report', 'Manage Team Member Report', 'Manage Team Member Report', NULL, NULL),
(44, 'manage_setting', 'Manage Settings', 'Manage Settings', NULL, NULL),
(45, 'manage_company_setting', 'Manage Company Setting', 'Manage Company Setting', NULL, NULL),
(46, 'manage_team_member', 'Manage Team Member', 'Manage Team Member', NULL, NULL),
(47, 'add_team_member', 'Add Team Member', 'Add Team Member', NULL, NULL),
(48, 'edit_team_member', 'Edit Team Member', 'Edit Team Member', NULL, NULL),
(49, 'delete_team_member', 'Delete Team Member', 'Delete Team Member', NULL, NULL),
(50, 'manage_role', 'Manage Roles', 'Manage Roles', NULL, NULL),
(51, 'add_role', 'Add Role', 'Add Role', NULL, NULL),
(52, 'edit_role', 'Edit Role', 'Edit Role', NULL, NULL),
(53, 'delete_role', 'Delete Role', 'Delete Role', NULL, NULL),
(54, 'manage_location', 'Manage Location', 'Manage Location', NULL, NULL),
(55, 'add_location', 'Add Location', 'Add Location', NULL, NULL),
(56, 'edit_location', 'Edit Location', 'Edit Location', NULL, NULL),
(57, 'delete_location', 'Delete Location', 'Delete Location', NULL, NULL),
(58, 'manage_general_setting', 'Manage General Settings', 'Manage General Settings', NULL, NULL),
(59, 'manage_item_category', 'Manage Item Category', 'Manage Item Category', NULL, NULL),
(60, 'add_item_category', 'Add Item Category', 'Add Item Category', NULL, NULL),
(61, 'edit_item_category', 'Edit Item Category', 'Edit Item Category', NULL, NULL),
(62, 'delete_item_category', 'Delete Item Category', 'Delete Item Category', NULL, NULL),
(63, 'manage_income_expense_category', 'Manage Income Expense Category', 'Manage Income Expense Category', NULL, NULL),
(64, 'add_income_expense_category', 'Add Income Expense Category', 'Add Income Expense Category', NULL, NULL),
(65, 'edit_income_expense_category', 'Edit Income Expense Category', 'Edit Income Expense Category', NULL, NULL),
(66, 'delete_income_expense_category', 'Delete Income Expense Category', 'Delete Income Expense Category', NULL, NULL),
(67, 'manage_unit', 'Manage Unit', 'Manage Unit', NULL, NULL),
(68, 'add_unit', 'Add Unit', 'Add Unit', NULL, NULL),
(69, 'edit_unit', 'Edit Unit', 'Edit Unit', NULL, NULL),
(70, 'delete_unit', 'Delete Unit', 'Delete Unit', NULL, NULL),
(71, 'manage_db_backup', 'Manage Database Backup', 'Manage Database Backup', NULL, NULL),
(72, 'add_db_backup', 'Add Database Backup', 'Add Database Backup', NULL, NULL),
(73, 'download_db_backup', 'Download Database Backup', 'Download Database Backup', NULL, NULL),
(74, 'delete_db_backup', 'Delete Database Backup', 'Delete Database Backup', NULL, NULL),
(75, 'manage_email_setup', 'Manage Email Setup', 'Manage Email Setup', NULL, NULL),
(76, 'manage_finance', 'Manage Finance', 'Manage Finance', NULL, NULL),
(77, 'manage_tax', 'Manage Taxs', 'Manage Taxs', NULL, NULL),
(78, 'add_tax', 'Add Tax', 'Add Tax', NULL, NULL),
(79, 'edit_tax', 'Edit Tax', 'Edit Tax', NULL, NULL),
(80, 'delete_tax', 'Delete Tax', 'Delete Tax', NULL, NULL),
(81, 'manage_sales_type', 'Manage Sales Type', 'Manage Sales Type', NULL, NULL),
(82, 'add_sales_type', 'Add Sales Type', 'Add Sales Type', NULL, NULL),
(83, 'edit_sales_type', 'Edit Sales Type', 'Edit Sales Type', NULL, NULL),
(84, 'delete_sales_type', 'Delete Sales Type', 'Delete Sales Type', NULL, NULL),
(85, 'manage_currency', 'Manage Currency', 'Manage Currency', NULL, NULL),
(86, 'add_currency', 'Add Currency', 'Add Currency', NULL, NULL),
(87, 'edit_currency', 'Edit Currency', 'Edit Currency', NULL, NULL),
(88, 'delete_currency', 'Delete Currency', 'Delete Currency', NULL, NULL),
(89, 'manage_payment_term', 'Manage Payment Term', 'Manage Payment Term', NULL, NULL),
(90, 'add_payment_term', 'Add Payment Term', 'Add Payment Term', NULL, NULL),
(91, 'edit_payment_term', 'Edit Payment Term', 'Edit Payment Term', NULL, NULL),
(92, 'delete_payment_term', 'Delete Payment Term', 'Delete Payment Term', NULL, NULL),
(93, 'manage_payment_method', 'Manage Payment Method', 'Manage Payment Method', NULL, NULL),
(94, 'add_payment_method', 'Add Payment Method', 'Add Payment Method', NULL, NULL),
(95, 'edit_payment_method', 'Edit Payment Method', 'Edit Payment Method', NULL, NULL),
(96, 'delete_payment_method', 'Delete Payment Method', 'Delete Payment Method', NULL, NULL),
(97, 'manage_payment_gateway', 'Manage Payment Method', 'Manage Payment Gateway', NULL, NULL),
(98, 'manage_email_template', 'Manage Email Template', 'Manage Email Template', NULL, NULL),
(99, 'manage_order_email_template', 'Manage Order Template', 'Manage Order Email Template', NULL, NULL),
(100, 'manage_invoice_email_template', 'Manage Invoice Email Template', 'Manage Invoice Email Template', NULL, NULL),
(101, 'manage_purchase_order_email_template', 'Manage Purchase Order Email Template', 'Manage Purchase Order Email Template', NULL, NULL),
(102, 'manage_payment_email_template', 'Manage Payment Email Template', 'Manage Payment Email Template', NULL, NULL),
(103, 'manage_packing_email_template', 'Manage Packing Email Template', 'Manage Packing Email Template', NULL, NULL),
(104, 'manage_shipment_email_template', 'Manage Shipment Email Template', 'Manage Shipment Email Template', NULL, NULL),
(105, 'manage_preference', 'Manage Preference', 'Manage Preference', NULL, NULL),
(106, 'manage_barcode', 'Manage barcode/label', 'Manage barcode/label', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 1),
(106, 1);

-- --------------------------------------------------------

--
-- Table structure for table `preference`
--

CREATE TABLE `preference` (
  `id` int(10) UNSIGNED NOT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `field` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `preference`
--

INSERT INTO `preference` (`id`, `category`, `field`, `value`) VALUES
(1, 'preference', 'row_per_page', '25'),
(2, 'preference', 'date_format', '1'),
(3, 'preference', 'date_sepa', '-'),
(4, 'preference', 'soft_name', 'Stockpile'),
(5, 'company', 'site_short_name', 'SP'),
(6, 'preference', 'percentage', '0'),
(7, 'preference', 'quantity', '0'),
(8, 'preference', 'date_format_type', 'dd-mm-yyyy'),
(9, 'company', 'company_name', 'Stockpile'),
(10, 'company', 'company_email', 'admin@techvill.net'),
(11, 'company', 'company_phone', '123465798'),
(12, 'company', 'company_street', 'City Hall Park Path '),
(13, 'company', 'company_city', 'New York'),
(14, 'company', 'company_state', 'New York'),
(15, 'company', 'company_zipCode', '10007'),
(16, 'company', 'company_country_id', 'United States'),
(17, 'company', 'dflt_lang', 'en'),
(18, 'company', 'dflt_currency_id', '1'),
(19, 'company', 'sates_type_id', '1'),
(25, 'company', 'logo', 'logo.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_prices`
--

CREATE TABLE `purchase_prices` (
  `id` int(10) UNSIGNED NOT NULL,
  `stock_id` char(30) COLLATE utf8_unicode_ci NOT NULL,
  `price` double NOT NULL DEFAULT '0',
  `suppliers_uom` char(30) COLLATE utf8_unicode_ci NOT NULL,
  `conversion_factor` double DEFAULT '1',
  `supplier_description` char(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `purchase_prices`
--

INSERT INTO `purchase_prices` (`id`, `stock_id`, `price`, `suppliers_uom`, `conversion_factor`, `supplier_description`) VALUES
(1, 'APPLE', 100, '', 1, ''),
(2, 'HP', 80, '', 1, ''),
(3, 'LENEVO', 50, '', 1, ''),
(4, 'LG', 50, '', 1, ''),
(5, 'SAMSUNG', 50, '', 1, ''),
(6, 'SINGER', 50, '', 1, ''),
(7, 'SONY', 50, '', 1, ''),
(8, 'WALTON', 50, '', 1, ''),
(9, '100012', 80, '', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `purch_orders`
--

CREATE TABLE `purch_orders` (
  `order_no` int(10) UNSIGNED NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `person_id` int(11) NOT NULL,
  `comments` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ord_date` date NOT NULL,
  `reference` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `requisition_no` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `into_stock_location` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `delivery_address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `total` double NOT NULL DEFAULT '0',
  `tax_included` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `purch_orders`
--

INSERT INTO `purch_orders` (`order_no`, `supplier_id`, `person_id`, `comments`, `ord_date`, `reference`, `requisition_no`, `into_stock_location`, `delivery_address`, `total`, `tax_included`, `created_at`, `updated_at`) VALUES
(10, 2, 1, '', '2017-08-19', 'PO-0001', NULL, 'PL', '', 207000, 'yes', NULL, NULL),
(11, 5, 1, '', '2017-10-03', 'PO-0002', NULL, 'JA', '', 235750, 'yes', NULL, '2017-10-05 05:10:05'),
(12, 4, 1, '', '2017-09-26', 'PO-0003', NULL, 'JA', '', 172500, 'yes', NULL, NULL),
(13, 4, 1, '', '2016-08-17', 'PO-0004', NULL, 'JA', '', 230000, 'yes', NULL, NULL),
(14, 3, 1, '', '2017-10-03', 'PO-0005', NULL, 'JA', '', 115000, 'yes', NULL, NULL),
(15, 5, 1, '', '2017-10-03', 'PO-0006', NULL, 'JA', '', 57500, 'yes', NULL, NULL),
(16, 1, 1, '', '2017-10-03', 'PO-0007', NULL, 'PL', '', 517500, 'yes', NULL, NULL),
(17, 5, 1, '', '2017-10-05', 'PO-0008', NULL, 'JA', '', 5750, 'yes', NULL, '2017-10-05 05:10:25'),
(18, 1, 1, '', '2017-10-09', 'PO-0009', NULL, 'PL', '', 920, 'yes', '2017-10-09 01:41:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `purch_order_details`
--

CREATE TABLE `purch_order_details` (
  `po_detail_item` int(10) UNSIGNED NOT NULL,
  `order_no` int(11) NOT NULL,
  `item_code` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `qty_invoiced` double NOT NULL DEFAULT '0',
  `unit_price` double NOT NULL DEFAULT '0',
  `act_price` double NOT NULL DEFAULT '0',
  `tax_type_id` int(11) NOT NULL,
  `std_cost_unit` double NOT NULL DEFAULT '0',
  `quantity_ordered` double NOT NULL DEFAULT '0',
  `quantity_received` double NOT NULL DEFAULT '0',
  `qty_received` double NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `purch_order_details`
--

INSERT INTO `purch_order_details` (`po_detail_item`, `order_no`, `item_code`, `description`, `qty_invoiced`, `unit_price`, `act_price`, `tax_type_id`, `std_cost_unit`, `quantity_ordered`, `quantity_received`, `qty_received`, `created_at`, `updated_at`) VALUES
(1, 10, 'APPLE', 'Iphone 7+', 1000, 100, 0, 2, 0, 1000, 1000, 0, NULL, NULL),
(2, 10, 'HP', 'HP Pro Book', 1000, 80, 0, 2, 0, 1000, 1000, 0, NULL, NULL),
(3, 11, 'SAMSUNG', 'SAMSUNG', 1000, 50, 0, 2, 0, 1000, 1000, 1000, NULL, NULL),
(4, 11, 'SONY', 'SONY', 1000, 50, 0, 2, 0, 1000, 1000, 1000, NULL, NULL),
(5, 11, 'SINGER', 'SINGER', 1000, 50, 0, 2, 0, 1000, 1000, 1000, NULL, NULL),
(6, 11, 'LG', 'LG', 1000, 50, 0, 2, 0, 1000, 1000, 1000, NULL, NULL),
(7, 11, 'LENEVO', 'LENEVO', 1000, 5, 0, 2, 0, 1000, 1000, 1000, NULL, NULL),
(8, 12, 'APPLE', 'Iphone 7+', 1000, 100, 0, 2, 0, 1000, 1000, 0, NULL, NULL),
(9, 12, 'WALTON', 'Walton Primo GH', 1000, 50, 0, 2, 0, 1000, 1000, 0, NULL, NULL),
(10, 13, 'SONY', 'Sony experia 5', 1000, 50, 0, 2, 0, 1000, 1000, 0, NULL, NULL),
(11, 13, 'SINGER', 'Singer Refrigerator', 1000, 50, 0, 2, 0, 1000, 1000, 0, NULL, NULL),
(12, 13, 'SAMSUNG', 'Samsung G7', 1000, 50, 0, 2, 0, 1000, 1000, 0, NULL, NULL),
(13, 13, 'WALTON', 'Walton Primo GH', 1000, 50, 0, 2, 0, 1000, 1000, 0, NULL, NULL),
(14, 14, 'SINGER', 'Singer Refrigerator', 1000, 50, 0, 2, 0, 1000, 1000, 0, NULL, NULL),
(15, 14, 'LG', 'LG Refrigeretor', 1000, 50, 0, 2, 0, 1000, 1000, 0, NULL, NULL),
(16, 15, 'WALTON', 'Walton Primo GH', 1000, 50, 0, 2, 0, 1000, 1000, 1000, NULL, NULL),
(17, 16, 'WALTON', 'Walton Primo GH', 3000, 50, 0, 2, 0, 3000, 3000, 3000, NULL, NULL),
(18, 16, 'APPLE', 'Iphone 7+', 3000, 100, 0, 2, 0, 3000, 3000, 3000, NULL, NULL),
(19, 17, 'APPLE', 'APPLE', 50, 100, 0, 2, 0, 50, 50, 500, NULL, NULL),
(20, 18, '100012', 'Test Item', 10, 80, 0, 2, 0, 10, 10, 10, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `receive_orders`
--

CREATE TABLE `receive_orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_no` int(11) NOT NULL,
  `person_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `reference` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `receive_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `receive_orders`
--

INSERT INTO `receive_orders` (`id`, `order_no`, `person_id`, `supplier_id`, `reference`, `location`, `receive_date`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 'PO-0001', 'PL', '2017-07-26', NULL, NULL),
(2, 1, 1, 1, 'PO-0001', 'PL', '2017-07-26', NULL, NULL),
(3, 1, 1, 1, 'PO-0001', 'PL', '2017-07-26', NULL, NULL),
(4, 17, 1, 5, 'PO-0008', 'JA', '2017-10-05', NULL, NULL),
(5, 11, 1, 3, 'PO-0002', 'PL', '2017-10-05', NULL, NULL),
(6, 15, 1, 5, 'PO-0006', 'JA', '2017-10-05', NULL, NULL),
(7, 16, 1, 1, 'PO-0007', 'PL', '2017-10-08', NULL, NULL),
(8, 18, 1, 1, 'PO-0009', 'PL', '2017-10-09', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `receive_order_details`
--

CREATE TABLE `receive_order_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_no` int(11) NOT NULL,
  `receive_id` int(11) NOT NULL,
  `item_code` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `tax_type_id` int(11) NOT NULL,
  `unit_price` double NOT NULL DEFAULT '0',
  `quantity` double NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `receive_order_details`
--

INSERT INTO `receive_order_details` (`id`, `order_no`, `receive_id`, `item_code`, `description`, `tax_type_id`, `unit_price`, `quantity`) VALUES
(1, 1, 1, 'APPLE', 'Iphone 7+', 2, 100, 50),
(2, 1, 1, 'SAMSUNG', 'Samsung G7', 2, 50, 50),
(3, 1, 2, 'APPLE', 'Iphone 7+', 2, 100, 30),
(4, 1, 2, 'SAMSUNG', 'Samsung G7', 2, 50, 30),
(5, 1, 3, 'SAMSUNG', 'Samsung G7', 2, 50, 20),
(6, 1, 3, 'APPLE', 'Iphone 7+', 2, 100, 20),
(7, 17, 4, 'APPLE', 'Iphone 7+', 2, 100, 500),
(8, 11, 5, 'SAMSUNG', 'Samsung G7', 2, 50, 1000),
(9, 11, 5, 'SONY', 'Sony experia 5', 2, 50, 1000),
(10, 11, 5, 'SINGER', 'Singer Refrigerator', 2, 50, 1000),
(11, 11, 5, 'LG', 'LG Refrigeretor', 2, 50, 1000),
(12, 11, 5, 'LENEVO', 'LED TV', 2, 50, 1000),
(13, 15, 6, 'WALTON', 'Walton Primo GH', 2, 50, 1000),
(14, 16, 7, 'WALTON', 'Walton Primo GH', 2, 50, 3000),
(15, 16, 7, 'APPLE', 'Iphone 7+', 2, 100, 3000),
(16, 18, 8, '100012', 'Test Item', 2, 80, 10);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Admin', 'Admin User', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(1, 1),
(2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sales_orders`
--

CREATE TABLE `sales_orders` (
  `order_no` int(10) UNSIGNED NOT NULL,
  `trans_type` int(11) NOT NULL,
  `debtor_no` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `person_id` int(11) NOT NULL,
  `version` tinyint(4) NOT NULL,
  `reference` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `customer_ref` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_reference_id` int(11) NOT NULL,
  `order_reference` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comments` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ord_date` date NOT NULL,
  `order_type` int(11) NOT NULL,
  `delivery_address` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_phone` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deliver_to` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `from_stk_loc` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delivery_date` date DEFAULT NULL,
  `payment_id` tinyint(4) NOT NULL,
  `total` double NOT NULL DEFAULT '0',
  `paid_amount` double NOT NULL DEFAULT '0',
  `choices` enum('no','partial_created','full_created') COLLATE utf8_unicode_ci NOT NULL,
  `payment_term` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sales_orders`
--

INSERT INTO `sales_orders` (`order_no`, `trans_type`, `debtor_no`, `branch_id`, `person_id`, `version`, `reference`, `customer_ref`, `order_reference_id`, `order_reference`, `comments`, `ord_date`, `order_type`, `delivery_address`, `contact_phone`, `contact_email`, `deliver_to`, `from_stk_loc`, `delivery_date`, `payment_id`, `total`, `paid_amount`, `choices`, `payment_term`, `created_at`, `updated_at`) VALUES
(1, 201, 1, 1, 1, 0, 'SO-0001', NULL, 0, NULL, NULL, '2017-09-01', 0, NULL, NULL, NULL, NULL, 'PL', NULL, 1, 1840, 0, 'no', 0, NULL, NULL),
(2, 202, 1, 1, 1, 0, 'INV-0001', NULL, 1, 'SO-0001', NULL, '2017-09-04', 0, NULL, NULL, NULL, NULL, 'PL', NULL, 1, 1840, 0, 'no', 1, NULL, NULL),
(3, 201, 2, 2, 1, 0, 'SO-0002', NULL, 0, NULL, NULL, '2017-09-06', 0, NULL, NULL, NULL, NULL, 'PL', NULL, 1, 9000, 0, 'no', 0, NULL, NULL),
(4, 202, 2, 2, 1, 0, 'INV-0002', NULL, 3, 'SO-0002', NULL, '2017-09-09', 0, NULL, NULL, NULL, NULL, 'PL', NULL, 1, 9000, 5000, 'no', 1, NULL, NULL),
(5, 201, 2, 2, 1, 0, 'SO-0003', NULL, 0, NULL, NULL, '2017-09-08', 0, NULL, NULL, NULL, NULL, 'PL', NULL, 1, 245000, 0, 'no', 0, NULL, NULL),
(6, 202, 2, 2, 1, 0, 'INV-0003', NULL, 5, 'SO-0003', NULL, '2017-09-14', 0, NULL, NULL, NULL, NULL, 'PL', NULL, 1, 33150, 0, 'no', 1, NULL, NULL),
(7, 202, 2, 2, 1, 0, 'INV-0004', NULL, 5, 'SO-0003', NULL, '2017-09-21', 0, NULL, NULL, NULL, NULL, 'PL', NULL, 1, 39935, 1000, 'no', 1, NULL, NULL),
(8, 202, 2, 2, 1, 0, 'INV-0005', NULL, 5, 'SO-0003', NULL, '2017-09-19', 0, NULL, NULL, NULL, NULL, 'PL', NULL, 1, 27497.5, 27497.5, 'no', 1, NULL, NULL),
(9, 202, 2, 2, 1, 0, 'INV-0006', NULL, 5, 'SO-0003', NULL, '2017-10-05', 0, NULL, NULL, NULL, NULL, 'PL', NULL, 1, 920, 0, 'no', 1, NULL, NULL),
(10, 201, 2, 2, 1, 0, 'SO-0004', NULL, 0, NULL, '', '2017-10-05', 0, NULL, NULL, NULL, NULL, 'PL', NULL, 1, 184.04995, 0, 'no', 0, '2017-10-05 04:13:27', NULL),
(11, 202, 2, 2, 1, 0, 'INV-0007', NULL, 10, 'SO-0004', '', '2017-10-05', 0, NULL, NULL, NULL, NULL, 'PL', NULL, 1, 184.04995, 0, 'no', 1, '2017-10-05 04:13:27', NULL),
(12, 201, 1, 1, 1, 0, 'SO-0005', NULL, 0, NULL, '', '2017-10-05', 0, NULL, NULL, NULL, NULL, 'PL', NULL, 1, 34.96, 0, 'no', 0, '2017-10-05 04:19:30', NULL),
(13, 202, 1, 1, 1, 0, 'INV-0008', NULL, 12, 'SO-0005', '', '2017-10-05', 0, NULL, NULL, NULL, NULL, 'PL', NULL, 1, 34.96, 0, 'no', 1, '2017-10-05 04:19:30', NULL),
(14, 201, 1, 1, 1, 0, 'SO-0006', NULL, 0, NULL, '', '2017-10-05', 0, NULL, NULL, NULL, NULL, 'PL', NULL, 1, 184.38295, 0, 'no', 0, '2017-10-05 04:20:08', NULL),
(15, 202, 1, 1, 1, 0, 'INV-0009', NULL, 14, 'SO-0006', '', '2017-10-05', 0, NULL, NULL, NULL, NULL, 'PL', NULL, 1, 184.38295, 184.38295, 'no', 1, '2017-10-05 04:20:08', NULL),
(16, 201, 1, 1, 1, 1, 'SO-0007', NULL, 0, NULL, '', '2017-10-05', 0, NULL, NULL, NULL, NULL, 'PL', NULL, 1, 80500, 0, 'no', 0, '2017-10-05 04:36:59', NULL),
(17, 202, 1, 1, 1, 0, 'INV-0010', NULL, 16, 'SO-0007', '', '2017-10-05', 0, NULL, NULL, NULL, NULL, 'PL', NULL, 1, 80500, 80500, 'no', 1, '2017-10-05 04:36:59', NULL),
(20, 201, 3, 3, 1, 0, 'SO-0008', NULL, 0, NULL, '', '2017-10-08', 0, NULL, NULL, NULL, NULL, 'PL', NULL, 1, 1150, 0, 'no', 0, '2017-10-08 06:09:30', NULL),
(21, 202, 3, 3, 1, 0, 'INV-0011', NULL, 20, 'SO-0008', '', '2017-10-08', 0, NULL, NULL, NULL, NULL, 'PL', NULL, 1, 1150, 0, 'no', 1, '2017-10-08 06:10:00', NULL),
(22, 201, 1, 1, 1, 0, 'SO-0009', NULL, 0, NULL, '', '2017-10-09', 0, NULL, NULL, NULL, NULL, 'PL', NULL, 1, 172.5, 0, 'no', 0, '2017-10-09 01:43:24', NULL),
(23, 202, 1, 1, 1, 0, 'INV-0012', NULL, 22, 'SO-0009', '', '2017-10-09', 0, NULL, NULL, NULL, NULL, 'PL', NULL, 1, 172.5, 0, 'no', 1, '2017-10-09 01:43:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sales_order_details`
--

CREATE TABLE `sales_order_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_no` int(11) NOT NULL,
  `trans_type` int(11) NOT NULL,
  `stock_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `tax_type_id` tinyint(4) NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `unit_price` double NOT NULL DEFAULT '0',
  `qty_sent` double NOT NULL DEFAULT '0',
  `quantity` double NOT NULL DEFAULT '0',
  `shipment_qty` double NOT NULL DEFAULT '0',
  `discount_percent` double NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sales_order_details`
--

INSERT INTO `sales_order_details` (`id`, `order_no`, `trans_type`, `stock_id`, `tax_type_id`, `description`, `unit_price`, `qty_sent`, `quantity`, `shipment_qty`, `discount_percent`, `created_at`, `updated_at`) VALUES
(1, 1, 201, 'APPLE', 2, 'Iphone 7+', 160, 0, 10, 0, 0, NULL, NULL),
(2, 2, 202, 'APPLE', 2, 'Iphone 7+', 160, 10, 10, 0, 0, NULL, NULL),
(3, 3, 201, 'SAMSUNG', 1, 'Samsung G7', 90, 0, 100, 0, 0, NULL, NULL),
(4, 4, 202, 'SAMSUNG', 1, 'Samsung G7', 90, 100, 100, 0, 0, NULL, NULL),
(5, 5, 201, 'APPLE', 2, 'Iphone 7+', 160, 1000, 1000, 20, 0, NULL, NULL),
(6, 5, 201, 'WALTON', 4, 'Walton Primo GH', 85, 1000, 1000, 20, 0, NULL, NULL),
(7, 6, 202, 'APPLE', 2, 'Iphone 7+', 160, 20, 20, 0, 0, NULL, NULL),
(8, 6, 202, 'WALTON', 4, 'Walton Primo GH', 85, 20, 20, 0, 0, NULL, NULL),
(9, 7, 202, 'APPLE', 2, 'Iphone 7+', 160, 50, 50, 0, 0, NULL, NULL),
(10, 7, 202, 'WALTON', 4, 'Walton Primo GH', 85, 50, 50, 0, 0, NULL, NULL),
(11, 8, 202, 'APPLE', 2, 'Iphone 7+', 160, 5, 5, 0, 0, NULL, NULL),
(12, 8, 202, 'WALTON', 4, 'Walton Primo GH', 85, 5, 5, 0, 0, NULL, NULL),
(13, 9, 202, 'APPLE', 2, 'Iphone 7+', 160, 5, 5, 0, 0, NULL, NULL),
(14, 10, 201, 'APPLE', 2, 'Iphone 7+', 160.333, 1, 1, 0, 0, NULL, NULL),
(15, 11, 202, 'APPLE', 2, 'Iphone 7+', 160.333, 1, 1, 0, 0, NULL, NULL),
(16, 12, 201, 'SAMSUNG', 2, 'Samsung G7', 30.4, 1, 1, 0, 0, NULL, NULL),
(17, 13, 202, 'SAMSUNG', 2, 'Samsung G7', 30.4, 1, 1, 0, 0, NULL, NULL),
(18, 14, 201, 'APPLE', 2, 'Iphone 7+', 160.333, 1, 1, 0, 0, NULL, NULL),
(19, 15, 202, 'APPLE', 2, 'Iphone 7+', 160.333, 1, 1, 0, 0, NULL, NULL),
(20, 16, 201, 'APPLE', 2, 'Iphone 7+', 7000, 10, 10, 10, 0, NULL, NULL),
(21, 17, 202, 'APPLE', 2, 'Iphone 7+', 7000, 10, 10, 0, 0, NULL, NULL),
(31, 23, 202, '100012', 2, 'Test Item', 150, 1, 1, 0, 0, NULL, NULL),
(30, 22, 201, '100012', 2, 'Test Item', 150, 1, 1, 0, 0, NULL, NULL),
(28, 20, 201, 'SAMSUNG', 2, 'Samsung G7', 100, 0, 10, 0, 0, NULL, NULL),
(29, 21, 202, 'SAMSUNG', 2, 'Samsung G7', 100, 10, 10, 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sales_types`
--

CREATE TABLE `sales_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `sales_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tax_included` int(11) NOT NULL,
  `factor` double NOT NULL,
  `defaults` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sales_types`
--

INSERT INTO `sales_types` (`id`, `sales_type`, `tax_included`, `factor`, `defaults`) VALUES
(1, 'Retail', 1, 0, 1),
(2, 'Wholesale', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sale_prices`
--

CREATE TABLE `sale_prices` (
  `id` int(10) UNSIGNED NOT NULL,
  `stock_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sales_type_id` int(11) NOT NULL,
  `curr_abrev` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sale_prices`
--

INSERT INTO `sale_prices` (`id`, `stock_id`, `sales_type_id`, `curr_abrev`, `price`) VALUES
(1, 'APPLE', 1, 'USD', 160),
(2, 'HP', 1, 'USD', 120),
(3, 'LENEVO', 1, 'USD', 70),
(4, 'LG', 1, 'USD', 80),
(5, 'SAMSUNG', 1, 'USD', 90),
(6, 'SINGER', 1, 'USD', 80),
(7, 'SONY', 1, 'USD', 90),
(8, 'WALTON', 1, 'USD', 85),
(9, 'APPLE', 2, 'USD', 150),
(10, 'HP', 2, 'USD', 100),
(11, 'LENEVO', 2, 'USD', 65),
(12, 'LG', 2, 'USD', 75),
(13, 'SAMSUNG', 2, 'USD', 80),
(14, 'SINGER', 2, 'USD', 65),
(15, 'SONY', 2, 'USD', 85),
(16, 'WALTON', 2, 'USD', 70),
(17, '100012', 1, 'USD', 150),
(18, '100012', 2, 'USD', 120);

-- --------------------------------------------------------

--
-- Table structure for table `shipment`
--

CREATE TABLE `shipment` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_no` int(11) NOT NULL,
  `trans_type` int(11) NOT NULL,
  `comments` text COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `packed_date` date NOT NULL,
  `delivery_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shipment`
--

INSERT INTO `shipment` (`id`, `order_no`, `trans_type`, `comments`, `status`, `packed_date`, `delivery_date`, `created_at`, `updated_at`) VALUES
(1, 5, 301, '', 0, '2017-10-02', '0000-00-00', NULL, NULL),
(2, 5, 301, '', 1, '2017-10-02', '2017-10-02', NULL, NULL),
(3, 16, 301, 'Auto shipment', 0, '2017-10-05', '0000-00-00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shipment_details`
--

CREATE TABLE `shipment_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `shipment_id` int(11) NOT NULL,
  `order_no` int(11) NOT NULL,
  `stock_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tax_type_id` tinyint(4) NOT NULL,
  `unit_price` double NOT NULL,
  `quantity` double NOT NULL,
  `discount_percent` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shipment_details`
--

INSERT INTO `shipment_details` (`id`, `shipment_id`, `order_no`, `stock_id`, `tax_type_id`, `unit_price`, `quantity`, `discount_percent`, `created_at`, `updated_at`) VALUES
(1, 1, 5, 'APPLE', 2, 160, 10, 0, NULL, NULL),
(2, 1, 5, 'WALTON', 4, 85, 10, 0, NULL, NULL),
(3, 2, 5, 'APPLE', 2, 160, 10, 0, NULL, NULL),
(4, 2, 5, 'WALTON', 4, 85, 10, 0, NULL, NULL),
(5, 3, 16, 'APPLE', 2, 7000, 10, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `stock_category`
--

CREATE TABLE `stock_category` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `description` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `dflt_units` int(11) NOT NULL,
  `inactive` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `stock_category`
--

INSERT INTO `stock_category` (`category_id`, `description`, `dflt_units`, `inactive`, `created_at`, `updated_at`) VALUES
(1, 'Default', 1, 0, '2017-10-05 04:07:56', NULL),
(2, 'Hardware', 1, 0, '2017-10-05 04:07:56', NULL),
(3, 'Health & Beauty', 1, 0, '2017-10-05 04:07:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `stock_master`
--

CREATE TABLE `stock_master` (
  `stock_id` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `tax_type_id` int(11) NOT NULL,
  `description` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `long_description` text COLLATE utf8_unicode_ci NOT NULL,
  `units` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `inactive` tinyint(4) NOT NULL DEFAULT '0',
  `deleted_status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `stock_master`
--

INSERT INTO `stock_master` (`stock_id`, `category_id`, `tax_type_id`, `description`, `long_description`, `units`, `inactive`, `deleted_status`, `created_at`, `updated_at`) VALUES
('APPLE', 1, 2, 'Iphone 7+', '', 'Each', 0, 0, NULL, NULL),
('HP', 1, 2, 'HP Pro Book', '', 'Each', 0, 0, NULL, NULL),
('LENEVO', 1, 2, 'LED TV', '', 'Each', 0, 0, NULL, NULL),
('LG', 1, 2, 'LG Refrigeretor', '', 'Each', 0, 0, NULL, NULL),
('SAMSUNG', 1, 2, 'Samsung G7', '', 'Each', 0, 0, NULL, NULL),
('SINGER', 1, 2, 'Singer Refrigerator', '', 'Each', 0, 0, NULL, NULL),
('SONY', 1, 2, 'Sony experia 5', '', 'Each', 0, 0, NULL, NULL),
('WALTON', 1, 2, 'Walton Primo GH', '', 'Each', 0, 0, NULL, NULL),
('100012', 2, 1, 'Test Item', 'sdfsdf', 'Each', 0, 0, '2017-10-09 01:36:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `stock_moves`
--

CREATE TABLE `stock_moves` (
  `trans_id` int(10) UNSIGNED NOT NULL,
  `stock_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `order_no` int(11) NOT NULL,
  `receive_id` int(11) NOT NULL,
  `trans_type` smallint(6) NOT NULL DEFAULT '0',
  `loc_code` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `tran_date` date NOT NULL,
  `person_id` int(11) DEFAULT NULL,
  `order_reference` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `reference` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `transaction_reference_id` int(11) NOT NULL,
  `transfer_id` int(11) DEFAULT NULL,
  `note` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `qty` double NOT NULL DEFAULT '0',
  `price` double NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `stock_moves`
--

INSERT INTO `stock_moves` (`trans_id`, `stock_id`, `order_no`, `receive_id`, `trans_type`, `loc_code`, `tran_date`, `person_id`, `order_reference`, `reference`, `transaction_reference_id`, `transfer_id`, `note`, `qty`, `price`) VALUES
(1, 'APPLE', 0, 0, 102, 'PL', '2017-08-19', 1, '', 'store_in_10', 10, NULL, '', 1000, 100),
(2, 'HP', 0, 0, 102, 'PL', '2017-08-19', 1, '', 'store_in_10', 10, NULL, '', 1000, 80),
(3, 'SAMSUNG', 0, 0, 102, 'PL', '2017-10-02', 1, '', 'store_in_11', 11, NULL, '', 1000, 50),
(4, 'SONY', 0, 0, 102, 'PL', '2017-10-02', 1, '', 'store_in_11', 11, NULL, '', 1000, 50),
(5, 'SINGER', 0, 0, 102, 'PL', '2017-10-02', 1, '', 'store_in_11', 11, NULL, '', 1000, 50),
(6, 'LG', 0, 0, 102, 'PL', '2017-10-02', 1, '', 'store_in_11', 11, NULL, '', 1000, 50),
(7, 'LENEVO', 0, 0, 102, 'PL', '2017-10-02', 1, '', 'store_in_11', 11, NULL, '', 1000, 50),
(8, 'APPLE', 0, 0, 102, 'PL', '2017-09-25', 1, '', 'store_in_12', 12, NULL, '', 1000, 100),
(9, 'WALTON', 0, 0, 102, 'JA', '2017-09-25', 1, '', 'store_in_12', 12, NULL, '', 1000, 50),
(10, 'SONY', 0, 0, 102, 'JA', '2017-08-18', 1, '', 'store_in_13', 13, NULL, '', 1000, 50),
(11, 'SINGER', 0, 0, 102, 'JA', '2017-08-18', 1, '', 'store_in_13', 13, NULL, '', 1000, 50),
(12, 'SAMSUNG', 0, 0, 102, 'JA', '2017-08-18', 1, '', 'store_in_13', 13, NULL, '', 1000, 50),
(13, 'WALTON', 0, 0, 102, 'JA', '2017-08-18', 1, '', 'store_in_13', 13, NULL, '', 1000, 50),
(14, 'SINGER', 0, 0, 102, 'JA', '2017-10-02', 1, '', 'store_in_14', 14, NULL, '', 1000, 50),
(15, 'LG', 0, 0, 102, 'JA', '2017-10-02', 1, '', 'store_in_14', 14, NULL, '', 1000, 50),
(16, 'WALTON', 0, 0, 102, 'JA', '2017-10-02', 1, '', 'store_in_15', 15, NULL, '', 1000, 50),
(17, 'APPLE', 1, 0, 202, 'PL', '2017-09-04', 1, 'SO-0001', 'store_out_2', 2, NULL, '', -10, 160),
(18, 'SAMSUNG', 3, 0, 202, 'PL', '2017-09-09', 1, 'SO-0002', 'store_out_4', 4, NULL, '', -100, 90),
(19, 'WALTON', 0, 0, 102, 'PL', '2017-10-02', 1, '', 'store_in_16', 16, NULL, '', 3000, 50),
(20, 'APPLE', 0, 0, 102, 'PL', '2017-10-02', 1, '', 'store_in_16', 16, NULL, '', 3000, 100),
(21, 'APPLE', 5, 0, 202, 'PL', '2017-09-13', 1, 'SO-0003', 'store_out_6', 6, NULL, '', -20, 160),
(22, 'WALTON', 5, 0, 202, 'PL', '2017-09-13', 1, 'SO-0003', 'store_out_6', 6, NULL, '', -20, 85),
(23, 'APPLE', 5, 0, 202, 'PL', '2017-09-20', 1, 'SO-0003', 'store_out_7', 7, NULL, '', -50, 160),
(24, 'WALTON', 5, 0, 202, 'PL', '2017-09-20', 1, 'SO-0003', 'store_out_7', 7, NULL, '', -50, 85),
(25, 'APPLE', 5, 0, 202, 'PL', '2017-09-26', 1, 'SO-0003', 'store_out_8', 8, NULL, '', -5, 160),
(26, 'WALTON', 5, 0, 202, 'PL', '2017-09-26', 1, 'SO-0003', 'store_out_8', 8, NULL, '', -5, 85),
(27, 'SAMSUNG', 0, 0, 401, 'JA', '2017-10-02', 1, '', 'moved_from_PL', 1, 1, '', 10, 0),
(28, 'SAMSUNG', 0, 0, 402, 'PL', '2017-10-02', 1, '', 'moved_in_JA', 1, NULL, '', -10, 0),
(29, 'WALTON', 0, 0, 401, 'PL', '2017-10-02', 1, '', 'moved_from_JA', 2, 2, '', 10, 0),
(30, 'WALTON', 0, 0, 402, 'JA', '2017-10-02', 1, '', 'moved_in_PL', 2, NULL, '', -10, 0),
(31, 'APPLE', 5, 0, 202, 'PL', '2017-10-05', 1, 'SO-0003', 'store_out_9', 9, NULL, '', -5, 160),
(32, 'APPLE', 0, 0, 102, 'JA', '2017-10-05', 1, '', 'store_in_17', 17, NULL, '', 500, 100),
(33, 'APPLE', 10, 0, 202, 'PL', '2017-10-05', 1, 'SO-0004', 'store_out_11', 11, NULL, '', -1, 160.333),
(34, 'SAMSUNG', 12, 0, 202, 'PL', '2017-10-05', 1, 'SO-0005', 'store_out_13', 13, NULL, '', -1, 30.4),
(35, 'APPLE', 14, 0, 202, 'PL', '2017-10-05', 1, 'SO-0006', 'store_out_15', 15, NULL, '', -1, 160.333),
(36, 'LG', 0, 0, 401, 'JA', '2017-10-05', 1, '', 'moved_from_PL', 3, 3, '', 1, 0),
(37, 'LG', 0, 0, 402, 'PL', '2017-10-05', 1, '', 'moved_in_JA', 3, NULL, '', -1, 0),
(38, 'APPLE', 16, 0, 202, 'PL', '2017-10-05', 1, 'SO-0007', 'store_out_17', 17, NULL, '', -10, 7000),
(51, 'SAMSUNG', 20, 0, 202, 'PL', '2017-10-08', 1, 'SO-0008', 'store_out_21', 21, NULL, '', -10, 100),
(50, 'APPLE', 0, 7, 102, 'PL', '2017-10-08', 1, '', 'store_in_16', 16, NULL, '', 3000, 100),
(49, 'WALTON', 0, 7, 102, 'PL', '2017-10-08', 1, '', 'store_in_16', 16, NULL, '', 3000, 50),
(42, 'APPLE', 0, 4, 102, 'JA', '2017-10-05', 1, '', 'store_in_17', 17, NULL, '', 500, 100),
(43, 'SAMSUNG', 0, 5, 102, 'PL', '2017-10-05', 1, '', 'store_in_11', 11, NULL, '', 1000, 50),
(44, 'SONY', 0, 5, 102, 'PL', '2017-10-05', 1, '', 'store_in_11', 11, NULL, '', 1000, 50),
(45, 'SINGER', 0, 5, 102, 'PL', '2017-10-05', 1, '', 'store_in_11', 11, NULL, '', 1000, 50),
(46, 'LG', 0, 5, 102, 'PL', '2017-10-05', 1, '', 'store_in_11', 11, NULL, '', 1000, 50),
(47, 'LENEVO', 0, 5, 102, 'PL', '2017-10-05', 1, '', 'store_in_11', 11, NULL, '', 1000, 50),
(48, 'WALTON', 0, 6, 102, 'JA', '2017-10-05', 1, '', 'store_in_15', 15, NULL, '', 1000, 50),
(52, '100012', 0, 8, 102, 'PL', '2017-10-09', 1, '', 'store_in_18', 18, NULL, '', 10, 80),
(53, '100012', 22, 0, 202, 'PL', '2017-10-09', 1, 'SO-0009', 'store_out_23', 23, NULL, '', -1, 150);

-- --------------------------------------------------------

--
-- Table structure for table `stock_transfer`
--

CREATE TABLE `stock_transfer` (
  `id` int(10) UNSIGNED NOT NULL,
  `person_id` int(11) NOT NULL,
  `source` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `destination` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `note` text COLLATE utf8_unicode_ci NOT NULL,
  `qty` int(11) NOT NULL,
  `transfer_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `stock_transfer`
--

INSERT INTO `stock_transfer` (`id`, `person_id`, `source`, `destination`, `note`, `qty`, `transfer_date`) VALUES
(1, 1, 'PL', 'JA', '', 10, '2017-10-02'),
(2, 1, 'JA', 'PL', '', 10, '2017-10-02'),
(3, 1, 'PL', 'JA', '', 1, '2017-10-05');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `supplier_id` int(10) UNSIGNED NOT NULL,
  `supp_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `contact` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `zipcode` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `inactive` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`supplier_id`, `supp_name`, `email`, `address`, `contact`, `city`, `state`, `zipcode`, `country`, `inactive`, `created_at`, `updated_at`) VALUES
(1, 'Ina Moran', 'ina.morn@yahoo.com', 'Santa Rosa', '(684) 579-1879', 'Nunc Road', 'Lebanon', 'KY 69409', 'Lebanon', 0, NULL, NULL),
(2, 'Hedy Greene', 'hedy@yahoo.com', 'Ap #696-3279 Viverra. Avenue', '(608) 265-2215', 'Latrobe', 'Lebanon', 'DE 38100', 'Lebanon', 0, NULL, NULL),
(3, 'Melvin Porter', 'melvin@gmail.com', 'Curabitur Rd.', '(959) 119-8364', 'Bandera', 'South Dakota', '45149', 'USA', 0, NULL, NULL),
(4, 'Celeste Slater', 'celeste@yahoo.com', 'Ullamcorper. Street', '(786) 713-861', 'Roseville', 'New york', 'NH 11523', 'United States', 0, NULL, NULL),
(5, 'Theodore Lowe', 'lowe@yahoo.com', 'Ap #867-859 Sit Rd.', '(793) 151-623', 'Azusa', 'New York', '39531', 'United States', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `real_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `role_id` int(11) NOT NULL DEFAULT '1',
  `phone` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `inactive` tinyint(4) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_id`, `password`, `real_name`, `role_id`, `phone`, `email`, `picture`, `inactive`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', '$2y$10$NFl9z/cbBkX8q41bIkZbm.32OT/Ogp2fYKIZXifzgm2M6n1oG5/0C', 'Admin', 1, '1236', 'admin@techvill.net', '', 0, '6C2xtWn1hrr7D8GHo0KGJ7uwuFMoV0oprxX3nJDFVPJVpd4xzeCpr5ANJORF', NULL, '2017-10-09 03:06:55'),
(2, 'reza', '$2y$10$Gmn3O3YVPo6ixo.sCE7JqO6JPEmTGPcyOpCmQxpIxYw5k4mTIp.5a', 'reza', 1, '225', 'reza.techvill@gmail.com', '', 0, '', '2017-10-09 02:00:39', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `backup`
--
ALTER TABLE `backup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cust_branch`
--
ALTER TABLE `cust_branch`
  ADD PRIMARY KEY (`branch_code`);

--
-- Indexes for table `debtors_master`
--
ALTER TABLE `debtors_master`
  ADD PRIMARY KEY (`debtor_no`);

--
-- Indexes for table `email_config`
--
ALTER TABLE `email_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_temp_details`
--
ALTER TABLE `email_temp_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_payment_terms`
--
ALTER TABLE `invoice_payment_terms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_code`
--
ALTER TABLE `item_code`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_tax_types`
--
ALTER TABLE `item_tax_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_unit`
--
ALTER TABLE `item_unit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `payment_history`
--
ALTER TABLE `payment_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_terms`
--
ALTER TABLE `payment_terms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`);

--
-- Indexes for table `preference`
--
ALTER TABLE `preference`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_prices`
--
ALTER TABLE `purchase_prices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purch_orders`
--
ALTER TABLE `purch_orders`
  ADD PRIMARY KEY (`order_no`);

--
-- Indexes for table `purch_order_details`
--
ALTER TABLE `purch_order_details`
  ADD PRIMARY KEY (`po_detail_item`);

--
-- Indexes for table `receive_orders`
--
ALTER TABLE `receive_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `receive_order_details`
--
ALTER TABLE `receive_order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`);

--
-- Indexes for table `sales_orders`
--
ALTER TABLE `sales_orders`
  ADD PRIMARY KEY (`order_no`);

--
-- Indexes for table `sales_order_details`
--
ALTER TABLE `sales_order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales_types`
--
ALTER TABLE `sales_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sale_prices`
--
ALTER TABLE `sale_prices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipment`
--
ALTER TABLE `shipment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipment_details`
--
ALTER TABLE `shipment_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_category`
--
ALTER TABLE `stock_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `stock_master`
--
ALTER TABLE `stock_master`
  ADD PRIMARY KEY (`stock_id`);

--
-- Indexes for table `stock_moves`
--
ALTER TABLE `stock_moves`
  ADD PRIMARY KEY (`trans_id`);

--
-- Indexes for table `stock_transfer`
--
ALTER TABLE `stock_transfer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`supplier_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `backup`
--
ALTER TABLE `backup`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=243;
--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `cust_branch`
--
ALTER TABLE `cust_branch`
  MODIFY `branch_code` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `debtors_master`
--
ALTER TABLE `debtors_master`
  MODIFY `debtor_no` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `email_config`
--
ALTER TABLE `email_config`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `email_temp_details`
--
ALTER TABLE `email_temp_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `invoice_payment_terms`
--
ALTER TABLE `invoice_payment_terms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `item_code`
--
ALTER TABLE `item_code`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `item_tax_types`
--
ALTER TABLE `item_tax_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `item_unit`
--
ALTER TABLE `item_unit`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `payment_history`
--
ALTER TABLE `payment_history`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `payment_terms`
--
ALTER TABLE `payment_terms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;
--
-- AUTO_INCREMENT for table `preference`
--
ALTER TABLE `preference`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `purchase_prices`
--
ALTER TABLE `purchase_prices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `purch_orders`
--
ALTER TABLE `purch_orders`
  MODIFY `order_no` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `purch_order_details`
--
ALTER TABLE `purch_order_details`
  MODIFY `po_detail_item` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `receive_orders`
--
ALTER TABLE `receive_orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `receive_order_details`
--
ALTER TABLE `receive_order_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `sales_orders`
--
ALTER TABLE `sales_orders`
  MODIFY `order_no` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `sales_order_details`
--
ALTER TABLE `sales_order_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `sales_types`
--
ALTER TABLE `sales_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `sale_prices`
--
ALTER TABLE `sale_prices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `shipment`
--
ALTER TABLE `shipment`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `shipment_details`
--
ALTER TABLE `shipment_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `stock_category`
--
ALTER TABLE `stock_category`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `stock_moves`
--
ALTER TABLE `stock_moves`
  MODIFY `trans_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT for table `stock_transfer`
--
ALTER TABLE `stock_transfer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `supplier_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
