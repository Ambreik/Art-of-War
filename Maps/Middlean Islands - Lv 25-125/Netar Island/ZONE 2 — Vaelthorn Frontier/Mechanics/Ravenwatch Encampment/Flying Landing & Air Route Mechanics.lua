			Flying Landing & Air Route Mechanics

---

		1. Flying Landing Zone (FLZ)

* Mechanic Type : World Travel Node
* Category : Military-Controlled Airspace
* Access Type : Conditional

	The Flying Landing Zone is a controlled military platform used for rapid troop and courier movement between strategic locations on Netar Island.

	This is not a civilian flight hub.

---

		2. Landing Zone States

	2.1 NORMAL STATE

	Conditions : 
* No active Night Raid Alert
* Crusader activity below threshold
* Weather conditions stable

	Behavior : 
* Landing and takeoff enabled
* Routes visible on flight map
* Mounts present and active
* Signal beacons lit

	Available Routes : 
* Ravenwatch Encampment → Southfall Village
* Ravenwatch Encampment → Stormreach Watch (North Village)

---

	2.2 RESTRICTED STATE (ALERT / NIGHT)

	Trigger Conditions : 
* Night Raid Alert active
* Crusader emergence detected
* Global Environmental Mechanic: *Zone 2 Threat Escalation*

	Behavior Changes : 
* Takeoff disabled
* Landing allowed (arrival only)
* Signal beacons extinguished
* Mounts grounded or removed
* Flight UI shows “Airspace Restricted”

---

	2.3 LOCKDOWN STATE (CRITICAL)

	Trigger Conditions : 
* Dungeon breach event
* Large-scale undead movement
* Castle seal instability

	Behavior : 
* All flight interaction disabled
* Landing zone becomes non-interactive
* Players must arrive by foot
* No aerial map access

---

	3. Arrival-Only Rule

	Mechanic Rule : 

* Players already in flight may land at Ravenwatch during restriction onset
* After landing:
	* Flight UI disabled
	* Cannot re-initiate flight
	* Mount is dismissed

	Design Purpose : 
* Prevents soft-lock
* Reinforces siege realism
* Encourages ground-based progression

---

	4. Departure Restriction Logic

	Important Rule : 

> Ravenwatch Encampment is a terminal arrival node under threat.

	Effects : 
* Players cannot:
	* Fly out during alerts
	* Use Ravenwatch as an escape shortcut
* Players must:
	* Travel outward by land
	* Engage with island danger

---

	5. Restricted Airspace Zones

	5.1 Castle Airspace

* No flight paths cross over:
	* Unfinished Castle
	* Dungeon entrance
* Air route curves away deliberately

	Lore Reason : 
* Necrotic interference
* Spirit turbulence
* Historical air losses

---

	5.2 Mountain Wind Corridors

* Sudden gusts and turbulence
* Visual-only effect unless restriction active
* During alert:
	* Corridor marked as "Closed"

---

	6. Route Line Mechanics (Map Visualization)

	Flight Map Representation : 
* Solid line = Available route
* Broken line = Arrival-only
* Red crossed line = Restricted / Closed

	Dynamic Updates : 
* Routes update live based on:
	* Time of day
	* Zone threat state
	* Dungeon activity

---

	7. Environmental Feedback

	Visual : 
* Lanterns dim or shut off
* Flags lowered during alert
* Birds scatter during restriction triggers

	Audio : 
* Wind intensifies near landing zone
* Distant horns when restrictions activate
* Silence during lockdown state

---

	8. Failure Handling

	If Player Attempts Takeoff During Restriction : 

* System message:

  > “Flight Transportation restricted. All flights grounded by military order.”

	If Player Attempts Landing During Lockdown
* Redirected to nearest valid flight node
* Or forced dismount at distance

---

	9. World Integration Summary

	Design Goals : 
* Support fast travel without trivializing danger
* Tie air travel to global world state
* Reinforce Netar Island as a contested zone

	Key Identity : 
* Flying is a privilege, not a constant
* Ravenwatch is a frontline, not a hub

---
