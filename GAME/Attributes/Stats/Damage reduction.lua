			Damage Reduction

	"Armor" plays a key role in reducing physical damage against your character. The effectiveness of this armor depends on both the level of the attacking enemy 
(monster or player) and the amount of armor you possess. 

- "Level of the Character" : Your level doesnt directly impact the effectiveness of your armor. However, as you level up, the armor's effectiveness may decrease 
against enemies of higher levels. This can be observed by hovering over the armor value in your character sheet, which shows the damage reduction percentage for 
enemies at your current level. If you level up, the effectiveness of the same armor will decrease when facing higher-level enemies.

		Armor and Damage Reduction
	The general idea behind armor is that an increase in armor means a higher percentage of damage reduction. The formula to calculate the base armor value is as 
follows:

- "Base Armor" = 2 * Agility + Gear Armor + "Magic Armor"

Where:
- "Gear Armor" refers to the armor value from the gear you wear.
- "Magic Armor" represents extra armor from buffs, equipment, bonuses, etc.

		Damage Soak
	Damage soak refers to the amount of damage your armor absorbs. However, it’s more useful to think of it in terms of how much damage you can withstand.

	The formula for damage reduction is:

- "Reduction = Armor / (Armor + X)"

Where:
- For enemies below level 60, "X = 85 * Enemy_Level + 400"
- For enemies level 60 or higher, "X = 467.5 * Enemy_Level - 22167.5"

	Therefore, the damage the player takes after armor’s damage reduction is applied is:

- "Damage_Taken = Damage_Dealt * (1 - (Armor / (Armor + X)))"
- Alternatively: "Damage_Taken = Damage_Dealt * (X / (Armor + X))"

		Damage Dealt to Damage Taken Ratio
	The ratio of damage dealt to damage taken can be simplified as:

- "Damage_Dealt / Damage_Taken"
- Or: "(Armor + X) / X"
- Or: "1 + (Armor / X)"

		Armor's Effect on Damage Mitigation
	The increase in the amount of damage you can take (compared to having no armor) as a percentage is:

- "(Armor / X) * 100"

For example:
- A character with 10,557.5 armor attacking a level 70 enemy can take 100% more damage.
- A character with 31,672.5 armor can take 300% more damage than a character with no armor (maximum).

		Armor Required for Damage Reduction
	To calculate how much armor is needed for a specific damage reduction, use the following formulas:

- For enemies level "59 and below" :
  - "Armor = 1200 + 255 * Enemy_Level"

- For specific "% Reduction" :
  - "Armor = %Reduction * (400 + 85 * Enemy_Level) / (100 - %Reduction)"

- For enemies "level 60 and above" :
  - **Armor = (467.5 * Enemy_Level - 22167.5) / (100 / %Reduction - 1)"

		% Reduction Formula
	The formula for calculating the percentage reduction in damage is:

- "%Reduction = 100 / ((467.5 * Enemy_Level - 22167.5) / Armor + 1)"