-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 16-Fev-2018 às 21:00
-- Versão do servidor: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbchamois`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbcoming`
--

CREATE TABLE `tbcoming` (
  `coming_id` int(11) NOT NULL,
  `coming_employee_id` int(11) NOT NULL,
  `coming_in` time NOT NULL,
  `coming_out` time NOT NULL,
  `coming_break1` tinyint(1) NOT NULL,
  `coming_break2` tinyint(1) NOT NULL,
  `coming_break3` tinyint(1) NOT NULL,
  `coming_lunch` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbemployee`
--

CREATE TABLE `tbemployee` (
  `employee_id` int(11) NOT NULL,
  `employee_name` varchar(45) NOT NULL,
  `employee_number` varchar(5) NOT NULL,
  `employee_time` int(1) NOT NULL,
  `employee_permission_id` int(11) NOT NULL,
  `employee_position_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbemployee`
--

INSERT INTO `tbemployee` (`employee_id`, `employee_name`, `employee_number`, `employee_time`, `employee_permission_id`, `employee_position_id`) VALUES
(1, 'JUNIOR C.', '6023', 0, 6, 3),
(2, 'MICHAEL B.', '6058', 0, 6, 2),
(3, 'SANJIV S.', '5985', 0, 2, 2),
(4, 'HARLAJ S.', '1958', 0, 6, 2),
(5, 'KELLY K.', '6088', 0, 5, 1),
(6, 'NICK H.', '5987', 0, 6, 2),
(7, 'EUGENE S.', '6125', 0, 5, 1),
(8, 'DARNELL L.', '6177', 0, 2, 1),
(9, 'GAGANDEEP G.', '6582', 0, 6, 1),
(10, 'CARLOS A.', '6000', 1, 5, 1),
(11, 'DEEDRIN L.', '6339', 0, 2, 1),
(12, 'CASSIO F.', '5932', 0, 6, 1),
(13, 'PLACIDE M.', '5847', 1, 6, 1),
(14, 'ALLAN L.', '5852', 0, 5, 1),
(15, 'MUNYA R.', '6222', 0, 1, 1),
(16, 'GAGANDEEP K.', '6987', 1, 1, 1),
(17, 'ASHELEY D.', '4582', 1, 2, 1),
(18, 'SCOTT G.', '4952', 0, 6, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbfloor`
--

CREATE TABLE `tbfloor` (
  `floor_id` int(11) NOT NULL,
  `floor_employee_id` int(11) NOT NULL,
  `floor_in` int(11) NOT NULL,
  `floor_out` int(11) NOT NULL,
  `floor_break1` tinyint(1) NOT NULL,
  `floor_break2` tinyint(1) NOT NULL,
  `floor_break3` tinyint(1) NOT NULL,
  `floor_lunch` tinyint(1) NOT NULL,
  `floor_tw` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbpermission`
--

CREATE TABLE `tbpermission` (
  `permission_id` int(11) NOT NULL,
  `permission_initial` varchar(4) NOT NULL,
  `permission_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbpermission`
--

INSERT INTO `tbpermission` (`permission_id`, `permission_initial`, `permission_description`) VALUES
(1, 'C', 'Trained in first position and NOT ALLOWED TO DRIVE\r\nWipedown: Trained in wipedown and no licence\r\nPrep: Trained in vacuuming and no licence'),
(2, 'C+', 'Trained in second position and NOT ALLOWED TO DRIVE\r\nWipedown: Trained in wipedown/back seat interiors/no licence\r\nPrep: Trained in vacuuming/pressure washing/no licence'),
(3, 'B', 'Trained in second position for respected end and ALLOWED TO DRIVE EXCLUDING \"High Risk\"\r\nWipedown: Trained in car checking and driving\r\nPrep: Trained in vacuuming and driving'),
(4, 'B+', 'Trained in third position for respected end and ALLOWED TO DRIVE EXCLUDING \"High Risk\"\r\nWipedown: Trained in car checking and back seat interiors and driving\r\nPrep: Trained in vacuuming/pressure washing and driving'),
(5, 'A', 'Trained in all positions and ALLOWED TO DRIVE EXCLUDING \"High Risk\"\r\nWipedown: Interior/wipedown/driving\r\nPrep: Vacuum/Pressure wash/drive on/driving'),
(6, 'A+', 'Trained in all positions and \"High Risk\" driving\r\nWipedown: Interior/wipedown/\"High Risk\" driving\r\nPrep: Vacuum/Pressure wash/drive on/\"High Risk\" driving');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbposition`
--

CREATE TABLE `tbposition` (
  `position_id` int(11) NOT NULL,
  `position_initial` varchar(4) NOT NULL,
  `position_description` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbposition`
--

INSERT INTO `tbposition` (`position_id`, `position_initial`, `position_description`) VALUES
(1, 'SD', 'Standard'),
(2, 'CT', 'Crew treiner'),
(3, 'TL', 'Team Leader'),
(4, 'SV', 'Supervisor'),
(5, 'AM', 'Assistent Manager'),
(6, 'MG', 'Manager');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbschedule`
--

CREATE TABLE `tbschedule` (
  `schedule_id` int(11) NOT NULL,
  `schedule_sector_id` int(11) NOT NULL,
  `schedule_date` date NOT NULL,
  `schedule_employee_id` int(11) NOT NULL,
  `schedule_in` time NOT NULL,
  `schedule_out` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbsector`
--

CREATE TABLE `tbsector` (
  `sector_id` int(11) NOT NULL,
  `sector_initial` varchar(4) NOT NULL,
  `sector_description` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbsector`
--

INSERT INTO `tbsector` (`sector_id`, `sector_initial`, `sector_description`) VALUES
(1, 'PR', 'Prep'),
(2, 'WD', 'Wipedown'),
(3, 'CS', 'Cash & Sales'),
(4, 'DT', 'Detail');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbtrained`
--

CREATE TABLE `tbtrained` (
  `trained_id` int(11) NOT NULL,
  `trained_emplyee_id` int(11) NOT NULL,
  `trained_sector_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbcoming`
--
ALTER TABLE `tbcoming`
  ADD PRIMARY KEY (`coming_id`),
  ADD KEY `coming_employee_id` (`coming_employee_id`);

--
-- Indexes for table `tbemployee`
--
ALTER TABLE `tbemployee`
  ADD PRIMARY KEY (`employee_id`),
  ADD KEY `permission_id` (`employee_permission_id`),
  ADD KEY `employee_position_id` (`employee_position_id`);

--
-- Indexes for table `tbfloor`
--
ALTER TABLE `tbfloor`
  ADD PRIMARY KEY (`floor_id`),
  ADD KEY `floor_employee_id` (`floor_employee_id`);

--
-- Indexes for table `tbpermission`
--
ALTER TABLE `tbpermission`
  ADD PRIMARY KEY (`permission_id`);

--
-- Indexes for table `tbposition`
--
ALTER TABLE `tbposition`
  ADD PRIMARY KEY (`position_id`);

--
-- Indexes for table `tbschedule`
--
ALTER TABLE `tbschedule`
  ADD PRIMARY KEY (`schedule_id`),
  ADD KEY `schedule_sector_id` (`schedule_sector_id`);

--
-- Indexes for table `tbsector`
--
ALTER TABLE `tbsector`
  ADD PRIMARY KEY (`sector_id`);

--
-- Indexes for table `tbtrained`
--
ALTER TABLE `tbtrained`
  ADD PRIMARY KEY (`trained_id`),
  ADD KEY `trained_emplyee_id` (`trained_emplyee_id`),
  ADD KEY `trained_sector_id` (`trained_sector_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbcoming`
--
ALTER TABLE `tbcoming`
  MODIFY `coming_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbemployee`
--
ALTER TABLE `tbemployee`
  MODIFY `employee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbfloor`
--
ALTER TABLE `tbfloor`
  MODIFY `floor_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbpermission`
--
ALTER TABLE `tbpermission`
  MODIFY `permission_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbposition`
--
ALTER TABLE `tbposition`
  MODIFY `position_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbschedule`
--
ALTER TABLE `tbschedule`
  MODIFY `schedule_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbsector`
--
ALTER TABLE `tbsector`
  MODIFY `sector_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbtrained`
--
ALTER TABLE `tbtrained`
  MODIFY `trained_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `tbcoming`
--
ALTER TABLE `tbcoming`
  ADD CONSTRAINT `tbcoming_ibfk_1` FOREIGN KEY (`coming_employee_id`) REFERENCES `tbemployee` (`employee_id`);

--
-- Limitadores para a tabela `tbemployee`
--
ALTER TABLE `tbemployee`
  ADD CONSTRAINT `tbemployee_ibfk_2` FOREIGN KEY (`employee_permission_id`) REFERENCES `tbpermission` (`permission_id`),
  ADD CONSTRAINT `tbemployee_ibfk_3` FOREIGN KEY (`employee_position_id`) REFERENCES `tbposition` (`position_id`);

--
-- Limitadores para a tabela `tbfloor`
--
ALTER TABLE `tbfloor`
  ADD CONSTRAINT `tbfloor_ibfk_1` FOREIGN KEY (`floor_employee_id`) REFERENCES `tbemployee` (`employee_id`);

--
-- Limitadores para a tabela `tbschedule`
--
ALTER TABLE `tbschedule`
  ADD CONSTRAINT `tbschedule_ibfk_1` FOREIGN KEY (`schedule_sector_id`) REFERENCES `tbsector` (`sector_id`);

--
-- Limitadores para a tabela `tbtrained`
--
ALTER TABLE `tbtrained`
  ADD CONSTRAINT `tbtrained_ibfk_1` FOREIGN KEY (`trained_emplyee_id`) REFERENCES `tbemployee` (`employee_id`),
  ADD CONSTRAINT `tbtrained_ibfk_2` FOREIGN KEY (`trained_sector_id`) REFERENCES `tbsector` (`sector_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
