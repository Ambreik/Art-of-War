			ATTACK

	"Attack" refers to the action a player initiates, commanding their character or pet to engage in combat.

	1. "Player Auto-Attack"  
	Attack starts general melee combat using the currently equipped weapon(s). The player will continue to auto-attack until toggled off, an error message occurs (
e.g., wrong orientation, out of range, stunned), or the target dies. The speed of the attack is determined by the weapon(s) equipped.  
	Note: Melee special attacks and self-only healing abilities will not interrupt auto-attacks.

	2. "Basic DPS Calculation" (Example)
	To understand the DPS math, here’s how it breaks down for different weapon setups:

- Two 1H Weapons :  
   Assume each 1H weapon deals "x DPS".

- One 2H Weapon :  
   Assume the 2H weapon deals "y DPS".

- Dual Wielding without Specialization :
   - "1.5x × (1 - 0.24) = 1.14x"  
   - The DPS calculation reflects a 24% reduction in efficiency.

- Warriors with Top Dual-Wield Specialization :
   - "1.625x × (1 - 0.24) = 1.235x"  
   - With specialization, warriors receive a higher damage output.

- Shamans with Top Dual-Wield Specialization :
   - "1.5x × (1 - 0.18) = 1.23x"  
   - Shamans also benefit from a specific specialization bonus.

- Two-Handed Weapon for Shamans or Warriors without Talent :
   - "y × (1 - 0.05) = 0.95y"  
   - For non-specialized characters, two-handers incur a 5% reduction.

- Two-Handed Weapon for Warriors with Talent :
   - "1.05y × (1 - 0.05) = 0.9975y"  
   - A small increase in damage for those with two-handed weapon specialization.

	3. "Dual Wield vs. Two-Handed Weapons"
	To determine whether dual-wielding or using a two-handed weapon is more effective, compare their DPS values:

- For non-dual-wield specialization warriors :
   - "0.95y = 1.14x"  
   - Simplified, this shows that a two-handed sword must have 20% more DPS than each individual 1H weapon.

- For dual-wield specialization warriors :
   - "0.95y = 1.235x"  
   - The two-handed sword must have 30% more DPS than each 1H weapon.

	4. "DPS Scaling with Attack Power"  
- "Dual-wielding" scales better with "attack power" than using a 2H weapon, especially when the attack power is significantly high.
  
- Example with 5600 attack power :
   - "Two-Hand DPS" = 0.95 × [80 + (5600 / 14)] = 456
   - "Dual-Wield DPS" = 1.14 × [10 + (5600 / 14)] = 467.4

	This shows that dual-wielding provides higher DPS with enough attack power.

	5. "Dual-Wield Benefit Conclusions"

- If the "2H weapon" is "20" (for non-specialized) or "30" (for dual-wield specialization) higher DPS than each 1H weapon, a two-hander might be the better choice.
- Basic dual-wielding gives a "20% DPS" increase over a one-handed weapon and shield.
- Dual-Wield Specialization increases DPS by an additional "30" for "Warriors" and "Shamans".
- This bonus extends to the "DPS" derived from attack power.