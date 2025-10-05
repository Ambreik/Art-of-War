			Stealth & Camouflage System

	Path : `core/Systems/Stealth_and_Camouflage_System.lua`

---

	1. Introduction

	The "Stealth & Camouflage System" defines how entities (players, monsters, or NPCs) conceal themselves from detection, as well as how other entities perceive or
counter that concealment.
	It governs visibility, sound suppression, scent masking, and magical or technological cloaking effects — forming one of the core sensory mechanics in the world.

	Stealth is not a binary on/off mechanic. Instead, it operates on a visibility threshold, affected by distance, environment, motion, and the observer’s 
sensory acuity.
	Camouflage represents static concealment through blending with surroundings, while stealth represents *active concealment through behavior*.

---

	2. Core Mechanics / Functionality

	2.1 Visibility Value

	Every entity has a *Stealth Value (SV)* and every observer has a *Detection Value (DV)*.
	When "DV ≥ SV", the hidden entity becomes "detected".

	Visibility is recalculated dynamically based on:

* Distance (closer = easier to detect)
* Lighting (brighter = easier to detect)
* Movement speed (faster = louder/more visible)
* Line of Sight (LOS)
* Environmental cover (grass, fog, darkness)
* Noise level (from Global Noise System)
* Scent signature (if Smell Tracking enabled)

---

	2.2 Stealth States**

| State          | Description                                                             |
| -------------- | ----------------------------------------------------------------------- |
| **Hidden**     | Target fully invisible to unaware observers.                            |
| **Flickering** | Intermittent detection – observer senses “something.”                   |
| **Revealed**   | Fully visible; stealth broken.                                          |
| **Suppressed** | Entity cannot enter stealth due to conditions (combat, light exposure). |

---

	2.3 Camouflage Mechanics

	Camouflage relies on environmental adaptation rather than invisibility.
	Modifiers include:

* Terrain Matching : Bonus in similar-colored or dense environments.
* Stillness Bonus : Remaining immobile boosts concealment.
* Adaptive Armor : Certain monsters/players may use cloaking skins or gear that mimic terrain.
* Visual Interference : Fog, rain, or sandstorms reduce detection accuracy.

---

	2.4 Detection Systems

	Detection is governed by the "Monster Awareness System", which draws from:

* Vision Cone / LOS
* Hearing (Noise Levels)
* Scent (Tracking Range)
* Magical Detection (Arcane Vision, True Sight, etc.)

	Detection events are sent through the "Event Bridge" for use by:

* Combat initiation
* Dialogue or ambush triggers
* AI behavior trees
* Quest/event logic

---

	3. System Integration

| Integrated System             | Interaction                                                      |
| ----------------------------- | ---------------------------------------------------------------- |
| **Monster Awareness System**  | Uses sensory inputs to detect stealthed entities.                |
| **Global Noise System**       | Modifies stealth success based on ambient and emitted noise.     |
| **Global Environment System** | Alters visibility via light level, weather, and terrain opacity. |
| **AI Decision Layer**         | Processes partial detections (e.g., “investigate” vs. “attack”). |
| **Global Combat System**      | Cancels stealth upon attack or damage taken.                     |
| **Event Bridge**              | Triggers detection-based world or quest events.                  |
| **Night/Day Behavior System** | Enhances stealth at night or reduces it during daylight.         |

---

	4. Situational Applications

* Player Rogues/Assassins : Can toggle active stealth; stealth power drains energy over time.
* Predator Beasts : Natural camouflage in forests or deserts.
* Shadow Monsters : Partial invisibility in darkness; broken by magical light.
* Bosses with Detection Auras : Can reveal nearby stealthed units.
* Environmental Traps : Some monsters only attack when their stealth is broken (ambush types).

---

	5. Systemic Impact

	This system drastically affects:

* Exploration : Allows bypassing enemies or ambushing.
* PvE Combat : Enables stealth-based strategy or counter-detection mechanics.
* AI Behavior : Makes monsters more responsive and adaptive to environment.
* Balancing : Requires environment-based countermeasures (torches, flares, magic sight).

---

	6. Extensibility

	Future expansions can include:

* Magical Cloaking Fields (temporary stealth zones)
* Scent Mask Potions / Talismans (reduce detectability)
* Environmental Camouflage Skills (like blending into snow or sand)
* Faction-Specific Detection Devices (magic or tech).

---

	7. Debugging & Tools

	To assist developers and QA testers:

* `/debug_stealth` — toggles visibility of stealth aura outlines.
* `/show_detection_range` — visualizes awareness cones and detection radius.
* `/log_stealth_events` — records all detection and concealment transitions.

Logging data can help fine-tune stealth vs detection balance by terrain, weather, or entity type.

---