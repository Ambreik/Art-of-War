			Administrative Access Control System

	*(Capital City – Dynamic Building Permission Layer)*

	This system governs entry, interaction, and service access inside key structures across Capital City.
	Unlike static "locked doors", access is determined by citizen standing, legal status, and contextual authority flags.

---

	System Purpose : Buildings are not just scenery.

	They are institutions with memory and authority.

	This system ensures :
* access changes based on behavior
* authority structures feel alive
* illegal players are physically restricted
* trusted players unlock deeper content

---

	Core Rule : 

```lua id="access_core"
AccessPermission = f(CitizenStanding, LegalStatus, ZoneAuthority, TimeState, GuardAlertLevel)
```

	Access is always dynamic and conditional, never permanent.

---

		Access Tiers

	Public Access : 
* open entry
* no restrictions
* default NPC interaction

	Examples :
* markets
* taverns (public areas)
* streets

---

	Controlled Access : 
* entry allowed but monitored
* guards may observe
* certain services restricted

	Examples :
* East Academy halls
* merchant guild rooms
* training facilities

---

	Restricted Access : 
* requires standing or permission
* guarded entry points
* NPC verification required

	Examples :
* Guardhouse interiors
* military sections
* administrative rooms

---

	Locked / Conditional Access : 
* only specific states allow entry
* tied to quests, events, or high standing

	Examples :
* Judgment Hall inner chamber
* Mayor’s Throne access room
* hidden library sections

---

		Entry Verification System

	When player approaches a controlled entry :

	Step 1 — Recognition Check

	Guard or NPC evaluates :
* Citizen Standing System
* recent civic offenses
* guard suspicion flags

---

	Step 2 — Context Check

	System checks :
* current alert level
* district state
* ongoing events

---

	Step 3 — Decision Output

	Possible outcomes :

	✔ Allow Entry : 
* normal access granted

	Conditional Entry : 
* allowed but monitored
* guard follows or observes

	❌ Denied Entry : 
* blocked physically
* dialogue warning triggered

	Escalation : 
* triggers Civic Offense System
* suspicion increase if forced entry attempted

---

		Guard Interaction Layer

	Guards do NOT just block.

	They respond dynamically :
* "State your purpose."
* "You are not authorized here."
* "Leave immediately."

	If bribed :
* may allow temporary access
* may reduce suspicion instead of blocking

	Feeds :
* Corruption & Loyalty System
* Bribe System
* Suspicion System

---

	Citizen Standing Influence : 

| Standing        | Access Effect       |
| --------------- | ------------------- |
| Visitor         | mostly public only  |
| Known Face      | partial access      |
| Trusted Citizen | broad access rights |
| Problematic     | restricted / denied |

	This directly ties into your "Citizen Standing Recognition System".

---

	Zone Authority Interaction

	Access rules change depending on district :

	Central District : 
* strictest access enforcement
* high verification required

	East District : 
* educational access structure
* easier entry for training-related roles

	West District : 
* flexible enforcement
* bribes and social connections matter more

---

		Time-Based Access Variation

	Certain buildings change rules by time :
* night access restrictions increase in Central
* West taverns loosen restrictions at night
* East Academy closes specific halls after hours

---

		Dynamic Access Events

	Access can temporarily change due to :
* Guard Alert escalation
* Smuggling investigations
* civic emergencies
* political events
* faction missions

	Example :

> Judgment Hall becomes fully locked during high alert

---

		Hidden Access Paths

	Some buildings have :
* secret side entries
* service tunnels
* rooftop access (linked to Gray Zones System)
* bribed guard bypass routes

	These are not shown to players — they are discovered.

---

	Integration Map : 

| System             | Effect                         |
| ------------------ | ------------------------------ |
| Citizen Standing   | primary access filter          |
| Civic Offense      | denial trigger                 |
| Bribe System       | override possibility           |
| Corruption System  | guard flexibility              |
| Suspicion System   | dynamic restriction tightening |
| Guard Alert System | global lockdown modifier       |
| Gray Zones System  | hidden alternative entry paths |

---

	What This System Achieves : 

* makes buildings feel "institutional"
* creates soft lock progression without UI gating
* reinforces law and authority gameplay
* connects social reputation to physical world access
* enables stealth/social bypass routes

---
