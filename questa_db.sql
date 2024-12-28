-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2023 at 06:14 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `questa_db`
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
  `password` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `pass_code` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `candidate_class` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `candidate_added_by` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `candidates_tb`
--

INSERT INTO `candidates_tb` (`id`, `candidate_id`, `first_name`, `middle_name`, `last_name`, `email`, `password`, `pass_code`, `candidate_class`, `candidate_added_by`, `date_updated`, `date_created`) VALUES
(2, 'R98RX25', 'Adeyeye', 'Adebola', 'Akanni', 'bola@yeye.com', '$2y$10$VRfw5nbWO5Sq25Ma3L3fRu9CqxLOfCmUu/RYA6yc.mbjLSKVoktD6', '', 'CLS_RD9JU00VBL', 'USR_UTM3XFRFK1', '2023-04-29 21:53:49', '2023-04-29 21:53:49');

-- --------------------------------------------------------

--
-- Table structure for table `candidate_answers_tb`
--

CREATE TABLE `candidate_answers_tb` (
  `exam_attempt_id` int(11) NOT NULL,
  `entry_id` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `candidate_id` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `examination_id` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `answer` text COLLATE utf8_unicode_ci NOT NULL,
  `time_spent` bigint(11) NOT NULL COMMENT 'time spent before submitting examination attempt (in seconds)',
  `time_remaining` bigint(20) NOT NULL,
  `score_sheet` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT 'shows how marks are allocated for scores.',
  `computed_scores` int(11) NOT NULL,
  `attempt_date_updated` datetime NOT NULL DEFAULT current_timestamp(),
  `attempt_date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `candidate_answers_tb`
--

INSERT INTO `candidate_answers_tb` (`exam_attempt_id`, `entry_id`, `candidate_id`, `examination_id`, `answer`, `time_spent`, `time_remaining`, `score_sheet`, `computed_scores`, `attempt_date_updated`, `attempt_date_created`) VALUES
(1, 'ENT_39ETWFQ89V', 'R98RX25', 'ZQYEF35', '[]', 3, 56, '', 0, '2023-04-29 23:21:05', '2023-04-29 23:21:05');

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
(19, 'CLS_RD9JU00VBL', 'Year 10', 'YR_10', 'Year 10', 'USR_UTM3XFRFK1', '2022-05-23 11:19:44', '2022-03-14 04:56:41'),
(20, 'CLS_40KQZCAJA0', 'Year 5', 'Yr_5', 'Year 5', 'USR_UTM3XFRFK1', '2022-06-20 10:48:17', '2022-06-20 10:48:17'),
(21, 'CLS_XV93P1F5JX', 'Year 9', 'Yr_9', '', 'USR_UTM3XFRFK1', '2022-07-04 08:28:41', '2022-07-04 08:28:41'),
(22, 'CLS_ALDKM0V4MP', 'Year 7', 'Yr_7', 'Yr_7', 'USR_UTM3XFRFK1', '2022-07-11 13:38:13', '2022-07-11 13:38:13'),
(23, 'CLS_JYCD5IM228', 'Software Trainees', 'SFT', '', 'USR_UTM3XFRFK1', '2022-08-26 15:02:09', '2022-08-26 15:02:09'),
(24, 'CLS_GUNO8TDP14', 'Year 1', 'Yr_1', '', 'USR_UTM3XFRFK1', '2022-10-13 04:21:28', '2022-10-13 04:21:28'),
(25, 'CLS_S9583L1HH5', 'Year 2', 'Yr_2', '', 'USR_UTM3XFRFK1', '2022-10-13 04:21:35', '2022-10-13 04:21:35'),
(26, 'CLS_W1SANZAAJO', 'Year 3', 'Yr_3', '', 'USR_UTM3XFRFK1', '2022-10-13 04:21:47', '2022-10-13 04:21:47'),
(27, 'CLS_VVX784SO10', 'Year 4', 'Yr_4', '', 'USR_UTM3XFRFK1', '2022-10-13 04:22:04', '2022-10-13 04:22:04'),
(28, 'CLS_NE9T5424KS', 'Year 6', 'Yr_6', '', 'USR_UTM3XFRFK1', '2022-10-13 04:22:32', '2022-10-13 04:22:32'),
(29, 'CLS_40UB5C8C1G', 'Year 8', 'Yr_8', '', 'USR_UTM3XFRFK1', '2022-10-13 04:22:45', '2022-10-13 04:22:45'),
(30, 'CLS_UHFPLUXFLP', 'Year 11', 'Yr_11', '', 'USR_UTM3XFRFK1', '2022-10-13 04:23:10', '2022-10-13 04:23:10');

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
  `collaboration_status` tinyint(1) NOT NULL COMMENT '0 if open for collab; 1 if not open for collab',
  `collaboration_instructions` text COLLATE utf8_unicode_ci NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(1, 'ENT_5J5T10LCU0', '0DAXAXN', 'R98RX25', '3EHD8', '2023-04-29 22:33:44', '2023-04-29 22:33:44'),
(4, 'ENT_P7R9WERJD9', 'ZQYEF35', 'R98RX25', 'WUUED', '2023-04-30 14:38:34', '2023-04-30 14:38:34'),
(5, 'ENT_DADRO0VQBC', '5Y5DGUM', 'R98RX25', 'EIMYJ', '2023-04-30 14:47:07', '2023-04-30 14:47:07');

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
  `exam_instructions` longtext COLLATE utf8_unicode_ci NOT NULL,
  `shuffle_questions` tinyint(4) NOT NULL,
  `fullscreen` tinyint(4) NOT NULL,
  `allow_candidates_upload` tinyint(1) NOT NULL COMMENT ' 	Allow students to upload documents when attempting exams. 0: not allowed 1: allowed',
  `pass_mark` decimal(3,1) NOT NULL,
  `exam_added_by` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `exam_edited_by` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `assigned_to` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `questions_ordering` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `examinations_tb`
--

INSERT INTO `examinations_tb` (`id`, `exam_id`, `type`, `exam_title`, `class`, `subject`, `duration`, `status`, `exam_instructions`, `shuffle_questions`, `fullscreen`, `allow_candidates_upload`, `pass_mark`, `exam_added_by`, `exam_edited_by`, `assigned_to`, `questions_ordering`, `date_updated`, `date_created`) VALUES
(1, '0DAXAXN', 2, 'My Test Exam', 'CLS_NE9T5424KS', 'SUB_TGRYTM3VGR', 1, 0, '', 0, 1, 1, '50.0', 'USR_UTM3XFRFK1', '', '', '[\"V0ZIBDBK9RA8\",\"BQLUNX9O7H2W\",\"X9DIAIVSHPAN\"]', '2023-04-29 20:52:26', '2023-04-29 20:07:36'),
(2, 'ZQYEF35', 1, 'Another Exams', 'CLS_40UB5C8C1G', 'SUB_AR0K654RMP', 1, 1, '', 0, 1, 1, '50.0', 'USR_UTM3XFRFK1', '', '', '', '2023-04-29 23:20:42', '2023-04-29 22:46:33'),
(3, '5Y5DGUM', 1, 'Physics Big bang', 'CLS_RD9JU00VBL', 'SUB_RQ4SWAIO9G', 2, 0, '', 0, 1, 1, '50.0', 'USR_UTM3XFRFK1', '', '', '', '2023-04-30 14:47:00', '2023-04-30 14:47:00');

-- --------------------------------------------------------

--
-- Table structure for table `examination_attachments_tb`
--

CREATE TABLE `examination_attachments_tb` (
  `id` int(11) NOT NULL,
  `entry_id` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `examination_id` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `filename` varchar(258) COLLATE utf8_unicode_ci NOT NULL,
  `filepath` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `file_type` tinyint(1) NOT NULL,
  `file_added_by` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `date_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `generated_exams_tb`
--

CREATE TABLE `generated_exams_tb` (
  `id` int(11) NOT NULL,
  `title` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `gen_exam_id` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `candidate_id` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `questions` longtext COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `taken` tinyint(1) NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `generated_exams_tb`
--

INSERT INTO `generated_exams_tb` (`id`, `title`, `gen_exam_id`, `candidate_id`, `questions`, `subject`, `type`, `taken`, `date_updated`, `date_created`) VALUES
(1, 'lkjhgfghjkiuyg', 'GE_WDOLWSI4ZVC3', 'R98RX25', '[{\"id\":10,\"question\":\"The pollution from petroleum spillage in rivers and lakes can best be dispersed by\",\"option\":{\"a\":\"Pouring detergents\",\"b\":\"Passing of ships through the area\",\"c\":\"Pouring organic solvents\",\"d\":\"Evaporation\",\"e\":\"Evaporation\"},\"section\":\"\",\"image\":\"\",\"answer\":\"a\",\"solution\":\"\",\"examtype\":\"utme\",\"examyear\":\"2001\"},{\"id\":32,\"question\":\"The main impurity in iron ore during the extraction of iron is\",\"option\":{\"a\":\"Silicon (IV) oxide\",\"b\":\"Carbon(IV) oxide\",\"c\":\"Calciumtrioxosilicate\",\"d\":\"Sulphur(II) oxide\",\"e\":\"Sulphur(II) oxide\"},\"section\":\"\",\"image\":\"\",\"answer\":\"a\",\"solution\":\"\",\"examtype\":\"utme\",\"examyear\":\"2001\"},{\"id\":133,\"question\":\"Chlorine consisting of two isotopes of mass numbers 35 and 37 in the ratio 3:1 has an atomic mass of 35.5. Calculate the relative abundance of the isotope of mass number 37.\",\"option\":{\"a\":\"20\",\"b\":\"25\",\"c\":\"60\",\"d\":\"75\",\"e\":\"75\"},\"section\":\"\",\"image\":\"\",\"answer\":\"b\",\"solution\":\"\",\"examtype\":\"utme\",\"examyear\":\"2004\"},{\"id\":179,\"question\":\"NH4CI(g) ⇌   NH3(g)  +  HCI(g)   The reaction above can only attain equilibrium if\",\"option\":{\"a\":\"It is in a closed system\",\"b\":\"It is in an open system\",\"c\":\"One of the products is removed\",\"d\":\"A gaseous reactant is added\",\"e\":\"A gaseous reactant is added\"},\"section\":\"\",\"image\":\"\",\"answer\":\"a\",\"solution\":\"\",\"examtype\":\"utme\",\"examyear\":\"2005\"},{\"id\":80,\"question\":\"Neutral atoms of neon with atomic number 10 have the same number of electrons as\",\"option\":{\"a\":\"O2+\",\"b\":\"Ca2+\",\"c\":\"K+\",\"d\":\"Mg2+\",\"e\":\"Mg2+\"},\"section\":\"\",\"image\":\"\",\"answer\":\"d\",\"solution\":\"\",\"examtype\":\"utme\",\"examyear\":\"2003\"},{\"id\":227,\"question\":\"The order in which a mixture of sand ammonium chloride and sodium chloride can be separated is\",\"option\":{\"a\":\"Sublimation   dissolution  filtration  evaporation\",\"b\":\"Dissolution  dryness  filtration  evaporation\",\"c\":\"Filtration  sublimation  evaporation  dryness\",\"d\":\"Dissolution  filtration  sublimation  evaporation\",\"e\":\"Dissolution  filtration  sublimation  evaporation\"},\"section\":\"\",\"image\":\"\",\"answer\":\"a\",\"solution\":\"\",\"examtype\":\"utme\",\"examyear\":\"2006\"},{\"id\":218,\"question\":\"The ion that can be used as an oxidizing agent is\",\"option\":{\"a\":\"Fe3+\",\"b\":\"F-\",\"c\":\"Ca2+\",\"d\":\"Au3+\",\"e\":\"Au3+\"},\"section\":\"\",\"image\":\"\",\"answer\":\"c\",\"solution\":\"\",\"examtype\":\"utme\",\"examyear\":\"2006\"},{\"id\":117,\"question\":\"The type of reaction that is peculiar to benzene is\",\"option\":{\"a\":\"Addition\",\"b\":\"Hydrolysis\",\"c\":\"Polymerization\",\"d\":\"Substitution\",\"e\":\"Substitution\"},\"section\":\"\",\"image\":\"\",\"answer\":\"d\",\"solution\":\"\",\"examtype\":\"utme\",\"examyear\":\"2003\"},{\"id\":43,\"question\":\"Which of the followinig respresents hybridization in ethyne?\",\"option\":{\"a\":\"Sp2\",\"b\":\"Sp2d\",\"c\":\"Sp3\",\"d\":\"sp\",\"e\":\"sp\"},\"section\":\"\",\"image\":\"\",\"answer\":\"d\",\"solution\":\"\",\"examtype\":\"utme\",\"examyear\":\"2001\"},{\"id\":298,\"question\":\"Which of the following is used to hasten the ripening of fruit\",\"option\":{\"a\":\"Ethanol\",\"b\":\"Ethyne\",\"c\":\"Ethane\",\"d\":\"Ethane\",\"e\":\"Ethane\"},\"section\":\"\",\"image\":\"\",\"answer\":\"d\",\"solution\":\"\",\"examtype\":\"utme\",\"examyear\":\"2010\"}]', 'history', '', 0, '2023-05-04 13:55:43', '2023-05-04 13:55:43'),
(2, 'lkjhgfghjkiuyg', 'GE_UQRGZO2JC57V', 'R98RX25', '[{\"id\":8,\"question\":\"An element X with relative atomic mass 16.2 contains two isotopes      X  with relative abundance of 90% and      X with relative abundance of 10%. The value of m is\",\"option\":{\"a\":\"16\",\"b\":\"18\",\"c\":\"12\",\"d\":\"14\",\"e\":\"14\"},\"section\":\"\",\"image\":\"\",\"answer\":\"b\",\"solution\":\"\",\"examtype\":\"utme\",\"examyear\":\"2001\"},{\"id\":141,\"question\":\"What volume of 0.5mol dm-3 H2SO4 will exactly neutralize 20cm3 of 0.1 mol dm-3 NaOH solution\",\"option\":{\"a\":\"2.0cm3\",\"b\":\"5.0cm3\",\"c\":\"6.8cm3\",\"d\":\"8.3cm3\",\"e\":\"8.3cm3\"},\"section\":\"\",\"image\":\"\",\"answer\":\"a\",\"solution\":\"\",\"examtype\":\"utme\",\"examyear\":\"2004\"},{\"id\":238,\"question\":\"An example of aliphatic unsaturated hydrocarbon is\",\"option\":{\"a\":\"Butanol\",\"b\":\"Propene\",\"c\":\"Pentane\",\"d\":\"Benzene\",\"e\":\"Benzene\"},\"section\":\"\",\"image\":\"\",\"answer\":\"b\",\"solution\":\"\",\"examtype\":\"utme\",\"examyear\":\"2006\"},{\"id\":57,\"question\":\"Three drops of a 1.0 mol dm-3 solution of Na OH are added to 20cm3 of a solution of pH8.4. the pH of the resulting solution will be\",\"option\":{\"a\":\"Greater than 8.4\",\"b\":\"Unaltered\",\"c\":\"Close to that of pure water\",\"d\":\"Less than 8.4\",\"e\":\"Less than 8.4\"},\"section\":\"\",\"image\":\"\",\"answer\":\"a\",\"solution\":\"\",\"examtype\":\"utme\",\"examyear\":\"2002\"},{\"id\":188,\"question\":\"How many moles of limestone will be required to produce 5.6g of CaO\",\"option\":{\"a\":\"0.20 mol\",\"b\":\"1, 12mol\",\"c\":\"0.10 mol\",\"d\":\"0.56 mol\",\"e\":\"0.56 mol\"},\"section\":\"\",\"image\":\"\",\"answer\":\"c\",\"solution\":\"\",\"examtype\":\"utme\",\"examyear\":\"2005\"},{\"id\":74,\"question\":\"The boiling of fat and aqueous caustic soda is referred as\",\"option\":{\"a\":\"Saponification\",\"b\":\"Esterification\",\"c\":\"Acidification\",\"d\":\"Hydrolysis\",\"e\":\"Hydrolysis\"},\"section\":\"\",\"image\":\"\",\"answer\":\"a\",\"solution\":\"\",\"examtype\":\"utme\",\"examyear\":\"2002\"},{\"id\":101,\"question\":\" CO(g) + H2O(g) ⇌  CO2(g)  +  H2(g)\\nFrom the reaction above, calculate the standard heat change if the standard enthalpies of formation of CO2 (g), H2O (g) and CO (g) in kJ mol-1 are -394, -242 and -110 respectively.\\n\",\"option\":{\"a\":\"-262 kJ  mol-1\",\"b\":\"-42kJ mol-1\",\"c\":\"+42 kJ mol-1\",\"d\":\"+262 kJ mol-1\",\"e\":\"+262 kJ mol-1\"},\"section\":\"\",\"image\":\"\",\"answer\":\"b\",\"solution\":\"\",\"examtype\":\"utme\",\"examyear\":\"2003\"},{\"id\":9,\"question\":\"Which of the following statements is correct about the average kinetic energy of the molecules of a gas\",\"option\":{\"a\":\"It inctreasaes with increase in pressure\",\"b\":\"It increases at constant pressure\",\"c\":\"It increases with increase in temperature\",\"d\":\"It increases in volume\",\"e\":\"It increases in volume\"},\"section\":\"\",\"image\":\"\",\"answer\":\"c\",\"solution\":\"\",\"examtype\":\"utme\",\"examyear\":\"2001\"},{\"id\":142,\"question\":\"The oxidation state of chlorine in HClO4 is\",\"option\":{\"a\":\"-5\",\"b\":\"-1\",\"c\":\"1\",\"d\":\"7\",\"e\":\"7\"},\"section\":\"\",\"image\":\"\",\"answer\":\"d\",\"solution\":\"\",\"examtype\":\"utme\",\"examyear\":\"2004\"},{\"id\":193,\"question\":\"Equal moles of ethyne and hydrogen iodide react to give\",\"option\":{\"a\":\"CH2 = CH2\",\"b\":\"CH2 = CHI\",\"c\":\"CH2 – CHI\",\"d\":\"CH2 – CI3\",\"e\":\"CH2 – CI3\"},\"section\":\"\",\"image\":\"\",\"answer\":\"b\",\"solution\":\"\",\"examtype\":\"utme\",\"examyear\":\"2005\"}]', 'history', '', 0, '2023-05-04 13:56:09', '2023-05-04 13:56:09'),
(3, 'lkjhgfghjkiuyg', 'GE_MIFRGQPJ18GK', 'R98RX25', '[{\"id\":193,\"question\":\"Equal moles of ethyne and hydrogen iodide react to give\",\"option\":{\"a\":\"CH2 = CH2\",\"b\":\"CH2 = CHI\",\"c\":\"CH2 – CHI\",\"d\":\"CH2 – CI3\",\"e\":\"CH2 – CI3\"},\"section\":\"\",\"image\":\"\",\"answer\":\"b\",\"solution\":\"\",\"examtype\":\"utme\",\"examyear\":\"2005\"},{\"id\":303,\"question\":\" Two hydrocarbons X and Y were treated with bromine water. Decolorized the solution and Y did not. Which class of compound does Y belong\",\"option\":{\"a\":\"Alkynes\",\"b\":\"Alkenes\",\"c\":\"Alkanes\",\"d\":\"Benzene\",\"e\":\"Benzene\"},\"section\":\"\",\"image\":\"\",\"answer\":\"c\",\"solution\":\"\",\"examtype\":\"utme\",\"examyear\":\"2010\"},{\"id\":299,\"question\":\"The final products of the reaction between methane and chloride in the presence of ultraviolet light are hydrogen chloride and\",\"option\":{\"a\":\"Dichloromethane\",\"b\":\"Tetrachloromethane\",\"c\":\"Chloromethane\",\"d\":\"Trichloromethane\",\"e\":\"Trichloromethane\"},\"section\":\"\",\"image\":\"\",\"answer\":\"b\",\"solution\":\"\",\"examtype\":\"utme\",\"examyear\":\"2010\"},{\"id\":47,\"question\":\"The formula CH2O for ethanoic acid is regarded as its\",\"option\":{\"a\":\"General formula\",\"b\":\"Structural formula\",\"c\":\"Molecular formula\",\"d\":\"Empirical formula\",\"e\":\"Empirical formula\"},\"section\":\"\",\"image\":\"\",\"answer\":\"d\",\"solution\":\"\",\"examtype\":\"utme\",\"examyear\":\"2002\"},{\"id\":243,\"question\":\"When a crystal was added to the clear solution of its salt, the crystal did not dissolve and the solution remained unchanged. This showed that the solution was\",\"option\":{\"a\":\"Supersaturated\",\"b\":\"Unsaturated\",\"c\":\"Saturated\",\"d\":\"Concentrated\",\"e\":\"Concentrated\"},\"section\":\"\",\"image\":\"\",\"answer\":\"c\",\"solution\":\"\",\"examtype\":\"utme\",\"examyear\":\"2006\"},{\"id\":203,\"question\":\"The solubility curve shows the variation of solute concentration with\",\"option\":{\"a\":\"Volume\",\"b\":\"Vapour density\",\"c\":\"Pressure\",\"d\":\"Temperature\",\"e\":\"Temperature\"},\"section\":\"\",\"image\":\"\",\"answer\":\"d\",\"solution\":\"\",\"examtype\":\"utme\",\"examyear\":\"2005\"},{\"id\":224,\"question\":\"5SO2(g)  +  2KMnO4(aq)  +  2H2O(l)  ⇌   K2SO4(aq)  +  2MnSO4(aq)  +   2H2HSO4(aq)   In the reaction above, the products give a\",\"option\":{\"a\":\"Colourless solution\",\"b\":\"Purple precipitate\",\"c\":\"Purple solution\",\"d\":\"Colourless precipitate\",\"e\":\"Colourless precipitate\"},\"section\":\"\",\"image\":\"\",\"answer\":\"a\",\"solution\":\"\",\"examtype\":\"utme\",\"examyear\":\"2006\"},{\"id\":97,\"question\":\"Which of the following will change when a catalyst is added to a chemical reaction\",\"option\":{\"a\":\"The activation energy\",\"b\":\"The potential energy of the reactants\",\"c\":\"The heat of reaction\",\"d\":\"The potential energy of the products\",\"e\":\"The potential energy of the products\"},\"section\":\"\",\"image\":\"\",\"answer\":\"a\",\"solution\":\"\",\"examtype\":\"utme\",\"examyear\":\"2003\"},{\"id\":249,\"question\":\"One heating may be produced by shaking a detergent solution with\",\"option\":{\"a\":\"Cu(NO3)2\",\"b\":\"AgNO3\",\"c\":\"Ca(NO3)2\",\"d\":\"NaNO3\",\"e\":\"NaNO3\"},\"section\":\"\",\"image\":\"\",\"answer\":\"b\",\"solution\":\"\",\"examtype\":\"utme\",\"examyear\":\"2006\"},{\"id\":91,\"question\":\"What mass of K2CrO4 is required to prepare 250cm3 of 0.020 mol dm-3 solution   [K2CrO4 = 194.2g mol-1]\",\"option\":{\"a\":\"0.97g\",\"b\":\"9.70g\",\"c\":\"19.42g\",\"d\":\"97.10g\",\"e\":\"97.10g\"},\"section\":\"\",\"image\":\"\",\"answer\":\"a\",\"solution\":\"\",\"examtype\":\"utme\",\"examyear\":\"2003\"}]', 'history', '', 0, '2023-05-04 14:02:17', '2023-05-04 14:02:17'),
(4, 'lkjhgfghjkiuyg', 'GE_YEOR7XOGWTGQ', 'R98RX25', '[{\"id\":189,\"question\":\"The shape of the hydrocarbon compound CH4 is\",\"option\":{\"a\":\"Square planar\",\"b\":\"Tetrahedral\",\"c\":\"Planar\",\"d\":\"Linear\",\"e\":\"Linear\"},\"section\":\"\",\"image\":\"\",\"answer\":\"b\",\"solution\":\"\",\"examtype\":\"utme\",\"examyear\":\"2005\"},{\"id\":262,\"question\":\"Calculate the percentage by mass of nitrogen in calcium trioxonitrate (V)   {Ca = 40, N = 14, O = 16}\",\"option\":{\"a\":\"13.10%\",\"b\":\"17.10%\",\"c\":\"27.60%\",\"d\":\"8.5\",\"e\":\"8.5\"},\"section\":\"\",\"image\":\"\",\"answer\":\"d\",\"solution\":\"\",\"examtype\":\"utme\",\"examyear\":\"2010\"},{\"id\":139,\"question\":\"Calcium Tetraoxosulphate(VI) dissolves in water only sparingly to form a\",\"option\":{\"a\":\"Solution\",\"b\":\"Suspension\",\"c\":\"Precipitate\",\"d\":\"Colloid\",\"e\":\"Colloid\"},\"section\":\"\",\"image\":\"\",\"answer\":\"d\",\"solution\":\"\",\"examtype\":\"utme\",\"examyear\":\"2004\"},{\"id\":254,\"question\":\"The efficiency of a solid catalyst to increase reaction rates depends on its\",\"option\":{\"a\":\"Concentration\",\"b\":\"Solubility\",\"c\":\"Quantity\",\"d\":\"Surface area\",\"e\":\"Surface area\"},\"section\":\"\",\"image\":\"\",\"answer\":\"d\",\"solution\":\"\",\"examtype\":\"utme\",\"examyear\":\"2006\"},{\"id\":272,\"question\":\"Substances employed as drying agents are usually\",\"option\":{\"a\":\"Hygroscopic\",\"b\":\"Efflorescent\",\"c\":\"Acidic\",\"d\":\"Amphoteric\",\"e\":\"Amphoteric\"},\"section\":\"\",\"image\":\"\",\"answer\":\"a\",\"solution\":\"\",\"examtype\":\"utme\",\"examyear\":\"2010\"},{\"id\":285,\"question\":\"If a reaction is exothermic and thee is a great disorder, it means that\",\"option\":{\"a\":\"The reaction is in a state of equilibrium\",\"b\":\"There will be a large increase in free energy\",\"c\":\"There will be a large decrease in free energy\",\"d\":\"The reaction is static\",\"e\":\"The reaction is static\"},\"section\":\"\",\"image\":\"\",\"answer\":\"b\",\"solution\":\"\",\"examtype\":\"utme\",\"examyear\":\"2010\"},{\"id\":201,\"question\":\"Kerosene is commonly used to remove the red colour stain of palm oil from clothes because it\",\"option\":{\"a\":\"Helps to spread the oil over a larger surface area\",\"b\":\"Makes the oil evaporate easily by dissolving it\",\"c\":\"Helps to dilute the oil and reduce its colour\",\"d\":\"Reacts with the oil to form an odourless compound\",\"e\":\"Reacts with the oil to form an odourless compound\"},\"section\":\"\",\"image\":\"\",\"answer\":\"b\",\"solution\":\"\",\"examtype\":\"utme\",\"examyear\":\"2005\"},{\"id\":63,\"question\":\"Which of the following statements is true of a proton.\",\"option\":{\"a\":\"The total mass of the protons in a particular nucleus always half the nuclear mass\",\"b\":\"The mass of a proton is 1840 times the mass of an electron\",\"c\":\"The mass proton is 1.0008g\",\"d\":\"The mass of a proton is one-twelfth the molar mass of carbon\",\"e\":\"The mass of a proton is one-twelfth the molar mass of carbon\"},\"section\":\"\",\"image\":\"\",\"answer\":\"b\",\"solution\":\"\",\"examtype\":\"utme\",\"examyear\":\"2002\"},{\"id\":237,\"question\":\"Which of the following has an isomer\",\"option\":{\"a\":\"C4H10\",\"b\":\"C6H6\",\"c\":\"C2H4\",\"d\":\"C2H6\",\"e\":\"C2H6\"},\"section\":\"\",\"image\":\"\",\"answer\":\"a\",\"solution\":\"\",\"examtype\":\"utme\",\"examyear\":\"2006\"},{\"id\":121,\"question\":\"Which of the following is found in cotton\",\"option\":{\"a\":\"Starch\",\"b\":\"Cellulose\",\"c\":\"fat\",\"d\":\"oil\",\"e\":\"oil\"},\"section\":\"\",\"image\":\"\",\"answer\":\"b\",\"solution\":\"\",\"examtype\":\"utme\",\"examyear\":\"2003\"}]', 'history', '', 0, '2023-05-04 16:58:39', '2023-05-04 16:58:39'),
(5, 'lkjhgfghjkiuyg', 'GE_CO1DU05Z0O56', 'R98RX25', '[{\"id\":79,\"question\":\"3Cu  +  pHNO3  → 3Cu(NO3)2  +  4H2O  + xNO   In the equation above, the values of p and x respectively are\",\"option\":{\"a\":\"1 and 3\",\"b\":\"2 and 3\",\"c\":\"6 and 2\",\"d\":\"8 and 2\",\"e\":\"8 and 2\"},\"section\":\"\",\"image\":\"\",\"answer\":\"d\",\"solution\":\"\",\"examtype\":\"utme\",\"examyear\":\"2003\"},{\"id\":182,\"question\":\"The pressure of 100cm3 of oxygen at 350C is 750mmHg. What will be the volume of the gas if the pressure is reduced to 100mmHg  without changing the temperature\",\"option\":{\"a\":\"850cm3\",\"b\":\"750cm3\",\"c\":\"650cm3\",\"d\":\"580cm3\",\"e\":\"580cm3\"},\"section\":\"\",\"image\":\"\",\"answer\":\"b\",\"solution\":\"\",\"examtype\":\"utme\",\"examyear\":\"2005\"},{\"id\":293,\"question\":\"Stainless steel is used for making\",\"option\":{\"a\":\"Tools\",\"b\":\"Coins and medals\",\"c\":\"Moving parts of clocks\",\"d\":\"Magnets\",\"e\":\"Magnets\"},\"section\":\"\",\"image\":\"\",\"answer\":\"a\",\"solution\":\"\",\"examtype\":\"utme\",\"examyear\":\"2010\"},{\"id\":153,\"question\":\"Which steam is passed over red-hot carbon, the substances produced are\",\"option\":{\"a\":\"Hydrogen and trioxocarbonate(IV) acid\",\"b\":\"Hydrogen, oxygen and carbon(IV) oxide\",\"c\":\"Hydrogen and carbon (II) oxide\",\"d\":\"Hydrogen and carbon (IV) oxide\",\"e\":\"Hydrogen and carbon (IV) oxide\"},\"section\":\"\",\"image\":\"\",\"answer\":\"c\",\"solution\":\"\",\"examtype\":\"utme\",\"examyear\":\"2004\"},{\"id\":25,\"question\":\"3CU(s)  +  8HNO3(aq) →  3Cu(NO3)2(aq)  +  4H2O(I)  +  2NO(g)  In the equation above, copper is\",\"option\":{\"a\":\"An electron acceptor\",\"b\":\"A base\",\"c\":\"An oxidizing agent\",\"d\":\"A reducing agent\",\"e\":\"A reducing agent\"},\"section\":\"\",\"image\":\"\",\"answer\":\"d\",\"solution\":\"\",\"examtype\":\"utme\",\"examyear\":\"2001\"},{\"id\":37,\"question\":\"Proteins in acid solution undergo\",\"option\":{\"a\":\"Polymerization\",\"b\":\"Substitution\",\"c\":\"Fermentation\",\"d\":\"Hydrolysis\",\"e\":\"Hydrolysis\"},\"section\":\"\",\"image\":\"\",\"answer\":\"d\",\"solution\":\"\",\"examtype\":\"utme\",\"examyear\":\"2001\"},{\"id\":275,\"question\":\"Carbon (II) oxide is considered dangerous if inhaled mainly because it\",\"option\":{\"a\":\"Competes with oxygen in the blood\",\"b\":\"Competes with carbon (IV) oxide in the blood\",\"c\":\"Can cause lung cancer\",\"d\":\"Can cause injury to the nervous system\",\"e\":\"Can cause injury to the nervous system\"},\"section\":\"\",\"image\":\"\",\"answer\":\"a\",\"solution\":\"\",\"examtype\":\"utme\",\"examyear\":\"2010\"},{\"id\":62,\"question\":\"The processes which return carbon(IV) oxide to the atmosphere include\",\"option\":{\"a\":\"Photosynthesis, decay and respiration\",\"b\":\"Photosynthesis, respiration and transpiration\",\"c\":\"Respiration, decay and combustion\",\"d\":\"Ozone, depletion, combustion and decay\",\"e\":\"Ozone, depletion, combustion and decay\"},\"section\":\"\",\"image\":\"\",\"answer\":\"c\",\"solution\":\"\",\"examtype\":\"utme\",\"examyear\":\"2002\"},{\"id\":134,\"question\":\"Which of the following mixtures of gases is likely to burn in flame\",\"option\":{\"a\":\"Neon and hydrogen\",\"b\":\"Nitrogen and helium\",\"c\":\"Helium and neon\",\"d\":\"Neon and nitrogen\",\"e\":\"Neon and nitrogen\"},\"section\":\"\",\"image\":\"\",\"answer\":\"a\",\"solution\":\"\",\"examtype\":\"utme\",\"examyear\":\"2004\"},{\"id\":22,\"question\":\"Ethanoic acid is\",\"option\":{\"a\":\"Tribasic\",\"b\":\"Unionizeable\",\"c\":\"Monobasic\",\"d\":\"Dibasic\",\"e\":\"Dibasic\"},\"section\":\"\",\"image\":\"\",\"answer\":\"c\",\"solution\":\"\",\"examtype\":\"utme\",\"examyear\":\"2001\"}]', 'history', '', 0, '2023-05-04 16:59:16', '2023-05-04 16:59:16'),
(6, 'lkjhgfghjkiuyg', 'GE_95BTY10H1W0A', 'R98RX25', '[{\"id\":145,\"question\":\"In the electrolysis of brine, the anode is\",\"option\":{\"a\":\"Platinum\",\"b\":\"Copper\",\"c\":\"Zinc\",\"d\":\"Carbon\",\"e\":\"Carbon\"},\"section\":\"\",\"image\":\"\",\"answer\":\"d\",\"solution\":\"\",\"examtype\":\"utme\",\"examyear\":\"2004\"},{\"id\":42,\"question\":\"Which of the following metals burns brick with a brick-red\",\"option\":{\"a\":\"Pb\",\"b\":\"Ca\",\"c\":\"Na\",\"d\":\"Ma\",\"e\":\"Ma\"},\"section\":\"\",\"image\":\"\",\"answer\":\"b\",\"solution\":\"\",\"examtype\":\"utme\",\"examyear\":\"2001\"},{\"id\":281,\"question\":\"The IUPAC nomencalatyre of the compound LiAIH4 is\",\"option\":{\"a\":\"Aluminium tetrahydrido lithium\",\"b\":\"Tetrahydrido lithium aluminate (III)\",\"c\":\"Lithium aluminium hydride\",\"d\":\"Lithium tetrahydridoaluminate (III)\",\"e\":\"Lithium tetrahydridoaluminate (III)\"},\"section\":\"\",\"image\":\"\",\"answer\":\"d\",\"solution\":\"\",\"examtype\":\"utme\",\"examyear\":\"2010\"},{\"id\":260,\"question\":\"Which of he following pairs of substances will react further with oxygen to form a higher oxide\",\"option\":{\"a\":\"SO2 and NO\",\"b\":\"CO2 and H2O\",\"c\":\"CO and CO2\",\"d\":\"NO and H2O\",\"e\":\"NO and H2O\"},\"section\":\"\",\"image\":\"\",\"answer\":\"a\",\"solution\":\"\",\"examtype\":\"utme\",\"examyear\":\"2006\"},{\"id\":164,\"question\":\"Which of these reagents can confirm the presence of a triple bond\",\"option\":{\"a\":\"Bromine water\",\"b\":\"Acidified KMnO4 \",\"c\":\"Copper (I) chloride\",\"d\":\"Bromine gas\",\"e\":\"Bromine gas\"},\"section\":\"\",\"image\":\"\",\"answer\":\"c\",\"solution\":\"\",\"examtype\":\"utme\",\"examyear\":\"2004\"},{\"id\":41,\"question\":\"The gas that can best be collected by downward displacement of air is\",\"option\":{\"a\":\"Chlorine\",\"b\":\"Sulphur(IV)oxide\",\"c\":\"Ammonia\",\"d\":\"Carbon(IV)oxide\",\"e\":\"Carbon(IV)oxide\"},\"section\":\"\",\"image\":\"\",\"answer\":\"c\",\"solution\":\"\",\"examtype\":\"utme\",\"examyear\":\"2001\"},{\"id\":219,\"question\":\"Zinc and carbon rods are used as anode and cathode respectively in a\",\"option\":{\"a\":\"Voltaic cell\",\"b\":\"Lead accumulator\",\"c\":\"Leclanche cell\",\"d\":\"Daniel cell\",\"e\":\"Daniel cell\"},\"section\":\"\",\"image\":\"\",\"answer\":\"c\",\"solution\":\"\",\"examtype\":\"utme\",\"examyear\":\"2006\"},{\"id\":40,\"question\":\"A burning candle produces water and\",\"option\":{\"a\":\"Carbon(II)oxide\",\"b\":\"Carbon(IV) oxide\",\"c\":\"Oxygen\",\"d\":\"Hydrogen\",\"e\":\"Hydrogen\"},\"section\":\"\",\"image\":\"\",\"answer\":\"d\",\"solution\":\"\",\"examtype\":\"utme\",\"examyear\":\"2001\"},{\"id\":160,\"question\":\"Oxyacetylene flame is used for iron-welding because it\",\"option\":{\"a\":\" makes the iron metal solidity very quickly\",\"b\":\"Combines with oxygen to give a pop sound\",\"c\":\"Evolves a lot of heat when burnt\",\"d\":\"Dissociates to produce carbon (IV) oxide and oxygen\",\"e\":\"Dissociates to produce carbon (IV) oxide and oxygen\"},\"section\":\"\",\"image\":\"\",\"answer\":\"c\",\"solution\":\"\",\"examtype\":\"utme\",\"examyear\":\"2004\"},{\"id\":177,\"question\":\"The ores that can be concentrated by flotation are\",\"option\":{\"a\":\"Nitride ores\",\"b\":\"Chloride ores\",\"c\":\"Oxide ores\",\"d\":\"Sulphide ores\",\"e\":\"Sulphide ores\"},\"section\":\"\",\"image\":\"\",\"answer\":\"d\",\"solution\":\"\",\"examtype\":\"utme\",\"examyear\":\"2005\"}]', 'insurance', '', 0, '2023-05-04 17:02:11', '2023-05-04 17:02:11'),
(7, 'lkjhgfghjkiuyg', 'GE_FA051HFW6UQI', 'R98RX25', '[{\"id\":251,\"question\":\"The raw material used for the smelting of iron ore in a furnace is\",\"option\":{\"a\":\"Zn(NO3)2\",\"b\":\"CaSO4\",\"c\":\"CuSO4\",\"d\":\"CaCO3\",\"e\":\"CaCO3\"},\"section\":\"\",\"image\":\"\",\"answer\":\"d\",\"solution\":\"\",\"examtype\":\"utme\",\"examyear\":\"2006\"},{\"id\":230,\"question\":\"2C2H2(g)  +  5O2(g)     4CO2(g)  +  2H2O(g) In the reaction, the mass of carbon (IV) oxide produced on burning 78g of ethyne is [C = 12, O = 16, H = 1]\",\"option\":{\"a\":\"39\",\"b\":\"352g\",\"c\":\"264g\",\"d\":\"156g\",\"e\":\"156g\"},\"section\":\"\",\"image\":\"\",\"answer\":\"c\",\"solution\":\"\",\"examtype\":\"utme\",\"examyear\":\"2006\"},{\"id\":40,\"question\":\"A burning candle produces water and\",\"option\":{\"a\":\"Carbon(II)oxide\",\"b\":\"Carbon(IV) oxide\",\"c\":\"Oxygen\",\"d\":\"Hydrogen\",\"e\":\"Hydrogen\"},\"section\":\"\",\"image\":\"\",\"answer\":\"d\",\"solution\":\"\",\"examtype\":\"utme\",\"examyear\":\"2001\"},{\"id\":275,\"question\":\"Carbon (II) oxide is considered dangerous if inhaled mainly because it\",\"option\":{\"a\":\"Competes with oxygen in the blood\",\"b\":\"Competes with carbon (IV) oxide in the blood\",\"c\":\"Can cause lung cancer\",\"d\":\"Can cause injury to the nervous system\",\"e\":\"Can cause injury to the nervous system\"},\"section\":\"\",\"image\":\"\",\"answer\":\"a\",\"solution\":\"\",\"examtype\":\"utme\",\"examyear\":\"2010\"},{\"id\":217,\"question\":\"Na2CO3(aq)  +  2HCI(aq)  → 2NaCI(aq)  +  H2O(l)  +  CO2(g)    How many moles of sodium trioxocarbonate (IV) are there in a 25cm3 solution which required 10cm3 of 0.05 mol dm-3 hydrochloric acid solution to neutralize it?\",\"option\":{\"a\":\"0.100mloe\",\"b\":\"0.001mole\",\"c\":\"1.000mole\",\"d\":\"0.010mole\",\"e\":\"0.010mole\"},\"section\":\"\",\"image\":\"\",\"answer\":\"d\",\"solution\":\"\",\"examtype\":\"utme\",\"examyear\":\"2006\"},{\"id\":204,\"question\":\"The air around smelting industries is likely to contain\",\"option\":{\"a\":\"CO2, SO3 and H2\",\"b\":\"SO2N2 and CO2\",\"c\":\"H2, SO2 and CO2\",\"d\":\"H2S, CO and N2\",\"e\":\"H2S, CO and N2\"},\"section\":\"\",\"image\":\"\",\"answer\":\"b\",\"solution\":\"\",\"examtype\":\"utme\",\"examyear\":\"2005\"},{\"id\":286,\"question\":\"In the preparation of oxygen by heating KCIO3 in the presence of MnC2, only moderate hear is needed because the catalyst acts by\",\"option\":{\"a\":\"Increasing the surface area of the reactant\",\"b\":\"Increasing the rate of the reaction\",\"c\":\"Lowering the energy barrier of the reaction\",\"d\":\"Lowering the pressure of the reaction\",\"e\":\"Lowering the pressure of the reaction\"},\"section\":\"\",\"image\":\"\",\"answer\":\"c\",\"solution\":\"\",\"examtype\":\"utme\",\"examyear\":\"2010\"},{\"id\":263,\"question\":\"The droplets of water observed around a bottle of milk taken out of though refrigerator is due to the fact that the\",\"option\":{\"a\":\"Temperature of the milk drops as it loses heat into the surroundings\",\"b\":\"Saturated vapour pressure of the milk is equal to the atmospheric pressure\",\"c\":\"Water vapour in the air around loses some of its energy to the bottle\",\"d\":\"Water vapour in the air around the bottle gains some energy from the bottle\",\"e\":\"Water vapour in the air around the bottle gains some energy from the bottle\"},\"section\":\"\",\"image\":\"\",\"answer\":\"c\",\"solution\":\"\",\"examtype\":\"utme\",\"examyear\":\"2010\"},{\"id\":127,\"question\":\"According to Charles  law, the volume of a gas becomes zero at\",\"option\":{\"a\":\"00C\",\"b\":\"-1000C\",\"c\":\"-2730C\",\"d\":\"-3730C\",\"e\":\"-3730C\"},\"section\":\"\",\"image\":\"\",\"answer\":\"c\",\"solution\":\"\",\"examtype\":\"utme\",\"examyear\":\"2004\"},{\"id\":298,\"question\":\"Which of the following is used to hasten the ripening of fruit\",\"option\":{\"a\":\"Ethanol\",\"b\":\"Ethyne\",\"c\":\"Ethane\",\"d\":\"Ethane\",\"e\":\"Ethane\"},\"section\":\"\",\"image\":\"\",\"answer\":\"d\",\"solution\":\"\",\"examtype\":\"utme\",\"examyear\":\"2010\"}]', 'crk', '', 0, '2023-05-04 17:03:04', '2023-05-04 17:03:04'),
(8, 'lkjhgfghjkiuyg', 'GE_UVFENFYQIX45', 'R98RX25', '[{\"id\":127,\"question\":\"According to Charles  law, the volume of a gas becomes zero at\",\"option\":{\"a\":\"00C\",\"b\":\"-1000C\",\"c\":\"-2730C\",\"d\":\"-3730C\",\"e\":\"-3730C\"},\"section\":\"\",\"image\":\"\",\"answer\":\"c\",\"solution\":\"\",\"examtype\":\"utme\",\"examyear\":\"2004\"},{\"id\":211,\"question\":\"What is the correct IUPAC name for NO2\",\"option\":{\"a\":\"Dioxonitrate(III) ion\",\"b\":\"Dioxonitrate(IV) ION\",\"c\":\"trioxonitrate(iii) ion\",\"d\":\"trioxonitrate(iv) ion\",\"e\":\"trioxonitrate(iv) ion\"},\"section\":\"\",\"image\":\"\",\"answer\":\"a\",\"solution\":\"\",\"examtype\":\"utme\",\"examyear\":\"2005\"},{\"id\":254,\"question\":\"The efficiency of a solid catalyst to increase reaction rates depends on its\",\"option\":{\"a\":\"Concentration\",\"b\":\"Solubility\",\"c\":\"Quantity\",\"d\":\"Surface area\",\"e\":\"Surface area\"},\"section\":\"\",\"image\":\"\",\"answer\":\"d\",\"solution\":\"\",\"examtype\":\"utme\",\"examyear\":\"2006\"},{\"id\":301,\"question\":\"One of the major uses of Alkanes is\",\"option\":{\"a\":\"In the hydrogenation of oils\",\"b\":\"In the textile industries\",\"c\":\"In the production of plastics\",\"d\":\"As domestic and industrial fuels\",\"e\":\"As domestic and industrial fuels\"},\"section\":\"\",\"image\":\"\",\"answer\":\"d\",\"solution\":\"\",\"examtype\":\"utme\",\"examyear\":\"2010\"},{\"id\":90,\"question\":\"A liquid that will dissolve fast is\",\"option\":{\"a\":\"Hydrochloric acid\",\"b\":\"Calcium hydroxide\",\"c\":\"Kerosene\",\"d\":\"Water\",\"e\":\"Water\"},\"section\":\"\",\"image\":\"\",\"answer\":\"c\",\"solution\":\"\",\"examtype\":\"utme\",\"examyear\":\"2003\"},{\"id\":122,\"question\":\"the principal constituent of natural gas is methane\",\"option\":{\"a\":\"ethane\",\"b\":\"propane\",\"c\":\"butane\",\"d\":\"butane\",\"e\":\"butane\"},\"section\":\"\",\"image\":\"\",\"answer\":\"a\",\"solution\":\"\",\"examtype\":\"utme\",\"examyear\":\"2003\"},{\"id\":71,\"question\":\"Which of the following gives a precipitate when treated with NaOH solution\",\"option\":{\"a\":\"Na2CO3\",\"b\":\"CH3COONa\",\"c\":\"NH4Cl\",\"d\":\"AlCl3\",\"e\":\"AlCl3\"},\"section\":\"\",\"image\":\"\",\"answer\":\"d\",\"solution\":\"\",\"examtype\":\"utme\",\"examyear\":\"2002\"},{\"id\":242,\"question\":\"The gas obtained as a product of anaerobic action ob organic matter buried in the earth is\",\"option\":{\"a\":\"Nitrogen(IV) oxide\",\"b\":\"Carbon(IV) oxide\",\"c\":\"Methane\",\"d\":\"Ethene\",\"e\":\"Ethene\"},\"section\":\"\",\"image\":\"\",\"answer\":\"c\",\"solution\":\"\",\"examtype\":\"utme\",\"examyear\":\"2006\"},{\"id\":186,\"question\":\"Treatment of cancer   II. Detection of leakages in water mains   III. Detection of the ages of ancient tools    Which combination of the above refers to the uses of radioactive isotopes?\",\"option\":{\"a\":\"I, II and III\",\"b\":\"I, II, III and IV\",\"c\":\"II and III\",\"d\":\"I and II\",\"e\":\"I and II\"},\"section\":\"\",\"image\":\"\",\"answer\":\"a\",\"solution\":\"\",\"examtype\":\"utme\",\"examyear\":\"2005\"},{\"id\":117,\"question\":\"The type of reaction that is peculiar to benzene is\",\"option\":{\"a\":\"Addition\",\"b\":\"Hydrolysis\",\"c\":\"Polymerization\",\"d\":\"Substitution\",\"e\":\"Substitution\"},\"section\":\"\",\"image\":\"\",\"answer\":\"d\",\"solution\":\"\",\"examtype\":\"utme\",\"examyear\":\"2003\"}]', 'history', '', 0, '2023-05-04 17:04:36', '2023-05-04 17:04:36'),
(9, 'lkjhgfghjkiuyg', 'GE_JCJZASYP5KUS', 'R98RX25', '[{\"id\":104,\"question\":\"Chlorine gas is prepared in the laboratory by\",\"option\":{\"a\":\"Adding concentrated hydrochloric acid to solid manganese (IV) oxide\",\"b\":\"Adding concentrated tetraoxosulphate (VI) acid to solid sodium chloride\",\"c\":\"Dropping concentrated hydrochloric acid onto potassium tetraoxomanganate (VII) crystals\",\"d\":\"Oxidizing concentrated hydrochloric acid using potassium heptaoxodichromate (VI) crystals\",\"e\":\"Oxidizing concentrated hydrochloric acid using potassium heptaoxodichromate (VI) crystals\"},\"section\":\"\",\"image\":\"\",\"answer\":\"a\",\"solution\":\"\",\"examtype\":\"utme\",\"examyear\":\"2003\"},{\"id\":303,\"question\":\" Two hydrocarbons X and Y were treated with bromine water. Decolorized the solution and Y did not. Which class of compound does Y belong\",\"option\":{\"a\":\"Alkynes\",\"b\":\"Alkenes\",\"c\":\"Alkanes\",\"d\":\"Benzene\",\"e\":\"Benzene\"},\"section\":\"\",\"image\":\"\",\"answer\":\"c\",\"solution\":\"\",\"examtype\":\"utme\",\"examyear\":\"2010\"},{\"id\":235,\"question\":\"The idea of planetary electrons was that of\",\"option\":{\"a\":\"Bohr\",\"b\":\"Thompson\",\"c\":\"Rutherford\",\"d\":\"Dalton\",\"e\":\"Dalton\"},\"section\":\"\",\"image\":\"\",\"answer\":\"a\",\"solution\":\"\",\"examtype\":\"utme\",\"examyear\":\"2006\"},{\"id\":260,\"question\":\"Which of he following pairs of substances will react further with oxygen to form a higher oxide\",\"option\":{\"a\":\"SO2 and NO\",\"b\":\"CO2 and H2O\",\"c\":\"CO and CO2\",\"d\":\"NO and H2O\",\"e\":\"NO and H2O\"},\"section\":\"\",\"image\":\"\",\"answer\":\"a\",\"solution\":\"\",\"examtype\":\"utme\",\"examyear\":\"2006\"},{\"id\":128,\"question\":\"It is difficult to achieve an orderly arrangement of the molecules of a gas because they\",\"option\":{\"a\":\"Have no definite shape\",\"b\":\"Have little force attraction between them\",\"c\":\"Can collide with one another in the container\",\"d\":\"Are too small in size\",\"e\":\"Are too small in size\"},\"section\":\"\",\"image\":\"\",\"answer\":\"b\",\"solution\":\"\",\"examtype\":\"utme\",\"examyear\":\"2004\"},{\"id\":36,\"question\":\"When chlorine is passed into water and the resulting solution exposed to sunlight, the product formed are\",\"option\":{\"a\":\"Chlorine gas and hydrogen\",\"b\":\"Oxygen and oxochlorate(l) acid\",\"c\":\"Hydrochloric acid and oxygen\",\"d\":\"\",\"e\":\"\"},\"section\":\"\",\"image\":\"\",\"answer\":\"b\",\"solution\":\"\",\"examtype\":\"utme\",\"examyear\":\"2001\"},{\"id\":241,\"question\":\"Nigerian crude oil is described as light crude because of its\",\"option\":{\"a\":\"Low aliphatic hydrocarbon content\",\"b\":\"Low sulphur content\",\"c\":\"High natural gas content\",\"d\":\"High octane number\",\"e\":\"High octane number\"},\"section\":\"\",\"image\":\"\",\"answer\":\"c\",\"solution\":\"\",\"examtype\":\"utme\",\"examyear\":\"2006\"},{\"id\":180,\"question\":\"When pure aluminum metal is heated to red hot in the presence of nitrogen gas, the compound formed is\",\"option\":{\"a\":\"AI2N\",\"b\":\"AIN\",\"c\":\"AI2N2\",\"d\":\"AI2N3\",\"e\":\"AI2N3\"},\"section\":\"\",\"image\":\"\",\"answer\":\"b\",\"solution\":\"\",\"examtype\":\"utme\",\"examyear\":\"2005\"},{\"id\":105,\"question\":\"Metals of the first transition series have special proper ties which are different from those of groups I and II elements because they have partially filled\",\"option\":{\"a\":\"s  orbitals\",\"b\":\"p orbitals\",\"c\":\"d orbitals\",\"d\":\"f orbitals\",\"e\":\"f orbitals\"},\"section\":\"\",\"image\":\"\",\"answer\":\"c\",\"solution\":\"\",\"examtype\":\"utme\",\"examyear\":\"2003\"},{\"id\":62,\"question\":\"The processes which return carbon(IV) oxide to the atmosphere include\",\"option\":{\"a\":\"Photosynthesis, decay and respiration\",\"b\":\"Photosynthesis, respiration and transpiration\",\"c\":\"Respiration, decay and combustion\",\"d\":\"Ozone, depletion, combustion and decay\",\"e\":\"Ozone, depletion, combustion and decay\"},\"section\":\"\",\"image\":\"\",\"answer\":\"c\",\"solution\":\"\",\"examtype\":\"utme\",\"examyear\":\"2002\"}]', 'history', '', 0, '2023-05-04 17:06:41', '2023-05-04 17:06:41'),
(10, 'lkjhgfghjkiuyg', 'GE_PC9XVTCE3HE0', 'R98RX25', '[{\"id\":248,\"question\":\"An emulsion may be produced by shaking a detergent solution with\",\"option\":{\"a\":\"Palm wine\",\"b\":\"Palm oil\",\"c\":\"Ethanoic acid\",\"d\":\"Water\",\"e\":\"Water\"},\"section\":\"\",\"image\":\"\",\"answer\":\"d\",\"solution\":\"\",\"examtype\":\"utme\",\"examyear\":\"2006\"},{\"id\":35,\"question\":\"A trihydric alkanol is\",\"option\":{\"a\":\"glycerol\",\"b\":\"phenol\",\"c\":\"glycol\",\"d\":\"ethanol\",\"e\":\"ethanol\"},\"section\":\"\",\"image\":\"\",\"answer\":\"a\",\"solution\":\"\",\"examtype\":\"utme\",\"examyear\":\"2001\"},{\"id\":193,\"question\":\"Equal moles of ethyne and hydrogen iodide react to give\",\"option\":{\"a\":\"CH2 = CH2\",\"b\":\"CH2 = CHI\",\"c\":\"CH2 – CHI\",\"d\":\"CH2 – CI3\",\"e\":\"CH2 – CI3\"},\"section\":\"\",\"image\":\"\",\"answer\":\"b\",\"solution\":\"\",\"examtype\":\"utme\",\"examyear\":\"2005\"},{\"id\":120,\"question\":\"The process by which atoms are rearranged into different molecular structures in the petroleum refining process is referred to as\",\"option\":{\"a\":\"Catalytic cracking\",\"b\":\"Hydrocracking\",\"c\":\"Polymerization\",\"d\":\"Reforming\",\"e\":\"Reforming\"},\"section\":\"\",\"image\":\"\",\"answer\":\"d\",\"solution\":\"\",\"examtype\":\"utme\",\"examyear\":\"2003\"},{\"id\":127,\"question\":\"According to Charles  law, the volume of a gas becomes zero at\",\"option\":{\"a\":\"00C\",\"b\":\"-1000C\",\"c\":\"-2730C\",\"d\":\"-3730C\",\"e\":\"-3730C\"},\"section\":\"\",\"image\":\"\",\"answer\":\"c\",\"solution\":\"\",\"examtype\":\"utme\",\"examyear\":\"2004\"},{\"id\":62,\"question\":\"The processes which return carbon(IV) oxide to the atmosphere include\",\"option\":{\"a\":\"Photosynthesis, decay and respiration\",\"b\":\"Photosynthesis, respiration and transpiration\",\"c\":\"Respiration, decay and combustion\",\"d\":\"Ozone, depletion, combustion and decay\",\"e\":\"Ozone, depletion, combustion and decay\"},\"section\":\"\",\"image\":\"\",\"answer\":\"c\",\"solution\":\"\",\"examtype\":\"utme\",\"examyear\":\"2002\"},{\"id\":56,\"question\":\"When a salt loses its water of crystallization to the atmosphere on exposure, the process is said to be\",\"option\":{\"a\":\"Deliquescence\",\"b\":\"Effervescence\",\"c\":\"Efflorescence\",\"d\":\"Fluorescence\",\"e\":\"Fluorescence\"},\"section\":\"\",\"image\":\"\",\"answer\":\"c\",\"solution\":\"\",\"examtype\":\"utme\",\"examyear\":\"2002\"},{\"id\":140,\"question\":\"Which of these compounds is a normal salt\",\"option\":{\"a\":\"NaHS\",\"b\":\"NaSO4\",\"c\":\"NaHCO3\",\"d\":\"Na2CO3\",\"e\":\"Na2CO3\"},\"section\":\"\",\"image\":\"\",\"answer\":\"d\",\"solution\":\"\",\"examtype\":\"utme\",\"examyear\":\"2004\"},{\"id\":263,\"question\":\"The droplets of water observed around a bottle of milk taken out of though refrigerator is due to the fact that the\",\"option\":{\"a\":\"Temperature of the milk drops as it loses heat into the surroundings\",\"b\":\"Saturated vapour pressure of the milk is equal to the atmospheric pressure\",\"c\":\"Water vapour in the air around loses some of its energy to the bottle\",\"d\":\"Water vapour in the air around the bottle gains some energy from the bottle\",\"e\":\"Water vapour in the air around the bottle gains some energy from the bottle\"},\"section\":\"\",\"image\":\"\",\"answer\":\"c\",\"solution\":\"\",\"examtype\":\"utme\",\"examyear\":\"2010\"},{\"id\":184,\"question\":\"A heterogeneous mixture can be defined as any mixture\",\"option\":{\"a\":\"Whose composition is uniform\",\"b\":\"Whose composition is not uniform\",\"c\":\"Formed by solids and liquids\",\"d\":\"Of a solute and a solvent\",\"e\":\"Of a solute and a solvent\"},\"section\":\"\",\"image\":\"\",\"answer\":\"b\",\"solution\":\"\",\"examtype\":\"utme\",\"examyear\":\"2005\"}]', 'history', '', 0, '2023-05-04 17:13:21', '2023-05-04 17:13:21');

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
(14, 'ENT_5KZWH76BMK', '0DAXAXN', 'X9DIAIVSHPAN', '2023-04-29 20:52:26', '2023-04-29 20:52:26'),
(13, 'ENT_F87OEOJ681', '0DAXAXN', 'BQLUNX9O7H2W', '2023-04-29 20:52:26', '2023-04-29 20:52:26'),
(12, 'ENT_A4XVXS496N', '0DAXAXN', 'V0ZIBDBK9RA8', '2023-04-29 20:52:26', '2023-04-29 20:52:26');

-- --------------------------------------------------------

--
-- Table structure for table `questions_tb`
--

CREATE TABLE `questions_tb` (
  `id` int(11) NOT NULL,
  `question_id` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `question_title` longtext COLLATE utf8_unicode_ci NOT NULL,
  `option_a` text COLLATE utf8_unicode_ci NOT NULL,
  `option_b` text COLLATE utf8_unicode_ci NOT NULL,
  `option_c` text COLLATE utf8_unicode_ci NOT NULL,
  `option_d` text COLLATE utf8_unicode_ci NOT NULL,
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
(1, 'X9DIAIVSHPAN', '<p>QUestion 2<br></p>', 'null', 'null', 'null', 'null', 'null', '<p><br></p>', 'image_question.png', 1, '<p><br></p>', 'USR_UTM3XFRFK1', '2023-04-29 20:52:26', '2023-04-29 20:14:17'),
(2, 'BQLUNX9O7H2W', '<p>Question 3<br></p>', 'null', 'null', 'null', 'null', 'null', '<p><br></p>', 'image_question.png', 1, '<p><br></p>', 'USR_UTM3XFRFK1', '2023-04-29 20:52:26', '2023-04-29 20:14:17'),
(3, 'V0ZIBDBK9RA8', '<p>Question 1<br></p>', 'null', 'null', 'null', 'null', 'null', '<p><br></p>', 'image_question.png', 1, '<p><br></p>', 'USR_UTM3XFRFK1', '2023-04-29 20:52:26', '2023-04-29 20:45:54');

-- --------------------------------------------------------

--
-- Table structure for table `students_submission_uploads_tb`
--

CREATE TABLE `students_submission_uploads_tb` (
  `id` int(11) NOT NULL,
  `entry_id` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `file_path` varchar(258) COLLATE utf8_unicode_ci NOT NULL,
  `attempt_id` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `exam_id` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `candidate_id` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `filename` varchar(258) COLLATE utf8_unicode_ci NOT NULL,
  `file_type` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(17, 'SUB_UMFQQKVT2W', 'Mathematics', 'MATHS', 'Mathematics', 'USR_UTM3XFRFK1', '2022-05-23 11:21:28', '2022-05-23 11:21:28'),
(18, 'SUB_T6RRQGWRLU', 'Literature-In-English', 'LitEng', '', 'USR_UTM3XFRFK1', '2022-07-04 08:29:24', '2022-07-04 08:29:24'),
(19, 'SUB_AR0K654RMP', 'General', 'GNR', '', 'USR_UTM3XFRFK1', '2022-08-26 15:03:08', '2022-08-26 15:03:08'),
(20, 'SUB_WY1UK43UD8', 'Physics', 'PHY', '', 'USR_UTM3XFRFK1', '2023-01-30 08:19:48', '2023-01-30 08:19:48'),
(21, 'SUB_TGRYTM3VGR', 'Chemistry', 'CHM', '', 'USR_UTM3XFRFK1', '2023-01-30 08:20:17', '2023-01-30 08:20:17'),
(22, 'SUB_V9NBUSN6O6', 'Geography', 'GEO', '', 'USR_UTM3XFRFK1', '2023-02-02 06:35:07', '2023-02-02 06:35:07');

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
(6, 'USR_UTM3XFRFK1', '', 'Joseph', 'Olawale', 'jolawale28@gmail.com', '$2y$10$XP5vB3ZXix1RWJ09uBnpMelFUxS4lQdOT/Nenba2GJ7N5NClGndDS', '', 'USR_UTM3XFRFK1', '', 1, '2022-10-31 13:47:30', '2021-12-02 11:53:59'),
(7, 'USR_OD9J7URWV8', '', 'James', 'Gibson', 'i75u5u@gmail.com', '$2y$10$rLaO8H8GiALHbxjw4P89ReYo1F3Q3gDJH4s6MO0VTPJ7/rqbd1E.a', '', '', '', 1, '2022-05-25 12:03:05', '2021-12-07 11:51:19'),
(40, 'USR_TH4ZKJGEZA', '', 'Stephen', 'Okoroafor', 'wkamath104@gmail.com', '$2y$10$bR2AcFiXmllBwkZ5E.ZlR.N5itWgR3TdPcVicfoYSVgLOWAdPqlZW', '', 'USR_UTM3XFRFK1', '0', 1, '2022-12-06 07:24:04', '2022-09-23 06:44:19'),
(41, 'USR_6YZ3PEVI8F', '', 'Friday', 'Obekpa', 'wkachem104@gmail.com', '$2y$10$LXFws3sKi21/JBNUksIyXeuTFVNZPvuOX8Zv1RrG83Rz77JVEEDke', '', 'USR_UTM3XFRFK1', '0', 1, '2022-10-06 07:18:54', '2022-09-23 09:01:23'),
(12, 'USR_F6GZD17Q5D', '', 'Angelwings', 'Academy', 'angelwingseducation@gmail.com', '$2y$10$djWcj1tgVvERz.xEC1xQROsENtRFywxcd1uebI5.ZiARl3.uWyaQi', '', 'USR_F6GZD17Q5D', '', 1, '2022-05-25 12:03:21', '2022-03-01 11:58:00'),
(14, 'USR_GW1ZILSXWH', '', 'wale', 'wale', 'wale@wale.com', '$2y$10$B7m1ANOLbqRv/ojmV9z1XeC68UnRGTOWMeOEpuCJdjYDWAPbkCiQ6', '', 'USR_F6GZD17Q5D', '', 1, '2022-05-25 12:03:27', '2022-03-01 12:46:14'),
(49, 'USR_KFULSALMI1', '', 'Kenneth', 'Agen', 'kenoagen@gmail.com', '$2y$10$jKz8JBXkbWBpgKL5LJg/5uAcKKlUbcLH9qb/CUs64falO2ZSvQ75S', '', 'USR_UTM3XFRFK1', '0', 1, '2023-01-11 04:45:53', '2022-10-13 10:20:11'),
(42, 'USR_KMUSPJ8453', '', 'Chibu', 'Shadrack', 'chibushadrack@gmail.com', '$2y$10$Fzd6i9hiBhLHY1kI5pGN6ussDgW4ySK1CcJyD0hdv3Bg.pJxtQuOK', '', 'USR_UTM3XFRFK1', '0', 1, '2022-10-12 15:14:14', '2022-10-12 11:23:06'),
(43, 'USR_27KL0DJ28O', '', 'Edewor', 'Okiemute', 'wkaenglish100@gmail.com', '$2y$10$VWlGmF5/AIUN8fhXz8.sCuWNM0fFTqDvMrxUQfIhyjfm2.JL1ERti', '', 'USR_UTM3XFRFK1', '0', 1, '2022-12-06 03:32:45', '2022-10-13 08:04:18'),
(58, 'USR_FKTJUP9K20', '', 'Allandikim', 'Alexis', 'wkaallandikim@gmail.com', '$2y$10$d6lC7V0qCWDoOdoB4PHz/OLXMTKCicpC0q8TsM8WcjIw9xDGFXohe', '', 'USR_UTM3XFRFK1', '0', 1, '2023-03-20 03:55:09', '2022-10-14 08:19:09'),
(50, 'USR_GULIPVS2ZN', '', 'Timothy', 'Ademolu', 'timothygreatness@gmail.com', '$2y$10$rma5Q2Wh/SwoYB//Bgzjw..6t2YiOa4f9maO64VQTkt9r1u3UTUYy', '', 'USR_UTM3XFRFK1', '0', 1, '2022-10-13 11:25:34', '2022-10-13 10:20:49'),
(51, 'USR_NTQOHR9QIW', '', 'Sunday', 'Owoeye', 'owoeyesunday@gmail.com', '$2y$10$WdfqKtcH/dn7r97.gvYwBuP74BbQ5vlc.rEQgm5bEL0KXZOa9OOje', '', 'USR_UTM3XFRFK1', '0', 1, '2023-03-27 07:36:45', '2022-10-13 10:21:18'),
(52, 'USR_GSOPH7V913', '', 'Samuel', 'Uwa', 'wkasamueluwa@gmail.com', '$2y$10$UI5YEpkNUG5tNYxaZMMtAeMnrBinhUTdvWXsRff5LFtQkeEBcU71a', '', 'USR_UTM3XFRFK1', '0', 1, '2022-11-22 09:41:42', '2022-10-13 10:21:37'),
(53, 'USR_F68EPCYUS1', '', 'Abubakar', 'Abubakar', 'wkaarabic101@gmail.com', '$2y$10$kV5d0Sx7WwGYPbPA7JVCI.dvRnVTQXFzym65lj3uQpaw.ZwuTjLrS', '', 'USR_UTM3XFRFK1', '0', 1, '2022-10-17 02:52:10', '2022-10-13 10:22:05'),
(54, 'USR_96Q299D8Z0', '', 'Olusesan', 'Awelewa', 'sessybab2ce@gmail.com', '$2y$10$xGsFYAl8PnefEGMS1a3cR.QXtLT2UVF8zOVv3O40WRhBbIDQclFLO', '', 'USR_UTM3XFRFK1', '0', 1, '2022-10-13 12:07:20', '2022-10-13 10:22:24'),
(55, 'USR_A6RYUHS98D', '', 'Isaac', 'Olalere', 'wkabio101@gmail.com', '$2y$10$wVIGEF60yBr3lNiQtC6KceIZGTqjHedkQ/F4sQuYC00tZ6NNkyMBO', '', 'USR_UTM3XFRFK1', '0', 1, '2022-10-13 11:39:18', '2022-10-13 10:22:57'),
(56, 'USR_8I2Q1L97LB', '', 'Shaibu', 'Bashir', 'sbashirauthor@gmail.com', '$2y$10$yQyec2RHUod7MO/jZqSy0OXeJX6q9m/Uabr2PBsrLzuxxTaf7.HeS', '', 'USR_UTM3XFRFK1', '0', 1, '2022-11-28 08:20:03', '2022-10-13 10:47:17'),
(57, 'USR_VP0GKWVGGO', '', 'Orisheje', 'Matthew', 'wkaphys103@gmail.com', '$2y$10$KLazcJEfVnH8NWxTdYO/ZOWAWlmEWhBWTQflRzN4BaTSfn0V6rhhu', '', 'USR_UTM3XFRFK1', '0', 1, '2022-10-14 09:37:38', '2022-10-13 11:31:43'),
(59, 'USR_R4KN1YZ2IT', '', 'Phoebe', 'Otisi', 'wkaeng107@gmail.com', '$2y$10$rluQbTKHEp560ByY.Jcd/OKDksnLumOFDrAehWFdEe776G/.31xxC', '', 'USR_UTM3XFRFK1', '0', 1, '2022-10-14 15:34:07', '2022-10-14 08:21:43'),
(60, 'USR_829AQ0PYX0', '', 'Anthony', 'Udensi', 'wkafin102@gmail.com', '$2y$10$oPiNzbccfZccscb27GmPD.q4p5OmFUujiqjFYkr2nNAUMziCZ5gbq', '', 'USR_UTM3XFRFK1', '0', 1, '2022-11-28 08:51:22', '2022-10-14 09:05:41'),
(61, 'USR_8VC1PTD8OW', '', 'Becky', 'Adeladan', 'adeladanabimbola@gmail.com', '$2y$10$2Xbd98.dK6IC4ztIfDfyreJbYkRbJmJIUiHh5r7QFBo5rPk66p1vy', '', 'USR_UTM3XFRFK1', '0', 1, '2023-02-01 07:02:17', '2023-01-11 16:20:31'),
(62, 'USR_ZZ3T5Y7OE5', '', 'Buhari', 'Mustapha', 'waldorfknollarabic@gmail.com', '$2y$10$w3CGbVjPd/wvgFPc2Drag.D4QKkm3wppk2g17YkgvJonkHaOUcjiC', '', 'USR_UTM3XFRFK1', '0', 1, '2023-01-12 01:09:03', '2023-01-11 16:21:45'),
(64, 'USR_HFICJ0N1SR', '', 'David', 'Ogunsuyi', 'wkadavidphysics@gmail.com', '$2y$10$HkwCOZ/VEQn4Xn0YkC2qA.MvD1t4EoRwtUVYH1k3TcqQD5443zfmi', '', 'USR_UTM3XFRFK1', '0', 1, '2023-03-23 10:19:31', '2023-01-12 01:48:48'),
(66, 'USR_QA26D0UOWR', '', 'Adebiyi', 'Wisdom', 'adebiyiwisdomtope@gmail.com', '$2y$10$btlk8eT14cUJrMsYo7c.oOUnp/SjIwqdwLiy8Wf601laH2i//JpFu', '', 'USR_UTM3XFRFK1', 'F5BPUWV35A', 1, '2023-02-03 03:15:19', '2023-02-03 02:58:47'),
(67, 'USR_A9814ZO6Q0', '', 'Bashir', 'Bashir', 'wkabashirhistory@gmail.com', '$2y$10$mImI6avmPv5ceK/LTAq4z.dzklFzfkwxLbV.DeOtI0z1rjB9Y4D3O', '', 'USR_UTM3XFRFK1', 'PJ0XJISS0P', 1, '2023-02-06 03:47:17', '2023-02-06 03:18:53'),
(71, 'USR_Q01D6YQBD8', '', 'Bamidele', 'Jay', 'wkaict103@gmail.com', '$2y$10$oUxqu9Kw/KQrrShjVFAQ8OWBf499cvcgWN0O/4HluUu25x0QlFF7u', '', 'USR_UTM3XFRFK1', 'YJ6JLE12Q9', 0, '2023-02-06 09:01:39', '2023-02-06 09:01:39');

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
  ADD PRIMARY KEY (`exam_attempt_id`);

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
-- Indexes for table `examination_attachments_tb`
--
ALTER TABLE `examination_attachments_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `generated_exams_tb`
--
ALTER TABLE `generated_exams_tb`
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
-- Indexes for table `students_submission_uploads_tb`
--
ALTER TABLE `students_submission_uploads_tb`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `candidate_answers_tb`
--
ALTER TABLE `candidate_answers_tb`
  MODIFY `exam_attempt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `classes_tb`
--
ALTER TABLE `classes_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `collations_tb`
--
ALTER TABLE `collations_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `examinations_candidates_tb`
--
ALTER TABLE `examinations_candidates_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `examinations_collations_tb`
--
ALTER TABLE `examinations_collations_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `examinations_tb`
--
ALTER TABLE `examinations_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `examination_attachments_tb`
--
ALTER TABLE `examination_attachments_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `generated_exams_tb`
--
ALTER TABLE `generated_exams_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `questions_examinations_tb`
--
ALTER TABLE `questions_examinations_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `questions_tb`
--
ALTER TABLE `questions_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `students_submission_uploads_tb`
--
ALTER TABLE `students_submission_uploads_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subjects_tb`
--
ALTER TABLE `subjects_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users_tb`
--
ALTER TABLE `users_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `users_to_examinations_tb`
--
ALTER TABLE `users_to_examinations_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
