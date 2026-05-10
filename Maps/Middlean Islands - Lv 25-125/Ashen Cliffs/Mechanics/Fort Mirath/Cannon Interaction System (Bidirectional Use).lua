			Cannon Interaction System (Bidirectional Use)

	Cannons are functional siege weapons mounted on battlements and towers.
	They are not decorative and not scripted props — they are usable battlefield assets.

	Who controls the cannon depends entirely on :

> Who reaches it first and secures it.

---

	1. Cannon Baseline State

* Cannons start loaded but unmanned
* Positioned to oversee :
	* Gate approaches
	* Courtyard open areas
	* Wall paths
* They have fixed firing arcs based on placement (no free aiming)

	They are designed for :

> Area control, not precision shots.

---

	2. Enemy Use of Cannons (AI Behavior)

	When the fortress reaches "Alarmed State" :

* Nearby enemies prioritize reaching unmanned cannons
* Once manned :
	* Cannon fires periodically into predefined zones :
		* Courtyard paths
		* Gate interior
		* Wall walkways
* Shots create :
	* High damage blast zones
	* Knockback effect
	* Area denial forcing players into cover

	If enemy is killed while operating :
* Cannon becomes immediately available.

---

	3. Player Use of Cannons

	Players can interact with any unmanned cannon.

	Operation : 
* Short interaction to take control
* Cannon fires into its predefined arc
* Same blast effect enemies would produce

	This allows players to :
* Clear courtyard clusters
* Knock enemies off walls/towers
* Create safe passage zones

	Players are vulnerable while operating.

---

	4. Sabotage Mechanic (Neutral Denial)

	Players may choose to sabotage instead of operate.

	Result :
* Cannon becomes permanently unusable for both sides for that reset cycle
* Visible mechanical damage feedback
* Enemy AI may still attempt to reach it, losing time

	Use case :

> Deny area control entirely.

---

	5. Reorientation Mechanic (Quest Interaction)

	During specific quests, players can rotate cannon base to a secondary locked arc :

* Instead of firing outward, it fires inward :
	* Into courtyard
	* Into defensive positions
	* Into patrol routes

	If enemies later use this cannon :
* They unknowingly bombard their own positions.

	If players use it :
* It becomes a powerful siege tool against inner defenders.

---

	6. Special Ammunition (Resource Integration)

	Special ammo found in fortress supply crates can be loaded by players.

	Effects modify the next shots into :
* Smoke blast (vision obstruction zone)
* Fire zone (area denial)
* Heavy knockback blast (ledge control)

	Ammo is limited and requires carrying to the cannon.
	Enemies cannot use special ammo — only standard shots.

---

	7. Cannon as Active Battlefield Objective

	Cannons create dynamic control points :

| Situation              | Outcome                               |
| ---------------------- | ------------------------------------- |
| Enemy controls cannon  | Courtyard/gate becomes hostile zone   |
| Player controls cannon | Enemy patrol zones collapse           |
| Cannon sabotaged       | Area becomes neutral, traversal safer |
| Cannon reoriented      | Fortress defense turns against itself |

---

	8. Tactical Impact on Movement

	Because cannons target open spaces :
* Players are encouraged to :
	* Use walls
	* Use vertical paths
	* Avoid open courtyards during fire
* Enemies will try to push players into cannon fire zones

---

	9. Design Intent

	This system turns cannons into :

> Contested environmental weapons that shape how the fortress is fought through.

	They are :
* Objectives
* Hazards
* Tools
* Tactical opportunities

Not props.
