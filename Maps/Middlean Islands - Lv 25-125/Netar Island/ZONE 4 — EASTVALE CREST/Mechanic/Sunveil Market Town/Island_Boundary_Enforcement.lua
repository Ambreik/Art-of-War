			Island_Boundary_Enforcement

---

	System Type : Hard World Constraint / Movement Enforcement
	(Global, Persistent, Non-NPC)

---

		Purpose

	Enforces the North–South island separation rule on Netar Island, ensuring:
* Controlled traversal
* Lore-consistent geography
* No bypass via mounts, exploits, or unintended flight

	This mechanic is always active, regardless of:
* Zone
* Event
* Combat state
* Player intent

---

		Core Concept

	Netar Island is divided into two halves:
* Southern Hemisphere
* Northern Hemisphere

	They are separated by an invisible world boundary line.

	Crossing this boundary is only permitted under specific transport conditions.

---

		Boundary Detection Logic

	The system continuously checks:
* Player position
* Movement vector
* Travel state (mount / balloon / free fall / stall flight)
* Mount type
* Route legality

	Detection is server-authoritative.

---

	Allowed Crossing States

| Travel State                      | Result    |
| --------------------------------- | --------- |
| Flying Stall Giant Bird       | ✅ Allowed |
| Scripted Event Transport      | ✅ Allowed |
| World Event Escort Flight     | ✅ Allowed |
| Dungeon / Instance Transition | ✅ Allowed |

These are explicitly whitelisted travel modes.

---

		Disallowed Crossing States & Consequences

	1. Personal Flying Mount :
* Player is instantly dismounted
* Enters free fall
* No warning after first global tutorial
* Fall damage applies normally

---

	2. Hot Air Balloon :

* Balloon enters "Boundary Turbulence State"
* Effects:
	* Rapid altitude loss
	* Loss of steering
	* Structural failure after a few seconds
* Player must:
	* Jump
	* Glide (if possible)
	* Accept fall consequences

---

	3. Unauthorized Flight Path : 

* Mount refuses to advance
* Player is softly pushed back
* Warning message shown:

  > “A powerful air current blocks your passage.”

---

	4. Exploit Attempts : 

	Examples:
* Forced knockback
* Teleport abuse
* Physics glitches

	Response:
* Position correction
* Short movement lock (1–2 sec)
* No punishment, no logs visible to player

---

	Invisible Boundary Behavior : 

* No visual wall
* No map line
* No marker
* Subtle environmental cues only:
	* Wind resistance
	* Sky color shift
	* Audio pressure change

	Players learn through experience, not UI spam.

---

		Interaction With Other Systems

	Flying Stall System : 
* Only legal destinations are selectable
* Routes are pre-validated
* Boundary enforcement is never triggered during stall flight

---

	Zone Mechanics : 
* Balloons respect boundary turbulence
* Wind drafts amplify instability near boundary
* LCWM combos do not override boundary

---

	Events : 
* Boundary enforcement remains active
* Event transport uses whitelisted states
* No event can disable this mechanic

---

		Failure Philosophy

	This mechanic is:
* Non-punitive
* Non-exploitable
* Physically logical

	Players are never killed directly by the system — only by the consequences of their own movement.

---

	Hidden / Future Hooks : 
* Boundary anomalies (rare events)
* Smuggler illegal crossings (scripted)
* Late-game boundary override artifacts
* Story-driven breaches

*(All inactive for now)*

---
