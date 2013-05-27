-- phpMyAdmin SQL Dump
-- version 3.2.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Erstellungszeit: 27. Mai 2013 um 12:46
-- Server Version: 5.1.44
-- PHP-Version: 5.3.2

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Datenbank: `webprog19tn10_v2`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `voices_audio`
--

CREATE TABLE `voices_audio` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(8) NOT NULL DEFAULT '',
  `author` varchar(80) NOT NULL DEFAULT '',
  `gender_id` tinyint(3) unsigned NOT NULL,
  `age` tinyint(3) unsigned NOT NULL,
  `language_id` tinyint(3) unsigned NOT NULL,
  `country_id` tinyint(3) unsigned NOT NULL,
  `title` varchar(120) NOT NULL DEFAULT '',
  `minutes` varchar(8) NOT NULL DEFAULT '',
  `is_authorised` enum('1','0') NOT NULL DEFAULT '1',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `language_id` (`language_id`),
  KEY `country_id` (`country_id`) USING BTREE,
  KEY `gender_id` (`gender_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=339 ;

--
-- Daten für Tabelle `voices_audio`
--

INSERT INTO `voices_audio` VALUES(1, 'en.mp3', 'sarah lin', 1, 20, 2, 4, 'radiation levels after fukushima', '2.00', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(2, 'de.mp3', 'Kathrin Müller', 1, 30, 3, 3, 'Deutsche Meeresforscher zeigen ein Modell', '1.34', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(3, 'ja.mp3', '太郎高橋', 2, 56, 1, 1, 'どうする', '0.67', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(4, 'fr.mp3', 'Céline', 1, 45, 4, 2, 'Suivre l’actualité de la catastrophe de Fukushima et ses conséquences', '0.91', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(5, 'en.mp3', 'MYONG MALAN     ', 2, 23, 2, 4, 'tracking Japans nuclear crisis', '1.48', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(6, 'en.mp3', 'OLIN OVERFELT   ', 2, 23, 2, 4, 'tracking Japans nuclear crisis', '1.09', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(7, 'ja.mp3', ' 諒	', 1, 56, 1, 1, 'どうする', '1.89', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(8, 'ja.mp3', ' 琥太郎', 1, 56, 1, 1, 'どうする', '1.10', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(9, 'ja.mp3', ' 颯真	', 1, 56, 1, 1, 'どうする', '1.20', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(10, 'ja.mp3', ' 颯汰	', 1, 56, 1, 1, 'どうする', '1.30', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(11, 'en.mp3', 'PHUNG PAVON     ', 1, 23, 2, 4, 'tracking Japans nuclear crisis', '1.18', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(12, 'en.mp3', 'RALPH ROSSBACH  ', 1, 63, 2, 4, 'tracking Japans nuclear crisis', '1.28', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(13, 'en.mp3', 'ROSENDA RAFTER  ', 1, 63, 2, 4, 'tracking Japans nuclear crisis', '1.37', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(14, 'en.mp3', 'RUTHANN RIVER   ', 1, 60, 2, 4, 'tracking Japans nuclear crisis', '1.40', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(15, 'en.mp3', 'SAGE SWIM       ', 1, 60, 2, 4, 'tracking Japans nuclear crisis', '1.50', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(16, 'de.mp3', 'Burghilde  ', 1, 30, 3, 3, 'Deutsche Meeresforscher zeigen ein Modell', '1.40', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(17, 'de.mp3', 'Burgis     ', 1, 50, 3, 3, 'Deutsche Meeresforscher zeigen ein Modell', '1.50', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(18, 'de.mp3', 'Burglind   ', 1, 50, 3, 3, 'Deutsche Meeresforscher zeigen ein Modell', '1.80', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(19, 'ja.mp3', ' 陸翔	', 1, 56, 1, 1, 'どうする', '0.67', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(20, 'ja.mp3', ' 航大	', 2, 56, 1, 1, 'どうする', '1.30', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(21, 'ja.mp3', ' 春輝	', 2, 56, 1, 1, 'どうする', '1.40', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(22, 'de.mp3', 'Burglinde  ', 1, 50, 3, 3, 'Deutsche Meeresforscher zeigen ein Modell', '1.89', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(23, 'de.mp3', 'Cäcilia    ', 2, 23, 3, 3, 'Deutsche Meeresforscher zeigen ein Modell', '1.40', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(24, 'de.mp3', 'Cäcilie    ', 2, 23, 3, 3, 'Deutsche Meeresforscher zeigen ein Modell', '1.50', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(25, 'de.mp3', 'Camilla    ', 2, 23, 3, 3, 'Deutsche Meeresforscher zeigen ein Modell', '1.00', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(26, 'ja.mp3', ' 陽太	', 1, 56, 1, 1, 'どうする', '0.67', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(27, 'de.mp3', 'Caren      ', 2, 63, 3, 3, 'Deutsche Meeresforscher zeigen ein Modell', '1.10', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(28, 'de.mp3', 'Carina     ', 2, 63, 3, 3, 'Deutsche Meeresforscher zeigen ein Modell', '1.20', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(29, 'de.mp3', 'Carla      ', 2, 30, 3, 3, 'Deutsche Meeresforscher zeigen ein Modell', '1.30', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(30, 'de.mp3', 'Carmen     ', 2, 30, 3, 3, 'Deutsche Meeresforscher zeigen ein Modell', '1.10', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(31, 'en.mp3', 'SANFORD SUGG    ', 1, 20, 2, 4, 'tracking Japans nuclear crisis', '1.08', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(32, 'en.mp3', 'SHANTELL SERNA  ', 1, 20, 2, 4, 'tracking Japans nuclear crisis', '1.09', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(33, 'en.mp3', 'SHAQUANA        ', 1, 40, 2, 4, 'tracking Japans nuclear crisis', '1.06', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(34, 'ja.mp3', ' 琉斗	', 1, 56, 1, 1, 'どうする', '0.67', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(35, 'ja.mp3', ' 龍之介', 1, 56, 1, 1, 'どうする', '0.67', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(36, 'ja.mp3', ' 瑛翔	', 2, 56, 1, 1, 'どうする', '1.40', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(37, 'ja.mp3', ' 空	', 2, 56, 1, 1, 'どうする', '1.50', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(38, 'ja.mp3', ' 圭吾	', 2, 56, 1, 1, 'どうする', '1.00', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(39, 'de.mp3', 'Burgunda   ', 1, 20, 3, 3, 'Deutsche Meeresforscher zeigen ein Modell', '1.10', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(40, 'de.mp3', 'Burgunde   ', 1, 23, 3, 3, 'Deutsche Meeresforscher zeigen ein Modell', '1.20', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(41, 'de.mp3', 'Burkhild   ', 2, 23, 3, 3, 'Deutsche Meeresforscher zeigen ein Modell', '1.30', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(42, 'ja.mp3', ' 慶人	', 2, 56, 1, 1, 'どうする', '1.10', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(43, 'ja.mp3', ' 健	', 2, 56, 1, 1, 'どうする', '1.20', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(44, 'ja.mp3', ' 康太	', 2, 56, 1, 1, 'どうする', '1.30', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(45, 'ja.mp3', ' 皇成	', 2, 56, 1, 1, 'どうする', '0.67', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(46, 'ja.mp3', ' 航輝	', 2, 56, 1, 1, 'どうする', '0.67', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(47, 'en.mp3', 'SENEGAL         ', 2, 40, 2, 4, 'tracking Japans nuclear crisis', '1.46', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(48, 'en.mp3', 'THERESA TREMAINE', 1, 70, 2, 4, 'tracking Japans nuclear crisis', '2.05', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(49, 'en.mp3', 'VERLENE VALERIUS', 1, 70, 2, 4, 'tracking Japans nuclear crisis', '2.05', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(50, 'en.mp3', 'Wynne           ', 1, 70, 2, 4, 'tracking Japans nuclear crisis', '2.05', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(51, 'de.mp3', 'Brunhilde  ', 1, 30, 3, 3, 'Deutsche Meeresforscher zeigen ein Modell', '1.50', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(52, 'de.mp3', 'Brunhildis ', 1, 30, 3, 3, 'Deutsche Meeresforscher zeigen ein Modell', '2.00', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(53, 'de.mp3', 'Ellen      ', 1, 14, 3, 3, 'Deutsche Meeresforscher zeigen ein Modell', '1.50', '0', '2012-10-02 00:29:09');
INSERT INTO `voices_audio` VALUES(54, 'de.mp3', 'Ellengard  ', 1, 12, 3, 3, 'Deutsche Meeresforscher zeigen ein Modell', '1.04', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(55, 'de.mp3', 'Ellentraud ', 1, 27, 3, 3, 'Deutsche Meeresforscher zeigen ein Modell', '1.34', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(56, 'en.mp3', 'SHEBA SAK       ', 2, 40, 2, 4, 'tracking Japans nuclear crisis', '1.46', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(57, 'en.mp3', 'SHIELA STACK    ', 2, 40, 2, 4, 'tracking Japans nuclear crisis', '1.46', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(58, 'en.mp3', 'SID SKELLEY     ', 2, 40, 2, 4, 'tracking Japans nuclear crisis', '2.47', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(59, 'en.mp3', 'STEPHANY SCOTT  ', 2, 40, 2, 4, 'tracking Japans nuclear crisis', '2.47', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(60, 'en.mp3', 'SYDNEY STEADHAM ', 1, 70, 2, 4, 'tracking Japans nuclear crisis', '2.47', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(61, 'de.mp3', 'Elli       ', 1, 14, 3, 3, 'Deutsche Meeresforscher zeigen ein Modell', '1.44', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(62, 'de.mp3', 'Elly       ', 1, 12, 3, 3, 'Deutsche Meeresforscher zeigen ein Modell', '1.01', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(63, 'en.mp3', 'ANGELINE ARRIAGA', 1, 20, 2, 4, 'tracking Japans nuclear crisis', '2.00', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(64, 'en.mp3', 'BETTY BARBER    ', 1, 20, 2, 4, 'tracking Japans nuclear crisis', '1.10', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(65, 'en.mp3', 'BOK BLESSING    ', 1, 20, 2, 4, 'tracking Japans nuclear crisis', '1.20', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(66, 'en.mp3', 'CARY CASSEL     ', 1, 20, 2, 4, 'tracking Japans nuclear crisis', '1.30', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(67, 'en.mp3', 'CATHLEEN        ', 1, 20, 2, 4, 'tracking Japans nuclear crisis', '1.40', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(68, 'en.mp3', 'CHARPENTIER     ', 1, 20, 2, 4, 'tracking Japans nuclear crisis', '1.50', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(69, 'en.mp3', 'DAPHINE DAO     ', 2, 19, 2, 4, 'tracking Japans nuclear crisis', '1.30', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(70, 'de.mp3', 'Burga      ', 1, 30, 3, 3, 'Deutsche Meeresforscher zeigen ein Modell', '1.10', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(71, 'de.mp3', 'Burgel     ', 1, 30, 3, 3, 'Deutsche Meeresforscher zeigen ein Modell', '1.20', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(72, 'de.mp3', 'Burghild   ', 1, 30, 3, 3, 'Deutsche Meeresforscher zeigen ein Modell', '1.30', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(73, 'de.mp3', 'Elise      ', 2, 30, 3, 3, 'Deutsche Meeresforscher zeigen ein Modell', '1.20', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(74, 'de.mp3', 'Elke       ', 2, 12, 3, 3, 'Deutsche Meeresforscher zeigen ein Modell', '1.30', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(75, 'de.mp3', 'Ella       ', 1, 27, 3, 3, 'Deutsche Meeresforscher zeigen ein Modell', '1.40', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(76, 'en.mp3', 'DEBRA DUPPSTADT ', 2, 19, 2, 4, 'tracking Japans nuclear crisis', '1.40', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(77, 'en.mp3', 'DICK DOSTER     ', 2, 19, 2, 4, 'tracking Japans nuclear crisis', '1.50', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(78, 'en.mp3', 'ELEONOR ELZEY   ', 2, 19, 2, 4, 'tracking Japans nuclear crisis', '1.00', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(79, 'en.mp3', 'ESPERANZA ESCH  ', 2, 19, 2, 4, 'tracking Japans nuclear crisis', '1.10', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(80, 'en.mp3', 'EZEKIEL EDELEN  ', 2, 16, 2, 4, 'tracking Japans nuclear crisis', '1.20', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(81, 'en.mp3', 'HERBERT HASLEM  ', 1, 16, 2, 4, 'tracking Japans nuclear crisis', '1.30', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(82, 'en.mp3', 'HISAKO HEMPEL   ', 1, 10, 2, 4, 'tracking Japans nuclear crisis', '1.10', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(83, 'en.mp3', 'JANE JUMPER     ', 1, 20, 2, 4, 'tracking Japans nuclear crisis', '1.20', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(84, 'en.mp3', 'JANUARY JURGENS ', 1, 20, 2, 4, 'tracking Japans nuclear crisis', '1.30', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(85, 'de.mp3', 'Elrike     ', 1, 27, 3, 3, 'Deutsche Meeresforscher zeigen ein Modell', '1.12', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(86, 'de.mp3', 'Elsa       ', 2, 14, 3, 3, 'Deutsche Meeresforscher zeigen ein Modell', '1.23', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(87, 'de.mp3', 'Elsabe     ', 2, 12, 3, 3, 'Deutsche Meeresforscher zeigen ein Modell', '1.34', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(88, 'de.mp3', 'Elsbeth    ', 2, 27, 3, 3, 'Deutsche Meeresforscher zeigen ein Modell', '1.45', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(89, 'de.mp3', 'Vreni      ', 1, 57, 3, 3, 'Deutsche Meeresforscher zeigen ein Modell', '1.34', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(90, 'en.mp3', 'CATHLEEN        ', 1, 20, 2, 4, 'tracking Japans nuclear crisis', '1.80', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(91, 'en.mp3', 'CHELSEY CUNNIFF ', 1, 10, 2, 4, 'tracking Japans nuclear crisis', '1.89', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(92, 'en.mp3', 'CHERI CLODFELTER', 1, 17, 2, 4, 'tracking Japans nuclear crisis', '1.10', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(93, 'en.mp3', 'DANITA DECELLES ', 2, 19, 2, 4, 'tracking Japans nuclear crisis', '1.20', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(94, 'de.mp3', 'Vroni      ', 1, 58, 3, 3, 'Deutsche Meeresforscher zeigen ein Modell', '1.34', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(95, 'de.mp3', 'Walburg    ', 2, 58, 3, 3, 'Deutsche Meeresforscher zeigen ein Modell', '1.34', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(96, 'de.mp3', 'Walburga   ', 2, 58, 3, 3, 'Deutsche Meeresforscher zeigen ein Modell', '1.34', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(97, 'de.mp3', 'Zilli      ', 2, 58, 3, 3, 'Deutsche Meeresforscher zeigen ein Modell', '1.34', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(98, 'de.mp3', 'Zita       ', 2, 38, 3, 3, 'Deutsche Meeresforscher zeigen ein Modell', '1.34', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(99, 'fr.mp3', 'Calvin              ', 2, 19, 4, 2, 'Suivre l’actualité de la catastrophe de Fukushima et ses conséquences', '1.50', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(100, 'fr.mp3', 'Dorian          ', 2, 19, 4, 2, 'Suivre l’actualité de la catastrophe de Fukushima et ses conséquences', '2.00', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(101, 'de.mp3', 'Ute        ', 1, 30, 3, 3, 'Deutsche Meeresforscher zeigen ein Modell', '1.08', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(102, 'de.mp3', 'Vanessa    ', 2, 60, 3, 3, 'Deutsche Meeresforscher zeigen ein Modell', '2.47', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(103, 'de.mp3', 'Vera       ', 2, 60, 3, 3, 'Deutsche Meeresforscher zeigen ein Modell', '2.47', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(104, 'de.mp3', 'Verena     ', 2, 67, 3, 3, 'Deutsche Meeresforscher zeigen ein Modell', '2.47', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(105, 'de.mp3', 'Verona     ', 2, 67, 3, 3, 'Deutsche Meeresforscher zeigen ein Modell', '2.05', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(106, 'fr.mp3', 'Henri           ', 2, 19, 4, 2, 'Suivre l’actualité de la catastrophe de Fukushima et ses conséquences', '1.10', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(107, 'de.mp3', 'Else       ', 2, 30, 3, 3, 'Deutsche Meeresforscher zeigen ein Modell', '1.56', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(108, 'de.mp3', 'Elselore   ', 2, 30, 3, 3, 'Deutsche Meeresforscher zeigen ein Modell', '1.37', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(109, 'de.mp3', 'Elselotte  ', 2, 30, 3, 3, 'Deutsche Meeresforscher zeigen ein Modell', '1.48', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(110, 'de.mp3', 'Elsemarie  ', 2, 30, 3, 3, 'Deutsche Meeresforscher zeigen ein Modell', '1.09', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(111, 'de.mp3', 'Elsgard    ', 2, 30, 3, 3, 'Deutsche Meeresforscher zeigen ein Modell', '1.18', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(112, 'de.mp3', 'Veronika   ', 2, 37, 3, 3, 'Deutsche Meeresforscher zeigen ein Modell', '2.05', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(113, 'de.mp3', 'Viktoria   ', 2, 37, 3, 3, 'Deutsche Meeresforscher zeigen ein Modell', '2.47', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(114, 'de.mp3', 'Viola      ', 2, 37, 3, 3, 'Deutsche Meeresforscher zeigen ein Modell', '1.34', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(115, 'de.mp3', 'Vreneli    ', 2, 57, 3, 3, 'Deutsche Meeresforscher zeigen ein Modell', '1.34', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(116, 'fr.mp3', 'Henry           ', 2, 19, 4, 2, 'Suivre l’actualité de la catastrophe de Fukushima et ses conséquences', '1.20', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(117, 'fr.mp3', 'Gael	        ', 2, 19, 4, 2, 'Suivre l’actualité de la catastrophe de Fukushima et ses conséquences', '1.30', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(118, 'fr.mp3', 'Gavin           ', 2, 16, 4, 2, 'Suivre l’actualité de la catastrophe de Fukushima et ses conséquences', '1.40', '1', '2012-10-02 00:16:45');
INSERT INTO `voices_audio` VALUES(119, 'fr.mp3', 'Louis           ', 2, 16, 4, 2, 'Suivre l’actualité ', '1.50', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(120, 'fr.mp3', 'Luis 	        ', 2, 10, 4, 2, 'Suivre l’actualité ', '1.80', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(121, 'fr.mp3', 'Albert          ', 2, 20, 4, 2, 'Suivre l’actualité ', '1.89', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(122, 'fr.mp3', 'Noel            ', 2, 20, 4, 2, 'Suivre l’actualité ', '1.10', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(123, 'de.mp3', 'Utta       ', 1, 60, 3, 3, 'Deutsche Meeresforscher zeigen ein Modell', '1.09', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(124, 'de.mp3', 'Valentina  ', 1, 60, 3, 3, 'Deutsche Meeresforscher zeigen ein Modell', '1.06', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(125, 'de.mp3', 'Valentine  ', 1, 60, 3, 3, 'Deutsche Meeresforscher zeigen ein Modell', '1.46', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(126, 'de.mp3', 'Valerie    ', 2, 60, 3, 3, 'Deutsche Meeresforscher zeigen ein Modell', '1.46', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(127, 'de.mp3', 'Valeska    ', 2, 60, 3, 3, 'Deutsche Meeresforscher zeigen ein Modell', '1.46', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(128, 'fr.mp3', 'Joel            ', 2, 20, 4, 2, 'Suivre l’actualité ', '1.20', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(129, 'fr.mp3', 'Leon-Joel       ', 2, 20, 4, 2, 'Suivre l’actualité ', '1.30', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(130, 'fr.mp3', 'Louis-Stefan    ', 2, 20, 4, 2, 'Suivre l’actualité ', '1.40', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(131, 'fr.mp3', 'Stefan-Louis	', 2, 50, 4, 2, 'Suivre l’actualité ', '1.50', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(132, 'fr.mp3', 'Lui-Horst       ', 2, 50, 4, 2, 'Suivre l’actualité ', '1.00', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(133, 'fr.mp3', 'Nikolas         ', 2, 50, 4, 2, 'Suivre l’actualité ', '1.10', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(134, 'fr.mp3', 'Rene            ', 2, 50, 4, 2, 'Suivre l’actualité ', '1.20', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(135, 'fr.mp3', 'Colin           ', 1, 45, 4, 2, 'Suivre l’actualité ', '0.91', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(136, 'de.mp3', 'Elvira     ', 2, 30, 3, 3, 'Deutsche Meeresforscher zeigen ein Modell', '1.28', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(137, 'de.mp3', 'Elvire     ', 2, 30, 3, 3, 'Deutsche Meeresforscher zeigen ein Modell', '1.37', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(138, 'de.mp3', 'Elwine     ', 2, 30, 3, 3, 'Deutsche Meeresforscher zeigen ein Modell', '1.40', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(139, 'de.mp3', 'Uta        ', 1, 30, 3, 3, 'Deutsche Meeresforscher zeigen ein Modell', '1.50', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(140, 'de.mp3', 'Veronica   ', 2, 37, 3, 3, 'Deutsche Meeresforscher zeigen ein Modell', '2.05', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(141, 'fr.mp3', 'Dominic         ', 1, 45, 4, 2, 'Suivre l’actualité ', '0.91', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(142, 'fr.mp3', 'Pierre          ', 1, 45, 4, 2, 'Suivre l’actualité ', '1.50', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(143, 'fr.mp3', 'Cedric          ', 1, 45, 4, 2, 'Suivre l’actualité ', '2.00', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(144, 'ja.mp3', ' 遼太	', 2, 56, 1, 1, 'どうする', '0.67', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(145, 'ja.mp3', ' 風雅	', 1, 56, 1, 1, 'どうする', '1.40', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(146, 'ja.mp3', ' 歩武	', 1, 56, 1, 1, 'どうする', '1.50', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(147, 'ja.mp3', ' 優月	', 1, 56, 1, 1, 'どうする', '1.00', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(148, 'ja.mp3', ' 勇斗	', 1, 56, 1, 1, 'どうする', '1.10', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(149, 'ja.mp3', ' 勇翔	', 1, 56, 1, 1, 'どうする', '1.20', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(150, 'fr.mp3', 'Marlon          ', 1, 45, 4, 2, 'Suivre l’actualité ', '1.10', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(151, 'en.mp3', 'JEANICE JASINSKI', 1, 20, 2, 4, 'tracking Japans nuclear crisis', '1.40', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(152, 'en.mp3', 'JERRY JERABEK   ', 1, 20, 2, 4, 'tracking Japans nuclear crisis', '1.50', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(153, 'ja.mp3', ' 璃空	', 2, 56, 1, 1, 'どうする', '0.67', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(154, 'ja.mp3', ' 亮	', 2, 56, 1, 1, 'どうする', '0.67', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(155, 'ja.mp3', ' 亮太	', 2, 56, 1, 1, 'どうする', '0.67', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(156, 'en.mp3', 'JOSUE JOSEPHSON ', 1, 20, 2, 4, 'tracking Japans nuclear crisis', '1.04', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(157, 'en.mp3', 'KYLEE KIRKLEY   ', 1, 50, 2, 4, 'tracking Japans nuclear crisis', '1.34', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(158, 'ja.mp3', ' 柊真	', 1, 56, 1, 1, 'どうする', '0.67', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(159, 'ja.mp3', ' 彪雅	', 1, 56, 1, 1, 'どうする', '1.30', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(160, 'ja.mp3', ' 陽大	', 1, 56, 1, 1, 'どうする', '0.67', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(161, 'ja.mp3', ' 理人	', 2, 56, 1, 1, 'どうする', '0.67', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(162, 'ja.mp3', ' 悠雅	', 1, 56, 1, 1, 'どうする', '1.30', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(163, 'ja.mp3', ' 悠希	', 1, 56, 1, 1, 'どうする', '1.10', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(164, 'ja.mp3', ' 悠仁	', 1, 56, 1, 1, 'どうする', '1.20', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(165, 'fr.mp3', 'Denise          ', 1, 45, 4, 2, 'la catastrophe de Fukushima ', '1.23', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(166, 'ja.mp3', ' 大輝	', 1, 56, 1, 1, 'どうする', '0.67', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(167, 'ja.mp3', ' 大地	', 1, 56, 1, 1, 'どうする', '0.67', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(168, 'ja.mp3', ' 蓮介	', 2, 56, 1, 1, 'どうする', '0.67', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(169, 'ja.mp3', ' 蓮斗	', 2, 56, 1, 1, 'どうする', '0.67', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(170, 'ja.mp3', ' 和希	', 2, 56, 1, 1, 'どうする', '0.67', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(171, 'fr.mp3', 'Josephine       ', 1, 45, 4, 2, 'la catastrophe de Fukushima ', '1.34', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(172, 'fr.mp3', 'Nicole          ', 1, 45, 4, 2, 'la catastrophe de Fukushima ', '1.45', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(173, 'ja.mp3', ' 智久	', 1, 56, 1, 1, 'どうする', '0.67', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(174, 'ja.mp3', ' 智也	', 1, 56, 1, 1, 'どうする', '0.67', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(175, 'fr.mp3', 'Sylvie-Noelle   ', 1, 45, 4, 2, 'la catastrophe de Fukushima ', '1.56', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(176, 'fr.mp3', 'Stella-Marie    ', 1, 45, 4, 2, 'la catastrophe de Fukushima ', '1.37', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(177, 'fr.mp3', 'Charlotte       ', 1, 45, 4, 2, 'la catastrophe de Fukushima ', '1.48', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(178, 'fr.mp3', 'Pierre          ', 1, 38, 4, 2, 'Fukushima et ses conséquences', '2.05', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(179, 'fr.mp3', 'Nathan          ', 1, 38, 4, 2, 'Fukushima et ses conséquences', '2.05', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(180, 'fr.mp3', 'Mathéo          ', 1, 38, 4, 2, 'Fukushima et ses conséquences', '2.05', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(181, 'fr.mp3', 'Matthieu        ', 1, 38, 4, 2, 'Fukushima et ses conséquences', '2.05', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(182, 'ja.mp3', ' 悠大	', 1, 56, 1, 1, 'どうする', '0.28', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(183, 'ja.mp3', ' 遥輝	', 1, 56, 1, 1, 'どうする', '0.67', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(184, 'ja.mp3', ' 陽希	', 1, 56, 1, 1, 'どうする', '0.67', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(185, 'en.mp3', 'LESLI LEMASTERS ', 1, 50, 2, 4, 'tracking Japans nuclear crisis', '1.44', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(186, 'en.mp3', 'LINDSEY LOVELL  ', 2, 50, 2, 4, 'tracking Japans nuclear crisis', '1.01', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(187, 'en.mp3', 'LORIE LOUDER    ', 2, 50, 2, 4, 'tracking Japans nuclear crisis', '1.12', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(188, 'en.mp3', 'MAISIE MAASS    ', 2, 50, 2, 4, 'tracking Japans nuclear crisis', '1.23', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(189, 'ja.mp3', ' 颯斗	', 1, 56, 1, 1, 'どうする', '1.10', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(190, 'ja.mp3', ' 春馬	', 1, 56, 1, 1, 'どうする', '1.50', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(191, 'ja.mp3', ' 潤	', 1, 56, 1, 1, 'どうする', '1.00', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(192, 'ja.mp3', ' 蒼	', 1, 56, 1, 1, 'どうする', '1.10', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(193, 'en.mp3', 'MARCELINA MOR   ', 2, 50, 2, 4, 'tracking Japans nuclear crisis', '1.34', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(194, 'en.mp3', 'MCCARLEY        ', 2, 20, 2, 4, 'tracking Japans nuclear crisis', '1.45', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(195, 'en.mp3', 'MARLANA         ', 2, 23, 2, 4, 'tracking Japans nuclear crisis', '1.56', '0', '2012-09-24 23:11:29');
INSERT INTO `voices_audio` VALUES(196, 'en.mp3', 'MCCARLEY        ', 2, 23, 2, 4, 'tracking Japans nuclear crisis', '1.37', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(197, 'fr.mp3', 'Mael            ', 1, 45, 4, 2, 'Suivre l’actualité ', '1.20', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(198, 'fr.mp3', 'Emil            ', 1, 12, 4, 2, 'Suivre l’actualité ', '1.30', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(199, 'fr.mp3', 'Pascal          ', 2, 27, 4, 2, 'Suivre l’actualité ', '1.40', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(200, 'fr.mp3', 'Patrice         ', 2, 14, 4, 2, 'Suivre l’actualité ', '1.50', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(201, 'fr.mp3', 'Hortensia-Solang', 2, 45, 4, 2, 'la catastrophe de Fukushima ', '1.44', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(202, 'fr.mp3', 'Jacqueline      ', 2, 45, 4, 2, 'la catastrophe de Fukushima ', '1.01', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(203, 'fr.mp3', 'Caroline        ', 2, 45, 4, 2, 'la catastrophe de Fukushima ', '1.12', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(204, 'ja.mp3', ' 湊  ', 2, 56, 1, 1, 'どうする', '0.67', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(205, 'ja.mp3', ' 優真	', 2, 56, 1, 1, 'どうする', '0.67', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(206, 'ja.mp3', ' 悠真	', 2, 56, 1, 1, 'どうする', '1.89', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(207, 'ja.mp3', ' 悠斗	', 2, 56, 1, 1, 'どうする', '1.10', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(208, 'ja.mp3', ' 陽向	', 2, 56, 1, 1, 'どうする', '1.20', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(209, 'fr.mp3', 'Mylène          ', 1, 38, 4, 2, 'Fukushima et ses conséquences', '2.05', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(210, 'fr.mp3', 'Jean-Marc       ', 1, 38, 4, 2, 'Fukushima et ses conséquences', '2.05', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(211, 'ja.mp3', ' 瑛太	', 1, 56, 1, 1, 'どうする', '1.20', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(212, 'ja.mp3', ' 瑛斗	', 1, 56, 1, 1, 'どうする', '1.30', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(213, 'ja.mp3', ' 航	', 1, 56, 1, 1, 'どうする', '1.40', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(214, 'fr.mp3', 'Noé             ', 1, 38, 4, 2, 'Fukushima et ses conséquences', '2.05', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(215, 'fr.mp3', 'Nicolas         ', 1, 38, 4, 2, 'Fukushima et ses conséquences', '2.05', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(216, 'fr.mp3', 'Loic            ', 1, 38, 4, 2, 'Fukushima et ses conséquences', '2.05', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(217, 'ja.mp3', ' 颯	', 1, 56, 1, 1, 'どうする', '1.89', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(218, 'ja.mp3', ' 大空	', 1, 56, 1, 1, 'どうする', '1.20', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(219, 'ja.mp3', ' 大智	', 1, 56, 1, 1, 'どうする', '1.30', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(220, 'fr.mp3', 'Fabrice         ', 1, 38, 4, 2, 'Fukushima et ses conséquences', '2.05', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(221, 'fr.mp3', 'Thierry         ', 1, 38, 4, 2, 'Fukushima et ses conséquences', '2.05', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(222, 'ja.mp3', ' 悠人	', 1, 56, 1, 1, 'どうする', '0.67', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(223, 'ja.mp3', ' 悠翔	', 1, 56, 1, 1, 'どうする', '0.67', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(224, 'ja.mp3', ' 歩	', 2, 56, 1, 1, 'どうする', '0.67', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(225, 'ja.mp3', ' 優斗	', 2, 56, 1, 1, 'どうする', '0.67', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(226, 'ja.mp3', ' 陸	', 2, 56, 1, 1, 'どうする', '0.67', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(227, 'fr.mp3', 'Christopher     ', 2, 12, 4, 2, 'Suivre l’actualité ', '1.80', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(228, 'fr.mp3', 'Vincent         ', 2, 27, 4, 2, 'Suivre l’actualité de la catastrophe ', '1.89', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(229, 'fr.mp3', 'Neil            ', 2, 14, 4, 2, 'Suivre l’actualité de la catastrophe ', '1.10', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(230, 'fr.mp3', 'Christian       ', 2, 12, 4, 2, 'Suivre l’actualité de la catastrophe ', '1.20', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(231, 'fr.mp3', 'Leonie          ', 2, 27, 4, 2, 'Suivre l’actualité de la catastrophe ', '1.30', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(232, 'fr.mp3', 'Dana            ', 2, 14, 4, 2, 'Suivre l’actualité de la catastrophe ', '1.40', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(233, 'fr.mp3', 'Anna            ', 2, 12, 4, 2, 'la catastrophe de Fukushima ', '1.50', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(234, 'fr.mp3', 'Marion          ', 2, 27, 4, 2, 'la catastrophe de Fukushima ', '1.00', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(235, 'fr.mp3', 'Anne            ', 2, 45, 4, 2, 'la catastrophe de Fukushima ', '1.10', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(236, 'fr.mp3', 'Karin           ', 2, 45, 4, 2, 'la catastrophe de Fukushima ', '1.20', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(237, 'fr.mp3', 'Celina          ', 2, 45, 4, 2, 'la catastrophe de Fukushima ', '1.30', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(238, 'fr.mp3', 'Morgane         ', 1, 58, 4, 2, 'Fukushima et ses conséquences', '2.47', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(239, 'fr.mp3', 'Lucie           ', 1, 58, 4, 2, 'Fukushima et ses conséquences', '2.47', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(240, 'fr.mp3', 'Julie           ', 1, 58, 4, 2, 'Fukushima et ses conséquences', '2.47', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(241, 'fr.mp3', 'Jeanne          ', 1, 58, 4, 2, 'Fukushima et ses conséquences', '2.05', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(242, 'fr.mp3', 'Sophie          ', 1, 38, 4, 2, 'Fukushima et ses conséquences', '2.05', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(243, 'fr.mp3', 'Selina          ', 2, 45, 4, 2, 'la catastrophe de Fukushima ', '1.10', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(244, 'fr.mp3', 'Sylvie          ', 2, 45, 4, 2, 'la catastrophe de Fukushima ', '1.20', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(245, 'ja.mp3', ' 遥翔	', 1, 56, 1, 1, 'どうする', '0.67', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(246, 'ja.mp3', ' 海斗	', 2, 56, 1, 1, 'どうする', '1.30', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(247, 'ja.mp3', ' 悠太	', 2, 56, 1, 1, 'どうする', '1.40', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(248, 'ja.mp3', ' 陽	', 2, 56, 1, 1, 'どうする', '1.50', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(249, 'ja.mp3', ' 陽斗	', 1, 56, 1, 1, 'どうする', '1.00', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(250, 'ja.mp3', ' 颯介	', 1, 56, 1, 1, 'どうする', '1.10', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(251, 'ja.mp3', ' 光希	', 1, 56, 1, 1, 'どうする', '1.20', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(252, 'ja.mp3', ' 蒼真	', 1, 56, 1, 1, 'どうする', '1.30', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(253, 'fr.mp3', 'Amy             ', 2, 45, 4, 2, 'la catastrophe de Fukushima ', '1.30', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(254, 'fr.mp3', 'Clara           ', 2, 45, 4, 2, 'la catastrophe de Fukushima ', '1.40', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(255, 'fr.mp3', 'Honor-Marie 	', 2, 45, 4, 2, 'la catastrophe de Fukushima ', '1.50', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(256, 'fr.mp3', 'Henrietta-Louise', 2, 45, 4, 2, 'la catastrophe de Fukushima ', '1.04', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(257, 'fr.mp3', 'Shiloh-Nouvel   ', 2, 45, 4, 2, 'la catastrophe de Fukushima ', '1.34', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(258, 'ja.mp3', ' 琉生	', 2, 56, 1, 1, 'どうする', '0.67', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(259, 'ja.mp3', ' 玲央	', 2, 56, 1, 1, 'どうする', '1.89', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(260, 'ja.mp3', ' 煌	', 2, 56, 1, 1, 'どうする', '1.10', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(261, 'ja.mp3', ' 颯人	', 2, 56, 1, 1, 'どうする', '1.20', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(262, 'ja.mp3', ' 一翔	', 2, 56, 1, 1, 'どうする', '1.30', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(263, 'ja.mp3', 'fdffff', 2, 55, 2, 1, 'rrerer', '1.40', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(264, 'ja.mp3', ' 拓真	', 2, 56, 1, 1, 'どうする', '1.50', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(265, 'fr.mp3', 'Yvonnee 	    ', 1, 67, 4, 2, 'la catastrophe de Fukushima ', '1.40', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(266, 'fr.mp3', 'Philine         ', 1, 67, 4, 2, 'la catastrophe de Fukushima ', '1.50', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(267, 'ja.mp3', ' 奏太	', 2, 56, 1, 1, 'どうする', '1.10', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(268, 'ja.mp3', ' 奏輔	', 2, 56, 1, 1, 'どうする', '1.20', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(269, 'ja.mp3', ' 爽	', 2, 56, 1, 1, 'どうする', '2:00', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(270, 'ja.mp3', ' 隼人	', 1, 56, 1, 1, 'どうする', '1.00', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(271, 'ja.mp3', ' 唯斗	', 1, 56, 1, 1, 'どうする', '1.10', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(272, 'ja.mp3', ' 優希	', 1, 56, 1, 1, 'どうする', '1.20', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(273, 'fr.mp3', 'Solange-Elisabet', 1, 37, 4, 2, 'la catastrophe de Fukushima ', '1.08', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(274, 'fr.mp3', 'Ophélie         ', 1, 37, 4, 2, 'Fukushima et ses conséquences', '1.09', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(275, 'fr.mp3', 'Sandrine        ', 1, 37, 4, 2, 'Fukushima et ses conséquences', '1.06', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(276, 'fr.mp3', 'Magalie         ', 1, 37, 4, 2, 'Fukushima et ses conséquences', '1.46', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(277, 'fr.mp3', 'Céline          ', 1, 57, 4, 2, 'Fukushima et ses conséquences', '1.46', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(278, 'fr.mp3', 'Virginie        ', 1, 57, 4, 2, 'Fukushima et ses conséquences', '1.46', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(279, 'ja.mp3', ' 駿	', 2, 56, 1, 1, 'どうする', '1.50', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(280, 'ja.mp3', ' 駿介	', 2, 56, 1, 1, 'どうする', '1.00', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(281, 'ja.mp3', ' 匠	', 2, 56, 1, 1, 'どうする', '1.10', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(282, 'ja.mp3', ' 真聖	', 2, 56, 1, 1, 'どうする', '1.20', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(283, 'ja.mp3', ' 迅	', 2, 56, 1, 1, 'どうする', '1.30', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(284, 'ja.mp3', ' 大雅	', 1, 56, 1, 1, 'どうする', '0.67', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(285, 'ja.mp3', ' 優	', 1, 56, 1, 1, 'どうする', '0.67', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(286, 'fr.mp3', 'Alina           ', 1, 45, 4, 2, 'la catastrophe de Fukushima ', '1.09', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(287, 'fr.mp3', 'Louisa          ', 1, 45, 4, 2, 'la catastrophe de Fukushima ', '1.18', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(288, 'ja.mp3', ' 悠馬	', 1, 56, 1, 1, 'どうする', '1.30', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(289, 'ja.mp3', ' 遥斗	', 1, 56, 1, 1, 'どうする', '0.67', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(290, 'ja.mp3', ' 蒼太	', 1, 56, 1, 1, 'どうする', '2.00', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(291, 'ja.mp3', ' 蒼大	', 1, 56, 1, 1, 'どうする', '0.67', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(292, 'fr.mp3', 'Solange-Sibylle ', 1, 45, 4, 2, 'la catastrophe de Fukushima ', '1.28', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(293, 'fr.mp3', 'Amelie          ', 1, 45, 4, 2, 'la catastrophe de Fukushima ', '1.37', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(294, 'ja.mp3', ' 蒼介	', 2, 56, 1, 1, 'どうする', '0.45', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(295, 'ja.mp3', ' 太陽	', 2, 56, 1, 1, 'どうする', '0.67', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(296, 'ja.mp3', ' 大芽	', 2, 56, 1, 1, 'どうする', '0.67', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(297, 'ja.mp3', ' 大希	', 2, 56, 1, 1, 'どうする', '0.67', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(298, '1.mp3', 'RogerTest1', 2, 88, 2, 4, 'jklkjlj', '0:04', '1', '2012-09-24 23:28:31');
INSERT INTO `voices_audio` VALUES(299, '2.mp3', 'RogerTest1', 2, 84, 2, 4, 'jklkjlj', '0:04', '1', '2012-10-01 09:49:55');
INSERT INTO `voices_audio` VALUES(300, '3.mp3', 'Roger3', 2, 44, 2, 4, 'feferwrewrw', '0:04', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(301, '4.mp3', 'blabla2', 1, 22, 2, 1, 'sfdsfssfddd', '0:02', '1', '2012-09-24 23:28:31');
INSERT INTO `voices_audio` VALUES(302, '5.mp3', 'fsssssss', 1, 33, 3, 2, 'dsfsfsfsd', '0:00', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(303, '6.mp3', 'RogerTest101', 2, 44, 2, 2, 'sfdsfsf', '0:05', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(304, '7.mp3', 'halllllo', 2, 44, 2, 4, 'blablablalb', '0:05', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(305, '8.mp3', 'rertet', 1, 44, 2, 2, 'dfsfsf', '0:04', '0', '2012-09-24 23:10:47');
INSERT INTO `voices_audio` VALUES(306, '9.mp3', 'rertet', 1, 44, 2, 2, 'dfsfsf', '0:04', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(307, '10.mp3', 'eeeeeeee', 2, 32, 2, 2, 'werwr', '0:02', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(308, '11.mp3', 'blabla', 2, 44, 3, 2, 'dfgdfgd', '0:05', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(309, '12.mp3', 'RogerRossger', 2, 33, 3, 2, 'sdfdslfjdso', '0:02', '1', '2012-10-01 09:36:58');
INSERT INTO `voices_audio` VALUES(310, '13.mp3', 'RogerTest4444', 2, 22, 2, 2, 'fsdf', '0:00', '0', '2012-09-24 23:26:26');
INSERT INTO `voices_audio` VALUES(311, '14.mp3', 'RogerTest4444', 2, 22, 2, 2, 'fsdf', '0:00', '0', '2012-09-24 23:17:03');
INSERT INTO `voices_audio` VALUES(312, '15.mp3', 'rhea', 1, 22, 2, 3, 'lll', '0:09', '0', '2012-09-24 23:34:36');
INSERT INTO `voices_audio` VALUES(313, '101.mp3', 'Rogerius', 2, 22, 2, 2, 'ererer', '0:04', '0', '2012-09-24 23:30:50');
INSERT INTO `voices_audio` VALUES(314, '102.mp3', 'Roger Emails in Config', 2, 55, 2, 2, 'blabla', '0:03', '0', '2012-09-24 23:26:45');
INSERT INTO `voices_audio` VALUES(315, '103.mp3', 'tttt', 2, 22, 3, 2, 'sfsdfsfsfs', '0:03', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(316, '104.mp3', 'Test', 1, 44, 2, 2, 'sfsf', '0:03', '0', '2012-10-01 12:30:58');
INSERT INTO `voices_audio` VALUES(317, '105.mp3', 'rerer', 2, 33, 3, 4, 'sdfsf', '2:24', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(318, '106.mp3', 'rrrrrrere', 2, 33, 2, 2, 'sdfsf', '0:09', '0', '2012-09-24 23:15:20');
INSERT INTO `voices_audio` VALUES(319, '107.mp3', 'Hallo', 2, 33, 2, 3, 'eee', '0:02', '1', '2012-09-24 23:04:25');
INSERT INTO `voices_audio` VALUES(321, '109.mp3', 'bbbb', 2, 22, 2, 2, 'efef', '0:14', '0', '2012-09-24 23:07:59');
INSERT INTO `voices_audio` VALUES(333, '121.mp3', 'yyyyyyyyyyyy', 1, 55, 3, 2, 'oooo', '2:20', '0', '2012-09-24 23:07:23');
INSERT INTO `voices_audio` VALUES(334, '122.mp3', 'qqqqqqqqqqqqqq', 1, 32, 2, 2, 'zhzhzhsss', '0:02', '1', '2012-09-24 23:28:31');
INSERT INTO `voices_audio` VALUES(335, '123.mp3', 'sdfsdfdssss', 2, 43, 2, 4, 'sfdsfef', '0:01', '0', '2012-10-01 10:38:28');
INSERT INTO `voices_audio` VALUES(336, '124.mp3', 'Rogertest22', 2, 44, 2, 2, 'ugz', '0:03', '1', '2012-09-29 12:48:10');
INSERT INTO `voices_audio` VALUES(337, '125.mp3', 'Roger1', 2, 43, 4, 5, 'RogeTitle', '1:10', '1', '2012-10-07 10:07:52');
INSERT INTO `voices_audio` VALUES(338, '126.mp3', 'eeee', 2, 44, 3, 5, 'ffef', '0:05', '1', '2012-10-08 11:37:56');

-- --------------------------------------------------------

--
-- Stellvertreter-Struktur des Views `voices_audio_view`
--
CREATE TABLE `voices_audio_view` (
`id` int(11) unsigned
,`name` varchar(8)
,`author` varchar(80)
,`language_id` tinyint(3) unsigned
,`country_id` tinyint(3) unsigned
,`gender_id` tinyint(3) unsigned
,`genderAll` varchar(26)
,`css` varchar(2)
,`gender_en` enum('M','F')
,`gender_ja` varchar(3)
,`gender` varchar(31)
,`age` tinyint(3) unsigned
,`age_scale` varchar(5)
,`language` varchar(30)
,`country` varchar(30)
,`title` varchar(120)
,`min` varchar(8)
,`height` varchar(2)
,`theme` varchar(341)
,`theme_id` varchar(341)
);
-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `voices_country`
--

CREATE TABLE `voices_country` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Daten für Tabelle `voices_country`
--

INSERT INTO `voices_country` VALUES(3, 'Deutschland');
INSERT INTO `voices_country` VALUES(5, 'Italien');
INSERT INTO `voices_country` VALUES(2, 'Schweiz');
INSERT INTO `voices_country` VALUES(4, 'USA');
INSERT INTO `voices_country` VALUES(1, '日本');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `voices_editor`
--

CREATE TABLE `voices_editor` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(80) NOT NULL DEFAULT '',
  `lastname` varchar(80) NOT NULL DEFAULT '',
  `username` varchar(80) NOT NULL DEFAULT '',
  `password` varchar(80) NOT NULL DEFAULT '',
  `datecreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_authorised` enum('1','0') NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Daten für Tabelle `voices_editor`
--

INSERT INTO `voices_editor` VALUES(1, 'susanna', 'susanna', 'susanna', 'b12f276a9d71b4781556e28eb08c071aea0993c4', '2012-08-30 23:17:02', '1');
INSERT INTO `voices_editor` VALUES(2, '333test22ss33', 'test', 'test', 'test', '2012-10-01 10:51:08', '1');
INSERT INTO `voices_editor` VALUES(3, 'tesstee1', 'tesstee4ee4', 'tewst', '51eac6b471a284d3341d8c0c63d0f1a286262a18', '2012-10-01 11:56:13', '0');
INSERT INTO `voices_editor` VALUES(4, 'test1', 'test1', 'test1', 'test1', '2012-10-01 20:40:34', '1');
INSERT INTO `voices_editor` VALUES(5, 'test2', 'test2', 'test2', '109f4b3c50d7b0df729d299bc6f8e9ef9066971f', '2012-10-01 20:41:35', '0');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `voices_gender`
--

CREATE TABLE `voices_gender` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `english` enum('M','F') NOT NULL DEFAULT 'M',
  `japanese` varchar(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Daten für Tabelle `voices_gender`
--

INSERT INTO `voices_gender` VALUES(1, 'F', '女性');
INSERT INTO `voices_gender` VALUES(2, 'M', '男性');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `voices_language`
--

CREATE TABLE `voices_language` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Daten für Tabelle `voices_language`
--

INSERT INTO `voices_language` VALUES(1, '日本人');
INSERT INTO `voices_language` VALUES(2, 'english');
INSERT INTO `voices_language` VALUES(3, 'deutsch');
INSERT INTO `voices_language` VALUES(4, 'français');
INSERT INTO `voices_language` VALUES(5, 'italiano');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `voices_sessiondata`
--

CREATE TABLE `voices_sessiondata` (
  `id` int(40) NOT NULL AUTO_INCREMENT,
  `sessionid` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=127 ;

--
-- Daten für Tabelle `voices_sessiondata`
--

INSERT INTO `voices_sessiondata` VALUES(1, '5b70b1a6af232e63d5106723936aff7a_1346442067');
INSERT INTO `voices_sessiondata` VALUES(2, '5b70b1a6af232e63d5106723936aff7a_1346442123');
INSERT INTO `voices_sessiondata` VALUES(3, '5b70b1a6af232e63d5106723936aff7a_1346442160');
INSERT INTO `voices_sessiondata` VALUES(4, '45862a2b7cc6cb0a2e1888d4b87f75f8_1346442244');
INSERT INTO `voices_sessiondata` VALUES(5, 'c8089026ed42d98efc54c83cdc340190_1346489581');
INSERT INTO `voices_sessiondata` VALUES(6, '0c483875c0d2d697fc4274f7315bcb53_1346490124');
INSERT INTO `voices_sessiondata` VALUES(7, '0fb27325f43a0d9a5c45e53b6b32f5e9_1346490412');
INSERT INTO `voices_sessiondata` VALUES(8, '0fb27325f43a0d9a5c45e53b6b32f5e9_1346490597');
INSERT INTO `voices_sessiondata` VALUES(9, '0fb27325f43a0d9a5c45e53b6b32f5e9_1346491867');
INSERT INTO `voices_sessiondata` VALUES(10, '0fb27325f43a0d9a5c45e53b6b32f5e9_1346492296');
INSERT INTO `voices_sessiondata` VALUES(11, '0fb27325f43a0d9a5c45e53b6b32f5e9_1346492367');
INSERT INTO `voices_sessiondata` VALUES(12, '4c7f40b3671b0dc7f974b1de6e89fdc6_1346492510');
INSERT INTO `voices_sessiondata` VALUES(13, 'f4eded2258eb0d2fd5a015af4173e801_1346576257');
INSERT INTO `voices_sessiondata` VALUES(14, 'ce1c6cd427fe78f758b3b86ec782dde3_1346577099');
INSERT INTO `voices_sessiondata` VALUES(15, '409c1aba31d6b1329f89d42fcf9b1b3f_1346582809');
INSERT INTO `voices_sessiondata` VALUES(16, 'df9d159476b2224ae4af7506afa27136_1346582872');
INSERT INTO `voices_sessiondata` VALUES(17, '2107419241b07e802b9441d8348c32da_1346583083');
INSERT INTO `voices_sessiondata` VALUES(18, 'f141968c323d6946452b303b5cd07806_1346583251');
INSERT INTO `voices_sessiondata` VALUES(19, 'fbf7bb2b066dd1e2e89d70aa84c21715_1346583383');
INSERT INTO `voices_sessiondata` VALUES(20, '688a7cb9a0ed7412bfe76367606e7b5c_1346590613');
INSERT INTO `voices_sessiondata` VALUES(21, '688a7cb9a0ed7412bfe76367606e7b5c_1346590677');
INSERT INTO `voices_sessiondata` VALUES(22, '688a7cb9a0ed7412bfe76367606e7b5c_1346590710');
INSERT INTO `voices_sessiondata` VALUES(23, '688a7cb9a0ed7412bfe76367606e7b5c_1346590774');
INSERT INTO `voices_sessiondata` VALUES(24, '688a7cb9a0ed7412bfe76367606e7b5c_1346590795');
INSERT INTO `voices_sessiondata` VALUES(25, '688a7cb9a0ed7412bfe76367606e7b5c_1346590949');
INSERT INTO `voices_sessiondata` VALUES(26, '688a7cb9a0ed7412bfe76367606e7b5c_1346590973');
INSERT INTO `voices_sessiondata` VALUES(27, '688a7cb9a0ed7412bfe76367606e7b5c_1346590991');
INSERT INTO `voices_sessiondata` VALUES(28, '688a7cb9a0ed7412bfe76367606e7b5c_1346591071');
INSERT INTO `voices_sessiondata` VALUES(29, '688a7cb9a0ed7412bfe76367606e7b5c_1346591163');
INSERT INTO `voices_sessiondata` VALUES(30, '688a7cb9a0ed7412bfe76367606e7b5c_1346591198');
INSERT INTO `voices_sessiondata` VALUES(31, '688a7cb9a0ed7412bfe76367606e7b5c_1346591216');
INSERT INTO `voices_sessiondata` VALUES(32, '688a7cb9a0ed7412bfe76367606e7b5c_1346591290');
INSERT INTO `voices_sessiondata` VALUES(33, '688a7cb9a0ed7412bfe76367606e7b5c_1346591335');
INSERT INTO `voices_sessiondata` VALUES(34, '688a7cb9a0ed7412bfe76367606e7b5c_1346591373');
INSERT INTO `voices_sessiondata` VALUES(35, '688a7cb9a0ed7412bfe76367606e7b5c_1346591411');
INSERT INTO `voices_sessiondata` VALUES(36, '688a7cb9a0ed7412bfe76367606e7b5c_1346591433');
INSERT INTO `voices_sessiondata` VALUES(37, '688a7cb9a0ed7412bfe76367606e7b5c_1346591488');
INSERT INTO `voices_sessiondata` VALUES(38, '688a7cb9a0ed7412bfe76367606e7b5c_1346591518');
INSERT INTO `voices_sessiondata` VALUES(39, '688a7cb9a0ed7412bfe76367606e7b5c_1346591554');
INSERT INTO `voices_sessiondata` VALUES(40, '688a7cb9a0ed7412bfe76367606e7b5c_1346591610');
INSERT INTO `voices_sessiondata` VALUES(41, '688a7cb9a0ed7412bfe76367606e7b5c_1346591641');
INSERT INTO `voices_sessiondata` VALUES(42, '688a7cb9a0ed7412bfe76367606e7b5c_1346591723');
INSERT INTO `voices_sessiondata` VALUES(43, '688a7cb9a0ed7412bfe76367606e7b5c_1346591745');
INSERT INTO `voices_sessiondata` VALUES(44, 'fe1450426f9624faabf8568e3b2bd14f_1346666822');
INSERT INTO `voices_sessiondata` VALUES(45, '5615c40155aa015b8ed122e825932b5d_1346683936');
INSERT INTO `voices_sessiondata` VALUES(46, '5615c40155aa015b8ed122e825932b5d_1346683951');
INSERT INTO `voices_sessiondata` VALUES(47, '5615c40155aa015b8ed122e825932b5d_1346684105');
INSERT INTO `voices_sessiondata` VALUES(48, '5615c40155aa015b8ed122e825932b5d_1346684124');
INSERT INTO `voices_sessiondata` VALUES(49, '5615c40155aa015b8ed122e825932b5d_1346684147');
INSERT INTO `voices_sessiondata` VALUES(50, '5615c40155aa015b8ed122e825932b5d_1346684164');
INSERT INTO `voices_sessiondata` VALUES(51, '5615c40155aa015b8ed122e825932b5d_1346684188');
INSERT INTO `voices_sessiondata` VALUES(52, '5615c40155aa015b8ed122e825932b5d_1346684206');
INSERT INTO `voices_sessiondata` VALUES(53, '5615c40155aa015b8ed122e825932b5d_1346684236');
INSERT INTO `voices_sessiondata` VALUES(54, '5615c40155aa015b8ed122e825932b5d_1346684254');
INSERT INTO `voices_sessiondata` VALUES(55, '5615c40155aa015b8ed122e825932b5d_1346684279');
INSERT INTO `voices_sessiondata` VALUES(56, '5615c40155aa015b8ed122e825932b5d_1346684307');
INSERT INTO `voices_sessiondata` VALUES(57, '5615c40155aa015b8ed122e825932b5d_1346684330');
INSERT INTO `voices_sessiondata` VALUES(58, '5615c40155aa015b8ed122e825932b5d_1346684351');
INSERT INTO `voices_sessiondata` VALUES(59, '5615c40155aa015b8ed122e825932b5d_1346684375');
INSERT INTO `voices_sessiondata` VALUES(60, '5615c40155aa015b8ed122e825932b5d_1346684391');
INSERT INTO `voices_sessiondata` VALUES(61, '5615c40155aa015b8ed122e825932b5d_1346684405');
INSERT INTO `voices_sessiondata` VALUES(62, 'c6a27a00320e1157e322af26a19e530b_1346694238');
INSERT INTO `voices_sessiondata` VALUES(63, 'ef04a64184743ea0ae4329bd68f06e97_1347700616');
INSERT INTO `voices_sessiondata` VALUES(64, 'b84555df6065b1f16a76a25829e5f3a1_1347700803');
INSERT INTO `voices_sessiondata` VALUES(65, 'ce57313f17cdc808d43640507d52fd49_1347700864');
INSERT INTO `voices_sessiondata` VALUES(66, 'c8e3ca18a74c028b3b890ade0e4da29c_1347701119');
INSERT INTO `voices_sessiondata` VALUES(67, 'c8e3ca18a74c028b3b890ade0e4da29c_1347701266');
INSERT INTO `voices_sessiondata` VALUES(68, 'c8e3ca18a74c028b3b890ade0e4da29c_1347701272');
INSERT INTO `voices_sessiondata` VALUES(69, 'c8e3ca18a74c028b3b890ade0e4da29c_1347701305');
INSERT INTO `voices_sessiondata` VALUES(70, 'c8e3ca18a74c028b3b890ade0e4da29c_1347701316');
INSERT INTO `voices_sessiondata` VALUES(71, 'c8e3ca18a74c028b3b890ade0e4da29c_1347702144');
INSERT INTO `voices_sessiondata` VALUES(72, 'c8e3ca18a74c028b3b890ade0e4da29c_1347702219');
INSERT INTO `voices_sessiondata` VALUES(73, 'c8e3ca18a74c028b3b890ade0e4da29c_1347702255');
INSERT INTO `voices_sessiondata` VALUES(74, 'c8e3ca18a74c028b3b890ade0e4da29c_1347702408');
INSERT INTO `voices_sessiondata` VALUES(75, '4036361d4c2d466b5322dd0a744e10dc_1347702460');
INSERT INTO `voices_sessiondata` VALUES(76, '4036361d4c2d466b5322dd0a744e10dc_1347702486');
INSERT INTO `voices_sessiondata` VALUES(77, 'eedaa58a6f73b63067f7a590cc2104be_1347702520');
INSERT INTO `voices_sessiondata` VALUES(78, 'aca9dddc7980d34656a6cdabc392a390_1347702567');
INSERT INTO `voices_sessiondata` VALUES(79, '9f5e137e951c8866154f4611e33dbf9f_1347703054');
INSERT INTO `voices_sessiondata` VALUES(80, '315185f5f30a29f99f312d091bd05148_1347703094');
INSERT INTO `voices_sessiondata` VALUES(81, 'aa3693219fae85a30ab2a6d2bdb88f69_1347703422');
INSERT INTO `voices_sessiondata` VALUES(82, '2adb29456701ab40c4d8e5342e32e317_1347703472');
INSERT INTO `voices_sessiondata` VALUES(83, '0ce67758df42c348f1c26e5078a6da22_1347703522');
INSERT INTO `voices_sessiondata` VALUES(84, '5c8aeff1ffc3ce25f798d33441f4084a_1347704750');
INSERT INTO `voices_sessiondata` VALUES(85, 'd214fbfa2f787887700acbb948466677_1347704783');
INSERT INTO `voices_sessiondata` VALUES(86, 'd214fbfa2f787887700acbb948466677_1347704893');
INSERT INTO `voices_sessiondata` VALUES(87, 'd214fbfa2f787887700acbb948466677_1347704920');
INSERT INTO `voices_sessiondata` VALUES(88, 'd214fbfa2f787887700acbb948466677_1347704933');
INSERT INTO `voices_sessiondata` VALUES(89, 'cd8820a18ead5ab7069ede3c725c51d7_1347705002');
INSERT INTO `voices_sessiondata` VALUES(90, '1f92c686fd13027a9d435a9f51c47c86_1347705060');
INSERT INTO `voices_sessiondata` VALUES(91, '2ddece93700474b8df11cc172f690d54_1347705210');
INSERT INTO `voices_sessiondata` VALUES(92, '1bfdfa908ca8f4213e127548bf4deb15_1347705421');
INSERT INTO `voices_sessiondata` VALUES(93, '0fd24d09d2d4ef822d50169024ad78e0_1347705912');
INSERT INTO `voices_sessiondata` VALUES(94, '61255ec3d1f687456ae9ca728453bcd9_1347710588');
INSERT INTO `voices_sessiondata` VALUES(95, '94d6a8a939246ad4f500f406384f5a2f_1347711135');
INSERT INTO `voices_sessiondata` VALUES(96, 'f59dd29ca0cb2f463cb5879e3af6940e_1347712394');
INSERT INTO `voices_sessiondata` VALUES(97, '22cc3da31d679a9c60b5d47c57267658_1347712425');
INSERT INTO `voices_sessiondata` VALUES(98, '4327bf40b3ecb31e7f35a62ff402e487_1347786066');
INSERT INTO `voices_sessiondata` VALUES(99, '091c47d18de218efa08daf47cf9b3bb5_1347786159');
INSERT INTO `voices_sessiondata` VALUES(100, '720e38150cd77c0c6b4d45be9923b314_1347786434');
INSERT INTO `voices_sessiondata` VALUES(101, 'ca64ca67420d0de4a4841bf4f9c4fba9_1348083219');
INSERT INTO `voices_sessiondata` VALUES(102, '2a94126e21263225ce0cefd9d4ef7e7c_1348084277');
INSERT INTO `voices_sessiondata` VALUES(103, '9175bea2665137e1136b7fffb149ba35_1348302346');
INSERT INTO `voices_sessiondata` VALUES(104, '0b9d237a2f58143d5c366bd82e95e583_1348303869');
INSERT INTO `voices_sessiondata` VALUES(105, '070f1c4f6b83b432196cf490c14adb7c_1348334821');
INSERT INTO `voices_sessiondata` VALUES(106, '066e52fc539ef7bdab4f83e2493ed644_1348334978');
INSERT INTO `voices_sessiondata` VALUES(107, '90d81055818e45bbc1df76671b6473bb_1348336278');
INSERT INTO `voices_sessiondata` VALUES(108, '0d10c35209383407950de59f87064dbc_1348336786');
INSERT INTO `voices_sessiondata` VALUES(109, '3240c80abc70f4228f38b8c4ec31b162_1348336890');
INSERT INTO `voices_sessiondata` VALUES(110, '3240c80abc70f4228f38b8c4ec31b162_1348337160');
INSERT INTO `voices_sessiondata` VALUES(111, '3240c80abc70f4228f38b8c4ec31b162_1348337255');
INSERT INTO `voices_sessiondata` VALUES(112, '3240c80abc70f4228f38b8c4ec31b162_1348337295');
INSERT INTO `voices_sessiondata` VALUES(113, '3240c80abc70f4228f38b8c4ec31b162_1348337466');
INSERT INTO `voices_sessiondata` VALUES(114, '3240c80abc70f4228f38b8c4ec31b162_1348337756');
INSERT INTO `voices_sessiondata` VALUES(115, '3240c80abc70f4228f38b8c4ec31b162_1348337799');
INSERT INTO `voices_sessiondata` VALUES(116, '3240c80abc70f4228f38b8c4ec31b162_1348338105');
INSERT INTO `voices_sessiondata` VALUES(117, '3240c80abc70f4228f38b8c4ec31b162_1348338137');
INSERT INTO `voices_sessiondata` VALUES(118, '3240c80abc70f4228f38b8c4ec31b162_1348338149');
INSERT INTO `voices_sessiondata` VALUES(119, '3240c80abc70f4228f38b8c4ec31b162_1348338167');
INSERT INTO `voices_sessiondata` VALUES(120, '3240c80abc70f4228f38b8c4ec31b162_1348338252');
INSERT INTO `voices_sessiondata` VALUES(121, '3240c80abc70f4228f38b8c4ec31b162_1348338314');
INSERT INTO `voices_sessiondata` VALUES(122, '7709b2866a6ffc77ccbd343366c1ecd6_1348338501');
INSERT INTO `voices_sessiondata` VALUES(123, '06ee9faae31635eca122b8edbf72e2a1_1348915366');
INSERT INTO `voices_sessiondata` VALUES(124, '51d74e93961a47b41ef22cd8ca90ea12_1348915690');
INSERT INTO `voices_sessiondata` VALUES(125, '2d22f7babb67fa1765ec5f430bdb6066_1349597272');
INSERT INTO `voices_sessiondata` VALUES(126, 'e4cc31d85b03d7ec4f3626b00b225599_1349689076');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `voices_theme`
--

CREATE TABLE `voices_theme` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `english` varchar(80) NOT NULL DEFAULT '',
  `japanese` varchar(80) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `englisch` (`english`),
  KEY `japanese` (`japanese`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Daten für Tabelle `voices_theme`
--

INSERT INTO `voices_theme` VALUES(1, 'nuclear waste', '核廃棄物');
INSERT INTO `voices_theme` VALUES(2, 'nuclear', '核廃');
INSERT INTO `voices_theme` VALUES(3, 'power plants', '発電所');
INSERT INTO `voices_theme` VALUES(4, 'electrical grid', '配電網');
INSERT INTO `voices_theme` VALUES(5, 'energy politics', 'エネルギーの政治');
INSERT INTO `voices_theme` VALUES(6, 'renewable energy', '再生可能エネルギー');
INSERT INTO `voices_theme` VALUES(7, 'fukushima', '福島');
INSERT INTO `voices_theme` VALUES(8, 'nuclear disasters', '原子力災害');
INSERT INTO `voices_theme` VALUES(9, 'chernobyl', 'チェルノブイリ');
INSERT INTO `voices_theme` VALUES(10, 'three mile island', 'スリーマイル島');
INSERT INTO `voices_theme` VALUES(11, 'abfall', 'abfall_jap');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `voices_theme_to_audio`
--

CREATE TABLE `voices_theme_to_audio` (
  `audio_id` int(11) unsigned NOT NULL,
  `theme_id` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`theme_id`,`audio_id`),
  KEY `audio_id` (`audio_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `voices_theme_to_audio`
--

INSERT INTO `voices_theme_to_audio` VALUES(1, 1);
INSERT INTO `voices_theme_to_audio` VALUES(1, 4);
INSERT INTO `voices_theme_to_audio` VALUES(1, 5);
INSERT INTO `voices_theme_to_audio` VALUES(1, 7);
INSERT INTO `voices_theme_to_audio` VALUES(2, 2);
INSERT INTO `voices_theme_to_audio` VALUES(2, 4);
INSERT INTO `voices_theme_to_audio` VALUES(3, 6);
INSERT INTO `voices_theme_to_audio` VALUES(4, 6);
INSERT INTO `voices_theme_to_audio` VALUES(4, 7);
INSERT INTO `voices_theme_to_audio` VALUES(5, 3);
INSERT INTO `voices_theme_to_audio` VALUES(6, 2);
INSERT INTO `voices_theme_to_audio` VALUES(6, 3);
INSERT INTO `voices_theme_to_audio` VALUES(7, 2);
INSERT INTO `voices_theme_to_audio` VALUES(7, 5);
INSERT INTO `voices_theme_to_audio` VALUES(8, 8);
INSERT INTO `voices_theme_to_audio` VALUES(8, 9);
INSERT INTO `voices_theme_to_audio` VALUES(9, 4);
INSERT INTO `voices_theme_to_audio` VALUES(9, 10);
INSERT INTO `voices_theme_to_audio` VALUES(10, 3);
INSERT INTO `voices_theme_to_audio` VALUES(10, 6);
INSERT INTO `voices_theme_to_audio` VALUES(11, 4);
INSERT INTO `voices_theme_to_audio` VALUES(11, 10);
INSERT INTO `voices_theme_to_audio` VALUES(12, 6);
INSERT INTO `voices_theme_to_audio` VALUES(12, 8);
INSERT INTO `voices_theme_to_audio` VALUES(13, 1);
INSERT INTO `voices_theme_to_audio` VALUES(13, 9);
INSERT INTO `voices_theme_to_audio` VALUES(14, 3);
INSERT INTO `voices_theme_to_audio` VALUES(14, 10);
INSERT INTO `voices_theme_to_audio` VALUES(15, 3);
INSERT INTO `voices_theme_to_audio` VALUES(15, 6);
INSERT INTO `voices_theme_to_audio` VALUES(16, 6);
INSERT INTO `voices_theme_to_audio` VALUES(16, 9);
INSERT INTO `voices_theme_to_audio` VALUES(17, 2);
INSERT INTO `voices_theme_to_audio` VALUES(17, 7);
INSERT INTO `voices_theme_to_audio` VALUES(18, 2);
INSERT INTO `voices_theme_to_audio` VALUES(18, 7);
INSERT INTO `voices_theme_to_audio` VALUES(19, 1);
INSERT INTO `voices_theme_to_audio` VALUES(19, 10);
INSERT INTO `voices_theme_to_audio` VALUES(20, 2);
INSERT INTO `voices_theme_to_audio` VALUES(20, 10);
INSERT INTO `voices_theme_to_audio` VALUES(21, 7);
INSERT INTO `voices_theme_to_audio` VALUES(21, 9);
INSERT INTO `voices_theme_to_audio` VALUES(22, 2);
INSERT INTO `voices_theme_to_audio` VALUES(22, 9);
INSERT INTO `voices_theme_to_audio` VALUES(23, 5);
INSERT INTO `voices_theme_to_audio` VALUES(23, 6);
INSERT INTO `voices_theme_to_audio` VALUES(23, 7);
INSERT INTO `voices_theme_to_audio` VALUES(24, 4);
INSERT INTO `voices_theme_to_audio` VALUES(24, 7);
INSERT INTO `voices_theme_to_audio` VALUES(25, 2);
INSERT INTO `voices_theme_to_audio` VALUES(25, 7);
INSERT INTO `voices_theme_to_audio` VALUES(26, 6);
INSERT INTO `voices_theme_to_audio` VALUES(26, 8);
INSERT INTO `voices_theme_to_audio` VALUES(27, 3);
INSERT INTO `voices_theme_to_audio` VALUES(27, 8);
INSERT INTO `voices_theme_to_audio` VALUES(28, 3);
INSERT INTO `voices_theme_to_audio` VALUES(28, 5);
INSERT INTO `voices_theme_to_audio` VALUES(29, 6);
INSERT INTO `voices_theme_to_audio` VALUES(29, 10);
INSERT INTO `voices_theme_to_audio` VALUES(30, 2);
INSERT INTO `voices_theme_to_audio` VALUES(30, 10);
INSERT INTO `voices_theme_to_audio` VALUES(31, 4);
INSERT INTO `voices_theme_to_audio` VALUES(31, 10);
INSERT INTO `voices_theme_to_audio` VALUES(32, 6);
INSERT INTO `voices_theme_to_audio` VALUES(32, 10);
INSERT INTO `voices_theme_to_audio` VALUES(33, 1);
INSERT INTO `voices_theme_to_audio` VALUES(33, 3);
INSERT INTO `voices_theme_to_audio` VALUES(33, 5);
INSERT INTO `voices_theme_to_audio` VALUES(33, 7);
INSERT INTO `voices_theme_to_audio` VALUES(34, 2);
INSERT INTO `voices_theme_to_audio` VALUES(34, 3);
INSERT INTO `voices_theme_to_audio` VALUES(35, 6);
INSERT INTO `voices_theme_to_audio` VALUES(35, 7);
INSERT INTO `voices_theme_to_audio` VALUES(36, 1);
INSERT INTO `voices_theme_to_audio` VALUES(36, 3);
INSERT INTO `voices_theme_to_audio` VALUES(37, 4);
INSERT INTO `voices_theme_to_audio` VALUES(37, 9);
INSERT INTO `voices_theme_to_audio` VALUES(38, 1);
INSERT INTO `voices_theme_to_audio` VALUES(38, 8);
INSERT INTO `voices_theme_to_audio` VALUES(39, 3);
INSERT INTO `voices_theme_to_audio` VALUES(39, 5);
INSERT INTO `voices_theme_to_audio` VALUES(39, 9);
INSERT INTO `voices_theme_to_audio` VALUES(40, 4);
INSERT INTO `voices_theme_to_audio` VALUES(40, 8);
INSERT INTO `voices_theme_to_audio` VALUES(41, 3);
INSERT INTO `voices_theme_to_audio` VALUES(41, 10);
INSERT INTO `voices_theme_to_audio` VALUES(42, 5);
INSERT INTO `voices_theme_to_audio` VALUES(42, 7);
INSERT INTO `voices_theme_to_audio` VALUES(43, 2);
INSERT INTO `voices_theme_to_audio` VALUES(43, 3);
INSERT INTO `voices_theme_to_audio` VALUES(44, 1);
INSERT INTO `voices_theme_to_audio` VALUES(44, 2);
INSERT INTO `voices_theme_to_audio` VALUES(45, 4);
INSERT INTO `voices_theme_to_audio` VALUES(45, 9);
INSERT INTO `voices_theme_to_audio` VALUES(46, 6);
INSERT INTO `voices_theme_to_audio` VALUES(46, 8);
INSERT INTO `voices_theme_to_audio` VALUES(47, 1);
INSERT INTO `voices_theme_to_audio` VALUES(47, 7);
INSERT INTO `voices_theme_to_audio` VALUES(48, 1);
INSERT INTO `voices_theme_to_audio` VALUES(48, 10);
INSERT INTO `voices_theme_to_audio` VALUES(49, 2);
INSERT INTO `voices_theme_to_audio` VALUES(49, 9);
INSERT INTO `voices_theme_to_audio` VALUES(50, 1);
INSERT INTO `voices_theme_to_audio` VALUES(50, 7);
INSERT INTO `voices_theme_to_audio` VALUES(51, 2);
INSERT INTO `voices_theme_to_audio` VALUES(52, 9);
INSERT INTO `voices_theme_to_audio` VALUES(53, 10);
INSERT INTO `voices_theme_to_audio` VALUES(54, 7);
INSERT INTO `voices_theme_to_audio` VALUES(55, 2);
INSERT INTO `voices_theme_to_audio` VALUES(56, 6);
INSERT INTO `voices_theme_to_audio` VALUES(57, 2);
INSERT INTO `voices_theme_to_audio` VALUES(58, 10);
INSERT INTO `voices_theme_to_audio` VALUES(59, 9);
INSERT INTO `voices_theme_to_audio` VALUES(60, 8);
INSERT INTO `voices_theme_to_audio` VALUES(61, 10);
INSERT INTO `voices_theme_to_audio` VALUES(62, 9);
INSERT INTO `voices_theme_to_audio` VALUES(63, 3);
INSERT INTO `voices_theme_to_audio` VALUES(64, 5);
INSERT INTO `voices_theme_to_audio` VALUES(65, 1);
INSERT INTO `voices_theme_to_audio` VALUES(66, 10);
INSERT INTO `voices_theme_to_audio` VALUES(67, 10);
INSERT INTO `voices_theme_to_audio` VALUES(68, 5);
INSERT INTO `voices_theme_to_audio` VALUES(69, 8);
INSERT INTO `voices_theme_to_audio` VALUES(70, 4);
INSERT INTO `voices_theme_to_audio` VALUES(71, 2);
INSERT INTO `voices_theme_to_audio` VALUES(72, 1);
INSERT INTO `voices_theme_to_audio` VALUES(73, 8);
INSERT INTO `voices_theme_to_audio` VALUES(74, 4);
INSERT INTO `voices_theme_to_audio` VALUES(75, 3);
INSERT INTO `voices_theme_to_audio` VALUES(76, 2);
INSERT INTO `voices_theme_to_audio` VALUES(77, 9);
INSERT INTO `voices_theme_to_audio` VALUES(78, 3);
INSERT INTO `voices_theme_to_audio` VALUES(79, 2);
INSERT INTO `voices_theme_to_audio` VALUES(80, 1);
INSERT INTO `voices_theme_to_audio` VALUES(81, 4);
INSERT INTO `voices_theme_to_audio` VALUES(82, 4);
INSERT INTO `voices_theme_to_audio` VALUES(83, 10);
INSERT INTO `voices_theme_to_audio` VALUES(84, 3);
INSERT INTO `voices_theme_to_audio` VALUES(85, 1);
INSERT INTO `voices_theme_to_audio` VALUES(86, 2);
INSERT INTO `voices_theme_to_audio` VALUES(87, 9);
INSERT INTO `voices_theme_to_audio` VALUES(88, 3);
INSERT INTO `voices_theme_to_audio` VALUES(89, 1);
INSERT INTO `voices_theme_to_audio` VALUES(90, 8);
INSERT INTO `voices_theme_to_audio` VALUES(91, 10);
INSERT INTO `voices_theme_to_audio` VALUES(92, 1);
INSERT INTO `voices_theme_to_audio` VALUES(93, 6);
INSERT INTO `voices_theme_to_audio` VALUES(94, 3);
INSERT INTO `voices_theme_to_audio` VALUES(95, 5);
INSERT INTO `voices_theme_to_audio` VALUES(96, 6);
INSERT INTO `voices_theme_to_audio` VALUES(97, 3);
INSERT INTO `voices_theme_to_audio` VALUES(98, 5);
INSERT INTO `voices_theme_to_audio` VALUES(99, 10);
INSERT INTO `voices_theme_to_audio` VALUES(100, 10);
INSERT INTO `voices_theme_to_audio` VALUES(101, 8);
INSERT INTO `voices_theme_to_audio` VALUES(102, 1);
INSERT INTO `voices_theme_to_audio` VALUES(103, 1);
INSERT INTO `voices_theme_to_audio` VALUES(104, 6);
INSERT INTO `voices_theme_to_audio` VALUES(105, 5);
INSERT INTO `voices_theme_to_audio` VALUES(106, 3);
INSERT INTO `voices_theme_to_audio` VALUES(107, 8);
INSERT INTO `voices_theme_to_audio` VALUES(108, 4);
INSERT INTO `voices_theme_to_audio` VALUES(109, 6);
INSERT INTO `voices_theme_to_audio` VALUES(110, 9);
INSERT INTO `voices_theme_to_audio` VALUES(111, 5);
INSERT INTO `voices_theme_to_audio` VALUES(112, 9);
INSERT INTO `voices_theme_to_audio` VALUES(113, 3);
INSERT INTO `voices_theme_to_audio` VALUES(114, 4);
INSERT INTO `voices_theme_to_audio` VALUES(115, 2);
INSERT INTO `voices_theme_to_audio` VALUES(116, 4);
INSERT INTO `voices_theme_to_audio` VALUES(117, 5);
INSERT INTO `voices_theme_to_audio` VALUES(118, 10);
INSERT INTO `voices_theme_to_audio` VALUES(119, 6);
INSERT INTO `voices_theme_to_audio` VALUES(120, 6);
INSERT INTO `voices_theme_to_audio` VALUES(121, 7);
INSERT INTO `voices_theme_to_audio` VALUES(122, 6);
INSERT INTO `voices_theme_to_audio` VALUES(123, 6);
INSERT INTO `voices_theme_to_audio` VALUES(124, 3);
INSERT INTO `voices_theme_to_audio` VALUES(125, 9);
INSERT INTO `voices_theme_to_audio` VALUES(126, 1);
INSERT INTO `voices_theme_to_audio` VALUES(127, 8);
INSERT INTO `voices_theme_to_audio` VALUES(128, 1);
INSERT INTO `voices_theme_to_audio` VALUES(129, 5);
INSERT INTO `voices_theme_to_audio` VALUES(130, 7);
INSERT INTO `voices_theme_to_audio` VALUES(131, 1);
INSERT INTO `voices_theme_to_audio` VALUES(132, 3);
INSERT INTO `voices_theme_to_audio` VALUES(133, 8);
INSERT INTO `voices_theme_to_audio` VALUES(134, 1);
INSERT INTO `voices_theme_to_audio` VALUES(135, 9);
INSERT INTO `voices_theme_to_audio` VALUES(136, 1);
INSERT INTO `voices_theme_to_audio` VALUES(136, 5);
INSERT INTO `voices_theme_to_audio` VALUES(137, 4);
INSERT INTO `voices_theme_to_audio` VALUES(138, 6);
INSERT INTO `voices_theme_to_audio` VALUES(139, 7);
INSERT INTO `voices_theme_to_audio` VALUES(140, 9);
INSERT INTO `voices_theme_to_audio` VALUES(141, 5);
INSERT INTO `voices_theme_to_audio` VALUES(142, 1);
INSERT INTO `voices_theme_to_audio` VALUES(143, 8);
INSERT INTO `voices_theme_to_audio` VALUES(144, 7);
INSERT INTO `voices_theme_to_audio` VALUES(145, 4);
INSERT INTO `voices_theme_to_audio` VALUES(146, 9);
INSERT INTO `voices_theme_to_audio` VALUES(147, 10);
INSERT INTO `voices_theme_to_audio` VALUES(148, 9);
INSERT INTO `voices_theme_to_audio` VALUES(149, 9);
INSERT INTO `voices_theme_to_audio` VALUES(150, 6);
INSERT INTO `voices_theme_to_audio` VALUES(151, 5);
INSERT INTO `voices_theme_to_audio` VALUES(152, 6);
INSERT INTO `voices_theme_to_audio` VALUES(153, 1);
INSERT INTO `voices_theme_to_audio` VALUES(154, 1);
INSERT INTO `voices_theme_to_audio` VALUES(155, 8);
INSERT INTO `voices_theme_to_audio` VALUES(156, 9);
INSERT INTO `voices_theme_to_audio` VALUES(157, 1);
INSERT INTO `voices_theme_to_audio` VALUES(158, 6);
INSERT INTO `voices_theme_to_audio` VALUES(159, 10);
INSERT INTO `voices_theme_to_audio` VALUES(160, 6);
INSERT INTO `voices_theme_to_audio` VALUES(161, 3);
INSERT INTO `voices_theme_to_audio` VALUES(162, 10);
INSERT INTO `voices_theme_to_audio` VALUES(163, 9);
INSERT INTO `voices_theme_to_audio` VALUES(164, 10);
INSERT INTO `voices_theme_to_audio` VALUES(165, 1);
INSERT INTO `voices_theme_to_audio` VALUES(166, 7);
INSERT INTO `voices_theme_to_audio` VALUES(167, 3);
INSERT INTO `voices_theme_to_audio` VALUES(168, 5);
INSERT INTO `voices_theme_to_audio` VALUES(169, 2);
INSERT INTO `voices_theme_to_audio` VALUES(170, 9);
INSERT INTO `voices_theme_to_audio` VALUES(171, 4);
INSERT INTO `voices_theme_to_audio` VALUES(172, 6);
INSERT INTO `voices_theme_to_audio` VALUES(173, 9);
INSERT INTO `voices_theme_to_audio` VALUES(174, 1);
INSERT INTO `voices_theme_to_audio` VALUES(175, 3);
INSERT INTO `voices_theme_to_audio` VALUES(176, 3);
INSERT INTO `voices_theme_to_audio` VALUES(177, 9);
INSERT INTO `voices_theme_to_audio` VALUES(178, 3);
INSERT INTO `voices_theme_to_audio` VALUES(179, 2);
INSERT INTO `voices_theme_to_audio` VALUES(180, 8);
INSERT INTO `voices_theme_to_audio` VALUES(181, 8);
INSERT INTO `voices_theme_to_audio` VALUES(182, 6);
INSERT INTO `voices_theme_to_audio` VALUES(183, 3);
INSERT INTO `voices_theme_to_audio` VALUES(184, 9);
INSERT INTO `voices_theme_to_audio` VALUES(185, 6);
INSERT INTO `voices_theme_to_audio` VALUES(186, 10);
INSERT INTO `voices_theme_to_audio` VALUES(187, 8);
INSERT INTO `voices_theme_to_audio` VALUES(188, 7);
INSERT INTO `voices_theme_to_audio` VALUES(189, 6);
INSERT INTO `voices_theme_to_audio` VALUES(190, 7);
INSERT INTO `voices_theme_to_audio` VALUES(191, 3);
INSERT INTO `voices_theme_to_audio` VALUES(192, 8);
INSERT INTO `voices_theme_to_audio` VALUES(193, 7);
INSERT INTO `voices_theme_to_audio` VALUES(194, 1);
INSERT INTO `voices_theme_to_audio` VALUES(195, 7);
INSERT INTO `voices_theme_to_audio` VALUES(196, 8);
INSERT INTO `voices_theme_to_audio` VALUES(197, 7);
INSERT INTO `voices_theme_to_audio` VALUES(198, 10);
INSERT INTO `voices_theme_to_audio` VALUES(199, 2);
INSERT INTO `voices_theme_to_audio` VALUES(200, 9);
INSERT INTO `voices_theme_to_audio` VALUES(201, 8);
INSERT INTO `voices_theme_to_audio` VALUES(202, 5);
INSERT INTO `voices_theme_to_audio` VALUES(203, 4);
INSERT INTO `voices_theme_to_audio` VALUES(204, 7);
INSERT INTO `voices_theme_to_audio` VALUES(205, 6);
INSERT INTO `voices_theme_to_audio` VALUES(206, 7);
INSERT INTO `voices_theme_to_audio` VALUES(207, 9);
INSERT INTO `voices_theme_to_audio` VALUES(208, 5);
INSERT INTO `voices_theme_to_audio` VALUES(209, 10);
INSERT INTO `voices_theme_to_audio` VALUES(210, 1);
INSERT INTO `voices_theme_to_audio` VALUES(211, 2);
INSERT INTO `voices_theme_to_audio` VALUES(212, 8);
INSERT INTO `voices_theme_to_audio` VALUES(213, 6);
INSERT INTO `voices_theme_to_audio` VALUES(214, 4);
INSERT INTO `voices_theme_to_audio` VALUES(215, 6);
INSERT INTO `voices_theme_to_audio` VALUES(216, 2);
INSERT INTO `voices_theme_to_audio` VALUES(217, 4);
INSERT INTO `voices_theme_to_audio` VALUES(218, 4);
INSERT INTO `voices_theme_to_audio` VALUES(219, 9);
INSERT INTO `voices_theme_to_audio` VALUES(220, 9);
INSERT INTO `voices_theme_to_audio` VALUES(221, 1);
INSERT INTO `voices_theme_to_audio` VALUES(222, 1);
INSERT INTO `voices_theme_to_audio` VALUES(223, 7);
INSERT INTO `voices_theme_to_audio` VALUES(224, 7);
INSERT INTO `voices_theme_to_audio` VALUES(225, 1);
INSERT INTO `voices_theme_to_audio` VALUES(226, 3);
INSERT INTO `voices_theme_to_audio` VALUES(227, 5);
INSERT INTO `voices_theme_to_audio` VALUES(228, 8);
INSERT INTO `voices_theme_to_audio` VALUES(229, 3);
INSERT INTO `voices_theme_to_audio` VALUES(230, 6);
INSERT INTO `voices_theme_to_audio` VALUES(231, 6);
INSERT INTO `voices_theme_to_audio` VALUES(232, 10);
INSERT INTO `voices_theme_to_audio` VALUES(233, 1);
INSERT INTO `voices_theme_to_audio` VALUES(234, 10);
INSERT INTO `voices_theme_to_audio` VALUES(235, 6);
INSERT INTO `voices_theme_to_audio` VALUES(236, 6);
INSERT INTO `voices_theme_to_audio` VALUES(237, 6);
INSERT INTO `voices_theme_to_audio` VALUES(238, 5);
INSERT INTO `voices_theme_to_audio` VALUES(239, 10);
INSERT INTO `voices_theme_to_audio` VALUES(240, 6);
INSERT INTO `voices_theme_to_audio` VALUES(241, 6);
INSERT INTO `voices_theme_to_audio` VALUES(242, 2);
INSERT INTO `voices_theme_to_audio` VALUES(243, 3);
INSERT INTO `voices_theme_to_audio` VALUES(244, 2);
INSERT INTO `voices_theme_to_audio` VALUES(245, 6);
INSERT INTO `voices_theme_to_audio` VALUES(246, 9);
INSERT INTO `voices_theme_to_audio` VALUES(247, 4);
INSERT INTO `voices_theme_to_audio` VALUES(248, 10);
INSERT INTO `voices_theme_to_audio` VALUES(249, 2);
INSERT INTO `voices_theme_to_audio` VALUES(250, 2);
INSERT INTO `voices_theme_to_audio` VALUES(251, 9);
INSERT INTO `voices_theme_to_audio` VALUES(252, 2);
INSERT INTO `voices_theme_to_audio` VALUES(253, 3);
INSERT INTO `voices_theme_to_audio` VALUES(254, 5);
INSERT INTO `voices_theme_to_audio` VALUES(255, 9);
INSERT INTO `voices_theme_to_audio` VALUES(256, 4);
INSERT INTO `voices_theme_to_audio` VALUES(257, 8);
INSERT INTO `voices_theme_to_audio` VALUES(258, 3);
INSERT INTO `voices_theme_to_audio` VALUES(259, 1);
INSERT INTO `voices_theme_to_audio` VALUES(260, 10);
INSERT INTO `voices_theme_to_audio` VALUES(261, 9);
INSERT INTO `voices_theme_to_audio` VALUES(262, 7);
INSERT INTO `voices_theme_to_audio` VALUES(263, 4);
INSERT INTO `voices_theme_to_audio` VALUES(263, 9);
INSERT INTO `voices_theme_to_audio` VALUES(264, 9);
INSERT INTO `voices_theme_to_audio` VALUES(265, 6);
INSERT INTO `voices_theme_to_audio` VALUES(266, 5);
INSERT INTO `voices_theme_to_audio` VALUES(267, 5);
INSERT INTO `voices_theme_to_audio` VALUES(268, 2);
INSERT INTO `voices_theme_to_audio` VALUES(269, 10);
INSERT INTO `voices_theme_to_audio` VALUES(270, 5);
INSERT INTO `voices_theme_to_audio` VALUES(271, 7);
INSERT INTO `voices_theme_to_audio` VALUES(272, 5);
INSERT INTO `voices_theme_to_audio` VALUES(273, 6);
INSERT INTO `voices_theme_to_audio` VALUES(274, 9);
INSERT INTO `voices_theme_to_audio` VALUES(275, 7);
INSERT INTO `voices_theme_to_audio` VALUES(276, 2);
INSERT INTO `voices_theme_to_audio` VALUES(277, 7);
INSERT INTO `voices_theme_to_audio` VALUES(278, 10);
INSERT INTO `voices_theme_to_audio` VALUES(279, 2);
INSERT INTO `voices_theme_to_audio` VALUES(280, 4);
INSERT INTO `voices_theme_to_audio` VALUES(281, 2);
INSERT INTO `voices_theme_to_audio` VALUES(282, 2);
INSERT INTO `voices_theme_to_audio` VALUES(283, 4);
INSERT INTO `voices_theme_to_audio` VALUES(284, 4);
INSERT INTO `voices_theme_to_audio` VALUES(285, 4);
INSERT INTO `voices_theme_to_audio` VALUES(286, 3);
INSERT INTO `voices_theme_to_audio` VALUES(287, 3);
INSERT INTO `voices_theme_to_audio` VALUES(288, 3);
INSERT INTO `voices_theme_to_audio` VALUES(289, 6);
INSERT INTO `voices_theme_to_audio` VALUES(290, 8);
INSERT INTO `voices_theme_to_audio` VALUES(291, 5);
INSERT INTO `voices_theme_to_audio` VALUES(292, 7);
INSERT INTO `voices_theme_to_audio` VALUES(293, 2);
INSERT INTO `voices_theme_to_audio` VALUES(294, 2);
INSERT INTO `voices_theme_to_audio` VALUES(295, 3);
INSERT INTO `voices_theme_to_audio` VALUES(296, 2);
INSERT INTO `voices_theme_to_audio` VALUES(297, 8);
INSERT INTO `voices_theme_to_audio` VALUES(298, 2);
INSERT INTO `voices_theme_to_audio` VALUES(298, 3);
INSERT INTO `voices_theme_to_audio` VALUES(299, 2);
INSERT INTO `voices_theme_to_audio` VALUES(299, 3);
INSERT INTO `voices_theme_to_audio` VALUES(300, 3);
INSERT INTO `voices_theme_to_audio` VALUES(300, 5);
INSERT INTO `voices_theme_to_audio` VALUES(301, 1);
INSERT INTO `voices_theme_to_audio` VALUES(302, 2);
INSERT INTO `voices_theme_to_audio` VALUES(303, 1);
INSERT INTO `voices_theme_to_audio` VALUES(303, 2);
INSERT INTO `voices_theme_to_audio` VALUES(304, 1);
INSERT INTO `voices_theme_to_audio` VALUES(304, 2);
INSERT INTO `voices_theme_to_audio` VALUES(305, 1);
INSERT INTO `voices_theme_to_audio` VALUES(305, 2);
INSERT INTO `voices_theme_to_audio` VALUES(306, 1);
INSERT INTO `voices_theme_to_audio` VALUES(306, 2);
INSERT INTO `voices_theme_to_audio` VALUES(307, 1);
INSERT INTO `voices_theme_to_audio` VALUES(307, 2);
INSERT INTO `voices_theme_to_audio` VALUES(308, 1);
INSERT INTO `voices_theme_to_audio` VALUES(308, 2);
INSERT INTO `voices_theme_to_audio` VALUES(309, 1);
INSERT INTO `voices_theme_to_audio` VALUES(309, 2);
INSERT INTO `voices_theme_to_audio` VALUES(309, 3);
INSERT INTO `voices_theme_to_audio` VALUES(310, 1);
INSERT INTO `voices_theme_to_audio` VALUES(310, 2);
INSERT INTO `voices_theme_to_audio` VALUES(311, 1);
INSERT INTO `voices_theme_to_audio` VALUES(311, 2);
INSERT INTO `voices_theme_to_audio` VALUES(312, 6);
INSERT INTO `voices_theme_to_audio` VALUES(313, 2);
INSERT INTO `voices_theme_to_audio` VALUES(314, 1);
INSERT INTO `voices_theme_to_audio` VALUES(314, 2);
INSERT INTO `voices_theme_to_audio` VALUES(314, 3);
INSERT INTO `voices_theme_to_audio` VALUES(314, 4);
INSERT INTO `voices_theme_to_audio` VALUES(314, 5);
INSERT INTO `voices_theme_to_audio` VALUES(314, 6);
INSERT INTO `voices_theme_to_audio` VALUES(315, 1);
INSERT INTO `voices_theme_to_audio` VALUES(316, 2);
INSERT INTO `voices_theme_to_audio` VALUES(317, 2);
INSERT INTO `voices_theme_to_audio` VALUES(318, 1);
INSERT INTO `voices_theme_to_audio` VALUES(333, 1);
INSERT INTO `voices_theme_to_audio` VALUES(333, 3);
INSERT INTO `voices_theme_to_audio` VALUES(333, 5);
INSERT INTO `voices_theme_to_audio` VALUES(334, 1);
INSERT INTO `voices_theme_to_audio` VALUES(334, 3);
INSERT INTO `voices_theme_to_audio` VALUES(334, 5);
INSERT INTO `voices_theme_to_audio` VALUES(335, 1);
INSERT INTO `voices_theme_to_audio` VALUES(335, 3);
INSERT INTO `voices_theme_to_audio` VALUES(336, 1);
INSERT INTO `voices_theme_to_audio` VALUES(336, 3);
INSERT INTO `voices_theme_to_audio` VALUES(337, 1);
INSERT INTO `voices_theme_to_audio` VALUES(337, 2);
INSERT INTO `voices_theme_to_audio` VALUES(337, 3);
INSERT INTO `voices_theme_to_audio` VALUES(338, 1);

-- --------------------------------------------------------

--
-- Struktur des Views `voices_audio_view`
--
DROP TABLE IF EXISTS `voices_audio_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `voices_audio_view` AS select `a`.`id` AS `id`,`a`.`name` AS `name`,`a`.`author` AS `author`,`a`.`language_id` AS `language_id`,`a`.`country_id` AS `country_id`,`a`.`gender_id` AS `gender_id`,if((`a`.`language_id` = 1),concat('<span lang="ja">',`g`.`japanese`,'</span>'),`g`.`english`) AS `genderAll`,if((`a`.`language_id` = 1),'ja','en') AS `css`,`g`.`english` AS `gender_en`,`g`.`japanese` AS `gender_ja`,concat(`g`.`english`,' // <span lang="ja">',`g`.`japanese`,'</span>') AS `gender`,`a`.`age` AS `age`,(case when (`a`.`age` < 20) then '0-20' when ((`a`.`age` >= 20) and (`a`.`age` <= 40)) then '20-40' when ((`a`.`age` >= 40) and (`a`.`age` <= 60)) then '40-60' when ((`a`.`age` >= 60) and (`a`.`age` <= 80)) then '60-80' else '80+' end) AS `age_scale`,`l`.`name` AS `language`,`c`.`name` AS `country`,`a`.`title` AS `title`,`a`.`minutes` AS `min`,(case when (`a`.`minutes` < 0.3) then '1' when ((`a`.`minutes` < 0.3) and (`a`.`minutes` <= 0.4)) then '2' when ((`a`.`minutes` < 0.4) and (`a`.`minutes` <= 0.5)) then '3' when ((`a`.`minutes` < 0.5) and (`a`.`minutes` <= 0.6)) then '4' when ((`a`.`minutes` < 0.6) and (`a`.`minutes` <= 0.7)) then '5' when ((`a`.`minutes` < 0.7) and (`a`.`minutes` <= 0.8)) then '6' when ((`a`.`minutes` < 0.8) and (`a`.`minutes` <= 0.9)) then '7' when ((`a`.`minutes` < 0.9) and (`a`.`minutes` <= 1.0)) then '8' when ((`a`.`minutes` < 1.0) and (`a`.`minutes` <= 1.1)) then '9' when ((`a`.`minutes` < 1.1) and (`a`.`minutes` <= 1.2)) then '11' when ((`a`.`minutes` < 1.2) and (`a`.`minutes` <= 1.3)) then '12' when ((`a`.`minutes` < 1.3) and (`a`.`minutes` <= 1.4)) then '13' when ((`a`.`minutes` < 1.4) and (`a`.`minutes` <= 1.5)) then '14' when ((`a`.`minutes` < 1.5) and (`a`.`minutes` <= 1.6)) then '15' when ((`a`.`minutes` < 1.6) and (`a`.`minutes` <= 1.7)) then '16' when ((`a`.`minutes` < 1.7) and (`a`.`minutes` <= 1.8)) then '17' when ((`a`.`minutes` < 1.8) and (`a`.`minutes` <= 1.9)) then '18' else '19' end) AS `height`,group_concat(`t`.`english`,' // <span lang="ja">',`t`.`japanese`,'</span>' separator ', ') AS `theme`,group_concat(cast(`t`.`id` as char charset utf8) separator ',') AS `theme_id` from (((((`voices_audio` `a` join `voices_gender` `g` on((`a`.`gender_id` = `g`.`id`))) join `voices_language` `l` on((`a`.`language_id` = `l`.`id`))) join `voices_country` `c` on((`a`.`country_id` = `c`.`id`))) left join `voices_theme_to_audio` `ta` on((`a`.`id` = `ta`.`audio_id`))) left join `voices_theme` `t` on((`t`.`id` = `ta`.`theme_id`))) where (`a`.`is_authorised` = 1) group by `ta`.`audio_id` order by `ta`.`audio_id` desc;

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `voices_audio`
--
ALTER TABLE `voices_audio`
  ADD CONSTRAINT `audio_ibfk_1` FOREIGN KEY (`language_id`) REFERENCES `voices_language` (`id`),
  ADD CONSTRAINT `audio_ibfk_2` FOREIGN KEY (`country_id`) REFERENCES `voices_country` (`id`),
  ADD CONSTRAINT `gender_ibfk_1` FOREIGN KEY (`gender_id`) REFERENCES `voices_gender` (`id`);

--
-- Constraints der Tabelle `voices_theme_to_audio`
--
ALTER TABLE `voices_theme_to_audio`
  ADD CONSTRAINT `audio_id` FOREIGN KEY (`audio_id`) REFERENCES `voices_audio` (`id`),
  ADD CONSTRAINT `theme_id` FOREIGN KEY (`theme_id`) REFERENCES `voices_theme` (`id`);
