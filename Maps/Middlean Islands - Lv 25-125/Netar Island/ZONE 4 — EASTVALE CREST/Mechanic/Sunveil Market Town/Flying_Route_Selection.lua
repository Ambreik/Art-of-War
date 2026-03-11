			Flying_Route_Selection

	System Type : Route Graph & Authorization Layer
	(Non-NPC, Zone-Controlled)

---

		Purpose

	Defines where, how, and under what conditions flying routes may be used on the island.

	This mechanic:
* Prevents free-form aerial traversal
* Enforces island division rules
* Allows future expansion (events, weather, sabotage, smuggling)

---

		Route Structure

	Each flying route is defined as a locked aerial corridor.

	Route Data Fields

* Origin Node : Flying Stall location
* Destination Node : Approved settlement
* Altitude Layer :
	* Low (terrain-following)
	* Mid (standard transit)
	* High (restricted / event-based)
* Boundary Authorization :
	* North-only
	* South-only
	* Cross-boundary (Flying Stall only)
* Route Type :
	* Civilian
	* Trade
	* Emergency
* One-Way / Two-Way Flag

---

		Sunveil Market Town Routes

	Example baseline routes :
* Sunveil → Ravenwatch Encampment
* Sunveil → Southfall Village
* Sunveil → Stormreach Watch *(cross-boundary)*

	Each route:
* Is preselected before mounting
* Cannot be changed mid-flight

---

		Dynamic Route Availability

	Routes may become:
* Unavailable
* Delayed
* Price-modified

	Based on:
* Time of day
* Town alert state
* Active invasions
* Weather layers (fog, wind draft)
* Trade congestion

	This is soft control, not punishment.

---

		Environmental Integration

	This mechanic listens to other zone systems:

	Fog / Mist

* Reduces visibility during flight
* Cosmetic + immersion
* No dismount risk

	Wind Drafts

* May:
	* Slightly alter flight duration
	* Enable rare hidden routes (future LCWM)

	Heat Shimmer

* Visual distortion only
* No gameplay penalty during stall flights

---

		Player Choice & Risk

	Before flight confirmation, players see:
* Route distance
* Estimated duration
* Risk markers (weather / events)

	Players who dismount mid-route:
* Lose route protection
* Are subject to fall physics
* Cannot remount

---

	Anti-Exploit Safeguards : 
	
* No mid-route teleport
* No combat tagging
* No mount swapping
* No boundary hopping

	If route integrity is broken:
* Forced dismount
* Emergency fall resolution

---