			TRAP DETECTION & COUNTERPLAY SYSTEM
	*(System Mechanics File)*

---

		1. DESIGN GOALS (LOCKED)

	This system exists to ensure :
* Traps are threatening but not unfair
* Detection rewards awareness, class fantasy, and preparation
* High-rank traps feel dangerous without becoming invisible death
* PvP remains counterplay-driven, not reactionless

	Core principle:

> You don’t accidentally die to traps — you fail to respect them.

---

		2. TRAP VISIBILITY STATES

	Every trap exists in one of four detection states :

| State         | Description                           |
| ------------- | ------------------------------------- |
| Obvious       | Clearly visible, glowing, telegraphed |
| Concealed     | Subtle visual tells                   |
| Hidden        | No visuals unless detected            |
| Master-Hidden | Only detectable by specialists        |

	Trap state depends on:
* Trap Rank
* Creator (Roderic vs Alabam)
* Environment
* Player detection tools

---

		3. DETECTION SOURCES (WHO CAN SEE TRAPS)

	3.1 BASELINE PLAYER (NO SKILLS)

* Can see:
	* Obvious traps
* Cannot see:
	* Concealed or higher
* May notice:
	* Environmental tells (disturbed snow, scorched stone)

	This keeps the world readable but dangerous.

---

		4. FOCUS VISION – PRIMARY COUNTER SYSTEM

	4.1 Role of Focus Vision

	"Focus Vision" is the intentional, active counterplay to traps.

	It does NOT:
* Automatically reveal traps
* Trivialize high-rank traps

	It DOES:
* Provide awareness windows
* Reveal trap presence indirectly

---

	4.2 WHERE TO INTEGRATE IN THE PASSIVE FILE (IMPORTANT)

	In the Focus Vision passive file, add the following under:

	➤ "Secondary Effects / Environmental Awareness"

Add a new subsection:

> "Trap Awareness"

	Example (STRUCTURE-CONSISTENT):

* Detects unnatural ground disturbances
* Reveals faint outlines of traps within short range
* Detection strength scales with Focus Vision tier

	This avoids cluttering :
* Combat bonuses
* Vision range
* Stealth detection

	Do NOT add it under primary combat effects.

---

	4.3 FOCUS VISION – TRAP INTERACTION TABLE

| Trap Rank | Detection Result                     |
| --------- | ------------------------------------ |
| I         | Fully revealed                       |
| II        | Revealed after brief focus           |
| III       | Partial outline + warning pulse      |
| IV        | Directional hint only                |
| V         | Presence warning only (danger sense) |

	Failure does not punish the player — =lack of information is the risk.

---

		5. ASSASSIN CLASS – PASSIVE DETECTION

	Assassins get instinctual detection, not perfect vision.

	5.1 Assassin Trap Sense (Passive)

* Always active
* Chance-based detection
* No UI clutter

	Trigger Behavior :
* Slight screen shimmer
* Audio cue (metal creak, frost crack)
* Brief ground highlight

---

	5.2 Assassin Detection Chance (BASE)

| Trap Rank | Detection Chance |
| --------- | ---------------- |
| I         | 90%              |
| II        | 65%              |
| III       | 40%              |
| IV        | 20%              |
| V         | 5–10%            |

	Modifiers:
* +Chance if crouched
* +Chance if moving slowly
* −Chance during combat

	Assassins "feel" traps — they don’t expose them fully.

---

		6. OUTLAW & MASTER TRAPS – COUNTERPLAY BALANCE

	6.1 Sly Coppernail - Crafted Traps

* Harder to detect
* Reduced visual tells
* Longer arming delay (fairness)

	6.2 Counterplay Options

	Players may:
* Trigger traps with thrown objects
* Use pets or summons
* Force detonation via fire/light
* Dispel magical traps (high-tier)

	Knowledge beats reflex.

---

		7. TRAP DISARMING (LIMITED)

	Disarming is NOT universal.

	Who can disarm :
* Trap specialists
* Outlaws
* Assassins (limited)

	Disarm Risk :
* Failure triggers trap
* Rank IV–V may backfire

	This prevents trivialization.

---

		8. PvP vs PvE DIFFERENCES (CRITICAL)

| Aspect         | PvE             | PvP             |
| -------------- | --------------- | --------------- |
| Detection Time | Slightly faster | Slightly slower |
| Trap Damage    | Full            | Reduced         |
| CC Duration    | Full            | Scaled          |
| Visual Tells   | Clearer         | Subtler         |

	PvP remains tactical, not oppressive.

---

		9. ENVIRONMENTAL MODIFIERS

	Trap detection is affected by:
* Wind (sound masked)
* Snow (footprints visible)
* Firelight (reveals silhouettes)
* Darkness (reduces baseline detection)

	This links trap system ↔ environmental mechanics cleanly.

---
