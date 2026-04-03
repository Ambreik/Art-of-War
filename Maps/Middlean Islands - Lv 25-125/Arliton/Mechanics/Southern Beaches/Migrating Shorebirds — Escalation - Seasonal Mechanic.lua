			Migrating Shorebirds — Escalation / Seasonal Mechanic

	Concept : During specific in-game days (migration periods), large flocks of shorebirds temporarily settle along the **Southern Beaches** to rest and feed before
continuing their journey.

	This is not constant.

	When active, the beach visibly changes :
* More birds on sand
* Birds near waterline pecking for food
* Birds circling above shallow waters where fish schools gather
* Louder ambient soundscape

	The beach feels suddenly alive.

---

		Birds Involved (from ecosystem)

	This mechanic uses only creatures you already defined :

* "Seabird" → Shoreline Landing Area
* "Wind Scavenger Bird" → Wind-Exposed Beach Edges
* "Wreck Scavenger Bird" → Sunken Warship Graveyard (they travel outward during migration)

	During migration event, these birds temporarily overlap zones and appear together along the beaches.
	This visual mixing is what signals the mechanic to players.

---

		Mechanic Behavior

	When the migration is active :
* Large flocks gather near :
	* Fishing shoreline
	* Shell/driftwood areas
	* Shallow water feeding zones (same areas as Golden Tide fish schools)
* Birds periodically land, take off, relocate.

	Players may attack them.

---

		Risk / Reward Loop

	If players leave birds alone : 
* Nothing happens. Pure ambience.

	If players hunt a few : 
* They gain valuable materials (below).

	If players kill too many birds quickly : 
* Some birds take flight loudly, circling and screeching.

	This triggers an ecosystem reaction :

> Nearby predators are alerted.

---

		Predators Triggered

	From existing ecosystem :

* "Spotted Dune Hyena" → from Dune Grass & Coastal Vegetation
* "Dune Stalker Cat" → from Stealth Zone

	These creatures temporarily path toward the beach from vegetation areas as a patrol group.
	They are not spawned. They are pulled from their normal habitat.
	This makes the world feel connected.

---

		Crafting & Resource Materials Obtained

	Add these materials to your crafting/resource tables tied to these birds :

| Material              | Obtained From                | Use                             |
| --------------------- | ---------------------------- | ------------------------------- |
| Salt-Dried Feathers   | Seabird, Wind Scavenger Bird | Light armor lining, fletching   |
| Hollow Flight Bones   | Wind Scavenger Bird          | Flutes, tools, crafting handles |
| Oil-Rich Bird Fat     | Wreck Scavenger Bird         | Alchemy oils, fire starters     |
| Iridescent Wing Plume | Rare drop during migration   | High value crafting, trade good |
| Shorebird Meat        | All birds                    | Cooking ingredient              |

---

	Escalation Logic : 
	The more birds players kill in a short time window :
1. Bird noise increases
2. Birds stop landing, stay airborne
3. Predator patrol begins from vegetation zone
4. Birds leave the area for a while (mechanic cooldown)

	Players over-hunting end the event themselves.

	Beautiful self-regulation.

---

	Visual & Audio Indicators

	Players can understand the system without UI :
* Sudden increase in bird numbers
* Loud flock sounds
* Feathers on the sand
* Shadows passing overhead
* Then predator sounds from grass

---

	Purpose Reinforced : 
* Makes beach feel seasonal and alive
* Connects multiple POIs into one ecosystem
* Creates greed vs patience decision
* Introduces soft danger without scripting

---
