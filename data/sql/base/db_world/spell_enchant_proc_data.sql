/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE TABLE IF NOT EXISTS `spell_enchant_proc_data` (
  `EnchantID` int unsigned NOT NULL,
  `Chance` float NOT NULL DEFAULT '0',
  `ProcsPerMinute` float NOT NULL DEFAULT '0',
  `HitMask` int unsigned NOT NULL DEFAULT '0',
  `AttributesMask` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`EnchantID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Spell enchant proc data';

DELETE FROM `spell_enchant_proc_data`;
/*!40000 ALTER TABLE `spell_enchant_proc_data` DISABLE KEYS */;
INSERT INTO `spell_enchant_proc_data` (`EnchantID`, `Chance`, `ProcsPerMinute`, `HitMask`, `AttributesMask`) VALUES
	(2, 0, 8.8, 0, 0),
	(12, 0, 8.8, 0, 0),
	(323, 0, 8.53, 0, 0),
	(324, 0, 8.53, 0, 0),
	(325, 0, 8.53, 0, 0),
	(524, 0, 8.8, 0, 0),
	(623, 0, 8.53, 0, 0),
	(624, 0, 8.53, 0, 0),
	(625, 0, 8.53, 0, 0),
	(703, 0, 21.43, 0, 0),
	(704, 0, 21.43, 0, 0),
	(705, 0, 21.43, 0, 0),
	(706, 0, 21.43, 0, 0),
	(803, 0, 6, 0, 0),
	(912, 0, 6, 0, 0),
	(1667, 0, 8.8, 0, 0),
	(1668, 0, 8.8, 0, 0),
	(1894, 0, 3, 0, 0),
	(1898, 0, 6, 0, 0),
	(1899, 0, 1, 0, 0),
	(1900, 0, 1, 0, 0),
	(2635, 0, 8.8, 0, 0),
	(2641, 0, 8.53, 0, 0),
	(2644, 0, 21.43, 0, 0),
	(2673, 0, 1, 0, 0),
	(2675, 0, 1, 0, 0),
	(3225, 0, 1, 0, 0),
	(3239, 0, 3, 0, 0),
	(3241, 0, 3, 0, 0),
	(3251, 0, 3, 0, 0),
	(3273, 0, 3, 0, 0),
	(3368, 0, 1, 0, 0),
	(3369, 0, 1, 0, 0),
	(3768, 0, 8.53, 0, 0),
	(3769, 0, 8.53, 0, 0),
	(3772, 0, 21.43, 0, 0),
	(3773, 0, 21.43, 0, 0),
	(3782, 0, 8.8, 0, 0),
	(3783, 0, 8.8, 0, 0),
	(3784, 0, 8.8, 0, 0),
	(3789, 0, 1, 0, 0),
	(3869, 0, 1, 0, 0),
	(4098, 0, 1, 0, 0),
	(4099, 0, 1, 0, 0);
/*!40000 ALTER TABLE `spell_enchant_proc_data` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
