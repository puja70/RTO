-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 05, 2023 at 06:22 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rto_office`
--

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `name` varchar(20) NOT NULL,
  `id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO city (name, id) VALUES
                                      ('Mumbai', 1),
                                      ('Pune', 2),
                                      ('Nagpur', 3),
                                      ('Nashik', 4),
                                      ('Thane', 5),
                                      ('Aurangabad', 6),
                                      ('Solapur', 7),
                                      ('Kolhapur', 8),
                                      ('Amravati', 9),
                                      ('Nanded', 10),
                                      ('Sangli', 11),
                                      ('Jalgaon', 12),
                                      ('Akola', 13),
                                      ('Latur', 14),
                                      ('Dhule', 15),
                                      ('Ahmednagar', 16),
                                      ('Chandrapur', 17),
                                      ('Parbhani', 18),
                                      ('Ichalkaranji', 19),
                                      ('Jalna', 20),
                                      ('Malegaon', 21),
                                      ('Bhiwandi', 22),
                                      ('Panvel', 23),
                                      ('Mira-Bhayandar', 24),
                                      ('Ulhasnagar', 25),
                                      ('Ambarnath', 26),
                                      ('Kalyan-Dombivli', 27),
                                      ('Navi Mumbai', 28),
                                      ('Vasai-Virar', 29),
                                      ('Bhusawal', 30),
                                      ('Satara', 31),
                                      ('Beed', 32),
                                      ('Baramati', 33),
                                      ('Osmanabad', 34),
                                      ('Wardha', 35),
                                      ('Yavatmal', 36),
                                      ('Hingoli', 37),
                                      ('Ratnagiri', 38),
                                      ('Gadchiroli', 39),
                                      ('Gondia', 40);
--
-- Dumping data for table `city`
--

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `number_plate` varchar(50) NOT NULL,
  `owner_name` varchar(50) NOT NULL,
  `vehicle_name` varchar(50) NOT NULL,
  `vehicle_color` varchar(50) NOT NULL,
  `vehicle_type` varchar(50) NOT NULL,
  `fines` double NOT NULL,
  `insurance` varchar(20) NOT NULL,
  `puc` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,


  `owner_phone_no` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`number_plate`, `owner_name`, `vehicle_name`, `vehicle_color`, `vehicle_type`, `fines`, `insurance`, `puc`, `password`, `owner_phone_no`) VALUES
('GJ 8 NI 0001', 'nishit', 'Range Rover sport', 'white', 'car', 0, '14/07/2025', '5/08/2023', 'Nishit1234$', '1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`number_plate`);
COMMIT;

--//changes

 CREATE TABLE card (
    ->     card_no VARCHAR(50),
    ->     expiry_date VARCHAR(50),
    ->     cvv CHAR(3) PRIMARY KEY,
    ->     cardholder_name VARCHAR(50)
    -> );


mysql> insert into card values ('1234567812346756','02/12/24',123,'sweety');
Query OK, 1 row affected (0.02 sec)

mysql> insert into card values ('1234567812346757','02/12/24',234,'aashi');
Query OK, 1 row affected (0.00 sec)

mysql> insert into card values ('1234567812346758','02/12/24',345,'nidhi');
Query OK, 1 row affected (0.01 sec)

mysql> insert into card values ('1234567812346759','02/12/24',456,'sushmita');
Query OK, 1 row affected (0.01 sec)

mysql> insert into card values ('1234567812346760','02/12/24',567,'puja');
Query OK, 1 row affected (0.01 sec)


--admin
create table admin(name varchar(50),password varchar(50));


 create table kyc(
    -> aadhar_no varchar(50) primary key,
    -> licence_no varchar(50),
    -> isverified int,
    -> name varchar(50));


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
