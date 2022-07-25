-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 25, 2022 at 07:48 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `book_name` varchar(100) NOT NULL,
  `author` varchar(100) NOT NULL,
  `borrowed_by` varchar(100) NOT NULL,
  `borow_date` varchar(100) NOT NULL,
  `return_date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `book_name`, `author`, `borrowed_by`, `borow_date`, `return_date`) VALUES
(1, 'Clean Code', 'Robert C. Martin', 'Moiz', '12 Jan 2022', '12 Feb 2022'),
(2, 'Introduction to Algorithms', 'homas H. Cormen', 'Haris', '15 Feb 2022', '2 Mar 2022'),
(3, 'Structure and Interpretation', 'Harold Abelson', 'Asad', '22 Feb 2022', '13 Mar 2022'),
(4, 'The Clean Coder', 'Robert C. Martin', 'Moiz', '30 Mar 2022', '17 Apr 2022'),
(5, 'Code Complete', 'Steve McConnell', '', '', ''),
(6, 'Design Patterns', 'Erich Gamma', 'Saad', '23 Apr 2022', '20 May 2022'),
(7, 'The Pragmatic Programmer', 'Andrew Hunt', 'Haris', '12 May 2022', '29 May 2022'),
(8, 'Head First Design Patterns', 'Eric Freeman', '', '', ''),
(9, 'Refactoring', 'Martin Fowler', 'Ali', '26 Jun 2022', '13 Jul 2022'),
(10, 'The Art of Computer Programming', 'Donald E. Knuth', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `first_name`, `last_name`) VALUES
(1, 'Saad', 'Gaba'),
(2, 'Moiz', 'Khan'),
(3, 'Asad', 'Malik'),
(4, 'Ali', 'Khan'),
(5, 'Zaid', 'Haris');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
