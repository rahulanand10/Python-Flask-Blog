-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 06, 2020 at 11:31 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codingblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `sno` int(50) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone_num` varchar(20) NOT NULL,
  `mes` text NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`sno`, `name`, `email`, `phone_num`, `mes`, `date`) VALUES
(1, 'first post', 'firstpost@gmail.com', '1234567787', 'first post', '2020-07-02 21:48:32'),
(2, 'RAHUL ANAND', '1706249@kiit.ac.in', '07765829328', 'hi', '2020-07-02 22:09:32'),
(3, 'RAHUL ANAND', '1706249@kiit.ac.in', '7765829328', 'FOR MAIL SERVICES', '2020-07-03 13:26:01'),
(4, 'RAHUL ANAND', '1706249@kiit.ac.in', '7765829328', 'FOR MAIL SERVICES', '2020-07-03 13:28:01'),
(5, 'RAHUL ANAND', '1706249@kiit.ac.in', '7765829328', 'mail', '2020-07-03 13:31:55'),
(6, 'RAHUL ANAND', '1706249@kiit.ac.in', '07765829328', 'hmm', '2020-07-03 15:45:24'),
(7, 'RAHUL ANAND', '1706249@kiit.ac.in', '07765829328', 'Yeah Its me', '2020-07-03 15:50:48'),
(8, 'RAHUL ANAND', '1706249@kiit.ac.in', '07765829328', 'Yeah Its me', '2020-07-03 15:52:44');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(50) NOT NULL,
  `title` text NOT NULL,
  `tagline` text NOT NULL,
  `slug` varchar(30) NOT NULL,
  `content` text NOT NULL,
  `img_file` varchar(20) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `tagline`, `slug`, `content`, `img_file`, `date`) VALUES
(1, 'This is my first post\'s title.', 'This is sample post', 'first-post', 'This is my first post and I am very excited about my blog and flask micro framework.', 'home-bg.jpg', '2020-07-03 16:40:03'),
(2, 'This is second post.', 'Coolest post ever.', 'second-post', 'It is a text-based template language and thus can be used to generate any markup as well as source code. The Jinja template engine allows customization of tags, filters, tests, and globals. Also, unlike the Django template engine, Jinja allows the template designer to call functions with arguments on objects.', 'about-bg.jpg', '2020-07-03 17:50:06'),
(3, 'This is third-post', 'Unicode', 'third-post', 'Jinja is using Unicode internally which means that you have to pass Unicode objects to the render function or bytestrings that only consist of ASCII characters. Additionally newlines are normalized to one end of line sequence which is per default UNIX style (\\n).\r\n\r\nPython 2.x supports two ways of representing string objects. One is the str type and the other is the unicode type, both of which extend a type called basestring. Unfortunately the default is str which should not be used to store text based information unless only ASCII characters are used. With Python 2.6 it is possible to make unicode the default on a per module level and with Python 3 it will be the default.', 'img4.png', '2020-07-03 18:14:06'),
(4, 'This is fourth post', 'High level API', 'fourth-post', 'The high-level API is the API you will use in the application to load and render Jinja templates. The Low Level API on the other side is only useful if you want to dig deeper into Jinja or develop extensions.\r\n\r\nclass jinja2.Environment([options])\r\nThe core component of Jinja is the Environment. It contains important shared variables like configuration, filters, tests, globals and others. Instances of this class may be modified if they are not shared and if no template was loaded so far. Modifications on environments after the first template was loaded will lead to surprising effects and undefined behavior.', 'img4.png', '2020-07-03 18:14:06'),
(5, 'This is fifth post', 'Definition of Flask', 'fifth-post', 'Welcome to Flask’s documentation. Get started with Installation and then get an overview with the Quickstart. There is also a more detailed Tutorial that shows how to create a small but complete application with Flask. Common patterns are described in the Patterns for Flask section. The rest of the docs describe each component of Flask in detail, with a full reference in the API section.', 'img6.png', '2020-07-03 18:14:06'),
(6, 'This is sixth post', 'Testing Flask APPLICATION', 'sixth-post', 'The origin of this quote is unknown and while it is not entirely correct, it is also not far from the truth. Untested applications make it hard to improve existing code and developers of untested applications tend to become pretty paranoid. If an application has automated tests, you can safely make changes and instantly know if anything breaks.\r\n\r\nFlask provides a way to test your application by exposing the Werkzeug test Client and handling the context locals for you. You can then use that with your favourite testing solution.\r\n\r\nIn this documentation we will use the pytest package as the base framework for our tests. You can install it with pip, like so:\r\n\r\n$ pip install pytest', 'new_img.png', '2020-07-04 23:28:45'),
(7, 'List Comprehension', 'This is List Com.', 'Much-needed-post', 'A list comprehension is a syntactic construct available in some programming languages for creating a list based on existing lists. It follows the form of the mathematical set-builder notation as distinct from the use of map and filter functions', 'img.png', '2020-07-04 22:41:31'),
(8, 'Dictionary Comprehensins', 'This is Dict Com.', 'Much-needed-dict-post', '', 'img2.png', '2020-07-04 23:25:47'),
(9, 'Ninth Post', 'Nith post coming up guys', 'ninth-post', 'DescriptionIn publishing, art, and communication, content is the information and experiences that are directed toward an end-user or audience. Content is \"something that is to be expressed through some medium, as speech, writing or any of various arts\". ', 'post-bg.jpg', '2020-07-06 14:37:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `sno` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
