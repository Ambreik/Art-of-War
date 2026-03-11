			Miner Escort & Mining Quest Mechanic

	1. Mechanic Name :

	Grumli Stoneforge Escort & Mining Operation

---

	Structure & Setup :

* NPC : Grumli Stoneforge
* Quest Trigger : Player accepts escort quest from Grumli.
* Locations :
	* 3 pre-defined mining zones in Zone 4 (randomized per quest).
	* Each zone has terrain hazards (cliffs, wildlife spawn points, slippery areas).
* UI Elements :
	* Escort HP bar : Shows Grumli’s current health.
	* Ore Collection Tracker : Shows total mined ores out of 1000 (dynamic).
	* Zone Map Pointer : Highlights Grumli and mining locations.

---

	Escort Mechanics :

1. NPC Movement :
	* Follows a path through the mining site; player may assist in clearing paths 
	(e.g., defeating wild animals or activating LCWM like water channels to slow enemies).
	* NPC has movement speed modifier depending on terrain type.

2. Health / Threat System :
	* Grumli has an HP bar; can take damage from:
		* Wild animals (e.g., aggressive herbivores in forests).
		* Environmental hazards (falling rocks, minor landslides).
	* If HP drops below 20%, NPC slows down; player must defend or use healing items.
	* NPC cannot die; if HP reaches 0, the quest fails.

3. Combat Assistance :
	* Player can attack nearby threats; NPC has minor self-defense attacks but relies on player protection.
	* Certain mechanics (e.g., Water Channel Tactical Exploit) can reduce enemy threat temporarily.

4. Mining Interaction :
	* NPC automatically mines basic ores while moving; player can also mine or assist with special tools.
	* Ore collection is counted dynamically toward the 1000 ores goal**.
	* Spawned ores are highlighted by shimmer effect (Lumen Quartz, Dawnheart Geode).

---

	Mine Spawn Mechanics :

1. Rank I–III Mines :
	* Pale Iron Fragments, Creststone Ore, Lumen Quartz spawn near stone outcrops and ridges.
	* Spawn quantity is dynamic based on quest scaling (e.g., 200–800 per quest).

2. Rank IV Rare Mines (Dawnheart Geode):
	* Only appear after small seismic tremors (random world event).
	* Spawn is single-use per tremor; respawn only after next tremor.
	* Player must be Rank IV Miner and level 80+ to receive quest.

3. Interactive Mining :
	* Player may use special mining tools for faster collection (granted by profession or prior quest rewards).
	* Some ores require multiple hits, skill checks, or teamwork if multiple players are present.

---

	Dynamic Events During Escort :

1. Wild Animal Attacks :
	* Random spawns of forest creatures (e.g., aggressive rhinos) that target Grumli or players.
	* Damage varies by creature type; some knockback effects apply.

2. Environmental Hazards :
	* Rock slides, slippery zones, or sudden drops may cause minor HP damage to NPC or player.
	* Can be mitigated by careful navigation or using terrain LCWM (like barricades or water channels).

3. Emergent Player Interaction :
	* Players may combine LCWM mechanics (balloons, wind draft, water flow) to improve escort efficiency or protect NPC.
	* Example: Using water channel to push rhinos into safe zones.

---

	Quest Completion / Rewards :

* Success Conditions :
	* Collect all 1000 ores.
	* Escort NPC safely back to town.

* Optional Bonus Condition :
	* Final 50/50 chance event: if triggered, player receives rare ore or cosmetic reward.

* Reward Table :
	* Base: 200 Silver + 150 EXP + Craft Materials (randomized).
	* Bonus (if 50/50 triggered): Rare ore + cosmetic effect (dust cloud, spark animation at forge).

---

	Integration With Other Mechanics :

1. Crowd / Patrol Mechanics :
	* NPC movement may interact with town patrols if quest starts inside Sunveil Market Town.

2. Fog / Shimmer / Environmental Effects :
	* Mist or sunlight shimmer may affect player detection and mining visibility.

3. Repeatable / Scaling Quests :
	* Difficulty scales per week (Week 1: low animal spawn; Week 4: high animal density + rare ores).

---
