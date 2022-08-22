-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 22 août 2022 à 14:27
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `chat database`
--

-- --------------------------------------------------------

--
-- Structure de la table `chat class`
--

CREATE TABLE `chat class` (
  `chat_id` int(20) NOT NULL,
  `chat_history` varchar(100) NOT NULL,
  `chat_type` varchar(100) NOT NULL,
  `chat_description` varchar(100) NOT NULL,
  `chat_user_id` int(10) NOT NULL,
  `chat_time` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `chat history class`
--

CREATE TABLE `chat history class` (
  `chat_history_id` int(3) NOT NULL,
  `chat_history_time` varchar(10) NOT NULL,
  `chat_history_type` varchar(100) NOT NULL,
  `chat_history_description` varchar(30) NOT NULL,
  `chat_history_user_id` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `group chat class`
--

CREATE TABLE `group chat class` (
  `group_chat_id` int(10) NOT NULL,
  `group_chat_type` varchar(100) NOT NULL,
  `group_chat_description` varchar(100) NOT NULL,
  `group_chat_history` varchar(1000) NOT NULL,
  `group_chat_time` varchar(100) NOT NULL,
  `group_chat_user_id` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `notification class`
--

CREATE TABLE `notification class` (
  `notification_id` int(10) NOT NULL,
  `notification_title` varchar(100) NOT NULL,
  `notification_description` varchar(100) NOT NULL,
  `notification_type` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `permission class`
--

CREATE TABLE `permission class` (
  `permission_id` int(10) NOT NULL,
  `permission_role_id` int(10) NOT NULL,
  `permission_title` varchar(10) NOT NULL,
  `permission-module` varchar(10) NOT NULL,
  `permission_description` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `role class`
--

CREATE TABLE `role class` (
  `role_id` int(10) NOT NULL,
  `role_title` varchar(10) NOT NULL,
  `roele_description` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `smiles chat class`
--

CREATE TABLE `smiles chat class` (
  `smiles_chat_id` int(100) NOT NULL,
  `smiles_chat_type` varchar(100) NOT NULL,
  `smiles_chat_history` varchar(100) NOT NULL,
  `smiles_chat_time` varchar(100) NOT NULL,
  `smiles_chat_description` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `user class`
--

CREATE TABLE `user class` (
  `user_id` int(3) NOT NULL,
  `user_role_id` int(3) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_email` varchar(20) NOT NULL,
  `user_dob` date NOT NULL,
  `user_address` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
