			Capital Life & Activity System (CLAS)

	This system aims to make the city feel alive by giving NPCs independent behaviors, patrols, duties, interactions, and reactions to world events.
	It’s not just scripted idle animations — it’s rule-based behavior layers that respond to time, player state, and world conditions.

	Below is the full mechanic file for the "Capital City Life System", crafted for MMO-scale simulation and immersive urban activity.

---

---

		1. Capital Life & Activity System (CLAS)

	Purpose : To create a living, breathing "Capital City" where NPCs have autonomous routines, dynamic reactions, and context-sensitive behavior — enhancing 
immersion without manual scripting for every moment.

	Core Objective : Replace stilted static NPCs with an organic living system that deals with :
* NPC schedules
* Patrols & duties
* Inter-NPC interactions
* Player proximity reactions
* District traffic and life cycles
* Event-responsive changes

---

		2. Time & Daily Cycles

	NPC behavior changes by time of day :

	Dawn (05:00 – 08:00)
* Workers/Tavern Staff arrive
* Early merchants open shops
* Guardians tighten patrols at gates

	Morning (08:00 – 12:00)
* Full citizen traffic
* Dockers load/unload
* Military drills in Barracks
* Guards patrol streets actively

	Midday (12:00 – 15:00)
* NPC gatherings around markets
* Bard performances in squares
* Tavern foot traffic rises

	Evening (15:00 – 20:00)
* Taverns fill with workers
* Drunk NPC appearances increase
* Fishermen finish day’s catch

	Night (20:00 – 05:00)
* Street traffic lowers
* Tavern activity peaks
* Special night NPCs become active (ghost rumors, seafarers returning)
* Guard patrols become vigilant

---

		3. NPC Behavior Categories

	A. Civilians : 
* Roam randomly in public areas
* Interact with merchants
* Gather in groups at social spots
* Sit on benches, pass through squares, hum or chat

	Day behaviors include :
• Walking to market
• Chatting by fountains
• Observing events

	Night behaviors include :
• Tavern seating
• Homebound walking
• Slower movement speeds

---

	B. Dockers : 
* Found only near dock areas
* Perform :
	* Loading crates
	* Talking to each other
	* Calling seagulls away
	* Reacting to ship arrivals

	Mechanic Variation :
• When a ship arrives → dockers cheer or rush to assist

---

	C. Guardians Patrolers : 

* Act as city peacekeepers
* Have designated patrol paths depending on district
* Interrupt idle animations with :
	* Calling out suspicious NPCs
	* Greeting passing players
	* Responding to fights or mischief

	Schedules include :
• Main Gate Patrol
• Market District Patrol
• Tavern District Sweep
• Academy Observation (East Side)
• Angler’s Haven perimeter
• Central Square loops

---

	D. Guardians (Stationary) : 

* Monitor specific buildings
* Provide :
	* Greetings
	* Security presence
	* Quest tips
	* Dynamic responses to crimes or events
	* Guidance to most popular locations

	Examples:
• Guard outside Mayor’s Throne
• Guard at Great Library
• Guard at Judgment Hall
• Watcher at Temple steps

---

	E. Military Personnel : 
* Inside barracks and Central Side :
	* Conduct drills	
	* Watch towers
	* Inspect equipment
	* Respond to summons from Marshal Cedric
	* Offer training/quests when approached

---

	F. Soldiers : 
* Found in barracks, training grounds
* Perform :
	* Drill formations
	* Weapon sharpening
	* Archery practice
	* Combat sparring routines

---

	G. East Side Academy NPCs : 
* Each role has a specific behavior stack :
	* Trainers (Classes, Combat Arts) : 
		* Offer short idle block animation
		* Occasionally discuss strategies
		* Call out training advice when player nearby
	* Pet / Mount Trainers : 
		* Stand in training ring
		* Work with pets and mounts
		* React to player mount requests
	* Professional Trainers : 
		* Blacksmith instructs with hammering loops
		* Offers workbench interactions
	* Merchants : 
		* Idle at stalls
		* Call out prices
		* React to bargaining (player proximity)

---

	H. West Side – Angler’s Haven NPCs : 
* Tavern NPCs (Gloomy Lantern, Sailor’s Tavern) : 
	* Drink interactions
	* Singing loops
	* Bard follows shredded song loops during day
	* Late night drinking rituals
* Fishermen : 
	* Casting lines
	* Processing fish
	* Talking about the sea
	* Respond to waves, gulls, boat purchases
* Fisherman Trainers : 
	* Offer tips
	* Animate fishing mistakes
	* Demonstrate advanced casting
* Smugglers : 
	* Shadowed idle
	* Whisper and hand signals
	* Vanish into alley on approach
* Pirates / Travelers : 
	* Swaggering loops
	* Mocking guards, drunken tips
	* Offer sea tales (small ambient dialogue)

---

	I. Bard : 
* Wanders between squares
* Plays musical loops
* Claps at crowd gatherings
* Special music during festivals

---

	J. Workers : 
* Repairing street parts
* Carrying baskets
* Fixing roofs
* Interacting with merchants

---

	K. Drunk NPCs : 
* Random stumble loops
* Sit near taverns, railings
* Dialogue slurs
* Random fall down + laughter

---

	L. Merchants : 
* Animate haggles
* Display goods
* Interact with player when approached
* Offer dynamic commentary (weather, events, inventory shifts)

---

		4. District Aware Routines

	NPC behaviors change not just by time — but NEXT by location context :

	Central Side :
* Citizens gather at squares,
* Guards stand firm,
* Soldiers drill

	East Side :
* Combat training noise loops,
* Feedback chatter for weapon drills,
* Pet training barks and hooves

	West Side:
* Dock noise,
* Sea breeze ambient sounds,
* Fishermen frogs and gull interactions

---

		5. Player Proximity Triggers

	NPCs react when players :
* Come near (greetings, comments)
* Interrupt (block, evade)
* Solve events (dock arrival, tavern song)
* Cause noise (combat, shouting)
* Fail quests near them
* Complete quests nearby

---

		6. Event Reaction Layers

	NPCs respond to global or local events :
* Ship Arrival : 
	* Dockers cheer
	* Merchants hype trade
	* Guards line up for salute
* Tavern Festival : 
	* Bard starts songs
	* Drunks increase
	* Tavern NPCs offer bonuses
* Guard Alert : 
	* Triggered when :
		* Theft reported
		* Fight breaks out
		* Suspicious actor present
	* React by :
		* Loud calls
		* Patrol reroutes
		* Player presence recognition

---

		7. Day/Night Atmospheric Shifts

	At night :
* Street lights flicker on
* Tavern interactions intensify
* Guards become vigilant
* Drunk NPC density increases
* East Side training winds down
* West Side sailors sleep near docks

---

		8. Idle & Ambient Scenes

	Examples :
* Market Gossip : 
	* Two civilians :

> "Did you hear about that storm beast on Ashen Cliffs?"

	* Fishermen Banter : 

> "Caught nothing today, maybe tomorrow’s tides will sing."

	* Tavern Cheers : 

> "One more drink and I’ll sing that song loud enough for the stars!"

	* Guard Patrol : 

> "All calm this side of the square."

---

		9. Dynamic Dialogue Pools

	NPCs have states :
* Idle
* Friendly
* Suspicious
* Alarmed
* Celebratory
* Tired

	Each state has dialogue variations.

---

		10. System Output (Developer Ready)

	The system generates :
* Patrol schedules
* Idle animation pools
* Event reaction hooks
* Dialogue context triggers
* District behavior profiles
* Time-of-day behavior loops

---

		11. World Interaction Integration

	NPCs in CLAS respond to :
* Player reputation levels
* Faction flags
* Quest states
* Weather state
* Time-of-day
* Player progression

	Example :

> "Upon reaching rep 5 with Merchant Faction, merchant NPCs greet player by name with special dialogue."

--------------------------------------------------------------------------------------------------------------------------------------------------------------------


			Part 2 — NPC Waypoints & Duty Schedules

	This defines :
* Exact patrol loops
* Shift rotations
* District coverage logic
* Idle anchor points
* Cross-district traffic
* How the city avoids feeling repetitive

---

		1. Guardians Patrolers — Street Patrol Grid

	Guardians do looped paths, but they swap routes every shift to avoid predictability.

	Shifts

| Shift         | Time        | Patrol Density                    |
| ------------- | ----------- | --------------------------------- |
| Morning Watch | 06:00–14:00 | Standard                          |
| Evening Watch | 14:00–22:00 | High (markets & taverns)          |
| Night Watch   | 22:00–06:00 | Focus on West Side, gates, alleys |

		Patrol Routes (examples)

	Route G-1 — Main Gate → Central Square Loop

	Waypoints : 
1. Main Gate
2. Central Avenue
3. Fountain Plaza
4. Great Library stairs
5. Return to Gate via opposite street

	Purpose : player first contact, high visibility

---

	Route G-2 — Central Square → East Side Academy

1. Fountain Plaza
2. Academy entrance
3. Training Grounds perimeter
4. Merchant strip
5. Back to Central

	Purpose : oversee training & merchants

---

	Route G-3 — Central → West Side Docks

1. Central Square
2. Tavern street
3. Sailor’s Tavern exterior
4. Fisherman’s Wharf
5. Dock storage area
6. Return via back alley

	Purpose : smuggler/pirate presence control

---

	Route G-4 — Alley & Backstreet Sweep (Night only)

	Randomized between :
* Behind taverns
* Storage buildings
* Narrow passages

	Purpose : night immersion + anti-crime feeling

---

		2. Guardians (Stationary) — Post Rotation

	Stationary guardians change posts per shift.

| Post              | Morning | Evening | Night   |
| ----------------- | ------- | ------- | ------- |
| Great Library     | Guard A | Guard B | Guard C |
| Military Barracks | Guard B | Guard C | Guard A |
| Main Gate         | Guard C | Guard A | Guard B |
| Academy Entrance  | Guard A | Guard C | Guard B |

	This avoids the same "NPC forever" effect.

---

		3. Soldiers — Barracks Duty Cycle

	Soldiers do internal loops, not static standing.

	Cycle (20 min loop) : 
1. Weapon rack → sharpening animation
2. Training yard → sparring
3. Archery range → practice
4. Sitting bench → rest
5. Repeat

		Twice per day

	Formation drill :
* Soldiers line up
* Officer inspects
* March in square inside barracks

---

		4. Dockers — Dock Workflow Loop

	Dockers follow job paths, not patrols.

	Loop D-1 — Cargo Handling : 
1. Ship dock point
2. Crate stack
3. Storage entrance
4. Return

	Loop D-2 — Repair Crew : 
1. Boat hull
2. Tool bench
3. Rope stack
4. Repeat

		Ship Arrival Event

	All dockers temporarily override loops → rush to dock point.

---

		5. Civilians — Roaming Web

	Civilians use node web roaming, not fixed paths.

	Civilian Nodes : 
* Fountain Plaza
* Market Stalls
* Tavern Exterior
* Library steps
* Academy street
* Wharf viewpoint benches

	They :
* Move node to node
* Pause randomly
* Sit / talk / observe

	At night → nodes reduce to taverns and homes.

---

		6. Tavern NPCs & Drunks — Night Anchors (West Side)

	Day : 
* Few seated
* Cleaning tables
* Talking quietly

	Night Waypoints : 
1. Bar counter
2. Table
3. Outside railing
4. Alley puke spot (drunks)
5. Back inside

	Drunks may :
* Exit tavern
* Sit on ground
* Re-enter later

---

		7. Fishermen — Shoreline Pattern

1. Casting point A
2. Fish cleaning table
3. Talking spot with other fisherman
4. Net repair bench
5. Back to casting

	At sunset → all fishermen move to tavern.

---

		8. East Side Trainers — Micro-Movement Loops

	They don’t stand still.

	Class Trainers : 
* Walk 5–8 meters
* Turn to observe trainees
* Return

	Combat Trainers : 
* Circle training ring
* Stop to shout advice
* Resume

	Pet/Mount Trainers :
* Walk between animals
* Check saddle / pet
* Return to center

---

		9. Bard — Roaming Performance Route (City Wide)

	Unique: crosses districts

	Route B-1 :

1. Central Fountain
2. Market street
3. Academy entrance
4. Tavern street
5. Dock viewpoint
6. Repeat

	At each stop → 2–3 min performance.

	At night → stays only in taverns.

---

		10. Workers — Maintenance Routes

	Workers travel long paths :
1. Street crack repair (Central)
2. Roof work (East)
3. Cart fixing (West)
4. Bench rest
5. Repeat

	They visually "maintain" the city.

---

		11. Anti-Repetition Logic (Very Important)

	Every NPC has :
* 3 possible routes
* Random start point in route
* Random pause durations

	So players never see perfect loops.

---

		12. Night Compression Logic

	At night :
* Civilian nodes reduce by 60%
* Guards increase alley routes
* West Side density increases
* East Side almost empty
* Central quiet but patrolled

	This makes districts feel different by time, not just by design.

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

			
			Part 3 — Event Hooks Integration (Capital City)

	These hooks plug directly into :
* Bounty Hunter System
* Bribe System
* Corruption & Loyalty
* NPC Suspicion & Awareness
* Smuggling Network + Response

	The Capital City becomes the most reactive place in the world to player behavior.

---

		1. Guard Alert State (Driven by Suspicion System)

	Triggered by data from "NPC Suspicion & Awareness".

	Alert Levels : 

| Level                   | Trigger                                 | Effect on Waypoints                               |
| ----------------------- | --------------------------------------- | ------------------------------------------------- |
| Alert 0 — Normal        | Nothing suspicious                      | Default Part 2 behavior                           |
| Alert 1 — Watchful      | Pickpocket, shady activity, reports     | Guards slow patrol, inspect civilians             |
| Alert 2 — Active Search | Known suspect in district               | Patrol routes rerouted toward last known location |
| Alert 3 — Lockdown      | Crime, smuggling exposed, bounty target | Gates watched, West Side flooded with guards      |

	Behavior Overrides : 
* Guardians abandon loops → move to search grid pattern
* Stationary guards leave posts to reinforce streets
* Civilians move away from streets (node reduction)
* Dockers stop working, watch

---

		2. Bounty Target in City (Bounty Hunter System Hook)

	If a player with bounty enters "Capital City" :
* Invisible flag triggers Alert 2 globally
* Guardians on G-routes bias pathing toward the player district
* Bounty Hunters spawn and use **civilian node system** to blend in
* Tavern NPCs whisper rumors about "wanted individual”

	If bounty is very high → "Alert 3".

---

		3. Smuggling Activity Detected (Smuggling Systems Hook)

	When smuggling is active in "West Side" :
* Route G-3 frequency doubles
* Night alley route G-4 becomes active even during evening
* Dockers change dialogue to suspicious lines
* Some civilians avoid docks entirely

	If smuggling exposed :
* Guards form temporary checkpoint near Wharf
* Random civilian searches

---

		4. Bribe System Influence

	If player successfully bribes :
* Certain guards temporarily ignore Alert escalation
* Patrol delay added to their loop
* They skip inspection nodes

	But…

	Corruption system tracks this.

	Too much bribing in city →
* Internal corruption rises
* Some guards become unreliable
* Others become stricter (Loyalty reaction)

	You start to change the city’s guard behavior long term.

---

		5. Corruption & Loyalty System Effect

	This affects who reacts during alerts.

| Guard Type       | High Loyalty | High Corruption |
| ---------------- | ------------ | --------------- |
| Reaction speed   | Fast         | Slow            |
| Bribe acceptance | No           | Yes             |
| Suspicion checks | Frequent     | Rare            |
| Dialogue tone    | Strict       | Casual          |

	Over time, Capital City guard force personality changes based on player actions.

---

		6. Night Suspicion Multiplier

	At night :
* Suspicion gain ×1.5
* Alley routes always active
* Drunks may falsely report player
* Guards more likely to inspect

	Night becomes dangerous for shady players.

---

		7. Ship Arrival Event (From Part 2, now systemic)

	When ship arrives :
* All dockers override to dock
* Guards temporarily assist dock control
* Civilians gather to watch

	But if player is smuggler / suspicious :
* This becomes a high risk moment for detection.

---

		8. Bard as Information Carrier

	If Alert ≥ 2 :
* Bard stops performing cheerful music
* Moves toward Central only
* Plays tense themes
* Dialogue hints about unrest

	A subtle world indicator without UI.

---

		9. Seasonal Population Modifier (Your request)

	Summer : 
* +40% civilians
* More merchants active
* Longer tavern occupancy
* Guards stretched thinner → slower response time
* Different ambient music

	Winter / Bad Weather : 
* Fewer civilians
* Guards more visible
* Streets emptier → easier detection

	Season affects difficulty of shady behavior.

--------------------------------------------------------------------------------------------------------------------------------------------------------------------


			Part 4 — Dialogue & Ambient Reaction Matrix

	This layer connects directly with :
* Capital City NPC types
* Guard Alert logic
* Suspicion & Awareness
* Bounty Hunter presence
* Corruption & Loyalty
* Smuggling Network activity
* Day/Night cycle
* Seasonal state (summer liveliness)

	NPCs do not speak randomly.
	They speak because systems changed.

---

		Core Rule

	Every civilian-type NPC has :

```
DialogueState = {
  BaseState,
  TimeState,
  AlertState,
  PlayerReputationState,
  SeasonalState
}
```

	The line spoken is selected from the matching pool.

---

		Civilian NPCs (streets, markets, plazas)

	BaseState (normal day) : 
* "Another calm day in the Capital…"
* "Merchants from every island pass through here."
* "Have you visited the Great Library yet?”

		TimeState

	Night : 
* "I should head home before the patrols start asking questions."
* "Strange things happen near the docks at night…"

	AlertState (Guard Alert raised) : 
* "Did you hear? Someone caused trouble near the Barracks."
* "The Guardians don’t look pleased today…"
* "Best keep your head down."

		PlayerReputationState

	Player with high Suspicion : 
* "That one… I’ve seen the guards watching them."
* "Keep distance. Trouble follows that person."

	Player with good "Loyalty" : 

* "Ah! A trustworthy face in troubled times."

	SeasonalState (Summer) : 

* "The city feels brighter this season!"
* "More traders mean better prices!"

---

		Dockers (West Side docks)

	Base : 
* "Unload that crate carefully!"
* "Ships from the outer islands arrived at dawn."

	Night : 
* "I don’t like working when the fog rolls in…"
* "You hear that? Thought I saw lights on the water…"

	Alert / Smuggling response triggered : 
* "Inspection again? This is the third time today!"
* "Someone tipped the Guardians off…"

	If player linked to "Smuggling Network" : 

* "You’re not supposed to be here right now…"
* "Wrong time. Come back later."

---

		Guardians Patrolers (streets)

	These DO NOT chatter idly. They comment only when systems change.

	Normal : 
* "Stay vigilant."
* "Routine patrol."

	Alert raised : 
* "All units report unusual activity."
* "Keep civilians moving."

	Player with Bounty / Suspicion : 
* "You. Stop. We need a word."
* "I’ve seen your face on a notice board."

---

		Guardians (static posts at buildings)

	Normal : 
* "Authorized personnel only."
* "Move along."

	High Alert : 
* "No one enters without inspection."
* "Orders from the Barracks."

---

		Military Personnel / Soldiers (Barracks)

	Normal : 
* "Training resumes at first light."
* "Reports from the islands are troubling."

	When world events discovered (global knowledge growth) : 
* "We’ve received reports of new creatures appearing in distant regions."
* "Explorers bring strange news lately."

*(This subtly reflects your global discovery systems without referencing the Library)*

---

		East Side Trainers / Merchants

	These NPCs react mostly to season and player status.

	Summer : 
* "Best season to train. Energy is high!”
* "Supplies arrived faster this month."

	Player notorious : 
* "We train warriors here, not criminals."

---

		Taverns (West Side)

	Day : 
* "Travelers bring the best stories."
* "Ale from three islands on tap!"

	Night : 
* "Lower your voice… not all ears here are friendly."
* "Someone vanished from the docks last night…"

	If Ghost / Night systems triggered : 
* "You felt that cold breeze too, right?"

---

		Bard

	The Bard is a system narrator.

	Normal : 
* Sings about:
	* trade
	* heroes
	* islands

	High Alert : 
* Songs shift to :
	* betrayal
	* war
	* vigilance

	Summer : 
* Songs become lively, hopeful.

---

		Drunk NPCs

	These leak semi-truths tied to systems.

* "Guards don’t check the third crate… heh…"
* "I saw lights in the water… swear on it…"
* "Library folks know more than they say…"

---
