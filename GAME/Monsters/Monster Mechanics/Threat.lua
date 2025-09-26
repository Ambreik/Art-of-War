			Threat Mechanics

	"Threat" is a measure of an NPC's aggression towards a player. Each NPC has a threat table, and the unit at the top of this list is usually the target of its 
aggression. If a player has "aggro" from an NPC, that NPC will prioritize attacking the player unless something else overrides its target.

---

	Threat Table

- "Entry to the Table" : Every unit enters the threat table when combat begins. Upon leaving combat, the unit is removed from the table. If the player re-enters 
combat, their threat begins at zero.
- "Threat Values" : Threat starts at zero when entering combat and increases as the player engages the NPC. Higher threat numbers mean more likely to be targeted by
the NPC.

---

	Actions That Affect Threat

- "Damage" : Each unit of damage dealt to the NPC adds 1 threat to the player's total threat on that NPC.
- "Healing" : Healing the NPC's enemies adds 0.5 threat for each point of healing done, divided by the number of NPCs observing the heal.
- "Friendly Buffs or On-Use Abilities" : Some buffs or abilities cast on allies may add a fixed amount of threat, divided by the number of NPCs observing the ability.

---

		Aggro Mechanics

	An NPC will aggro to a new unit if certain conditions are met:

- "Taunt or Special Ability" : If a player uses a taunt or special ability that overrides the NPC's current target.
- "Exceeding Threat" : 
	- Melee Range: If a player exceeds the NPC's current target's threat by 10%, they will become the new target.
	- Ranged Range: If a player exceeds the NPC's current target's threat by 30 while outside melee range, they will become the new target.

---

		Modifying Threat Generation

	Certain abilities and factors influence the rate of threat generation. These are typically amplified or reduced based on the player’s role in combat.
- "Tank Classes" : Tank abilities have a 5.0x threat modifier, meaning they generate threat much faster than other roles.
- "Class Talents" : Many classes have talents or abilities that modify how quickly they generate threat during combat.
- "Multiplicative Stacking" : When two or more factors apply simultaneously, they stack multiplicatively without diminishing returns.

---

		Repositioning in the Threat Table

	Different classes have abilities that help them control their position on the threat table:

- "Tanks" : Tanks use core abilities to push themselves to the top of the threat table, ensuring they hold aggro.
- "DPS and Healers" : Certain abilities can be used to reduce threat, such as abilities to vanish or stealth, temporarily lowering the threat they generate.
- "Ninja Assassins" : Abilities like "Stealth" or "Vanish" can permanently reset the player's threat to zero, possibly even exiting combat.

---

		Unique NPC Threat Modifiers

	Some encounters feature NPCs or bosses with unique abilities that modify their threat table in ways not covered by the usual threat mechanics. These abilities 
could include special moves that affect the entire party’s threat or force certain players to be more vulnerable to aggro.