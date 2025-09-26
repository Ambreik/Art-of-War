			Attack Value

		Attack Value in World Game
	The "Attack Value" (AV) represents the damage dealt by a character, and it scales based on several factors like "weapon stats", "STR" (Strength), "DEX" 
(Dexterity), and "INT" (Intelligence). Both "Melee Attack Power" and "Ranged Attack Power" come into play, with classes using ranged weapons (like Ninja Archer or Ninja Ranger) benefiting more significantly from "Ranged Attack Power".

		Core Mechanics :
1. Weapon Attack Value : This is the base attack value derived from the weapon the character equips.
2. Strength (STR) : 
   - Increases "Melee Attack Power" for most classes, particularly for tanks and physical DPS (damage dealers).
   - Even some cloth-wearing classes benefit from STR.
3. Dexterity (DEX) : 
   - Boosts attack power for specific classes, such as Ninjas and Vampires. It also increases "Ranged Attack Power" for ranged classes.
4. Intelligence (INT) : 
   - Although not a major source of attack power in most cases, it can influence certain "magical classes" (like Warlocks and Shamans).
5. Class-Specific Bonuses : 
   - Different classes get varying amounts of "Melee" or "Ranged" attack power boosts.
   - Dual Wielding : If a character is dual-wielding, the offhand weapon will contribute to DPS with a damage penalty unless the class has a special dual-wielding 
skill.

	Sources of Attack Power :
- Character Level : Affects base "Attack Value" for most classes except "mages" and "warlocks", who rely on **INT**.
- Gear : Provides attack power bonuses, with weapons, armor, and accessories all contributing.
- Enchantments : Some can offer permanent or temporary AP boosts.
- Potions, Buffs, and Talents : Can increase AP for a limited time.
- Gems : Usually don’t affect "Attack Power" directly, but STR gems can boost it indirectly for certain classes (such as tanks or melee fighters).
- Special Items : Temporary AP boosts via use effects.

	Dual Wielding :
- Offhand damage is calculated as:
  \[
  \text{Offhand Damage} = \left[\left(\text{Weapon DPS} + \frac{\text{AP}}{14}\right) \times \text{Weapon Speed}\right] \div 2
  \]
  This means the **offhand weapon** contributes to **DPS**, but with a 50% damage reduction (without specialization abilities).

	Monster Attack Power :
- Mobs (monsters) use a similar formula for damage:
  \[
  (\text{DPS from Attack Power} + \text{Base DPS}) \times \text{Multiplier}
  \]
  The **multiplier** varies, with **bosses** having a higher multiplier. **Attack Power debuffs** can significantly reduce mob damage, especially for raid bosses.