			Scared State

	Purpose

* Represents a fear response in NPCs, Monsters, and Battle Pets (conditionally).
* Adds tactical depth, making some entities flee or act erratically when overwhelmed or threatened.
* Integrates with "Global Noise System", "Linked Aggro", and combat mechanics like "Combat Ready".

---

	Applicable Entities

* NPCs & Monsters : All except player-controlled entities and Guardians/Barons.
* Battle Pets : Only become scared if their summoner is defeated (dead).
* Players / Guardians / Barons : Not affected by Scared State.

---

	States & Transitions

| Prior State                  | Trigger Condition(s)                                            | Transition To       | Behavior                                                                |
| ---------------------------- | --------------------------------------------------------------- | ------------------- | ----------------------------------------------------------------------- |
| Idle / Patrol / Combat Ready | Extreme noise, overwhelming threat, low morale, or heavy damage | Scared State        | Entity attempts to flee or hide, may drop target, shows fear animations |
| Combat / Aggro               | Health threshold reached or ally loss                           | Scared State        | Fleeing or defensive movement, may call for backup if tier allows       |
| Scared State                 | Threat removed, time elapsed, or morale recovered               | Combat Ready / Idle | Entity regains composure and resumes normal behavior                    |
| Scared State                 | Cornered / trapped                                              | Panic Behavior      | Erratic movement, random attacks, or freeze in fear                     |

---

	Behavior

* Movement :
	* Entities attempt to flee toward safe zones, away from threat.
	* Some may hide in environmental cover (forests, caves).

* Combat :
	* Rarely attack unless cornered or forced; priority is escape.

* Animation / Audio :
	* Fear animations: shaking, crouching, turning away.
	* Audio: screams, growls, frightened vocalizations.

* Battle Pets :
	* When summoner is dead, pets enter Scared State: retreating, erratic behavior, defensive stance.

---

	Tunable Parameters

* `fearThreshold`: Combined factor of noise, health, morale to enter Scared State.
* `fleeSpeedMultiplier`: Movement multiplier while fleeing.
* `panicDuration`: Minimum time in Scared State before recovery is possible.
* `backupCallFactor`: Probability to alert nearby allies (NPCs/Monsters).
* `cornerPanicBehavior`: Defines reaction if trapped (attack, freeze, or erratic).

---

	Integration Points

* Global Noise System : Sudden or extreme noises can trigger Scared State.
* Linked Aggro : Nearby allies might also enter panic if high-tier enemies overwhelm them.
* Combat Ready : Entities can skip Combat Ready and go directly to Scared if morale is too low.
* Battle Pets : Triggered only if summoner dies; otherwise, normal behavior persists.

---

	UI / Feedback

* Optional "fear icon" above entity (shaking exclamation mark or red aura).
* Movement path may be highlighted in debug mode for developers.
* Audio cues indicate fear state for immersion.

---