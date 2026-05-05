			Crowd Flow & Density System

	*(Capital City – Population Movement Simulation Layer)*

	This system governs how population density changes dynamically across Capital City based on time, district function, and world state.
	It does not just spawn NPCs — it simulates human behavior at scale.

---

		System Purpose

	Capital City is not static.

	This system ensures :
* streets feel busy or empty at appropriate times
* districts behave differently depending on hour
* crowd density affects gameplay (visibility, stealth, crime, immersion)

	It directly influences :
* Suspicion System
* Smuggling System
* Guard behavior
* Social Masking mechanic
* Civic enforcement

---

	Core Rule : 

```lua id="crowd_core"
CrowdDensity = BasePopulation × TimeModifier × DistrictModifier × WorldStateModifier
```

	NPCs are not placed manually — they are distributed dynamically into "flow states".

---

		Time-Based Density Cycles

	Morning Flow (05:00 – 10:00)

* High civilian movement
* Workers, merchants, soldiers active
* East Side becomes highly dense

	Effect :
* high visibility
* low stealth effectiveness
* guards more efficient

---

	Midday Flow (10:00 – 16:00)

* Market peak
* Central streets crowded
* East Academy busy

	Effect :
* pickpocket opportunities increase
* smuggling harder to detect
* guard movement slowed

---

	Evening Flow (16:00 – 21:00)

* West Side dominates population
* taverns, docks active
* mixed civilian behavior

	Effect :
* Suspicion harder to track
* more informal interactions
* illegal activity window opens

---

	Night Flow (21:00 – 05:00)

* population drops overall
* West Side remains active
* Central becomes guarded-only zones

	Effect :
* stealth strongest
* guards more alert
* rumors and suspicion spike

---

		District Density Profiles

	Central District : 
* stable density
* constant moderate traffic
* high guard presence

	East District (Academy) : 
* peak midday density
* training crowds
* structured movement paths

	West District (Haven) : 
* highly variable density
* peaks at night
* chaotic movement patterns

---

		Node-Based Crowd Movement System

	NPCs do not walk randomly.
	They move between "Population Nodes"

	Examples :
* Fountain Plaza
* Market Stalls
* Library Steps
* Academy Courtyard
* Tavern Interior
* Dock Walkways

	Node Behavior Rules :
* NPC selects next node based on time + role
* pauses randomly
* reacts to events (guards, crimes, ships)

---

		Crowd Compression Events

	When density spikes :
* paths narrow (visually and mechanically)
* movement slows
* collision avoidance increases
* stealth becomes harder

	When density drops :
* visibility increases
* guards spot players more easily
* smuggling becomes riskier

---

		Interaction with Crime Systems

	Suspicion System : 
* higher crowd = harder individual tracking
* lower crowd = easier identification

	Civic Offense System : 
* crowd witnesses determine escalation level

	Smuggling System : 

* crowded docks = cover
* empty docks = exposure

---

		Guard Behavior Dependency

	Guards adjust based on crowd state :

| Crowd State  | Guard Behavior                         |
| ------------ | -------------------------------------- |
| High Density | patrol slower, rely on witness reports |
| Low Density  | patrol more aggressively               |
| Night Sparse | checkpoints increase                   |

---

		Social Masking Integration

	Crowd Flow directly powers :
* anonymity in crowds
* blending into population
* avoiding recognition

	This is strongest during :
* midday markets
* evening taverns
* ship arrival moments

---

		Event-Based Crowd Overrides

	Certain world events temporarily override density :
* Ship Arrival (Dock Pulse System) : 
	* docks become extremely crowded instantly
	* all dockers + civilians converge
*Guard Alert Level 3 : 
	* civilians disperse from central streets
	* West Side becomes primary population zone
* Smuggling Exposure : 
	* crowd avoids docks
	* increases isolation risk for smugglers

---

	System Outputs : 

| System             | Effect                             |
| ------------------ | ---------------------------------- |
| Suspicion System   | witness density modifies detection |
| Smuggling System   | crowd provides cover or risk       |
| Civil Law System   | witness-based crime escalation     |
| Guard Alert System | patrol density adjustment          |
| Social Masking     | anonymity scaling                  |
| Bounty System      | tracking difficulty modifier       |

---

	What This System Achieves : 
* Makes "Capital City" feel like a living population
* Creates natural stealth vs exposure gameplay
* Gives meaning to time of day
* Makes every district feel different without redesigning map
* Turns NPCs into a moving system, not decoration

---
