			Flying_Stall_Core

	System Type : Zone-Level Travel Mechanic
	(Island-Specific Override)

---

	Applies To : 
* Sunveil Market Town
* All human settlements on the island with a Flying Stall:
	* Southfall Village
	* Ravenwatch Encampment
	* Sunveil Market Town
	* Stormreach Watch

---

	Core Concept

	Flying on this island is not free-flight.

	Players must:	
1. Interact with a Flying Master NPC
2. Select a predefined aerial route
3. Rent a giant island-native flying creature
4. Travel automatically to the destination

	The system enforces geographic, political, and environmental restrictions unique to the island.

---

	Activation Flow : 

1. Player interacts with Flying Master NPC (e.g., Corvin Ashwing)
2. Flying Stall UI opens
3. Player selects:
	* Destination
	* Route (if multiple exist)
4. Payment is processed
5. Player mounts rented flying creature
6. Automatic flight begins

---

	Flight Behavior Rules : 
* Flight is fully automated
* Player cannot:
	* Change direction
	* Attack
	* Cast spells
	* Use items
* Camera control is allowed (cosmetic only)

---

	Dismount & Failure Conditions

* Player may intentionally dismount
* Results in:
	* Free fall
	* Fall damage or death depending on altitude
* Forced dismount occurs if:
	* Player crosses restricted island air boundary without authorization
	* System event interrupts route (defined in later mechanics)

---

	Island Flight Restriction Integration

* Normal flying mounts:
	* Automatically dismounted when crossing North/South air boundary
* Flying Stall mounts:
	* Authorized to cross the boundary
	* Only while on an active route

	This rule is enforced at the mechanic level, not by NPC logic.

---

	Combat & Event Lock

* Players in active flight:
	* Are immune to targeting
	* Cannot be interacted with
* Invasion events or alarms:
	* Do not interrupt active flights
	* May disable new flights temporarily (handled elsewhere)

---

	NPC Binding Rule

	Flying Master NPCs:
* Do not own routes
* Do not validate restrictions
* Act purely as:
	* Access points
	* Lore anchors
	* UI triggers

	All logic resides in Zone Mechanics.

---

	Design Purpose : 
* Preserve island scale
* Prevent flying exploits
* Maintain controlled traversal
* Allow cinematic travel
* Enable future aerial events safely

---

	Hidden / Advanced Flags :
* Supports:
	* Wind draft modifiers
	* Fog visibility layers
	* Event-based lockouts
* These are defined in child mechanic files

---