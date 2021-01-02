DROP DATABASE IF EXISTS HMS;
CREATE DATABASE HMS;
USE HMS;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+02:00";

--
-- Table structure for table `user`
--
CREATE TABLE `user` (
  `id` int(5) UNSIGNED NOT NULL,
  `firstname` varchar(50) CHARACTER SET utf8 NOT NULL,
  `lastname` varchar(50) CHARACTER SET utf8 NOT NULL,
  `username` varchar(50) CHARACTER SET utf8 NOT NULL,
  `password` varchar(150) COLLATE utf8_romanian_ci NOT NULL,
  `image` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_romanian_ci;

-- username unique
ALTER TABLE `HMS`.`user` ADD UNIQUE `username` (`username`) USING BTREE;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `firstname`, `lastname`, `username`, `password`) VALUES
(1, 'BBB', 'BBB', 'BBB', 'dcdb704109a454784b81229d2b05f368692e758bfa33cb61d04c1b93791b0273'),
(2, 'FFF', 'FFF', 'FFFFF', '25fc92a14a79502fe359ec1416bf80d711f0ae507f2723441e444e05b93e3d58');

--
-- Table structure for table `userplaylist`
--
CREATE TABLE `userdevice` (
  `iduser` int(5) UNSIGNED NOT NULL,
  `iddevice` int(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_romanian_ci;

--
-- Dumping data for table `userplaylist`
--
INSERT INTO `userdevice` (`iduser`, `iddevice`) VALUES
(1, 1),
(1, 2);

--
-- Table structure for table `device`
--
CREATE TABLE `device` (
  `id` int(5) UNSIGNED NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `ip` varchar(20) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_romanian_ci;

--
-- Table structure for table `status`
--
CREATE TABLE `status` (
  `id` int(5) UNSIGNED NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_romanian_ci;

--
-- Table structure for table `devicestatus`
--
CREATE TABLE `devicestatus` (
  `id` int(5) UNSIGNED NOT NULL,
  `deviceid` int(5) UNSIGNED NOT NULL,
  `statusid` int(5) UNSIGNED NOT NULL
)