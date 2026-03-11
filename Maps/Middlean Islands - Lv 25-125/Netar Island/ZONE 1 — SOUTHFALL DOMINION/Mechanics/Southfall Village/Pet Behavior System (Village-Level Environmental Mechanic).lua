			Pet Behavior System (Village-Level Environmental Mechanic)

	Scope : Passive, non-quest, non-UI-driven feedback system using animal behavior as early-warning indicators and world immersion signals.

	Applies to:
* Southfall Village (initial implementation)
* Scalable to all Netar Island settlements

---

	A. Dogs – Environmental Sentinels

	Dogs in Southfall are semi-domesticated village animals:

* Not interactable as pets
* Not attackable
* Not targetable
* Exist purely as behavioral indicators

	1. Hidden Predator Detection

	Trigger Condition :
* Rare monsters
* Stealthed predators
* Aquatic ambushers near shore
* Night-only roaming threats

	Behavior :
* Dogs stop idle animations
* Turn head and body toward:
	* Forest edge or
	* Coastline (depending on threat source)
* Low growling → escalates into sharp barking

	Audio Cue :
* Short, rhythmic bark pattern
* Directional sound (players can triangulate threat origin)

	Player Interpretation (No UI):
> “Something dangerous is nearby, but not yet visible.”

---

	2. Rare Event Active Indicator

	Trigger Condition :
* World rare monster spawned
* Mystic Stone active in the zone
* Hidden mini-event nearby (not quest-tracked)

	Behavior :
* Dogs pace in short circles
* Occasional bark followed by whimper
* Look back toward nearby NPCs (guards or villagers)

	Audio Cue :
* Uneven bark cadence
* Slight echo effect (subtle)

	Design Purpose :
* Soft hint for explorers
* Encourages roaming and observation

---

	3. Storm Incoming Warning

	Trigger Condition :
* Windstorm
* Heavy fog
* Strong winds (cliff pushback mechanics)
* Sea storm affecting fishing

	Behavior :
* Dogs lower posture
* Ears pinned back
* Face toward coastline
* Bark once, then retreat closer to buildings

	Audio Cue :
* Single deep bark
* Followed by distant wind howl (environmental)

	Gameplay Value :
* Early warning before:
	* Reduced visibility
	* Fishing difficulty increase
	* Lantern flicker intensification

---

	B. Cats – Subtle Companion AI

	Cats are semi-interactive, curiosity-driven creatures.

---

	1. Fisher-Follow Behavior

	Trigger Condition :
* NPC Fisher OR player with Fishing Profession
* Standing idle near docks for >10 seconds
* Holding fishing rod or bait item

	Behavior :
* Cat slowly approaches
* Walks parallel to player
* Sits near:
	* Bait buckets
	* Dock edges
	* Fish crates

	Idle Animations :
* Tail flick
* Paw taps near water
* Occasional soft meow

	Design Intent :
* Adds life to docks
* Reinforces fishing micro-area as “safe but observant” space

---

	2. Environmental Awareness

	Trigger Condition :
* Night time
* Fog from sea
* Lantern flicker nearby

	Behavior :
* Cat pauses
* Looks toward lantern light
* Avoids dark areas
* Occasionally retreats to elevated spots (crates, barrels)

---

	C. System Rules & Limits

* No UI alerts
* No quest markers
* No guaranteed accuracy (false positives possible)
* Behavior is suggestive, not deterministic

---

	D. Expansion Hooks (Later, Not Now)

(Just noted, not implemented yet)

* Pet reactions tied to specific bosses
* Rare pet-follow achievements
* Integration with Beast Tamer NPC
* Cat-specific hidden mechanics (petting, bonding)

---

	Why This Works for Art of War

* Reinforces observation-based gameplay
* Encourages players to read the world, not the UI
* Scales naturally across zones

---