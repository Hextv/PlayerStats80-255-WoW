
# What does it do?
Extends Player Class Stats from Level 80 to 255

It retrieves base stats (HP, Strength, Agility, Stamina, Intellect, Spirit) from level 80.
It extrapolates stats up to level 255 using a power growth formula (POWER(1.03, levels)).
It ensures no duplicate entries using INSERT IGNORE.
Applies to All Classes

The script iterates through each class (Warrior, Paladin, Hunter, etc.).
It calculates stat growth independently for each class.
Paladin, Mage, and other mana-based classes have a set BaseMana value (e.g., 3165).
Uses Cross Join to Generate Level Ranges Efficiently

The CROSS JOIN technique generates numbers up to 255 without a loop.
Ensures every level between 80 and 255 is processed.

# Other Places Where You Can Download it

The Wow Modding Website:

https://www.wowmodding.net/files/file/377-playerstats-for-80-255-level/

# Supporting Cores?

## AzerothCore ✅
Made specifically for AzerothCore
## TrinityCore ❌
Could Work with some Adjustments
## DuskforgedCore ❌
💀


## Authors

- Unknown i just found it on my PC and tested it  ( [@Hex](https://www.github.com/Hextv) )

