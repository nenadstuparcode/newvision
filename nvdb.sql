-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2018 at 07:33 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nvdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `business_streams`
--

CREATE TABLE `business_streams` (
  `id` int(11) NOT NULL,
  `business_stream_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `business_streams`
--

INSERT INTO `business_streams` (`id`, `business_stream_name`) VALUES
(1, 'Software and Hardware'),
(2, 'Medicine');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` int(11) NOT NULL,
  `company_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `profile_description` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `business_stream_id` int(11) NOT NULL,
  `establishment_date` date NOT NULL,
  `company_website_url` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `company_email` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_number` int(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `company_name`, `profile_description`, `business_stream_id`, `establishment_date`, `company_website_url`, `company_email`, `contact_number`) VALUES
(5, 'Nova Vizija', 'job agency', 4, '0000-00-00', 'www.novavizija.com', 'novavizija@gmail.com', 66901510);

-- --------------------------------------------------------

--
-- Table structure for table `company_images`
--

CREATE TABLE `company_images` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `company_images` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `documentation`
--

CREATE TABLE `documentation` (
  `id` int(11) NOT NULL,
  `name` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `documentation_language` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `documentation_region` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `profession_id` int(11) DEFAULT NULL,
  `profession_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created` date DEFAULT NULL,
  `file_size` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `driverlicences`
--

CREATE TABLE `driverlicences` (
  `id` int(11) NOT NULL,
  `dr_licence_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dr_licence_type` varchar(63) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_account_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `driverlicences`
--

INSERT INTO `driverlicences` (`id`, `dr_licence_name`, `dr_licence_type`, `user_account_id`) VALUES
(1, 'B', 'truck', 28),
(3, 'B', 'car', 28),
(4, 'B', 'car', 28),
(5, 'B', 'car', 31);

-- --------------------------------------------------------

--
-- Table structure for table `education_details`
--

CREATE TABLE `education_details` (
  `user_account_id` int(11) NOT NULL,
  `certificate_degree_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Institute_university_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `starting_date` date NOT NULL,
  `completion_date` date DEFAULT NULL,
  `education_desc` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `education_details`
--

INSERT INTO `education_details` (`user_account_id`, `certificate_degree_name`, `Institute_university_name`, `starting_date`, `completion_date`, `education_desc`, `id`) VALUES
(18, 'IT Engineer', 'Banjaluka College', '2019-01-01', '2023-01-01', '\r\nLecture at the Faculty of Biomedical Engineering, Czech Technical University, in Prague, Czech Republic\r\n\r\nSchool children sitting in the shade of an orchard in Bamozai, near Gardez, Paktya Province, Afghanistan\r\n\r\nStudent participants in the FIRST Robotics Competition, Washington, D.C.\r\nEducation is the process of facilitating learning, or the acquisition of knowledge, skills, values, beliefs, and habits. Educational methods include storytelling, discussion, teaching, training, and directed research. Education frequently takes place under the guidance of educators, but learners may also educate themselves.', 39),
(18, 'IT Engineer', 'Banjaluka College', '2019-01-01', '2023-01-01', '\r\nLecture at the Faculty of Biomedical Engineering, Czech Technical University, in Prague, Czech Republic\r\n\r\nSchool children sitting in the shade of an orchard in Bamozai, near Gardez, Paktya Province, Afghanistan\r\n\r\nStudent participants in the FIRST Robotics Competition, Washington, D.C.\r\nEducation is the process of facilitating learning, or the acquisition of knowledge, skills, values, beliefs, and habits. Educational methods include storytelling, discussion, teaching, training, and directed research. Education frequently takes place under the guidance of educators, but learners may also educate themselves.', 40),
(18, 'Computer Science', 'ETF Banjaluka', '2014-01-01', '2018-01-01', '\r\nLecture at the Faculty of Biomedical Engineering, Czech Technical University, in Prague, Czech Republic\r\n\r\nSchool children sitting in the shade of an orchard in Bamozai, near Gardez, Paktya Province, Afghanistan\r\n\r\nStudent participants in the FIRST Robotics Competition, Washington, D.C.\r\nEducation is the process of facilitating learning, or the acquisition of knowledge, skills, values, beliefs, and habits. Educational methods include storytelling, discussion, teaching, training, and directed research. Education frequently takes place under the guidance of educators, but learners may also educate themselves.', 41),
(18, 'Computer Science', 'ETF Banjaluka', '2014-01-01', '2018-01-01', '\r\nLecture at the Faculty of Biomedical Engineering, Czech Technical University, in Prague, Czech Republic\r\n\r\nSchool children sitting in the shade of an orchard in Bamozai, near Gardez, Paktya Province, Afghanistan\r\n\r\nStudent participants in the FIRST Robotics Competition, Washington, D.C.\r\nEducation is the process of facilitating learning, or the acquisition of knowledge, skills, values, beliefs, and habits. Educational methods include storytelling, discussion, teaching, training, and directed research. Education frequently takes place under the guidance of educators, but learners may also educate themselves.', 42),
(29, 'IT Engineer', 'FTN, Beograd', '2011-01-01', '2016-01-01', 'bla bla bla bla', 43),
(29, 'asdasdasd', 'easdasdasd', '2123-01-01', '2123-01-01', 'asdasdadada', 44),
(28, '123qweqwe', '123asdasdasd', '0122-12-31', '0122-12-31', '123', 53),
(31, 'doktor politickig nauka', 'Politicke nauke', '1995-01-01', '1999-01-01', 'Ovde ide opis posla koji je osoba radila ili koji i dalje radi.', 54);

-- --------------------------------------------------------

--
-- Table structure for table `experiences`
--

CREATE TABLE `experiences` (
  `id` int(11) NOT NULL,
  `user_account_id` int(11) NOT NULL,
  `company_name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `job_position` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `job_location` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `job_country` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `job_description` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_current_job` char(3) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `experiences`
--

INSERT INTO `experiences` (`id`, `user_account_id`, `company_name`, `job_position`, `start_date`, `end_date`, `job_location`, `job_country`, `job_description`, `is_current_job`) VALUES
(4, 28, 'Apoteka', 'Farmakolog', '2015-12-19', '2018-12-17', NULL, NULL, NULL, NULL),
(5, 31, 'Vlada Republike Srpske', 'Predsednik', '2008-01-01', '2018-01-01', NULL, NULL, 'Glavni baja', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `experience_details`
--

CREATE TABLE `experience_details` (
  `user_account_id` int(11) NOT NULL,
  `is_current_job` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `job_title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `company_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `job_location_city` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `job_location_state` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `job_location_country` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(4000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobjob_post_activitys`
--

CREATE TABLE `jobjob_post_activitys` (
  `user_account_id` int(11) NOT NULL,
  `job_post_id` int(11) NOT NULL,
  `apply_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_locations`
--

CREATE TABLE `job_locations` (
  `id` int(11) NOT NULL,
  `street_address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `zip` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_posts`
--

CREATE TABLE `job_posts` (
  `id` int(11) NOT NULL,
  `posted_by_id` int(11) NOT NULL,
  `job_type_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `is_company_name_hidden` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `created_date` date NOT NULL,
  `job_description` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `job_location_id` int(11) NOT NULL,
  `is_active` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `job_title` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `job_deadline` date DEFAULT NULL,
  `job_profession` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `job_position` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `job_city` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `job_country` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `job_description_full` varchar(2048) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `job_posts`
--

INSERT INTO `job_posts` (`id`, `posted_by_id`, `job_type_id`, `company_id`, `is_company_name_hidden`, `created_date`, `job_description`, `job_location_id`, `is_active`, `job_title`, `job_deadline`, `job_profession`, `job_position`, `job_city`, `job_country`, `job_description_full`) VALUES
(1, 28, 0, 0, '', '2018-12-15', '', 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 0, 0, 0, '', '2018-12-15', 'sajdksadashdn', 0, '', 'slkdnsakdhas', NULL, 'Medicine', 'Nurse', 'Viena', 'Austria', 'lnkdjnsadjsandasndjasndaldns'),
(3, 32, 0, 0, '', '2018-12-15', 'sajdksadashdn', 0, '', 'slkdnsakdhas', NULL, 'Medicine', 'Nurse', 'Viena', 'Austria', 'lnkdjnsadjsandasndjasndaldns'),
(5, 0, 0, 0, '', '0000-00-00', 'this is short desc', 0, '', 'Nurse needed', '2018-12-29', '', 'Nurse', 'Munich', 'Germany', 'this is long desc'),
(6, 0, 0, 0, '', '0000-00-00', '', 0, '', '', '0000-00-00', '', '', '', '', ''),
(7, 30, 0, 0, '', '0000-00-00', 'this is short description', 0, '', 'Programer Javascript', '2018-12-30', 'Software and Hardware', 'Senior Programer', 'France', 'Paris', 'Advanced OO JavaScript is a big plus. 5+ years in Application Development experience in JavaScript frameworks. Advanced OO JavaScript is a big plus. 5+ years in Application Development experience in JavaScript frameworks. Advanced OO JavaScript is a big plus. 5+ years in Application Development experience in JavaScript frameworkss'),
(8, 30, 0, 0, '', '0000-00-00', 'Javascript Senior needed', 0, '', 'Programer Javascript', '2018-12-30', '', 'Senior Programer', 'United Kingdom', 'London', 'Advanced OO JavaScript is a big plus. 5+ years in Application Development experience in JavaScript frameworks. Advanced OO JavaScript is a big plus. 5+ years in Application Development experience in JavaScript frameworks. Advanced OO JavaScript is a big plus. 5+ years in Application Development experience in JavaScript frameworkss');

-- --------------------------------------------------------

--
-- Table structure for table `job_post_skill_sets`
--

CREATE TABLE `job_post_skill_sets` (
  `skill_set_id` int(11) NOT NULL,
  `job_post_id` int(11) NOT NULL,
  `skill_level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_types`
--

CREATE TABLE `job_types` (
  `id` int(11) NOT NULL,
  `job_types` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `job_types`
--

INSERT INTO `job_types` (`id`, `job_types`) VALUES
(1, ''),
(2, ''),
(3, ''),
(4, 'Software'),
(5, 'Medicine'),
(6, 'Art'),
(7, ''),
(8, ''),
(9, ''),
(10, ''),
(11, ''),
(12, 'Poljuprivreda');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `reciever_id` int(11) NOT NULL,
  `content` varchar(2048) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message_time` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `created_by` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` varchar(2048) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pricings`
--

CREATE TABLE `pricings` (
  `id` int(11) NOT NULL,
  `plan_name` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `plan_price` int(11) DEFAULT NULL,
  `days` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `seeker_profiles`
--

CREATE TABLE `seeker_profiles` (
  `user_account_id` int(11) NOT NULL,
  `first_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `current_salary` int(11) DEFAULT NULL,
  `is_annually_monthly` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `seeker_skill_sets`
--

CREATE TABLE `seeker_skill_sets` (
  `user_account_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `skill_set_name` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `seeker_skill_sets`
--

INSERT INTO `seeker_skill_sets` (`user_account_id`, `id`, `skill_set_name`) VALUES
(28, 1, 'Office'),
(0, 2, NULL),
(0, 4, NULL),
(28, 7, 'Javascript'),
(28, 8, 'PHP'),
(28, 9, 'Medicine'),
(31, 10, 'Pravo'),
(31, 12, 'Office');

-- --------------------------------------------------------

--
-- Table structure for table `skill_sets`
--

CREATE TABLE `skill_sets` (
  `id` int(11) NOT NULL,
  `skill_set_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_accounts`
--

CREATE TABLE `user_accounts` (
  `id` int(11) NOT NULL,
  `user_type_id` int(11) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `passwd` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `gender` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_number` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sms_notification_active` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_notification_active` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_image` blob,
  `created` date NOT NULL,
  `first_name` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_id` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_name` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `profession_type_id` int(11) DEFAULT NULL,
  `profession_type_name` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_desc` varchar(2048) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_accounts`
--

INSERT INTO `user_accounts` (`id`, `user_type_id`, `email`, `passwd`, `date_of_birth`, `gender`, `is_active`, `contact_number`, `sms_notification_active`, `email_notification_active`, `user_image`, `created`, `first_name`, `last_name`, `password`, `city`, `country`, `address`, `company_id`, `company_name`, `profession_type_id`, `profession_type_name`, `short_desc`) VALUES
(18, 1, 'nenadstupar8@gmail.com', NULL, '1993-01-23', 'male', '1', '066207978', NULL, NULL, NULL, '2018-12-04', 'Nenad', 'Stupar', '123456', 'Banjaluka', 'Bosnia And Herzegovina', 'Carice Milice 12212', NULL, '', 1, NULL, ' this.router.navigateByUrl(\"/profile\"); this.router.navigateByUrl(\"/profile\"); this.router.navigateByUrl(\"/profile\"); this.router.navigateByUrl(\"/profile\");'),
(27, 1, 'djukadjukic@mail.com', NULL, '1990-11-11', '', NULL, '066223223', NULL, NULL, NULL, '2018-12-11', 'Djuka', 'Djukic', '$2a$10$XI1ncYf76XkqxcVzEwz1t.PoT96Pb3FY6JdIUX/0i.UPiuFZQ0idy', '', '', '', NULL, '', NULL, NULL, NULL),
(28, 1, 'nikolinavasic@mail.com', NULL, '1994-06-24', '', NULL, '066246994', NULL, NULL, NULL, '2018-12-11', 'Djuro', 'Vasic', '$2a$10$9xArB59HNy4PtMwRn2KLZuI19AwLq6EmYmTtxN0GIhAju.xQvbGnW', 'Prnjavor', 'Bosnia And Herzegovina', 'Carice Milice 44', NULL, '', NULL, NULL, 'Short desc'),
(29, 1, 'markokraljevic@mail.com', NULL, '1333-12-11', '', NULL, '0038761223344', NULL, NULL, NULL, '2018-12-11', 'Marko', 'Kraljevic', '$2a$10$s5/7Oc33jdFbnG5pjks4GeVldVrfX1Qh44Wy5i51nGmyJ3BniDbsa', 'Beograd', 'Serbia', 'Balkanska 12', NULL, '', NULL, NULL, 'dqwdqwdqwdqwdqwdqwdqwdqwdqwd'),
(30, 2, 'luis@figo.com', NULL, '0000-00-00', '', NULL, '003876645', NULL, NULL, NULL, '2018-12-13', 'Luis', 'Figo', '$2a$10$CGSLuTokGyoCXm.c3Zz9jutHEKufNq6r7d4Odq9tSl5fNFn4NkfWi', 'Madrid', 'Spain', 'Hermanos Rodrigez 33', NULL, 'LUISFIGO CO.', NULL, NULL, NULL),
(31, 1, 'milorad@gmail.com', NULL, '1993-01-24', '', NULL, '065434432', NULL, NULL, NULL, '2018-12-15', 'Milorad', 'Dodik', '$2a$10$4xaS3tNtMEj8R6RdAv/R9e8tTAq.iJNtn5XDpklrjKRu.sUWJ36WS', 'Banjaluka', 'Bosnia And Herzegovina', 'Carice Milice 44', NULL, '', NULL, 'Software', 'Milorad Dodik je srpski član Predsjedništva Bosne i Hercegovine. Bivši je predsjednik Republike Srpske i osnivač i predsjednik Saveza nezavisnih socijaldemokrata, trenutno najjače srpske političke stranke u Bosni i Hercegovini.'),
(32, 2, 'novka@gmail.com', NULL, '1970-01-24', '', NULL, '065234567', NULL, NULL, NULL, '2018-12-15', 'Novka ', 'Samac', '$2a$10$Ufhz99HEeoAN4zotzNsBxupNoB9A7to3nOjIBdwGIRNkMFpcdYvqq', '', '', '', NULL, 'NVCompany', NULL, 'Marketing', NULL),
(33, 2, 'a@mail.com', NULL, '0000-00-00', '', NULL, 'a', NULL, NULL, NULL, '2018-12-15', 'a', 'a', '$2a$10$JC5Lqoq/A7hfKRUbgh5q5OE7V31irMezZM75xzkYWwHSCv9ZqFIVW', '', '', '', NULL, 'Firma', NULL, 'Test', NULL),
(34, 2, 'dule@mail.com', NULL, '1968-01-22', '', NULL, '066224137', NULL, NULL, NULL, '2018-12-15', 'Dusko', 'Stupar', '$2a$10$gmT.arWDQwHaWOeJy44Uw.wv1dwIrcsWljrJVVtUjaqJjbsJnzz/K', 'Derventa', 'Bosnia And Herzegovina', '', NULL, 'Imaco', NULL, 'CNC', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_languages`
--

CREATE TABLE `user_languages` (
  `id` int(11) NOT NULL,
  `language_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_account_id` int(11) DEFAULT NULL,
  `language_level` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_languages`
--

INSERT INTO `user_languages` (`id`, `language_name`, `user_account_id`, `language_level`) VALUES
(1, 'Bugarski', 28, 10),
(2, 'Madjarski', 28, 5),
(3, 'Engleski', 31, 9);

-- --------------------------------------------------------

--
-- Table structure for table `user_logs`
--

CREATE TABLE `user_logs` (
  `user_account_id` int(11) NOT NULL,
  `last_login_date` date NOT NULL,
  `last_job_apply_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_types`
--

CREATE TABLE `user_types` (
  `id` int(11) NOT NULL,
  `user_type_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_types`
--

INSERT INTO `user_types` (`id`, `user_type_name`) VALUES
(1, 'personal'),
(2, 'business');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `business_streams`
--
ALTER TABLE `business_streams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_images`
--
ALTER TABLE `company_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `documentation`
--
ALTER TABLE `documentation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `driverlicences`
--
ALTER TABLE `driverlicences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `education_details`
--
ALTER TABLE `education_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `experiences`
--
ALTER TABLE `experiences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `experience_details`
--
ALTER TABLE `experience_details`
  ADD PRIMARY KEY (`user_account_id`,`start_date`,`end_date`);

--
-- Indexes for table `jobjob_post_activitys`
--
ALTER TABLE `jobjob_post_activitys`
  ADD PRIMARY KEY (`user_account_id`,`job_post_id`);

--
-- Indexes for table `job_locations`
--
ALTER TABLE `job_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_posts`
--
ALTER TABLE `job_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_post_skill_sets`
--
ALTER TABLE `job_post_skill_sets`
  ADD PRIMARY KEY (`skill_set_id`,`job_post_id`);

--
-- Indexes for table `job_types`
--
ALTER TABLE `job_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pricings`
--
ALTER TABLE `pricings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seeker_profiles`
--
ALTER TABLE `seeker_profiles`
  ADD PRIMARY KEY (`user_account_id`);

--
-- Indexes for table `seeker_skill_sets`
--
ALTER TABLE `seeker_skill_sets`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `skill_sets`
--
ALTER TABLE `skill_sets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_accounts`
--
ALTER TABLE `user_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profession_type_id` (`profession_type_id`);

--
-- Indexes for table `user_languages`
--
ALTER TABLE `user_languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_logs`
--
ALTER TABLE `user_logs`
  ADD PRIMARY KEY (`user_account_id`);

--
-- Indexes for table `user_types`
--
ALTER TABLE `user_types`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `business_streams`
--
ALTER TABLE `business_streams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `documentation`
--
ALTER TABLE `documentation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `driverlicences`
--
ALTER TABLE `driverlicences`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `education_details`
--
ALTER TABLE `education_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `experiences`
--
ALTER TABLE `experiences`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `job_posts`
--
ALTER TABLE `job_posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `job_types`
--
ALTER TABLE `job_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pricings`
--
ALTER TABLE `pricings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seeker_skill_sets`
--
ALTER TABLE `seeker_skill_sets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user_accounts`
--
ALTER TABLE `user_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `user_languages`
--
ALTER TABLE `user_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_types`
--
ALTER TABLE `user_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
