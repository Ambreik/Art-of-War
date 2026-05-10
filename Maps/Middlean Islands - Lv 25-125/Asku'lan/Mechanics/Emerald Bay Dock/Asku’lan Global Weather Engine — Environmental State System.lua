			Asku’lan Global Weather Engine — Environmental State System 

---

	This expands the previously light "weather interaction" into a full island-wide simulation layer that directly affects traversal, combat readability, NPC 
behavior, and POI functionality.

	This is not just visual weather.
	It is a world-state modifier system.

---

		1. Core Concept

	Asku’lan is not static.

	It exists in four overlapping weather states that continuously shift :

> Weather is a gameplay layer, not a cosmetic layer.

	Each state affects :
* visibility
* traversal systems (Zip / Wind / Boats)
* NPC behavior
* ambient events
* danger scaling

---

		2. Primary Weather States

	CLEAR STATE — "Calm Breathing Window"

	Rare on Asku’lan : 
* High visibility
* Stable wind behavior
* Zip Lines easiest to control
* Boats fully operational
* NPCs behave normally

	Gameplay identity :

> "The island is pretending to be safe."

---

	FOG STATE — "Broken Horizon"

	Most common state.

* Reduced visibility (mid-range cutoff)
* Audio cues become important
* Dock becomes more active (seagulls, movement sounds amplified)
* Zip Lines harder to visually track mid-air

	Special effect :
* distant POIs disappear until approached

	NPC behavior :
* guards become more alert
* Dockmaster dialogue becomes cautious

---

	STORM STATE — "Active Pressure System"

	Core identity of Asku’lan.

* constant lightning cycles
* wind bursts affect traversal systems
* boat routes become unstable
* zip line sway increases significantly

	Gameplay effects :
* Sea navigation becomes risky
* Seagull system becomes more aggressive
* Totem activation likelihood increases (energy buildup state)

---

	BLACKOUT STORM — "Island Hostile Phase"

	Rare but impactful.

* near-zero visibility
* frequent lightning strikes
* audio distortion effects
* NPCs stop idle behavior and enter defensive loops

	System rules :
* Boat rental disabled
* Zip Line still usable but high failure risk
* Dock becomes survival-safe only zone

	This is the island at its most dangerous.

---

		3.. Weather → System Interactions

	This is where the design becomes MMO-level systemic.

---

	Zip Line System Interaction : 

| Weather  | Effect                                          |
| -------- | ----------------------------------------------- |
| Clear    | stable travel                                   |
| Fog      | reduced visibility, harder timing               |
| Storm    | heavy sway, lightning hazards near cables       |
| Blackout | extreme drift + occasional forced dismount risk |

---

	Boat System Interaction : 

| Weather  | Effect                |
| -------- | --------------------- |
| Clear    | full access           |
| Fog      | navigation difficulty |
| Storm    | drift + hazard zones  |
| Blackout | disabled              |

---

	Totem System Interaction : 
* Storm state increases Totem charge sensitivity
* Blackout storms slightly increase Guardian spawn probability
* Lightning impact zones may sync with Totem activation

---

	Dock System Interaction : 
* Fog → increased seagull activity
* Storm → chaotic multi-wave harassment
* Blackout → Dock Guard becomes primary defense NPC

---

		NPC Behavioral Layer

	NPCs react dynamically :
* Dockmaster: stress, sarcasm, panic escalation
* Guard: heightened patrol frequency, torch maintenance loops
* Trainers/vendors: reduced dialogue frequency in storm states
* Story NPCs: more lore-heavy or urgent lines during storms

---

		4. Rare Weather Events (Important Expansion Layer)

	These are low-frequency modifiers layered on top of states.

---

	Sea Lightning Strike Events :
* lightning hits ocean surface near coastlines
* creates temporary “electrified water zones”
* visible from multiple POIs

	Effect : 
* purely environmental hazard + immersion + navigation cue

---

	Wind Reversal Events :
* sudden directional wind shift across island
* affects :
	* zip line drift direction
	* boat routing difficulty
	* climbing stability

---

	Silent Fog Event : 
* fog becomes completely sound-deadened
* no ambient audio beyond immediate radius
* increases tension drastically

---

	Storm Bird Migration

* rare flocks move across entire island sky
* interact with :
	* dock seagull system (amplified chaos)
	* zip line visibility
	* Totem visual effects

---
