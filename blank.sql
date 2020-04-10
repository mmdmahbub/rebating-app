-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 18, 2018 at 09:24 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `armybd`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_details`
--

CREATE TABLE `admin_details` (
  `id` int(11) NOT NULL,
  `admin_pic` varchar(255) NOT NULL DEFAULT 'default.png',
  `occupation` varchar(255) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `district` varchar(255) NOT NULL,
  `post_code` varchar(255) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `instagram` varchar(255) NOT NULL,
  `twitter` varchar(255) NOT NULL,
  `rel_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `admin_role`
--

CREATE TABLE `admin_role` (
  `role_name` varchar(255) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_role`
--

INSERT INTO `admin_role` (`role_name`, `role_id`) VALUES
('super_admin', 1),
('admin', 2);

-- --------------------------------------------------------

--
-- Table structure for table `apr`
--

CREATE TABLE `apr` (
  `id` int(255) NOT NULL,
  `year` int(4) NOT NULL,
  `gradings` varchar(100) NOT NULL,
  `mark` int(3) NOT NULL,
  `rel_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `army_training`
--

CREATE TABLE `army_training` (
  `id` int(11) NOT NULL,
  `course` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `result` varchar(255) NOT NULL,
  `name_of_ins` varchar(255) NOT NULL,
  `rel_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `army_users`
--

CREATE TABLE `army_users` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `picture` varchar(255) NOT NULL DEFAULT 'default.jpg',
  `user_email` varchar(255) NOT NULL,
  `user_pass` varchar(255) NOT NULL,
  `hash` varchar(255) NOT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT '0',
  `user_role` varchar(255) NOT NULL,
  `occupation` varchar(255) NOT NULL,
  `company` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `district` varchar(255) NOT NULL,
  `post_code` varchar(255) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `twitter` varchar(255) NOT NULL,
  `instagram` varchar(255) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `army_users`
--

INSERT INTO `army_users` (`id`, `full_name`, `user_name`, `picture`, `user_email`, `user_pass`, `hash`, `is_active`, `user_role`, `occupation`, `company`, `phone_number`, `address`, `city`, `district`, `post_code`, `facebook`, `twitter`, `instagram`, `created`) VALUES
(2, 'Mohammod Akbor', 'akbor', 'default.jpg', 'mohammodakbar@gmail.com', 'e10adc3949ba59abbe56e057f20f883e ', '', 1, 'super_admin', '', '', '', '', '', '', '', '', '', '', '2018-10-03 18:51:53'),
(3, 'Mahbub Ansary', 'mmdmahbub', 'default.jpg', 'mdmahbub903@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', 1, 'super_admin', 'Force', 'Bangladesh Army', '01723258468', 'Main Streat 17/1', 'Sylhet', 'Sylhet', '3100', 'facebook/mmdmahbub', 'twitter.com/mmdmahbub', 'instagram.com/mmdmahbub', '2018-10-20 18:40:20'),
(18, '', 'mohammod Akbar hussain', 'default.jpg', 'mohammod@gmail.com', 'b8f831b65b3dcfca3e478605bb879e32', '', 1, 'admin', '', '', '', '', '', '', '', '', '', '', '2018-11-01 00:01:48');

-- --------------------------------------------------------

--
-- Table structure for table `basic_info`
--

CREATE TABLE `basic_info` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `birthday` varchar(255) NOT NULL,
  `army` varchar(255) NOT NULL,
  `rank` varchar(255) NOT NULL,
  `trade` varchar(255) NOT NULL,
  `height` varchar(255) NOT NULL,
  `weight` varchar(255) NOT NULL,
  `blood_group` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `driving_license` varchar(255) NOT NULL,
  `nid` varchar(255) NOT NULL,
  `passport` varchar(255) NOT NULL,
  `perm_village` varchar(255) NOT NULL,
  `perm_poffice` varchar(255) NOT NULL,
  `perm_pstation` varchar(255) NOT NULL,
  `perm_district` varchar(255) NOT NULL,
  `pres_village` varchar(255) NOT NULL,
  `pres_poffice` varchar(255) NOT NULL,
  `pres_pstation` varchar(255) NOT NULL,
  `pres_district` varchar(255) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `date_of_enrollment` varchar(255) NOT NULL,
  `dop_rank` varchar(255) NOT NULL,
  `ueb` varchar(255) NOT NULL,
  `job_condition` varchar(255) NOT NULL,
  `service_age` varchar(255) NOT NULL,
  `remaining_service` varchar(255) NOT NULL,
  `medical_cat` varchar(255) NOT NULL,
  `date_of_join` varchar(255) NOT NULL,
  `retirement_date` varchar(255) NOT NULL,
  `snk` varchar(255) NOT NULL,
  `lpcl` varchar(255) NOT NULL,
  `spl` varchar(255) NOT NULL,
  `sgt` varchar(255) NOT NULL,
  `wo` varchar(255) NOT NULL,
  `swo` varchar(255) NOT NULL,
  `marital_status` varchar(255) NOT NULL,
  `child` varchar(255) NOT NULL,
  `personal_problems` varchar(255) NOT NULL,
  `hobby` varchar(255) NOT NULL,
  `signature` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `civil_basic_info`
--

CREATE TABLE `civil_basic_info` (
  `id` int(255) NOT NULL,
  `cs_no` varchar(255) NOT NULL,
  `desgination` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `birthday` varchar(255) NOT NULL,
  `height` varchar(255) NOT NULL,
  `weight` varchar(255) NOT NULL,
  `blood_group` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `driving_license` varchar(255) NOT NULL,
  `nid` varchar(255) NOT NULL,
  `passport` varchar(255) NOT NULL,
  `perm_village` varchar(255) NOT NULL,
  `perm_poffice` varchar(255) NOT NULL,
  `perm_pstation` varchar(255) NOT NULL,
  `perm_district` varchar(255) NOT NULL,
  `pres_village` varchar(255) NOT NULL,
  `pres_poffice` varchar(255) NOT NULL,
  `pres_pstation` varchar(255) NOT NULL,
  `pres_district` varchar(255) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `date_of_enrollment` varchar(255) NOT NULL,
  `ueb` varchar(255) NOT NULL,
  `service_age` varchar(255) NOT NULL,
  `date_of_join` varchar(255) NOT NULL,
  `medical_cat` varchar(255) NOT NULL,
  `marital_status` varchar(255) NOT NULL,
  `child` varchar(255) NOT NULL,
  `personal_problems` varchar(255) NOT NULL,
  `hobby` varchar(255) NOT NULL,
  `signature` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `civil_education`
--

CREATE TABLE `civil_education` (
  `id` int(11) NOT NULL,
  `exam` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `division` varchar(255) NOT NULL,
  `gpa` varchar(255) NOT NULL,
  `rel_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `close_relatives`
--

CREATE TABLE `close_relatives` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `relation` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `rel_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `device_imei`
--

CREATE TABLE `device_imei` (
  `id` int(11) NOT NULL,
  `device_name` varchar(255) NOT NULL,
  `imei` varchar(255) NOT NULL,
  `rel_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

CREATE TABLE `games` (
  `id` int(11) NOT NULL,
  `name_of_games` varchar(255) NOT NULL,
  `rel_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gsbp`
--

CREATE TABLE `gsbp` (
  `id` int(11) NOT NULL,
  `step` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `rmks` varchar(255) NOT NULL,
  `rel_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `nok`
--

CREATE TABLE `nok` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `relations` varchar(255) NOT NULL,
  `percent` varchar(255) NOT NULL,
  `rel_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `previous_jobs`
--

CREATE TABLE `previous_jobs` (
  `id` int(255) NOT NULL,
  `p_jobs` varchar(255) NOT NULL,
  `p_from` varchar(255) NOT NULL,
  `p_to` varchar(255) NOT NULL,
  `p_app` varchar(255) NOT NULL,
  `rel_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `previous_unit`
--

CREATE TABLE `previous_unit` (
  `id` int(11) NOT NULL,
  `p_unit` varchar(255) NOT NULL,
  `p_from` varchar(255) NOT NULL,
  `p_to` varchar(255) NOT NULL,
  `p_app` varchar(255) NOT NULL,
  `rel_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `punishment_description`
--

CREATE TABLE `punishment_description` (
  `id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `rel_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `social_id`
--

CREATE TABLE `social_id` (
  `id` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `rel_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `traveling`
--

CREATE TABLE `traveling` (
  `id` int(255) NOT NULL,
  `t_from` varchar(255) NOT NULL,
  `t_to` varchar(255) NOT NULL,
  `t_country` varchar(255) NOT NULL,
  `rel_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `un_mission`
--

CREATE TABLE `un_mission` (
  `id` int(11) NOT NULL,
  `unm_from` varchar(255) NOT NULL,
  `unm_to` varchar(255) NOT NULL,
  `unm_country` varchar(255) NOT NULL,
  `rel_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_details`
--
ALTER TABLE `admin_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `apr`
--
ALTER TABLE `apr`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `army_training`
--
ALTER TABLE `army_training`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `army_users`
--
ALTER TABLE `army_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `basic_info`
--
ALTER TABLE `basic_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `civil_basic_info`
--
ALTER TABLE `civil_basic_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `civil_education`
--
ALTER TABLE `civil_education`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `close_relatives`
--
ALTER TABLE `close_relatives`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `device_imei`
--
ALTER TABLE `device_imei`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gsbp`
--
ALTER TABLE `gsbp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nok`
--
ALTER TABLE `nok`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `previous_jobs`
--
ALTER TABLE `previous_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `previous_unit`
--
ALTER TABLE `previous_unit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `punishment_description`
--
ALTER TABLE `punishment_description`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_id`
--
ALTER TABLE `social_id`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `traveling`
--
ALTER TABLE `traveling`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `un_mission`
--
ALTER TABLE `un_mission`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_details`
--
ALTER TABLE `admin_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `apr`
--
ALTER TABLE `apr`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `army_training`
--
ALTER TABLE `army_training`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `army_users`
--
ALTER TABLE `army_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `basic_info`
--
ALTER TABLE `basic_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `civil_basic_info`
--
ALTER TABLE `civil_basic_info`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `civil_education`
--
ALTER TABLE `civil_education`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `close_relatives`
--
ALTER TABLE `close_relatives`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `device_imei`
--
ALTER TABLE `device_imei`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `games`
--
ALTER TABLE `games`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `gsbp`
--
ALTER TABLE `gsbp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `nok`
--
ALTER TABLE `nok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `previous_jobs`
--
ALTER TABLE `previous_jobs`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `previous_unit`
--
ALTER TABLE `previous_unit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `punishment_description`
--
ALTER TABLE `punishment_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `social_id`
--
ALTER TABLE `social_id`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `traveling`
--
ALTER TABLE `traveling`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `un_mission`
--
ALTER TABLE `un_mission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
