
SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values ​​for the initial level
SET @class = 1; -- Clase: Warrior
SET @baseHP = (SELECT `BaseHP` FROM `player_class_stats` WHERE `Level` = @startLevel AND `Class` = @class);
SET @strength = (SELECT `Strength` FROM `player_class_stats` WHERE `Level` = @startLevel AND `Class` = @class);
SET @agility = (SELECT `Agility` FROM `player_class_stats` WHERE `Level` = @startLevel AND `Class` = @class);
SET @stamina = (SELECT `Stamina` FROM `player_class_stats` WHERE `Level` = @startLevel AND `Class` = @class);
SET @intellect = (SELECT `Intellect` FROM `player_class_stats` WHERE `Level` = @startLevel AND `Class` = @class);
SET @spirit = (SELECT `Spirit` FROM `player_class_stats` WHERE `Level` = @startLevel AND `Class` = @class);

-- Generate the rows with calculated values
INSERT IGNORE INTO `player_class_stats` (`Class`, `Level`, `BaseHP`, `BaseMana`, `Strength`, `Agility`, `Stamina`, `Intellect`, `Spirit`)
SELECT
    @class AS `Class`,
    levels.`Level` AS `Level`,
    ROUND(@baseHP * POWER(1.03, levels.`Level` - @startLevel)) AS `BaseHP`,
    0 AS `BaseMana`,
    ROUND(@strength * POWER(1.03, levels.`Level` - @startLevel)) AS `Strength`,
    ROUND(@agility * POWER(1.03, levels.`Level` - @startLevel)) AS `Agility`,
    ROUND(@stamina * POWER(1.03, levels.`Level` - @startLevel)) AS `Stamina`,
    ROUND(@intellect * POWER(1.03, levels.`Level` - @startLevel)) AS `Intellect`,
    ROUND(@spirit * POWER(1.03, levels.`Level` - @startLevel)) AS `Spirit`
FROM (
    SELECT (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) AS `Level`
    FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
    CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
    CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
    WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
) AS levels
WHERE NOT EXISTS (
    SELECT 1 FROM `player_class_stats`
    WHERE `Level` = levels.`Level` AND `Class` = @class
);


SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values ​​for the initial levelSET @class = 2; -- Clase: Paladin
SET @baseHP = (SELECT `BaseHP` FROM `player_class_stats` WHERE `Level` = @startLevel AND `Class` = @class);
SET @strength = (SELECT `Strength` FROM `player_class_stats` WHERE `Level` = @startLevel AND `Class` = @class);
SET @agility = (SELECT `Agility` FROM `player_class_stats` WHERE `Level` = @startLevel AND `Class` = @class);
SET @stamina = (SELECT `Stamina` FROM `player_class_stats` WHERE `Level` = @startLevel AND `Class` = @class);
SET @intellect = (SELECT `Intellect` FROM `player_class_stats` WHERE `Level` = @startLevel AND `Class` = @class);
SET @spirit = (SELECT `Spirit` FROM `player_class_stats` WHERE `Level` = @startLevel AND `Class` = @class);

-- Generate the rows with calculated values
INSERT IGNORE INTO `player_class_stats` (`Class`, `Level`, `BaseHP`, `BaseMana`, `Strength`, `Agility`, `Stamina`, `Intellect`, `Spirit`)
SELECT
    @class AS `Class`,
    levels.`Level` AS `Level`,
    ROUND(@baseHP * POWER(1.03, levels.`Level` - @startLevel)) AS `BaseHP`,
    3165 AS `BaseMana`,
    ROUND(@strength * POWER(1.03, levels.`Level` - @startLevel)) AS `Strength`,
    ROUND(@agility * POWER(1.03, levels.`Level` - @startLevel)) AS `Agility`,
    ROUND(@stamina * POWER(1.03, levels.`Level` - @startLevel)) AS `Stamina`,
    ROUND(@intellect * POWER(1.03, levels.`Level` - @startLevel)) AS `Intellect`,
    ROUND(@spirit * POWER(1.03, levels.`Level` - @startLevel)) AS `Spirit`
FROM (
    SELECT (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) AS `Level`
    FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
    CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
    CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
    WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
) AS levels
WHERE NOT EXISTS (
    SELECT 1 FROM `player_class_stats`
    WHERE `Level` = levels.`Level` AND `Class` = @class
);


SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values ​​for the initial level
SET @class = 3; -- Clase: Hunter
SET @baseHP = (SELECT `BaseHP` FROM `player_class_stats` WHERE `Level` = @startLevel AND `Class` = @class);
SET @strength = (SELECT `Strength` FROM `player_class_stats` WHERE `Level` = @startLevel AND `Class` = @class);
SET @agility = (SELECT `Agility` FROM `player_class_stats` WHERE `Level` = @startLevel AND `Class` = @class);
SET @stamina = (SELECT `Stamina` FROM `player_class_stats` WHERE `Level` = @startLevel AND `Class` = @class);
SET @intellect = (SELECT `Intellect` FROM `player_class_stats` WHERE `Level` = @startLevel AND `Class` = @class);
SET @spirit = (SELECT `Spirit` FROM `player_class_stats` WHERE `Level` = @startLevel AND `Class` = @class);

-- Generate the rows with calculated values
INSERT IGNORE INTO `player_class_stats` (`Class`, `Level`, `BaseHP`, `BaseMana`, `Strength`, `Agility`, `Stamina`, `Intellect`, `Spirit`)
SELECT
    @class AS `Class`,
    levels.`Level` AS `Level`,
    ROUND(@baseHP * POWER(1.03, levels.`Level` - @startLevel)) AS `BaseHP`,
    3165 AS `BaseMana`,
    ROUND(@strength * POWER(1.03, levels.`Level` - @startLevel)) AS `Strength`,
    ROUND(@agility * POWER(1.03, levels.`Level` - @startLevel)) AS `Agility`,
    ROUND(@stamina * POWER(1.03, levels.`Level` - @startLevel)) AS `Stamina`,
    ROUND(@intellect * POWER(1.03, levels.`Level` - @startLevel)) AS `Intellect`,
    ROUND(@spirit * POWER(1.03, levels.`Level` - @startLevel)) AS `Spirit`
FROM (
    SELECT (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) AS `Level`
    FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
    CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
    CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
    WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
) AS levels
WHERE NOT EXISTS (
    SELECT 1 FROM `player_class_stats`
    WHERE `Level` = levels.`Level` AND `Class` = @class
);


SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values ​​for the initial level
SET @class = 4; -- Clase: Rogue
SET @baseHP = (SELECT `BaseHP` FROM `player_class_stats` WHERE `Level` = @startLevel AND `Class` = @class);
SET @strength = (SELECT `Strength` FROM `player_class_stats` WHERE `Level` = @startLevel AND `Class` = @class);
SET @agility = (SELECT `Agility` FROM `player_class_stats` WHERE `Level` = @startLevel AND `Class` = @class);
SET @stamina = (SELECT `Stamina` FROM `player_class_stats` WHERE `Level` = @startLevel AND `Class` = @class);
SET @intellect = (SELECT `Intellect` FROM `player_class_stats` WHERE `Level` = @startLevel AND `Class` = @class);
SET @spirit = (SELECT `Spirit` FROM `player_class_stats` WHERE `Level` = @startLevel AND `Class` = @class);

-- Generate the rows with calculated values
INSERT IGNORE INTO `player_class_stats` (`Class`, `Level`, `BaseHP`, `BaseMana`, `Strength`, `Agility`, `Stamina`, `Intellect`, `Spirit`)
SELECT
    @class AS `Class`,
    levels.`Level` AS `Level`,
    ROUND(@baseHP * POWER(1.03, levels.`Level` - @startLevel)) AS `BaseHP`,
    0 AS `BaseMana`,
    ROUND(@strength * POWER(1.03, levels.`Level` - @startLevel)) AS `Strength`,
    ROUND(@agility * POWER(1.03, levels.`Level` - @startLevel)) AS `Agility`,
    ROUND(@stamina * POWER(1.03, levels.`Level` - @startLevel)) AS `Stamina`,
    ROUND(@intellect * POWER(1.03, levels.`Level` - @startLevel)) AS `Intellect`,
    ROUND(@spirit * POWER(1.03, levels.`Level` - @startLevel)) AS `Spirit`
FROM (
    SELECT (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) AS `Level`
    FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
    CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
    CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
    WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
) AS levels
WHERE NOT EXISTS (
    SELECT 1 FROM `player_class_stats`
    WHERE `Level` = levels.`Level` AND `Class` = @class
);


SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values ​​for the initial level
SET @class = 5; -- Clase: Priest
SET @baseHP = (SELECT `BaseHP` FROM `player_class_stats` WHERE `Level` = @startLevel AND `Class` = @class);
SET @strength = (SELECT `Strength` FROM `player_class_stats` WHERE `Level` = @startLevel AND `Class` = @class);
SET @agility = (SELECT `Agility` FROM `player_class_stats` WHERE `Level` = @startLevel AND `Class` = @class);
SET @stamina = (SELECT `Stamina` FROM `player_class_stats` WHERE `Level` = @startLevel AND `Class` = @class);
SET @intellect = (SELECT `Intellect` FROM `player_class_stats` WHERE `Level` = @startLevel AND `Class` = @class);
SET @spirit = (SELECT `Spirit` FROM `player_class_stats` WHERE `Level` = @startLevel AND `Class` = @class);

-- Generate the rows with calculated values
INSERT IGNORE INTO `player_class_stats` (`Class`, `Level`, `BaseHP`, `BaseMana`, `Strength`, `Agility`, `Stamina`, `Intellect`, `Spirit`)
SELECT
    @class AS `Class`,
    levels.`Level` AS `Level`,
    ROUND(@baseHP * POWER(1.03, levels.`Level` - @startLevel)) AS `BaseHP`,
    3165 AS `BaseMana`,
    ROUND(@strength * POWER(1.03, levels.`Level` - @startLevel)) AS `Strength`,
    ROUND(@agility * POWER(1.03, levels.`Level` - @startLevel)) AS `Agility`,
    ROUND(@stamina * POWER(1.03, levels.`Level` - @startLevel)) AS `Stamina`,
    ROUND(@intellect * POWER(1.03, levels.`Level` - @startLevel)) AS `Intellect`,
    ROUND(@spirit * POWER(1.03, levels.`Level` - @startLevel)) AS `Spirit`
FROM (
    SELECT (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) AS `Level`
    FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
    CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
    CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
    WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
) AS levels
WHERE NOT EXISTS (
    SELECT 1 FROM `player_class_stats`
    WHERE `Level` = levels.`Level` AND `Class` = @class
);


SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values ​​for the initial level
SET @class = 6; -- Clase: Death Knight
SET @baseHP = (SELECT `BaseHP` FROM `player_class_stats` WHERE `Level` = @startLevel AND `Class` = @class);
SET @strength = (SELECT `Strength` FROM `player_class_stats` WHERE `Level` = @startLevel AND `Class` = @class);
SET @agility = (SELECT `Agility` FROM `player_class_stats` WHERE `Level` = @startLevel AND `Class` = @class);
SET @stamina = (SELECT `Stamina` FROM `player_class_stats` WHERE `Level` = @startLevel AND `Class` = @class);
SET @intellect = (SELECT `Intellect` FROM `player_class_stats` WHERE `Level` = @startLevel AND `Class` = @class);
SET @spirit = (SELECT `Spirit` FROM `player_class_stats` WHERE `Level` = @startLevel AND `Class` = @class);

-- Generate the rows with calculated values
INSERT IGNORE INTO `player_class_stats` (`Class`, `Level`, `BaseHP`, `BaseMana`, `Strength`, `Agility`, `Stamina`, `Intellect`, `Spirit`)
SELECT
    @class AS `Class`,
    levels.`Level` AS `Level`,
    ROUND(@baseHP * POWER(1.03, levels.`Level` - @startLevel)) AS `BaseHP`,
    0 AS `BaseMana`,
    ROUND(@strength * POWER(1.03, levels.`Level` - @startLevel)) AS `Strength`,
    ROUND(@agility * POWER(1.03, levels.`Level` - @startLevel)) AS `Agility`,
    ROUND(@stamina * POWER(1.03, levels.`Level` - @startLevel)) AS `Stamina`,
    ROUND(@intellect * POWER(1.03, levels.`Level` - @startLevel)) AS `Intellect`,
    ROUND(@spirit * POWER(1.03, levels.`Level` - @startLevel)) AS `Spirit`
FROM (
    SELECT (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) AS `Level`
    FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
    CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
    CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
    WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
) AS levels
WHERE NOT EXISTS (
    SELECT 1 FROM `player_class_stats`
    WHERE `Level` = levels.`Level` AND `Class` = @class
);


SET @startLevel = 80;
SET @maxLevel = 255;

- Get the base values ​​for the initial level
SET @class = 7; -- Clase: Shaman
SET @baseHP = (SELECT `BaseHP` FROM `player_class_stats` WHERE `Level` = @startLevel AND `Class` = @class);
SET @strength = (SELECT `Strength` FROM `player_class_stats` WHERE `Level` = @startLevel AND `Class` = @class);
SET @agility = (SELECT `Agility` FROM `player_class_stats` WHERE `Level` = @startLevel AND `Class` = @class);
SET @stamina = (SELECT `Stamina` FROM `player_class_stats` WHERE `Level` = @startLevel AND `Class` = @class);
SET @intellect = (SELECT `Intellect` FROM `player_class_stats` WHERE `Level` = @startLevel AND `Class` = @class);
SET @spirit = (SELECT `Spirit` FROM `player_class_stats` WHERE `Level` = @startLevel AND `Class` = @class);

-- Generate the rows with calculated values
INSERT IGNORE INTO `player_class_stats` (`Class`, `Level`, `BaseHP`, `BaseMana`, `Strength`, `Agility`, `Stamina`, `Intellect`, `Spirit`)
SELECT
    @class AS `Class`,
    levels.`Level` AS `Level`,
    ROUND(@baseHP * POWER(1.03, levels.`Level` - @startLevel)) AS `BaseHP`,
    3165 AS `BaseMana`,
    ROUND(@strength * POWER(1.03, levels.`Level` - @startLevel)) AS `Strength`,
    ROUND(@agility * POWER(1.03, levels.`Level` - @startLevel)) AS `Agility`,
    ROUND(@stamina * POWER(1.03, levels.`Level` - @startLevel)) AS `Stamina`,
    ROUND(@intellect * POWER(1.03, levels.`Level` - @startLevel)) AS `Intellect`,
    ROUND(@spirit * POWER(1.03, levels.`Level` - @startLevel)) AS `Spirit`
FROM (
    SELECT (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) AS `Level`
    FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
    CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
    CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
    WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
) AS levels
WHERE NOT EXISTS (
    SELECT 1 FROM `player_class_stats`
    WHERE `Level` = levels.`Level` AND `Class` = @class
);


SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values ​​for the initial level
SET @class = 8; -- Clase: Mage
SET @baseHP = (SELECT `BaseHP` FROM `player_class_stats` WHERE `Level` = @startLevel AND `Class` = @class);
SET @strength = (SELECT `Strength` FROM `player_class_stats` WHERE `Level` = @startLevel AND `Class` = @class);
SET @agility = (SELECT `Agility` FROM `player_class_stats` WHERE `Level` = @startLevel AND `Class` = @class);
SET @stamina = (SELECT `Stamina` FROM `player_class_stats` WHERE `Level` = @startLevel AND `Class` = @class);
SET @intellect = (SELECT `Intellect` FROM `player_class_stats` WHERE `Level` = @startLevel AND `Class` = @class);
SET @spirit = (SELECT `Spirit` FROM `player_class_stats` WHERE `Level` = @startLevel AND `Class` = @class);

-- Generate the rows with calculated values
INSERT IGNORE INTO `player_class_stats` (`Class`, `Level`, `BaseHP`, `BaseMana`, `Strength`, `Agility`, `Stamina`, `Intellect`, `Spirit`)
SELECT
    @class AS `Class`,
    levels.`Level` AS `Level`,
    ROUND(@baseHP * POWER(1.03, levels.`Level` - @startLevel)) AS `BaseHP`,
    3165 AS `BaseMana`,
    ROUND(@strength * POWER(1.03, levels.`Level` - @startLevel)) AS `Strength`,
    ROUND(@agility * POWER(1.03, levels.`Level` - @startLevel)) AS `Agility`,
    ROUND(@stamina * POWER(1.03, levels.`Level` - @startLevel)) AS `Stamina`,
    ROUND(@intellect * POWER(1.03, levels.`Level` - @startLevel)) AS `Intellect`,
    ROUND(@spirit * POWER(1.03, levels.`Level` - @startLevel)) AS `Spirit`
FROM (
    SELECT (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) AS `Level`
    FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
    CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
    CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
    WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
) AS levels
WHERE NOT EXISTS (
    SELECT 1 FROM `player_class_stats`
    WHERE `Level` = levels.`Level` AND `Class` = @class
);


SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values ​​for the initial level
SET @class = 9; -- Clase: Warlock
SET @baseHP = (SELECT `BaseHP` FROM `player_class_stats` WHERE `Level` = @startLevel AND `Class` = @class);
SET @strength = (SELECT `Strength` FROM `player_class_stats` WHERE `Level` = @startLevel AND `Class` = @class);
SET @agility = (SELECT `Agility` FROM `player_class_stats` WHERE `Level` = @startLevel AND `Class` = @class);
SET @stamina = (SELECT `Stamina` FROM `player_class_stats` WHERE `Level` = @startLevel AND `Class` = @class);
SET @intellect = (SELECT `Intellect` FROM `player_class_stats` WHERE `Level` = @startLevel AND `Class` = @class);
SET @spirit = (SELECT `Spirit` FROM `player_class_stats` WHERE `Level` = @startLevel AND `Class` = @class);

-- Generate the rows with calculated values
INSERT IGNORE INTO `player_class_stats` (`Class`, `Level`, `BaseHP`, `BaseMana`, `Strength`, `Agility`, `Stamina`, `Intellect`, `Spirit`)
SELECT
    @class AS `Class`,
    levels.`Level` AS `Level`,
    ROUND(@baseHP * POWER(1.03, levels.`Level` - @startLevel)) AS `BaseHP`,
    3165 AS `BaseMana`,
    ROUND(@strength * POWER(1.03, levels.`Level` - @startLevel)) AS `Strength`,
    ROUND(@agility * POWER(1.03, levels.`Level` - @startLevel)) AS `Agility`,
    ROUND(@stamina * POWER(1.03, levels.`Level` - @startLevel)) AS `Stamina`,
    ROUND(@intellect * POWER(1.03, levels.`Level` - @startLevel)) AS `Intellect`,
    ROUND(@spirit * POWER(1.03, levels.`Level` - @startLevel)) AS `Spirit`
FROM (
    SELECT (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) AS `Level`
    FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
    CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
    CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
    WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
) AS levels
WHERE NOT EXISTS (
    SELECT 1 FROM `player_class_stats`
    WHERE `Level` = levels.`Level` AND `Class` = @class
);


SET @startLevel = 80;
SET @maxLevel = 255;

-- Get the base values ​​for the initial level
SET @class = 11; -- Clase: Druid
SET @baseHP = (SELECT `BaseHP` FROM `player_class_stats` WHERE `Level` = @startLevel AND `Class` = @class);
SET @strength = (SELECT `Strength` FROM `player_class_stats` WHERE `Level` = @startLevel AND `Class` = @class);
SET @agility = (SELECT `Agility` FROM `player_class_stats` WHERE `Level` = @startLevel AND `Class` = @class);
SET @stamina = (SELECT `Stamina` FROM `player_class_stats` WHERE `Level` = @startLevel AND `Class` = @class);
SET @intellect = (SELECT `Intellect` FROM `player_class_stats` WHERE `Level` = @startLevel AND `Class` = @class);
SET @spirit = (SELECT `Spirit` FROM `player_class_stats` WHERE `Level` = @startLevel AND `Class` = @class);

-- Generate the rows with calculated values
INSERT IGNORE INTO `player_class_stats` (`Class`, `Level`, `BaseHP`, `BaseMana`, `Strength`, `Agility`, `Stamina`, `Intellect`, `Spirit`)
SELECT
    @class AS `Class`,
    levels.`Level` AS `Level`,
    ROUND(@baseHP * POWER(1.03, levels.`Level` - @startLevel)) AS `BaseHP`,
    3165 AS `BaseMana`,
    ROUND(@strength * POWER(1.03, levels.`Level` - @startLevel)) AS `Strength`,
    ROUND(@agility * POWER(1.03, levels.`Level` - @startLevel)) AS `Agility`,
    ROUND(@stamina * POWER(1.03, levels.`Level` - @startLevel)) AS `Stamina`,
    ROUND(@intellect * POWER(1.03, levels.`Level` - @startLevel)) AS `Intellect`,
    ROUND(@spirit * POWER(1.03, levels.`Level` - @startLevel)) AS `Spirit`
FROM (
    SELECT (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) AS `Level`
    FROM
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS units
    CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS tens
    CROSS JOIN
        (SELECT 0 AS a UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) AS hundreds
    WHERE (@startLevel + units.a + 10 * tens.a + 100 * hundreds.a) <= @maxLevel
) AS levels
WHERE NOT EXISTS (
    SELECT 1 FROM `player_class_stats`
    WHERE `Level` = levels.`Level` AND `Class` = @class
);