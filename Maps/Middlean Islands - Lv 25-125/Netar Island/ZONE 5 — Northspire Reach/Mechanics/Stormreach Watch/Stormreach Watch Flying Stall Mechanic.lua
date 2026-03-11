			Stormreach Watch Flying Stall Mechanic
		*(Mechanic file for this specific POI)*

---

		Flying Stall — Stormreach Watch (Zone 5 Travel Hub)

---

	Activation

	Players must:
1. Interact with the "Flying Master NPC" at "Stormreach Watch".
2. Open the "Flying Stall UI".
3. Select a valid destination from the flight map.
4. Pay the required cost (Silver or Powder of Stinky Pollen options).
5. Mount the rented island flying creature.
6. Begin the automated flight.

---

	Route Definition

	Each flight route is defined by:
* Origin Node : Stormreach Watch Stall
* Destination Node : Approved settlement (e.g., Sunveil Market Town, Southfall Village)
* Altitude Layer : Mid (standard transit)
* Route Type :
	* Civilian
	* Trade
	* Cross-boundary permitted
* Direction : One-way or Two-way flag

	Routes may be flagged temporarily as:
* Unavailable (due to invasions, alarms, weather)
* Price-Modified (high demand, alert states)
* Delayed (severe weather conditions) ([Context][1])

---

	Allowed & Disallowed Actions During Flight

	Allowed :
* Camera movement
* Viewing terrain/events
* Passive observation

	Disallowed :
* Combat actions
* Ability casts
* Item usage
* Mount swapping
* Directional control
* Teleporting mid-route

---

	Dismount & Failure Conditions

* Intentional dismount causes:
	* Free fall
	* Fall damage or potential death (based on altitude)
* Forced dismount if:
	* Player crosses restricted island boundary outside an active route
	* Route integrity is broken (system event) ([Context][2])

---

	Economic & Payment Structure

	Stormreach flight routes are priced via dual currency:

	Silver Cost : 
* Base cost increases with player level:
	`Silver Cost = 50 + (PlayerLevel − 40) × 2` (baseline formula)
* Higher during peak usage or alert states. ([Context][3])

	Powder of Stinky Pollen : 
* Alternative local currency, especially during events or when silver is scarce
* Pricing influenced by demand and time of day. ([Context][3])

	Price Modifiers : 
* Daily usage spikes increase cost by up to +50%.
* Active invasions or world events can increase base cost by +20%.
* Smuggler discounts may apply under specific conditions (e.g., night, low guard presence). ([Context][3])

	Prices are never less than :
* 40% of base Silver cost
* 60% of Powder cost ([Context][3])

---

	Route Restrictions & Authorizations : 
* Normal flying mounts are dismounted when crossing the invisible island boundary.
* Flying Stall mounts are authorized only while on their approved routes.
* Combat status blocks flight initiation.
* Alarm or invasion states may temporarily disable departures. ([Context][2])

---

	Environmental & Dynamic Flags

	While in flight:
* Weather conditions may influence:
	* Visual animations (wind shimmer, fog)
	* Estimated flight duration
* Visibility reductions add immersion (no gameplay penalties). ([Context][1])

	Future mechanics may expand to :
* Rare LCWM aerial interactions
* Event-specific aerial sightings
* Smuggler exclusive paths

---

	NPC & UI Integration

* The "Flying Master NPC" serves as the access point, not as the route controller.
* UI displays :
	* Destination names
	* Estimated duration
	* Weather & event risk markers
* Attempting to fly while in combat or during an invasion is blocked. ([Context][1])

---
