			Ambient Mechanic

		Living Temple Ground

---

	Concept : 

* The temple is no longer dead stone.
* Centuries of plant infestation, moss growth, root systems, and the presence of the plant-type creatures have turned the soil, cracks, and floor of the ruins into 
a semi-living surface that reacts to stillness.

	The ground does not attack movement.
	It attacks inactivity.

	This subtly pressures players to stay alert and mobile while inside the temple.

---

		Mechanic Logic

	Zone Bound : Entire Ruined Temple POI area.

	Each player inside the bounds is continuously evaluated.

	Condition Check

If a player :
* Has not moved more than X distance (small step radius)
* For 6–8 seconds

	They are considered "Claimed by the Ground"

	Effect Triggered : 
* Creeping roots emerge from cracks and rubble :
	* Player becomes "Rooted" for 2 seconds
	* Minor Nature damage (very small, flavor damage)
	* A visible vine animation wraps briefly around the legs
	* Roots retract after the effect ends

---

		Important Behavior Rules

| Situation                                                 | Behavior                                   |
| --------------------------------------------------------- | ------------------------------------------ |
| Player keeps moving                                       | Never triggers                             |
| Player fighting but stationary (casting, aiming, looting) | Triggers                                   |
| Player mounted                                            | Triggers faster (heavier weight on ground) |
| Player jumps in place                                     | Does not reset timer                 	     |
| Player walking in small circles                           | Resets timer                               |
| Combat state                                              | No immunity                                |
| Elite/Boss fights                                         | Still active (adds pressure)               |

	This makes positioning matter during fights.

---

		Visual & Audio Feedback

	This mechanic must feel natural, not magical.

	Visuals : 
* Hair-thin roots crawl over stones before the root happens
* Small dust and pebble movement from the floor
* Moss slightly shifts

	Audio : 
* Subtle crackling soil sound
* Root tearing sound when it triggers

	Players should learn to recognize the warning signs.

---

		Player Experience Impact

	This achieves several things without UI :
1. Prevents AFK safety inside the temple
2. Makes combat more dynamic (no turret play)
3. Reinforces that plants dominate this place
4. Makes the POI memorable without being annoying
5. Teaches players subconsciously: "Don’t stand still here."

---

		Synergy With Other Temple Mechanics

	This ambient mechanic works beautifully with :
* Pollen clouds (players can’t just stand outside them)
* Elite spawn events (harder fights due to movement pressure)
* Ritual interactions (players must move around altar space)
* Vines retracting/opening paths (movement focus)

---

		Tuning Values (for balance)

| Variable                 | Suggested Value | Purpose                  |
| ------------------------ | --------------- | ------------------------ |
| Idle time before trigger | 7s              | Forgiving but noticeable |
| Root duration            | 2s              | Annoying, not deadly     |
| Damage                   | 2–3% HP         | Flavor, not threat       |
| Reset movement distance  | Small step      | Prevent exploits         |

---

		Lore Justification

	The plant species here has grown so deeply into the ruin that:

> The temple floor is part of the organism.

	It senses vibration and lack of movement the same way roots detect prey or nutrients in soil.
	Players are treated like nutrient sources if they stay still.

---
