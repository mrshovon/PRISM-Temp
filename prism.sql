-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 06, 2023 at 12:08 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `prism`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_book_visit`
--

CREATE TABLE `tbl_book_visit` (
  `auth_id` varchar(100) DEFAULT NULL,
  `action_type` enum('insert','update','delete') NOT NULL,
  `action_date` datetime NOT NULL,
  `date` datetime NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `remarks` varchar(150) NOT NULL,
  `email` varchar(100) NOT NULL,
  `property_id` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_book_visit`
--

INSERT INTO `tbl_book_visit` (`auth_id`, `action_type`, `action_date`, `date`, `start_time`, `end_time`, `remarks`, `email`, `property_id`) VALUES
('null', 'update', '2023-04-02 13:29:08', '2023-04-23 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'remarks.....text changed', 'shovon@gmail.com', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_careers`
--

CREATE TABLE `tbl_careers` (
  `maker_id` int(11) NOT NULL,
  `auth_id` varchar(100) DEFAULT NULL,
  `action_type` enum('insert','update','delete') NOT NULL,
  `action_date` datetime NOT NULL,
  `career_id` int(11) NOT NULL,
  `job_title` varchar(100) NOT NULL,
  `job_description` varchar(500) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_careers`
--

INSERT INTO `tbl_careers` (`maker_id`, `auth_id`, `action_type`, `action_date`, `career_id`, `job_title`, `job_description`, `phone`, `email`) VALUES
(1, 'NULL', 'update', '2023-04-02 11:21:18', 1, 'title...changed', 'Job_description.............changed', 'company_phone', 'company@email.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_company_profile`
--

CREATE TABLE `tbl_company_profile` (
  `maker_id` varchar(100) NOT NULL,
  `auth_id` varchar(100) DEFAULT NULL,
  `action_type` enum('insert','update','delete') NOT NULL,
  `action_date` datetime NOT NULL,
  `company_name` varchar(100) NOT NULL,
  `company_vision` varchar(300) NOT NULL,
  `company_address` varchar(100) NOT NULL,
  `company_email` varchar(100) NOT NULL,
  `privecy_policy` varchar(500) NOT NULL,
  `terms_and_condition` varchar(500) NOT NULL,
  `company_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_company_profile`
--

INSERT INTO `tbl_company_profile` (`maker_id`, `auth_id`, `action_type`, `action_date`, `company_name`, `company_vision`, `company_address`, `company_email`, `privecy_policy`, `terms_and_condition`, `company_id`) VALUES
('1730020@iub.edu.bd', '', 'update', '2023-04-02 10:28:13', 'PRISM', 'vision....text', 'address....text', 'email@company.com', 'privacy policy....file link', 'terms and condition....file', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_favourites`
--

CREATE TABLE `tbl_favourites` (
  `auth_id` varchar(100) DEFAULT NULL,
  `action_type` enum('insert','update','delete') NOT NULL,
  `action_date` datetime NOT NULL,
  `creation_date` datetime NOT NULL,
  `email` varchar(100) NOT NULL,
  `property_id` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_favourites`
--

INSERT INTO `tbl_favourites` (`auth_id`, `action_type`, `action_date`, `creation_date`, `email`, `property_id`) VALUES
('null', 'update', '2023-04-02 13:45:23', '2023-04-02 13:45:23', 'shovon@gmail.com', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_homeloan`
--

CREATE TABLE `tbl_homeloan` (
  `auth_id` varchar(100) DEFAULT NULL,
  `action_type` enum('insert','update','delete') NOT NULL,
  `action_date` datetime NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone_number` varchar(14) NOT NULL,
  `email` varchar(100) NOT NULL,
  `property_id` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_homeloan`
--

INSERT INTO `tbl_homeloan` (`auth_id`, `action_type`, `action_date`, `name`, `phone_number`, `email`, `property_id`) VALUES
('null', 'update', '2023-04-02 13:15:38', 'Shovon Rahman', '01546137982', 'shovon@gmail.com', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_inquery`
--

CREATE TABLE `tbl_inquery` (
  `maker_id` varchar(100) DEFAULT NULL,
  `auth_id` varchar(100) DEFAULT NULL,
  `action_type` enum('insert','update','delete') NOT NULL,
  `action_date` datetime NOT NULL,
  `inquery_id` int(11) NOT NULL,
  `customer_name` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `address` varchar(100) NOT NULL,
  `query` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_inquery`
--

INSERT INTO `tbl_inquery` (`maker_id`, `auth_id`, `action_type`, `action_date`, `inquery_id`, `customer_name`, `phone`, `address`, `query`) VALUES
('shovon@gmail.com', 'NULL', 'update', '2023-04-02 11:07:00', 1, 'Shamiul', '01723568944', 'address......text', 'query.....text');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_legal_services`
--

CREATE TABLE `tbl_legal_services` (
  `auth_id` varchar(100) DEFAULT NULL,
  `action_type` enum('insert','update','delete') NOT NULL,
  `action_date` datetime NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone_number` varchar(14) NOT NULL,
  `email` varchar(100) NOT NULL,
  `service_code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_legal_services`
--

INSERT INTO `tbl_legal_services` (`auth_id`, `action_type`, `action_date`, `name`, `phone_number`, `email`, `service_code`) VALUES
('NULL', 'update', '2023-04-02 11:51:58', 'shovon rahman', '02345678999', 'shovon@gmail.com', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_look_type`
--

CREATE TABLE `tbl_look_type` (
  `maker_id` varchar(100) NOT NULL,
  `auth_id` varchar(100) DEFAULT NULL,
  `action_type` enum('insert','update','delete') NOT NULL,
  `action_date` datetime NOT NULL,
  `look_type_id` int(11) NOT NULL,
  `look_type_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_look_type`
--

INSERT INTO `tbl_look_type` (`maker_id`, `auth_id`, `action_type`, `action_date`, `look_type_id`, `look_type_name`) VALUES
('1730020@iub.edu.bd', '1', 'update', '2023-03-22 17:33:16', 1, 'PropertyType'),
('1730020@iub.edu.bd', NULL, 'insert', '2023-03-21 00:00:00', 2, 'PropertySubType'),
('1730020@iub.edu.bd', NULL, 'insert', '2023-03-21 00:00:00', 3, 'Amenities'),
('1730020@iub.edu.bd', NULL, 'insert', '2023-03-21 00:00:00', 4, 'RenovationType'),
('1730020@iub.edu.bd', NULL, 'insert', '2023-03-21 00:00:00', 5, 'Services'),
('1730020@iub.edu.bd', NULL, 'insert', '2023-03-21 00:00:00', 6, 'FollowUs'),
('1730020@iub.edu.bd', NULL, 'insert', '2023-03-21 00:00:00', 7, 'PropertyStatus'),
('1730020@iub.edu.bd', NULL, 'insert', '2023-03-21 00:00:00', 8, 'DescriptiveStaus');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_look_up`
--

CREATE TABLE `tbl_look_up` (
  `maker_id` varchar(100) NOT NULL,
  `auth_id` varchar(100) DEFAULT NULL,
  `action_type` enum('insert','update','delete') NOT NULL,
  `action_date` datetime NOT NULL,
  `look_up_id` int(11) NOT NULL,
  `look_up_name` varchar(50) NOT NULL,
  `short_name` varchar(10) NOT NULL,
  `sort_order` int(11) NOT NULL,
  `look_type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_look_up`
--

INSERT INTO `tbl_look_up` (`maker_id`, `auth_id`, `action_type`, `action_date`, `look_up_id`, `look_up_name`, `short_name`, `sort_order`, `look_type_id`) VALUES
('1730020@iub.edu.bd', 'NULL', 'insert', '2023-03-22 09:31:45', 1, 'Comercial', 'com', 1, 1),
('1730020@iub.edu.bd', 'NULL', 'update', '2023-04-02 09:09:15', 2, 'Amenities', 'Amn', 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_property_info`
--

CREATE TABLE `tbl_property_info` (
  `auth_id` varchar(100) DEFAULT NULL,
  `action_type` enum('insert','update','delete') NOT NULL,
  `action_date` datetime NOT NULL,
  `property_id` varchar(30) NOT NULL,
  `property_name` varchar(30) NOT NULL,
  `description` varchar(5000) NOT NULL,
  `city` varchar(30) NOT NULL,
  `property_area` varchar(30) NOT NULL,
  `property_status` decimal(10,2) NOT NULL,
  `beds` int(11) NOT NULL,
  `baths` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `is_occupied` binary(10) NOT NULL,
  `floor_plan` varchar(500) NOT NULL,
  `phone_number` varchar(14) NOT NULL,
  `property_address` varchar(200) NOT NULL,
  `level` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `purpose_code` int(11) NOT NULL,
  `property_type_code` int(11) NOT NULL,
  `descriptive_status_code` int(11) NOT NULL,
  `amenities_code` int(11) NOT NULL,
  `property_status_code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_property_info`
--

INSERT INTO `tbl_property_info` (`auth_id`, `action_type`, `action_date`, `property_id`, `property_name`, `description`, `city`, `property_area`, `property_status`, `beds`, `baths`, `price`, `is_occupied`, `floor_plan`, `phone_number`, `property_address`, `level`, `email`, `purpose_code`, `property_type_code`, `descriptive_status_code`, `amenities_code`, `property_status_code`) VALUES
('null', 'update', '2023-04-02 12:57:29', '1', 'Gulmohor', 'description.......changed', 'Pabna', 'Dhanmondi', '1350.00', 3, 3, '5500000.00', 0x30000000000000000000, 'plan.....file', '01723568944', 'address....text', 2, 'shovon@gmail.com', 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_renovation`
--

CREATE TABLE `tbl_renovation` (
  `auth_id` varchar(100) DEFAULT NULL,
  `action_type` enum('insert','update','delete') NOT NULL,
  `action_date` datetime NOT NULL,
  `property_size` decimal(5,2) NOT NULL,
  `email` varchar(100) NOT NULL,
  `property_id` varchar(30) NOT NULL,
  `renovation_type_code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_renovation`
--

INSERT INTO `tbl_renovation` (`auth_id`, `action_type`, `action_date`, `property_size`, `email`, `property_id`, `renovation_type_code`) VALUES
('null', 'update', '2023-04-02 13:39:23', '500.00', 'shovon@gmail.com', '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `auth_id` varchar(100) DEFAULT NULL,
  `action_type` enum('insert','update','delete') NOT NULL,
  `action_date` datetime NOT NULL,
  `slider_id` int(11) NOT NULL,
  `img_path` varchar(30) NOT NULL,
  `title` varchar(50) NOT NULL,
  `sub_title` varchar(10) NOT NULL,
  `priority` int(11) NOT NULL,
  `company_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`auth_id`, `action_type`, `action_date`, `slider_id`, `img_path`, `title`, `sub_title`, `priority`, `company_id`) VALUES
('NULL', 'update', '2023-04-02 10:48:05', 1, 'img....path2', 'title', 'sub title', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_info`
--

CREATE TABLE `tbl_user_info` (
  `maker_id` varchar(100) NOT NULL,
  `auth_id` varchar(100) DEFAULT NULL,
  `action_type` enum('insert','update','delete') NOT NULL,
  `action_date` datetime NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(120) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `user_type` enum('administrator','customer') NOT NULL,
  `title` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_user_info`
--

INSERT INTO `tbl_user_info` (`maker_id`, `auth_id`, `action_type`, `action_date`, `name`, `password`, `phone`, `email`, `user_type`, `title`) VALUES
('1', NULL, 'insert', '2023-03-21 14:26:34', 'System Admin', 'admin', '0183949291', '1730020@iub.edu.bd', 'administrator', 'Mr.'),
('joy@gmail.com', NULL, 'insert', '2023-04-05 16:35:39', 'joy', '$2y$10$rkhUFhAcAeRK7BRcBu19v.DPm4.waHt/hn2hnbJFp/YQuiH3ts7f.', '01478965233', 'joy@gmail.com', 'customer', 'Mr.'),
('shovon@gmail.com', NULL, 'update', '2023-04-02 10:07:53', 'Shovon Rahman', 'rahman12345', '01312457896', 'shovon@gmail.com', 'customer', 'Mr.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_book_visit`
--
ALTER TABLE `tbl_book_visit`
  ADD PRIMARY KEY (`date`,`property_id`),
  ADD KEY `tbl_bookvisit_userinfo_fk` (`email`),
  ADD KEY `tbl_bookvisit_propertyinfo_fk` (`property_id`);

--
-- Indexes for table `tbl_careers`
--
ALTER TABLE `tbl_careers`
  ADD PRIMARY KEY (`career_id`),
  ADD KEY `tbl_careers_companyprofile_fk` (`maker_id`);

--
-- Indexes for table `tbl_company_profile`
--
ALTER TABLE `tbl_company_profile`
  ADD PRIMARY KEY (`company_id`),
  ADD KEY `tbl_companyprofile_userinfo_fk` (`maker_id`);

--
-- Indexes for table `tbl_favourites`
--
ALTER TABLE `tbl_favourites`
  ADD PRIMARY KEY (`email`,`property_id`),
  ADD KEY `tbl_favourites_propertyinfo_fk` (`property_id`);

--
-- Indexes for table `tbl_homeloan`
--
ALTER TABLE `tbl_homeloan`
  ADD PRIMARY KEY (`email`,`property_id`),
  ADD KEY `tbl_homeloan_propertyinfo_fk` (`property_id`);

--
-- Indexes for table `tbl_inquery`
--
ALTER TABLE `tbl_inquery`
  ADD PRIMARY KEY (`inquery_id`),
  ADD KEY `tbl_inquery_userinfo_fk` (`maker_id`);

--
-- Indexes for table `tbl_legal_services`
--
ALTER TABLE `tbl_legal_services`
  ADD PRIMARY KEY (`email`,`service_code`),
  ADD KEY `tbl_legalservices_lookup_fk` (`service_code`);

--
-- Indexes for table `tbl_look_type`
--
ALTER TABLE `tbl_look_type`
  ADD PRIMARY KEY (`look_type_id`),
  ADD KEY `tbl_looktype_userinfo_fk` (`maker_id`);

--
-- Indexes for table `tbl_look_up`
--
ALTER TABLE `tbl_look_up`
  ADD PRIMARY KEY (`look_up_id`),
  ADD KEY `tbl_lookup_looktype_fk` (`look_type_id`),
  ADD KEY `tbl_lookup_userinfo_fk` (`maker_id`);

--
-- Indexes for table `tbl_property_info`
--
ALTER TABLE `tbl_property_info`
  ADD PRIMARY KEY (`property_id`),
  ADD KEY `tbl_propertyinfo_lookup_fk` (`email`),
  ADD KEY `tbl_propertyinfo_lookup_purposecode_fk` (`purpose_code`),
  ADD KEY `tbl_propertyinfo_lookup_propertytypcd_fk` (`property_type_code`),
  ADD KEY `tbl_propertyinfo_lookup_descriptivstscd_fk` (`descriptive_status_code`),
  ADD KEY `tbl_propertyinfo_lookup_amenitiescode_fk` (`amenities_code`),
  ADD KEY `tbl_propertyinfo_lookup_propertystscd_fk` (`property_status_code`);

--
-- Indexes for table `tbl_renovation`
--
ALTER TABLE `tbl_renovation`
  ADD PRIMARY KEY (`email`,`property_id`,`renovation_type_code`),
  ADD KEY `tbl_renovation_propertyinfo_fk` (`property_id`),
  ADD KEY `tbl_renovation_lookup_fk` (`renovation_type_code`);

--
-- Indexes for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`slider_id`),
  ADD KEY `tbl_slider_companyprofile_fk` (`company_id`);

--
-- Indexes for table `tbl_user_info`
--
ALTER TABLE `tbl_user_info`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_careers`
--
ALTER TABLE `tbl_careers`
  MODIFY `career_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_inquery`
--
ALTER TABLE `tbl_inquery`
  MODIFY `inquery_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_book_visit`
--
ALTER TABLE `tbl_book_visit`
  ADD CONSTRAINT `tbl_bookvisit_propertyinfo_fk` FOREIGN KEY (`property_id`) REFERENCES `tbl_property_info` (`property_id`),
  ADD CONSTRAINT `tbl_bookvisit_userinfo_fk` FOREIGN KEY (`email`) REFERENCES `tbl_user_info` (`email`);

--
-- Constraints for table `tbl_careers`
--
ALTER TABLE `tbl_careers`
  ADD CONSTRAINT `tbl_careers_companyprofile_fk` FOREIGN KEY (`maker_id`) REFERENCES `tbl_company_profile` (`company_id`);

--
-- Constraints for table `tbl_company_profile`
--
ALTER TABLE `tbl_company_profile`
  ADD CONSTRAINT `tbl_companyprofile_userinfo_fk` FOREIGN KEY (`maker_id`) REFERENCES `tbl_user_info` (`email`);

--
-- Constraints for table `tbl_favourites`
--
ALTER TABLE `tbl_favourites`
  ADD CONSTRAINT `tbl_favourites_propertyinfo_fk` FOREIGN KEY (`property_id`) REFERENCES `tbl_property_info` (`property_id`),
  ADD CONSTRAINT `tbl_favourites_userinfo_fk` FOREIGN KEY (`email`) REFERENCES `tbl_user_info` (`email`);

--
-- Constraints for table `tbl_homeloan`
--
ALTER TABLE `tbl_homeloan`
  ADD CONSTRAINT `tbl_homeloan_propertyinfo_fk` FOREIGN KEY (`property_id`) REFERENCES `tbl_property_info` (`property_id`),
  ADD CONSTRAINT `tbl_homeloan_userinfo_fk` FOREIGN KEY (`email`) REFERENCES `tbl_user_info` (`email`);

--
-- Constraints for table `tbl_inquery`
--
ALTER TABLE `tbl_inquery`
  ADD CONSTRAINT `tbl_inquery_userinfo_fk` FOREIGN KEY (`maker_id`) REFERENCES `tbl_user_info` (`email`);

--
-- Constraints for table `tbl_legal_services`
--
ALTER TABLE `tbl_legal_services`
  ADD CONSTRAINT `tbl_legalservices_lookup_fk` FOREIGN KEY (`service_code`) REFERENCES `tbl_look_up` (`look_up_id`),
  ADD CONSTRAINT `tbl_legalservices_userinfo_fk` FOREIGN KEY (`email`) REFERENCES `tbl_user_info` (`email`);

--
-- Constraints for table `tbl_look_type`
--
ALTER TABLE `tbl_look_type`
  ADD CONSTRAINT `tbl_looktype_userinfo_fk` FOREIGN KEY (`maker_id`) REFERENCES `tbl_user_info` (`email`);

--
-- Constraints for table `tbl_look_up`
--
ALTER TABLE `tbl_look_up`
  ADD CONSTRAINT `tbl_lookup_looktype_fk` FOREIGN KEY (`look_type_id`) REFERENCES `tbl_look_type` (`look_type_id`),
  ADD CONSTRAINT `tbl_lookup_userinfo_fk` FOREIGN KEY (`maker_id`) REFERENCES `tbl_user_info` (`email`);

--
-- Constraints for table `tbl_property_info`
--
ALTER TABLE `tbl_property_info`
  ADD CONSTRAINT `tbl_propertyinfo_lookup_amenitiescode_fk` FOREIGN KEY (`amenities_code`) REFERENCES `tbl_look_up` (`look_up_id`),
  ADD CONSTRAINT `tbl_propertyinfo_lookup_descriptivstscd_fk` FOREIGN KEY (`descriptive_status_code`) REFERENCES `tbl_look_up` (`look_up_id`),
  ADD CONSTRAINT `tbl_propertyinfo_lookup_fk` FOREIGN KEY (`email`) REFERENCES `tbl_user_info` (`email`),
  ADD CONSTRAINT `tbl_propertyinfo_lookup_propertystscd_fk` FOREIGN KEY (`property_status_code`) REFERENCES `tbl_look_up` (`look_up_id`),
  ADD CONSTRAINT `tbl_propertyinfo_lookup_propertytypcd_fk` FOREIGN KEY (`property_type_code`) REFERENCES `tbl_look_up` (`look_up_id`),
  ADD CONSTRAINT `tbl_propertyinfo_lookup_purposecode_fk` FOREIGN KEY (`purpose_code`) REFERENCES `tbl_look_up` (`look_up_id`);

--
-- Constraints for table `tbl_renovation`
--
ALTER TABLE `tbl_renovation`
  ADD CONSTRAINT `tbl_renovation_lookup_fk` FOREIGN KEY (`renovation_type_code`) REFERENCES `tbl_look_up` (`look_up_id`),
  ADD CONSTRAINT `tbl_renovation_propertyinfo_fk` FOREIGN KEY (`property_id`) REFERENCES `tbl_property_info` (`property_id`),
  ADD CONSTRAINT `tbl_renovation_userinfo_fk` FOREIGN KEY (`email`) REFERENCES `tbl_user_info` (`email`);

--
-- Constraints for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD CONSTRAINT `tbl_slider_companyprofile_fk` FOREIGN KEY (`company_id`) REFERENCES `tbl_company_profile` (`company_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
