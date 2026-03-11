			Guardian of the Lodge – Tipsy Player Push

	Overview : The Guardian acts as a tavern bouncer to maintain order inside the Gilded Raven. He monitors player intoxication levels and enforces the tavern rules
using non-lethal, immersive mechanics.

---

	A. Trigger Conditions : 

* Player consumes alcoholic beverages (from Tavern Shop or special consumables marked as “alcohol”).
* NPC maintains a consumption counter for each player.
* Thresholds for tipsy behavior:

| Drinks Consumed | Status                                     |
| --------------- | ------------------------------------------ |
| 1–2             | Sober / Minor effect                       |
| 3–4             | Tipsy – Warning issued                     |
| 5+              | Over-intoxicated – Push sequence triggered |

---

	B. Warning Sequence : 

1. When player reaches 3–4 drinks :
   * Guardian approaches and issues a verbal warning.
   * Example quotes:
		* "Easy there, friend! Don’t get carried away."
		* "You’ve had enough—let’s keep things civil."
		* "The tavern isn’t a playground for fools."
   * Visual cue: Guardian shakes head or gestures with hands.

2. If player ignores the warning and continues consuming or moves too erratically:
	* Push sequence is queued.

---

	C. Push Mechanic : 

* NPC physically pushes player toward the tavern exit using a controlled movement force.
* Player movement is temporarily halted while being moved.
* Push cannot damage HP; it is purely movement control.
* Pathfinding ensures player reaches tavern entrance.
* Player is unable to re-enter immediately; door is blocked for 2-5 minutes for this player.

---

	D. Escalation / Repeat Behavior : 

* If player continues to consume after being pushed out:
	* Guardian may increase push force or repeat sequence.
	* Quotes escalate:
		* "That’s your last warning!"
		* "Out! Now!"
* Tavern doors remain immune to other players’ actions, preventing exploits.

---

	E. Immortality / PvP Restrictions : 

* Guardian is not PvP flagged.
* Cannot be killed or harmed while performing the push sequence.
* Skills or AoE effects from players do not interrupt the mechanic.

---

	F. Additional Flavor & Interaction : 

* Guardian may comment on repeated offenders :
	* "You’re lucky I don’t throw you into the street proper!"
	* "Next time, the road will be your bed!"
* Can interact with Bard, Lodge Owner, and Owner’s Wife for ambient dialogue:
	* E.g., Guardian warns Bard during loud songs, Bard responds humorously.

---

	G. Optional Visual / UI Feedback : 

* Player sees a small screen prompt during push:
	* "Guardian of the Lodge is escorting you outside!"
* Optional icon indicating temporary tavern exit restriction.

---
