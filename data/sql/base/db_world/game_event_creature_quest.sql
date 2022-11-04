/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE TABLE IF NOT EXISTS `game_event_creature_quest` (
  `eventEntry` tinyint unsigned NOT NULL COMMENT 'Entry of the game event.',
  `id` int unsigned NOT NULL DEFAULT '0',
  `quest` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`quest`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DELETE FROM `game_event_creature_quest`;
/*!40000 ALTER TABLE `game_event_creature_quest` DISABLE KEYS */;
INSERT INTO `game_event_creature_quest` (`eventEntry`, `id`, `quest`) VALUES
	(2, 1365, 7062),
	(2, 2916, 7063),
	(2, 9550, 6964),
	(2, 13417, 7061),
	(2, 13418, 6961),
	(2, 13418, 6983),
	(2, 13418, 6984),
	(2, 13418, 8799),
	(2, 13429, 7024),
	(2, 13431, 7021),
	(2, 13433, 7022),
	(2, 13433, 7043),
	(2, 13433, 7045),
	(2, 13433, 8763),
	(2, 13435, 7023),
	(2, 13444, 7025),
	(2, 13445, 6962),
	(2, 13636, 6983),
	(2, 13636, 7043),
	(10, 14305, 171),
	(10, 14305, 29093),
	(10, 14305, 29106),
	(10, 14305, 29107),
	(10, 14305, 29117),
	(10, 14305, 29119),
	(10, 14444, 5502),
	(10, 14444, 29190),
	(10, 14444, 29191),
	(11, 15011, 8149),
	(11, 15012, 8150),
	(12, 15197, 29376),
	(12, 15197, 29377),
	(7, 15549, 8619),
	(7, 15556, 8635),
	(7, 15557, 8636),
	(7, 15558, 8642),
	(7, 15559, 8643),
	(7, 15560, 8644),
	(7, 15561, 8645),
	(7, 15562, 8646),
	(7, 15563, 8647),
	(7, 15564, 8648),
	(7, 15565, 8649),
	(7, 15566, 8650),
	(7, 15567, 8651),
	(7, 15568, 8652),
	(7, 15569, 8653),
	(7, 15570, 8654),
	(7, 15572, 8670),
	(7, 15573, 8671),
	(7, 15574, 8672),
	(7, 15575, 8673),
	(7, 15576, 8674),
	(7, 15577, 8675),
	(7, 15578, 8676),
	(7, 15579, 8677),
	(7, 15580, 8678),
	(7, 15581, 8679),
	(7, 15582, 8680),
	(7, 15583, 8681),
	(7, 15584, 8682),
	(7, 15585, 8683),
	(7, 15586, 8684),
	(7, 15587, 8685),
	(7, 15588, 8686),
	(7, 15592, 8688),
	(7, 15593, 8713),
	(7, 15594, 8714),
	(7, 15595, 8715),
	(7, 15596, 8716),
	(7, 15597, 8717),
	(7, 15598, 8718),
	(7, 15599, 8719),
	(7, 15600, 8720),
	(7, 15601, 8721),
	(7, 15602, 8722),
	(7, 15603, 8723),
	(7, 15604, 8724),
	(7, 15605, 8725),
	(7, 15606, 8726),
	(7, 15607, 8727),
	(2, 15732, 8827),
	(2, 15732, 8828),
	(6, 15732, 8860),
	(6, 15732, 8861),
	(7, 15864, 8868),
	(7, 15871, 8866),
	(7, 15891, 8873),
	(7, 15891, 8874),
	(7, 15891, 8875),
	(7, 15892, 8870),
	(7, 15892, 8871),
	(7, 15892, 8872),
	(7, 15895, 8867),
	(7, 15895, 8883),
	(1, 16817, 9365),
	(1, 16818, 9339),
	(10, 17538, 10968),
	(24, 18927, 11441),
	(9, 18927, 13484),
	(26, 18927, 14022),
	(12, 18927, 29074),
	(24, 19148, 11441),
	(9, 19148, 13484),
	(12, 19148, 29074),
	(24, 19169, 11446),
	(9, 19169, 13483),
	(26, 19169, 14036),
	(12, 19169, 29400),
	(24, 19171, 11441),
	(9, 19171, 13484),
	(12, 19171, 29074),
	(24, 19172, 11441),
	(9, 19172, 13484),
	(12, 19172, 29074),
	(24, 19173, 11441),
	(9, 19173, 13484),
	(12, 19173, 29074),
	(24, 19175, 11446),
	(9, 19175, 13483),
	(26, 19175, 14036),
	(12, 19175, 29400),
	(24, 19176, 11446),
	(9, 19176, 13483),
	(12, 19176, 29400),
	(24, 19177, 11446),
	(9, 19177, 13483),
	(12, 19177, 29400),
	(24, 19178, 11446),
	(9, 19178, 13483),
	(12, 19178, 29400),
	(24, 20102, 11446),
	(9, 20102, 13483),
	(9, 20102, 13484),
	(26, 20102, 14022),
	(26, 20102, 14036),
	(12, 20102, 29074),
	(12, 20102, 29400),
	(10, 22817, 10945),
	(10, 22817, 10951),
	(10, 22817, 10953),
	(10, 22817, 10963),
	(10, 22817, 10967),
	(10, 22817, 11975),
	(10, 22818, 10950),
	(10, 22818, 10952),
	(10, 22818, 10954),
	(10, 22818, 10956),
	(10, 22818, 10962),
	(10, 22818, 10966),
	(10, 22819, 10942),
	(10, 22819, 10943),
	(2, 23010, 7023),
	(24, 23486, 11117),
	(24, 23486, 11118),
	(24, 23558, 11122),
	(24, 23558, 11318),
	(24, 23627, 11293),
	(24, 23628, 11294),
	(12, 23973, 12139),
	(24, 24468, 29396),
	(24, 24497, 11409),
	(24, 24497, 11412),
	(24, 24498, 11407),
	(24, 24499, 11408),
	(24, 24510, 29397),
	(12, 24519, 12135),
	(24, 24657, 11120),
	(24, 24657, 11431),
	(1, 25324, 11891),
	(1, 25883, 11805),
	(1, 25887, 11804),
	(1, 25888, 11806),
	(1, 25889, 11807),
	(1, 25890, 11808),
	(1, 25891, 11809),
	(1, 25892, 11810),
	(1, 25893, 11811),
	(1, 25894, 11812),
	(1, 25895, 11813),
	(1, 25896, 11814),
	(1, 25897, 11815),
	(1, 25898, 11816),
	(1, 25899, 11817),
	(1, 25900, 11818),
	(1, 25901, 11819),
	(1, 25902, 11820),
	(1, 25903, 11821),
	(1, 25904, 11822),
	(1, 25905, 11823),
	(1, 25906, 11824),
	(1, 25907, 11825),
	(1, 25908, 11826),
	(1, 25909, 11827),
	(1, 25910, 11583),
	(1, 25911, 11828),
	(1, 25912, 11829),
	(1, 25913, 11830),
	(1, 25914, 11831),
	(1, 25915, 11832),
	(1, 25916, 11833),
	(1, 25917, 11834),
	(24, 27215, 12022),
	(24, 27216, 12191),
	(7, 30348, 13012),
	(7, 30357, 13013),
	(7, 30358, 13014),
	(7, 30359, 13015),
	(7, 30360, 13016),
	(7, 30362, 13018),
	(7, 30363, 13019),
	(7, 30364, 13033),
	(7, 30365, 13024),
	(7, 30367, 13025),
	(7, 30368, 13026),
	(7, 30369, 13027),
	(7, 30370, 13028),
	(7, 30371, 13029),
	(7, 30372, 13030),
	(7, 30373, 13031),
	(7, 30374, 13032),
	(7, 30375, 13020),
	(7, 30531, 13017),
	(7, 30533, 13022),
	(7, 30534, 13023),
	(7, 30535, 13066),
	(7, 30536, 13021),
	(7, 30537, 13065),
	(7, 30538, 13067),
	(9, 32798, 13479),
	(9, 32799, 13480),
	(1, 32801, 13485),
	(1, 32802, 13486),
	(1, 32806, 13490),
	(1, 32807, 13491),
	(1, 32808, 13492),
	(9, 32836, 13502),
	(9, 32837, 13503),
	(10, 33532, 13930),
	(10, 33532, 13934),
	(10, 33532, 13938),
	(10, 33532, 13951),
	(10, 33532, 13955),
	(10, 33532, 13957),
	(10, 33532, 13960),
	(10, 33532, 28880),
	(10, 33533, 13929),
	(10, 33533, 13933),
	(10, 33533, 13937),
	(10, 33533, 13950),
	(10, 33533, 13954),
	(10, 33533, 13956),
	(10, 33533, 13959),
	(10, 33533, 28879),
	(10, 34365, 13926),
	(10, 34365, 13927),
	(51, 34435, 13952),
	(51, 34476, 14174),
	(51, 34477, 14175),
	(51, 34478, 14167),
	(51, 34479, 14170),
	(51, 34480, 14176),
	(51, 34481, 14168),
	(51, 34482, 14177),
	(51, 34483, 14171),
	(51, 34484, 14169),
	(51, 35256, 14166),
	(51, 35260, 14172),
	(8, 37172, 24536),
	(8, 37172, 24541),
	(8, 37172, 24576),
	(8, 37172, 24638),
	(8, 37172, 24645),
	(8, 37172, 24647),
	(8, 37172, 24648),
	(8, 37172, 24649),
	(8, 37172, 24650),
	(8, 37172, 24651),
	(8, 37172, 24652),
	(8, 37172, 24850),
	(8, 37172, 28935),
	(8, 37675, 24629),
	(8, 37675, 24635),
	(8, 37675, 24636),
	(8, 37887, 24597),
	(8, 38039, 24610),
	(8, 38040, 24611),
	(8, 38041, 24609),
	(8, 38042, 24612),
	(8, 38043, 24615),
	(8, 38044, 24614),
	(8, 38045, 24613),
	(8, 38066, 24655),
	(8, 38066, 24656),
	(8, 38066, 24658),
	(8, 38066, 24659),
	(8, 38066, 24660),
	(8, 38066, 24662),
	(8, 38066, 24663),
	(8, 38066, 24664),
	(8, 38066, 24665),
	(8, 38066, 24666),
	(8, 38066, 24848),
	(8, 38066, 28934),
	(8, 38293, 24804),
	(8, 38295, 24805),
	(8, 38325, 24657),
	(8, 38325, 24849),
	(8, 38328, 24576),
	(8, 38328, 24851),
	(51, 46901, 27841),
	(51, 46908, 27846),
	(12, 51665, 29075),
	(12, 51934, 29430),
	(10, 51988, 1468),
	(10, 51989, 172),
	(12, 52064, 29371),
	(12, 53763, 29431),
	(7, 55210, 29741),
	(7, 55211, 29742),
	(7, 55216, 29734),
	(7, 55217, 29735),
	(7, 55218, 29736),
	(7, 55219, 29737),
	(7, 55224, 29739),
	(7, 55227, 29740),
	(7, 55228, 29738);
/*!40000 ALTER TABLE `game_event_creature_quest` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
