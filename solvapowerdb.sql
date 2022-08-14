-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 14, 2022 at 07:39 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.1.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `solvapowerdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill_repay_seq`
--

CREATE TABLE `bill_repay_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill_repay_seq`
--

INSERT INTO `bill_repay_seq` (`next_val`) VALUES
(4);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(199) NOT NULL,
  `billerCode` varchar(255) DEFAULT NULL,
  `customerReference` varchar(255) DEFAULT NULL,
  `transactionAmount` varchar(255) DEFAULT NULL,
  `transactionReference` varchar(255) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `transactionDate` date DEFAULT NULL,
  `customerName` varchar(255) DEFAULT NULL,
  `billBalance` varchar(255) DEFAULT NULL,
  `narration` varchar(255) DEFAULT NULL,
  `creditAccount` varchar(255) DEFAULT NULL,
  `customerMobileNumber` varchar(255) DEFAULT NULL,
  `Status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `bill_balance` varchar(255) DEFAULT NULL,
  `biller_code` varchar(255) DEFAULT NULL,
  `credit_account` varchar(255) DEFAULT NULL,
  `customer_mobile_number` varchar(255) DEFAULT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `customer_reference` varchar(255) DEFAULT NULL,
  `transaction_amount` varchar(255) DEFAULT NULL,
  `transaction_date` datetime DEFAULT NULL,
  `transaction_reference` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `billerCode`, `customerReference`, `transactionAmount`, `transactionReference`, `currency`, `transactionDate`, `customerName`, `billBalance`, `narration`, `creditAccount`, `customerMobileNumber`, `Status`, `created_at`, `updated_at`, `bill_balance`, `biller_code`, `credit_account`, `customer_mobile_number`, `customer_name`, `customer_reference`, `transaction_amount`, `transaction_date`, `transaction_reference`) VALUES
(1, NULL, NULL, NULL, NULL, 'KES', NULL, NULL, NULL, 'Utility Bill Payment', NULL, NULL, NULL, '2022-08-14 16:20:41', '0000-00-00 00:00:00', '1000.00', '777777', '1145756190', '0726630811', 'John Doe', '59755c85-c4ba-4f46-9a29-32a6f7ca6816', '200.00', '2022-08-14 19:20:40', '5c5571aa-6658-4c76-b034-914e719f9288'),
(2, NULL, NULL, NULL, NULL, 'KES', NULL, NULL, NULL, 'Utility Bill Payment', NULL, NULL, NULL, '2022-08-14 16:39:12', '0000-00-00 00:00:00', '1000.00', '777777', '1145756190', '0726630811', 'John Doe', '59755c85-c4ba-4f46-9a29-32a6f7ca6816', '200.00', '2022-08-14 19:39:11', '5c5571aa-6658-4c76-b034-914e719f9288');

-- --------------------------------------------------------

--
-- Table structure for table `reversals`
--

CREATE TABLE `reversals` (
  `id` int(199) NOT NULL,
  `billerCode` varchar(255) DEFAULT NULL,
  `customerReference` varchar(255) DEFAULT NULL,
  `transactionAmount` varchar(255) DEFAULT NULL,
  `transactionReference` varchar(255) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `transactionDate` date DEFAULT NULL,
  `customerName` varchar(255) DEFAULT NULL,
  `billBalance` varchar(255) DEFAULT NULL,
  `narration` varchar(255) DEFAULT NULL,
  `creditAccount` varchar(255) DEFAULT NULL,
  `customerMobileNumber` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `reversalReason` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `bill_balance` varchar(255) DEFAULT NULL,
  `biller_code` varchar(255) DEFAULT NULL,
  `credit_account` varchar(255) DEFAULT NULL,
  `customer_mobile_number` varchar(255) DEFAULT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `customer_reference` varchar(255) DEFAULT NULL,
  `reversal_reason` varchar(255) DEFAULT NULL,
  `transaction_amount` varchar(255) DEFAULT NULL,
  `transaction_date` datetime DEFAULT NULL,
  `transaction_reference` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reversals`
--

INSERT INTO `reversals` (`id`, `billerCode`, `customerReference`, `transactionAmount`, `transactionReference`, `currency`, `transactionDate`, `customerName`, `billBalance`, `narration`, `creditAccount`, `customerMobileNumber`, `status`, `reversalReason`, `created_at`, `updated_at`, `bill_balance`, `biller_code`, `credit_account`, `customer_mobile_number`, `customer_name`, `customer_reference`, `reversal_reason`, `transaction_amount`, `transaction_date`, `transaction_reference`) VALUES
(3, NULL, NULL, NULL, NULL, 'KES', NULL, NULL, NULL, 'Utility Bill Payment', NULL, NULL, NULL, NULL, '2022-08-14 16:40:50', '0000-00-00 00:00:00', '1000.00', '777777', '1145756190', '0726630811', 'John Doe', '59755c85-c4ba-4f46-9a29-32a6f7ca6816', 'Over Payment', '200.00', '2022-08-14 19:40:50', '5c5571aa-6658-4c76-b034-914e719f9288');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reversals`
--
ALTER TABLE `reversals`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(199) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `reversals`
--
ALTER TABLE `reversals`
  MODIFY `id` int(199) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
