			Dock Workers

	Role : Labor / Operational Worker
	Location : Blackwater Landing – Dragon Isle
	Faction : Neutral

---

		Introduction : 

	"Dock Workers" are the backbone of Blackwater Landing’s daily operations. These civilians move tirelessly from dawn to dusk, unloading cargo, stacking barrels,
repairing docks, and coordinating supplies for arriving ships. Their attire is simple — canvas shirts, rolled-up sleeves, heavy boots — reflecting long hours in the
sun and saltwater spray.

	Ambient chatter and the sound of cargo being moved give the landing life and purpose, making players feel immersed in a functioning harbor.

---

		Core Attributes : 

* Level : N/A (Non-Combat NPC)
* Rank : Civilian
* HP / Defense : Minimal (for environmental hazard purposes only)
* Movement : Roaming between dock cargo zones, pier edges, storage stacks
* Aggro/Threat : Flee if pirates or hostile events occur
* Reputation Impact : Neutral; minor dialogue change if Smuggler or pirate-related events occur

---

		Behavior & AI : 

* Default State : Idle_Working
* Roaming / Patrol Routes :
	* Dock Cargo Zone
	* Pier Edge
	* Storage Stacks
* Event Response :
	* Flee toward Dock Guardians/Patrols if under threat
	* Minor reactions to player-triggered environmental events (barrel movement, crate shifting)
* Day/Night Behavior : Present full-time; idle animations and ambient actions continue
* Awareness : Detects threats within short radius, no combat capabilities

---

		Interaction Mechanics : 

* CanTalk : Yes
* Quest Interaction : No direct quests; may provide minor hints about island events
* Trade / Shop : None
* Dialogue Examples :
	* Greetings: "Another busy day at the landing." / "Watch your step around here — crates everywhere!"
	* Idle: "Stacking supplies for the next voyage.” / "These crates don’t move themselves."
	* Flee: "Get down! Pirates!" / "Take cover!"
* Environmental Contribution :
	* Dropping crates, rolling barrels, minor ambient events
	* Background chatter enhances immersion

---

		Abilities & Combat Mechanics : 

* Combat : Non-combatant; will not attack
* Defense : Minimal; reacts by fleeing
* Passive Traits : Labor-focused animations, cargo handling, NPC pathing coordination
* Environmental Mechanics :
	* Crate manipulation may be temporarily used by players for environmental puzzles or quest objectives
	* Can trigger minor ambient events (falling barrels, minor knock-on effects for mechanics)

---

		System Integration : 

* Event Hooks :
	* Flee or react to pirate ambush mechanics
	* Ambient cargo handling triggers for immersion
* Quest/Interaction Integration :
	* Optional dialogue or minor hints for nearby exploration or combat events
* Environmental Integration :
	* Supports Blackwater Landing, Barrel Chain Mechanics, and general dock-based events

---

		Extensibility / Notes : 
		
* Easily expandable to include seasonal tasks, additional cargo types, or special minor interactions
* Can be linked to future mechanics like mini-events triggered by player actions at the docks

---
