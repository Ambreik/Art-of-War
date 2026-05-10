			Crystal Reflection Puzzle System

---

		1. System Overview

* Type : Core / Puzzle / Environmental Interaction
* Function : Uses light reflection between crystal nodes to solve spatial puzzles

---

	Core Concept :

> Player manipulates crystal orientations to create a continuous light path from **Source → Target**

---

		2. Core Components

---

	A. Light Source Node

* Function : Emits a constant light beam

---

	Behavior :
* Fixed direction OR predefined arc
* Always active

---

	Variants (future-ready) :
* Static source
* Timed source (on/off cycles)
* Movable source (advanced puzzles)

---

---

	B. Crystal Reflection Nodes

* Function : Redirect light beams

---

	Player Interaction :
* Rotate crystal:
	* Horizontal axis
	* Vertical axis (optional for complexity)

---

	Behavior :
* Reflects incoming beam at angle based on orientation
* Only active when hit by light

---

	States :
* Inactive (no light)
* Active (receiving light)
* Correct Alignment (sending correct direction)

---

---

	C. Target Node (Seal / Lock Mechanism)

* Function : Final receiver of light path

---

	Behavior :
* Activates when hit by correct beam
* Triggers :
	* Door opening
	* Hidden chamber unlock

---

	States :
* Dormant
* Charging (light received but unstable path)
* Activated (stable beam connection)

---

---

		3. Core System Logic

---

	Step Flow :
1. Light emitted from source
2. Player rotates crystals
3. Beam reflects between nodes
4. If path reaches target → system completes

---

	Validation Rules :

* Beam must be :
	* Continuous
	* Correctly aligned
* Broken beam = system fails

---

---

		4. Beam Behavior System

---

	Beam Properties :

* Travels in straight line
* Reflects at equal angle (basic physics logic)
* Stops when :
	* No valid surface
	* Misaligned crystal

---

---

	Visual Feedback :
* Weak glow (incorrect path)
* Strong beam (correct path)
* Pulsing effect when near completion

---

---

		5. Difficulty Layers (Scalable Design)

---

	Tier 1 (Current POI) : 
* Few crystals (2–4)
* Single solution path

---

	Tier 2 : 
* Multiple crystals (4–6)
* Decoy paths

---

	Tier 3 : 
* Moving elements
* Time-based light

---

---

		6. Failure & Reset System

---

	Failure Conditions :
* Incorrect alignment
* Interrupted beam

---

	Reset Behavior :
* Manual reset OR
* Auto-reset after inactivity

---

---

		7. Player Feedback System

---

	Immediate Feedback :
* Crystal glows when hit
* Beam visually changes direction

---

	Progress Feedback :
* Increasing light intensity toward target

---

	Completion Feedback :
* Sound cue
* Environmental reaction (stone movement, light burst)

---

---

		8. Integration with POI

---

	Mirrorstone Cave Usage :

* Source: fixed cave light (top opening or crystal emitter)
* Nodes: cave crystals
* Target: sealed chamber entrance

---

---

		9. Pressure Integration (Linked System)

	*(Connected, not separate mechanic)*

---

* Puzzle start → activates hidden timer
* Delay → triggers predator ambush

---

	Important :
Puzzle is still the main system
Ambush is just pressure layer

---

---

		10. Reward Integration

---

	On Completion :
* Unlock chamber

---

	Inside Chamber :
* Rare minerals
* Rare herbs
* Collectible event items

---
