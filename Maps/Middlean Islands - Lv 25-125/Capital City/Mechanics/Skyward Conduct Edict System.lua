			Skyward Conduct Edict System

	*(Capital City – Flying Mount Regulation)*

---

	System Purpose : In "Capital City", flying mounts are considered a security threat and a civil offense.

	This system turns vertical movement into :
* a legal matter
* a suspicion trigger
* a smuggling opportunity
* a guard behavior mechanic

	This is not cosmetic. It feeds multiple existing systems.

---

	Core Rule : Flying mounts are forbidden over most of the city.

	Allowed Zone : 
* Docks air corridor only

	Restricted Zones : 
* Central District (governance)
* East District (academy)
* West District (except dock line)

---

		Detection Logic

	When player is mounted on a flying mount :

```
IF player altitude > ground threshold
AND player zone != Dock Air Corridor
THEN trigger Skyward Violation
```

	Guards, Patrolers, and some Civilians can detect this.
	Detection range is larger in Central, smaller in West.

---

		Violation Stages**

	Stage 1 — Verbal Warning

	earest Guardian Patroler shouts :

> "Dismount immediately! Aerial travel is forbidden here!"

	Player has a short grace window to land.
	No penalty yet.

---

	Stage 2 — Forced Dismount

	If player ignores warning :
* Player is force-dismounted
* Minor fall protection applied
* Suspicion + small increase
* Civic Offense recorded

	Feeds :
* NPC Suspicion & Awareness System

---

	Stage 3 — Civic Fine

	Guard approaches player.

	Triggers "Civil Law & Fines" interaction :
* Pay fine
* Attempt bribe
* Refuse (escalates)

	Player record updated in "Citizen Standing Recognition".

---

	Stage 4 — Guard Alert State

	If repeated within time window :
* Guard Alert triggered
* More patrolers converge
* Player temporarily flagged as "Public Disturber"

	Feeds :
* Suspicion System
* Corruption & Loyalty
* Bounty System (only if escalated)

---

	District Sensitivity Differences : 

| District      | Reaction Speed | Tolerance |
| ------------- | -------------- | --------- |
| Central       | Immediate      | None      |
| East          | Fast           | Very low  |
| West          | Slower         | Moderate  |
| Dock Corridor | Allowed        | —         |

	This gives district personality.

---

		Smuggling Interaction**

	Smugglers know rooftop paths.

	If player is part of or helped by Smuggling Network :
* Hidden rooftop routes exist
* Reduced detection chance
* Special NPC hints at night
* Access to “roof drop points”

	Feeds directly into :
* Smuggling Network System
* Smuggling Response System

	This turns the restriction into gameplay.

---

		NPC Visual Behavior

	When violation occurs nearby: 
* Guards stop and look up
* Pointing animation
* Civilians step back and look
* Dockers laugh if happens near docks

	Makes the system visible and alive.

---

		Suspicion Integration

	Skyward violations add to hidden profile :

```
SkywardOffenseCount++
Suspicion += value based on district
```

	High count causes :
* More frequent inspections
* Guards recognize player faster
* Dialogue changes

---

	Edge Cases : 

| Situation                                 | Behavior               |
| ----------------------------------------- | ---------------------- |
| Player glides briefly                     | Warning only           |
| Player falls from roof                    | No offense             |
| Player uses flying mount at night in West | Longer grace time      |
| Corrupt guard nearby                      | May ignore after bribe |

---

	System Outputs to Other Systems : 

| System               | Data Provided             |
| -------------------- | ------------------------- |
| NPC Suspicion        | Suspicion increase events |
| Civil Law & Fines    | Fine trigger              |
| Corruption & Loyalty | Bribe path                |
| Smuggling Network    | Rooftop routes            |
| Citizen Standing     | Offense record            |
| Guard Alert          | Escalation trigger        |

---

	What This Mechanic Achieves : 
* Makes the city feel governed
* Makes verticality meaningful
* Creates smuggler gameplay
* Creates guard immersion
* Feeds 6 other systems naturally

	No UI needed. Pure world logic.

---
