-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 07, 2022 at 02:56 AM
-- Server version: 10.3.34-MariaDB-log-cll-lve
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qodevnmr_questa_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `candidates_tb`
--

CREATE TABLE `candidates_tb` (
  `id` int(11) NOT NULL,
  `candidate_id` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `middle_name` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `pass_code` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `candidate_class` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `candidate_added_by` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `candidates_tb`
--

INSERT INTO `candidates_tb` (`id`, `candidate_id`, `first_name`, `middle_name`, `last_name`, `email`, `pass_code`, `candidate_class`, `candidate_added_by`, `date_updated`, `date_created`) VALUES
(8, 'CAN_66FY0K2W8U', 'Olusanya', 'Timilehin', 'Moses', 'moses@timi.com', '', 'CLS_BCJR0XPCKS', '', '2021-12-20 12:43:41', '2021-12-03 14:54:43'),
(10, 'VQDQOVGR0F', 'Olorunfemi', '', 'Mactop', 'mactop@olorunfemi.com', '', 'CLS_0LQ2O9G7S7', '', '2021-12-11 08:16:34', '2021-12-06 12:14:32'),
(11, 'GS0Y6H8YC0', 'Phillips', '', 'Ujah', 'philly@ujah.com', '', 'CLS_IO1MIXEP1B', '', '2022-01-19 12:06:49', '2021-12-06 12:14:54'),
(12, '2J7MD8CE6U', 'Emmanuel', '', 'Diogu', 'emma@diogu.com', '', 'CLS_WWTFT15XHO', '', '2021-12-11 08:19:52', '2021-12-06 17:28:27'),
(13, '3J3K8ST', 'Isaiah', 'Michael', 'Fateyinshe', 'mayor@mayor.com', '', 'CLS_IO1MIXEP1B', '', '2022-01-06 04:22:11', '2021-12-07 13:15:11'),
(14, '9SELW3Y', 'Adebayo', '', 'Olufemi', 'adebayo@yahoo.com', '', 'CLS_0LQ2O9G7S7', '', '2021-12-24 19:52:00', '2021-12-12 12:25:42'),
(15, 'IJUL50K', 'Oluwole', 'Ibukun', 'Oyelami', 'wole@lami.com', '', 'CLS_0LQ2O9G7S7', '', '2021-12-12 12:26:08', '2021-12-12 12:26:08'),
(16, 'I7YIS1U', 'Dayo', 'Michael', 'Oyewusi', 'dayo@wusi.com', '', 'CLS_0LQ2O9G7S7', '', '2021-12-12 12:26:41', '2021-12-12 12:26:41'),
(17, 'MSZM1YG', 'Franklin', 'Johnson', 'Ohaikhenan', 'franklin@johnson.com', '', 'CLS_0LQ2O9G7S7', '', '2021-12-12 12:38:01', '2021-12-12 12:38:01'),
(18, 'WDQ10M7', 'David', 'Johnson', 'Ohaikhenan', 'dave@johnson.com', '', 'CLS_0LQ2O9G7S7', '', '2021-12-12 12:38:34', '2021-12-12 12:38:34'),
(19, 'U6XU9PN', 'Joseph', 'Olawale', 'Bamidele', 'wale@bam.com', '', 'CLS_WWTFT15XHO', '', '2021-12-12 12:42:51', '2021-12-12 12:42:12'),
(21, 'ZW326LU', 'Dr.', 'O', 'Unoma', 'dr@waaw.org', '', 'CLS_C3XMSFK5RZ', '', '2022-02-24 20:03:13', '2021-12-13 04:21:49'),
(23, 'QST7EQJ', 'Rhoda', 'Rukayat', 'Shittu', 'rhoda@osogbo.com', '', 'CLS_0LQ2O9G7S7', '', '2021-12-14 13:54:03', '2021-12-14 13:54:03'),
(24, '1QEW1R2', 'Janet', 'Temidayo', 'Joseph', 'temidayo@joseph.com', '', 'CLS_GKNYQPWXC0', '', '2022-01-05 13:47:05', '2022-01-05 13:47:05'),
(25, 'FLTXB4V', 'prospect', 'Emmanuel', 'Andrew', 'stepshigher@gmail.com', '', 'CLS_Z88NLHEWNC', '', '2022-01-11 10:26:24', '2022-01-11 10:26:24'),
(26, '052MM4M', 'Joseph', 'Olawale', 'Bamidele', 'jolawale28@gmail.com', '', 'CLS_RD9JU00VBL', 'USR_UTM3XFRFK1', '2022-03-14 04:57:04', '2022-03-14 04:57:04'),
(27, '9XCVZ2U', 'Habibah', 'Anisa', 'Salihu', 'anisa@wka.com', '', 'CLS_RD9JU00VBL', 'USR_UTM3XFRFK1', '2022-05-23 04:36:01', '2022-05-23 04:36:01'),
(28, '99E5O0A', 'Samuel', 'Muyiwa', 'Oluwaniyi', 'samuel@wka.com', '', 'CLS_RD9JU00VBL', 'USR_UTM3XFRFK1', '2022-05-23 04:36:29', '2022-05-23 04:36:29'),
(29, '3IEIJLS', 'Walid', 'Adamu', 'Atiku', 'walid@wka.com', '', 'CLS_RD9JU00VBL', 'USR_UTM3XFRFK1', '2022-05-23 04:36:52', '2022-05-23 04:36:52'),
(30, '8UEINB2', 'Maryam', 'Yari', 'Abdulazeez', 'maryam@wka.com', '', 'CLS_RD9JU00VBL', 'USR_UTM3XFRFK1', '2022-05-23 04:37:22', '2022-05-23 04:37:22'),
(31, 'T42J7XB', 'Abubakar', 'Ifeanyi', 'Adekunle', 'abu@questa.com', '', 'CLS_RD9JU00VBL', 'USR_UTM3XFRFK1', '2022-05-23 11:19:04', '2022-05-23 11:19:04');

-- --------------------------------------------------------

--
-- Table structure for table `candidate_answers_tb`
--

CREATE TABLE `candidate_answers_tb` (
  `id` int(11) NOT NULL,
  `entry_id` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `candidate_id` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `examination_id` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `answer` text COLLATE utf8_unicode_ci NOT NULL,
  `time_spent` bigint(11) NOT NULL COMMENT 'time spent before submitting examination attempt (in seconds)',
  `time_remaining` bigint(20) NOT NULL,
  `score_sheet` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'shows how marks are allocated for scores.',
  `computed_scores` int(11) NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `candidate_answers_tb`
--

INSERT INTO `candidate_answers_tb` (`id`, `entry_id`, `candidate_id`, `examination_id`, `answer`, `time_spent`, `time_remaining`, `score_sheet`, `computed_scores`, `date_updated`, `date_created`) VALUES
(40, 'ENT_VG5DD2I52E', 'CAN_66FY0K2W8U', 'GC9EBYLMH4', '[{\"question\":\"XZF5A2GOBLPU\",\"selected_answer\":\"option_a\"},{\"question\":\"1VXG3MGOKIY7\",\"selected_answer\":\"option_b\"},{\"question\":\"3SB3QNXRS6P2\",\"selected_answer\":\"option_d\"},{\"question\":\"HNDG5LZXRELD\",\"selected_answer\":\"option_c\"},{\"question\":\"SDYXRINC86BM\",\"selected_answer\":\"option_b\"}]', 0, 0, '', 0, '2021-12-06 03:39:31', '2021-12-05 16:51:44'),
(41, 'ENT_7WMDUDE3HF', 'CAN_WAMJO09RR6', 'NOMGE0NRIF', '[{\"question\":\"A73KA2LVLHLE\",\"selected_answer\":\"option_a\"}]', 0, 0, '', 0, '2021-12-06 03:35:20', '2021-12-06 03:35:20'),
(42, 'ENT_84KG7FUA07', 'U14S3P3TDQ', 'GC9EBYLMH4', '[{\"question\":\"XZF5A2GOBLPU\",\"selected_answer\":\"option_b\"},{\"question\":\"1VXG3MGOKIY7\",\"selected_answer\":\"option_c\"},{\"question\":\"3SB3QNXRS6P2\",\"selected_answer\":\"option_d\"},{\"question\":\"HNDG5LZXRELD\",\"selected_answer\":\"option_d\"},{\"question\":\"SDYXRINC86BM\",\"selected_answer\":\"option_c\"}]', 0, 0, '', 0, '2021-12-06 05:13:35', '2021-12-06 05:13:35'),
(34, 'ENT_3KRYIBGS1E', 'CAN_WAMJO09RR6', 'GC9EBYLMH4', '[{\"question\":\"A73KA2LVLHLE\",\"selected_answer\":\"option_c\"}]', 0, 0, '', 0, '2021-12-06 03:39:38', '2021-12-04 22:04:40'),
(35, 'ENT_IEO2EL0M4S', 'CAN_66FY0K2W8U', 'NOMGE0NRIF', '[{\"question\":\"A73KA2LVLHLE\",\"selected_answer\":\"option_a\"}]', 0, 0, '', 0, '2021-12-06 03:39:33', '2021-12-04 22:16:10'),
(43, 'ENT_4BDLAW35V8', 'GS0Y6H8YC0', 'UL2Y2EZQGC', '[{\"question\":\"FDOREFKBOVVL\",\"selected_answer\":\"option_b\"},{\"question\":\"SX8BARMSYFKV\",\"selected_answer\":\"option_a\"},{\"question\":\"CHMWWJ4ESISV\",\"selected_answer\":\"option_b\"},{\"question\":\"RX2SFC3DA8O4\",\"selected_answer\":\"option_c\"},{\"question\":\"HXSB1T2AGUE0\",\"selected_answer\":\"option_b\"},{\"question\":\"W0H6WZYOAYZZ\",\"selected_answer\":\"option_b\"},{\"question\":\"JCYAM5WN5LST\",\"selected_answer\":\"option_a\"},{\"question\":\"0NCMAHJ306HP\",\"selected_answer\":\"option_a\"},{\"question\":\"NLKKOQRX6XYG\",\"selected_answer\":\"option_b\"}]', 0, 0, '', 0, '2021-12-06 12:47:32', '2021-12-06 12:47:32'),
(44, 'ENT_VG4LTUC9WA', 'VQDQOVGR0F', 'UL2Y2EZQGC', '[{\"question\":\"FDOREFKBOVVL\",\"selected_answer\":\"option_b\"},{\"question\":\"SX8BARMSYFKV\",\"selected_answer\":\"option_a\"},{\"question\":\"CHMWWJ4ESISV\",\"selected_answer\":\"option_a\"},{\"question\":\"RX2SFC3DA8O4\",\"selected_answer\":\"option_c\"},{\"question\":\"HXSB1T2AGUE0\",\"selected_answer\":\"option_d\"},{\"question\":\"W0H6WZYOAYZZ\",\"selected_answer\":\"option_a\"},{\"question\":\"JCYAM5WN5LST\",\"selected_answer\":\"option_c\"},{\"question\":\"KVWETGRIR1AC\",\"selected_answer\":\"option_d\"},{\"question\":\"0NCMAHJ306HP\",\"selected_answer\":\"option_c\"},{\"question\":\"NLKKOQRX6XYG\",\"selected_answer\":\"option_b\"}]', 0, 0, '', 0, '2021-12-06 12:52:35', '2021-12-06 12:52:35'),
(45, 'ENT_3JGHWVFC2G', '2J7MD8CE6U', 'UL2Y2EZQGC', '[{\"question\":\"FDOREFKBOVVL\",\"selected_answer\":\"option_a\"},{\"question\":\"SX8BARMSYFKV\",\"selected_answer\":\"option_b\"},{\"question\":\"CHMWWJ4ESISV\",\"selected_answer\":\"option_a\"},{\"question\":\"RX2SFC3DA8O4\",\"selected_answer\":\"option_a\"},{\"question\":\"HXSB1T2AGUE0\",\"selected_answer\":\"option_b\"},{\"question\":\"W0H6WZYOAYZZ\",\"selected_answer\":\"option_a\"},{\"question\":\"JCYAM5WN5LST\",\"selected_answer\":\"option_c\"},{\"question\":\"KVWETGRIR1AC\",\"selected_answer\":\"option_b\"},{\"question\":\"0NCMAHJ306HP\",\"selected_answer\":\"option_a\"},{\"question\":\"NLKKOQRX6XYG\",\"selected_answer\":\"option_a\"}]', 0, 0, '', 0, '2021-12-06 17:32:08', '2021-12-06 17:32:08'),
(105, 'ENT_IG6LN0RYBG', 'CAN_66FY0K2W8U', 'R8Y48M2', '[{\"question\":\"7LK7XVDAB5EZ\",\"selected_answer\":\"option_b\"}]', 0, 0, '', 0, '2021-12-20 12:47:39', '2021-12-20 12:47:39'),
(107, 'ENT_7134VHMSTW', 'QST7EQJ', 'QWQYJME', '[{\"question\":\"I0KQQMWRB5NC\",\"selected_answer\":\"option_b\"},{\"question\":\"ORZBUO5IKQUH\",\"selected_answer\":\"option_c\"}]', 0, 0, '', 0, '2021-12-21 10:41:49', '2021-12-21 10:41:49'),
(108, 'ENT_3GLPE23VE3', 'CAN_66FY0K2W8U', 'ZF0SU10', '[{\"question\":\"FPPJUKFPSRRN\",\"selected_answer\":\"option_b\"},{\"question\":\"68KA4ML4957L\",\"selected_answer\":\"option_c\"}]', 0, 0, '', 0, '2021-12-22 16:49:13', '2021-12-22 16:49:13'),
(70, 'ENT_9HJ1R1BBJX', 'I7YIS1U', '970LDG5', '[{\"question\":\"EUUT7MCH07KL\",\"selected_answer\":\"option_a\"},{\"question\":\"LGGJ4KIIKOLL\",\"selected_answer\":\"option_b\"},{\"question\":\"8MMRROR6N510\",\"selected_answer\":\"option_b\"},{\"question\":\"BAINFFRHEKIP\",\"selected_answer\":\"option_c\"},{\"question\":\"6P6N818REV4F\",\"selected_answer\":\"option_c\"},{\"question\":\"KHYELX7DLXLP\",\"selected_answer\":\"option_b\"},{\"question\":\"JNQNS3K2XDAR\",\"selected_answer\":\"option_a\"},{\"question\":\"A8ECOHJ2OXSW\",\"selected_answer\":\"option_a\"},{\"question\":\"XXIRW9QL0EXR\",\"selected_answer\":\"option_a\"},{\"question\":\"7KQUPZVQ3D1O\",\"selected_answer\":\"option_c\"}]', 0, 0, '', 0, '2021-12-12 12:31:08', '2021-12-12 12:31:08'),
(78, 'ENT_KY103TNQ49', 'IJUL50K', '970LDG5', '[{\"question\":\"8MMRROR6N510\",\"selected_answer\":\"option_b\"},{\"question\":\"BAINFFRHEKIP\",\"selected_answer\":\"option_c\"},{\"question\":\"KHYELX7DLXLP\",\"selected_answer\":\"option_b\"},{\"question\":\"7KQUPZVQ3D1O\",\"selected_answer\":\"option_b\"},{\"question\":\"XXIRW9QL0EXR\",\"selected_answer\":\"option_a\"},{\"question\":\"A8ECOHJ2OXSW\",\"selected_answer\":\"option_b\"},{\"question\":\"JNQNS3K2XDAR\",\"selected_answer\":\"option_a\"},{\"question\":\"6P6N818REV4F\",\"selected_answer\":\"option_a\"}]', 0, 0, '', 0, '2021-12-13 04:42:50', '2021-12-13 04:42:50'),
(74, 'ENT_22VD4ZJ0UI', 'U6XU9PN', 'YRVAL7E', '[{\"question\":\"R0LVPJ8KTHNZ\",\"selected_answer\":\"option_a\"},{\"question\":\"VUWTGYDZOFYR\",\"selected_answer\":\"option_b\"},{\"question\":\"FOVKDPJQQHFP\",\"selected_answer\":\"option_b\"},{\"question\":\"TBRNKHHVEHZJ\",\"selected_answer\":\"option_b\"},{\"question\":\"TGNZVYHBDYNV\",\"selected_answer\":\"option_b\"},{\"question\":\"S7NXH6DYOSNV\",\"selected_answer\":\"option_c\"},{\"question\":\"YAQ5PD2CXKUZ\",\"selected_answer\":\"option_c\"},{\"question\":\"3UIV6L8F7RDM\",\"selected_answer\":\"option_a\"},{\"question\":\"R7ZZ9XR7JBU2\",\"selected_answer\":\"option_b\"},{\"question\":\"XBQZSEEGABP4\",\"selected_answer\":\"option_a\"}]', 0, 0, '', 0, '2021-12-12 14:40:48', '2021-12-12 14:40:48'),
(77, 'ENT_90GYCM9EHX', 'ZW326LU', '970LDG5', '[{\"question\":\"LGGJ4KIIKOLL\",\"selected_answer\":\"option_c\"},{\"question\":\"8MMRROR6N510\",\"selected_answer\":\"option_b\"},{\"question\":\"BAINFFRHEKIP\",\"selected_answer\":\"option_b\"},{\"question\":\"KHYELX7DLXLP\",\"selected_answer\":\"option_c\"},{\"question\":\"7KQUPZVQ3D1O\",\"selected_answer\":\"option_b\"},{\"question\":\"XXIRW9QL0EXR\",\"selected_answer\":\"option_b\"},{\"question\":\"A8ECOHJ2OXSW\",\"selected_answer\":\"option_a\"},{\"question\":\"JNQNS3K2XDAR\",\"selected_answer\":\"option_b\"},{\"question\":\"6P6N818REV4F\",\"selected_answer\":\"option_b\"},{\"question\":\"EUUT7MCH07KL\",\"selected_answer\":\"option_b\"}]', 0, 0, '', 0, '2021-12-13 04:30:24', '2021-12-13 04:30:24'),
(76, 'ENT_VDNVP09WK7', 'WDQ10M7', 'YRVAL7E', '[{\"question\":\"R0LVPJ8KTHNZ\",\"selected_answer\":\"option_d\"},{\"question\":\"VUWTGYDZOFYR\",\"selected_answer\":\"option_b\"},{\"question\":\"FOVKDPJQQHFP\",\"selected_answer\":\"option_b\"},{\"question\":\"TBRNKHHVEHZJ\",\"selected_answer\":\"option_a\"},{\"question\":\"TGNZVYHBDYNV\",\"selected_answer\":\"option_a\"},{\"question\":\"S7NXH6DYOSNV\",\"selected_answer\":\"option_a\"},{\"question\":\"YAQ5PD2CXKUZ\",\"selected_answer\":\"option_a\"},{\"question\":\"3UIV6L8F7RDM\",\"selected_answer\":\"option_a\"},{\"question\":\"R7ZZ9XR7JBU2\",\"selected_answer\":\"option_c\"},{\"question\":\"XBQZSEEGABP4\",\"selected_answer\":\"option_b\"}]', 0, 0, '', 0, '2021-12-12 14:53:43', '2021-12-12 14:53:43'),
(118, 'ENT_OEPCZ7NHI1', 'U6XU9PN', '1D0QXZ5', '[{\"question\":\"7B46ZFU2ZAEG\",\"selected_answer\":\"option_d\"},{\"question\":\"WNY7ZUBIKHJV\",\"selected_answer\":\"option_b\"},{\"question\":\"CG529DFPASNA\",\"selected_answer\":\"option_c\"},{\"question\":\"LGVWKLRPKWRQ\",\"selected_answer\":\"option_b\"},{\"question\":\"NN74VLEKTZWT\",\"selected_answer\":\"option_c\"},{\"question\":\"SCBI9LXW2GDP\",\"selected_answer\":\"option_b\"},{\"question\":\"MBSG5R5YC343\",\"selected_answer\":\"option_a\"},{\"question\":\"W2K5RNUCRYK5\",\"selected_answer\":\"option_c\"},{\"question\":\"ANND5CUPGXLB\",\"selected_answer\":\"option_d\"},{\"question\":\"WAC42J61ST1W\",\"selected_answer\":\"option_a\"},{\"question\":\"9NILBBWGWAAP\",\"selected_answer\":\"option_b\"},{\"question\":\"YE1JUTZUVVOG\",\"selected_answer\":\"option_a\"},{\"question\":\"EFKBZ9LOSDSO\",\"selected_answer\":\"option_a\"},{\"question\":\"C9EUZCP05XDL\",\"selected_answer\":\"option_a\"},{\"question\":\"JROSINAQ6P8K\",\"selected_answer\":\"option_b\"},{\"question\":\"TJFAUMWYVR5X\",\"selected_answer\":\"option_a\"},{\"question\":\"VM6EXDAPLRPI\",\"selected_answer\":\"option_b\"},{\"question\":\"0KHNVBTZVZCG\",\"selected_answer\":\"option_a\"},{\"question\":\"WYGJQX2UKQKW\",\"selected_answer\":\"option_b\"},{\"question\":\"VYE4PUPGI86X\",\"selected_answer\":\"option_d\"}]', 0, 0, '', 0, '2021-12-27 09:49:03', '2021-12-27 09:49:03'),
(102, 'ENT_10HOCUL308', 'ZW326LU', 'YRVAL7E', '[{\"question\":\"R0LVPJ8KTHNZ\",\"selected_answer\":\"option_b\"},{\"question\":\"VUWTGYDZOFYR\",\"selected_answer\":\"option_a\"},{\"question\":\"FOVKDPJQQHFP\",\"selected_answer\":\"option_a\"},{\"question\":\"TBRNKHHVEHZJ\",\"selected_answer\":\"option_c\"},{\"question\":\"TGNZVYHBDYNV\",\"selected_answer\":\"option_a\"},{\"question\":\"S7NXH6DYOSNV\",\"selected_answer\":\"option_d\"},{\"question\":\"YAQ5PD2CXKUZ\",\"selected_answer\":\"option_b\"},{\"question\":\"3UIV6L8F7RDM\",\"selected_answer\":\"option_a\"},{\"question\":\"R7ZZ9XR7JBU2\",\"selected_answer\":\"option_c\"},{\"question\":\"XBQZSEEGABP4\",\"selected_answer\":\"option_c\"}]', 0, 0, '', 0, '2021-12-16 22:19:59', '2021-12-16 22:19:59'),
(100, 'ENT_26A0CZ7UBL', 'QST7EQJ', 'YRVAL7E', '[{\"question\":\"R0LVPJ8KTHNZ\",\"selected_answer\":\"option_a\"},{\"question\":\"VUWTGYDZOFYR\",\"selected_answer\":\"option_b\"},{\"question\":\"FOVKDPJQQHFP\",\"selected_answer\":\"option_a\"},{\"question\":\"TBRNKHHVEHZJ\",\"selected_answer\":\"option_d\"},{\"question\":\"TGNZVYHBDYNV\",\"selected_answer\":\"option_a\"},{\"question\":\"S7NXH6DYOSNV\",\"selected_answer\":\"option_b\"},{\"question\":\"YAQ5PD2CXKUZ\",\"selected_answer\":\"option_c\"},{\"question\":\"3UIV6L8F7RDM\",\"selected_answer\":\"option_a\"},{\"question\":\"R7ZZ9XR7JBU2\",\"selected_answer\":\"option_d\"},{\"question\":\"XBQZSEEGABP4\",\"selected_answer\":\"option_b\"}]', 0, 0, '', 0, '2021-12-14 13:59:22', '2021-12-14 13:59:22'),
(103, 'ENT_XRER7L05KE', 'V2HT5E8', 'YRVAL7E', '[{\"question\":\"R0LVPJ8KTHNZ\",\"selected_answer\":\"option_b\"},{\"question\":\"VUWTGYDZOFYR\",\"selected_answer\":\"option_d\"},{\"question\":\"FOVKDPJQQHFP\",\"selected_answer\":\"option_c\"},{\"question\":\"TBRNKHHVEHZJ\",\"selected_answer\":\"option_a\"},{\"question\":\"TGNZVYHBDYNV\",\"selected_answer\":\"option_d\"},{\"question\":\"S7NXH6DYOSNV\",\"selected_answer\":\"option_b\"},{\"question\":\"YAQ5PD2CXKUZ\",\"selected_answer\":\"option_b\"},{\"question\":\"3UIV6L8F7RDM\",\"selected_answer\":\"option_c\"},{\"question\":\"R7ZZ9XR7JBU2\",\"selected_answer\":\"option_d\"},{\"question\":\"XBQZSEEGABP4\",\"selected_answer\":\"option_b\"}]', 0, 0, '', 0, '2021-12-16 22:28:00', '2021-12-16 22:28:00'),
(104, 'ENT_XLYFH5P2GN', 'CAN_66FY0K2W8U', 'UL2Y2EZQGC', '[{\"question\":\"JCYAM5WN5LST\",\"selected_answer\":\"option_c\"},{\"question\":\"KVWETGRIR1AC\",\"selected_answer\":\"option_c\"},{\"question\":\"NLKKOQRX6XYG\",\"selected_answer\":\"option_b\"},{\"question\":\"UQZH1O0VFL9W\",\"selected_answer\":\"option_d\"}]', 0, 0, '', 0, '2021-12-17 19:52:09', '2021-12-17 19:52:09'),
(111, 'ENT_WAVT0OX523', 'U6XU9PN', '164ZSWD', '[{\"question\":\"WJBRMIKVRHTP\",\"selected_answer\":\"option_b\"},{\"question\":\"KBB9TYK5PUBL\",\"selected_answer\":\"option_b\"},{\"question\":\"9KQ1EOHNYNDM\",\"selected_answer\":\"option_d\"},{\"question\":\"W4Z7QMIUQ3FO\",\"selected_answer\":\"option_d\"},{\"question\":\"QZME7OQH4EVO\",\"selected_answer\":\"option_d\"},{\"question\":\"UTVHONQZWOA1\",\"selected_answer\":\"option_c\"},{\"question\":\"CPUDOYTTBYVY\",\"selected_answer\":\"option_c\"},{\"question\":\"HIFRPQX1FNKV\",\"selected_answer\":\"option_c\"},{\"question\":\"PSFSHKBFN0N2\",\"selected_answer\":\"option_c\"},{\"question\":\"PXMO0NCGQMII\",\"selected_answer\":\"option_b\"},{\"question\":\"DRRERT4O12GS\",\"selected_answer\":\"option_a\"},{\"question\":\"V1YI48L7BINN\",\"selected_answer\":\"option_a\"},{\"question\":\"TIHUKFCGAKUQ\",\"selected_answer\":\"option_b\"},{\"question\":\"1VODEDEBLHSK\",\"selected_answer\":\"option_b\"},{\"question\":\"8HSGQ7XBKY2G\",\"selected_answer\":\"option_d\"}]', 0, 0, '', 0, '2021-12-24 19:59:59', '2021-12-24 19:59:59'),
(112, 'ENT_I0FGT888O6', 'QST7EQJ', '164ZSWD', '[{\"question\":\"WJBRMIKVRHTP\",\"selected_answer\":\"option_b\"},{\"question\":\"KBB9TYK5PUBL\",\"selected_answer\":\"option_b\"},{\"question\":\"9KQ1EOHNYNDM\",\"selected_answer\":\"option_d\"},{\"question\":\"W4Z7QMIUQ3FO\",\"selected_answer\":\"option_d\"},{\"question\":\"QZME7OQH4EVO\",\"selected_answer\":\"option_d\"},{\"question\":\"UTVHONQZWOA1\",\"selected_answer\":\"option_c\"},{\"question\":\"CPUDOYTTBYVY\",\"selected_answer\":\"option_c\"},{\"question\":\"HIFRPQX1FNKV\",\"selected_answer\":\"option_c\"},{\"question\":\"PSFSHKBFN0N2\",\"selected_answer\":\"option_c\"},{\"question\":\"PXMO0NCGQMII\",\"selected_answer\":\"option_b\"},{\"question\":\"DRRERT4O12GS\",\"selected_answer\":\"option_a\"},{\"question\":\"V1YI48L7BINN\",\"selected_answer\":\"option_a\"},{\"question\":\"TIHUKFCGAKUQ\",\"selected_answer\":\"option_c\"},{\"question\":\"1VODEDEBLHSK\",\"selected_answer\":\"option_b\"},{\"question\":\"8HSGQ7XBKY2G\",\"selected_answer\":\"option_d\"}]', 0, 0, '', 0, '2021-12-24 16:52:51', '2021-12-24 16:52:51'),
(113, 'ENT_M71DYCRAQT', '9SELW3Y', '164ZSWD', '[{\"question\":\"WJBRMIKVRHTP\",\"selected_answer\":\"option_b\"},{\"question\":\"KBB9TYK5PUBL\",\"selected_answer\":\"option_b\"},{\"question\":\"9KQ1EOHNYNDM\",\"selected_answer\":\"option_d\"},{\"question\":\"W4Z7QMIUQ3FO\",\"selected_answer\":\"option_d\"},{\"question\":\"QZME7OQH4EVO\",\"selected_answer\":\"option_d\"},{\"question\":\"UTVHONQZWOA1\",\"selected_answer\":\"option_c\"},{\"question\":\"CPUDOYTTBYVY\",\"selected_answer\":\"option_c\"},{\"question\":\"HIFRPQX1FNKV\",\"selected_answer\":\"option_c\"},{\"question\":\"PSFSHKBFN0N2\",\"selected_answer\":\"option_c\"},{\"question\":\"PXMO0NCGQMII\",\"selected_answer\":\"option_b\"},{\"question\":\"DRRERT4O12GS\",\"selected_answer\":\"option_a\"},{\"question\":\"V1YI48L7BINN\",\"selected_answer\":\"option_a\"},{\"question\":\"TIHUKFCGAKUQ\",\"selected_answer\":\"option_c\"},{\"question\":\"1VODEDEBLHSK\",\"selected_answer\":\"option_b\"},{\"question\":\"8HSGQ7XBKY2G\",\"selected_answer\":\"option_d\"}]', 0, 0, '', 0, '2021-12-25 06:07:11', '2021-12-25 06:07:11'),
(213, 'ENT_JK7OY0ZYAA', 'GS0Y6H8YC0', 'WF0FV2T', '[{\"question\":\"LRLEVWGZKH0S\",\"selected_answer\":\"option_d\"},{\"question\":\"12FBJU1NLUPH\",\"selected_answer\":\"option_d\"},{\"question\":\"TEOTYLBWUGGQ\",\"selected_answer\":\"option_a\"},{\"question\":\"4LCCADGCFBX4\",\"selected_answer\":\"option_b\"},{\"question\":\"MHYZWSZIMI1A\",\"selected_answer\":\"option_a\"},{\"question\":\"WCQADFVN6XUH\",\"selected_answer\":\"option_d\"},{\"question\":\"B7DFCX1BXKKC\",\"selected_answer\":\"option_a\"},{\"question\":\"IUBNUEEQIMUR\",\"selected_answer\":\"option_d\"},{\"question\":\"EMND1LPL1EYK\",\"selected_answer\":\"option_c\"},{\"question\":\"XFTRKTHTTXYA\",\"selected_answer\":\"option_c\"},{\"question\":\"HTJAPVPJPI4A\",\"selected_answer\":\"option_c\"},{\"question\":\"7KL07DATXIAU\",\"selected_answer\":\"option_c\"},{\"question\":\"HUFXAE0SCYG7\",\"selected_answer\":\"option_b\"},{\"question\":\"831OBLTATHLL\",\"selected_answer\":\"option_c\"},{\"question\":\"ATUARBMLZLHD\",\"selected_answer\":\"option_a\"}]', 433, 166, '', 0, '2022-02-04 12:08:36', '2022-02-04 12:08:36'),
(183, 'ENT_SZ78ATZ9ZL', 'CAN_66FY0K2W8U', 'LBT9ZE9', '[{\"question\":\"2YA0M5TBOM6Z\",\"selected_answer\":\"<p>itouyuiiu h poiuj oihuig ytufryt4d yftogluh;oi jupoj ;liubgy guy g<br></p>\"},{\"question\":\"16S2N00COT8V\",\"selected_answer\":\"<p>trere dtrdtf kyg ih;io<br></p><p>&nbsp;i[pok uhiyu gyg ygoiluhuh ;ouutfu dyttgouylhg iu h;ouiu poj iuvfyurcd trduyyut luh y;oiu lo<br></p>\"}]', 60, -1, '[{\"question\":\"2YA0M5TBOM6Z\",\"score\":3},{\"question\":\"16S2N00COT8V\",\"score\":5}]', 0, '2022-05-20 11:58:44', '2022-01-05 01:44:19'),
(182, 'ENT_9A3X4YL5V4', 'MSZM1YG', 'LBT9ZE9', '[{\"question\":\"16S2N00COT8V\",\"selected_answer\":\"<p>gthieuryt uryteruitywoitwh tiugrt uireiut getrhugkr gsh ifuhreifbsi lr</p>\"},{\"question\":\"2YA0M5TBOM6Z\",\"selected_answer\":\"<p>nfgjsyg wjufgwe ufhewr lih wlfuirhug liriug iwue gtuwrhwire o rhrwiuhgreigu</p>\"}]', 15, 44, '[{\"question\":\"16S2N00COT8V\",\"score\":3},{\"question\":\"2YA0M5TBOM6Z\",\"score\":3}]', 0, '2022-01-05 00:23:28', '2022-01-05 00:22:35'),
(171, 'ENT_AZMPSZO9P6', 'CAN_66FY0K2W8U', 'W01TYQI', '[{\"question\":\"ZCKK5S3UV1RT\",\"selected_answer\":\"option_a\"},{\"question\":\"IJKYSN7XV64M\",\"selected_answer\":\"option_a\"},{\"question\":\"MMKA4R4MPPFF\",\"selected_answer\":\"option_a\"},{\"question\":\"NOF9FX1G1EAC\",\"selected_answer\":\"option_b\"},{\"question\":\"2H5SJGXKRYZC\",\"selected_answer\":\"option_c\"},{\"question\":\"LEIBAVZK4Z3E\",\"selected_answer\":\"option_a\"},{\"question\":\"155ERYQMLUPL\",\"selected_answer\":\"option_c\"},{\"question\":\"4P3KYBTFB0KL\",\"selected_answer\":\"option_b\"},{\"question\":\"EKULR3U85GEH\",\"selected_answer\":\"option_c\"},{\"question\":\"BAELJ9VMQFOZ\",\"selected_answer\":\"option_d\"},{\"question\":\"1PJTD6KK7A22\",\"selected_answer\":\"null\"},{\"question\":\"WE9M6HUKLGJQ\",\"selected_answer\":\"null\"},{\"question\":\"SBRBPBR5TVWN\",\"selected_answer\":\"null\"},{\"question\":\"EAHMCJBSV64S\",\"selected_answer\":\"null\"},{\"question\":\"7PLBZUMCEE1Q\",\"selected_answer\":\"null\"}]', 52, 7, '', 0, '2022-01-04 01:10:46', '2022-01-04 01:10:46'),
(173, 'ENT_WRK5DZ9K35', 'CAN_66FY0K2W8U', 'CNPZMZ7Z6O', '[{\"question\":\"MCJB6OBGSQDY\",\"selected_answer\":\"option_a\"},{\"question\":\"GTFCGQ5AQNRC\",\"selected_answer\":\"option_b\"},{\"question\":\"WGMPRR1WZ0VJ\",\"selected_answer\":\"option_a\"},{\"question\":\"MF6YWSCBOEYN\",\"selected_answer\":\"option_a\"},{\"question\":\"MPQQFCFQH8X8\",\"selected_answer\":\"option_b\"},{\"question\":\"6S4C4WFZD91V\",\"selected_answer\":\"option_a\"},{\"question\":\"6S0L4CZNRK9E\",\"selected_answer\":\"option_a\"},{\"question\":\"PSHA3YZN9RSM\",\"selected_answer\":\"option_c\"},{\"question\":\"RQHARCZK6D4L\",\"selected_answer\":\"option_c\"},{\"question\":\"VWALI5IMZLYB\",\"selected_answer\":\"option_c\"},{\"question\":\"6LT1GZES7RHA\",\"selected_answer\":\"option_a\"},{\"question\":\"SPGJJZVTPXKE\",\"selected_answer\":\"option_d\"},{\"question\":\"3IXHGPD15YYI\",\"selected_answer\":\"option_a\"},{\"question\":\"IRSDKJFVAO3J\",\"selected_answer\":\"option_a\"},{\"question\":\"1HIQUPECKJLT\",\"selected_answer\":\"option_d\"}]', 250, 649, '', 0, '2022-01-04 17:40:18', '2022-01-04 17:40:18'),
(211, 'ENT_LOOK5GWBKF', 'WDQ10M7', '0JZ44MJ', '[{\"question\":\"1ZJEPJL2K9T0\",\"selected_answer\":\"option_c\"},{\"question\":\"PSSCOAEAE6SA\",\"selected_answer\":\"option_a\"},{\"question\":\"6NGYYDZYDS0X\",\"selected_answer\":\"option_b\"},{\"question\":\"7KJ9YVCUIHFH\",\"selected_answer\":\"option_a\"},{\"question\":\"YELW0TNW5D02\",\"selected_answer\":\"option_a\"},{\"question\":\"TSFNNBPQLOV9\",\"selected_answer\":\"option_b\"},{\"question\":\"DXXZKKGZNV0F\",\"selected_answer\":\"option_b\"},{\"question\":\"4K1W2E7OGL7E\",\"selected_answer\":\"option_b\"},{\"question\":\"7YYZEFMZYLUE\",\"selected_answer\":\"option_b\"},{\"question\":\"PHCVWT2GQBVZ\",\"selected_answer\":\"option_c\"}]', 638, 1161, '', 0, '2022-01-19 17:54:17', '2022-01-19 17:54:17'),
(212, 'ENT_5Q529PUCS8', 'U6XU9PN', '0JZ44MJ', '[{\"question\":\"PHCVWT2GQBVZ\",\"selected_answer\":\"option_b\"},{\"question\":\"KP8OVACPPZNP\",\"selected_answer\":\"option_d\"},{\"question\":\"U3PCXCWRGTOC\",\"selected_answer\":\"option_b\"},{\"question\":\"DXXZKKGZNV0F\",\"selected_answer\":\"option_d\"},{\"question\":\"6NGYYDZYDS0X\",\"selected_answer\":\"option_d\"},{\"question\":\"TSFNNBPQLOV9\",\"selected_answer\":\"option_b\"},{\"question\":\"4K1W2E7OGL7E\",\"selected_answer\":\"option_c\"},{\"question\":\"PSSCOAEAE6SA\",\"selected_answer\":\"option_c\"},{\"question\":\"BJDBGDDKQNWH\",\"selected_answer\":\"option_d\"},{\"question\":\"JC9NXILVNKAO\",\"selected_answer\":\"option_b\"},{\"question\":\"SKXKDCS8ZJFJ\",\"selected_answer\":\"option_b\"},{\"question\":\"CWFR8O84R8UW\",\"selected_answer\":\"option_a\"},{\"question\":\"FBLI5OM5HFOY\",\"selected_answer\":\"option_a\"},{\"question\":\"04ZHLFUEU9IM\",\"selected_answer\":\"option_b\"},{\"question\":\"1ZJEPJL2K9T0\",\"selected_answer\":\"option_c\"},{\"question\":\"7KJ9YVCUIHFH\",\"selected_answer\":\"option_a\"},{\"question\":\"2UT3JU7GI63S\",\"selected_answer\":\"option_a\"},{\"question\":\"7YYZEFMZYLUE\",\"selected_answer\":\"option_b\"},{\"question\":\"ETNVKHXBNAMW\",\"selected_answer\":\"option_d\"},{\"question\":\"YELW0TNW5D02\",\"selected_answer\":\"option_c\"}]', 287, 1512, '', 0, '2022-01-22 19:51:11', '2022-01-22 19:51:11'),
(186, 'ENT_QXF47P2WMD', 'VQDQOVGR0F', 'LBT9ZE9', '[{\"question\":\"2YA0M5TBOM6Z\",\"selected_answer\":\"<p>dhghgt&nbsp; tyet yetyhrut rty rthrt rjr tjry rtyrj rtretrh rtjtyk yuk<br></p>\"},{\"question\":\"16S2N00COT8V\",\"selected_answer\":\"<p>rererthli teroitwi t;withreuhye ;riyhjer;ltojorg ojwrg;wrkgknrvn rijgwerp gjwr ;gjrw<br></p>\"}]', 20, 39, '', 0, '2022-01-05 12:22:17', '2022-01-05 12:22:17'),
(187, 'ENT_1NF2WSS7EX', '1QEW1R2', 'SNUG0G1', '[{\"question\":\"UYUTVZSX5ZYO\",\"selected_answer\":\"option_b\"},{\"question\":\"29MF6NZYGR6W\",\"selected_answer\":\"option_b\"},{\"question\":\"TMLYU0CJW55C\",\"selected_answer\":\"option_d\"},{\"question\":\"YL5D51PWC2HN\",\"selected_answer\":\"option_b\"},{\"question\":\"BZOFRRQ2RJIY\",\"selected_answer\":\"option_c\"},{\"question\":\"RXAR8R7FWBZK\",\"selected_answer\":\"option_d\"},{\"question\":\"H5UWYPYTKIWH\",\"selected_answer\":\"option_a\"},{\"question\":\"ELX5VJYZWFHJ\",\"selected_answer\":\"option_c\"},{\"question\":\"XCVKQ0QAT4A5\",\"selected_answer\":\"option_a\"},{\"question\":\"CJAR8MFGVZBY\",\"selected_answer\":\"option_d\"}]', 60, 539, '', 0, '2022-01-05 15:14:25', '2022-01-05 15:14:25'),
(188, 'ENT_3UVA98607K', '1QEW1R2', 'SNUG0G1', '[{\"question\":\"RXAR8R7FWBZK\",\"selected_answer\":\"option_d\"},{\"question\":\"29MF6NZYGR6W\",\"selected_answer\":\"option_b\"},{\"question\":\"UYUTVZSX5ZYO\",\"selected_answer\":\"option_b\"},{\"question\":\"YL5D51PWC2HN\",\"selected_answer\":\"option_b\"},{\"question\":\"BZOFRRQ2RJIY\",\"selected_answer\":\"option_c\"},{\"question\":\"ELX5VJYZWFHJ\",\"selected_answer\":\"option_c\"},{\"question\":\"TMLYU0CJW55C\",\"selected_answer\":\"option_d\"},{\"question\":\"CJAR8MFGVZBY\",\"selected_answer\":\"option_d\"},{\"question\":\"XCVKQ0QAT4A5\",\"selected_answer\":\"option_a\"},{\"question\":\"H5UWYPYTKIWH\",\"selected_answer\":\"option_a\"}]', 86, 513, '', 0, '2022-01-05 15:30:33', '2022-01-05 15:30:33'),
(189, 'ENT_113967CVR0', 'GS0Y6H8YC0', 'R42UA95', '[{\"question\":\"JM0MW4FTVNFO\",\"selected_answer\":\"option_d\"},{\"question\":\"TQHWIMH9MCRI\",\"selected_answer\":\"option_a\"},{\"question\":\"JCUZZAMMTU0W\",\"selected_answer\":\"option_c\"},{\"question\":\"B7HXATTRUT4V\",\"selected_answer\":\"option_d\"},{\"question\":\"YVSM6KEBRR5H\",\"selected_answer\":\"option_b\"},{\"question\":\"MUDMZYZZZPHT\",\"selected_answer\":\"option_d\"},{\"question\":\"TQJMRMQVLSCP\",\"selected_answer\":\"option_d\"},{\"question\":\"RCJNZMT80IOF\",\"selected_answer\":\"option_d\"},{\"question\":\"TZIWY15X6OZP\",\"selected_answer\":\"option_b\"},{\"question\":\"JK7ZODO1IKS4\",\"selected_answer\":\"option_c\"}]', 243, 356, '', 0, '2022-01-06 07:44:12', '2022-01-06 07:44:12'),
(190, 'ENT_U22JXXD67D', 'VQDQOVGR0F', 'LBT9ZE9', '[{\"question\":\"16S2N00COT8V\",\"selected_answer\":\"\"},{\"question\":\"JTRX76PGZ0RD\",\"selected_answer\":\"\"},{\"question\":\"2YA0M5TBOM6Z\",\"selected_answer\":\"\"}]', 60, -1, '', 0, '2022-01-06 20:16:50', '2022-01-06 20:16:50'),
(191, 'ENT_3XH0DN3G8C', 'VQDQOVGR0F', 'LBT9ZE9', '[{\"question\":\"JTRX76PGZ0RD\",\"selected_answer\":\"<p>hgjgk uku h&nbsp; hlih; jlkjhlkj h.jk</p>\"},{\"question\":\"16S2N00COT8V\",\"selected_answer\":\"<p>bvhjg gjkg hklh</p>\"},{\"question\":\"2YA0M5TBOM6Z\",\"selected_answer\":\"<p>bjghg gugh liuh lhu</p>\"}]', 60, -1, '[{\"question\":\"JTRX76PGZ0RD\",\"score\":1},{\"question\":\"16S2N00COT8V\",\"score\":5},{\"question\":\"2YA0M5TBOM6Z\",\"score\":2}]', 0, '2022-05-20 11:57:59', '2022-01-06 22:59:29'),
(194, 'ENT_M30ZFJQUN4', 'WDQ10M7', 'LBT9ZE9', '[{\"question\":\"2YA0M5TBOM6Z\",\"selected_answer\":\"<p><br></p>\"},{\"question\":\"JTRX76PGZ0RD\",\"selected_answer\":\"<p><br></p>\"},{\"question\":\"16S2N00COT8V\",\"selected_answer\":\"<p><br></p>\"}]', 13, 46, '[{\"question\":\"2YA0M5TBOM6Z\",\"score\":3},{\"question\":\"JTRX76PGZ0RD\",\"score\":1},{\"question\":\"16S2N00COT8V\",\"score\":5}]', 0, '2022-05-20 11:57:28', '2022-01-06 23:07:12'),
(207, 'ENT_Z2IM5M81IV', 'FLTXB4V', '6W7BNAZ', '[{\"question\":\"PF4AQFMDI3WD\",\"selected_answer\":\"option_b\"},{\"question\":\"8ZJI9KZLBEQ6\",\"selected_answer\":\"null\"},{\"question\":\"NIONJXID45NV\",\"selected_answer\":\"null\"},{\"question\":\"3PJJSOAMY6YF\",\"selected_answer\":\"null\"},{\"question\":\"2IHRF8POKLVL\",\"selected_answer\":\"null\"},{\"question\":\"J6DSDCJU8TGL\",\"selected_answer\":\"null\"},{\"question\":\"TJWXYSMJ5AAD\",\"selected_answer\":\"null\"},{\"question\":\"3GQJK4J9CHAC\",\"selected_answer\":\"null\"},{\"question\":\"EPHBMTTM0TGC\",\"selected_answer\":\"null\"},{\"question\":\"HWXH4Q6XNIRZ\",\"selected_answer\":\"null\"},{\"question\":\"YSZX60P0Q2GX\",\"selected_answer\":\"null\"},{\"question\":\"VQ6AFY7YA91I\",\"selected_answer\":\"null\"},{\"question\":\"MUHK2WGO9HDD\",\"selected_answer\":\"null\"},{\"question\":\"XQXALM1Y2SBF\",\"selected_answer\":\"null\"},{\"question\":\"54TPJX42A24S\",\"selected_answer\":\"null\"},{\"question\":\"LEUVKWHGS6PG\",\"selected_answer\":\"null\"},{\"question\":\"ZYNJSGVCAX7E\",\"selected_answer\":\"null\"},{\"question\":\"UCT5JSJUAULR\",\"selected_answer\":\"null\"},{\"question\":\"YQXYVKAQPJEN\",\"selected_answer\":\"null\"},{\"question\":\"1VORPIXTGVB6\",\"selected_answer\":\"null\"}]', 226, 373, '', 0, '2022-01-11 10:41:15', '2022-01-11 10:41:15'),
(210, 'ENT_DUL58Y6IIL', 'GS0Y6H8YC0', 'WF0FV2T', '[{\"question\":\"TEOTYLBWUGGQ\",\"selected_answer\":\"option_a\"},{\"question\":\"12FBJU1NLUPH\",\"selected_answer\":\"option_d\"},{\"question\":\"LRLEVWGZKH0S\",\"selected_answer\":\"option_d\"},{\"question\":\"4LCCADGCFBX4\",\"selected_answer\":\"option_b\"},{\"question\":\"XFTRKTHTTXYA\",\"selected_answer\":\"option_b\"},{\"question\":\"7KL07DATXIAU\",\"selected_answer\":\"option_c\"},{\"question\":\"EMND1LPL1EYK\",\"selected_answer\":\"option_c\"},{\"question\":\"MHYZWSZIMI1A\",\"selected_answer\":\"option_a\"},{\"question\":\"B7DFCX1BXKKC\",\"selected_answer\":\"option_d\"},{\"question\":\"IUBNUEEQIMUR\",\"selected_answer\":\"option_d\"},{\"question\":\"7ZTV7PAJYPKY\",\"selected_answer\":\"null\"},{\"question\":\"WCQADFVN6XUH\",\"selected_answer\":\"null\"},{\"question\":\"ATUARBMLZLHD\",\"selected_answer\":\"null\"},{\"question\":\"HUFXAE0SCYG7\",\"selected_answer\":\"null\"},{\"question\":\"HTJAPVPJPI4A\",\"selected_answer\":\"null\"},{\"question\":\"831OBLTATHLL\",\"selected_answer\":\"null\"}]', 376, 223, '', 0, '2022-01-19 13:29:36', '2022-01-19 13:29:36'),
(205, 'ENT_J9EN8UBHL6', 'WDQ10M7', '6W7BNAZ', '[{\"question\":\"NIONJXID45NV\",\"selected_answer\":\"null\"},{\"question\":\"VQ6AFY7YA91I\",\"selected_answer\":\"null\"},{\"question\":\"1VORPIXTGVB6\",\"selected_answer\":\"null\"},{\"question\":\"2IHRF8POKLVL\",\"selected_answer\":\"null\"},{\"question\":\"UCT5JSJUAULR\",\"selected_answer\":\"null\"},{\"question\":\"XQXALM1Y2SBF\",\"selected_answer\":\"null\"},{\"question\":\"J6DSDCJU8TGL\",\"selected_answer\":\"null\"},{\"question\":\"3GQJK4J9CHAC\",\"selected_answer\":\"null\"},{\"question\":\"MUHK2WGO9HDD\",\"selected_answer\":\"null\"},{\"question\":\"8ZJI9KZLBEQ6\",\"selected_answer\":\"null\"},{\"question\":\"PF4AQFMDI3WD\",\"selected_answer\":\"null\"},{\"question\":\"3PJJSOAMY6YF\",\"selected_answer\":\"null\"},{\"question\":\"TJWXYSMJ5AAD\",\"selected_answer\":\"null\"},{\"question\":\"LEUVKWHGS6PG\",\"selected_answer\":\"null\"},{\"question\":\"YSZX60P0Q2GX\",\"selected_answer\":\"null\"},{\"question\":\"54TPJX42A24S\",\"selected_answer\":\"null\"},{\"question\":\"EPHBMTTM0TGC\",\"selected_answer\":\"null\"},{\"question\":\"ZYNJSGVCAX7E\",\"selected_answer\":\"null\"},{\"question\":\"YQXYVKAQPJEN\",\"selected_answer\":\"null\"},{\"question\":\"HWXH4Q6XNIRZ\",\"selected_answer\":\"null\"}]', 20, 579, '', 0, '2022-01-10 11:03:50', '2022-01-10 11:03:50'),
(206, 'ENT_QBXHBB1XT2', 'WDQ10M7', '6W7BNAZ', '[{\"question\":\"8ZJI9KZLBEQ6\",\"selected_answer\":\"null\"},{\"question\":\"1VORPIXTGVB6\",\"selected_answer\":\"null\"},{\"question\":\"UCT5JSJUAULR\",\"selected_answer\":\"null\"},{\"question\":\"TJWXYSMJ5AAD\",\"selected_answer\":\"null\"},{\"question\":\"YQXYVKAQPJEN\",\"selected_answer\":\"null\"},{\"question\":\"J6DSDCJU8TGL\",\"selected_answer\":\"null\"},{\"question\":\"ZYNJSGVCAX7E\",\"selected_answer\":\"null\"},{\"question\":\"PF4AQFMDI3WD\",\"selected_answer\":\"null\"},{\"question\":\"MUHK2WGO9HDD\",\"selected_answer\":\"null\"},{\"question\":\"EPHBMTTM0TGC\",\"selected_answer\":\"null\"},{\"question\":\"LEUVKWHGS6PG\",\"selected_answer\":\"null\"},{\"question\":\"VQ6AFY7YA91I\",\"selected_answer\":\"null\"},{\"question\":\"2IHRF8POKLVL\",\"selected_answer\":\"null\"},{\"question\":\"54TPJX42A24S\",\"selected_answer\":\"null\"},{\"question\":\"NIONJXID45NV\",\"selected_answer\":\"null\"},{\"question\":\"YSZX60P0Q2GX\",\"selected_answer\":\"null\"},{\"question\":\"3GQJK4J9CHAC\",\"selected_answer\":\"null\"},{\"question\":\"3PJJSOAMY6YF\",\"selected_answer\":\"null\"},{\"question\":\"HWXH4Q6XNIRZ\",\"selected_answer\":\"null\"},{\"question\":\"XQXALM1Y2SBF\",\"selected_answer\":\"null\"}]', 77, 522, '', 0, '2022-01-10 11:03:56', '2022-01-10 11:03:56'),
(200, 'ENT_MGIR00Z134', '2J7MD8CE6U', 'LBT9ZE9', '[{\"question\":\"JTRX76PGZ0RD\",\"selected_answer\":\"<p><br></p>\"},{\"question\":\"16S2N00COT8V\",\"selected_answer\":\"<p><br></p>\"},{\"question\":\"2YA0M5TBOM6Z\",\"selected_answer\":\"<p><br></p>\"}]', 60, -1, '', 0, '2022-01-10 10:45:54', '2022-01-10 10:45:54'),
(208, 'ENT_VIRGU1SA8U', 'U6XU9PN', '0JZ44MJ', '[{\"question\":\"1ZJEPJL2K9T0\",\"selected_answer\":\"option_d\"},{\"question\":\"PSSCOAEAE6SA\",\"selected_answer\":\"option_b\"},{\"question\":\"6NGYYDZYDS0X\",\"selected_answer\":\"option_d\"},{\"question\":\"7KJ9YVCUIHFH\",\"selected_answer\":\"option_c\"},{\"question\":\"YELW0TNW5D02\",\"selected_answer\":\"option_b\"},{\"question\":\"TSFNNBPQLOV9\",\"selected_answer\":\"option_a\"},{\"question\":\"DXXZKKGZNV0F\",\"selected_answer\":\"option_d\"},{\"question\":\"4K1W2E7OGL7E\",\"selected_answer\":\"option_a\"},{\"question\":\"7YYZEFMZYLUE\",\"selected_answer\":\"option_d\"},{\"question\":\"PHCVWT2GQBVZ\",\"selected_answer\":\"option_b\"}]', 92, 1707, '', 0, '2022-01-18 04:52:43', '2022-01-18 04:52:43'),
(209, 'ENT_K7KBQ3O3RC', 'U6XU9PN', '0JZ44MJ', '[{\"question\":\"1ZJEPJL2K9T0\",\"selected_answer\":\"null\"},{\"question\":\"PSSCOAEAE6SA\",\"selected_answer\":\"null\"},{\"question\":\"6NGYYDZYDS0X\",\"selected_answer\":\"null\"},{\"question\":\"7KJ9YVCUIHFH\",\"selected_answer\":\"null\"},{\"question\":\"YELW0TNW5D02\",\"selected_answer\":\"null\"},{\"question\":\"TSFNNBPQLOV9\",\"selected_answer\":\"null\"},{\"question\":\"DXXZKKGZNV0F\",\"selected_answer\":\"null\"},{\"question\":\"4K1W2E7OGL7E\",\"selected_answer\":\"null\"},{\"question\":\"7YYZEFMZYLUE\",\"selected_answer\":\"null\"},{\"question\":\"PHCVWT2GQBVZ\",\"selected_answer\":\"null\"}]', 4, 1795, '', 0, '2022-01-18 16:33:14', '2022-01-18 16:33:14'),
(214, 'ENT_04IQZXLM5C', 'U6XU9PN', 'R42UA95', '[{\"question\":\"TQJMRMQVLSCP\",\"selected_answer\":\"option_d\"},{\"question\":\"RCJNZMT80IOF\",\"selected_answer\":\"option_a\"},{\"question\":\"TQHWIMH9MCRI\",\"selected_answer\":\"option_b\"},{\"question\":\"B7HXATTRUT4V\",\"selected_answer\":\"option_a\"},{\"question\":\"JK7ZODO1IKS4\",\"selected_answer\":\"option_c\"},{\"question\":\"JM0MW4FTVNFO\",\"selected_answer\":\"option_c\"},{\"question\":\"YVSM6KEBRR5H\",\"selected_answer\":\"option_b\"},{\"question\":\"JCUZZAMMTU0W\",\"selected_answer\":\"option_c\"},{\"question\":\"MUDMZYZZZPHT\",\"selected_answer\":\"option_d\"},{\"question\":\"TZIWY15X6OZP\",\"selected_answer\":\"option_b\"}]', 116, 483, '', 0, '2022-02-24 20:16:15', '2022-02-24 20:16:15'),
(215, 'ENT_V9LD9WHDP6', 'ZW326LU', 'R42UA95', '[{\"question\":\"MUDMZYZZZPHT\",\"selected_answer\":\"option_a\"},{\"question\":\"TQJMRMQVLSCP\",\"selected_answer\":\"option_d\"},{\"question\":\"JCUZZAMMTU0W\",\"selected_answer\":\"option_c\"},{\"question\":\"TQHWIMH9MCRI\",\"selected_answer\":\"option_a\"},{\"question\":\"JM0MW4FTVNFO\",\"selected_answer\":\"option_c\"},{\"question\":\"RCJNZMT80IOF\",\"selected_answer\":\"option_a\"},{\"question\":\"B7HXATTRUT4V\",\"selected_answer\":\"option_a\"},{\"question\":\"YVSM6KEBRR5H\",\"selected_answer\":\"option_b\"},{\"question\":\"JK7ZODO1IKS4\",\"selected_answer\":\"option_b\"},{\"question\":\"TZIWY15X6OZP\",\"selected_answer\":\"option_b\"}]', 318, 281, '', 0, '2022-02-25 04:45:51', '2022-02-25 04:45:51'),
(216, 'ENT_90K4O75DX3', '052MM4M', 'R42UA95', '[{\"question\":\"TQJMRMQVLSCP\",\"selected_answer\":\"option_d\"},{\"question\":\"RCJNZMT80IOF\",\"selected_answer\":\"option_a\"},{\"question\":\"JK7ZODO1IKS4\",\"selected_answer\":\"option_b\"},{\"question\":\"JM0MW4FTVNFO\",\"selected_answer\":\"option_c\"},{\"question\":\"TZIWY15X6OZP\",\"selected_answer\":\"option_b\"},{\"question\":\"MUDMZYZZZPHT\",\"selected_answer\":\"option_d\"},{\"question\":\"B7HXATTRUT4V\",\"selected_answer\":\"option_a\"},{\"question\":\"TQHWIMH9MCRI\",\"selected_answer\":\"option_b\"},{\"question\":\"JCUZZAMMTU0W\",\"selected_answer\":\"option_c\"},{\"question\":\"YVSM6KEBRR5H\",\"selected_answer\":\"option_b\"}]', 89, 510, '', 0, '2022-03-14 05:01:14', '2022-03-14 05:01:14'),
(217, 'ENT_P1SPHV4LFK', '052MM4M', 'LBT9ZE9', '[{\"question\":\"16S2N00COT8V\",\"selected_answer\":\"<p><br></p>\"},{\"question\":\"2YA0M5TBOM6Z\",\"selected_answer\":\"<p><br></p>\"},{\"question\":\"JTRX76PGZ0RD\",\"selected_answer\":\"<p><br></p>\"}]', 60, -1, '', 0, '2022-05-20 13:12:19', '2022-05-20 13:12:19'),
(218, 'ENT_2VP316KA4M', '052MM4M', 'AQG55R5', '[{\"question\":\"RYZNLDYX7ETE\",\"selected_answer\":\"option_a\"},{\"question\":\"1NAGEJPPLZHO\",\"selected_answer\":\"option_b\"},{\"question\":\"JR1V3JAFFZHY\",\"selected_answer\":\"option_b\"},{\"question\":\"MFXLRSJ77UJU\",\"selected_answer\":\"option_a\"},{\"question\":\"ISUVQMPJ8SY1\",\"selected_answer\":\"option_a\"},{\"question\":\"VWUOLQUMUGZ3\",\"selected_answer\":\"option_a\"},{\"question\":\"W3T4VUUDHGHB\",\"selected_answer\":\"option_a\"},{\"question\":\"6VRZBK7SFKUN\",\"selected_answer\":\"option_b\"},{\"question\":\"AKUG4GCQK7WL\",\"selected_answer\":\"option_d\"},{\"question\":\"5KPSNKOO5CKF\",\"selected_answer\":\"option_a\"}]', 46, 253, '', 0, '2022-05-23 05:01:09', '2022-05-23 05:01:09'),
(219, 'ENT_IPU27301UF', '99E5O0A', 'AQG55R5', '[{\"question\":\"JR1V3JAFFZHY\",\"selected_answer\":\"option_b\"},{\"question\":\"5KPSNKOO5CKF\",\"selected_answer\":\"option_a\"},{\"question\":\"RYZNLDYX7ETE\",\"selected_answer\":\"option_d\"},{\"question\":\"MFXLRSJ77UJU\",\"selected_answer\":\"option_a\"},{\"question\":\"W3T4VUUDHGHB\",\"selected_answer\":\"option_a\"},{\"question\":\"VWUOLQUMUGZ3\",\"selected_answer\":\"option_a\"},{\"question\":\"6VRZBK7SFKUN\",\"selected_answer\":\"option_b\"},{\"question\":\"ISUVQMPJ8SY1\",\"selected_answer\":\"option_a\"},{\"question\":\"1NAGEJPPLZHO\",\"selected_answer\":\"option_b\"},{\"question\":\"AKUG4GCQK7WL\",\"selected_answer\":\"option_d\"}]', 90, 209, '', 0, '2022-05-23 07:20:10', '2022-05-23 07:20:10'),
(220, 'ENT_S71FM82Y8H', '3IEIJLS', 'AQG55R5', '[{\"question\":\"JR1V3JAFFZHY\",\"selected_answer\":\"option_b\"},{\"question\":\"5KPSNKOO5CKF\",\"selected_answer\":\"option_a\"},{\"question\":\"RYZNLDYX7ETE\",\"selected_answer\":\"option_a\"},{\"question\":\"W3T4VUUDHGHB\",\"selected_answer\":\"option_a\"},{\"question\":\"6VRZBK7SFKUN\",\"selected_answer\":\"option_b\"},{\"question\":\"VWUOLQUMUGZ3\",\"selected_answer\":\"option_a\"},{\"question\":\"AKUG4GCQK7WL\",\"selected_answer\":\"option_d\"},{\"question\":\"MFXLRSJ77UJU\",\"selected_answer\":\"option_a\"},{\"question\":\"ISUVQMPJ8SY1\",\"selected_answer\":\"option_a\"},{\"question\":\"1NAGEJPPLZHO\",\"selected_answer\":\"option_b\"}]', 204, 95, '', 0, '2022-05-23 07:21:27', '2022-05-23 07:21:27');

-- --------------------------------------------------------

--
-- Table structure for table `classes_tb`
--

CREATE TABLE `classes_tb` (
  `id` int(11) NOT NULL,
  `class_id` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `class_name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `abbreviation` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `classes_added_by` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `classes_tb`
--

INSERT INTO `classes_tb` (`id`, `class_id`, `class_name`, `abbreviation`, `description`, `classes_added_by`, `date_updated`, `date_created`) VALUES
(3, 'CLS_0LQ2O9G7S7', 'Year 10', 'Y10', 'Class', '', '2021-12-02 12:08:22', '2021-12-02 09:44:56'),
(4, 'CLS_BCJR0XPCKS', 'Year 7', 'Yr7', 'Class.', '', '2021-12-02 12:08:36', '2021-12-02 10:22:20'),
(5, 'CLS_GKNYQPWXC0', 'Year 9', 'Yr9', 'Corresponding to Grade Level 9.', '', '2021-12-11 08:17:08', '2021-12-02 10:23:02'),
(9, 'CLS_FPEJPUY4MJ', 'Year 8', 'Yr8', 'Corresponding to Grade Level 8.', '', '2021-12-11 08:17:28', '2021-12-11 08:17:28'),
(10, 'CLS_C3XMSFK5RZ', 'Year 11', 'YR11', 'Corresponding to Grade Level 11.', '', '2021-12-22 08:34:51', '2021-12-11 08:17:48'),
(11, 'CLS_WWTFT15XHO', 'Year 12', 'YR12', 'Corresponding to Grade Level 12.', '', '2021-12-22 08:34:34', '2021-12-11 08:18:12'),
(12, 'CLS_IO1MIXEP1B', 'Teachers', 'TEA', 'Teachers that are just registered.', '', '2021-12-23 18:58:56', '2021-12-22 08:33:38'),
(13, 'CLS_VC4TPAP4SS', 'Grade 4', 'GRD_4', 'Grade Level 4', '', '2021-12-24 19:12:53', '2021-12-24 19:12:39'),
(14, 'CLS_Z88NLHEWNC', 'Front-End Web Developers', 'FRT-END', 'Front-end Developers.', '', '2021-12-27 09:54:10', '2021-12-27 09:53:39'),
(15, 'CLS_81PMI050RN', 'Advanced Tailoring & Fashion', 'ATF', 'This class is for advanced students in fashion and tailoring.', '', '2022-01-05 13:49:05', '2022-01-05 13:49:05'),
(19, 'CLS_RD9JU00VBL', 'Year 10', 'YR_10', 'Year 10', 'USR_UTM3XFRFK1', '2022-05-23 11:19:44', '2022-03-14 04:56:41');

-- --------------------------------------------------------

--
-- Table structure for table `collations_tb`
--

CREATE TABLE `collations_tb` (
  `id` int(11) NOT NULL,
  `collation_id` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `collation_name` varchar(1028) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(2058) COLLATE utf8_unicode_ci NOT NULL,
  `collation_added_by` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `collations_tb`
--

INSERT INTO `collations_tb` (`id`, `collation_id`, `collation_name`, `description`, `collation_added_by`, `date_updated`, `date_created`) VALUES
(1, 'CL_CXUYWKVQGO', 'Hiii', 'kjkkjlaweerwr', 'USR_UTM3XFRFK1', '2022-05-28 00:15:31', '2022-05-27 23:53:29'),
(2, 'CL_1GUMOF7808', '2021/2022 Autumn 2nd CA', 'For English, Mathematics etc', 'USR_UTM3XFRFK1', '2022-05-28 00:16:07', '2022-05-27 23:55:26');

-- --------------------------------------------------------

--
-- Table structure for table `examinations_candidates_tb`
--

CREATE TABLE `examinations_candidates_tb` (
  `id` int(11) NOT NULL,
  `entry_id` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `examination_id` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `candidate_id` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `access_token` varchar(1028) COLLATE utf8_unicode_ci NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `examinations_candidates_tb`
--

INSERT INTO `examinations_candidates_tb` (`id`, `entry_id`, `examination_id`, `candidate_id`, `access_token`, `date_updated`, `date_created`) VALUES
(579, 'ENT_NPNR8RZTLB', '164ZSWD', '052MM4M', '4KJTJ', '2022-05-23 11:19:22', '2022-05-23 11:19:22'),
(580, 'ENT_Q67U0A8I9W', '164ZSWD', 'T42J7XB', 'IBS0G', '2022-05-23 11:19:22', '2022-05-23 11:19:22'),
(575, 'ENT_XRY1IBL3EY', 'AQG55R5', '9XCVZ2U', 'FS0XF', '2022-05-23 04:59:43', '2022-05-23 04:59:43'),
(536, 'ENT_PV0L6XUV5B', 'CNPZMZ7Z6O', 'CAN_66FY0K2W8U', 'AK478', '2022-01-12 22:29:16', '2022-01-12 22:29:16'),
(564, 'ENT_SN07BY1CJY', 'WF0FV2T', '3J3K8ST', 'VK39A', '2022-02-04 11:50:36', '2022-02-04 11:50:36'),
(565, 'ENT_VJBY0M5QQV', 'WF0FV2T', 'MSZM1YG', 'Z1G0X', '2022-02-04 11:50:36', '2022-02-04 11:50:36'),
(541, 'ENT_706TKOO0OI', 'SNUG0G1', 'MSZM1YG', 'CV3IN', '2022-01-13 12:44:12', '2022-01-13 12:44:12'),
(540, 'ENT_0OP9Z0RAWU', 'SNUG0G1', 'IJUL50K', 'Y54I8', '2022-01-13 12:44:12', '2022-01-13 12:44:12'),
(539, 'ENT_1U30DN81R8', 'SNUG0G1', '9SELW3Y', 'AB8DD', '2022-01-13 12:44:12', '2022-01-13 12:44:12'),
(538, 'ENT_BLP0IPYD47', 'SNUG0G1', 'CAN_66FY0K2W8U', 'HD0QY', '2022-01-13 12:44:12', '2022-01-13 12:44:12'),
(537, 'ENT_JJFT641WYV', 'CNPZMZ7Z6O', 'IJUL50K', 'MRWQ0', '2022-01-12 22:29:16', '2022-01-12 22:29:16'),
(560, 'ENT_93G3SBDB1M', '0JZ44MJ', 'WDQ10M7', 'GNI5T', '2022-01-22 19:39:51', '2022-01-22 19:39:51'),
(562, 'ENT_T4Y28JXGDJ', 'WF0FV2T', 'CAN_66FY0K2W8U', 'I8A8G', '2022-02-04 11:50:36', '2022-02-04 11:50:36'),
(581, 'ENT_D8XEE1K3KG', '1D0QXZ5', '052MM4M', 'SJVX6', '2022-05-24 06:46:07', '2022-05-24 06:46:07'),
(578, 'ENT_TN7TLIP900', 'AQG55R5', '8UEINB2', 'GPHID', '2022-05-23 04:59:43', '2022-05-23 04:59:43');

-- --------------------------------------------------------

--
-- Table structure for table `examinations_collations_tb`
--

CREATE TABLE `examinations_collations_tb` (
  `id` int(11) NOT NULL,
  `item_id` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `examination_id` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `collation_id` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `item_added_by` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `examinations_collations_tb`
--

INSERT INTO `examinations_collations_tb` (`id`, `item_id`, `examination_id`, `collation_id`, `item_added_by`, `date_updated`, `date_created`) VALUES
(53, 'AS_7078V357XY', 'W01TYQI', 'CL_1GUMOF7808', 'USR_UTM3XFRFK1', '2022-05-29 21:32:32', '2022-05-29 21:32:32'),
(57, 'AS_TWC0UMI311', 'R42UA95', 'CL_CXUYWKVQGO', 'USR_UTM3XFRFK1', '2022-05-29 21:38:13', '2022-05-29 21:38:13');

-- --------------------------------------------------------

--
-- Table structure for table `examinations_tb`
--

CREATE TABLE `examinations_tb` (
  `id` int(11) NOT NULL,
  `exam_id` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `type` tinyint(3) NOT NULL COMMENT '0 - None; 1 - Objectives; 2 - Theory',
  `exam_title` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `class` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `duration` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL COMMENT '0: inactive, 1: active',
  `exam_instructions` text COLLATE utf8_unicode_ci NOT NULL,
  `shuffle_questions` tinyint(4) NOT NULL,
  `fullscreen` tinyint(4) NOT NULL,
  `exam_added_by` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `exam_edited_by` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `assigned_to` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `examinations_tb`
--

INSERT INTO `examinations_tb` (`id`, `exam_id`, `type`, `exam_title`, `class`, `subject`, `duration`, `status`, `exam_instructions`, `shuffle_questions`, `fullscreen`, `exam_added_by`, `exam_edited_by`, `assigned_to`, `date_updated`, `date_created`) VALUES
(16, 'CNPZMZ7Z6O', 1, '4th Grade Science Quiz', 'CLS_VC4TPAP4SS', 'SUB_HQ5TE4OSSF', 15, 1, '<p><img alt=\"children_science_class\" src=\"https://www.thoughtco.com/thmb/ZpmUAmpn-em_OXmrNATlTLQQOCw=/768x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/four-elementary-school-students-591453610-57b8d9275f9b58cdfdff9fd9.jpg\" style=\"height:50%; width:50%\" /></p>\r\n\r\n<p><strong>Please follow the following instructions:</strong></p>\r\n\r\n<ul>\r\n	<li>You are to choose an option for the question.</li>\r\n	<li>No side talks or distractions.</li>\r\n	<li>You are permitted to ask ONLY the examiner of any question you have.</li>\r\n</ul>\r\n', 1, 0, 'USR_UTM3XFRFK1', '', '', '2022-05-30 09:00:16', '2021-12-06 17:39:35'),
(18, 'YRVAL7E', 1, 'Mathematics Histogram Quiz', 'CLS_C3XMSFK5RZ', 'SUB_3I1BC5OESF', 10, 1, '', 0, 0, 'USR_UTM3XFRFK1', '', '', '2022-05-30 09:00:20', '2021-12-12 13:06:41'),
(24, 'WF0FV2T', 1, 'Teaching Practice I', 'CLS_IO1MIXEP1B', 'SUB_Z4N0S4GBK4', 10, 1, '<p><strong>Please read the following instructions:</strong></p>\r\n\r\n<ul>\r\n	<li>No side talks or distractions.</li>\r\n	<li>Select the option you think is the correct answer.</li>\r\n	<li>Do not press the escape button on your keyboard.</li>\r\n	<li>Ensure you answer all the questions before the time runs out.</li>\r\n</ul>\r\n', 1, 1, 'USR_UTM3XFRFK1', '', '', '2022-01-05 14:03:59', '2021-12-22 08:37:42'),
(26, '164ZSWD', 1, 'Year 4: Mental Maths', 'CLS_RD9JU00VBL', 'SUB_UMFQQKVT2W', 15, 1, '<p><strong>Please read the following instructions:</strong></p>\r\n\r\n<ul>\r\n	<li>Select <strong>ONLY </strong>the option of your choice for each question.</li>\r\n	<li>You are not allowed to use a calculator.</li>\r\n	<li>You will be provided with paper sheets to do rough work.</li>\r\n	<li>No side talks or distractions.</li>\r\n	<li>If you need anything, you are permitted to ask <strong>ONLY</strong> the examiner.</li>\r\n</ul>\r\n', 1, 0, 'USR_UTM3XFRFK1', 'USR_UTM3XFRFK1', '', '2022-05-23 11:21:58', '2021-12-24 19:15:45'),
(27, '1D0QXZ5', 1, 'Year 11 Mathematics Quiz', 'CLS_C3XMSFK5RZ', 'SUB_3I1BC5OESF', 30, 1, '<p><strong>PLEASE READ THE INSTRUCTIONS BELOW:</strong></p>\r\n\r\n<ul>\r\n	<li>Do NOT press the Esc key on your keyboard.</li>\r\n	<li>Click to select an option of your choice.</li>\r\n	<li>Click on the Submit button once you have answered all the questions.</li>\r\n	<li>Good Luck.</li>\r\n</ul>\r\n', 1, 0, 'USR_UTM3XFRFK1', '', '', '2021-12-30 20:54:55', '2021-12-27 06:15:29'),
(28, 'W01TYQI', 1, 'Quiz On Similarity', 'CLS_C3XMSFK5RZ', 'SUB_3I1BC5OESF', 1, 1, '<p>You shall be tested on the topic <strong>MATHEMATICAL SIMILARITY.</strong></p>\r\n\r\n<p>Given below are some properties you might find useful in the course of this examination.</p>\r\n\r\n<p>&diams; <strong>Volume to Length relationship is given as:</strong></p>\r\n\r\n<p><img alt=\"\\frac{V_{1}}{V_{2}} = \\left ( \\frac{l_{1}}{l_{2}} \\right )^{3}\" src=\"https://latex.codecogs.com/gif.latex?%5Cfrac%7BV_%7B1%7D%7D%7BV_%7B2%7D%7D%20%3D%20%5Cleft%20%28%20%5Cfrac%7Bl_%7B1%7D%7D%7Bl_%7B2%7D%7D%20%5Cright%20%29%5E%7B3%7D\" /></p>\r\n\r\n<p>&diams; <strong>Volume to Area relationship is given as:</strong></p>\r\n\r\n<p><img alt=\"\\left ( \\frac{V_{1}}{V_{2}} \\right )^{2} = \\left ( \\frac{A_{1}}{A_{2}} \\right )^{3}\" src=\"https://latex.codecogs.com/gif.latex?%5Cleft%20%28%20%5Cfrac%7BV_%7B1%7D%7D%7BV_%7B2%7D%7D%20%5Cright%20%29%5E%7B2%7D%20%3D%20%5Cleft%20%28%20%5Cfrac%7BA_%7B1%7D%7D%7BA_%7B2%7D%7D%20%5Cright%20%29%5E%7B3%7D\" /></p>\r\n\r\n<p>&diams; <strong>Area to Length relationship is given as:</strong></p>\r\n\r\n<p><img alt=\"\\left ( \\frac{A_{1}}{A_{2}} \\right ) = \\left ( \\frac{l_{1}}{l_{2}} \\right )^{2}\" src=\"https://latex.codecogs.com/gif.latex?%5Cleft%20%28%20%5Cfrac%7BA_%7B1%7D%7D%7BA_%7B2%7D%7D%20%5Cright%20%29%20%3D%20%5Cleft%20%28%20%5Cfrac%7Bl_%7B1%7D%7D%7Bl_%7B2%7D%7D%20%5Cright%20%29%5E%7B2%7D\" /></p>\r\n', 1, 0, 'USR_UTM3XFRFK1', '', 'USR_PAAKD9T4G0', '2022-06-06 15:41:02', '2021-12-27 09:56:14'),
(35, 'LBT9ZE9', 2, 'Practice II', 'CLS_0LQ2O9G7S7', 'SUB_CVUQ0P10VC', 1, 1, '<h3><strong>Progress</strong></h3>\r\n\r\n<p>Documentation and examples for using Bootstrap custom progress bars featuring support for stacked bars, animated backgrounds, and text labels.</p>\r\n', 1, 0, 'USR_UTM3XFRFK1', 'USR_UTM3XFRFK1', 'USR_TS14FKAQEH', '2022-05-30 17:32:50', '2021-12-30 22:13:48'),
(36, 'R42UA95', 1, '9th Grade Science Test', 'CLS_GKNYQPWXC0', 'SUB_HQ5TE4OSSF', 10, 1, '<p><img alt=\"\" class=\"rounded\" src=\"https://www.thoughtco.com/thmb/w_zpBsdo76wEjKGqVkyBs5er4EE=/768x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/students-working-with-chemicals-in-classroom-166346379-576841b45f9b58346ae4de48.jpg\" style=\"height:50%; width:50%\" /></p>\r\n\r\n<p>Test your knowledge of Basic Science by attempting this quiz.</p>\r\n', 1, 1, 'USR_UTM3XFRFK1', '', 'USR_UTM3XFRFK1', '2022-05-30 09:22:24', '2022-01-05 13:31:47'),
(37, 'SNUG0G1', 1, 'Dressmaking and Tailoring Quiz', 'CLS_81PMI050RN', 'SUB_J5YM954VXJ', 10, 1, '<p>Test your understanding of Tailoring &amp; Fashion in this quiz.</p>\r\n\r\n<p>You have <strong>10 questions</strong> to answer in <strong>10 minutes</strong>.</p>\r\n', 1, 1, 'USR_UTM3XFRFK1', 'USR_PAAKD9T4G0', '', '2022-05-20 11:53:10', '2022-01-05 13:52:58'),
(38, '6W7BNAZ', 1, 'Javascript Beginner Quiz II', 'CLS_Z88NLHEWNC', 'SUB_45XMICCHBL', 10, 1, '<h2><strong>Javascript Fundamentals II</strong></h2>\r\n\r\n<p>JavaScript is <strong>a lightweight, cross-platform, and interpreted scripting language</strong>. It is well-known for the development of web pages, many non-browser environments also use it. JavaScript can be used for Client-side developments as well as Server-side developments.</p>\r\n', 1, 1, 'USR_UTM3XFRFK1', '', '', '2022-01-06 22:41:11', '2022-01-06 21:27:14'),
(40, '0JZ44MJ', 1, 'Midpoint of a Line', 'CLS_C3XMSFK5RZ', 'SUB_3I1BC5OESF', 30, 1, '<p><strong>Hello David</strong>, this is a personalised quiz for you as a continuation of the past quiz you did.</p>\r\n\r\n<p>There are <strong>20</strong><strong>&nbsp;questions</strong> in this examination. You are expected to answer all questions.</p>\r\n\r\n<p>Please note that all questions are based on the topic:</p>\r\n\r\n<h3><strong>Midpoint of Line Segments</strong></h3>\r\n', 1, 1, 'USR_UTM3XFRFK1', 'USR_UTM3XFRFK1', '', '2022-01-22 19:42:39', '2022-01-17 11:29:18'),
(43, 'AQG55R5', 1, 'Algorithm Design & Testing Pre-Class Quiz', 'CLS_RD9JU00VBL', 'SUB_8IXW625PNQ', 5, 1, '<p>Please select the correction options only for each question.</p>\r\n', 1, 1, 'USR_UTM3XFRFK1', '', 'USR_E87T3E20NK', '2022-05-30 17:09:00', '2022-05-23 04:44:50');

-- --------------------------------------------------------

--
-- Table structure for table `questions_examinations_tb`
--

CREATE TABLE `questions_examinations_tb` (
  `id` int(11) NOT NULL,
  `entry_id` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `exam_id` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `question_id` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `questions_examinations_tb`
--

INSERT INTO `questions_examinations_tb` (`id`, `entry_id`, `exam_id`, `question_id`, `date_updated`, `date_created`) VALUES
(779, 'ENT_QG8NT7DZZA', '970LDG5', 'LGGJ4KIIKOLL', '2021-12-12 12:23:22', '2021-12-12 12:23:22'),
(780, 'ENT_UYLPYY2MAO', '970LDG5', '8MMRROR6N510', '2021-12-12 12:23:22', '2021-12-12 12:23:22'),
(781, 'ENT_TD2P02RKD4', '970LDG5', 'BAINFFRHEKIP', '2021-12-12 12:23:22', '2021-12-12 12:23:22'),
(783, 'ENT_LDQO230D20', '970LDG5', 'KHYELX7DLXLP', '2021-12-12 12:23:22', '2021-12-12 12:23:22'),
(147, 'ENT_Y8XMT0UMZ0', 'GC9EBYLMH4', 'GLTXDVIVHAKD', '2021-12-03 18:40:00', '2021-12-03 15:23:59'),
(168, 'ENT_PF01D7EJDX', 'NOMGE0NRIF', 'JYNABEAEAMUD', '2021-12-03 15:34:25', '2021-12-03 15:34:25'),
(167, 'ENT_TACQV3JNQH', 'NOMGE0NRIF', 'HHXROOK8LPAL', '2021-12-03 15:34:25', '2021-12-03 15:34:25'),
(356, 'ENT_ZFR0VH3VEM', 'NOMGE0NRIF', 'A73KA2LVLHLE', '2021-12-10 17:15:20', '2021-12-10 17:15:20'),
(787, 'ENT_PTRJIC04PQ', '970LDG5', '7KQUPZVQ3D1O', '2021-12-12 12:23:22', '2021-12-12 12:23:22'),
(786, 'ENT_GYKPZYUXGD', '970LDG5', 'XXIRW9QL0EXR', '2021-12-12 12:23:22', '2021-12-12 12:23:22'),
(785, 'ENT_YSCWS326QE', '970LDG5', 'A8ECOHJ2OXSW', '2021-12-12 12:23:22', '2021-12-12 12:23:22'),
(784, 'ENT_E1Z0ZC7OZG', '970LDG5', 'JNQNS3K2XDAR', '2021-12-12 12:23:22', '2021-12-12 12:23:22'),
(782, 'ENT_H2S8DIA7WL', '970LDG5', '6P6N818REV4F', '2021-12-12 12:23:22', '2021-12-12 12:23:22'),
(890, 'ENT_MZZN3U0OHI', 'QWQYJME', 'I0KQQMWRB5NC', '2021-12-21 10:35:24', '2021-12-21 10:35:24'),
(886, 'ENT_IZV4BR0BEY', 'R8Y48M2', '7LK7XVDAB5EZ', '2021-12-20 12:42:21', '2021-12-20 12:42:21'),
(883, 'ENT_UXSWJ085RB', 'UL2Y2EZQGC', 'VVGFET3QBSNB', '2021-12-17 20:14:15', '2021-12-17 20:14:15'),
(264, 'ENT_DO0KBI5FN1', 'CNPZMZ7Z6O', '6XPSHIEQZNX2', '2021-12-06 17:48:55', '2021-12-06 17:48:55'),
(265, 'ENT_LMLDB3K8VM', 'CNPZMZ7Z6O', 'NXNTDMA75UXZ', '2021-12-06 17:48:55', '2021-12-06 17:48:55'),
(884, 'ENT_0Z6JGCH0J4', 'UL2Y2EZQGC', 'UQZH1O0VFL9W', '2021-12-17 20:14:15', '2021-12-17 20:14:15'),
(272, 'ENT_4WZ0VL1VV0', 'GC9EBYLMH4', 'UGXMN6Q7OK8T', '2021-12-07 00:58:59', '2021-12-07 00:58:59'),
(273, 'ENT_JYXUG0WXKB', 'GC9EBYLMH4', 'MLJIX2BCUJPE', '2021-12-07 00:58:59', '2021-12-07 00:58:59'),
(274, 'ENT_NR6538A5NG', 'GC9EBYLMH4', '81T2PSW77QJD', '2021-12-07 00:58:59', '2021-12-07 00:58:59'),
(275, 'ENT_LQA5ABZ6LM', 'GC9EBYLMH4', 'OGOJ8LSU4ZNU', '2021-12-07 00:58:59', '2021-12-07 00:58:59'),
(276, 'ENT_N04GXC2BCI', 'GC9EBYLMH4', '29GW9ZWFCIUU', '2021-12-07 00:58:59', '2021-12-07 00:58:59'),
(277, 'ENT_HRMJ8JHZ89', 'GC9EBYLMH4', 'C1XZ5B7UGWHT', '2021-12-07 00:58:59', '2021-12-07 00:58:59'),
(278, 'ENT_D24MUMRVLH', 'GC9EBYLMH4', 'DRAI7YHMVTXU', '2021-12-07 00:58:59', '2021-12-07 00:58:59'),
(279, 'ENT_VYPAKZRUL0', 'GC9EBYLMH4', '80W06HJLCDDZ', '2021-12-07 00:58:59', '2021-12-07 00:58:59'),
(280, 'ENT_IJJSKEZY23', 'GC9EBYLMH4', 'FH31CULCX5PU', '2021-12-07 00:58:59', '2021-12-07 00:58:59'),
(281, 'ENT_AG71EXK1CI', 'GC9EBYLMH4', '8EMGDYK5EUY5', '2021-12-07 00:58:59', '2021-12-07 00:58:59'),
(282, 'ENT_0SHY7022AR', 'GC9EBYLMH4', 'QDEQFBEOPI12', '2021-12-07 00:58:59', '2021-12-07 00:58:59'),
(283, 'ENT_55CQ6FFRPX', 'GC9EBYLMH4', 'OJLSIKMCB1R6', '2021-12-07 00:58:59', '2021-12-07 00:58:59'),
(284, 'ENT_8N9TTM83AD', 'GC9EBYLMH4', 'AYPEARK7CUJY', '2021-12-07 00:58:59', '2021-12-07 00:58:59'),
(285, 'ENT_IXO1CF1567', 'GC9EBYLMH4', 'VSG7TGFJW5MB', '2021-12-07 00:58:59', '2021-12-07 00:58:59'),
(286, 'ENT_162UCGJSGB', 'GC9EBYLMH4', 'P17HLHEQSSN0', '2021-12-07 00:58:59', '2021-12-07 00:58:59'),
(321, 'ENT_XCN5PFE2D1', 'UL2Y2EZQGC', 'LEJCE5GJVEBO', '2021-12-07 13:44:39', '2021-12-07 13:44:39'),
(357, 'ENT_Z23050J3GD', 'NOMGE0NRIF', 'ULA1AFT8STZA', '2021-12-10 17:15:20', '2021-12-10 17:15:20'),
(350, 'ENT_G00ZX70MQK', 'NOMGE0NRIF', 'WTBNEATMOQ3G', '2021-12-10 17:12:20', '2021-12-10 17:12:20'),
(351, 'ENT_8009UT9F2U', 'NOMGE0NRIF', 'N2KCOXF4XIWK', '2021-12-10 17:12:20', '2021-12-10 17:12:20'),
(359, 'ENT_BJZV9NVA0S', 'KSGGKY8TFY', 'QTBVFIMMRX45', '2021-12-11 10:37:29', '2021-12-11 10:37:29'),
(778, 'ENT_I5C49Z7AQU', '970LDG5', 'EUUT7MCH07KL', '2021-12-12 12:23:22', '2021-12-12 12:23:22'),
(1866, 'ENT_G327Q9NY8W', 'YRVAL7E', 'R0LVPJ8KTHNZ', '2021-12-31 14:12:14', '2021-12-31 14:12:14'),
(1865, 'ENT_JOZZN3D9Z1', 'YRVAL7E', 'VUWTGYDZOFYR', '2021-12-31 14:12:14', '2021-12-31 14:12:14'),
(1864, 'ENT_4D0EESCGZC', 'YRVAL7E', 'FOVKDPJQQHFP', '2021-12-31 14:12:14', '2021-12-31 14:12:14'),
(1863, 'ENT_VZ8Z8XW6W0', 'YRVAL7E', 'TBRNKHHVEHZJ', '2021-12-31 14:12:14', '2021-12-31 14:12:14'),
(1862, 'ENT_OLA3G8QCPT', 'YRVAL7E', 'TGNZVYHBDYNV', '2021-12-31 14:12:14', '2021-12-31 14:12:14'),
(1861, 'ENT_0D0E94ML9F', 'YRVAL7E', 'S7NXH6DYOSNV', '2021-12-31 14:12:14', '2021-12-31 14:12:14'),
(1860, 'ENT_5VPHVBL46U', 'YRVAL7E', 'YAQ5PD2CXKUZ', '2021-12-31 14:12:14', '2021-12-31 14:12:14'),
(1859, 'ENT_9TUWUYT999', 'YRVAL7E', '3UIV6L8F7RDM', '2021-12-31 14:12:14', '2021-12-31 14:12:14'),
(1858, 'ENT_3Q50K0ZB80', 'YRVAL7E', 'R7ZZ9XR7JBU2', '2021-12-31 14:12:14', '2021-12-31 14:12:14'),
(1857, 'ENT_JFDQK8Q0UV', 'YRVAL7E', 'XBQZSEEGABP4', '2021-12-31 14:12:14', '2021-12-31 14:12:14'),
(892, 'ENT_N9YWPVU1OQ', 'BGHFYML', 'SZCKN9L3ME15', '2021-12-21 14:06:04', '2021-12-21 14:06:04'),
(891, 'ENT_F5PCGY1BBB', 'QWQYJME', 'ORZBUO5IKQUH', '2021-12-21 10:35:24', '2021-12-21 10:35:24'),
(896, 'ENT_QE0VS7WWO1', 'ZF0SU10', 'FPPJUKFPSRRN', '2021-12-22 16:50:18', '2021-12-22 16:50:18'),
(897, 'ENT_VUGR04HVCJ', 'ZF0SU10', '68KA4ML4957L', '2021-12-22 16:50:18', '2021-12-22 16:50:18'),
(2491, 'ENT_TUHXWSNJQH', 'WF0FV2T', 'TEOTYLBWUGGQ', '2022-01-19 13:36:56', '2022-01-19 13:36:56'),
(2492, 'ENT_L3E0KTWQYA', 'WF0FV2T', '7KL07DATXIAU', '2022-01-19 13:36:56', '2022-01-19 13:36:56'),
(2493, 'ENT_H0MDPP6GLY', 'WF0FV2T', 'IUBNUEEQIMUR', '2022-01-19 13:36:56', '2022-01-19 13:36:56'),
(2494, 'ENT_S7R7O0DQ68', 'WF0FV2T', 'HTJAPVPJPI4A', '2022-01-19 13:36:56', '2022-01-19 13:36:56'),
(2495, 'ENT_NLN40QV6OP', 'WF0FV2T', 'WCQADFVN6XUH', '2022-01-19 13:36:56', '2022-01-19 13:36:56'),
(2496, 'ENT_FSAIMHTQWO', 'WF0FV2T', 'B7DFCX1BXKKC', '2022-01-19 13:36:56', '2022-01-19 13:36:56'),
(2497, 'ENT_B6J4G7RDZY', 'WF0FV2T', '4LCCADGCFBX4', '2022-01-19 13:36:56', '2022-01-19 13:36:56'),
(2498, 'ENT_8EZB5DAGM6', 'WF0FV2T', 'XFTRKTHTTXYA', '2022-01-19 13:36:56', '2022-01-19 13:36:56'),
(2499, 'ENT_BZCT2BKY8A', 'WF0FV2T', '831OBLTATHLL', '2022-01-19 13:36:56', '2022-01-19 13:36:56'),
(2500, 'ENT_TNBUY0RZTE', 'WF0FV2T', 'MHYZWSZIMI1A', '2022-01-19 13:36:56', '2022-01-19 13:36:56'),
(2501, 'ENT_REL6TZ1CPO', 'WF0FV2T', 'EMND1LPL1EYK', '2022-01-19 13:36:56', '2022-01-19 13:36:56'),
(2502, 'ENT_JA0LNW1DSJ', 'WF0FV2T', 'ATUARBMLZLHD', '2022-01-19 13:36:56', '2022-01-19 13:36:56'),
(2503, 'ENT_0R3FOY0VOK', 'WF0FV2T', 'HUFXAE0SCYG7', '2022-01-19 13:36:56', '2022-01-19 13:36:56'),
(2504, 'ENT_L64P26EBWW', 'WF0FV2T', '12FBJU1NLUPH', '2022-01-19 13:36:56', '2022-01-19 13:36:56'),
(2505, 'ENT_VPMJ8FDO3K', 'WF0FV2T', 'LRLEVWGZKH0S', '2022-01-19 13:36:56', '2022-01-19 13:36:56'),
(1867, 'ENT_J3QR5U0T49', '164ZSWD', 'WJBRMIKVRHTP', '2021-12-31 17:08:55', '2021-12-31 17:08:55'),
(1868, 'ENT_AL0JJ09A51', '164ZSWD', 'KBB9TYK5PUBL', '2021-12-31 17:08:55', '2021-12-31 17:08:55'),
(1869, 'ENT_MWTW78QD5H', '164ZSWD', '9KQ1EOHNYNDM', '2021-12-31 17:08:55', '2021-12-31 17:08:55'),
(1870, 'ENT_GMF561XE1N', '164ZSWD', 'W4Z7QMIUQ3FO', '2021-12-31 17:08:55', '2021-12-31 17:08:55'),
(1871, 'ENT_JYPVOSZIKF', '164ZSWD', 'QZME7OQH4EVO', '2021-12-31 17:08:55', '2021-12-31 17:08:55'),
(1872, 'ENT_Z85N3W2EKE', '164ZSWD', 'UTVHONQZWOA1', '2021-12-31 17:08:55', '2021-12-31 17:08:55'),
(1873, 'ENT_SJ1FF0YJRL', '164ZSWD', 'CPUDOYTTBYVY', '2021-12-31 17:08:55', '2021-12-31 17:08:55'),
(1874, 'ENT_T46I0AU4GD', '164ZSWD', 'HIFRPQX1FNKV', '2021-12-31 17:08:55', '2021-12-31 17:08:55'),
(1875, 'ENT_S6O6T42FV0', '164ZSWD', 'PSFSHKBFN0N2', '2021-12-31 17:08:55', '2021-12-31 17:08:55'),
(1876, 'ENT_BRXZ32XRRM', '164ZSWD', 'PXMO0NCGQMII', '2021-12-31 17:08:55', '2021-12-31 17:08:55'),
(1877, 'ENT_NW3HKU5QQK', '164ZSWD', 'DRRERT4O12GS', '2021-12-31 17:08:55', '2021-12-31 17:08:55'),
(1878, 'ENT_TCY05EZP36', '164ZSWD', 'V1YI48L7BINN', '2021-12-31 17:08:55', '2021-12-31 17:08:55'),
(1879, 'ENT_R66K5UEGAX', '164ZSWD', 'TIHUKFCGAKUQ', '2021-12-31 17:08:55', '2021-12-31 17:08:55'),
(1880, 'ENT_K9ER3EJ9UA', '164ZSWD', '1VODEDEBLHSK', '2021-12-31 17:08:55', '2021-12-31 17:08:55'),
(1881, 'ENT_IUEUK5TEP0', '164ZSWD', '8HSGQ7XBKY2G', '2021-12-31 17:08:55', '2021-12-31 17:08:55'),
(1954, 'ENT_7AUQVJK43Q', 'CNPZMZ7Z6O', '3IXHGPD15YYI', '2022-01-04 17:40:55', '2022-01-04 17:40:55'),
(1955, 'ENT_M57ZZLM3PE', 'CNPZMZ7Z6O', 'IRSDKJFVAO3J', '2022-01-04 17:40:55', '2022-01-04 17:40:55'),
(1956, 'ENT_VJD57FILOG', 'CNPZMZ7Z6O', 'VWALI5IMZLYB', '2022-01-04 17:40:55', '2022-01-04 17:40:55'),
(1957, 'ENT_J00DROI6MF', 'CNPZMZ7Z6O', 'MPQQFCFQH8X8', '2022-01-04 17:40:55', '2022-01-04 17:40:55'),
(1958, 'ENT_FO3IY0Z0VU', 'CNPZMZ7Z6O', 'GTFCGQ5AQNRC', '2022-01-04 17:40:55', '2022-01-04 17:40:55'),
(1959, 'ENT_W4XIW54T10', 'CNPZMZ7Z6O', 'MF6YWSCBOEYN', '2022-01-04 17:40:55', '2022-01-04 17:40:55'),
(1960, 'ENT_OUGSCP080L', 'CNPZMZ7Z6O', '1HIQUPECKJLT', '2022-01-04 17:40:55', '2022-01-04 17:40:55'),
(1961, 'ENT_C8L9ARMD0E', 'CNPZMZ7Z6O', '6LT1GZES7RHA', '2022-01-04 17:40:55', '2022-01-04 17:40:55'),
(1962, 'ENT_CC5Z0YTA4M', 'CNPZMZ7Z6O', 'SPGJJZVTPXKE', '2022-01-04 17:40:55', '2022-01-04 17:40:55'),
(1963, 'ENT_FA3LL8ZIFX', 'CNPZMZ7Z6O', 'PSHA3YZN9RSM', '2022-01-04 17:40:55', '2022-01-04 17:40:55'),
(1964, 'ENT_4A3YMATHII', 'CNPZMZ7Z6O', '6S4C4WFZD91V', '2022-01-04 17:40:55', '2022-01-04 17:40:55'),
(1965, 'ENT_MVESRK3LPC', 'CNPZMZ7Z6O', 'RQHARCZK6D4L', '2022-01-04 17:40:55', '2022-01-04 17:40:55'),
(1966, 'ENT_Z3LNJTFGX2', 'CNPZMZ7Z6O', 'WGMPRR1WZ0VJ', '2022-01-04 17:40:55', '2022-01-04 17:40:55'),
(1967, 'ENT_62DFYSF3CQ', 'CNPZMZ7Z6O', '6S0L4CZNRK9E', '2022-01-04 17:40:55', '2022-01-04 17:40:55'),
(1968, 'ENT_A560G0MOOV', 'CNPZMZ7Z6O', 'MCJB6OBGSQDY', '2022-01-04 17:40:55', '2022-01-04 17:40:55'),
(1471, 'ENT_E0U5IWV4Q9', '1D0QXZ5', '7B46ZFU2ZAEG', '2021-12-27 09:10:06', '2021-12-27 09:10:06'),
(1472, 'ENT_D0E3CPTCN9', '1D0QXZ5', 'WNY7ZUBIKHJV', '2021-12-27 09:10:06', '2021-12-27 09:10:06'),
(1473, 'ENT_3S9878AQ0T', '1D0QXZ5', 'CG529DFPASNA', '2021-12-27 09:10:06', '2021-12-27 09:10:06'),
(1474, 'ENT_E3X4SLU1CD', '1D0QXZ5', 'LGVWKLRPKWRQ', '2021-12-27 09:10:06', '2021-12-27 09:10:06'),
(1475, 'ENT_3VU2DONE6X', '1D0QXZ5', 'NN74VLEKTZWT', '2021-12-27 09:10:06', '2021-12-27 09:10:06'),
(1476, 'ENT_0T9PYQLTTW', '1D0QXZ5', 'SCBI9LXW2GDP', '2021-12-27 09:10:06', '2021-12-27 09:10:06'),
(1477, 'ENT_5ZD0RE7MUL', '1D0QXZ5', 'MBSG5R5YC343', '2021-12-27 09:10:06', '2021-12-27 09:10:06'),
(1478, 'ENT_HNS7AKJ2Z3', '1D0QXZ5', 'W2K5RNUCRYK5', '2021-12-27 09:10:06', '2021-12-27 09:10:06'),
(1479, 'ENT_ZV7KT3BPYJ', '1D0QXZ5', 'ANND5CUPGXLB', '2021-12-27 09:10:06', '2021-12-27 09:10:06'),
(1480, 'ENT_FWTFX8OS89', '1D0QXZ5', 'WAC42J61ST1W', '2021-12-27 09:10:06', '2021-12-27 09:10:06'),
(1481, 'ENT_L8W30U5FZN', '1D0QXZ5', '9NILBBWGWAAP', '2021-12-27 09:10:06', '2021-12-27 09:10:06'),
(1482, 'ENT_1QA0ZHFV5I', '1D0QXZ5', 'YE1JUTZUVVOG', '2021-12-27 09:10:06', '2021-12-27 09:10:06'),
(1483, 'ENT_18JWQSPOBV', '1D0QXZ5', 'EFKBZ9LOSDSO', '2021-12-27 09:10:06', '2021-12-27 09:10:06'),
(1484, 'ENT_A834YNUV0E', '1D0QXZ5', 'C9EUZCP05XDL', '2021-12-27 09:10:06', '2021-12-27 09:10:06'),
(1485, 'ENT_MDG56TE04D', '1D0QXZ5', 'JROSINAQ6P8K', '2021-12-27 09:10:06', '2021-12-27 09:10:06'),
(1486, 'ENT_0T0CKQL7NT', '1D0QXZ5', 'TJFAUMWYVR5X', '2021-12-27 09:10:06', '2021-12-27 09:10:06'),
(1487, 'ENT_EBZIY2CCBS', '1D0QXZ5', 'VM6EXDAPLRPI', '2021-12-27 09:10:06', '2021-12-27 09:10:06'),
(1488, 'ENT_Z7KZSKCNGR', '1D0QXZ5', '0KHNVBTZVZCG', '2021-12-27 09:10:06', '2021-12-27 09:10:06'),
(1489, 'ENT_Z905909WK9', '1D0QXZ5', 'WYGJQX2UKQKW', '2021-12-27 09:10:06', '2021-12-27 09:10:06'),
(1490, 'ENT_S9TMWQT8RU', '1D0QXZ5', 'VYE4PUPGI86X', '2021-12-27 09:10:06', '2021-12-27 09:10:06'),
(2076, 'ENT_7YRVSVGZTE', 'W01TYQI', 'MMKA4R4MPPFF', '2022-01-06 19:51:15', '2022-01-06 19:51:15'),
(2077, 'ENT_YIDP9DIKDW', 'W01TYQI', '4P3KYBTFB0KL', '2022-01-06 19:51:15', '2022-01-06 19:51:15'),
(2078, 'ENT_GMHCNIO2S1', 'W01TYQI', '155ERYQMLUPL', '2022-01-06 19:51:15', '2022-01-06 19:51:15'),
(2079, 'ENT_5BH0AF5298', 'W01TYQI', 'ZCKK5S3UV1RT', '2022-01-06 19:51:15', '2022-01-06 19:51:15'),
(2080, 'ENT_HRJJH613M1', 'W01TYQI', 'EAHMCJBSV64S', '2022-01-06 19:51:15', '2022-01-06 19:51:15'),
(2081, 'ENT_01FS9MMY8T', 'W01TYQI', 'SBRBPBR5TVWN', '2022-01-06 19:51:15', '2022-01-06 19:51:15'),
(2082, 'ENT_78ZU0LBL6F', 'W01TYQI', 'NOF9FX1G1EAC', '2022-01-06 19:51:15', '2022-01-06 19:51:15'),
(2083, 'ENT_6Z817EB537', 'W01TYQI', '2H5SJGXKRYZC', '2022-01-06 19:51:15', '2022-01-06 19:51:15'),
(2084, 'ENT_FNKML4W5I9', 'W01TYQI', '1PJTD6KK7A22', '2022-01-06 19:51:15', '2022-01-06 19:51:15'),
(2085, 'ENT_N76POY3U4E', 'W01TYQI', 'WE9M6HUKLGJQ', '2022-01-06 19:51:15', '2022-01-06 19:51:15'),
(2086, 'ENT_T2EJLQT3VI', 'W01TYQI', 'EKULR3U85GEH', '2022-01-06 19:51:15', '2022-01-06 19:51:15'),
(2087, 'ENT_EU82WYRFHF', 'W01TYQI', '7PLBZUMCEE1Q', '2022-01-06 19:51:15', '2022-01-06 19:51:15'),
(2088, 'ENT_65S8W0ZD1J', 'W01TYQI', 'LEIBAVZK4Z3E', '2022-01-06 19:51:15', '2022-01-06 19:51:15'),
(2089, 'ENT_V4K5XZIMDP', 'W01TYQI', 'BAELJ9VMQFOZ', '2022-01-06 19:51:15', '2022-01-06 19:51:15'),
(2090, 'ENT_SVCEZ0LFHH', 'W01TYQI', 'IJKYSN7XV64M', '2022-01-06 19:51:15', '2022-01-06 19:51:15'),
(2630, 'ENT_S6PIXXP5QQ', 'LBT9ZE9', '16S2N00COT8V', '2022-05-30 17:32:13', '2022-05-30 17:32:13'),
(2631, 'ENT_8D3J58OM2T', 'LBT9ZE9', '2YA0M5TBOM6Z', '2022-05-30 17:32:13', '2022-05-30 17:32:13'),
(1925, 'ENT_GAOQG847X6', 'LBT9ZE9', 'I4Z9IRALGVLM', '2022-01-02 03:33:29', '2022-01-02 03:33:29'),
(2579, 'ENT_W1803A9SNK', '0JZ44MJ', 'SKXKDCS8ZJFJ', '2022-01-22 20:10:26', '2022-01-22 20:10:26'),
(2590, 'ENT_W3P570Q045', 'R42UA95', 'RCJNZMT80IOF', '2022-03-14 05:02:59', '2022-03-14 05:02:59'),
(2591, 'ENT_CWZ4Z5OGKH', 'R42UA95', 'YVSM6KEBRR5H', '2022-03-14 05:02:59', '2022-03-14 05:02:59'),
(2592, 'ENT_33DZHYU7PE', 'R42UA95', 'B7HXATTRUT4V', '2022-03-14 05:03:00', '2022-03-14 05:03:00'),
(2593, 'ENT_I6IB2F03T1', 'R42UA95', 'JM0MW4FTVNFO', '2022-03-14 05:03:00', '2022-03-14 05:03:00'),
(2594, 'ENT_KFIUPVDRD1', 'R42UA95', 'TQJMRMQVLSCP', '2022-03-14 05:03:00', '2022-03-14 05:03:00'),
(2595, 'ENT_V81WAZ3NZ0', 'R42UA95', 'TQHWIMH9MCRI', '2022-03-14 05:03:00', '2022-03-14 05:03:00'),
(2596, 'ENT_LQWRXSWRPS', 'R42UA95', 'TZIWY15X6OZP', '2022-03-14 05:03:00', '2022-03-14 05:03:00'),
(2597, 'ENT_J22E5YO597', 'R42UA95', 'JK7ZODO1IKS4', '2022-03-14 05:03:00', '2022-03-14 05:03:00'),
(2598, 'ENT_JW6ADC1DJY', 'R42UA95', 'MUDMZYZZZPHT', '2022-03-14 05:03:00', '2022-03-14 05:03:00'),
(2599, 'ENT_SW71X751F1', 'R42UA95', 'JCUZZAMMTU0W', '2022-03-14 05:03:00', '2022-03-14 05:03:00'),
(2066, 'ENT_WG8D7O8A0S', 'SNUG0G1', 'RXAR8R7FWBZK', '2022-01-05 15:09:45', '2022-01-05 15:09:45'),
(2067, 'ENT_6AIU5CCENX', 'SNUG0G1', 'ELX5VJYZWFHJ', '2022-01-05 15:09:45', '2022-01-05 15:09:45'),
(2068, 'ENT_NMRYM9YMKR', 'SNUG0G1', 'BZOFRRQ2RJIY', '2022-01-05 15:09:45', '2022-01-05 15:09:45'),
(2069, 'ENT_FKW1WLOBH7', 'SNUG0G1', 'XCVKQ0QAT4A5', '2022-01-05 15:09:45', '2022-01-05 15:09:45'),
(2070, 'ENT_F0L7E6AD0K', 'SNUG0G1', 'TMLYU0CJW55C', '2022-01-05 15:09:46', '2022-01-05 15:09:46'),
(2071, 'ENT_PKT63PG8HA', 'SNUG0G1', 'UYUTVZSX5ZYO', '2022-01-05 15:09:46', '2022-01-05 15:09:46'),
(2072, 'ENT_DICC8FNEME', 'SNUG0G1', 'H5UWYPYTKIWH', '2022-01-05 15:09:46', '2022-01-05 15:09:46'),
(2073, 'ENT_0DBU2EZD8B', 'SNUG0G1', 'YL5D51PWC2HN', '2022-01-05 15:09:46', '2022-01-05 15:09:46'),
(2074, 'ENT_0B901NEXIG', 'SNUG0G1', '29MF6NZYGR6W', '2022-01-05 15:09:48', '2022-01-05 15:09:48'),
(2075, 'ENT_ZR4YM0AV06', 'SNUG0G1', 'CJAR8MFGVZBY', '2022-01-05 15:09:48', '2022-01-05 15:09:48'),
(2093, 'ENT_5J9DYXWK98', 'LBT9ZE9', 'QCQYMCY7RDPD', '2022-01-06 20:01:42', '2022-01-06 20:01:42'),
(2629, 'ENT_P31RDCZ0E9', 'LBT9ZE9', 'JTRX76PGZ0RD', '2022-05-30 17:32:13', '2022-05-30 17:32:13'),
(2431, 'ENT_0DR0SZZ6KZ', '6W7BNAZ', 'UCT5JSJUAULR', '2022-01-06 22:41:03', '2022-01-06 22:41:03'),
(2432, 'ENT_GSOO9RZLUC', '6W7BNAZ', 'YSZX60P0Q2GX', '2022-01-06 22:41:03', '2022-01-06 22:41:03'),
(2433, 'ENT_UX11NBBHTX', '6W7BNAZ', 'TJWXYSMJ5AAD', '2022-01-06 22:41:03', '2022-01-06 22:41:03'),
(2434, 'ENT_UKN4KXEF3X', '6W7BNAZ', '2IHRF8POKLVL', '2022-01-06 22:41:03', '2022-01-06 22:41:03'),
(2435, 'ENT_JJUQXI05TJ', '6W7BNAZ', 'YQXYVKAQPJEN', '2022-01-06 22:41:03', '2022-01-06 22:41:03'),
(2436, 'ENT_LT5H14O4FG', '6W7BNAZ', '3PJJSOAMY6YF', '2022-01-06 22:41:03', '2022-01-06 22:41:03'),
(2437, 'ENT_68735QGEYK', '6W7BNAZ', '54TPJX42A24S', '2022-01-06 22:41:03', '2022-01-06 22:41:03'),
(2438, 'ENT_SRO0SMBINX', '6W7BNAZ', 'EPHBMTTM0TGC', '2022-01-06 22:41:03', '2022-01-06 22:41:03'),
(2439, 'ENT_NZ68HZ0L75', '6W7BNAZ', 'VQ6AFY7YA91I', '2022-01-06 22:41:03', '2022-01-06 22:41:03'),
(2440, 'ENT_CDW0RID6FP', '6W7BNAZ', 'NIONJXID45NV', '2022-01-06 22:41:03', '2022-01-06 22:41:03'),
(2441, 'ENT_AIHEB7WPLH', '6W7BNAZ', '1VORPIXTGVB6', '2022-01-06 22:41:03', '2022-01-06 22:41:03'),
(2442, 'ENT_TDSRESKLJL', '6W7BNAZ', 'PF4AQFMDI3WD', '2022-01-06 22:41:03', '2022-01-06 22:41:03'),
(2443, 'ENT_TDGDUWGL3B', '6W7BNAZ', '8ZJI9KZLBEQ6', '2022-01-06 22:41:03', '2022-01-06 22:41:03'),
(2445, 'ENT_GO7VTYS37E', '6W7BNAZ', 'LEUVKWHGS6PG', '2022-01-06 22:41:03', '2022-01-06 22:41:03'),
(2444, 'ENT_LL8NVMTQQ0', '6W7BNAZ', 'ZYNJSGVCAX7E', '2022-01-06 22:41:03', '2022-01-06 22:41:03'),
(2446, 'ENT_0P0S9ZIARB', '6W7BNAZ', 'XQXALM1Y2SBF', '2022-01-06 22:41:04', '2022-01-06 22:41:04'),
(2447, 'ENT_0RH22LHFKG', '6W7BNAZ', '3GQJK4J9CHAC', '2022-01-06 22:41:04', '2022-01-06 22:41:04'),
(2448, 'ENT_D4YCLMFLI0', '6W7BNAZ', 'MUHK2WGO9HDD', '2022-01-06 22:41:04', '2022-01-06 22:41:04'),
(2449, 'ENT_L7XLYJ7X8S', '6W7BNAZ', 'J6DSDCJU8TGL', '2022-01-06 22:41:04', '2022-01-06 22:41:04'),
(2450, 'ENT_7LZGQGKS7R', '6W7BNAZ', 'HWXH4Q6XNIRZ', '2022-01-06 22:41:04', '2022-01-06 22:41:04'),
(2569, 'ENT_0CL5T3EQ90', '0JZ44MJ', '1ZJEPJL2K9T0', '2022-01-22 20:10:26', '2022-01-22 20:10:26'),
(2570, 'ENT_U4GY1BB7GP', '0JZ44MJ', 'PSSCOAEAE6SA', '2022-01-22 20:10:26', '2022-01-22 20:10:26'),
(2571, 'ENT_RXRISKI2B7', '0JZ44MJ', '6NGYYDZYDS0X', '2022-01-22 20:10:26', '2022-01-22 20:10:26'),
(2572, 'ENT_KVI7FLBRJB', '0JZ44MJ', '7KJ9YVCUIHFH', '2022-01-22 20:10:26', '2022-01-22 20:10:26'),
(2573, 'ENT_SX87HNF66C', '0JZ44MJ', 'YELW0TNW5D02', '2022-01-22 20:10:26', '2022-01-22 20:10:26'),
(2574, 'ENT_FBHDOE4CZN', '0JZ44MJ', 'TSFNNBPQLOV9', '2022-01-22 20:10:26', '2022-01-22 20:10:26'),
(2575, 'ENT_GVL7RWCZFN', '0JZ44MJ', 'DXXZKKGZNV0F', '2022-01-22 20:10:26', '2022-01-22 20:10:26'),
(2576, 'ENT_AEAPALFN3O', '0JZ44MJ', '4K1W2E7OGL7E', '2022-01-22 20:10:26', '2022-01-22 20:10:26'),
(2577, 'ENT_8DZT0KJ69D', '0JZ44MJ', '7YYZEFMZYLUE', '2022-01-22 20:10:26', '2022-01-22 20:10:26'),
(2578, 'ENT_S7VZILJ4OW', '0JZ44MJ', 'PHCVWT2GQBVZ', '2022-01-22 20:10:26', '2022-01-22 20:10:26'),
(2580, 'ENT_BSTJ0CMOXR', '0JZ44MJ', 'BJDBGDDKQNWH', '2022-01-22 20:10:26', '2022-01-22 20:10:26'),
(2581, 'ENT_KNP3XJ6N05', '0JZ44MJ', 'U3PCXCWRGTOC', '2022-01-22 20:10:26', '2022-01-22 20:10:26'),
(2582, 'ENT_5YEDXXZ5MM', '0JZ44MJ', 'CWFR8O84R8UW', '2022-01-22 20:10:26', '2022-01-22 20:10:26'),
(2583, 'ENT_DKMK937RFM', '0JZ44MJ', 'FBLI5OM5HFOY', '2022-01-22 20:10:26', '2022-01-22 20:10:26'),
(2584, 'ENT_7FZCF3RAY9', '0JZ44MJ', 'KP8OVACPPZNP', '2022-01-22 20:10:26', '2022-01-22 20:10:26'),
(2585, 'ENT_UHS11SD0P8', '0JZ44MJ', 'JC9NXILVNKAO', '2022-01-22 20:10:26', '2022-01-22 20:10:26'),
(2586, 'ENT_O4DD3FOOQ7', '0JZ44MJ', 'ETNVKHXBNAMW', '2022-01-22 20:10:26', '2022-01-22 20:10:26'),
(2587, 'ENT_13UUM1L74U', '0JZ44MJ', '2UT3JU7GI63S', '2022-01-22 20:10:26', '2022-01-22 20:10:26'),
(2588, 'ENT_QAMX878JH6', '0JZ44MJ', '04ZHLFUEU9IM', '2022-01-22 20:10:26', '2022-01-22 20:10:26'),
(2589, 'ENT_R2TACGWKTO', 'UYTB0JL', '6HVATDDRRUUU', '2022-03-01 12:51:22', '2022-03-01 12:51:22'),
(2610, 'ENT_9G094JHMT6', 'AQG55R5', 'JR1V3JAFFZHY', '2022-05-23 04:59:23', '2022-05-23 04:59:23'),
(2611, 'ENT_EQI3VLCA4D', 'AQG55R5', '5KPSNKOO5CKF', '2022-05-23 04:59:23', '2022-05-23 04:59:23'),
(2612, 'ENT_VH8Y9OSHD0', 'AQG55R5', 'ISUVQMPJ8SY1', '2022-05-23 04:59:23', '2022-05-23 04:59:23'),
(2613, 'ENT_HJ0Y733J57', 'AQG55R5', 'VWUOLQUMUGZ3', '2022-05-23 04:59:23', '2022-05-23 04:59:23'),
(2614, 'ENT_UPS4JRFIO3', 'AQG55R5', 'W3T4VUUDHGHB', '2022-05-23 04:59:23', '2022-05-23 04:59:23'),
(2615, 'ENT_4QWEJ72K64', 'AQG55R5', 'AKUG4GCQK7WL', '2022-05-23 04:59:23', '2022-05-23 04:59:23'),
(2616, 'ENT_D0Y4RFA9EG', 'AQG55R5', '6VRZBK7SFKUN', '2022-05-23 04:59:23', '2022-05-23 04:59:23'),
(2617, 'ENT_S3UT61YULM', 'AQG55R5', 'MFXLRSJ77UJU', '2022-05-23 04:59:23', '2022-05-23 04:59:23'),
(2618, 'ENT_XHOTYS9QHG', 'AQG55R5', '1NAGEJPPLZHO', '2022-05-23 04:59:23', '2022-05-23 04:59:23'),
(2619, 'ENT_40B0O6LE1S', 'AQG55R5', 'RYZNLDYX7ETE', '2022-05-23 04:59:23', '2022-05-23 04:59:23');

-- --------------------------------------------------------

--
-- Table structure for table `questions_tb`
--

CREATE TABLE `questions_tb` (
  `id` int(11) NOT NULL,
  `question_id` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `question_title` text COLLATE utf8_unicode_ci NOT NULL,
  `option_a` varchar(1028) COLLATE utf8_unicode_ci NOT NULL,
  `option_b` varchar(1028) COLLATE utf8_unicode_ci NOT NULL,
  `option_c` varchar(1028) COLLATE utf8_unicode_ci NOT NULL,
  `option_d` varchar(1028) COLLATE utf8_unicode_ci NOT NULL,
  `answer` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `info_answer` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'This is for the correctly accepted answer for essay type questions.',
  `image` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `points` tinyint(2) NOT NULL,
  `hints` text COLLATE utf8_unicode_ci NOT NULL,
  `question_added_by` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `questions_tb`
--

INSERT INTO `questions_tb` (`id`, `question_id`, `question_title`, `option_a`, `option_b`, `option_c`, `option_d`, `answer`, `info_answer`, `image`, `points`, `hints`, `question_added_by`, `date_updated`, `date_created`) VALUES
(93, 'XZF5A2GOBLPU', 'What is Baba Suwe\'s real name?', 'Babatunde Omidina', 'Babatunde Babasakin', 'Baba Suwe', 'Baby Kings', 'option_a', '', 'image_question.png', 0, '', 'USR_UTM3XFRFK1', '2021-12-04 22:00:17', '2021-12-04 19:58:18'),
(92, '1VXG3MGOKIY7', 'If this is it then I will make it...', 'One option', 'Another option', 'Another one', 'Maybe one other', 'option_a', '', 'image_question.png', 0, '', 'USR_UTM3XFRFK1', '2021-12-04 21:54:38', '2021-12-04 12:55:21'),
(87, 'A73KA2LVLHLE', 'Who is the American President?', 'werrrw', 'rerw', 'erwrwer', 'wrer', 'option_d', '', '1638542444_95affb663dfe9a55444c.jpg', 0, '', 'USR_UTM3XFRFK1', '2021-12-10 17:15:20', '2021-12-03 15:34:07'),
(111, 'ULA1AFT8STZA', 'ewewrtrtt', '', '', '', '', 'option_b', '', 'image_question.png', 0, '', 'USR_UTM3XFRFK1', '2021-12-10 17:13:16', '2021-12-10 17:12:20'),
(88, '3SB3QNXRS6P2', 'What does the abbreviation USSR mean?', 'Union of Soviet Socialist Republic', 'United States Security Resolution', 'United Souls of Saint Rachael', 'Unity Show Show Rock', 'option_b', '', '1638542850_b7325425b86e56e39518.png', 0, '', 'USR_UTM3XFRFK1', '2021-12-04 21:55:43', '2021-12-03 15:44:19'),
(89, 'HNDG5LZXRELD', 'Heyyoooooooooooooooooooooooo', 'Hello 789', 'Hiya', 'Haloo', 'Huh', 'option_c', '', '1638549332_14a7734c15a13b12d890.png', 0, '', 'USR_UTM3XFRFK1', '2021-12-04 21:54:43', '2021-12-03 15:47:16'),
(90, 'SDYXRINC86BM', 'Hello, I am the third question.', 'Hi I am here', 'Hiya', 'Hooooo22222', 'Haaaaa', 'option_d', '', 'image_question.png', 0, '', 'USR_UTM3XFRFK1', '2021-12-04 21:54:54', '2021-12-04 02:27:25'),
(91, '6JUL0ULTC05B', 'Another question...', 'Person', 'Animal', 'Joy', 'Part', 'option_d', '', 'image_question.png', 0, '', 'USR_UTM3XFRFK1', '2021-12-04 19:18:58', '2021-12-04 12:54:35'),
(94, 'FDOREFKBOVVL', '<p>Solve the equation <img alt=\"x^{2}+2x+1=0\" data-cke-saved-src=\"http://latex.codecogs.com/gif.latex?x%5E%7B2%7D&amp;plus;2x&amp;plus;1%3D0\" src=\"http://latex.codecogs.com/gif.latex?x%5E%7B2%7D&amp;plus;2x&amp;plus;1%3D0\"></p>', '<p><img alt=\"x=-1\" data-cke-saved-src=\"http://latex.codecogs.com/gif.latex?x%3D-1\" src=\"http://latex.codecogs.com/gif.latex?x%3D', '<p><img alt=\"x=+1\" data-cke-saved-src=\"http://latex.codecogs.com/gif.latex?x%3D&amp;plus;1\" src=\"http://latex.codecogs.com/gif.l', '<p><img alt=\"x=2\" data-cke-saved-src=\"http://latex.codecogs.com/gif.latex?x%3D2\" src=\"http://latex.codecogs.com/gif.latex?x%3D2\"', '<p><img alt=\"x=-2\" data-cke-saved-src=\"http://latex.codecogs.com/gif.latex?x%3D-2\" src=\"http://latex.codecogs.com/gif.latex?x%3D', 'option_a', '', '1638881121_7f28b28a9d7cbdf23c3a.jpg', 0, '', 'USR_UTM3XFRFK1', '2021-12-11 18:56:55', '2021-12-06 12:33:43'),
(95, 'SX8BARMSYFKV', 'What is the first few words in the American Constitution?', 'We the People', 'Preamble', 'us America', 'Hi I am', 'option_a', '', 'image_question.png', 0, '', 'USR_UTM3XFRFK1', '2021-12-06 12:34:19', '2021-12-06 12:33:43'),
(96, 'CHMWWJ4ESISV', '<p>What does <strong>ratify </strong>mean? <img alt=\"x=-3^{-2} + \\frac{2}{3}\" data-cke-saved-src=\"http://latex.codecogs.com/gif.latex?x%3D-3%5E%7B-2%7D%20&amp;plus;%20%5Cfrac%7B2%7D%7B3%7D\" src=\"http://latex.codecogs.com/gif.latex?x%3D-3%5E%7B-2%7D%20&amp;', '<p><strong>Approve</strong></p>', '<p><img alt=\"\\frac{4}{-5}\" src=\"http://latex.codecogs.com/gif.latex?%5Cfrac%7B4%7D%7B-5%7D\"></p>', '<p>Complaint</p>', '<p>Democracy</p>', 'option_c', '', 'image_question.png', 0, '', 'USR_UTM3XFRFK1', '2021-12-11 19:09:12', '2021-12-06 12:33:43'),
(97, 'RX2SFC3DA8O4', '<p>Where did Democracy come from?</p>', '<p>Rome</p>', '<p><img alt=\"x=\\frac{2}{3}\" data-cke-saved-src=\"http://latex.codecogs.com/gif.latex?x%3D%5Cfrac%7B2%7D%7B3%7D\" src=\"http://latex', '<p><img alt=\"x=\\frac{4}{5}\" src=\"http://latex.codecogs.com/gif.latex?x%3D%5Cfrac%7B4%7D%7B5%7D\"><br></p>', '<p>Virginia</p>', 'option_c', '', 'image_question.png', 0, '', 'USR_UTM3XFRFK1', '2021-12-11 19:14:47', '2021-12-06 12:33:44'),
(98, 'HXSB1T2AGUE0', '<p>When was the declaration of Independence written? <img alt=\"x=\\sqrt{4}\" data-cke-saved-src=\"http://latex.codecogs.com/gif.latex?x%3D%5Csqrt%7B4%7D\" src=\"http://latex.codecogs.com/gif.latex?x%3D%5Csqrt%7B4%7D\"></p>', '<p>July 4, <img alt=\"x=_{4}^{5}\" src=\"http://latex.codecogs.com/gif.latex?x%3D_%7B4%7D%5E%7B5%7D\"><br></p>', '<p>June 4,<img alt=\"x=2\\tfrac{3}{5}\" data-cke-saved-src=\"http://latex.codecogs.com/gif.latex?x%3D2%5Ctfrac%7B3%7D%7B5%7D\" src=\"h', '<p>October 4, 1989<br></p>', '<p>July 4, 1776</p>', 'option_d', '', 'image_question.png', 0, '', 'USR_UTM3XFRFK1', '2021-12-11 19:20:08', '2021-12-06 12:33:44'),
(99, 'W0H6WZYOAYZZ', '<p>What language was the Magna Carta?</p>', '<p>American</p>', '<p><img alt=\"\" data-cke-saved-src=\"https://quicklatex.com/cache3/82/ql_0676ade0cd04eda37aeb3d0bcd427682_l3.png\" src=\"https://qui', '<p>Latin</p>', '<p>French</p>', 'option_c', '', 'image_question.png', 0, '', 'USR_UTM3XFRFK1', '2021-12-11 19:36:44', '2021-12-06 12:33:44'),
(100, 'JCYAM5WN5LST', '<p>What is a <strong>democracy</strong>?</p><p><br></p>', '<p>A government run by the people</p>', '<p>A government run by a King and/or Queen</p>', '<p>A government run by one ruler chosen by its people</p>', '<p>A government of tyrants</p>', 'option_c', '', 'image_question.png', 0, '', 'USR_UTM3XFRFK1', '2021-12-12 14:06:06', '2021-12-06 12:33:44'),
(101, 'KVWETGRIR1AC', '<p>Which of these are correct in Athens rules/laws?</p>', '<p>Limited Democracy</p>', '<p>No slaves</p>', '<p>Women had rights</p>', '<p>Women had no rights</p>', 'option_c', '', 'image_question.png', 0, '', 'USR_UTM3XFRFK1', '2021-12-11 17:31:36', '2021-12-06 12:33:44'),
(102, '0NCMAHJ306HP', '_________ wanted to expand its borders into Greece\'s colonies.', 'Athens', 'Paris', 'Persia', 'Sparta', 'option_c', '', 'image_question.png', 0, '', 'USR_UTM3XFRFK1', '2021-12-06 12:36:07', '2021-12-06 12:33:44'),
(103, 'NLKKOQRX6XYG', '<p>What is an illiad?</p>', '<p>The blind poet who wrote two famous epic poems</p>', '<p>A poem of Odysseus trying to return home after the Trojan war.</p>', '<p>A poem of Achilles and the Trojan war.</p>', '<p>A poem of the Trojan war.</p>', 'option_b', '', 'image_question.png', 0, '', 'USR_UTM3XFRFK1', '2021-12-11 17:31:36', '2021-12-06 12:33:44'),
(113, 'UQZH1O0VFL9W', '<p><strong>Joseph </strong>will become a great guy<img alt=\"x^{2} + y^{2} = 1\" data-cke-saved-src=\"http://latex.codecogs.com/gif.latex?x%5E%7B2%7D%20&amp;plus;%20y%5E%7B2%7D%20%3D%201\" src=\"http://latex.codecogs.com/gif.latex?x%5E%7B2%7D%20&amp;plus;%20y%5E%7B2%7D%20%3D%201\"></p>', '<p><em>sretetere<img alt=\"\\sqrt{4} + 3\\sqrt{9}\" data-cke-saved-src=\"http://latex.codecogs.com/gif.latex?%5Csqrt%7B4%7D%20&amp;plus;%203%5Csqrt%7B9%7D\" src=\"http://latex.codecogs.com/gif.latex?%5Csqrt%7B4%7D%20&amp;plus;%203%5Csqrt%7B9%7D\"> h</em></p>', '<p>trtete<img alt=\"2\\tfrac{3}{5}\" data-cke-saved-src=\"http://latex.codecogs.com/gif.latex?2%5Ctfrac%7B3%7D%7B5%7D\" src=\"http://latex.codecogs.com/gif.latex?2%5Ctfrac%7B3%7D%7B5%7D\"></p>', '<p>ertetet <img alt=\"\\frac{2}{3} + \\frac{5}{9}\" data-cke-saved-src=\"http://latex.codecogs.com/gif.latex?%5Cfrac%7B2%7D%7B3%7D%20&amp;plus;%20%5Cfrac%7B5%7D%7B9%7D\" src=\"http://latex.codecogs.com/gif.latex?%5Cfrac%7B2%7D%7B3%7D%20&amp;plus;%20%5Cfrac%7B5%7D%7B9%7D\"></p>', '<p>etete</p>', 'option_a', '', 'image_question.png', 0, '', 'USR_UTM3XFRFK1', '2021-12-17 20:14:15', '2021-12-11 17:13:06'),
(114, 'EERVQGRTM38A', '<p>fgdgretretrt</p>', '<p>fgfdgdfgfddg</p>', '<p>fdfgfdgf</p>', '<p>gfdgdgfd</p>', '<p>dgdfggdgf</p>', '', '', 'image_question.png', 0, '', 'USR_UTM3XFRFK1', '2021-12-11 17:39:36', '2021-12-11 17:38:55'),
(115, 'KMWGWBMAI2VW', '<p>another question<img alt=\"x^{2} + y^{2} = 1\" src=\"http://latex.codecogs.com/gif.latex?x%5E%7B2%7D%20&amp;plus;%20y%5E%7B2%7D%20%3D%201\"><br></p>', '<p>hut</p>', '<p>hurt</p>', '<p>hat<img alt=\"\\frac{2}{3} + \\frac{4}{7}\" src=\"http://latex.codecogs.com/gif.latex?%5Cfrac%7B2%7D%7B3%7D%20&amp;plus;%20%5Cfrac', '<p>hate</p>', 'option_b', '', 'image_question.png', 0, '', 'USR_UTM3XFRFK1', '2021-12-12 10:10:02', '2021-12-11 17:39:36'),
(116, 'KPJCMRUI08IP', '<p>Evaluate <img alt=\"\\frac{2}{3} + \\frac{4}{3} = ?\" data-cke-saved-src=\"http://latex.codecogs.com/gif.latex?%5Cfrac%7B2%7D%7B3%7D%20&amp;plus;%20%5Cfrac%7B4%7D%7B3%7D%20%3D%20%3F\" src=\"http://latex.codecogs.com/gif.latex?%5Cfrac%7B2%7D%7B3%7D%20&amp;plus;', '<p><img alt=\"x=1\" data-cke-saved-src=\"http://latex.codecogs.com/gif.latex?x%3D1\" src=\"http://latex.codecogs.com/gif.latex?x%3D1\"', '<p><img alt=\"x=2\" data-cke-saved-src=\"http://latex.codecogs.com/gif.latex?x%3D2\" src=\"http://latex.codecogs.com/gif.latex?x%3D2\"', '<p><img alt=\"x=4\" data-cke-saved-src=\"http://latex.codecogs.com/gif.latex?x%3D4\" src=\"http://latex.codecogs.com/gif.latex?x%3D4\"', '<p><img alt=\"x=-2\" data-cke-saved-src=\"http://latex.codecogs.com/gif.latex?x%3D-2\" src=\"http://latex.codecogs.com/gif.latex?x%3D', 'option_b', '', 'image_question.png', 0, '', 'USR_UTM3XFRFK1', '2021-12-11 19:04:03', '2021-12-11 19:00:03'),
(117, 'EUUT7MCH07KL', '<p>Find the 6th term of the sequence <img alt=\"\\frac{2}{3}, \\frac{7}{15}, \\frac{4}{15}, ...\" data-cke-saved-src=\"http://latex.codecogs.com/gif.latex?%5Cfrac%7B2%7D%7B3%7D%2C%20%5Cfrac%7B7%7D%7B15%7D%2C%20%5Cfrac%7B4%7D%7B15%7D%2C%20...\" src=\"http://latex.codecogs.com/gif.latex?%5Cfrac%7B2%7D%7B3%7D%2C%20%5Cfrac%7B7%7D%7B15%7D%2C%20%5Cfrac%7B4%7D%7B15%7D%2C%20...\"></p>', '<p><img alt=\"-\\frac{1}{3}\" data-cke-saved-src=\"http://latex.codecogs.com/gif.latex?-%5Cfrac%7B1%7D%7B3%7D\" src=\"http://latex.codecogs.com/gif.latex?-%5Cfrac%7B1%7D%7B3%7D\"></p>', '<p><img alt=\"-\\frac{1}{5}\" data-cke-saved-src=\"http://latex.codecogs.com/gif.latex?-%5Cfrac%7B1%7D%7B5%7D\" src=\"http://latex.codecogs.com/gif.latex?-%5Cfrac%7B1%7D%7B5%7D\"></p>', '<p><img alt=\"-\\frac{1}{15}\" data-cke-saved-src=\"http://latex.codecogs.com/gif.latex?-%5Cfrac%7B1%7D%7B15%7D\" src=\"http://latex.codecogs.com/gif.latex?-%5Cfrac%7B1%7D%7B15%7D\"></p>', '<p><img alt=\"\\frac{1}{9}\" data-cke-saved-src=\"http://latex.codecogs.com/gif.latex?%5Cfrac%7B1%7D%7B9%7D\" src=\"http://latex.codecogs.com/gif.latex?%5Cfrac%7B1%7D%7B9%7D\"></p>', 'option_a', '', 'image_question.png', 0, '', 'USR_UTM3XFRFK1', '2021-12-12 12:14:25', '2021-12-12 11:04:33'),
(118, 'LGGJ4KIIKOLL', '<p>Find the value of <img alt=\"x\" data-cke-saved-src=\"http://latex.codecogs.com/gif.latex?x\" src=\"http://latex.codecogs.com/gif.latex?x\"> if <img alt=\"\\frac{\\sqrt{2}}{x+\\sqrt{2}} = \\frac{1}{x-\\sqrt{2}}\" data-cke-saved-src=\"http://latex.codecogs.com/gif.latex?%5Cfrac%7B%5Csqrt%7B2%7D%7D%7Bx&amp;plus;%5Csqrt%7B2%7D%7D%20%3D%20%5Cfrac%7B1%7D%7Bx-%5Csqrt%7B2%7D%7D\" src=\"http://latex.codecogs.com/gif.latex?%5Cfrac%7B%5Csqrt%7B2%7D%7D%7Bx&amp;plus;%5Csqrt%7B2%7D%7D%20%3D%20%5Cfrac%7B1%7D%7Bx-%5Csqrt%7B2%7D%7D\"></p>', '<p><img alt=\"3\\sqrt{2} - 4\" data-cke-saved-src=\"http://latex.codecogs.com/gif.latex?3%5Csqrt%7B2%7D%20-%204\" src=\"http://latex.codecogs.com/gif.latex?3%5Csqrt%7B2%7D%20-%204\"></p>', '<p><img alt=\"3\\sqrt{2} + 4\" data-cke-saved-src=\"http://latex.codecogs.com/gif.latex?3%5Csqrt%7B2%7D%20&amp;plus;%204\" src=\"http://latex.codecogs.com/gif.latex?3%5Csqrt%7B2%7D%20&amp;plus;%204\"></p>', '<p><img alt=\"4 - 3\\sqrt{2}\" data-cke-saved-src=\"http://latex.codecogs.com/gif.latex?4%20-%203%5Csqrt%7B2%7D\" src=\"http://latex.codecogs.com/gif.latex?4%20-%203%5Csqrt%7B2%7D\"></p>', '<p><img alt=\"4\\sqrt{2} + 3\" data-cke-saved-src=\"http://latex.codecogs.com/gif.latex?4%5Csqrt%7B2%7D%20&amp;plus;%203\" src=\"http://latex.codecogs.com/gif.latex?4%5Csqrt%7B2%7D%20&amp;plus;%203\"></p>', 'option_b', '', 'image_question.png', 0, '', 'USR_UTM3XFRFK1', '2021-12-12 12:09:29', '2021-12-12 11:04:33'),
(119, '8MMRROR6N510', '<p>If&nbsp;<img alt=\"x\" data-cke-saved-src=\"http://latex.codecogs.com/gif.latex?x\" src=\"http://latex.codecogs.com/gif.latex?x\"> varies inversely as&nbsp;<img alt=\"y\" data-cke-saved-src=\"http://latex.codecogs.com/gif.latex?y\" src=\"http://latex.codecogs.com/gif.latex?y\"> and&nbsp;<img alt=\"y\" data-cke-saved-src=\"http://latex.codecogs.com/gif.latex?y\" src=\"http://latex.codecogs.com/gif.latex?y\"> varies directly as <img alt=\"z\" data-cke-saved-src=\"http://latex.codecogs.com/gif.latex?z\" src=\"http://latex.codecogs.com/gif.latex?z\">, what is the relationship between&nbsp;<img alt=\"x\" data-cke-saved-src=\"http://latex.codecogs.com/gif.latex?x\" src=\"http://latex.codecogs.com/gif.latex?x\"> and <img alt=\"z\" data-cke-saved-src=\"http://latex.codecogs.com/gif.latex?z\" src=\"http://latex.codecogs.com/gif.latex?z\">?</p>', '<p><img alt=\"x \\alpha z\" data-cke-saved-src=\"http://latex.codecogs.com/gif.latex?x%20%5Calpha%20z\" src=\"http://latex.codecogs.com/gif.latex?x%20%5Calpha%20z\"></p>', '<p><img alt=\"x \\alpha \\frac{1}{z}\" data-cke-saved-src=\"http://latex.codecogs.com/gif.latex?x%20%5Calpha%20%5Cfrac%7B1%7D%7Bz%7D\" src=\"http://latex.codecogs.com/gif.latex?x%20%5Calpha%20%5Cfrac%7B1%7D%7Bz%7D\"></p>', '<p><img alt=\"x\\alpha z^{2}\" data-cke-saved-src=\"http://latex.codecogs.com/gif.latex?x%5Calpha%20z%5E%7B2%7D\" src=\"http://latex.codecogs.com/gif.latex?x%5Calpha%20z%5E%7B2%7D\"></p>', '<p><img alt=\"x\\alpha \\frac{1}{z^{2}}\" data-cke-saved-src=\"http://latex.codecogs.com/gif.latex?x%5Calpha%20%5Cfrac%7B1%7D%7Bz%5E%7B2%7D%7D\" src=\"http://latex.codecogs.com/gif.latex?x%5Calpha%20%5Cfrac%7B1%7D%7Bz%5E%7B2%7D%7D\"></p>', 'option_b', '', 'image_question.png', 0, '', 'USR_UTM3XFRFK1', '2021-12-12 12:11:11', '2021-12-12 11:16:08'),
(120, 'BAINFFRHEKIP', '<p>The ages of Tunde and Ola are in the ratio 1:2. If the ratio of Ola\'s age to Musa\'s age is 4:5, what is the ratio of Tunde\'s age to Musa\'s age?</p>', '<p>1:4</p>', '<p>1:5</p>', '<p>2:5</p>', '<p>5:2</p>', 'option_c', '', 'image_question.png', 0, '', 'USR_UTM3XFRFK1', '2021-12-12 12:13:54', '2021-12-12 11:23:56'),
(121, 'CLC6K9KLBB3U', '<p>If <img alt=\"M = \\left \\{ x: 3\\leqslant x < 8 \\right \\}\" data-cke-saved-src=\"http://latex.codecogs.com/gif.latex?M%20%3D%20%5Cleft%20%5C%7B%20x%3A%203%5Cleqslant%20x%20%3C%208%20%5Cright%20%5C%7D\" src=\"http://latex.codecogs.com/gif.latex?M%20%3D%20%5Cleft%20%5C%7B%20x%3A%203%5Cleqslant%20x%20%3C%208%20%5Cright%20%5C%7D\"> and <img alt=\"N = \\left \\{ x: 8 < x \\leq 12 \\right \\}\" data-cke-saved-src=\"http://latex.codecogs.com/gif.latex?N%20%3D%20%5Cleft%20%5C%7B%20x%3A%208%20%3C%20x%20%5Cleq%2012%20%5Cright%20%5C%7D\" src=\"http://latex.codecogs.com/gif.latex?N%20%3D%20%5Cleft%20%5C%7B%20x%3A%208%20%3C%20x%20%5Cleq%2012%20%5Cright%20%5C%7D\">, which of the following is true?</p><ol><li><img alt=\"8 \\epsilon M \\cap N\" data-cke-saved-src=\"http://latex.codecogs.com/gif.latex?8%20%5Cepsilon%20M%20%5Ccap%20N\" src=\"http://latex.codecogs.com/gif.latex?8%20%5Cepsilon%20M%20%5Ccap%20N\"></li><li><img alt=\"8 \\epsilon M \\cup N\" data-cke-saved-src=\"http://latex.codecogs.com/gif.latex?8%20%5Cepsilon%20M%20%5Ccup%20N\" src=\"http://late', '<p>3 only</p>', '<p>1 and 2 only</p>', '<p>2 and 3 only</p>', '<p>1, 2 and 3 only</p>', '', '', 'image_question.png', 0, '', 'USR_UTM3XFRFK1', '2021-12-12 11:28:00', '2021-12-12 11:23:56'),
(122, '6P6N818REV4F', '<p>Simplify <img alt=\"3x - (p - x) - (r - p)\" data-cke-saved-src=\"http://latex.codecogs.com/gif.latex?3x%20-%20%28p%20-%20x%29%20-%20%28r%20-%20p%29\" src=\"http://latex.codecogs.com/gif.latex?3x%20-%20%28p%20-%20x%29%20-%20%28r%20-%20p%29\">.</p>', '<p><img alt=\"2x - r\" data-cke-saved-src=\"http://latex.codecogs.com/gif.latex?2x%20-%20r\" src=\"http://latex.codecogs.com/gif.latex?2x%20-%20r\"></p>', '<p><img alt=\"2x + r\" data-cke-saved-src=\"http://latex.codecogs.com/gif.latex?2x%20&amp;plus;%20r\" src=\"http://latex.codecogs.com/gif.latex?2x%20&amp;plus;%20r\"></p>', '<p><img alt=\"4x - r\" data-cke-saved-src=\"http://latex.codecogs.com/gif.latex?4x%20-%20r\" src=\"http://latex.codecogs.com/gif.latex?4x%20-%20r\"></p>', '<p><img alt=\"2x - 2p - r\" data-cke-saved-src=\"http://latex.codecogs.com/gif.latex?2x%20-%202p%20-%20r\" src=\"http://latex.codecogs.com/gif.latex?2x%20-%202p%20-%20r\"></p>', 'option_c', '', 'image_question.png', 0, '', 'USR_UTM3XFRFK1', '2021-12-12 12:14:11', '2021-12-12 11:28:00'),
(123, 'KHYELX7DLXLP', '<p>An arc of a circle of radius 7.5cm is 7.5cm long. Find, correct to the nearest degree, the angle which the arc subtends at the centre of the circle. [Take <img alt=\"\\pi = \\frac{22}{7}\" data-cke-saved-src=\"http://latex.codecogs.com/gif.latex?%5Cpi%20%3D%20%5Cfrac%7B22%7D%7B7%7D\" src=\"http://latex.codecogs.com/gif.latex?%5Cpi%20%3D%20%5Cfrac%7B22%7D%7B7%7D\">].</p>', '<p><img alt=\"29^{o}\" data-cke-saved-src=\"http://latex.codecogs.com/gif.latex?29%5E%7Bo%7D\" src=\"http://latex.codecogs.com/gif.latex?29%5E%7Bo%7D\"></p>', '<p><img alt=\"57^{o}\" data-cke-saved-src=\"http://latex.codecogs.com/gif.latex?57%5E%7Bo%7D\" src=\"http://latex.codecogs.com/gif.latex?57%5E%7Bo%7D\"></p>', '<p><img alt=\"65^{o}\" data-cke-saved-src=\"http://latex.codecogs.com/gif.latex?65%5E%7Bo%7D\" src=\"http://latex.codecogs.com/gif.latex?65%5E%7Bo%7D\"></p>', '<p><img alt=\"115^{o}\" data-cke-saved-src=\"http://latex.codecogs.com/gif.latex?115%5E%7Bo%7D\" src=\"http://latex.codecogs.com/gif.latex?115%5E%7Bo%7D\"></p>', 'option_b', '', 'image_question.png', 0, '', 'USR_UTM3XFRFK1', '2021-12-12 12:16:03', '2021-12-12 11:32:42'),
(124, 'JNQNS3K2XDAR', '<p>The dimensions of a water tank are 13cm, 10cm and 70cm. If it is half-filled with water, calculate the volume of water in litres.</p>', '<p>4.55 litres</p>', '<p>7.50 litres</p>', '<p>8.10 litres</p>', '<p>9.55 litres</p>', 'option_a', '', 'image_question.png', 0, '', 'USR_UTM3XFRFK1', '2021-12-12 12:18:07', '2021-12-12 11:34:21'),
(125, 'A8ECOHJ2OXSW', '<p>Given that <img alt=\"\\cos 30^{o} = \\sin 60^{o} = \\frac{3}{2}\" data-cke-saved-src=\"http://latex.codecogs.com/gif.latex?%5Ccos%2030%5E%7Bo%7D%20%3D%20%5Csin%2060%5E%7Bo%7D%20%3D%20%5Cfrac%7B3%7D%7B2%7D\" src=\"http://latex.codecogs.com/gif.latex?%5Ccos%2030%5E%7Bo%7D%20%3D%20%5Csin%2060%5E%7Bo%7D%20%3D%20%5Cfrac%7B3%7D%7B2%7D\"> and <img alt=\"\\sin 30^{o} = \\cos 60^{o} = \\frac{1}{2}\" data-cke-saved-src=\"http://latex.codecogs.com/gif.latex?%5Csin%2030%5E%7Bo%7D%20%3D%20%5Ccos%2060%5E%7Bo%7D%20%3D%20%5Cfrac%7B1%7D%7B2%7D\" src=\"http://latex.codecogs.com/gif.latex?%5Csin%2030%5E%7Bo%7D%20%3D%20%5Ccos%2060%5E%7Bo%7D%20%3D%20%5Cfrac%7B1%7D%7B2%7D\">, evaluate <img alt=\"\\frac{\\tan 60}{1 - \\tan 30}\" data-cke-saved-src=\"http://latex.codecogs.com/gif.latex?%5Cfrac%7B%5Ctan%2060%7D%7B1%20-%20%5Ctan%2030%7D\" src=\"http://latex.codecogs.com/gif.latex?%5Cfrac%7B%5Ctan%2060%7D%7B1%20-%20%5Ctan%2030%7D\">.</p>', '<p><img alt=\"\\frac{9}{2}\" data-cke-saved-src=\"http://latex.codecogs.com/gif.latex?%5Cfrac%7B9%7D%7B2%7D\" src=\"http://latex.codecogs.com/gif.latex?%5Cfrac%7B9%7D%7B2%7D\"></p>', '<p><img alt=\"2 - \\sqrt{3}\" data-cke-saved-src=\"http://latex.codecogs.com/gif.latex?2%20-%20%5Csqrt%7B3%7D\" src=\"http://latex.codecogs.com/gif.latex?2%20-%20%5Csqrt%7B3%7D\"></p>', '<p><img alt=\"\\sqrt{3}\" data-cke-saved-src=\"http://latex.codecogs.com/gif.latex?%5Csqrt%7B3%7D\" src=\"http://latex.codecogs.com/gif.latex?%5Csqrt%7B3%7D\"></p>', '<p><img alt=\"-2\" data-cke-saved-src=\"http://latex.codecogs.com/gif.latex?-2\" src=\"http://latex.codecogs.com/gif.latex?-2\"></p>', 'option_a', '', 'image_question.png', 0, '', 'USR_UTM3XFRFK1', '2021-12-12 12:21:16', '2021-12-12 11:41:33'),
(126, 'XXIRW9QL0EXR', '<p>The average age of a group of 25 girls is 10years. If one girl, aged 12 years and 4 months joins the group, find the new average age of the group.</p>', '<p>10.01 years</p>', '<p>9.30 years</p>', '<p>8.07 years</p>', '<p>8.30 years</p>', 'option_a', '', 'image_question.png', 0, '', 'USR_UTM3XFRFK1', '2021-12-12 12:23:22', '2021-12-12 11:43:46'),
(127, '7KQUPZVQ3D1O', '<p>Three exterior angles of a polygon are <img alt=\"30^{o}\" data-cke-saved-src=\"http://latex.codecogs.com/gif.latex?30%5E%7Bo%7D\" src=\"http://latex.codecogs.com/gif.latex?30%5E%7Bo%7D\">, <img alt=\"40^{o}\" data-cke-saved-src=\"http://latex.codecogs.com/gif.latex?40%5E%7Bo%7D\" src=\"http://latex.codecogs.com/gif.latex?40%5E%7Bo%7D\"> and <img alt=\"60^{o}\" data-cke-saved-src=\"http://latex.codecogs.com/gif.latex?60%5E%7Bo%7D\" src=\"http://latex.codecogs.com/gif.latex?60%5E%7Bo%7D\">. If the remaining exterior angles are&nbsp;<img alt=\"46^{o}\" data-cke-saved-src=\"http://latex.codecogs.com/gif.latex?46%5E%7Bo%7D\" src=\"http://latex.codecogs.com/gif.latex?46%5E%7Bo%7D\"> each, name the polygon.</p>', '<p>Decagon</p>', '<p>Nonagon</p>', '<p>Octagon</p>', '<p>Hexagon</p>', 'option_c', '', 'image_question.png', 0, '', 'USR_UTM3XFRFK1', '2021-12-12 12:23:16', '2021-12-12 11:45:56'),
(148, 'XBQZSEEGABP4', '<p>The graph shows the number of nails in a sample of 200 packets from a factory.</p><p>How many packets contained fewer than 98 nails?</p>', '<p>24</p>', '<p>20</p>', '<p>30</p>', '<p>34</p>', 'option_b', '', '1639336729_f611ee860be9ad8d260b.png', 1, '', 'USR_UTM3XFRFK1', '2021-12-31 14:12:14', '2021-12-12 14:18:55'),
(149, 'SZCKN9L3ME15', '<p>Which of the following is an example of Reproduction?</p>', '<p>A population decrease in animals</p>', '<p>The movement of a mushroom</p>', '<p>Cells dying</p>', '<p>Plants pollinating</p>', 'option_c', '', 'image_question.png', 0, '', 'USR_UTM3XFRFK1', '2021-12-21 14:05:59', '2021-12-13 05:40:07'),
(147, 'R7ZZ9XR7JBU2', '<p>Ms. Long tracked the number and age of students that visited the library per month and recorded the data below. Where would the median fall?</p>', '<p>9 - 11</p>', '<p>12 - 14</p>', '<p>15 - 17</p>', '<p>18 - 20</p>', 'option_c', '', '1639336660_69b30e35b4675d891fb5.png', 1, '', 'USR_UTM3XFRFK1', '2021-12-31 14:12:14', '2021-12-12 14:18:55'),
(146, '3UIV6L8F7RDM', '<p>A florist recorded the number and cost of flower bouquets that were sold daily and recorded the data below. What is the frequency of a bouquet that cost at least $40?</p>', '<p>2</p>', '<p>15</p>', '<p>22</p>', '<p>37</p>', 'option_b', '', '1639336574_d6dd3e16d1b7a4208951.png', 1, '', 'USR_UTM3XFRFK1', '2021-12-31 14:12:14', '2021-12-12 14:18:55'),
(145, 'YAQ5PD2CXKUZ', '<p>Which interval shows the greatest number of pets?</p>', '<p>15 - 19</p>', '<p>0 - 4</p>', '<p>5 - 9</p>', '<p>10 - 14</p>', 'option_a', '', '1639336450_fe66500e43b2eca9debf.jpg', 1, '', 'USR_UTM3XFRFK1', '2021-12-31 14:12:14', '2021-12-12 14:14:15'),
(144, 'S7NXH6DYOSNV', '<p>How many students are represented by the histogram?</p>', '<p>Cannot be determined</p>', '<p>9</p>', '<p>31</p>', '<p>35</p>', 'option_c', '', '1639336305_4cdc06467958fd386f1d.png', 1, '', 'USR_UTM3XFRFK1', '2021-12-31 14:12:14', '2021-12-12 14:14:15'),
(143, 'TGNZVYHBDYNV', '<p>How many employees are there that make between $33,000 and $43,000?</p>', '<p>250</p>', '<p>500</p>', '<p>550</p>', '<p>750</p>', 'option_b', '', '1639336239_d5fb503a91f582e62475.png', 1, '', 'USR_UTM3XFRFK1', '2021-12-31 14:12:14', '2021-12-12 14:14:15'),
(142, 'TBRNKHHVEHZJ', '<p>How many cities have temperatures between 70 degrees and 99 degrees?</p>', '<p>44</p>', '<p>34</p>', '<p>26</p>', '<p>62</p>', 'option_a', '', '1639336200_133436dd5ae6d147fc77.png', 1, '', 'USR_UTM3XFRFK1', '2021-12-31 14:12:14', '2021-12-12 14:14:15'),
(141, 'FOVKDPJQQHFP', '<p>How many students have more than 1,000 songs on their MP3 player?</p>', '<p>5</p>', '<p>16</p>', '<p>10</p>', '<p>4</p>', 'option_b', '', '1639336133_3a9c5ac20329f340aef2.jpg', 1, '', 'USR_UTM3XFRFK1', '2021-12-31 14:12:14', '2021-12-12 14:08:58'),
(140, 'VUWTGYDZOFYR', '<p>Is a histogram the same as a bar graph?</p>', '<p>Yes, because they both use intervals.</p>', '<p>No, because a histogram displays numerical data while a bar graph displays categorical data.</p>', '<p>Yes, because they both use bars to display data.</p>', '<p>No, because a histogram displays categorical data while a bar graph displays numerical data.</p>', 'option_b', '', 'image_question.png', 1, '', 'USR_UTM3XFRFK1', '2021-12-31 14:12:14', '2021-12-12 14:08:02'),
(139, 'R0LVPJ8KTHNZ', '<p>The table shows the times, in minutes, that people waited in a supermarket queue.</p><p>What are the value of a, b, c and d respectively?</p>', '<p>2, 3, 5, 10</p>', '<p>0, 2, 5, 10</p>', '<p>2, 5, 10, 20</p>', '<p>16, 27, 39, 18</p>', 'option_a', '', '1639335416_d7fd8401574bafea7118.png', 1, '', 'USR_UTM3XFRFK1', '2021-12-31 14:12:14', '2021-12-12 13:57:43'),
(150, 'VVGFET3QBSNB', '<p>Democracy is what?</p>', '<p>Hello</p>', '<p>Hi</p>', '<p>Hullo</p>', '<p>Hah</p>', '', '', 'image_question.png', 0, '', 'USR_UTM3XFRFK1', '2021-12-17 20:03:00', '2021-12-17 20:02:53'),
(151, '7LK7XVDAB5EZ', '<p>What is Noun?</p>', '<p>Name of anything</p>', '<p>Name of animal</p>', '<p>Name of School</p>', '<p>Name of Object</p>', 'option_b', '', '1640000531_a50202a9442b87d5c5cb.jpg', 0, '', 'USR_UTM3XFRFK1', '2021-12-20 12:42:21', '2021-12-20 12:40:04'),
(152, 'I0KQQMWRB5NC', '<p>Who is the <strong>President </strong>of <em><u>Nigeria</u></em>?</p>', '<p>Abacha</p>', '<p>Buhari</p>', '<p>Tinubu</p>', '<p>Dangote</p>', 'option_b', '', 'image_question.png', 0, '', 'USR_UTM3XFRFK1', '2021-12-21 10:35:16', '2021-12-21 10:33:52'),
(153, 'ORZBUO5IKQUH', '<p>What is the name of the object in this picture?</p>', '<p>Ball</p>', '<p>Aeroplane</p>', '<p>Plate</p>', '<p>Land</p>', 'option_b', '', '1640079257_0909048b398270d022f1.jpg', 0, '', 'USR_UTM3XFRFK1', '2021-12-21 10:35:24', '2021-12-21 10:34:56'),
(154, 'FPPJUKFPSRRN', '<p>Hiya!!!</p>', '<p>Come here</p>', '<p>Come up</p>', '<p>Come down</p>', '<p>Come in</p>', 'option_b', '', 'image_question.png', 0, '', 'USR_UTM3XFRFK1', '2021-12-22 16:50:13', '2021-12-22 16:42:35'),
(155, '68KA4ML4957L', '<p>Here we go!</p>', '<p>Yes</p>', '<p>Here we go</p>', '<p>Option G</p>', '<p>Nah!</p>', 'option_c', '', 'image_question.png', 0, '', 'USR_UTM3XFRFK1', '2021-12-22 16:50:18', '2021-12-22 16:42:55'),
(156, 'TEOTYLBWUGGQ', '<p>Linda wants to consistently improve her teaching and ensure she is meeting all of her students\' needs. What strategy could she employ to achieve these goals?</p>', '<p>She could spend time obtaining feedback from students.</p>', '<p>She should let students wrestle with difficult material.</p>', '<p>She could maintain discipline and order above all else.</p>', '<p>She should ask students to monitor their own learning.</p>', 'option_a', 'null', 'image_question.png', 1, 'null', 'USR_UTM3XFRFK1', '2022-01-05 14:00:58', '2021-12-23 19:12:40'),
(157, '7KL07DATXIAU', '<p>How would an effective teacher help students take on another person\'s perspective?</p>', '<p>They would use role playing.</p>', '<p>They bring in a guest speaker.</p>', '<p>They use detailed case studies.</p>', '<p>They get to know their students.</p>', 'option_a', 'null', 'image_question.png', 1, 'null', 'USR_UTM3XFRFK1', '2022-01-05 14:00:58', '2021-12-23 19:12:40'),
(158, 'IUBNUEEQIMUR', '<p>A summarizing process that helps student draw conclusions based on what they have learned is called what?</p>', '<p>Wait time</p>', '<p>Closure</p>', '<p>Experimental lab</p>', '<p>Reflective responses</p>', 'option_b', 'null', 'image_question.png', 1, 'null', 'USR_UTM3XFRFK1', '2022-01-05 14:00:58', '2021-12-23 19:12:40'),
(159, 'HTJAPVPJPI4A', '<p>Teaching strategies in which the teacher acts as a facilitator, or guide, but students are actively involved in directing and achieving their own learning</p>', '<p>Individual accountability</p>', '<p>Closure</p>', '<p>Learner-centered methods</p>', '<p>Wait time</p>', 'option_c', 'null', 'image_question.png', 1, 'null', 'USR_UTM3XFRFK1', '2022-01-05 14:00:58', '2021-12-23 19:12:40'),
(160, 'WCQADFVN6XUH', '<p>_____________ are important for teaching and training professionals.</p>', '<p>Personal feelings</p>', '<p>Personal characteristics</p>', '<p>Personal decisions</p>', '<p>Personal opinions</p>', 'option_b', 'null', 'image_question.png', 1, 'null', 'USR_UTM3XFRFK1', '2022-01-05 14:00:58', '2021-12-23 19:12:40'),
(161, 'B7DFCX1BXKKC', '<p>Common elements of active and engaging learning experiences include:</p>', '<p>Thinking Critically &amp; Creatively</p>', '<p>Dialoguing with peers</p>', '<p>Choice or Movement</p>', '<p>All of These</p>', 'option_a', 'null', '1640283802_0f456be056be2f58bc39.jpg', 1, 'null', 'USR_UTM3XFRFK1', '2022-01-05 14:00:58', '2021-12-23 19:12:40'),
(162, '4LCCADGCFBX4', '<p>What characteristic is needed in order to excite and inspire students and fill the classroom with positive energy?</p>', '<p>Dedication</p>', '<p>Creativity</p>', '<p>Empathy</p>', '<p>Enthusiasm</p>', 'option_b', 'null', 'image_question.png', 1, 'null', 'USR_UTM3XFRFK1', '2022-01-05 14:00:58', '2021-12-23 19:12:40'),
(163, 'XFTRKTHTTXYA', '<p>Greeting students at the door with a smile everyday is a great way to express which of the following personal characteristics?</p>', '<p>Empathy</p>', '<p>Forgiveness</p>', '<p>Enthusiasm</p>', '<p>Obedience</p>', 'option_c', 'null', 'image_question.png', 1, 'null', 'USR_UTM3XFRFK1', '2022-01-05 14:00:58', '2021-12-23 19:12:40'),
(164, '831OBLTATHLL', '<p>________________ is the practice of training individuals to obey rules and punishing bad behavior in the correct manner.</p>', '<p>Empathy</p>', '<p>Communication</p>', '<p>Discipline</p>', '<p>Ambition</p>', 'option_c', 'null', 'image_question.png', 1, 'null', 'USR_UTM3XFRFK1', '2022-01-05 14:00:58', '2021-12-23 19:12:40'),
(165, 'MHYZWSZIMI1A', '<p>Projects, activities, graphic organizers, discussion, role-playing, use of media and cooperative learning are all helpful techniques for:</p>', '<p>Active student engagement</p>', '<p>Starting a classroom party</p>', '<p>Passing the time</p>', '<p>Making work easier for teachers</p>', 'option_a', 'null', 'image_question.png', 1, 'null', 'USR_UTM3XFRFK1', '2022-01-05 14:00:58', '2021-12-23 19:12:40'),
(166, 'EMND1LPL1EYK', '<p>Professional behavior includes all of the following EXCEPT:</p>', '<p>Establishing a positive rapport with colleagues, students and administrators</p>', '<p>Treating everyone with respect</p>', '<p>Talking about colleagues and rarely wanting to collaborate ideas with them</p>', '<p>Utilizing positive problem-solving skills with co-workers</p>', 'option_c', 'null', 'image_question.png', 1, 'null', 'USR_UTM3XFRFK1', '2022-01-05 14:00:58', '2021-12-23 19:19:10'),
(167, 'ATUARBMLZLHD', '<p>Providing timely feedback can include all of the following EXCEPT:</p>', '<p>Returning work within a month</p>', '<p>Circulating the room to prompt student engagement</p>', '<p>Providing a high frequency of effective and positive comments that clarifies why a student is doing well</p>', '<p>Encouraging student-to-student editing and comments</p>', 'option_a', 'null', 'image_question.png', 1, 'null', 'USR_UTM3XFRFK1', '2022-01-05 14:00:58', '2021-12-23 19:19:10'),
(168, 'HUFXAE0SCYG7', '<p>Evidence of effective student group work can be observed in all of the following, EXCEPT:</p>', '<p>Creating opportunities for student pratice</p>', '<p>Allowing students to chat about the weekend</p>', '<p>Holding all students accountable to a task</p>', '<p>Allowing students to set goals and evaluate the process with each other</p>', 'option_b', 'null', 'image_question.png', 1, 'null', 'USR_UTM3XFRFK1', '2022-01-05 14:00:58', '2021-12-23 19:19:10'),
(169, '12FBJU1NLUPH', '<p>What is an informal way for a teacher to assess the quality of their lessons?</p>', '<p>Review standardized test scores</p>', '<p>Looking at students\' reading levels</p>', '<p>Being able to complete all the goals in their lesson plan</p>', '<p>Observe level of students\' attention</p>', 'option_d', 'null', '1640283486_d9bf862664c56043e26b.jpg', 1, 'null', 'USR_UTM3XFRFK1', '2022-01-05 14:00:58', '2021-12-23 19:19:10'),
(170, 'LRLEVWGZKH0S', '<p>Which of the following is NOT an effective engagement strategy?</p>', '<p>Sit and lecture</p>', '<p>Adding choice</p>', '<p>Sharing ideas</p>', '<p>Allowing movement</p>', 'option_b', 'null', '1640283575_e5c8d102a5a112b166b7.jpg', 1, 'null', 'USR_UTM3XFRFK1', '2022-01-05 14:00:58', '2021-12-23 19:19:10'),
(171, 'WJBRMIKVRHTP', '<p>What is the value of the underlined digit in 5<strong><u>6</u></strong>28?</p>', '<p>60</p>', '<p>600</p>', '<p>5600</p>', '<p>6</p>', 'option_b', '', 'image_question.png', 1, '', 'USR_UTM3XFRFK1', '2021-12-31 16:37:37', '2021-12-24 19:29:39'),
(172, 'KBB9TYK5PUBL', '<p>Which statement is correct? The number 7651 contains:</p>', '<p>6 Tens</p>', '<p>1 Unit</p>', '<p>765 Tens</p>', '<p>651 Units</p>', 'option_b', '', 'image_question.png', 0, '', 'USR_UTM3XFRFK1', '2021-12-31 17:08:55', '2021-12-24 19:29:39'),
(173, '9KQ1EOHNYNDM', '<p>The odd number just before 4001 is</p>', '<p>4000</p>', '<p>4003</p>', '<p>4002</p>', '<p>3999</p>', 'option_d', '', 'image_question.png', 3, '', 'USR_UTM3XFRFK1', '2021-12-31 13:40:05', '2021-12-24 19:29:39'),
(174, 'W4Z7QMIUQ3FO', '<p>Round off 5965 to the nearest 100.</p>', '<p>5970</p>', '<p>5900</p>', '<p>5960</p>', '<p>6000</p>', 'option_d', '', 'image_question.png', 3, '', 'USR_UTM3XFRFK1', '2021-12-31 13:40:05', '2021-12-24 19:29:39'),
(175, 'QZME7OQH4EVO', '<p><img alt=\"583 = 500 + ? + 13\" data-cke-saved-src=\"http://latex.codecogs.com/gif.latex?583%20%3D%20500%20&amp;plus;%20%3F%20&amp;plus;%2013\" src=\"http://latex.codecogs.com/gif.latex?583%20%3D%20500%20&amp;plus;%20%3F%20&amp;plus;%2013\"></p>', '<p>80</p>', '<p>170</p>', '<p>180</p>', '<p>70</p>', 'option_d', '', 'image_question.png', 4, '', 'USR_UTM3XFRFK1', '2021-12-31 13:40:05', '2021-12-24 19:29:39'),
(176, 'UTVHONQZWOA1', '<p>Which number is 300 more than 5762?</p>', '<p>5792</p>', '<p>5062</p>', '<p>6062</p>', '<p>8762</p>', 'option_c', '', 'image_question.png', 1, '', 'USR_UTM3XFRFK1', '2021-12-31 13:32:17', '2021-12-24 19:29:39'),
(177, 'CPUDOYTTBYVY', '<p>What is the shaded fraction?</p>', '<p><img alt=\"\\frac{1}{4}\" data-cke-saved-src=\"http://latex.codecogs.com/gif.latex?%5Cfrac%7B1%7D%7B4%7D\" src=\"http://latex.codecogs.com/gif.latex?%5Cfrac%7B1%7D%7B4%7D\"></p>', '<p><img alt=\"\\frac{6}{7}\" data-cke-saved-src=\"http://latex.codecogs.com/gif.latex?%5Cfrac%7B6%7D%7B7%7D\" src=\"http://latex.codecogs.com/gif.latex?%5Cfrac%7B6%7D%7B7%7D\"></p>', '<p><img alt=\"\\frac{3}{5}\" data-cke-saved-src=\"http://latex.codecogs.com/gif.latex?%5Cfrac%7B3%7D%7B5%7D\" src=\"http://latex.codecogs.com/gif.latex?%5Cfrac%7B3%7D%7B5%7D\"></p>', '<p><img alt=\"\\frac{2}{6}\" data-cke-saved-src=\"http://latex.codecogs.com/gif.latex?%5Cfrac%7B2%7D%7B6%7D\" src=\"http://latex.codecogs.com/gif.latex?%5Cfrac%7B2%7D%7B6%7D\"></p>', 'option_c', '', '1640370215_d10b262bfa8f37d4ce47.png', 2, '', 'USR_UTM3XFRFK1', '2021-12-31 13:40:05', '2021-12-24 19:29:39'),
(178, 'HIFRPQX1FNKV', '<p>What is the perimeter of a rectangle which is 12 metres long and 8 metres wide?</p>', '<p>20m</p>', '<p>32m</p>', '<p>40m</p>', '<p>28m</p>', 'option_c', '', 'image_question.png', 1, '', 'USR_UTM3XFRFK1', '2021-12-31 13:32:17', '2021-12-24 19:29:39'),
(179, 'PSFSHKBFN0N2', '<p>Find the next number in the sequence 0, 1, 3, 6, 10, ...</p>', '<p>16</p>', '<p>14</p>', '<p>15</p>', '<p>13</p>', 'option_c', '', 'image_question.png', 1, '', 'USR_UTM3XFRFK1', '2021-12-31 13:32:17', '2021-12-24 19:29:39'),
(180, 'PXMO0NCGQMII', '<p><img alt=\"9 \\times 7 = ?\" data-cke-saved-src=\"http://latex.codecogs.com/gif.latex?9%20%5Ctimes%207%20%3D%20%3F\" src=\"http://latex.codecogs.com/gif.latex?9%20%5Ctimes%207%20%3D%20%3F\"></p>', '<p>34</p>', '<p>63</p>', '<p>73</p>', '<p>103</p>', 'option_b', '', 'image_question.png', 1, '', 'USR_UTM3XFRFK1', '2021-12-31 13:32:17', '2021-12-24 19:38:32'),
(181, 'DRRERT4O12GS', '<p><img alt=\"6 \\times 9 = ?\" data-cke-saved-src=\"http://latex.codecogs.com/gif.latex?6%20%5Ctimes%209%20%3D%20%3F\" src=\"http://latex.codecogs.com/gif.latex?6%20%5Ctimes%209%20%3D%20%3F\"></p>', '<p>54</p>', '<p>45</p>', '<p>56</p>', '<p>79</p>', 'option_a', '', 'image_question.png', 1, '', 'USR_UTM3XFRFK1', '2021-12-31 13:32:17', '2021-12-24 19:38:32'),
(182, 'V1YI48L7BINN', '<p><img alt=\"6 \\times 8 = ?\" data-cke-saved-src=\"http://latex.codecogs.com/gif.latex?6%20%5Ctimes%208%20%3D%20%3F\" src=\"http://latex.codecogs.com/gif.latex?6%20%5Ctimes%208%20%3D%20%3F\"></p>', '<p>48</p>', '<p>46</p>', '<p>44</p>', '<p>42</p>', 'option_a', '', 'image_question.png', 1, '', 'USR_UTM3XFRFK1', '2021-12-31 13:32:17', '2021-12-24 19:38:32'),
(183, 'TIHUKFCGAKUQ', '<p><img alt=\"11 \\times 12 = ?\" data-cke-saved-src=\"http://latex.codecogs.com/gif.latex?11%20%5Ctimes%2012%20%3D%20%3F\" src=\"http://latex.codecogs.com/gif.latex?11%20%5Ctimes%2012%20%3D%20%3F\"></p>', '<p>131</p>', '<p>121</p>', '<p>132</p>', '<p>133</p>', 'option_c', '', 'image_question.png', 1, '', 'USR_UTM3XFRFK1', '2021-12-31 13:32:17', '2021-12-24 19:38:32'),
(184, '1VODEDEBLHSK', '<p>If 54 ÷ 6 = 9, what is one other fact you also know?</p>', '<p>9 x 8 = 54</p>', '<p>6 x 9 = 54</p>', '<p>6 ÷ 9 = 54</p>', '<p>9 + 6 = 15</p>', 'option_b', '', 'image_question.png', 1, '', 'USR_UTM3XFRFK1', '2021-12-31 13:32:17', '2021-12-24 19:38:32'),
(185, '8HSGQ7XBKY2G', '<p>If 7 x 6 = 42, what is one other fact you know?</p>', '<p>6 ÷ 7 = 42<br></p>', '<p>42 - 6 = 7</p>', '<p>6 + 7 = 42</p>', '<p>42 ÷ 7 = 6</p>', 'option_d', '', 'image_question.png', 1, '', 'USR_UTM3XFRFK1', '2021-12-31 17:08:55', '2021-12-24 19:40:13'),
(186, '3IXHGPD15YYI', '<p>Decomposers break down dead organisms and return nutrients to the ecosystem. An an example of a decomposer is a:</p>', '<p>Mushroom</p>', '<p>Rose</p>', '<p>Horse</p>', '<p>Tiger</p>', 'option_a', 'null', 'image_question.png', 1, 'null', 'USR_UTM3XFRFK1', '2022-05-27 00:06:47', '2021-12-24 20:35:18'),
(187, 'IRSDKJFVAO3J', '<p>You are given a 2-liter bottle of Cola. 2 liters is a measure of:</p>', '<p>Volume</p>', '<p>Mass</p>', '<p>Length</p>', '<p>Density</p>', 'option_a', 'null', '1640374267_e489b57cbfb22558f64c.png', 1, 'null', 'USR_UTM3XFRFK1', '2022-01-04 17:40:55', '2021-12-24 20:35:18'),
(188, 'VWALI5IMZLYB', '<p>Galileo and Copernicus believed this was the center of the solar system and everything else revolved around it.</p>', '<p>Sun</p>', '<p>Moon</p>', '<p>Earth</p>', '<p>Jupiter</p>', 'option_c', 'null', '1640374399_267271bcb1e8a745ad72.png', 1, 'null', 'USR_UTM3XFRFK1', '2022-01-04 17:40:55', '2021-12-24 20:35:18'),
(189, 'MPQQFCFQH8X8', '<p>An instrument that measures precipitation is a:</p>', '<p>Barometer</p>', '<p>Rain Guage</p>', '<p>Thermometer</p>', '<p>Anemometer</p>', 'option_b', 'null', 'image_question.png', 1, 'null', 'USR_UTM3XFRFK1', '2022-01-04 17:40:55', '2021-12-24 20:35:18'),
(190, 'GTFCGQ5AQNRC', '<p>Which of the following is a nonrenewable source of energy?</p>', '<p>Wind Power</p>', '<p>Coal</p>', '<p>Solar Power</p>', '<p>Water Power or Hydropower</p>', 'option_b', 'null', 'image_question.png', 1, 'null', 'USR_UTM3XFRFK1', '2022-01-04 17:40:55', '2021-12-24 20:35:18'),
(191, 'MF6YWSCBOEYN', '<p>Ferns and Mosses reproduce using:</p>', '<p>Spores</p>', '<p>Seeds</p>', '<p>Fruits</p>', '<p>Nuts</p>', 'option_a', 'null', 'image_question.png', 1, 'null', 'USR_UTM3XFRFK1', '2022-01-04 17:40:55', '2021-12-24 20:35:18'),
(192, '1HIQUPECKJLT', '<p>Electricity and heat move easily through this material:</p>', '<p>Plastic</p>', '<p>Air</p>', '<p>Insulator</p>', '<p>Conductor</p>', 'option_d', 'null', 'image_question.png', 1, 'null', 'USR_UTM3XFRFK1', '2022-01-04 17:40:55', '2021-12-24 20:35:18'),
(193, '6LT1GZES7RHA', '<p>Objects in motion have which type of energy?</p>', '<p>Kinetic</p>', '<p>Potential</p>', '<p>Nuclear</p>', '<p>Electrical</p>', 'option_a', 'null', '1640374486_1d46864f52508eedf68e.png', 1, 'null', 'USR_UTM3XFRFK1', '2022-01-04 17:40:55', '2021-12-24 20:35:18'),
(194, 'SPGJJZVTPXKE', '<p>Wires are made from materials that conduct electricity well. Which of the following materials could you use as a wire?</p>', '<p>Ice</p>', '<p>Sugar</p>', '<p>Wool</p>', '<p>Copper</p>', 'option_d', 'null', '1640374119_56580ee6536de6cf3600.png', 1, 'null', 'USR_UTM3XFRFK1', '2022-01-04 17:40:55', '2021-12-24 20:35:18'),
(195, 'PSHA3YZN9RSM', '<p>Thin, wispy clouds high in the sky are:</p>', '<div style=\"background:0px 0px; border:0px; padding:0px\">Cumulonimbus clouds</div>', '<div style=\"background:0px 0px; border:0px; padding:0px\">Stratus clouds</div>', '<div style=\"background:0px 0px; border:0px; padding:0px\">Cirrus clouds</div>', '<div style=\"background:0px 0px; border:0px; padding:0px\">Cumulus clouds</div>', 'option_c', 'null', '1640373765_ebbf4687aee2bcc7b5c6.jpg', 1, 'null', 'USR_UTM3XFRFK1', '2022-01-04 17:40:55', '2021-12-24 20:35:18'),
(196, '6S4C4WFZD91V', '<p>In which of these seasons will you see a rainbow more often?</p>', '<p>Summer</p>', '<p>Monsoon</p>', '<p>Winter</p>', '<p>Rainbow can be seen at all times, even at night.</p>', 'option_a', 'null', '1640374770_bd200b69b2adae55e5f5.png', 1, 'null', 'USR_UTM3XFRFK1', '2022-01-04 17:40:55', '2021-12-24 20:43:08'),
(197, 'RQHARCZK6D4L', '<p>To have a nonstop flight, a plane has to be given fuel in the middle of the flight. Which of these is necessary for mid-air refueling to happen?</p>', '<p>One plane should be smaller than the other.</p>', '<p>The planes should be flying above the clouds.</p>', '<p>Planes should be flying as fast as each other (same speed).</p>', '<p>One plane should be flying upwards and the other downwards.</p>', 'option_c', 'null', 'image_question.png', 1, 'null', 'USR_UTM3XFRFK1', '2022-01-04 17:40:55', '2021-12-24 20:43:08'),
(198, 'WGMPRR1WZ0VJ', '<p>The change of a substance from&nbsp;the liquid state to the gaseous state is called:</p>', '<p>Evaporation</p>', '<p>Condensation</p>', '<p>Sublimation</p>', '<p>Filtration</p>', 'option_a', 'null', 'image_question.png', 1, 'null', 'USR_UTM3XFRFK1', '2022-01-04 17:40:55', '2021-12-24 20:43:08'),
(199, '6S0L4CZNRK9E', '<p>The change of a substance from&nbsp;the&nbsp;gaseous state to the liquid state is called:</p>', '<p>Condensation</p>', '<p>Decantation</p>', '<p>Sedimentation</p>', '<p>Evaporation</p>', 'option_a', 'null', 'image_question.png', 1, 'null', 'USR_UTM3XFRFK1', '2022-01-04 17:40:55', '2021-12-24 20:43:08'),
(200, 'MCJB6OBGSQDY', '<p>The change of a substance from&nbsp;the&nbsp;solid state to the&nbsp;gaseous state is called:</p>', '<p>Sublimation</p>', '<p>Evaporation</p>', '<p>Melting</p>', '<p>Filtration</p>', 'option_a', 'null', 'image_question.png', 1, 'null', 'USR_UTM3XFRFK1', '2022-01-04 17:40:55', '2021-12-24 20:43:08'),
(201, '7B46ZFU2ZAEG', '<p>Which of these is false?</p>', '<p><img alt=\"3 \\epsilon Z^{+}\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?3%20%5Cepsilon%20Z%5E%7B&amp;plus;%7D\" src=\"https://latex.codecogs.com/gif.latex?3%20%5Cepsilon%20Z%5E%7B&amp;plus;%7D\"></p>', '<p><img alt=\"6\\epsilon Z\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?6%5Cepsilon%20Z\" src=\"https://latex.codecogs.com/gif.latex?6%5Cepsilon%20Z\"></p>', '<p><img alt=\"\\frac{1}{0.1}\\epsilon Z\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?%5Cfrac%7B1%7D%7B0.1%7D%5Cepsilon%20Z\" src=\"https://latex.codecogs.com/gif.latex?%5Cfrac%7B1%7D%7B0.1%7D%5Cepsilon%20Z\"></p>', '<p><img alt=\"\\sqrt{2} \\epsilon Z\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?%5Csqrt%7B2%7D%20%5Cepsilon%20Z\" src=\"https://latex.codecogs.com/gif.latex?%5Csqrt%7B2%7D%20%5Cepsilon%20Z\"></p>', 'option_d', '', 'image_question.png', 0, '', 'USR_UTM3XFRFK1', '2021-12-27 08:55:09', '2021-12-27 06:38:49'),
(202, 'WNY7ZUBIKHJV', '<p>If <img alt=\"U={0, 1, 2, 3, 4, 5, 6, 7}\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?U%3D%7B0%2C%201%2C%202%2C%203%2C%204%2C%205%2C%206%2C%207%7D\" src=\"https://latex.codecogs.com/gif.latex?U%3D%7B0%2C%201%2C%202%2C%203%2C%204%2C%205%2C%206%2C%207%7D\"> and <img alt=\"E = {2, 3, 5, 7}\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?E%20%3D%20%7B2%2C%203%2C%205%2C%207%7D\" src=\"https://latex.codecogs.com/gif.latex?E%20%3D%20%7B2%2C%203%2C%205%2C%207%7D\">, find <img alt=\"n(E^{\'})\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?n%28E%5E%7B%27%7D%29\" src=\"https://latex.codecogs.com/gif.latex?n%28E%5E%7B%27%7D%29\">.</p>', '<p>5</p>', '<p>4</p>', '<p>3</p>', '<p>2</p>', 'option_b', '', '1640605454_e7e050c167a93750a6bd.png', 0, '', 'USR_UTM3XFRFK1', '2021-12-27 08:55:20', '2021-12-27 06:44:04'),
(203, 'CG529DFPASNA', '<p>If <img alt=\"A = {1, 3, 4}\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?A%20%3D%20%7B1%2C%203%2C%204%7D\" src=\"https://latex.codecogs.com/gif.latex?A%20%3D%20%7B1%2C%203%2C%204%7D\"> and <img alt=\"B = \\left \\{ x: x\\epsilon R, and, x^{2} -7x + 12 = 0 \\right \\}\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?B%20%3D%20%5Cleft%20%5C%7B%20x%3A%20x%5Cepsilon%20R%2C%20and%2C%20x%5E%7B2%7D%20-7x%20&amp;plus;%2012%20%3D%200%20%5Cright%20%5C%7D\" src=\"https://latex.codecogs.com/gif.latex?B%20%3D%20%5Cleft%20%5C%7B%20x%3A%20x%5Cepsilon%20R%2C%20and%2C%20x%5E%7B2%7D%20-7x%20&amp;plus;%2012%20%3D%200%20%5Cright%20%5C%7D\">, then which of the following is true?</p>', '<p>A = B</p>', '<p><img alt=\"A\\subset B\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?A%5Csubset%20B\" src=\"https://latex.codecogs.com/gif.latex?A%5Csubset%20B\"></p>', '<p><img alt=\"B\\subset A\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?B%5Csubset%20A\" src=\"https://latex.codecogs.com/gif.latex?B%5Csubset%20A\"></p>', '<p>A is equivalent to B</p>', 'option_c', '', 'image_question.png', 0, '', 'USR_UTM3XFRFK1', '2021-12-27 08:55:24', '2021-12-27 06:49:53'),
(204, 'LGVWKLRPKWRQ', '<p>If <img alt=\"B = \\left \\{ x: x\\epsilon N, and, x^{2} +11x + 30 = 0 \\right \\}\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?B%20%3D%20%5Cleft%20%5C%7B%20x%3A%20x%5Cepsilon%20N%2C%20and%2C%20x%5E%7B2%7D%20&amp;plus;11x%20&amp;plus;%2030%20%3D%200%20%5Cright%20%5C%7D\" src=\"https://latex.codecogs.com/gif.latex?B%20%3D%20%5Cleft%20%5C%7B%20x%3A%20x%5Cepsilon%20N%2C%20and%2C%20x%5E%7B2%7D%20&amp;plus;11x%20&amp;plus;%2030%20%3D%200%20%5Cright%20%5C%7D\">, then B is a/an</p>', '<p>Empty Set</p>', '<p>Finite Set</p>', '<p>Infinite Set</p>', '<p>Singleton Set</p>', 'option_b', '', 'image_question.png', 0, '', 'USR_UTM3XFRFK1', '2021-12-27 08:55:27', '2021-12-27 06:53:07'),
(205, 'NN74VLEKTZWT', '<p>In a survey of 1,000 consumers, it is found that 720 consumers liked product A and 450 liked product B. What is the least number that must have liked both products?</p>', '<p>70</p>', '<p>150</p>', '<p>200</p>', '<p>None of these</p>', 'option_c', '', 'image_question.png', 0, '', 'USR_UTM3XFRFK1', '2021-12-27 09:00:22', '2021-12-27 06:55:39'),
(206, 'SCBI9LXW2GDP', '<p>If <img alt=\"f:x \\mapsto 3x^2 - 4x\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?f%3Ax%20%5Cmapsto%203x%5E2%20-%204x\" src=\"https://latex.codecogs.com/gif.latex?f%3Ax%20%5Cmapsto%203x%5E2%20-%204x\">, fidn the value of <img alt=\"f(2) + f(-2)\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?f%282%29%20&amp;plus;%20f%28-2%29\" src=\"https://latex.codecogs.com/gif.latex?f%282%29%20&amp;plus;%20f%28-2%29\">.</p>', '<p>4</p>', '<p>24</p>', '<p>20</p>', '<p>2</p>', 'option_b', '', 'image_question.png', 0, '', 'USR_UTM3XFRFK1', '2021-12-27 09:00:45', '2021-12-27 07:07:33'),
(207, 'MBSG5R5YC343', '<p>If <img alt=\"f(x) = 4-3x-x^{2}\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?f%28x%29%20%3D%204-3x-x%5E%7B2%7D\" src=\"https://latex.codecogs.com/gif.latex?f%28x%29%20%3D%204-3x-x%5E%7B2%7D\">, find in simplest form <img alt=\"f(-x)\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?f%28-x%29\" src=\"https://latex.codecogs.com/gif.latex?f%28-x%29\">.</p>', '<p><img alt=\"-(x^{2} - 7x -6)\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?-%28x%5E%7B2%7D%20-%207x%20-6%29\" src=\"https://latex.codecogs.com/gif.latex?-%28x%5E%7B2%7D%20-%207x%20-6%29\"></p>', '<p><img alt=\"-(x^{2} + 2x - 4)\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?-%28x%5E%7B2%7D%20&amp;plus;%202x%20-%204%29\" src=\"https://latex.codecogs.com/gif.latex?-%28x%5E%7B2%7D%20&amp;plus;%202x%20-%204%29\"></p>', '<p><img alt=\"x^{2} - 3x -2\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?x%5E%7B2%7D%20-%203x%20-2\" src=\"https://latex.codecogs.com/gif.latex?x%5E%7B2%7D%20-%203x%20-2\"></p>', '<p><img alt=\"3x^{2} - x -5\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?3x%5E%7B2%7D%20-%20x%20-5\" src=\"https://latex.codecogs.com/gif.latex?3x%5E%7B2%7D%20-%20x%20-5\"></p>', 'option_a', '', 'image_question.png', 0, '', 'USR_UTM3XFRFK1', '2021-12-27 09:01:09', '2021-12-27 07:13:57');
INSERT INTO `questions_tb` (`id`, `question_id`, `question_title`, `option_a`, `option_b`, `option_c`, `option_d`, `answer`, `info_answer`, `image`, `points`, `hints`, `question_added_by`, `date_updated`, `date_created`) VALUES
(208, 'W2K5RNUCRYK5', '<p>If <img alt=\"f(x)=3x+5\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?f%28x%29%3D3x&amp;plus;5\" src=\"https://latex.codecogs.com/gif.latex?f%28x%29%3D3x&amp;plus;5\"> and <img alt=\"g(x)=2x-3\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?g%28x%29%3D2x-3\" src=\"https://latex.codecogs.com/gif.latex?g%28x%29%3D2x-3\">, find <img alt=\"x\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?x\" src=\"https://latex.codecogs.com/gif.latex?x\"> when <img alt=\"f(x) = g(x)\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?f%28x%29%20%3D%20g%28x%29\" src=\"https://latex.codecogs.com/gif.latex?f%28x%29%20%3D%20g%28x%29\">.</p>', '<p><img alt=\"x = 2\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?x%20%3D%202\" src=\"https://latex.codecogs.com/gif.latex?x%20%3D%202\"></p>', '<p><img alt=\"x = -4\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?x%20%3D%20-4\" src=\"https://latex.codecogs.com/gif.latex?x%20%3D%20-4\"></p>', '<p><img alt=\"x = -8\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?x%20%3D%20-8\" src=\"https://latex.codecogs.com/gif.latex?x%20%3D%20-8\"></p>', '<p><img alt=\"x = 7.5\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?x%20%3D%207.5\" src=\"https://latex.codecogs.com/gif.latex?x%20%3D%207.5\"></p>', 'option_c', '', 'image_question.png', 0, '', 'USR_UTM3XFRFK1', '2021-12-27 09:01:26', '2021-12-27 07:17:27'),
(209, 'ANND5CUPGXLB', '<p>The value of a car <img alt=\"t\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?t\" src=\"https://latex.codecogs.com/gif.latex?t\"> years after purchase is given by <img alt=\"V(t) = 28000 - 4000t\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?V%28t%29%20%3D%2028000%20-%204000t\" src=\"https://latex.codecogs.com/gif.latex?V%28t%29%20%3D%2028000%20-%204000t\"> dollars. Find <img alt=\"t\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?t\" src=\"https://latex.codecogs.com/gif.latex?t\"> when <img alt=\"V(t) = 8000\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?V%28t%29%20%3D%208000\" src=\"https://latex.codecogs.com/gif.latex?V%28t%29%20%3D%208000\">.</p>', '<p>2</p>', '<p>3</p>', '<p>4</p>', '<p>5</p>', 'option_d', '', '1640607507_b362a66d2461f490b719.png', 0, '', 'USR_UTM3XFRFK1', '2021-12-27 09:01:30', '2021-12-27 07:20:54'),
(210, 'WAC42J61ST1W', '<p>Use the graph to find the value of <img alt=\"x\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?x\" src=\"https://latex.codecogs.com/gif.latex?x\">, to 1 decimal place, when <img alt=\"f(x) = -3\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?f%28x%29%20%3D%20-3\" src=\"https://latex.codecogs.com/gif.latex?f%28x%29%20%3D%20-3\">.</p>', '<p><img alt=\"-1.4\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?-1.4\" src=\"https://latex.codecogs.com/gif.latex?-1.4\"></p>', '<p><img alt=\"2.5\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?2.5\" src=\"https://latex.codecogs.com/gif.latex?2.5\"></p>', '<p><img alt=\"-4\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?-4\" src=\"https://latex.codecogs.com/gif.latex?-4\"></p>', '<p><img alt=\"3.0\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?3.0\" src=\"https://latex.codecogs.com/gif.latex?3.0\"></p>', 'option_a', '', '1640607706_3d5df399a9fa15d32d29.png', 0, '', 'USR_UTM3XFRFK1', '2021-12-27 09:01:40', '2021-12-27 07:24:18'),
(211, '9NILBBWGWAAP', '<p>If <img alt=\"f(x) = x^{2} + 1\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?f%28x%29%20%3D%20x%5E%7B2%7D%20&amp;plus;%201\" src=\"https://latex.codecogs.com/gif.latex?f%28x%29%20%3D%20x%5E%7B2%7D%20&amp;plus;%201\"> and <img alt=\"g(x) = 2x - 3\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?g%28x%29%20%3D%202x%20-%203\" src=\"https://latex.codecogs.com/gif.latex?g%28x%29%20%3D%202x%20-%203\">, find <img alt=\"f(g(3))\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?f%28g%283%29%29\" src=\"https://latex.codecogs.com/gif.latex?f%28g%283%29%29\">.</p>', '<p>31</p>', '<p>10</p>', '<p>17</p>', '<p>25</p>', 'option_b', '', 'image_question.png', 0, '', 'USR_UTM3XFRFK1', '2021-12-27 09:01:51', '2021-12-27 07:27:40'),
(212, 'YE1JUTZUVVOG', '<p>Which of these represents the equation of the graph shown?</p>', '<p><img alt=\"y = x^{2} + 2x - 3\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?y%20%3D%20x%5E%7B2%7D%20&amp;plus;%202x%20-%203\" src=\"https://latex.codecogs.com/gif.latex?y%20%3D%20x%5E%7B2%7D%20&amp;plus;%202x%20-%203\"></p>', '<p><img alt=\"y = -x^{2} + 4x - 9\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?y%20%3D%20-x%5E%7B2%7D%20&amp;plus;%204x%20-%209\" src=\"https://latex.codecogs.com/gif.latex?y%20%3D%20-x%5E%7B2%7D%20&amp;plus;%204x%20-%209\"></p>', '<p><img alt=\"y = -2x^{2} + 4\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?y%20%3D%20-2x%5E%7B2%7D%20&amp;plus;%204\" src=\"https://latex.codecogs.com/gif.latex?y%20%3D%20-2x%5E%7B2%7D%20&amp;plus;%204\"></p>', '<p><img alt=\"y = 2x^{2} + 3x\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?y%20%3D%202x%5E%7B2%7D%20&amp;plus;%203x\" src=\"https://latex.codecogs.com/gif.latex?y%20%3D%202x%5E%7B2%7D%20&amp;plus;%203x\"></p>', 'option_b', '', '1640608166_032c656ee08b88bf0ba3.png', 0, '', 'USR_UTM3XFRFK1', '2021-12-27 08:39:52', '2021-12-27 07:35:42'),
(213, 'EFKBZ9LOSDSO', '<p>Solve for <img alt=\"x\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?x\" src=\"https://latex.codecogs.com/gif.latex?x\"> in <img alt=\"-2(x - 3)^{2} = 0\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?-2%28x%20-%203%29%5E%7B2%7D%20%3D%200\" src=\"https://latex.codecogs.com/gif.latex?-2%28x%20-%203%29%5E%7B2%7D%20%3D%200\">.</p>', '<p><img alt=\"x = +3\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?x%20%3D%20&amp;plus;3\" src=\"https://latex.codecogs.com/gif.latex?x%20%3D%20&amp;plus;3\"></p>', '<p><img alt=\"2\\pm \\sqrt{3}\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?2%5Cpm%20%5Csqrt%7B3%7D\" src=\"https://latex.codecogs.com/gif.latex?2%5Cpm%20%5Csqrt%7B3%7D\"></p>', '<p><img alt=\"3\\pm \\sqrt{-2}\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?3%5Cpm%20%5Csqrt%7B-2%7D\" src=\"https://latex.codecogs.com/gif.latex?3%5Cpm%20%5Csqrt%7B-2%7D\"></p>', '<p><img alt=\"x = -2\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?x%20%3D%20-2\" src=\"https://latex.codecogs.com/gif.latex?x%20%3D%20-2\"></p>', 'option_a', '', 'image_question.png', 0, '', 'USR_UTM3XFRFK1', '2021-12-27 09:04:07', '2021-12-27 07:39:04'),
(214, 'C9EUZCP05XDL', '<p>Find <img alt=\"x\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?x\" src=\"https://latex.codecogs.com/gif.latex?x\"> if both shapes are similar.</p>', '<p>8</p>', '<p>9</p>', '<p>10</p>', '<p>11</p>', 'option_a', '', '1640608801_62a39019ca183a417610.png', 0, '', 'USR_UTM3XFRFK1', '2021-12-27 09:04:31', '2021-12-27 07:40:49'),
(215, 'JROSINAQ6P8K', '<p>Rectangles ABCD and FGHE are similar. Find the length of FG.</p>', '<p>6.67</p>', '<p>2.4</p>', '<p>5.2</p>', '<p>7.23</p>', 'option_b', '', '1640608912_1f3ef4cb96a03ae379bf.png', 0, '', 'USR_UTM3XFRFK1', '2021-12-27 09:04:37', '2021-12-27 07:44:02'),
(216, 'TJFAUMWYVR5X', '<p>Find the value of <img alt=\"x\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?x\" src=\"https://latex.codecogs.com/gif.latex?x\">.</p>', '<p>9.6</p>', '<p>10.2</p>', '<p>8.5</p>', '<p>7.9</p>', 'option_a', '', '1640609104_b49a356818fe8045cb50.png', 0, '', 'USR_UTM3XFRFK1', '2021-12-27 09:10:06', '2021-12-27 07:47:49'),
(217, 'VM6EXDAPLRPI', '<p>Solve for <img alt=\"x\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?x\" src=\"https://latex.codecogs.com/gif.latex?x\"> in <img alt=\"3^{(x-2)} = \\frac{1}{9}\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?3%5E%7B%28x-2%29%7D%20%3D%20%5Cfrac%7B1%7D%7B9%7D\" src=\"https://latex.codecogs.com/gif.latex?3%5E%7B%28x-2%29%7D%20%3D%20%5Cfrac%7B1%7D%7B9%7D\">.</p>', '<p>1</p>', '<p>0</p>', '<p>3</p>', '<p>4</p>', 'option_b', '', 'image_question.png', 0, '', 'USR_UTM3XFRFK1', '2021-12-27 09:04:50', '2021-12-27 07:49:49'),
(218, '0KHNVBTZVZCG', '<p>Given <img alt=\"\\overrightarrow{AB} = \\begin{pmatrix} 1\\\\ 4 \\end{pmatrix}\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?%5Coverrightarrow%7BAB%7D%20%3D%20%5Cbegin%7Bpmatrix%7D%201%5C%5C%204%20%5Cend%7Bpmatrix%7D\" src=\"https://latex.codecogs.com/gif.latex?%5Coverrightarrow%7BAB%7D%20%3D%20%5Cbegin%7Bpmatrix%7D%201%5C%5C%204%20%5Cend%7Bpmatrix%7D\"> and <img alt=\"\\overrightarrow{AC} = \\begin{pmatrix} -2\\\\ 1 \\end{pmatrix}\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?%5Coverrightarrow%7BAC%7D%20%3D%20%5Cbegin%7Bpmatrix%7D%20-2%5C%5C%201%20%5Cend%7Bpmatrix%7D\" src=\"https://latex.codecogs.com/gif.latex?%5Coverrightarrow%7BAC%7D%20%3D%20%5Cbegin%7Bpmatrix%7D%20-2%5C%5C%201%20%5Cend%7Bpmatrix%7D\">. Find <img alt=\"\\overrightarrow{BC}\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?%5Coverrightarrow%7BBC%7D\" src=\"https://latex.codecogs.com/gif.latex?%5Coverrightarrow%7BBC%7D\">.</p>', '<p><img alt=\"\\binom{-3}{-3}\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?%5Cbinom%7B-3%7D%7B-3%7D\" src=\"https://latex.codecogs.com/gif.latex?%5Cbinom%7B-3%7D%7B-3%7D\"></p>', '<p><img alt=\"\\binom{-1}{5}\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?%5Cbinom%7B-1%7D%7B5%7D\" src=\"https://latex.codecogs.com/gif.latex?%5Cbinom%7B-1%7D%7B5%7D\"></p>', '<p><img alt=\"\\binom{-2}{-4}\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?%5Cbinom%7B-2%7D%7B-4%7D\" src=\"https://latex.codecogs.com/gif.latex?%5Cbinom%7B-2%7D%7B-4%7D\"></p>', '<p><img alt=\"\\binom{-5}{-6}\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?%5Cbinom%7B-5%7D%7B-6%7D\" src=\"https://latex.codecogs.com/gif.latex?%5Cbinom%7B-5%7D%7B-6%7D\"></p>', 'option_a', '', 'image_question.png', 0, '', 'USR_UTM3XFRFK1', '2021-12-27 09:04:53', '2021-12-27 07:58:02'),
(219, 'WYGJQX2UKQKW', '<p>If a missile travels at 3600km/h, how far will it travel in 2 years?</p><p>[Assume that 1 year = 365 days]<br></p>', '<p><img alt=\"6.3072\\times 10^{2}\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?6.3072%5Ctimes%2010%5E%7B2%7D\" src=\"https://latex.codecogs.com/gif.latex?6.3072%5Ctimes%2010%5E%7B2%7D\"></p>', '<p><img alt=\"6.31\\times 10^{7}\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?6.31%5Ctimes%2010%5E%7B7%7D\" src=\"https://latex.codecogs.com/gif.latex?6.31%5Ctimes%2010%5E%7B7%7D\"></p>', '<p><img alt=\"6.30\\times 10^{7}\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?6.30%5Ctimes%2010%5E%7B7%7D\" src=\"https://latex.codecogs.com/gif.latex?6.30%5Ctimes%2010%5E%7B7%7D\"></p>', '<p><img alt=\"6.31\\times 10^{-7}\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?6.31%5Ctimes%2010%5E%7B-7%7D\" src=\"https://latex.codecogs.com/gif.latex?6.31%5Ctimes%2010%5E%7B-7%7D\"></p>', 'option_b', '', '1640609978_d3e165172686f7911ce5.png', 0, '', 'USR_UTM3XFRFK1', '2021-12-27 09:10:06', '2021-12-27 08:04:09'),
(220, 'VYE4PUPGI86X', '<p>A coin and a pentagonal spinner with sectors 1, 2, 3, 4 and 5 are<br>tossed and spun respectively. Find the probability of getting a tail and an odd number.</p>', '<p>0.7</p>', '<p>2.5</p>', '<p>0.56</p>', '<p>0.3</p>', 'option_d', '', '1640610362_2818e48face2a4dd060a.png', 0, '', 'USR_UTM3XFRFK1', '2021-12-27 09:05:29', '2021-12-27 08:08:16'),
(221, 'MMKA4R4MPPFF', '<p>Given that the two figures are similar, find <img alt=\"x\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?x\" src=\"https://latex.codecogs.com/gif.latex?x\">.</p>', '<p>4.8</p>', '<p>2.9</p>', '<p>3.1</p>', '<p>5.2</p>', 'option_a', 'null', '1640773509_1744d22f0d29292c1e88.png', 5, 'null', 'USR_UTM3XFRFK1', '2022-01-06 19:51:15', '2021-12-29 05:32:53'),
(222, '4P3KYBTFB0KL', '<p>If a line of length 2cm is enlarged with a <strong>scale factor of 3</strong>, find its new length.</p>', '<p>5</p>', '<p>6</p>', '<p>1</p>', '<p><img alt=\"-1\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?-1\" src=\"https://latex.codecogs.com/gif.latex?-1\"></p>', 'option_b', 'null', 'image_question.png', 2, 'null', 'USR_UTM3XFRFK1', '2022-01-06 19:51:15', '2021-12-29 05:34:23'),
(223, '155ERYQMLUPL', '<p>Find the value of <img alt=\"x\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?x\" src=\"https://latex.codecogs.com/gif.latex?x\">.</p>', '<p>36</p>', '<p>3.272</p>', '<p><img alt=\"3\\tfrac{3}{11}\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?3%5Ctfrac%7B3%7D%7B11%7D\" src=\"https://latex.codecogs.com/gif.latex?3%5Ctfrac%7B3%7D%7B11%7D\"></p>', '<p><img alt=\"\\tfrac{11}{36}\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?%5Ctfrac%7B11%7D%7B36%7D\" src=\"https://latex.codecogs.com/gif.latex?%5Ctfrac%7B11%7D%7B36%7D\"></p>', 'option_c', 'null', '1640774176_329763ca6deb4c54c4a0.png', 1, 'null', 'USR_UTM3XFRFK1', '2022-01-06 19:51:15', '2021-12-29 05:41:38'),
(224, 'ZCKK5S3UV1RT', '<p>Find the value of <img alt=\"x\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?x\" src=\"https://latex.codecogs.com/gif.latex?x\">.</p>', '<p>9.6</p>', '<p>1.2</p>', '<p>6.9</p>', '<p>2.1</p>', 'option_a', 'null', '1640774588_bd0d9416c182a3254d64.png', 3, 'null', 'USR_UTM3XFRFK1', '2022-01-06 19:51:15', '2021-12-29 05:43:54'),
(225, 'EAHMCJBSV64S', '<p>Find the value of <img alt=\"x\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?x\" src=\"https://latex.codecogs.com/gif.latex?x\"></p>', '<p>5</p>', '<p>4</p>', '<p>3</p>', '<p>2</p>', 'option_a', 'null', '1640774683_db519122b9302885379b.png', 7, 'null', 'USR_UTM3XFRFK1', '2022-01-06 19:51:15', '2021-12-29 05:48:42'),
(226, 'SBRBPBR5TVWN', '<p>You are to establish that a pair of triangles are similar to find the value of <img alt=\"x\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?x\" src=\"https://latex.codecogs.com/gif.latex?x\">.</p>', '<p>5</p>', '<p>7</p>', '<p>6</p>', '<p>2</p>', 'option_b', 'null', '1640774844_cfa837f1ea381e916ef7.png', 1, 'null', 'USR_UTM3XFRFK1', '2022-01-06 19:51:15', '2021-12-29 05:48:42'),
(227, 'NOF9FX1G1EAC', '<p>Find the value of <img alt=\"x\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?x\" src=\"https://latex.codecogs.com/gif.latex?x\">.</p>', '<p>6.66</p>', '<p><img alt=\"6\\tfrac{2}{3}\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?6%5Ctfrac%7B2%7D%7B3%7D\" src=\"https://latex.codecogs.com/gif.latex?6%5Ctfrac%7B2%7D%7B3%7D\"></p>', '<p><img alt=\"\\tfrac{20}{6}\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?%5Ctfrac%7B20%7D%7B6%7D\" src=\"https://latex.codecogs.com/gif.latex?%5Ctfrac%7B20%7D%7B6%7D\"></p>', '<p>20</p>', 'option_b', 'null', '1640775274_eb8db2f87971523145de.png', 9, 'null', 'USR_UTM3XFRFK1', '2022-01-06 19:51:15', '2021-12-29 05:56:40'),
(228, '2H5SJGXKRYZC', '<p>A piece of timber leaning against a wall, just touches the top of a fence, as shown. Find how far up the wall the timber reaches.</p>', '<p><img alt=\"3\\tfrac{2}{3}\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?3%5Ctfrac%7B2%7D%7B3%7D\" src=\"https://latex.codecogs.com/gif.latex?3%5Ctfrac%7B2%7D%7B3%7D\"></p>', '<p><img alt=\"5\\tfrac{3}{5}\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?5%5Ctfrac%7B3%7D%7B5%7D\" src=\"https://latex.codecogs.com/gif.latex?5%5Ctfrac%7B3%7D%7B5%7D\"></p>', '<p><img alt=\"2\\tfrac{2}{3}\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?2%5Ctfrac%7B2%7D%7B3%7D\" src=\"https://latex.codecogs.com/gif.latex?2%5Ctfrac%7B2%7D%7B3%7D\"></p>', '<p><img alt=\"6\\tfrac{1}{5}\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?6%5Ctfrac%7B1%7D%7B5%7D\" src=\"https://latex.codecogs.com/gif.latex?6%5Ctfrac%7B1%7D%7B5%7D\"></p>', 'option_c', 'null', '1640775669_f640e851dd0db2bf2000.png', 1, 'null', 'USR_UTM3XFRFK1', '2022-01-06 19:51:15', '2021-12-29 06:03:27'),
(229, '1PJTD6KK7A22', '<p>These two cylinders are similar with heights 2 cm and 4 cm respectively. <strong>Cylinder A</strong> has volume <img alt=\"10cm^{3}\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?10cm%5E%7B3%7D\" src=\"https://latex.codecogs.com/gif.latex?10cm%5E%7B3%7D\">. Find the volume of <strong>Cylinder B.</strong></p>', '<p><img alt=\"70cm^{3}\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?70cm%5E%7B3%7D\" src=\"https://latex.codecogs.com/gif.latex?70cm%5E%7B3%7D\"></p>', '<p><img alt=\"80cm^{3}\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?80cm%5E%7B3%7D\" src=\"https://latex.codecogs.com/gif.latex?80cm%5E%7B3%7D\"></p>', '<p><img alt=\"85cm^{3}\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?85cm%5E%7B3%7D\" src=\"https://latex.codecogs.com/gif.latex?85cm%5E%7B3%7D\"></p>', '<p><img alt=\"75cm^{3}\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?75cm%5E%7B3%7D\" src=\"https://latex.codecogs.com/gif.latex?75cm%5E%7B3%7D\"></p>', 'option_b', 'null', '1640776005_0b1bb90169b049cafde6.png', 5, 'null', 'USR_UTM3XFRFK1', '2022-01-06 19:51:15', '2021-12-29 06:08:43'),
(230, 'WE9M6HUKLGJQ', '<p>The side lengths of triangle A are 5cm, 6cm and 7cm. The longest side of a similar triangle B is 28cm. <strong>Find the scale factor when enlarging triangle A to give triangle B.</strong></p>', '<p>1</p>', '<p>2</p>', '<p>3</p>', '<p>4</p>', 'option_d', 'null', 'image_question.png', 1, 'null', 'USR_UTM3XFRFK1', '2022-01-06 19:51:15', '2021-12-29 06:11:33'),
(231, 'EKULR3U85GEH', '<p>The two solid shapes are mathematically similar. Find the Volume, V, of the bigger shape.</p>', '<p>8</p>', '<p>18</p>', '<p>40.5</p>', '<p>12.5</p>', 'option_c', 'null', '1640776349_e70a976d2b2a1a894847.png', 1, 'null', 'USR_UTM3XFRFK1', '2022-01-06 19:51:15', '2021-12-29 06:15:03'),
(232, '7PLBZUMCEE1Q', '<p>Two solid wooden spheres have radii&nbsp;<img alt=\"x\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?x\" src=\"https://latex.codecogs.com/gif.latex?x\"> cm and&nbsp;<img alt=\"3x\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?3x\" src=\"https://latex.codecogs.com/gif.latex?3x\"> cm respectively. If the smaller one has volume <img alt=\"250cm^{3}\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?250cm%5E%7B3%7D\" src=\"https://latex.codecogs.com/gif.latex?250cm%5E%7B3%7D\">, find the volume of the larger one.</p>', '<p><img alt=\"6750cm^{3}\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?6750cm%5E%7B3%7D\" src=\"https://latex.codecogs.com/gif.latex?6750cm%5E%7B3%7D\"></p>', '<p><img alt=\"2850cm^{3}\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?2850cm%5E%7B3%7D\" src=\"https://latex.codecogs.com/gif.latex?2850cm%5E%7B3%7D\"></p>', '<p><img alt=\"9.259cm^{3}\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?9.259cm%5E%7B3%7D\" src=\"https://latex.codecogs.com/gif.latex?9.259cm%5E%7B3%7D\"></p>', '<p><img alt=\"83.333cm^{3}\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?83.333cm%5E%7B3%7D\" src=\"https://latex.codecogs.com/gif.latex?83.333cm%5E%7B3%7D\"></p>', 'option_a', 'null', 'image_question.png', 1, 'null', 'USR_UTM3XFRFK1', '2022-01-06 19:51:15', '2021-12-29 06:20:02'),
(233, 'LEIBAVZK4Z3E', '<p>Find the value of <img alt=\"x\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?x\" src=\"https://latex.codecogs.com/gif.latex?x\">.</p>', '<p>4.2</p>', '<p>2.8</p>', '<p>2.14</p>', '<p>3.14</p>', 'option_a', 'null', '1640777050_b53c8599344b148efcde.png', 1, 'null', 'USR_UTM3XFRFK1', '2022-01-06 19:51:15', '2021-12-29 06:40:44'),
(234, 'BAELJ9VMQFOZ', '<p>It is established that a pair of similar triangles exist in the diagram. Find the value of <img alt=\"x\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?x\" src=\"https://latex.codecogs.com/gif.latex?x\">.</p>', '<p>1</p>', '<p>2</p>', '<p>3</p>', '<p>4</p>', 'option_c', 'null', '1640778329_54877d1ba5bd65eb78b2.png', 1, 'null', 'USR_UTM3XFRFK1', '2022-01-06 19:51:15', '2021-12-29 06:46:18'),
(235, 'IJKYSN7XV64M', '<p>Triangles ABC and PQR are similar, find the value of <img alt=\"x\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?x\" src=\"https://latex.codecogs.com/gif.latex?x\">.</p>', '<p>3.6</p>', '<p><img alt=\"4\\tfrac{4}{9}\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?4%5Ctfrac%7B4%7D%7B9%7D\" src=\"https://latex.codecogs.com/gif.latex?4%5Ctfrac%7B4%7D%7B9%7D\"></p>', '<p>4.94</p>', '<p><img alt=\"\\frac{44}{9}\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?%5Cfrac%7B44%7D%7B9%7D\" src=\"https://latex.codecogs.com/gif.latex?%5Cfrac%7B44%7D%7B9%7D\"></p>', 'option_a', 'null', '1640778658_92e1a5255f284dda526f.png', 2, 'null', 'USR_UTM3XFRFK1', '2022-01-06 19:51:15', '2021-12-29 06:51:52'),
(236, 'Q0NUSEKWWNBX', '<p><br></p>', '<p><br></p>', '<p><br></p>', '<p><br></p>', '<p><br></p>', '', '', 'image_question.png', 0, '', 'USR_UTM3XFRFK1', '2021-12-30 14:35:27', '2021-12-30 14:35:27'),
(237, 'HGSD7KXICD3I', '<p><br></p>', '<p><br></p>', '<p><br></p>', '<p><br></p>', '<p><br></p>', '', '', 'image_question.png', 0, '', 'USR_UTM3XFRFK1', '2021-12-30 22:29:01', '2021-12-30 22:29:01'),
(238, 'LR4S9KPCSQKN', '<p>dsfdsff<br></p>', '<p>asdas<br></p>', '<p>kjytr<br></p>', '<p>nbv<br></p>', '<p>xcvbnm<br></p>', '', '', 'image_question.png', 12, '', 'USR_UTM3XFRFK1', '2021-12-31 10:20:03', '2021-12-31 10:19:45'),
(239, 'UHXFW0RD60CV', '<p>sdrrte</p>', '<p>tutyititi</p>', '<p>luikyjtrhgfe</p>', '<p>ewrtyui</p>', '<p>lkhjgff</p>', '', '', 'image_question.png', 1, '', 'USR_UTM3XFRFK1', '2021-12-31 10:23:17', '2021-12-31 10:22:11'),
(240, 'KPGGIS8KLQNO', '<p>In what year did Nigeria gain Independence?<br></p>', '<p>1920<br></p>', '<p>1960<br></p>', '<p>1990<br></p>', '<p>1992<br></p>', 'option_b', '', 'image_question.png', 5, '', 'USR_UTM3XFRFK1', '2021-12-31 11:01:21', '2021-12-31 11:00:24'),
(241, 'V40VKQABX6NM', '<p>What year did Nigeria gain Independence?</p>', '<p>1960</p>', '<p>1930</p>', '<p>1980</p>', '<p>1982</p>', 'option_a', '', 'image_question.png', 2, '', 'USR_UTM3XFRFK1', '2021-12-31 13:13:58', '2021-12-31 13:12:28'),
(253, '2YA0M5TBOM6Z', '<p>Discuss the <strong>democracy </strong>of Nigeria.</p>', 'null', 'null', 'null', 'null', 'null', '<p>Nigeria\'s <strong>democracy </strong>is nascent meaning it is still young and continues to grow while been bessoted by travails and challenges typical of a fledging <strong>democratic </strong>entity as such.</p>', 'image_question.png', 3, '<p>Use terms you were taught in school.</p>', 'USR_UTM3XFRFK1', '2022-01-02 15:33:20', '2022-01-02 15:16:47'),
(252, '4ESNSAQ0EIB8', '<p>Question for you</p>', 'null', 'null', 'null', 'null', 'null', '<p>no</p>', '1641091761_a837d43a2f46702b3fe3.jpg', 1, '<p>yes</p>', 'USR_UTM3XFRFK1', '2022-01-02 03:49:21', '2022-01-02 03:38:39'),
(251, '1XI826YROFHH', '<p>Hello</p>', 'null', 'null', 'null', 'null', 'null', '<p>Hi</p>', '1641091749_cabeb384ff89f528bd58.png', 1, '<p>Hi</p>', 'USR_UTM3XFRFK1', '2022-01-02 03:49:09', '2022-01-02 03:38:28'),
(250, '6WCQFNMZ6WRZ', '<p>Hello<br></p>', 'null', 'null', 'null', 'null', 'null', '<p>Hiya<br></p>', 'image_question.png', 1, '<p>Hiya<br></p>', 'USR_UTM3XFRFK1', '2022-01-02 03:35:12', '2022-01-02 03:35:12'),
(254, '16S2N00COT8V', '<p>Write a story to illustrate the harrowing circumstances Black South Africans experienced during the Apartheid era.</p>', 'null', 'null', 'null', 'null', 'null', '<p>The South African Government was dominated by White individuals.</p>', 'image_question.png', 5, '<p>Recall the inspirational quotes of Cecil B. Rhodes</p>', 'USR_UTM3XFRFK1', '2022-01-02 15:33:20', '2022-01-02 15:32:52'),
(255, '9JGHAIEERQNA', '<p>I am the best in the World.<br></p>', 'null', 'null', 'null', 'null', 'null', '<p>I really am the best in the World!!!<br></p>', 'image_question.png', 1, '<p>Yes I am!<br></p>', 'USR_UTM3XFRFK1', '2022-01-02 15:38:08', '2022-01-02 15:38:08'),
(256, '0FYHI8OY53L6', '<p>I am the best in the World!!!<br></p>', 'null', 'null', 'null', 'null', 'null', '<p>I really am the best in the World.<br></p>', 'image_question.png', 1, '<p>I am still the best in the world.<br></p>', 'USR_UTM3XFRFK1', '2022-01-02 15:42:35', '2022-01-02 15:42:35'),
(257, '7ZTV7PAJYPKY', '<p><strong>Rich </strong><u>text</u><br></p>', '<p>ade<br></p>', '<p>wole<br></p>', '<p>kola<br></p>', '<p>tade<br></p>', 'option_b', 'null', '1641387650_a8334574dbef3d91c87e.jpg', 0, 'null', 'USR_UTM3XFRFK1', '2022-01-05 14:01:41', '2022-01-05 14:00:58'),
(258, 'RCJNZMT80IOF', '<p>A substance that can\'t be broken down into simpler substances using any chemical means is:</p>', '<p>an element</p>', '<p>a compound</p>', '<p>a mixture</p>', '<p>a colloid</p>', 'option_a', 'null', 'image_question.png', 2, 'null', 'USR_UTM3XFRFK1', '2022-03-14 05:02:46', '2022-01-05 13:35:24'),
(259, 'YVSM6KEBRR5H', '<p>Measurable or numerical information is called:</p>', '<p>qualitative data</p>', '<p>quantitative data</p>', '<p>a variable</p>', '<p>a hypothesis</p>', 'option_a', 'null', 'image_question.png', 3, 'null', 'USR_UTM3XFRFK1', '2022-03-14 05:02:59', '2022-01-05 13:42:23'),
(260, 'B7HXATTRUT4V', '<p>Which of these elements is a noble gas?</p>', '<p>Krypton</p>', '<p>Oxygen</p>', '<p>Hydrogen</p>', '<p>Nitrogen</p>', 'option_a', 'null', 'image_question.png', 2, 'null', 'USR_UTM3XFRFK1', '2022-03-14 05:03:00', '2022-01-05 13:42:23'),
(261, 'JM0MW4FTVNFO', '<p>What is true of a balanced chemical equation?</p>', '<p>There are always more products than reactants.</p>', '<p>The number of moles of products equals the number of moles of reactants.</p>', '<p>Both sides of the reaction have the same number and types of atoms.</p>', '<p>Energy is always released.</p>', 'option_c', 'null', 'image_question.png', 1, 'null', 'USR_UTM3XFRFK1', '2022-01-05 13:44:27', '2022-01-05 13:42:23'),
(262, 'TQJMRMQVLSCP', '<p>A vector describes:</p>', '<p>direction only</p>', '<p>magnitude only</p>', '<p>size and shape</p>', '<p>magnitude and direction</p>', 'option_d', 'null', 'image_question.png', 1, 'null', 'USR_UTM3XFRFK1', '2022-01-05 13:44:27', '2022-01-05 13:42:23'),
(263, 'TQHWIMH9MCRI', '<p>A well-substantiated explanation of an aspect of the natural world is:</p>', '<p>a theory</p>', '<p>a law</p>', '<p>a hypothesis</p>', '<p>an educated guess</p>', 'option_b', 'null', 'image_question.png', 1, 'null', 'USR_UTM3XFRFK1', '2022-01-05 13:44:27', '2022-01-05 13:42:23'),
(264, 'TZIWY15X6OZP', '<p>Which of the following is an example of a malleable element?</p>', '<p>Helium</p>', '<p>Gold</p>', '<p>Sulfur</p>', '<p>Bromine</p>', 'option_b', 'null', 'image_question.png', 1, 'null', 'USR_UTM3XFRFK1', '2022-01-05 13:44:27', '2022-01-05 13:42:23'),
(265, 'JK7ZODO1IKS4', '<p>What is the word for a measure of the force of gravity on an object?</p>', '<p>Friction</p>', '<p>Mass</p>', '<p>Centripetal force</p>', '<p>Velocity</p>', 'option_a', 'null', 'image_question.png', 1, 'null', 'USR_UTM3XFRFK1', '2022-01-05 13:44:27', '2022-01-05 13:42:23'),
(266, 'MUDMZYZZZPHT', '<p>Newton\'s first law of motion may be stated as:</p>', '<p>Force equal mass multiplied by acceleration.</p>', '<p>For every action, there is an equal and opposite reaction.</p>', '<p>Mass is always conserved in a system.</p>', '<p>A body in motion stays in motion, while a body at rest stays at rest unless acted upon by an unbalanced force.</p>', 'option_d', 'null', 'image_question.png', 1, 'null', 'USR_UTM3XFRFK1', '2022-01-05 13:44:27', '2022-01-05 13:42:23'),
(267, 'JCUZZAMMTU0W', '<p>What do you get when you mix an acid and a base?</p>', '<p>an amino acid</p>', '<p>a soap</p>', '<p>a salt</p>', '<p>a sugar</p>', 'option_c', 'null', 'image_question.png', 1, 'null', 'USR_UTM3XFRFK1', '2022-01-05 13:44:27', '2022-01-05 13:42:23'),
(268, 'RXAR8R7FWBZK', '<p>Which of this helps in putting the thread to the needle?</p>', '<p>Thread</p>', '<p>Button attachment machine</p>', '<p>French curve</p>', '<p>Sewing needle threader</p>', 'option_d', 'null', '1641410830_f87753c4c5726252d8b8.png', 1, 'null', 'USR_UTM3XFRFK1', '2022-01-05 15:09:45', '2022-01-05 14:25:03'),
(269, 'ELX5VJYZWFHJ', '<p>Which of this is used in making temporary stitches and buttonholes?</p>', '<p>embroidery scissors</p>', '<p>tape measure</p>', '<p>hand needle</p>', '<p>bartacking machine</p>', 'option_c', 'null', '1641410949_c7181a456d8297ab5c42.png', 1, 'null', 'USR_UTM3XFRFK1', '2022-01-05 15:09:45', '2022-01-05 14:25:03'),
(270, 'BZOFRRQ2RJIY', '<p>Also known as dressmaker pencil, which of these is used to make fine lines on fabric?</p>', '<p>pinking shears</p>', '<p>hi-speed lockstitch sewing machine</p>', '<p>chalk pencil</p>', '<p>embroidery scissors</p>', 'option_c', 'null', '1641411058_7702411a093f92b245a1.png', 1, 'null', 'USR_UTM3XFRFK1', '2022-01-05 15:09:45', '2022-01-05 14:25:03'),
(271, 'XCVKQ0QAT4A5', '<p>Which of these is a tool used to shape the depth of the neckhole and armhole of the pattern?</p>', '<p>French curve</p>', '<p>Dressmaker\'s carbon paper</p>', '<p>Thimble</p>', '<p>lockstitch sewing machine</p>', 'option_a', 'null', '1641411175_d28cf9ea0f63304c378d.png', 1, 'null', 'USR_UTM3XFRFK1', '2022-01-05 15:09:45', '2022-01-05 14:25:03'),
(272, 'TMLYU0CJW55C', '<p>Cutting scissors used in working with fine details in delicate fabrics and in embroidery work is called what?</p>', '<p>Seam ripper</p>', '<p>Trimming Scissors</p>', '<p>L-square</p>', '<p>Embroidery Scissors<br></p>', 'option_d', 'null', '1641411277_dbe9e8a2f131a4af5d98.png', 1, 'null', 'USR_UTM3XFRFK1', '2022-01-05 15:09:46', '2022-01-05 14:25:03'),
(273, 'UYUTVZSX5ZYO', '<p>This holds the straight pins and needles while working to prevent accidents.</p>', '<p>L-square</p>', '<p>Pin cushion</p>', '<p>Thimble</p>', '<p>French Curve</p>', 'option_b', 'null', '1641411481_a160cf90b5f3c79a93b3.png', 1, 'null', 'USR_UTM3XFRFK1', '2022-01-05 15:09:46', '2022-01-05 14:39:25'),
(274, 'H5UWYPYTKIWH', '<p>A small hard pitted cup worn for protection on the finger that pushes the needle in sewing.</p>', '<p>Thimble</p>', '<p>Dressmaker\'s carbon paper</p>', '<p>Embroidery machine</p>', '<p>Hi-speed lockstitch sewing machine</p>', 'option_a', 'null', '1641412308_1d4c06ba3c344496fc9b.png', 1, 'null', 'USR_UTM3XFRFK1', '2022-01-05 15:09:46', '2022-01-05 14:53:28'),
(275, 'YL5D51PWC2HN', '<p>A tool specifically designed for ripping out stitches from seams, either as a result of an error or during alterations.</p>', '<p>Thread</p>', '<p>Seam Ripper</p>', '<p>Double needle machine</p>', '<p>Button attachment machine</p>', 'option_b', 'null', '1641412405_874745c6e76506192365.png', 1, 'null', 'USR_UTM3XFRFK1', '2022-01-05 15:09:46', '2022-01-05 14:53:28'),
(276, '29MF6NZYGR6W', '<p>A marking tool that is removed by brushing it off the fabric.</p>', '<p>Button holer machine</p>', '<p>Tailor\'s chalk</p>', '<p>L-square</p>', '<p>Yardstick</p>', 'option_b', 'null', '1641412497_34cba3d0ac3974dc162a.png', 1, 'null', 'USR_UTM3XFRFK1', '2022-01-05 15:09:46', '2022-01-05 14:57:08'),
(277, 'CJAR8MFGVZBY', '<p>A cutting tool that is made of quality steel and hold a sharp cutting edge. The blades move easily and cut smoothly along the length and the points should come together.</p>', '<p>Sewing needle threader</p>', '<p>Thread</p>', '<p>Thimble</p>', '<p>Bent-handled dressmaker\'s shears</p>', 'option_d', 'null', '1641412601_7579b963c2163c6f6d14.png', 1, 'null', 'USR_UTM3XFRFK1', '2022-01-05 15:09:48', '2022-01-05 14:57:08'),
(279, 'JTRX76PGZ0RD', '<p>Which language code is this:</p><div tabindex=\"-1\" data-cke-widget-wrapper=\"1\" data-cke-filter=\"off\" class=\"cke_widget_wrapper cke_widget_block cke_widget_codeSnippet\" data-cke-display-name=\"code snippet\" data-cke-widget-id=\"0\" role=\"region\" aria-label=\"code snippet widget\" contenteditable=\"false\"><pre data-cke-widget-keep-attr=\"0\" data-widget=\"codeSnippet\" class=\"cke_widget_element\" data-cke-widget-data=\"%7B%22classes%22%3Anull%2C%22lang%22%3A%22javascript%22%2C%22code%22%3A%22var%20name%20%3D%20%5C%22Joseph%5C%22%3B%5Cndocument.write(\'My%20name%20is%20\'%20%2B%20name)%3B%22%7D\"><code class=\"hljs language-javascript\"><span class=\"hljs-keyword\">var</span> name = <span class=\"hljs-string\">\"Joseph\"</span>;\ndocument.write(<span class=\"hljs-string\">\'My name is \'</span> + name);</code></pre><img src=\"data:image/gif;base64,R0lGODlhAQABAPABAP///wAAACH5BAEKAAAALAAAAAABAAEAAAICRAEAOw==\" class=\"cke_reset cke_widget_mask\"><span class=\"cke_reset cke_widget_drag_handler_container\" style=\"background: rgba(220, 220, 220, 0.5) url(&quot;http://localhost/questa_app/assets/js/plugins/ckeditor/plugins/widget/images/handle.png&quot;) repeat scroll 0% 0%; top: -15px; left: 0px;\"><img class=\"cke_reset cke_widget_drag_handler\" data-cke-widget-drag-handler=\"1\" src=\"data:image/gif;base64,R0lGODlhAQABAPABAP///wAAACH5BAEKAAAALAAAAAABAAEAAAICRAEAOw==\" title=\"Click and drag to move\" role=\"presentation\" width=\"15\" height=\"15\"></span></div><p>code snippet widget</p>', 'null', 'null', 'null', 'null', 'null', '<p>Javascript</p>', '1653928328_fa8546c9b1b25aec3d8b.png', 2, '<p>The language of the Web</p>', 'USR_UTM3XFRFK1', '2022-05-30 17:32:13', '2022-01-06 20:06:22'),
(280, 'UCT5JSJUAULR', '<p>Which of the following is a server-side Java Script object?</p>', '<p>Function</p>', '<p>File</p>', '<p>FileUpload</p>', '<p>Date</p>', 'option_b', 'null', 'image_question.png', 1, 'null', 'USR_UTM3XFRFK1', '2022-01-06 22:16:19', '2022-01-06 21:29:38'),
(281, 'YSZX60P0Q2GX', '<p>To insert a JavaScript code into an HTML page, which tag is used?</p>', '<p>&lt; script=’java’&gt;</p>', '<p>&lt;javascript&gt;</p>', '<p>&lt;script&gt;</p>', '<p>&lt;js&gt;</p>', 'option_c', 'null', 'image_question.png', 1, 'null', 'USR_UTM3XFRFK1', '2022-01-06 22:20:54', '2022-01-06 21:29:38'),
(282, 'TJWXYSMJ5AAD', '<p>Which of the below is used in Java script to insert special characters?</p>', '<p>&amp;</p>', '<p>\\</p>', '<p><strong>-</strong></p>', '<p>%</p>', 'option_b', 'null', 'image_question.png', 3, 'null', 'USR_UTM3XFRFK1', '2022-01-06 22:20:54', '2022-01-06 21:30:23'),
(283, '2IHRF8POKLVL', '<p>How does Java Script store dates in objects of Date type?</p>', '<p>The number of days since January 1st, 1900</p>', '<p>The number of seconds since January 1st, 1970</p>', '<p>The number of milliseconds since January 1st, 1970</p>', '<p>The number of picoseconds since January 1st, 1970</p>', 'option_c', 'null', 'image_question.png', 2, 'null', 'USR_UTM3XFRFK1', '2022-01-06 22:20:54', '2022-01-06 21:31:41'),
(284, 'UULZTJOM0FGR', '<p>Which is the correct way to write a JavaScript array?<br></p>', '<div tabindex=\"-1\" data-cke-widget-wrapper=\"1\" data-cke-filter=\"off\" class=\"cke_widget_wrapper cke_widget_block cke_widget_codeSnippet cke_widget_selected\" data-cke-display-name=\"code snippet\" data-cke-widget-id=\"0\" role=\"region\" aria-label=\"code snippet widget\" contenteditable=\"false\"><pre data-cke-widget-keep-attr=\"0\" data-widget=\"codeSnippet\" class=\"cke_widget_element\" data-cke-widget-data=\"%7B%22classes%22%3Anull%2C%22lang%22%3A%22javascript%22%2C%22code%22%3A%22var%20txt%20%3D%20new%20Array(1%3A%5C%22arr%5C%22%2C2%3A%5C%22kim%5C%22%2C3%3A%5C%22jim%5C%22)%22%7D\"><code class=\"hljs language-javascript\"><span class=\"hljs-keyword\">var</span> txt = <span class=\"hljs-keyword\">new</span> <span class=\"hljs-built_in\">Array</span>(<span class=\"hljs-number\">1</span>:<span class=\"hljs-string\">\"arr\"</span>,<span class=\"hljs-number\">2</span>:<span class=\"hljs-string\">\"kim\"</span>,<span class=\"hljs-number\">3</span>:<span class=\"hljs-string\">\"jim\"</span>)</code></pre><img src=\"data:image/gif;base64,R0lGODlhAQABAPABAP///wAAAC', '<p>var txt = new Array:1=(\" arr \")2=(\"kim\")3=(\"jim\")<br></p><div tabindex=\"-1\" data-cke-widget-wrapper=\"1\" data-cke-filter=\"off\" class=\"cke_widget_wrapper cke_widget_block cke_widget_codeSnippet cke_widget_selected\" data-cke-display-name=\"code snippet\" data-cke-widget-id=\"0\" role=\"region\" aria-label=\"code snippet widget\" contenteditable=\"false\"><pre data-cke-widget-keep-attr=\"0\" data-widget=\"codeSnippet\" class=\"cke_widget_element\" data-cke-widget-data=\"%7B%22classes%22%3Anull%2C%22lang%22%3A%22javascript%22%2C%22code%22%3A%22var%20txt%20%3D%20new%20Array%3A1%3D(%5C%22%20arr%20%5C%22)2%3D(%5C%22kim%5C%22)3%3D(%5C%22jim%5C%22)%22%7D\"><code class=\"hljs language-javascript\"><span class=\"hljs-keyword\">var</span> txt = <span class=\"hljs-keyword\">new</span> <span class=\"hljs-built_in\">Array</span>:<span class=\"hljs-number\">1</span>=(<span class=\"hljs-string\">\" arr \"</span>)<span class=\"hljs-number\">2</span>=(<span class=\"hljs-string\">\"kim\"</span>)<span class=\"hljs-number\">3</span>=(<span class=\"hljs-string\">\"jim\"</span>', '<div tabindex=\"-1\" data-cke-widget-wrapper=\"1\" data-cke-filter=\"off\" class=\"cke_widget_wrapper cke_widget_block cke_widget_codeSnippet cke_widget_selected\" data-cke-display-name=\"code snippet\" data-cke-widget-id=\"0\" role=\"region\" aria-label=\"code snippet widget\" contenteditable=\"false\"><pre data-cke-widget-keep-attr=\"0\" data-widget=\"codeSnippet\" class=\"cke_widget_element\" data-cke-widget-data=\"%7B%22classes%22%3Anull%2C%22lang%22%3A%22javascript%22%2C%22code%22%3A%22var%20txt%20%3D%20new%20Array(%5C%22arr%20%5C%22%2C%5C%22kim%5C%22%2C%5C%22jim%5C%22)%22%7D\"><code class=\"hljs language-javascript\"><span class=\"hljs-keyword\">var</span> txt = <span class=\"hljs-keyword\">new</span> <span class=\"hljs-built_in\">Array</span>(<span class=\"hljs-string\">\"arr \"</span>,<span class=\"hljs-string\">\"kim\"</span>,<span class=\"hljs-string\">\"jim\"</span>)</code></pre><img src=\"data:image/gif;base64,R0lGODlhAQABAPABAP///wAAACH5BAEKAAAALAAAAAABAAEAAAICRAEAOw==\" class=\"cke_reset cke_widget_mask\"><span class=\"cke_reset cke_widget_drag_hand', '<div tabindex=\"-1\" data-cke-widget-wrapper=\"1\" data-cke-filter=\"off\" class=\"cke_widget_wrapper cke_widget_block cke_widget_codeSnippet cke_widget_focused cke_widget_selected\" data-cke-display-name=\"code snippet\" data-cke-widget-id=\"0\" role=\"region\" aria-label=\"code snippet widget\" contenteditable=\"false\"><pre data-cke-widget-keep-attr=\"0\" data-widget=\"codeSnippet\" class=\"cke_widget_element\" data-cke-widget-data=\"%7B%22classes%22%3Anull%2C%22lang%22%3A%22javascript%22%2C%22code%22%3A%22var%20txt%20%3D%20new%20Array%3D%5C%22%20arr%20%5C%22%2C%5C%22kim%5C%22%2C%5C%22jim%5C%22%22%7D\"><code class=\"hljs language-javascript\"><span class=\"hljs-keyword\">var</span> txt = <span class=\"hljs-keyword\">new</span> <span class=\"hljs-built_in\">Array</span>=<span class=\"hljs-string\">\" arr \"</span>,<span class=\"hljs-string\">\"kim\"</span>,<span class=\"hljs-string\">\"jim\"</span></code></pre><img src=\"data:image/gif;base64,R0lGODlhAQABAPABAP///wAAACH5BAEKAAAALAAAAAABAAEAAAICRAEAOw==\" class=\"cke_reset cke_widget_mask\"><span class=\"cke_res', '', 'null', 'image_question.png', 1, 'null', 'USR_UTM3XFRFK1', '2022-01-06 21:33:21', '2022-01-06 21:33:21'),
(285, 'YQXYVKAQPJEN', '<p>Which is the correct way to write a JavaScript array?</p>', '<p>var txt = new Array(1: \"arr\", 2: \"kim\", 3: \"jim\");</p>', '<p>var txt = new Array: 1=(\" arr \")2 = (\"kim\") 3 = (\"jim\");</p>', '<p>var txt = new Array(\"arr \", \"kim\", \"jim\");</p>', '<p>var txt = new Array = \" arr \", \"kim\", \"jim\";</p>', 'option_a', 'null', 'image_question.png', 3, 'null', 'USR_UTM3XFRFK1', '2022-01-06 22:20:54', '2022-01-06 21:35:50'),
(286, '3PJJSOAMY6YF', '<p>Which of the following is correct to write “Hello World” on the web page?</p>', '<p>System.out.println(“Hello World”);</p>', '<p>print(“Hello World”);</p>', '<p>document.write(“Hello World”);</p>', '<p>response.write(“Hello World”);</p>', 'option_c', 'null', 'image_question.png', 1, 'null', 'USR_UTM3XFRFK1', '2022-01-06 22:16:19', '2022-01-06 21:38:14'),
(287, '54TPJX42A24S', '<p>Which attribute needs to be changed to make elements invisible?</p>', '<p>visibility</p>', '<p>visible</p>', '<p>invisibility</p>', '<p>invisible</p>', 'option_a', 'null', 'image_question.png', 1, 'null', 'USR_UTM3XFRFK1', '2022-01-06 22:16:19', '2022-01-06 21:40:03'),
(288, 'EPHBMTTM0TGC', '<p>Which of the following is not a valid JavaScript variable name?</p>', '<p>2java</p>', '<p>_java_and_ java _names</p>', '<p>javaandjava</p>', '<p>None of the above</p>', 'option_a', 'null', 'image_question.png', 1, 'null', 'USR_UTM3XFRFK1', '2022-01-06 22:16:19', '2022-01-06 21:40:03'),
(289, 'VQ6AFY7YA91I', '<p>Which of the ways below is incorrect of instantiating a date?</p>', '<p>new Date(dateString);</p>', '<p>new Date();</p>', '<p>new Date(seconds);</p>', '<p>new Date(year, month, day, hours, minutes, seconds, milliseconds);</p>', 'option_b', 'null', 'image_question.png', 1, 'null', 'USR_UTM3XFRFK1', '2022-01-06 22:16:19', '2022-01-06 21:42:37'),
(290, 'NIONJXID45NV', '<p>What is negative infinity in Java script?</p>', '<p>Any of the other options</p>', '<p>Number in JavaScript, derived by dividing number by a negative number.</p>', '<p>Number in JavaScript, derived by dividing number by zero.</p>', '<p>Number in JavaScript, derived by dividing negative number by zero.</p>', 'option_a', 'null', 'image_question.png', 1, 'null', 'USR_UTM3XFRFK1', '2022-01-06 22:16:19', '2022-01-06 21:42:37'),
(291, '1VORPIXTGVB6', '<p>Which of the following method is used to evaluate a string of JavaScript code in the context of the specified object?</p>', '<p>eval()</p>', '<p>parseDouble()</p>', '<p>parseObject()</p>', '<p>efloat()</p>', 'option_a', 'null', 'image_question.png', 1, 'null', 'USR_UTM3XFRFK1', '2022-01-06 22:16:36', '2022-01-06 21:44:21'),
(292, 'PF4AQFMDI3WD', '<p>How is a value <strong>appended </strong>to a JavaScript array?</p>', '<p>arr[arr.length] = value;</p>', '<p>arr[arr.length+1] = new Arrays();</p>', '<p>arr[arr.length-1] = value;</p>', '<p>arr[arr.length*1] = value;</p>', 'option_b', 'null', 'image_question.png', 2, 'null', 'USR_UTM3XFRFK1', '2022-01-06 22:20:54', '2022-01-06 21:46:12'),
(293, '8ZJI9KZLBEQ6', '<p>What would be the output of the following code snippet?</p><div tabindex=\"-1\" data-cke-widget-wrapper=\"1\" data-cke-filter=\"off\" class=\"cke_widget_wrapper cke_widget_block cke_widget_codeSnippet\" data-cke-display-name=\"code snippet\" data-cke-widget-id=\"0\" role=\"region\" aria-label=\"code snippet widget\" contenteditable=\"false\"><pre data-cke-widget-keep-attr=\"0\" data-widget=\"codeSnippet\" class=\"cke_widget_element\" data-cke-widget-data=\"%7B%22classes%22%3Anull%2C%22lang%22%3A%22javascript%22%2C%22code%22%3A%22var%20a%20%3D%20%5C%22GeeksforGeeks%5C%22%3B%20%5Cnvar%20x%20%3D%20a.lastIndexOf(%5C%22G%5C%22)%3B%20%5Cndocument.write(x)%3B%20%22%7D\"><code class=\"hljs language-javascript\"><span class=\"hljs-keyword\">var</span> a = <span class=\"hljs-string\">\"GeeksforGeeks\"</span>; \n<span class=\"hljs-keyword\">var</span> x = a.lastIndexOf(<span class=\"hljs-string\">\"G\"</span>); \ndocument.write(x); </code></pre><img src=\"data:image/gif;base64,R0lGODlhAQABAPABAP///wAAACH5BAEKAAAALAAAAAABAAEAAAICRAEAOw==\" class=\"cke_reset cke_widget_mask\"><span class=\"cke_reset cke_widget_drag_handler_container\" style=\"background:rgba(220,220,220,0.5);background-image:url(https://pharmos.xyz/cbt_app/assets/js/plugins/ckeditor/plugins/widget/images/handle.png);display:none;\"><img class=\"cke_reset cke_widget_drag_handler\" data-cke-widget-drag-handler=\"1\" src=\"data:image/gif;base64,R0lGODlhAQABAPABAP///wAAACH5BAEKAAAALAAAAAABAAEAAAICRAEAOw==\" title=\"Click and drag to move\" role=\"presentation\" width=\"15\" height=\"15\"></span></div><p>code snippet widget</p>', '<p>8</p>', '<p>9</p>', '<p>0</p>', '<p>Nothing is shown</p>', 'option_a', 'null', 'image_question.png', 3, 'null', 'USR_UTM3XFRFK1', '2022-01-06 22:24:19', '2022-01-06 21:48:35'),
(295, 'ZYNJSGVCAX7E', '<p>What is the output of the code snippet:</p><div tabindex=\"-1\" data-cke-widget-wrapper=\"1\" data-cke-filter=\"off\" class=\"cke_widget_wrapper cke_widget_block cke_widget_codeSnippet\" data-cke-display-name=\"code snippet\" data-cke-widget-id=\"0\" role=\"region\" aria-label=\"code snippet widget\" contenteditable=\"false\"><pre data-cke-widget-keep-attr=\"0\" data-widget=\"codeSnippet\" class=\"cke_widget_element\" data-cke-widget-data=\"%7B%22classes%22%3Anull%2C%22lang%22%3A%22javascript%22%2C%22code%22%3A%22var%20a%20%3D%20%5C%22GeeksforGeeks%5C%22%3B%20%5Cnvar%20result%20%3D%20a.substring(4%2C%205)%3B%20%5Cndocument.write(result)%3B%22%7D\"><code class=\"hljs language-javascript\"><span class=\"hljs-keyword\">var</span> a = <span class=\"hljs-string\">\"GeeksforGeeks\"</span>; \n<span class=\"hljs-keyword\">var</span> result = a.substring(<span class=\"hljs-number\">4</span>, <span class=\"hljs-number\">5</span>); \ndocument.write(result);</code></pre><img src=\"data:image/gif;base64,R0lGODlhAQABAPABAP///wAAACH5BAEKAAAALAAAAAABAAEAAAICRAEAOw==\" class=\"cke_reset cke_widget_mask\"><span class=\"cke_reset cke_widget_drag_handler_container\" style=\"background:rgba(220,220,220,0.5);background-image:url(https://pharmos.xyz/cbt_app/assets/js/plugins/ckeditor/plugins/widget/images/handle.png);display:none;\"><img class=\"cke_reset cke_widget_drag_handler\" data-cke-widget-drag-handler=\"1\" src=\"data:image/gif;base64,R0lGODlhAQABAPABAP///wAAACH5BAEKAAAALAAAAAABAAEAAAICRAEAOw==\" title=\"Click and drag to move\" role=\"presentation\" width=\"15\" height=\"15\"></span></div><p>code snippet widget</p>', '<p>sf</p>', '<p>s</p>', '<p>sk</p>', '<p>sfk</p>', 'option_b', 'null', 'image_question.png', 3, 'null', 'USR_UTM3XFRFK1', '2022-01-06 22:24:19', '2022-01-06 21:51:47'),
(294, 'LEUVKWHGS6PG', '<p>Which of the following function of Array object removes the last element from an array and returns that element?</p>', '<p>push()</p>', '<p>delete()</p>', '<p>pop()</p>', '<p>link()</p>', 'option_c', 'null', 'image_question.png', 1, 'null', 'USR_UTM3XFRFK1', '2022-01-06 22:16:19', '2022-01-06 21:50:15'),
(296, 'XQXALM1Y2SBF', '<p>Which of the following function of String object returns the characters in a string between two indexes into the string?</p>', '<p>substr()</p>', '<p>substring()</p>', '<p>string()</p>', '<p>count()</p>', 'option_b', 'null', 'image_question.png', 1, 'null', 'USR_UTM3XFRFK1', '2022-01-06 22:22:32', '2022-01-06 21:53:09'),
(297, '3GQJK4J9CHAC', '<p>What would be the output of the code snippet?</p><div tabindex=\"-1\" data-cke-widget-wrapper=\"1\" data-cke-filter=\"off\" class=\"cke_widget_wrapper cke_widget_block cke_widget_codeSnippet\" data-cke-display-name=\"code snippet\" data-cke-widget-id=\"0\" role=\"region\" aria-label=\"code snippet widget\" contenteditable=\"false\"><pre data-cke-widget-keep-attr=\"0\" data-widget=\"codeSnippet\" class=\"cke_widget_element\" data-cke-widget-data=\"%7B%22classes%22%3Anull%2C%22lang%22%3A%22javascript%22%2C%22code%22%3A%22var%20a%20%3D%20\'20\'%3B%5Cnvar%20b%20%3D%20a%20%3D%2030%3B%5Cndocument.write(a%20%2B%20b)%3B%22%7D\"><code class=\"hljs language-javascript\"><span class=\"hljs-keyword\">var</span> a = <span class=\"hljs-string\">\'20\'</span>;\n<span class=\"hljs-keyword\">var</span> b = a = <span class=\"hljs-number\">30</span>;\ndocument.write(a + b);</code></pre><img src=\"data:image/gif;base64,R0lGODlhAQABAPABAP///wAAACH5BAEKAAAALAAAAAABAAEAAAICRAEAOw==\" class=\"cke_reset cke_widget_mask\"><span class=\"cke_reset cke_widget_drag_handler_container\" style=\"background:rgba(220,220,220,0.5);background-image:url(https://pharmos.xyz/cbt_app/assets/js/plugins/ckeditor/plugins/widget/images/handle.png);display:none;\"><img class=\"cke_reset cke_widget_drag_handler\" data-cke-widget-drag-handler=\"1\" src=\"data:image/gif;base64,R0lGODlhAQABAPABAP///wAAACH5BAEKAAAALAAAAAABAAEAAAICRAEAOw==\" title=\"Click and drag to move\" role=\"presentation\" width=\"15\" height=\"15\"></span></div><p>code snippet widget</p>', '<p>60</p>', '<p>20</p>', '<p>30</p>', '<p>50</p>', 'option_a', 'null', 'image_question.png', 3, 'null', 'USR_UTM3XFRFK1', '2022-01-06 22:24:19', '2022-01-06 22:00:10'),
(298, 'MUHK2WGO9HDD', '<p>What kind of expression is <strong>\"new Point(2,3)\"</strong>?</p>', '<p>Constructor Calling Expression</p>', '<p>Invocation Expression</p>', '<p>Object Creation Expression</p>', '<p>Primary Expression</p>', 'option_c', 'null', 'image_question.png', 2, 'null', 'USR_UTM3XFRFK1', '2022-01-06 22:24:19', '2022-01-06 22:02:37'),
(299, 'J6DSDCJU8TGL', '<p>Which of the following is the correct syntax to display “Tutoriallinks” in an alert box using JavaScript?</p>', '<p>alertbox(\"Tutoriallinks\");</p>', '<p>message(\"Tutoriallinks\");</p>', '<p>alert(“Tutoriallinks”);</p>', '<p>All of the above</p>', 'option_c', 'null', 'image_question.png', 1, 'null', 'USR_UTM3XFRFK1', '2022-01-06 22:16:19', '2022-01-06 22:04:42'),
(300, 'HWXH4Q6XNIRZ', '<p>Which one is Ternary Operator?</p>', '<p>?*</p>', '<p>?:</p>', '<p>&gt;?</p>', '<p>&lt;?</p>', 'option_b', 'null', 'image_question.png', 3, 'null', 'USR_UTM3XFRFK1', '2022-01-06 22:24:19', '2022-01-06 22:06:40'),
(302, 'SIHUFXOICFVL', '<p>jbkjhh jkh kjhk</p>', '<p>hhh l</p>', '<p>hoih loih i</p>', '<p>hihio</p>', '<p>hi</p>', '', 'null', 'image_question.png', 12, 'null', 'USR_UTM3XFRFK1', '2022-01-06 22:31:49', '2022-01-06 22:31:37'),
(301, 'OQ3CDF7TQIGJ', '<p>nbjmhhj</p>', '<p>kjhjhjh</p>', '<p>jhklhjh</p>', '<p>kihjlj</p>', '<p>kjlkjk</p>', '', 'null', 'image_question.png', 10, 'null', 'USR_UTM3XFRFK1', '2022-01-06 22:31:37', '2022-01-06 22:31:05');
INSERT INTO `questions_tb` (`id`, `question_id`, `question_title`, `option_a`, `option_b`, `option_c`, `option_d`, `answer`, `info_answer`, `image`, `points`, `hints`, `question_added_by`, `date_updated`, `date_created`) VALUES
(303, '1ZJEPJL2K9T0', '<p>Find the midpoint of the line segment connecting the points <strong>(4,4)</strong> and <strong>(5,6)</strong>.</p>', '<p>(4, 5)</p>', '<p>(9, 10)</p>', '<p>(4.5, 5)</p>', '<p>(1, 3)</p>', 'option_c', 'null', 'image_question.png', 1, 'null', 'USR_UTM3XFRFK1', '2022-01-22 18:37:11', '2022-01-17 11:33:05'),
(304, 'PSSCOAEAE6SA', '<p>Find the midpoint of the line segment connecting the points <strong>(2,4)</strong> and <strong>(-5,-4)</strong>.</p>', '<p>(-3, 0)</p>', '<p>(-1.5, 0)</p>', '<p>(2, 1)</p>', '<p>(7, 8)</p>', 'option_b', 'null', 'image_question.png', 1, 'null', 'USR_UTM3XFRFK1', '2022-01-22 18:37:11', '2022-01-17 11:33:05'),
(305, '6NGYYDZYDS0X', '<p>N is the midpoint of XY. The coordinates of X are <strong>(6, 3)</strong> and the coordinates of N are <strong>(4.6, 6)</strong>. Find the coordinates of Y.</p>', '<p>(4.6, 6)</p>', '<p>(10.6, 9)</p>', '<p>(0.7, 4.5)</p>', '<p>(3.2, 9)</p>', 'option_d', 'null', 'image_question.png', 1, 'null', 'USR_UTM3XFRFK1', '2022-01-22 18:37:11', '2022-01-17 11:35:50'),
(306, '7KJ9YVCUIHFH', '<p>Find the midpoint of the segment connecting the points <strong>(3, 6)</strong> and <strong>(-4,-6)</strong>.</p>', '<p><img alt=\"(-\\frac{1}{2}, 0)\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?%28-%5Cfrac%7B1%7D%7B2%7D%2C%200%29\" src=\"https://latex.codecogs.com/gif.latex?%28-%5Cfrac%7B1%7D%7B2%7D%2C%200%29\">​​​​​​​</p>', '<p><img alt=\"(0, \\frac{1}{2})\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?%280%2C%20%5Cfrac%7B1%7D%7B2%7D%29\" src=\"https://latex.codecogs.com/gif.latex?%280%2C%20%5Cfrac%7B1%7D%7B2%7D%29\">​​​​​​​</p>', '<p>(0.5, 0)</p>', '<p><img alt=\"(0, 0)\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?%280%2C%200%29\" src=\"https://latex.codecogs.com/gif.latex?%280%2C%200%29\">​​​​​​​</p>', 'option_a', 'null', 'image_question.png', 1, 'null', 'USR_UTM3XFRFK1', '2022-01-18 05:03:55', '2022-01-17 11:39:00'),
(307, 'YELW0TNW5D02', '<p>A point on the circumference of a circle is given as <strong>A(1, 0.6). </strong>Another point directly opposite on the circumference of the same circle is given as <strong>B(3.5, 2)</strong>. Find the coordinate of the <u>center</u> of the circle.</p>', '<p>(2.25, 1.3)</p>', '<p>(5.26, 0.5)</p>', '<p>(2.3, 0.5)</p>', '<p>(0.5, 2.3)</p>', 'option_a', 'null', 'image_question.png', 1, 'null', 'USR_UTM3XFRFK1', '2022-01-22 18:37:11', '2022-01-17 11:46:23'),
(308, 'TSFNNBPQLOV9', '<p>Find the <strong>midpoint</strong> of the line segment&nbsp;<img alt=\"\\bar{AB}\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?%5Cbar%7BAB%7D\" src=\"https://latex.codecogs.com/gif.latex?%5Cbar%7BAB%7D\">.</p>', '<p>(8, 12)</p>', '<p>(4, 6)</p>', '<p>(12, 8)</p>', '<p>(4, 8)</p>', 'option_b', 'null', '1642438129_f5dd9ef51f54e932f2d5.png', 1, 'null', 'USR_UTM3XFRFK1', '2022-01-22 18:37:11', '2022-01-17 12:05:50'),
(309, 'DXXZKKGZNV0F', '<p>Find the <strong>midpoint</strong> of the line segment.</p>', '<p><img alt=\"(-0.5, 0.25)\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?%28-0.5%2C%200.25%29\" src=\"https://latex.codecogs.com/gif.latex?%28-0.5%2C%200.25%29\">​​​​​​​</p>', '<p><img alt=\"(-0.5, 2)\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?%28-0.5%2C%202%29\" src=\"https://latex.codecogs.com/gif.latex?%28-0.5%2C%202%29\">​​​​​​​</p>', '<p><img alt=\"(2, \\frac{1}{2})\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?%282%2C%20%5Cfrac%7B1%7D%7B2%7D%29\" src=\"https://latex.codecogs.com/gif.latex?%282%2C%20%5Cfrac%7B1%7D%7B2%7D%29\">​​​​​​​</p>', '<p><img alt=\"(-\\frac{1}{2}, -2)\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?%28-%5Cfrac%7B1%7D%7B2%7D%2C%20-2%29\" src=\"https://latex.codecogs.com/gif.latex?%28-%5Cfrac%7B1%7D%7B2%7D%2C%20-2%29\">​​​​​​​</p>', 'option_b', 'null', '1642438374_5c6e0bb02cd36d35d052.png', 1, 'null', 'USR_UTM3XFRFK1', '2022-01-18 05:03:55', '2022-01-17 12:05:50'),
(310, '4K1W2E7OGL7E', '<p>The endpoint of a line&nbsp;segment is <strong>(2, 3)</strong>. The midpoint of the line segment is <strong>(4, 7)</strong>. Find the coordinate of the other endpoint.</p>', '<p>(14, 8)</p>', '<p>(6, 11)</p>', '<p>(8, 14)</p>', '<p>(3, 11)</p>', 'option_b', 'null', 'image_question.png', 1, 'null', 'USR_UTM3XFRFK1', '2022-01-18 05:03:56', '2022-01-17 12:05:50'),
(311, '7YYZEFMZYLUE', '<p>If the midpoint of a line is <strong>(4, 1)</strong> and an endpoint on the same line is <strong>(8, 1)</strong>, what is its other endpoint?</p>', '<p>(3, 5)</p>', '<p>(4, 0)</p>', '<p>(0, 1)</p>', '<p>(-4, 1)</p>', 'option_c', 'null', 'image_question.png', 1, 'null', 'USR_UTM3XFRFK1', '2022-01-22 18:37:11', '2022-01-17 12:05:50'),
(312, 'PHCVWT2GQBVZ', '<p>Troop 175 is designing their new campground by first mapping everything on a coordinate grid. They have found a location for the M<strong>ess Hall</strong> and for their <strong>C</strong><strong>abins</strong>.</p><p>They want the bathrooms to be <strong>halfway </strong>between these two. What will be the coordinates of the location of the bathroom?</p>', '<p>(2, 2)</p>', '<p>(1, 1)</p>', '<p>(3, 3)</p>', '<p>(-2, 2)</p>', 'option_b', 'null', '1642439075_dae0439e3edbe8a8bbe3.png', 1, 'null', 'USR_UTM3XFRFK1', '2022-01-18 05:03:56', '2022-01-17 12:05:50'),
(313, 'SKXKDCS8ZJFJ', '<p>Find the midpoint of the line segment with the endpoints <strong>A(2, −1)</strong> and <strong>B(−6, 0)</strong>.</p>', '<p><img alt=\"(0.5, -0.25)\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?%280.5%2C%20-0.25%29\" src=\"https://latex.codecogs.com/gif.latex?%280.5%2C%20-0.25%29\">​​​​​​​</p>', '<p>​​​​​​​<img alt=\"(-2, -\\frac{1}{2})\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?%28-2%2C%20-%5Cfrac%7B1%7D%7B2%7D%29\" src=\"https://latex.codecogs.com/gif.latex?%28-2%2C%20-%5Cfrac%7B1%7D%7B2%7D%29\"></p>', '<p><img alt=\"(-1, -2)\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?%28-1%2C%20-2%29\" src=\"https://latex.codecogs.com/gif.latex?%28-1%2C%20-2%29\">​​​​​​​</p>', '<p><img alt=\"(-\\frac{1}{2}, -1)\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?%28-%5Cfrac%7B1%7D%7B2%7D%2C%20-1%29\" src=\"https://latex.codecogs.com/gif.latex?%28-%5Cfrac%7B1%7D%7B2%7D%2C%20-1%29\">​​​​​​​</p>', 'option_b', 'null', 'image_question.png', 1, 'null', 'USR_UTM3XFRFK1', '2022-01-22 19:53:51', '2022-01-22 19:04:23'),
(314, 'BJDBGDDKQNWH', '<p>Find the midpoint of the line segment connecting the endpoints <strong>A(−3.1, −2.8)</strong> and <strong>B(−4.92, −3.3).</strong></p>', '<p><img alt=\"(4.35, 3.01)\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?%284.35%2C%203.01%29\" src=\"https://latex.codecogs.com/gif.latex?%284.35%2C%203.01%29\">​​​​​​​</p>', '<p><img alt=\"(4.35, 3.01)\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?%284.35%2C%203.01%29\" src=\"https://latex.codecogs.com/gif.latex?%284.35%2C%203.01%29\">​​​​​​​<img alt=\"()-3.05, 4.01)\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?%28%29-3.05%2C%204.01%29\" src=\"https://latex.codecogs.com/gif.latex?%28%29-3.05%2C%204.01%29\"></p>', '<p><img alt=\"(3.05, -4.01)\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?%283.05%2C%20-4.01%29\" src=\"https://latex.codecogs.com/gif.latex?%283.05%2C%20-4.01%29\">​​​​​​​</p>', '<p><img alt=\"(-4.01, -3.05)\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?%28-4.01%2C%20-3.05%29\" src=\"https://latex.codecogs.com/gif.latex?%28-4.01%2C%20-3.05%29\">​​​​​​​</p>', 'option_d', 'null', 'image_question.png', 1, 'null', 'USR_UTM3XFRFK1', '2022-01-22 20:10:26', '2022-01-22 19:04:23'),
(315, 'U3PCXCWRGTOC', '<p>A line segment has endpoint A(-1, 9) and midpoint X(-9, -10). Find the coordinate of its other endpoint.</p>', '<p><img alt=\"(-5, -\\frac{1}{2})\" src=\"https://latex.codecogs.com/gif.latex?%28-5%2C%20-%5Cfrac%7B1%7D%7B2%7D%29\">​​​​​​​​​​​​​​</p>', '<p><img alt=\"(13, 9)\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?%2813%2C%209%29\" src=\"https://latex.codecogs.com/gif.latex?%2813%2C%209%29\">​​​​​​​</p>', '<p><img alt=\"(-17, -29)\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?%28-17%2C%20-29%29\" src=\"https://latex.codecogs.com/gif.latex?%28-17%2C%20-29%29\">​​​​​​​</p>', '<p><img alt=\"(1, 5)\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?%281%2C%205%29\" src=\"https://latex.codecogs.com/gif.latex?%281%2C%205%29\">​​​​​​​</p>', 'option_a', 'null', 'image_question.png', 1, 'null', 'USR_UTM3XFRFK1', '2022-01-22 20:10:26', '2022-01-22 19:04:23'),
(316, 'CWFR8O84R8UW', '<p>A line segment has endpoint A(-6, 4) and midpoint X(4, 8). Find the coordinate of its other endpoint.</p>', '<p>(14, 12)</p>', '<p>(9, 13)</p>', '<p>(4, 15)</p>', '<p>(21, 7)</p>', 'option_a', 'null', 'image_question.png', 1, 'null', 'USR_UTM3XFRFK1', '2022-01-22 20:10:26', '2022-01-22 19:04:23'),
(317, 'FBLI5OM5HFOY', '<p>Find the midpoint of the line segment.</p>', '<p>(-3, -3)</p>', '<p>(-1, -1)</p>', '<p>(-5, -5)</p>', '<p>(-2.5, -2.5)</p>', 'option_a', 'null', '1642875184_c5a5b1121fbd8a59c2d9.png', 1, 'null', 'USR_UTM3XFRFK1', '2022-01-22 20:10:26', '2022-01-22 19:04:23'),
(318, 'KP8OVACPPZNP', '<p>Find the midpoint of the line segment.</p>', '<p>(1, 1.2)</p>', '<p>(5, 3)</p>', '<p>(-4, -1)</p>', '<p>(0.5, 1)</p>', 'option_d', 'null', '1642875268_9685e98505c14d5202f6.png', 1, 'null', 'USR_UTM3XFRFK1', '2022-01-22 20:10:26', '2022-01-22 19:21:47'),
(319, 'JC9NXILVNKAO', '<p>Find the midpoint of the line segment.</p>', '<p>(1.5, 1)</p>', '<p>(-1.5, 0)</p>', '<p>(0, -1.4)</p>', '<p>(0, 1.4)</p>', 'option_b', 'null', '1642875481_46a3c765f02698ee7fbd.png', 1, 'null', 'USR_UTM3XFRFK1', '2022-01-22 20:10:26', '2022-01-22 19:21:47'),
(320, 'ETNVKHXBNAMW', '<p>The midpoint of the line segment&nbsp;<img alt=\"\\overline{XY}\" data-cke-saved-src=\"https://latex.codecogs.com/gif.latex?%5Coverline%7BXY%7D\" src=\"https://latex.codecogs.com/gif.latex?%5Coverline%7BXY%7D\">&nbsp;is the point M(-12, 5). If the coordinates of X are (-4, 3), what are the coordinates of Y?</p>', '<p>(-28, 13)</p>', '<p>(27, 12)</p>', '<p>(4, 13)</p>', '<p>(-20, 7)</p>', 'option_d', 'null', 'image_question.png', 1, 'null', 'USR_UTM3XFRFK1', '2022-01-22 20:10:26', '2022-01-22 19:21:47'),
(321, '2UT3JU7GI63S', '<p>A line has one endpoint of (-3, 7) and a midpoint of (5, 2). What is the coordinate of the other endpoint?</p>', '<p>(13, -3)</p>', '<p>(-3, 4)</p>', '<p>(3, 3)</p>', '<p>(9, 1.2)</p>', 'option_a', 'null', 'image_question.png', 1, 'null', 'USR_UTM3XFRFK1', '2022-01-22 20:10:26', '2022-01-22 19:38:06'),
(322, '04ZHLFUEU9IM', '<p>Two ships (Hanley Maru and USS Foxx) started at the same point and steamed in opposite directions at the same speed.</p><p>After one hour the Hanley Maru was at point (17, 33), and the USS Foxx was at (−19, −35). At what point did they start?</p>', '<p>(0.5, -0.5)</p>', '<p>(-1, -1)</p>', '<p>(2, -2)</p>', '<p>(-5, -5)</p>', 'option_b', 'null', '1642876611_ae60702fa990e9554574.png', 1, 'null', 'USR_UTM3XFRFK1', '2022-01-22 20:10:26', '2022-01-22 19:38:06'),
(323, '6HVATDDRRUUU', '<p>trtet<br></p>', '<p>etetetret<br></p>', '<p>retet<br></p>', '<p>etre<br></p>', '<p>etert<br></p>', '', 'null', 'image_question.png', 1, 'null', 'USR_F6GZD17Q5D', '2022-03-01 12:51:22', '2022-03-01 12:51:22'),
(324, 'JR1V3JAFFZHY', '<p>What does CPU stand for?</p>', '<p>Central Processing Upgrade</p>', '<p>Central Processing Unit</p>', '<p>Central Power Unit</p>', '<p>Center of Power Unit</p>', 'option_b', 'null', 'image_question.png', 1, 'null', 'USR_UTM3XFRFK1', '2022-05-23 05:02:58', '2022-05-23 04:57:01'),
(325, '5KPSNKOO5CKF', '<p>What does BIOS stand for?<br></p>', '<p>BASIC INPUT OUTPUT SYSTEM<br></p>', '<p>BASIC INDUCT ONLINE SYSTEM</p>', '<p>BASIC INDUSTRY ONLINE STANDARDS</p>', '<p>BASIC INSULATOR OPEN SOURCE</p>', 'option_a', 'null', 'image_question.png', 1, 'null', 'USR_UTM3XFRFK1', '2022-05-23 04:59:23', '2022-05-23 04:57:01'),
(326, 'ISUVQMPJ8SY1', '<p>What cable is used to connect PC to switch, hub and router?<br></p>', '<p>UTP cable</p>', '<p>straight thru cable</p>', '<p>cross over cable<br></p>', '<p>copper cable</p>', 'option_a', 'null', 'image_question.png', 1, 'null', 'USR_UTM3XFRFK1', '2022-05-23 04:59:23', '2022-05-23 04:57:01'),
(327, 'VWUOLQUMUGZ3', '<p>____________ is the hardware in a computing device where the operating system (OS), application programs and data in current use are kept so they can be quickly reached by the device\'s processor.</p>', '<p>RAM</p>', '<p>Operating System</p>', '<p>CPU</p>', '<p>HDD</p>', 'option_a', 'null', 'image_question.png', 1, 'null', 'USR_UTM3XFRFK1', '2022-05-23 04:59:23', '2022-05-23 04:57:02'),
(328, 'W3T4VUUDHGHB', '<p>What does RAM stand for?<br></p>', '<p>Random Access Memory</p>', '<p>Random Autonomous Memory</p>', '<p>Read Action Memory</p>', '<p>Rare Ally Memory</p>', 'option_a', 'null', 'image_question.png', 1, 'null', 'USR_UTM3XFRFK1', '2022-05-23 04:59:23', '2022-05-23 04:57:02'),
(329, 'AKUG4GCQK7WL', '<p>Identify the malwares.</p>', '<p>trojan</p>', '<p>virus</p>', '<p>spyware</p>', '<p>all of the choices</p>', 'option_d', 'null', 'image_question.png', 1, 'null', 'USR_UTM3XFRFK1', '2022-05-23 04:59:23', '2022-05-23 04:57:02'),
(330, '6VRZBK7SFKUN', '<p>What type of operating system does the logo represents</p>', '<p>Macintosh</p>', '<p>Windows</p>', '<p>Android</p>', '<p>Linux</p>', 'option_b', 'null', '1653295891_5f26456d326d0a4f810c.jpg', 1, 'null', 'USR_UTM3XFRFK1', '2022-05-23 04:59:23', '2022-05-23 04:57:02'),
(331, 'MFXLRSJ77UJU', '<p>I want to store the name, address and telephone number of all my friends. What should I use?</p>', '<p>Database software</p>', '<p>Web Browser</p>', '<p>Graphics program</p>', '<p>Word processor</p>', 'option_a', 'null', 'image_question.png', 1, 'null', 'USR_UTM3XFRFK1', '2022-05-23 04:59:23', '2022-05-23 04:57:02'),
(332, '1NAGEJPPLZHO', '<p>I am going to write a letter to my bank. Which piece of software do I need to use?</p>', '<p>Web browser</p>', '<p>Word processor</p>', '<p>Spreadsheet</p>', '<p>Database</p>', 'option_b', 'null', 'image_question.png', 1, 'null', 'USR_UTM3XFRFK1', '2022-05-23 04:59:23', '2022-05-23 04:57:02'),
(333, 'RYZNLDYX7ETE', '<p>The survey done by people can be checked by<br></p>', '<p>OCR</p>', '<p>MICR</p>', '<p>OMR</p>', '<p>ICM</p>', 'option_a', 'null', 'image_question.png', 1, 'null', 'USR_UTM3XFRFK1', '2022-05-23 04:59:23', '2022-05-23 04:57:02');

-- --------------------------------------------------------

--
-- Table structure for table `subjects_tb`
--

CREATE TABLE `subjects_tb` (
  `id` int(11) NOT NULL,
  `subject_id` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `subject_name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `abbreviation` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `subject_added_by` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subjects_tb`
--

INSERT INTO `subjects_tb` (`id`, `subject_id`, `subject_name`, `abbreviation`, `description`, `subject_added_by`, `date_updated`, `date_created`) VALUES
(1, 'SUB_RQ4SWAIO9G', 'Biology', 'BIO', 'Science of life.', 'USR_UTM3XFRFK1', '2021-12-21 20:19:04', '2021-12-02 09:52:10'),
(2, 'SUB_CVUQ0P10VC', 'English Language', 'ENG', 'Study the world', 'USR_UTM3XFRFK1', '2021-12-21 20:19:08', '2021-12-02 09:52:18'),
(5, 'SUB_3I1BC5OESF', 'Mathematics', 'MTH', 'Science of numbers.', '', '2021-12-02 10:24:45', '2021-12-02 10:24:45'),
(7, 'SUB_HAON96V6C9', 'History', 'HIS', 'History of Nigeria based on British and Nigerian curriculum.', 'USR_UTM3XFRFK1', '2021-12-21 20:19:10', '2021-12-06 12:16:32'),
(8, 'SUB_HQ5TE4OSSF', 'Science', 'SCI', 'Study of life and other living systems.', '', '2021-12-13 05:37:39', '2021-12-13 05:37:39'),
(9, 'SUB_F3DU77YNFU', 'Arabic', 'ARA', 'Language', '', '2021-12-21 10:31:47', '2021-12-21 10:31:47'),
(10, 'SUB_Z4N0S4GBK4', 'Education', 'EDU', 'Education.', '', '2021-12-23 18:59:37', '2021-12-22 08:35:55'),
(11, 'SUB_3Z8O29U9BT', 'Further Mathematics', 'FMATHS', 'Advanced Mathematics.', 'USR_UTM3XFRFK1', '2021-12-22 15:44:36', '2021-12-22 15:44:36'),
(12, 'SUB_45XMICCHBL', 'Javascript Fundamentals', 'JS_FUN', '', 'USR_UTM3XFRFK1', '2021-12-27 09:55:22', '2021-12-27 09:55:22'),
(13, 'SUB_J5YM954VXJ', 'Advanced Tailoring & Fashion', 'ATF', 'ATF', 'USR_UTM3XFRFK1', '2022-01-05 13:50:40', '2022-01-05 13:50:40'),
(16, 'SUB_8IXW625PNQ', 'Information and Communications Technology', 'ICT', 'ICT', 'USR_UTM3XFRFK1', '2022-05-23 04:42:21', '2022-05-23 04:35:11'),
(17, 'SUB_UMFQQKVT2W', 'Mathematics', 'MATHS', 'Mathematics', 'USR_UTM3XFRFK1', '2022-05-23 11:21:28', '2022-05-23 11:21:28');

-- --------------------------------------------------------

--
-- Table structure for table `users_tb`
--

CREATE TABLE `users_tb` (
  `id` int(11) NOT NULL,
  `user_id` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `user_name` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(512) COLLATE utf8_unicode_ci NOT NULL,
  `group_id` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `user_added_by` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `activation_code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `activation_status` tinyint(1) NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users_tb`
--

INSERT INTO `users_tb` (`id`, `user_id`, `user_name`, `first_name`, `last_name`, `email`, `password`, `group_id`, `user_added_by`, `activation_code`, `activation_status`, `date_updated`, `date_created`) VALUES
(1, 'USR_G1QRJ1XUCY', '', 'Isaiah', 'Fateyinshe', 'isaiah@gmail.com', '$2y$10$8QB6fVAXCk8r3VNHWXNSIO7mn0/AtIQkaP79r1rD03Ol3cB6KEvUS', '', '', '', 1, '2022-05-25 12:02:54', '2021-11-30 20:22:58'),
(6, 'USR_UTM3XFRFK1', '', 'Joseph', 'Olawale', 'wale@g.com', '$2y$10$ikZtKsGIvb1zmCZXci1eqeKUqSRCTnw9GBDaRb.T52sREmblySWjy', '', 'USR_UTM3XFRFK1', '', 1, '2022-05-25 12:03:00', '2021-12-02 11:53:59'),
(7, 'USR_OD9J7URWV8', '', 'James', 'Gibson', 'i75u5u@gmail.com', '$2y$10$rLaO8H8GiALHbxjw4P89ReYo1F3Q3gDJH4s6MO0VTPJ7/rqbd1E.a', '', '', '', 1, '2022-05-25 12:03:05', '2021-12-07 11:51:19'),
(10, 'USR_E87T3E20NK', '', 'Phillips', 'Ujah', 'phil@gmail.com', '$2y$10$t7d6HjlBDF1p82K.rxt9E.Ihb.huxcTHc/eub2HKlYM7q1wWv0NXG', '', 'USR_UTM3XFRFK1', '', 1, '2022-05-30 08:46:34', '2022-01-13 10:25:47'),
(34, 'USR_4SD5LAZH0G', '', 'Fatehinshe', 'Isaiah', 'mrmayormayor@gmail.com', '$2y$10$Mb16s2.DDGTij/I.6uuEwuFF8UyYNyE3iroXqRm2qDYOtuovEVhKG', '', 'USR_UTM3XFRFK1', '0ZEMSRZTSU', 0, '2022-06-06 12:23:04', '2022-06-06 12:23:04'),
(12, 'USR_F6GZD17Q5D', '', 'Angelwings', 'Academy', 'angelwingseducation@gmail.com', '$2y$10$djWcj1tgVvERz.xEC1xQROsENtRFywxcd1uebI5.ZiARl3.uWyaQi', '', 'USR_F6GZD17Q5D', '', 1, '2022-05-25 12:03:21', '2022-03-01 11:58:00'),
(14, 'USR_GW1ZILSXWH', '', 'wale', 'wale', 'wale@wale.com', '$2y$10$B7m1ANOLbqRv/ojmV9z1XeC68UnRGTOWMeOEpuCJdjYDWAPbkCiQ6', '', 'USR_F6GZD17Q5D', '', 1, '2022-05-25 12:03:27', '2022-03-01 12:46:14');

-- --------------------------------------------------------

--
-- Table structure for table `users_to_examinations_tb`
--

CREATE TABLE `users_to_examinations_tb` (
  `id` int(11) NOT NULL,
  `item_id` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `examination_id` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `item_added_by` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users_to_examinations_tb`
--

INSERT INTO `users_to_examinations_tb` (`id`, `item_id`, `examination_id`, `user_id`, `item_added_by`, `date_updated`, `date_created`) VALUES
(33, 'ENT_0AIY0JJHCZ', 'R42UA95', 'USR_TS14FKAQEH', 'USR_UTM3XFRFK1', '2022-05-30 08:25:37', '2022-05-30 08:25:37'),
(34, 'ENT_E6NZ58FA2R', 'LBT9ZE9', 'USR_E87T3E20NK', 'USR_UTM3XFRFK1', '2022-05-30 08:49:39', '2022-05-30 08:49:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `candidates_tb`
--
ALTER TABLE `candidates_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidate_answers_tb`
--
ALTER TABLE `candidate_answers_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classes_tb`
--
ALTER TABLE `classes_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `collations_tb`
--
ALTER TABLE `collations_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `examinations_candidates_tb`
--
ALTER TABLE `examinations_candidates_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `examinations_collations_tb`
--
ALTER TABLE `examinations_collations_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `examinations_tb`
--
ALTER TABLE `examinations_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions_examinations_tb`
--
ALTER TABLE `questions_examinations_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions_tb`
--
ALTER TABLE `questions_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects_tb`
--
ALTER TABLE `subjects_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_tb`
--
ALTER TABLE `users_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_to_examinations_tb`
--
ALTER TABLE `users_to_examinations_tb`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `candidates_tb`
--
ALTER TABLE `candidates_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `candidate_answers_tb`
--
ALTER TABLE `candidate_answers_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=221;

--
-- AUTO_INCREMENT for table `classes_tb`
--
ALTER TABLE `classes_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `collations_tb`
--
ALTER TABLE `collations_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `examinations_candidates_tb`
--
ALTER TABLE `examinations_candidates_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=582;

--
-- AUTO_INCREMENT for table `examinations_collations_tb`
--
ALTER TABLE `examinations_collations_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `examinations_tb`
--
ALTER TABLE `examinations_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `questions_examinations_tb`
--
ALTER TABLE `questions_examinations_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2632;

--
-- AUTO_INCREMENT for table `questions_tb`
--
ALTER TABLE `questions_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=334;

--
-- AUTO_INCREMENT for table `subjects_tb`
--
ALTER TABLE `subjects_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users_tb`
--
ALTER TABLE `users_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `users_to_examinations_tb`
--
ALTER TABLE `users_to_examinations_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
