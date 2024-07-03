-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 29, 2024 at 06:53 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mall_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `email` varchar(30) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `first_name`, `last_name`, `email`, `phone_number`) VALUES
(1, 'yennefer', 'jane', 'janeyen@gmail.com', '00292877296'),
(2, 'lucas', 'sinclair', 'rubyna@gmail.com', '039256772888'),
(3, 'daphne', 'josan', 'josan@gmail.com', '09800970243276'),
(4, 'anushay', 'cheryl', 'anush@gmail.com', '0687907097090'),
(5, 'micheal', 'george', 'feriha688@gmail.com', '378732187917'),
(6, 'stephanie', 'juliet', 'juliet@gmail.com', '098685458711'),
(7, 'bobby', 'brown', 'bobby77@gmail.com', '97426163131649');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `employee_id` int(11) NOT NULL,
  `employee_name` varchar(20) NOT NULL,
  `department` varchar(20) NOT NULL,
  `hire_date` date DEFAULT NULL,
  `salary` decimal(10,2) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`employee_id`, `employee_name`, `department`, `hire_date`, `salary`, `store_id`) VALUES
(1, 'Jessica', 'Clothes', '2020-05-15', 9000.10, 1),
(2, 'Dustin', 'Jewellery', '2022-10-20', 7000.20, 2),
(3, 'Anastasia', 'Shoes', '2022-07-03', 5000.50, 3),
(4, 'Hopper', 'Perfumes', '2021-11-10', 6000.90, 4),
(5, 'Maxine', 'Accessories', '2024-09-30', 8000.00, 5);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(40) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `category` varchar(30) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `store_id`, `category`, `price`, `description`) VALUES
(1, 'Clothes', 1, 'Dresses - casual, formal, maxi', 9000.55, 'From casual sundresses to elegant evening gowns, there is a dress for every taste and body type.'),
(2, 'Jewellery', 2, 'Jewellery - Rings, earings, ne', 700.90, 'From shimmering diamond earrings to intricate metalwork necklaces, jewelry is a timeless way to express individual style and personality.'),
(3, 'Shoes', 3, 'Shoes - Athletic,casual,sandal', 1110.10, 'Stylish and comfortable shoes perfect for any occasion.'),
(4, 'Perfumes', 4, 'Beauty & Fragrance', 5200.90, 'Our perfumes are scented liquids made with a mixture off ragrant essential oils, aroma compounds, and solvents, used to enhance one\'s personal scent.'),
(5, 'Accessories', 5, 'Handbags and purses, Hats and ', 5400.10, 'including items such as belts, scarves, ties, bowties,scrunchies.They add personality and style to any look..');

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `store_id` int(11) NOT NULL,
  `store_name` varchar(30) NOT NULL,
  `store_category` varchar(30) NOT NULL,
  `manager_name` varchar(30) DEFAULT NULL,
  `contact_number` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`store_id`, `store_name`, `store_category`, `manager_name`, `contact_number`, `email`) VALUES
(1, 'ChristianDior', 'Clothes', 'Emilysmith', '003464267899', 'smith33@gmail.com'),
(2, 'Bulgari', 'Jewellery', 'Rubyjane', '02376367896', 'rubyjane@gmail.com'),
(3, 'Louisvuitton', 'Shoes', 'Williambyers', '02836327527', 'byerswill@gmail.com'),
(4, 'Channel', 'Perfumes', 'Steveharry', '0024377298936', 'steveharry66@gmail.com'),
(5, 'Valentino', 'Accesssories', 'Joycewheeler', '00642898751', 'wheelerjoy@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`employee_id`),
  ADD KEY `store_id` (`store_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `store_id` (`store_id`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`store_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `employee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `store_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`store_id`) REFERENCES `stores` (`store_id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`store_id`) REFERENCES `stores` (`store_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
