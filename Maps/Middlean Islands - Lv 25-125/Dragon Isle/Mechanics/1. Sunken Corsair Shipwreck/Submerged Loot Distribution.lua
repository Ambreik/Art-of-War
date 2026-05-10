			Submerged Loot Distribution

---

	1. Loot Node Spawn System

* Type : Core / Reward / Dynamic
* Function : Controls what appears inside the wreck and when

	System Behavior :

* Each loot tier has independent spawn pools

	Spawn Timers (Realistic Cycle-Based) : 

* Surface Debris :
	* Respawn : 10–15 minutes
	* High frequency, low value
* Interior Wreck :
	* Respawn : 25–40 minutes
	* Medium rarity
* Deep Compartments :
	* Respawn : 60–90 minutes
	* Low frequency, high value
* Sunken Chest (Rare Object Spawn) :
	* Spawn chance : 15–25% per cycle
	* Respawn window : 90–150 minutes
	* Max active : 1–2 per instance layer

---

	2. Creature Association System (Loot Guardianship) 

* Type : Environmental / Dynamic
* Function : Links loot tiers to creature presence

	Surface Debris : 
* Creatures :
	* Small reef scavengers
* Behavior :
	* Passive → reactive when disturbed

---

	Interior Wreck : 
* Creatures :
	* Reef predators (mid-tier)
	* Occasional drowned pirate remnants
* Behavior :
	* Territory-based
	* Aggro on proximity

---

	Deep Compartments : 
* Creatures :
	* Pirate Spirits (guaranteed anchor)
	* Chance for "Elite Guardian Spawn"
* Behavior :
	* Spawn triggered by :
		* Opening containers
		* Prolonged presence

---

	Elite Spawn Trigger (Deep Layer) 

* Trigger :
	* Looting 2–3 deep nodes within short window
* Result :
	* Spawns "Wreckbound Corsair Spirit (Elite)"
* Cooldown :
	* 45–60 minutes per layer

---

	3. Sunken Chest — Loot Table System

* Type : Core / Reward

	Loot Table (Weighted)

* Common (50–60%)
	* Coins
	* Basic crafting materials (waterlogged variants)
* Uncommon (25–30%)
	* Refined crafting materials
	* Fishing enhancements (bait/tools)
* Rare (10–15%)
	* Pirate Tokens
	* Equipment fragments
	* Exotic fish bundles
* Very Rare (3–5%)
	* Unique crafting component (pirate-themed)
	* Cosmetic relics
* Special Drop (System Link) (5–10%)
	* "Weathered Map Fragment"

---

	4. Weathered Map Integration System (Cross-POI Link)

* Type : Hidden / Interaction / World Integration
* Function : Connects Shipwreck ↔ Tidebreaker Cove

---

	System Behavior :

* Drop Sources in Shipwreck :
	* Sunken Chests (primary)
	* Deep Compartments (low chance)
	* Elite Spirit (guaranteed chance window)

---

	Map Variant Logic :

* Maps found here are :
	* Water-damaged variants
	* Less readable → require interpretation

---

	New Mechanic Layer Added :

	"Degraded Map State"

* Some maps drop as :
	* "Faded Weathered Map"
* Effects :
	* Vague or misleading clues
	* Missing key landmark

---

	Player Interaction Expansion :

* Player can :
	* Use map as-is (hard mode exploration)
	* OR refine it via :
		* NPC (future system: cartographer / archivist)
		* Item (restoration kit)

---

	5. Hidden Cache Bias System (Location Influence)

* Type : Dynamic / World Integration
* Function : Influences where map caches lead

---

	System Behavior :

* Maps from Shipwreck have higher chance to lead to :
	* Coastal hidden caches
	* Underwater stash points
	* Cliffside buried pirate reserves

---

	Expansion Hook :

* Chain maps :
	* One cache → leads to another POI
* Multi-step treasure hunts 

---

	6. Risk Amplification System (Loot Pressure)

* Type : Dynamic / Consequence

	Function :
* Rewards aggressive looting with increased danger

---

	System Behavior :

* The more loot taken in short time :
	* ↑ Creature aggression
	* ↑ Spawn rate
	* ↑ Chance of elite trigger

---

	State Example :

* Low Activity :
	* Minimal enemies
* Disturbed Wreck :
	* Frequent predator patrols
* Awakened Wreck :
	* Spirit spawns active
	* Elite trigger enabled

---

