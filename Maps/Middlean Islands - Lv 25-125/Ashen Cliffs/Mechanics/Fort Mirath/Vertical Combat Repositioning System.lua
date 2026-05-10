			Vertical Combat Repositioning System

	Core Idea : Enemies do not "fight where they spawn".

	Instead, they continuously evaluate :

> What vertical layer gives them the best tactical advantage right now.

	So combat becomes :
* fluid between levels
* reactive to player elevation
* shaped by sightlines and access routes

---

	1. Vertical Priority Logic (AI Decision Layer)

	Each enemy constantly evaluates 4 vertical priorities :
* "Same Level Threat" (direct combat target nearby)
* "Higher Ground Threat" (players above them)
* "Lower Ground Threat" (players below them)
* "Objective Zone Defense" (cannons, gates, chokepoints)

	They will reposition if :

> another layer provides better combat effectiveness

---

	2. Reposition Triggers

	Enemies move vertically when :

	A. Losing Line-of-Sight : 
* Player moves to rooftops, towers, or inner balconies
* Ground units cannot maintain vision

	Result: enemies climb ladders, stairs, or internal routes

---

	B. Taking High Ground Damage : 
* Players attack from rooftops/walls
* Ground units are exposed in courtyards

	Result: enemies attempt to :
* climb to walls
* take rooftops
* or move under cover zones

---

	C. Overwhelmed Ground Control : 
* Courtyard becomes too dangerous (cannons, fire zones, AoE)

	Result :
* enemies retreat into halls or upper levels
* regroup on vertical chokepoints (stairs, ladders)

---

	D. Player Drops Below Them : 
* Player moves into lower tunnels, gates, or courtyard exits

	Result :
* enemies descend stairs or drop routes to maintain pressure

---

	3. Vertical Path Selection System

	Enemies do not use random movement.

	They choose from predefined vertical connectors :
* ladders (fast ascent/descent, high exposure)
* stairs (safer but slower)
* crumbled tower paths (mid-risk flank routes)
* rooftop bridges (horizontal repositioning)
* interior hall staircases (safe regroup routes)

	Each route has :
* risk level
* exposure level
* travel speed

	AI chooses based on combat state.

---

	4. Role-Based Repositioning

	Different enemy types behave differently :

	Melee Units : 
* Prefer same-level engagement
* Will climb or descend aggressively
* Focus on closing distance

	Ranged Units : 
* Prefer high ground (walls, towers, rooftops)
* Will reposition upward if losing firing advantage

	Defensive Units : 

* Move toward chokepoints (stairs, gates, bridges)
* Try to "seal" vertical transitions

---

	5. Fortress Layer Pressure System

	Each vertical layer can become "pressured" :

| Layer       | Meaning                       |
| ----------- | ----------------------------- |
| Courtyard   | open combat chaos zone        |
| Walls       | ranged dominance zone         |
| Rooftops    | high-risk dueling zone        |
| Inner Halls | control + choke pressure zone |

	When a layer becomes too dangerous :
* enemies evacuate it
* reposition to adjacent layer
* attempt to re-stabilize control elsewhere

---

	6. Leadership Influence (your earlier system tie-in)

	Before leaders fall :
* repositioning is fast and coordinated
* multiple units shift layers together

	After leaders fall :
* repositioning becomes :
	* delayed
	* fragmented
	* less synchronized
* enemies may “misjudge” optimal layer

	This directly reinforces your degradation system.

---

	7. Player Experience Result

	Players will feel :

* enemies "follow" them across height levels
* no safe layer exists permanently
* movement itself becomes part of combat strategy
* vertical traversal is not escape — it is escalation

	Example feeling :

* "I go to the roof → they follow"
* "I drop to courtyard → they push me down"
* "I move to halls → they collapse routes"

---

		Design Purpose

	This system ensures :

* Fort Mirath is a true 3D combat space
* Verticality is active, not decorative
* Enemies behave like coordinated military units
* Combat flows across layers instead of staying static

---
