-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 23, 2014 at 07:36 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `kewl`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `access` int(4) NOT NULL DEFAULT '0',
  `is_published` tinyint(1) NOT NULL DEFAULT '1',
  `in_menu` tinyint(1) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `category_id`, `user_id`, `title`, `body`, `access`, `is_published`, `in_menu`, `order`, `created`) VALUES
(1, 4, 3, 'Services', '<p>Lorem ipsum dolor \r\nsit amet, consectetur adipiscing elit. Integer euismod eu erat eu varius. Fusce tempor at urna a congue. Nullam nec ipsum elit. Aliquam erat volutpat. Class aptent taciti sociosqu \r\nad litora torquent per conubia nostra, per inceptos himenaeos. Ut feugiat tortor nisi, non viverra ipsum adipiscing accumsan. Vivamus pulvinar dignissim velit, quis faucibus orci \r\naliquet vel. Suspendisse in elit ac felis blandit suscipit. Duis sagittis dui nunc, vitae tempus dui sodales vitae. Ut nulla neque, porta nec ipsum id, scelerisque rutrum velit. \r\nMorbi quis orci non metus vestibulum rhoncus sed ac arcu.\r\n</p>\r\n<p>\r\nEtiam quis sapien tellus. Aenean at nulla commodo quam eleifend consectetur. Integer nec tempus erat. \r\nInteger tincidunt vitae ligula nec eleifend. Aliquam malesuada nisi vel purus hendrerit, eu faucibus urna dignissim. Etiam et justo id turpis porttitor sodales. Aliquam commodo \r\nrutrum bibendum.\r\n</p>\r\n<p>\r\nNunc vel mi eget purus egestas bibendum. Integer vel viverra libero, a imperdiet diam. Nam ornare sapien non diam faucibus pretium. Nullam \r\nultrices scelerisque mi nec congue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nunc mollis urna nisl, et ornare lacus vehicula eget. Nam \r\nfermentum nisl vel quam iaculis, ut viverra dolor posuere. Morbi bibendum faucibus leo, nec pretium enim gravida quis. Quisque fermentum tincidunt tortor sed fermentum. Cras at \r\ndictum ipsum. Suspendisse volutpat est in sapien consectetur sollicitudin. In consequat scelerisque lorem quis pretium. Suspendisse potenti.</p>', 0, 1, 1, 1, '2014-07-17 17:17:47'),
(2, 4, 1, 'About Us', '<p>\r\nEtiam quis sapien tellus. Aenean at nulla commodo quam eleifend consectetur. Integer nec tempus erat. Integer tincidunt vitae ligula nec \r\neleifend. Aliquam malesuada nisi vel purus hendrerit, eu faucibus urna dignissim. Etiam et justo id turpis porttitor sodales. Aliquam commodo rutrum bibendum.\r\n</p>\r\n<p>\r\nNunc \r\nvel mi eget purus egestas bibendum. Integer vel viverra libero, a imperdiet diam. Nam ornare sapien non diam faucibus pretium. Nullam ultrices scelerisque mi nec congue. Vestibulum \r\nante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nunc mollis urna nisl, et ornare lacus vehicula eget. Nam fermentum nisl vel quam iaculis, ut viverra \r\ndolor posuere. Morbi bibendum faucibus leo, nec pretium enim gravida quis. Quisque fermentum tincidunt tortor sed fermentum. Cras at dictum ipsum. Suspendisse volutpat est in sapien \r\nconsectetur sollicitudin. In consequat scelerisque lorem quis pretium. Suspendisse potenti.</p>', 0, 1, 1, 0, '2014-07-17 17:17:47'),
(3, 2, 1, 'News Story 1', '<p>\r\nTempus erat. \r\nInteger tincidunt vitae ligula nec eleifend. Aliquam malesuada nisi vel purus hendrerit, eu faucibus urna dignissim. Etiam et justo id turpis porttitor sodales. Aliquam commodo \r\nrutrum bibendum.\r\n</p>\r\n<p>\r\nNunc vel mi eget purus egestas bibendum. Integer vel viverra libero, a imperdiet diam. Nam ornare sapien non diam faucibus pretium. Nullam \r\nultrices scelerisque mi nec congue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nunc mollis urna nisl, et ornare lacus vehicula eget. Nam \r\nfermentum nisl vel quam iaculis, ut viverra dolor posuere. Morbi bibendum faucibus leo, nec pretium enim gravida quis. Quisque fermentum tincidunt tortor sed fermentum. Cras at \r\ndictum ipsum. Suspendisse volutpat est in sapien consectetur sollicitudin. In consequat scelerisque lorem quis pretium. Suspendisse potenti.</p>', 0, 1, 0, 0, '2014-07-17 17:18:49'),
(4, 2, 1, 'News Story 2', '<p>\r\nAenean at nulla commodo quam eleifend consectetur. Integer nec tempus erat. Integer tincidunt vitae ligula nec eleifend. Aliquam \r\nmalesuada nisi vel purus hendrerit, eu faucibus urna dignissim. Etiam et justo id turpis porttitor sodales. Aliquam commodo rutrum bibendum.\r\n</p>\r\n<p>\r\nPrimis in faucibus \r\norci luctus et ultrices posuere cubilia Curae; Nunc mollis urna nisl, et ornare lacus vehicula eget. Nam fermentum nisl vel quam iaculis, ut viverra dolor posuere. Morbi bibendum \r\nfaucibus leo, nec pretium enim gravida quis. Quisque fermentum tincidunt tortor sed fermentum. Cras at dictum ipsum. Suspendisse volutpat est in sapien consectetur sollicitudin. In \r\nconsequat scelerisque lorem quis pretium. Suspendisse potenti.</p>', 0, 1, 0, 0, '2014-07-17 17:18:49');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created`) VALUES
(2, 'News', '2014-07-17 17:14:27'),
(3, 'Tutorials', '2014-07-17 17:14:27'),
(4, 'Company', '2014-07-17 17:29:28');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`) VALUES
(1, 'Registered'),
(2, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(255) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`) VALUES
(1, 'site_title', 'Sample Site'),
(2, 'site_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec pretium \r\nvestibulum nibh ac ullamcorper. Etiam at diam malesuada, condimentum justo id, malesuada turpis. Ut rutrum luctus mauris, vulputate consectetur nunc commodo vitae. Aliquam tristique \r\net elit a viverra. Mauris molestie metus nec ornare placerat. Fusce lobortis eu sem a feugiat. Interdum et malesuada fames ac ante ipsum primis'),
(3, 'logo', 'mylogo.jpg'),
(4, 'jumbotron_heading', 'Jumbotron heading'),
(5, 'jumbotron_text', 'Cras justo odio, dapibus ac facilisis in, egestas eget quam. Fusce dapibus, tellus ac cursus commodo, tortor mauris \r\ncondimentum nibh, ut fermentum massa justo sit amet risus.'),
(6, 'jumbotron_button_text', 'Read More'),
(7, 'jumbotron_button_link', 'http://www.yourkewlsite.com');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `group_id` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `email`, `password`, `group_id`, `created`) VALUES
(1, 'Brad', 'Traversy', 'brad', 'techguyinfo@gmail.com', '162b826c13cebd8806b1e114edecfcc9', 2, '2014-07-17 17:15:04'),
(3, 'John', 'Doe', 'jdoe', 'jdoe@gmail.com', '162b826c13cebd8806b1e114edecfcc9', 2, '2014-07-18 23:17:21');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
