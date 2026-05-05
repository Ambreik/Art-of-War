			Harbor Pulse System

	*(Capital City – Maritime Traffic & Flow Simulation Layer)*

	This system governs the movement of ships, goods, and transient populations through the harbor of "Capital City".
	It creates a structured rhythm of arrival and departure that affects NPC density, economy, and social activity.

---

	System Purpose : The harbor is not just a fast travel point.

	It is a living logistical artery connecting "Capital City" to the wider world.

	This system ensures :
* predictable ship cycles
* shifting NPC populations
* dynamic trade density
* changing dockside behavior
* world connectivity illusion

---

	Core Rule : 

```lua id="harbor_core"
HarborState = ShipSchedule + TradeVolume + PassengerFlow + WeatherModifier + AlertLevel
```

	Each variable influences :
* who is present
* what is traded
* how crowded the docks are

---

		Ship Cycle Structure

	Arrival Phase : 
* ships enter harbor lanes
* NPC density increases rapidly
* cargo unloading begins
* travelers disembark

	Effects :
* docks become crowded
* merchants become active
* smugglers exploit chaos windows

---

	Docking Phase : 
* ships anchored at piers
* full trade interaction active
* passenger movement peak

	Effects :
* maximum economic activity
* increased pickpocket risk
* guard presence increases

---

	Departure Phase : 
* ships leave harbor lanes
* cargo is secured
* population density decreases

	Effects :
* docks gradually empty
* smuggling routes become more stable
* crowd pressure reduces

---

		Harbor Pulse Timing System

	Instead of random arrivals, ships follow :
* structured time windows
* variable delays (weather + alert level)
* faction-based scheduling patterns

	Example :
* Merchant convoy: predictable
* Smuggler ship: irregular
* Military vessel: high priority override

---

		NPC Flow System

	Each ship affects NPC population :

	Incoming Flow : 
* travelers
* merchants
* quest givers
* temporary NPCs

	Outgoing Flow : 
* locals traveling outward
* cargo shipments
* faction personnel rotations

---

		Economic Impact Layer

	Harbor activity directly influences :
* item availability in market
* rare resource influx
* fishery supply variation
* smuggling demand spikes

---

	Dock Activity Density Model : 

| State           | Effect                            |
| --------------- | --------------------------------- |
| High Arrival    | chaotic, crowded, high crime risk |
| Stable Docking  | balanced trade and patrol         |
| Departure Phase | calm, lower interaction density   |

---

		Integration with Other Systems

	Civic Offense System : 
* increased crime opportunity during arrival chaos

	NPC Suspicion System : 
* crowd density affects detection reliability

	Smuggling Network System : 
* cargo windows create optimal infiltration moments

	Guard Shift System : 
* patrol allocation adjusts based on ship load

	Whisper Network : 
* harbor arrivals introduce new rumor sources

	Eternal Sun System : 
* visibility remains stable regardless of crowd chaos

---

		Weather Interaction Override

	Harbor Pulse is partially modified by :
* Dock Mist subsystem (night visibility reduction)
* storm simulation events (future expansion)
* alert lockdown conditions

---

		Special Event Ships

	Occasionally, unique arrivals occur :
* faction emissary ships
* rare merchant vessels
* prisoner transport ships
* expedition returns

	These can temporarily :
* spike rumor activity
* increase guard presence
* unlock temporary quests

---

		Player Interaction Layer

	Players experience system indirectly through :
* changing NPC population
* shifting dock dialogue
* fluctuating merchant stock
* dynamic crowd behavior

	No UI indicators are provided.

---

	What This System Achieves : 
* makes Capital City feel globally connected
* turns docks into a living ecosystem hub
* drives economic and social variability
* creates natural stealth and chaos windows
* reinforces world scale beyond the island

---
