			Global Patrol System Design

---

	I. PATROL SYSTEM PHILOSOPHY

	The patrol system is designed to ensure that:
* No area feels static or safe for long
* Players cannot memorize “safe routes”
* Combat encounters feel organic and emergent
* Exploration is tense but fair

	Key Principle :

> Enemies inhabit the Bastion — they do not wait to be farmed.

---

	II. PATROL ZONE STRUCTURE

	The Bastion is divided into "Patrol Zones", not rooms.

	Patrol Zone Types

1. Outer Ruin Zones
	* Wildlife-dominated
	* Sparse patrol overlap
2. Inner Castle Zones
	* Crusader-heavy
	* Multiple overlapping patrol routes
3. Deep Zones (Seal-Influenced)
	* High patrol density
	* Shorter routes
	* Faster reaction times

	Zones overlap slightly to prevent hard borders.

---

	III. PATROL ROUTE DESIGN

	Route Composition

	Each patrol route consists of:
* 5–9 navigation nodes
* 1–2 optional deviation nodes
* At least one vertical or visual obstruction

	Route Variety

* Routes are loop-based, not linear
* Each enemy group has:
	* A primary loop
	* A secondary alternate loop (randomly selected)

	This ensures:
* Non-predictable movement
* Variability between visits

---

	IV. CRUSADER PATROL LOGIC

	Standard Crusader Patrols

* Group size: 2–4
* Slow, deliberate movement
* Periodic pauses at:
	* Guard posts
	* Banners
	* Doorways

	Behavioral States

1. Patrolling
2. Investigating
3. Engaging
4. Returning

	Transitions are smooth and readable.

---

	V. INVESTIGATION & RESPONSE SYSTEM

	Trigger Conditions

	Crusaders may investigate if:
* Combat occurs nearby
* A patrol is wiped out
* Spirits materialize nearby
* Rare Monster passes through

	Investigation Behavior
* One unit (usually Watcher) moves first
* Others follow after a delay
* If nothing is found:
	* Group resumes patrol
* If threat is found:
	* Full engagement begins

	This creates cascading but controlled fights.

---

	VI. SPIRIT MOVEMENT & PATROL BEHAVIOR

	Spirits do not use traditional patrols.

	Spirit Zone Anchoring
* Each spirit is bound to:
	* A location
	* An object
	* A memory point

	Movement Pattern
* Phase between anchor points
* Appear briefly, then fade
* Reappear at a new point nearby

	They intersect patrol routes without following them.

---

	VII. WILDLIFE TERRITORIAL PATHING

	Territorial Loops
* Short, contained paths
* Never overlap deeply with undead routes

	Behavior Rules
* React only to intrusion
* Return to territory quickly
* Avoid high patrol pressure zones

	Wildlife is predictable — undead are not.

---

	VIII. RARE MONSTER PATROL OVERRIDE

	The Rare Monster:
* Ignores patrol zones
* Crosses multiple route layers
* Temporarily disrupts normal patrol logic

	Effects:
* Crusaders may pause or split
* Spirits increase manifestation chance
* Wildlife flees or despawns

	This creates dynamic world events.

---

	IX. ANTI-FARM & ANTI-CAMP MECHANICS

	Patrol
* Routes shift slightly over time
* Node selection changes subtly

	Area Saturation Control

	If players remain in one zone too long:
* Patrol frequency increases
* Spirit ambush chance rises
* Elite crusader chance increases

	Encourages movement.

---

	X. SAFE ZONE BOUNDARIES

	Hard No-Patrol Areas
* Courtyard NPC zone
* Entry archways
* Outpost-adjacent paths

	Enemies:
* Will not enter
* Will reset if dragged too close

	This ensures clear player expectations.

---

	XI. PLAYER EXPERIENCE GOALS

	Players should feel that:
* The Bastion reacts to their presence
* Clearing an area is temporary
* Movement is safer than stagnation
* Awareness matters more than raw power

---

	XII. SYSTEM INTEGRATION

	The Patrol System integrates with:
* Spawn rotation logic
* Spirit reactive spawning
* Rare monster disruption
* Key fragment pacing

	It does not override:
* Dungeon entry mechanics
* Quest scripting (but supports it)

---