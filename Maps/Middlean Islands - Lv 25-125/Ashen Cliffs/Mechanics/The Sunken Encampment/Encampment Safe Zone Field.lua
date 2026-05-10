			Encampment Safe Zone Field

---

		Core Concept

	The Sunken Encampment is protected by a temporary military perimeter system established from salvaged warding pylons and signal beacons recovered from the 
wreckage.
	This creates a controlled non-hostile zone where survivors regroup, coordinate, and prepare operations against "Fort Mirath".
	It is not magical invulnerability—it is active suppression and monitoring of threats.

---

		Primary Effects

	Inside the Encampment boundary :
* Combat Suppression : 
	* Players cannot initiate combat
	* Skills flagged as hostile are disabled
	* Weapon draw is visually restricted (auto-sheathe state)

* Enemy Interaction Block : 
	* Hostile creatures cannot spawn inside the zone
	* Enemies outside the perimeter cannot cross into it
	* Projectiles fired from outside lose tracking upon entry

* Aggro Isolation : 
	* Existing aggro from outside enemies is forcibly cleared
	* Enemies lose target lock when player enters zone
	* No aggro “leak” through boundaries

---

		Boundary Behavior System

	The safe zone is not a static wall—it behaves like a soft military field grid.

	Detection Layer : 
* Invisible perimeter markers define the zone
* Movement across threshold triggers state change :
	* OUTSIDE → Combat Enabled
	* INSIDE → Combat Disabled

		Transition Effect

	When entering :
* Slight audio dampening (waves / wind softens)
* Weapon stance auto-relaxes
* UI “calms” (combat indicators fade)
* Subtle screen desaturation shift toward neutral tone

	When exiting :
* Sound sharpens again
* UI combat readiness returns
* Aggro system reactivates

---

		Structural Reasoning (Lore Integration)

	The safe zone exists because :
* The encampment is built from salvaged ship hull plating and ward pylons
* Military survivors repurposed old naval signal technology
* Commander authority maintains discipline over perimeter integrity
* Forsaken forces avoid direct breaches due to unknown signal disruption patterns

	This reinforces that the zone is :

> Maintained stability, not permanent protection

---

		Edge Condition Rules

	To keep the system fair and immersive :

	1. Boundary Exploit Prevention : 
* Players cannot attack enemies through the boundary
* Ranged skills auto-cancel if target crosses into safe zone mid-cast

	2. Pull Prevention : 
* Enemies dragged into the zone forcibly disengage and retreat
* Bosses cannot be exploited into safe zone mechanics

	3. Zone Integrity Rule : 
* If a scripted invasion event occurs (rare), safe zone becomes :
	* "Partial lockdown state"
	* NPCs react defensively
	* Combat still restricted for players unless explicitly overridden by quest state

---

		Gameplay Purpose**

	This system serves 4 major functions :

	1. Recovery Hub : Players stabilize after exploration of Ashen Cliffs.

	2. Narrative Anchor : Dialogue, quest acceptance, and story exposition happens safely here.

	3. Tactical Reset Point : Before Fort Mirath attempts, players regroup and reorganize.

	4. World Contrast Tool : It makes the rest of the island feel dangerous by comparison.

---
