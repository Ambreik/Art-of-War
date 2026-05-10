			Layered Patrol & Alert System (Creature / AI Mechanics + Global Mechanics)

---

		3-State Alert & Perception System (Full Specification)

	This system governs all NPC security behavior inside "Fort Mirath", defining how the fortress reacts dynamically to player presence, noise, and visibility 
conditions.
	It is designed as a reactive stealth-combat framework, where player decisions directly influence enemy awareness and deployment behavior.

---

	1. 	CALM STATE (Baseline Security Mode)

	Core Behavior : In the Calm state, the fortress operates under standard military discipline :
* Guards follow predefined patrol routes across :
	* Outer walls
	* Watchtowers
	* Courtyards
	* Entry gates
* No heightened awareness unless triggered by anomalies.

---

	Vision Behavior

* Watchtower sentries maintain extended line-of-sight dominance over :
	* Courtyards
	* Gate entrances
	* Lower wall approaches
* Ground patrols have standard frontal vision arcs, meaning :
	* Players can avoid detection via flank routes, cover, or elevation changes.

---

	Hearing Behavior (Baseline)

* Sound detection exists but is limited :
	* Normal footsteps = ignored
	* Minor combat noises = only local reaction (1–2 guards investigate)

---

		Design Intent

	Calm state is meant to :
* Reward stealth approach
* Allow reconnaissance
* Encourage route planning before engagement

---

	2.	SUSPICIOUS STATE (Investigation Mode)

	Trigger Conditions

	The fortress shifts into Suspicious when localized anomalies are detected, such as :
* Discovery of a dead guard monster
* Trap activation (tripwire, pressure plate, etc.)
* Loud combat events (prolonged fighting or repeated hits)
* Cannon discharge without authorized operation

---

	Core Behavior
* Patrols pause their normal route flow
* Nearby guards enter investigation behavior
* Movement becomes :
	* Slower
	* More cautious
	* Cluster-based (guards move in small search groups)

---

	Vision Behavior Changes

* Watchtower units :
	* Rotate scanning zones more frequently
	* Focus attention on previously quiet areas
* Ground guards :
	* Increase forward scanning cone slightly
	* Check behind cover zones more frequently

---

	Hearing Behavior Change (Key Shift)

* Sound sensitivity increases :
	* Small noises now trigger investigation pings
	* Repeated noise in one area escalates suspicion faster
* However :
	* Sound does NOT yet trigger full alarm unless confirmed

---

	Behavior Pattern

* Guards do not immediately engage unknown targets
* Instead :
	* They converge on last known disturbance point
	* Attempt to visually confirm threat before escalation

---

		Design Intent

	Suspicious state creates :
* Tension without full combat escalation
* Opportunity for players to disengage or reposition
* Risk of being "found out" if careless

---

	3.	ALARMED STATE (Full Fortress Mobilization)

	Trigger Conditions

	Alarm state is activated when :
* Guard confirms hostile intruder presence
* Suspicious investigations escalate repeatedly without resolution
* Loud sustained combat occurs inside key fortress zones
* Watchtower visual confirmation of intruders

---

	Alarm Propagation System

* A bell is rung from designated watchtower alarm points
* Alarm spreads instantly across fortress zones :
	* Courtyards
	* Walls
	* Inner halls
	* Dungeon exits

---

	Core Behavior

* Patrol routes are immediately suspended
* Guards switch to :
	* Active pursuit
	* Zone locking (blocking exits and chokepoints)
	* Reinforcement summoning from :
		* Inner halls
		* Dungeon exits

---

	Vision Behavior

* Watchtowers shift into :
	* Wide-area scanning mode
	* Priority targeting of moving players
* Ground units coordinate to reduce blind spots

---

	Hearing Behavior

* Sound is no longer investigative — it is combat-confirmed tracking
* Even distant movement can trigger pursuit routing

---

	Tactical Response

* Guards attempt to : 
	* Surround intruder positions
	* Cut off escape routes via gate control
	* Push players toward open kill zones (courtyards or narrow corridors)

---

		Design Intent

	Alarmed state represents :
* Full military response
* Fortress behaving as a unified defense organism
* High-risk, high-pressure combat scenario

---

	4.	Environmental Perception Modifiers (Applies to ALL STATES)

	These modifiers are applied globally depending on island conditions :

---

	Fog Conditions (Ashen Cliffs Effect)

* Vision Range ↓
	* Watchtowers lose long-range clarity
	* Ground patrols have reduced detection distance

* Hearing Range ↑
	* Footsteps, metal movement, and combat noises travel further
	* Guards rely more on sound triangulation than sight

---

	Night Conditions

* Slight reduction in visual detection efficiency
* Patrols become more :
	* Conservative
	* Slow-moving
	* Sound-sensitive
* Watchtowers maintain dominance but lose precision at long range

---

		Design Purpose (Environmental Integration)

	These modifiers ensure :
* Stealth is environment-dependent, not static
* Players can exploit :
	* Fog for infiltration
	* Night for route breaking
* Fortress remains dangerous, but not omniscient under poor conditions

---

	5.	Overall System Intent (Design Logic)

	This entire system creates :

	✔ A layered stealth hierarchy :
* Calm = planning phase
* Suspicious = tension & correction phase
* Alarmed = full containment phase

	✔ A fortress that behaves like a living security network : 
* Not static enemies
* But reactive defensive logic

	✔ A gameplay loop of :
* Observe → Infiltrate → Trigger → Adapt → Escape or Conquer

---
