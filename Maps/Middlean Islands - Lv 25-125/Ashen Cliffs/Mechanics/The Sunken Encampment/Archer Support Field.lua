			Archer Support Field

* POI : "The Sunken Encampment"
* NPC : "Kaelen Thorne — Archer Ranged Support Ally"

---

		Purpose

	This mechanic defines how the "Archer NPC" can provide tactical assistance outside the safe zone, transforming him from a simple quest ally into a dynamic 
support unit during overworld encounters.

	Kaelen acts as :
* A deployable ranged ally
* A combat support system
* A tactical reaction unit tied to quests and exploration
* A mini-AI companion that scales with playstyle

---

		Core Concept

	Kaelen’s support is triggered when :
1. The player engages in combat outside the encampment safe zone
2. The player completes specific quests or objectives that allow him to accompany them
3. The player requests support via interaction prompt
4. A scripted event calls for ranged escort support

	Once activated, Kaelen provides cover fire and suppression but does not take over combat.

---

		Trigger Conditions

	Support activates when :
* Player enters a combat encounter outside the camp boundary
		AND
* One of the following is true :
	* Kaelen is on a current escort/quest stage
	* The player manually summons Kaelen via interaction prior to departure
	* A specific phase of a mission unlocks support

	During this state :
* Archer follows the player at optimal distance
* Provides ranged fire against hostile NPCs / monsters
* Maintains ranged tactical positioning

---

		Behavior Rules

	Idle & Follow : 
* Kaelen follows at a moderate trailing distance
* Avoids proximity to environmental hazards
* Maintains line of sight to player and enemies

	Combat Support : 
* Targets hostile NPCs nearest to the player’s direction
* Fires arrows with a priority on dangerous or melee enemies
* Uses standard arrow volleys and occasional special shots
* Does not draw aggro like a player character
* Fired arrows have minor knockback or slowing effects

	This is in addition to his existing combat AI from his NPC file. ([ctxt.io][1])

---

		Support Scaling

	Kaelen’s assistance scales with :
* Player level
* Encounter difficulty
* Party size
* Story progression phase

	This ensures he feels dynamic, not static support.

---

		Cover Fire

	Cover Fire Mechanic :
* When the player enters a danger zone (e.g., a narrow pass or open battlefield), Kaelen automatically identifies up to 3 high-threat targets and fires supportive 
volleys.
* If enemies move behind obstacles, Kaelen will reposition to maintain line of sight.
* His special arrow types include :
	* Armor-piercing shot — prioritizes armored foes
	* Slowing volley — reduces enemy movement briefly
	* Support flare arrow — provides temporary vision reveal for hidden enemies

	These effects are drawn from his existing combat behavior described in his NPC file. ([ctxt.io][1])

---

		Escort Participation

	When Kaelen is part of an escort quest (e.g., aiding the rescue of the captured soldier), his support behavior becomes more integrated :
* Provides suppressive fire in ambush zones
* Guards flanks and retreats less aggressively
* Monitors NPC teammate health and retargets threats appropriately

	This transitions him from a combat NPC to a dynamic escort partner as already defined.

---

		Player Control & UI Cues

	To avoid passive AI frustration :
*UI or prompt triggers :
	* "Summon Archer Support" — available when outside safe zone
	* "Dismiss Archer" — manually cancel support
	* "Hold Position" — Kaelen holds ground and fire direction

	Support icons can show :
* Kaelen’s status
* Active targeted enemies
* Support cooldowns

---

		Balance & Cooldown

	To prevent abuse :
* Support may require a short cooldown after prolonged use
* Support is disabled inside the encampment safe zone
* Support ends if Kaelen is incapacitated or player re-enters safety

	This keeps his presence powerful but not infinite.

---

		Narrative Flavor

	Kaelen’s quotes during support might include :
* "I’ve got your back — fire at will."
* "Keep moving — I’ll pick them off."
* "Stay low and let me slow them down."

	These are consistent with his existing dialogue style where he provides ranged context.

---

		Design Rationale

	This mechanic ensures :
* The Archer feels useful even outside quests
* Combat feels more dynamic and tactical
* Players get a support feel without breaking balance

	It bridges quest linearity and open exploration encounters.

---
