			Block

	The "Block" attribute represents a character's ability to absorb a portion of incoming melee damage when equipped with a shield. This skill is essential for 
"damage mitigation", reducing the impact of each blocked attack by 30%. When a block is successful, the character’s "Block Chance"—displayed under the Defense 
category—determines the likelihood of blocking an attack.

		Mechanics:
1. "Block Chance Calculation" :
   - The base "Block Chance" is 5%, applicable without any equipment, passive skills, or specialization abilities.
   - Block Chance is modified by the difference between the attacker’s and defender’s levels:
     - Against mobs: Each level difference modifies Block Chance by 0.5%.
     - Against players: Each level difference modifies Block Chance by 0.2%.
   - Mobs at "level 9 and below" have reduced Block Chance and block less frequently, capping at a maximum Block Chance of 5% regardless of the level difference.

2. 	Mob Block Rules :
   - Unlike players, mobs can block attacks even without a shield, as "Block" is part of each mob’s "base attributes" according to their type, race, or element.
   - "Blocked Crit" : Mobs may occasionally block a critical hit, a distinction not applied to player characters.
   
3. Combat Calculations :
   - "Damage Reduction" : When a block occurs, the damage is reduced by 30% before any additional absorption effects.
     - For example, a 500-damage hit will be reduced to 350 damage if blocked (150 damage blocked).
   - Absorption Interaction : Block reduction is calculated **before** any absorption. 
     - For instance, if a 3000-damage hit is absorbed by a 100-damage shield with a 30% block, the remaining damage becomes 1000, as follows:
       ```
       3000 damage hit → Block reduces by 30% (900 damage) → Absorb shield reduces by 100 → Final damage: 1000 (1000 blocked, 1000 absorbed)
       ```

4. Additional Notes :
   - Unlike "Dodge", Block does not suffer from diminishing returns.
   - Block Chance does not interfere with Miss or Critical Hit calculations; blocked attacks do not alter other defensive or offensive metrics in combat.

	This Block mechanic allows for effective "tank builds" and "damage mitigation strategies", making shields an invaluable defensive tool for certain classes or 
characters in "World Game". Let me know if you'd like further details on block interactions or additional attributes for tank classes.