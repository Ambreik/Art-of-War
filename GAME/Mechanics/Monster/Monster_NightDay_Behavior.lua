			Night/Day Behavior Modifier

Path: GAME/Mechanics/Monster/Monster_NightDay_Behavior.lua

---

	Introduction : The Night/Day Behavior Modifier governs how monsters behave differently depending on the in-game time cycle. Some monsters are passive during the
day and active at night, others may gain stat boosts or use unique abilities tied to the cycle. This mechanic allows dynamic, immersive encounters and creates 
opportunities for time-sensitive challenges.

---

	Core Features:

1. Dormant vs. Active State:
	- Monsters may enter a “Dormant” state during part of the cycle (e.g., sleeping during the day).
	- While dormant, monsters are non-aggressive or lightly responsive, only reacting if provoked.
	- During their active period, they use their full AI combat behavior.

2. Stat Modifiers:
	- Nighttime or daytime may affect:
		* Damage dealt
		* Defense / Resistance values
		* Regeneration rates (HP/Mana/Energy/Rage)
		* Aggression range and perception
	- Example: Night creatures deal +20% damage at night but take +10% extra damage during the day.

3. Perception Adjustments:
	- Vision (LOS) may be enhanced at night for some monsters, reduced for others.
	- Tracking (smell, noise) may intensify at night, simulating heightened senses.
	- Magic detection can be stronger at night for arcane or undead creatures.

4. Environmental Interaction:
	- Nighttime creatures may trigger unique effects: illusions, corruption spread, stealth auras.
	- Daytime creatures may harness sunlight effects, purifying or weakening dark-aligned enemies.

5. Rare Night-Only Spawn:
	- Certain elite or rare monsters spawn exclusively during nighttime hours.
	- Their presence may be announced server-wide or hinted through NPC dialogue.
	- These spawns drop rare loot, cosmetics, or quest-related items.
	- Once defeated, they despawn until the next night cycle (or longer intervals).

---

	Implementation Notes:
* Monsters must be flagged in DB with “NightDayBehavior”.
* Behavior toggles: Dormant (inactive) vs. Active (aggressive).
* Hooks into the Global Noise System for perception changes at night/day.
* Allows integration with Ambush State and Dormant State mechanics.
* Optional use for Rare Night-Only spawns.

---

Counterplay:
* Players should adapt tactics to time cycles—engage monsters during their weaker phase if possible.
* Use stealth or low-noise strategies to bypass active night monsters.
* Prepare for ambush mechanics when traveling at night.

---
