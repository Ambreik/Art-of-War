			Guard Shift Rotation System

	*(Capital City – Dynamic Enforcement Schedule Layer)*

	This system governs how military and civil enforcement presence changes over time inside "Capital City".

	It creates predictable but exploitable security cycles instead of constant guard density.

---

	System Purpose : Guards are not always equally present or alert.

	This system introduces :
* structured shift rotations
* visible patrol transitions
* temporary security gaps
* behavioral changes between shifts

	This creates gameplay around :

> timing, observation, and exploitation of routine

---

	Core Rule : 

```lua id="guard_core"
GuardDensity = BasePatrolForce × ShiftState × AlertModifier × DistrictWeight
```

	Each shift is a **system-wide behavioral mode**, not just NPC respawning.

---

		Shift Cycle Structure

	Morning Shift (05:00 – 13:00) : 
* full deployment begins
* barracks activation visible
* patrols spread outward

	Behavior :
* structured patrol routes
* high discipline
* strongest inspection coverage

---

	Day Shift (13:00 – 21:00) : 
* peak enforcement presence
* full district coverage
* coordination between zones

	Behavior :
* fastest response times
* strict civic law enforcement
* high inspection frequency

---

	Night Shift (21:00 – 05:00) : 
* reduced patrol density
* localized enforcement zones
* West Side becomes partially autonomous

	Behavior :
* slower response
* reliance on witness reports
* increased corruption opportunities

---

		Visible Shift Transition Event

	At shift change times :

	Inside the Barracks and key posts :
* guards assemble
* formations change
* captains issue commands
* new patrol groups form

	This is fully visible to players.

---

		Security Window System

	Each shift transition creates temporary behavior windows :
* Low Security Window (10–20 minutes)
	* Occurs during :
		* guard handovers
		* route recalculations
	* Effects :
* reduced patrol overlap
* blind spots increase
* smuggling routes become safer
* illegal activity detection decreases slightly

---

* High Security Window : 
	* Occurs when :
		* shift stabilizes
		* patrols fully deployed
	* Effects :
		* maximum guard coverage
		* increased inspection chance
		* reduced stealth effectiveness

---

		District-Based Shift Behavior

	Central District : 
* no major reduction at night
* always partially reinforced

	East District : 
* stable academic patrol structure
* predictable enforcement patterns

	West District : 
* strongest shift variance
* night shift significantly weaker

---

		Integration with Crime Systems

	Civic Offense System : 
* punishments depend on current shift security level

	NPC Suspicion System : 
* detection probability changes with shift density

	Bribe System : 
* bribery more effective during night shift

	Smuggling Network System : 
* route efficiency increases during low security windows

	Guard Alert System : 
* can override shift structure during emergencies

---

		Guard Behavior Transition Model

	Guards are not static :

| Shift   | Behavior                  |
| ------- | ------------------------- |
| Morning | disciplined, structured   |
| Day     | highly alert, reactive    |
| Night   | flexible, slower response |

	Individual guards may also have :
* fatigue states
* corruption tendencies
* loyalty variance

---

		Player Learning System**

	Players do NOT see shift timers.

	They learn via :
* guard density changes
* patrol patterns
* reaction speed differences
* safe/unsafe behavior windows

	Eventually they understand :

> "when the city is watching more… and when it is looking away."

---

		Advanced Exploitation Layer

	Skilled players can :
* time smuggling runs during shift transitions
* avoid inspections during low coverage
* bait guards during high coverage for distractions
* coordinate illegal actions during patrol restructuring

---

	System Outputs : 

| System           | Effect                            |
| ---------------- | --------------------------------- |
| Civil Law System | enforcement strength scaling      |
| Suspicion System | detection probability changes     |
| Smuggling System | route optimization windows        |
| Bounty System    | pursuit intensity scaling         |
| Bribe System     | corruption effectiveness modifier |
| Crowd System     | visibility synergy                |

---

	What This System Achieves : 

* makes city security feel procedural, not magical
* introduces time-based stealth gameplay
* creates predictable yet exploitable patterns
* strengthens immersion of a living military city
* connects law enforcement to time ecology

---
