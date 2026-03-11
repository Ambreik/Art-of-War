			Warm Current Statue Puzzle – Elite Spawn

---

	Location Scope : 
* Frostveil Cavern Mouths
* Inner chamber (Vent Hall)
* Statue Circle Area

---

	Trigger Conditions
Trigger Type : Environmental UI Condition + Player Interaction
UI Indicator : "Warm Current Detected"
Requirement :
    • Player inside vent-active chamber
    • At least one Warm Vent active (random cycle)
Action Required :
    • Light Correct Statue Torch

---

		Puzzle Logic

	Statue Clue System : 
Correct statue must meet at least 2 of 3 conditions :
	* Statue with partially melted frost
	* Statue facing warm vent airflow
	* Statue with faint insect carvings

Incorrect statues :
	* Fully frozen
	* Facing away from vent
	* No carvings

	Statue selection rotates every 30–60 minutes (server cycle).

---

		Result – Correct Activation

Event Type : Elite Monster Spawn
Spawn Delay : 5 seconds
Spawn Location : Center of chamber
Visual Effect :
    • Warm air surge
    • Frost melting rapidly
    • Insect screech echo

---

		ELITE MONSTER FILE

	Name : "Hive Sentinel Krazik"
	Classification
Type : Elite Monster
Creature Class : Insectoid
Faction : Hivebound
Role : Guardian
Difficulty : Group Recommended (2–5 players)
Aggression : Immediate

---

	Combat Behavior : 
* Prioritizes torch lighter.
* Gains strength near warm vents.
* Defensive until first 20% HP lost → then becomes aggressive burst type.

---

	Abilities : 
	1. Flame-proof Shell
Type : Defensive Passive
Effect :
    • Immune to Fire damage
    • Fire attacks increase its Armor by 5% (stacking up to 25%)
Counterplay :
    • Frost damage reduces stacks

---

	2. Call Worker Swarm
Type : Summon
Effect :
    • Summons 4–6 Worker Insectoids
    • Workers fixate random players
Workers HP : Low
Workers explode on death if near vent


Hidden Interaction:
If cave temperature is low (no warm current) → only 2 workers spawn.

---

	3. Thermal Burst
Type : AoE Explosion
Cast Time : 3 sec
Effect :
    • Fire/Frost hybrid damage
    • Pushback effect
Bonus :
    • Stronger if near active vent

Telegraph:
Ground glows orange beneath shell.

---

		Drops

	Guaranteed : 
* Warmcore Gem
	(Used in high-tier crafting / Legendary Blacksmith upgrade chain)

* Elite Craft Material : 
	* Tempered Hive Resin
	* Ventforged Carapace

---

	Chance Drops : 
* Recipe – Warmcore Infusion (Alchemy)
* Recipe – Vent-Seared Meat (Cooking)
* Recipe – Thermal Edge Reinforcement (Blacksmithing)
	Drop Chance: 10–20%

---

	Hidden Detail – Failure Condition

	If player lights the wrong statue :

Penalty State : Frozen Lockdown
Effect :
    • Cave entrance freezes solid
    • Ice barrier forms
Duration : 10 minutes
Escape :
    • Destroy 3 ice growths inside
    OR
    • Wait timer

	Additional Hidden Layer:
If wrong statue is lit 3 times in a row → small Frostveil Burrowers spawn near entrance.

---

	Environmental Interaction : 
* Warm vents increase boss damage.
* If players extinguish vent flames (water ability) → Thermal Burst damage reduced.
* If players lure boss under frozen ceiling → falling icicles deal heavy damage.

---

	Anti-Exploit Rules : 
* Only one elite spawn per 45 minutes per cave instance.
* Boss despawns after 12 minutes if not engaged.
* Cannot trigger while Frostveil Burrower event is active.

---

	System Integration Hooks : 
* Legendary Blacksmith uses Warmcore Gem.
* Profession Teachers unlock Warmcore recipes.
* Tavern Keeper REP II gives rumor hint about statue facing warmth.

---
