			Tide Reset Influence

* POI : The Sunken Encampment (southern cove hub)
* Purpose : Synchronize NPC behavior, quest availability, and dynamic systems with a natural island cycle instead of arbitrary timers.

---

	Core Concept : The island follows a repeating "Tide Cycle" that represents shoreline exposure, mist movement, wind, and Forsaken activity patterns radiating 
from "Fort Mirath".

	The Sunken Encampment reacts to this cycle in :
* NPC dialogue
* Quest availability
* Event trigger chances
* System behaviors (Supplies, Incursions, Archer support, etc.)

	This is a world scheduler disguised as environmental lore.

---

	Tide Phases (example 2-hour rotation)

| Phase             | World State                   | Visual Tone         | System Impact                          |
| ----------------- | ----------------------------- | ------------------- | -------------------------------------- |
| Low Tide          | Shore exposed, calm waters    | Bright, clear       | Best for recovery & exploration quests |
| Rising Tide       | Water climbing rocks          | Windy, tense        | Patrol chatter, caution dialogues      |
| High Tide         | Waves hit cliffs, darker tone | Dim light           | Forsaken activity implied higher       |
| Mist Tide         | Dense shoreline mist          | Fog, low visibility | Rare dialogues, special interactions   |
| Storm Tide (rare) | Rain, thunder, rough sea      | Dark storm          | Incursion chance greatly increased     |

> Storm Tide is an uncommon state that can override the normal rotation.

---

		What This Mechanic Controls

	1. Quest Availability (logical gating)

* Supply Recovery quests → "Low Tide only"
* Tracking / shoreline exploration → "Low or Rising Tide"
* Defensive or warning quests → "High or Storm Tide"
* Rare NPC hints / lore lines → "Mist Tide"

	No hard cooldowns. The tide is the reason.

---

	2. NPC Behavioral Variations

	All camp NPCs gain tide-aware lines and stances :
* Commander more strategic during Low Tide
* Archer more alert during High Tide
* Vendor comments on rough nights during Storm Tide
* Ambient soldier chatter changes with phase

---

	3. System Synergy With Other Mechanics

	This mechanic feeds previously defined systems :

| Existing Mechanic                         | Tide Interaction                         |
| ----------------------------------------- | ---------------------------------------- |
| Recovered Supply System                   | Enabled during Low Tide                  |
| Incursion Warning System                  | Higher trigger during Storm/High Tide    |
| Archer Support Field                      | More frequent readiness during High Tide |
| Arrival Stabilization                     | Visual tone differs by phase             |
| Hidden Watcher’s Lair / shoreline secrets | Easier access during Low Tide            |

---

	4. Dialogue & Intel Variants

	The tide phase acts as a hidden flag for :
* Commander hints about Mirath patrol timing
* Archer remarks about lights/signals from cliffs
* Flavor that makes the camp feel alive

---

	5. Rare "Mist Tide" Interaction Layer

	Mist Tide enables :
* Subtle extra dialogue options
* Rare mini interactions (no quests required)
* Lore breadcrumbs about Forsaken logistics and shoreline movements

---

	Implementation Logic (design-side) :
* Global island variable: `TIDE_STATE`
* Cycles automatically by world time
* Systems and NPC dialogue check this value
* No UI required; perceived through world and NPC behavior

---

	Design Benefits : 
* Natural scheduling for content
* Environmental justification for availability
* Prevents “everything always active” syndrome
* Makes the encampment feel like a living shoreline outpost
* Connects the camp rhythm to pressure from Fort Mirath

---

	One-line Summary : 

> The Sunken Encampment breathes with the sea; quests, NPCs, and events follow the tide instead of a clock.
