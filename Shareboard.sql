-- phpMyAdmin SQL Dump
-- version 4.4.15.9
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 28, 2017 at 02:48 PM
-- Server version: 5.6.35
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Shareboard`
--

-- --------------------------------------------------------

--
-- Table structure for table `shares`
--

CREATE TABLE IF NOT EXISTS `shares` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `link` varchar(255) NOT NULL,
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shares`
--

INSERT INTO `shares` (`id`, `user_id`, `title`, `body`, `link`, `create_date`) VALUES
(1, 1, 'shore one', ' Integer vestibulum ipsum eu ipsum lobortis, et vestibulum dolor cursus. Nulla leo eros, gravida vel sapien id, rutrum volutpat mi. Morbi feugiat magna leo, vitae malesuada elit congue eget. Cras a erat eu turpis lacinia tempor. Duis bibendum felis vitae neque rutrum, in aliquam justo gravida. Mauris id feugiat augue. Quisque pretium porttitor ullamcorper. Praesent vulputate eleifend erat, vel vestibulum lacus varius in. Vivamus venenatis risus id aliquet sollicitudin. Donec ornare est a orci fermentum dignissim. Fusce ultrices sapien et sapien dictum pellentesque. Donec eu odio suscipit, facilisis velit eu, accumsan tortor. Maecenas sit amet vestibulum diam.', 'http://www.google.com', '2017-08-06 19:48:00'),
(2, 2, 'share two', 'Integer vestibulum ipsum eu ipsum lobortis, et vestibulum dolor cursus. Nulla leo eros, gravida vel sapien id, rutrum volutpat mi. Morbi feugiat magna leo, vitae malesuada elit congue eget. Cras a erat eu turpis lacinia tempor. Duis bibendum felis vitae neque rutrum, in aliquam justo gravida. Mauris id feugiat augue. Quisque pretium porttitor ullamcorper. Praesent vulputate eleifend erat, vel vestibulum lacus varius in. Vivamus venenatis risus id aliquet sollicitudin. Donec ornare est a orci fermentum dignissim. Fusce ultrices sapien et sapien dictum pellentesque. Donec eu odio suscipit, facilisis velit eu, accumsan tortor. Maecenas sit amet vestibulum diam.', 'http://www.google.com', '2017-08-06 19:48:00'),
(3, 1, 'proba', 'proba', 'http://youtube.com', '2017-08-07 13:00:43');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `register_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `register_date`) VALUES
(9, 'sinisa', 'sinisa@sinisa.com', 'dd5501ca0d6403a5510aae13235bd345', '2017-08-07 13:42:24'),
(10, 'pera', 'pera@pera.com', 'd8795f0d07280328f80e59b1e8414c49', '2017-09-24 18:42:48'),
(11, 'sinisa', 'sinisa@mail.com', 'dd5501ca0d6403a5510aae13235bd345', '2017-09-27 18:40:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `shares`
--
ALTER TABLE `shares`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `shares`
--
ALTER TABLE `shares`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
