			Controlled PvP Law System

	*(Capital City – Duel Jurisdiction Law)*

	This system defines where, when, and how PvP is legally allowed inside the city and ties directly into your law, suspicion, corruption, bounty, and guard 
systems.

---

	System Purpose : "Capital City" is civilized. Random violence is a crime.

	PvP is only legal if it happens :
* in authorized locations
* under recognized rules
* or under specific hidden circumstances

	Anything else becomes a legal incident.

---

	Core Rule : 

```lua
IF player attacks another player
AND location is not Authorized PvP Zone
THEN trigger Illegal Combat Event
```

---

		Authorized PvP Zones 

	Legal combat areas :

* "Arena of Valor"
* "Training Grounds" (duel practice only)
* Military-sanctioned duels via NPCs

	In these zones :
* No penalties
* No suspicion
* Guards ignore combat

---

		Illegal Combat Zones

	All streets, markets, docks, buildings, districts.
	Combat here is a civil offense.

---

		Illegal Combat Event – Escalation Stages

	Stage 1 — Immediate Guard Reaction

	Nearest :
* Guardian Patroler
* Guardian
* Military Personnel (if nearby)

	Shouts warning and moves to intervene.

---

	Stage 2 — Combat Interruption

	Guards attempt to :
* Separate players
* Stun briefly
* Force disengage

	Feeds : 
* NPC Suspicion & Awareness System

---

	Stage 3 — Civil Law Interaction

	Both players flagged.

	Triggers "Civil Law & Fines" :

	Options :
* Pay fine
* Attempt bribe (Corruption System)
* Refuse → escalation

---

	Stage 4 — Suspicion & Record

	Both players receive :

```text
IllegalCombatCount++
Suspicion += medium value
CitizenStanding -= value
```

	This is remembered by the city.

---

	Stage 5 — Guard Alert / Bounty Path

	If :
* One player kills the other
* Or repeats offense often

	Then :
* Guard Alert triggered
* Possible "Bounty Hunter System" entry

	The city treats this as public violence.

---

	District Sensitivity : 

| District | Reaction                           |
| -------- | ---------------------------------- |
| Central  | Immediate full guard response      |
| East     | Fast intervention                  |
| West     | Slower, sometimes ignored at night |
| Docks    | Situational (depends on witnesses) |

	This gives West side its rough character.

---

		Witness System (Very Important)

	Illegal PvP only escalates fully if witnessed by :
* Civilians
* Dockers
* Guards
* Merchants
* Workers
* Drunks

	If no witness :
* Only minor suspicion gain
* No fine

	Feeds directly into :
* NPC Suspicion & Awareness

---

		Hidden / Emergent Gameplay

	Smuggling Network Interaction

	Smugglers may suggest :

> "If you must settle scores… do it where eyes don’t watch."

	They hint at low-witness areas.

---

		Corrupt Guard Interaction

	A corrupt guard may say :

> "Make it quick. I saw nothing."

	Allows bribe to cancel offense.
	Feeds Corruption & Loyalty System.

---

		Duel Exception

	Players can initiate formal duel anywhere.

	If duel is accepted :

* Becomes legal combat
* Guards ignore

	But if duel spills and hits NPC or civilian → becomes illegal.

---

		Citizen Standing Impact

	Frequent illegal PvP causes :
* Guards recognize player faster
* Merchants comment
* Tavern rumors spread (Rumor System later)

---

	System Outputs to Other Systems : 

| System               | Data Provided           |
| -------------------- | ----------------------- |
| NPC Suspicion        | Witness-based suspicion |
| Civil Law & Fines    | Fine trigger            |
| Corruption & Loyalty | Bribe path              |
| Bounty Hunter        | Public violence flag    |
| Citizen Standing     | Reputation decay        |
| Guard Alert          | Escalation              |

---

	What This Mechanic Achieves : 
* Makes PvP meaningful inside city
* Encourages use of Arena and Training Grounds
* Creates emergent dark-alley gameplay
* Makes guards feel real
* Feeds 6 of your existing systems

---
