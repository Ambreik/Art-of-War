			Average and Skill Damage

	
	Special Item Bonuses: Average and Skill Damage
	These bonuses are exclusive to "Special Bracelets" and "Special Weapons", rare items with a low drop rate from high-tier World Bosses, special dungeon bosses,
or rare quest rewards. These items are level 50, designed to be highly sought-after due to the powerful bonuses they offer.

	Average Damage (PM or AVG)
- "Effect" : Increases damage from normal attacks, such as melee hits (e.g., sword, fist).
- "Bonus Range" : -25% to +45% AVG. 
  - Positive values enhance base damage dealt by normal attacks.
  - Negative values decrease base damage, creating variability but adding risk in exchange for the item's rarity and power.
- "Calculation" :
  - "Formula" : `Total Damage = Base Damage + (Base Damage × Average Damage) / 100`
  - "Example" : With a base damage of 100 and 10% Average Damage, total damage would be `100 + (100 × 10 / 100) = 110`, not accounting for opponent defenses.
- "Behavior" : Acts as a Type III bonus, does not affect skills dealing magic damage.

	Skill Damage (PC or SDG)
- "Effect" : Boosts skill-based damage (magical attacks or spells), crucial for maximizing a character's damage output in PvE and PvP.
- "Bonus Range" : -20% to +30% SDG.
  - Higher values (over +25%) provide significant boosts, making these items valuable in the market.
  - Lower (or negative) values create a balance, limiting overuse of powerful skill-damage combinations.
- "Calculation" :
  - "Formula" : `Total Damage = Base Damage + (Base Damage × Skill Damage) / 100`
  - "Example" : With a base skill damage of 1000 and 10% Skill Damage, the total skill damage would be `1000 + (1000 × 10 / 100) = 1100`, before defenses.
- "Behavior" : Acts as a Type III bonus, enhancing skill damage but balanced by the tradeoff with Average Damage.

	Special Properties and Balancing
- "Average vs. Skill Damage Balance" : Higher Average Damage typically means a lower Skill Damage on the same item, and vice versa. This balance ensures a strategic 
choice between increasing regular or skill-based attacks.
- "Damage Reduction" : Skill Damage taken can be mitigated using "Ability Resist" found on specific items:
  - "Titan Shield"
  - "Ruby Earrings"
  - "Dragon Bone Bracelet"
  - "Magic Resistance" also reduces damage from magical spells, while "Specific Defenses" (such as Sword or Arrow Defense) reduce damage from physical abilities.
