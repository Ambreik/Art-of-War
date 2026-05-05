			Civic Offense & Fines System

	*(Capital City – Civil Law Enforcement Layer)*

	This system governs non-combat crimes inside "Capital City".
	It ensures that lawbreaking does not always escalate into violence, but instead flows through legal, economic, and reputation consequences.

---

		System Purpose

	Not all crimes are violent.

	This system handles :
* minor offenses
* social violations
* restricted actions
* unlawful behavior in public spaces

	It converts "crime" into :

> investigation → penalty → consequence → record

	Instead of instant combat.

---

	Core Rule :

```lua
IF player triggers civic violation
THEN create Civic Offense Record
AND initiate response chain
```

	No immediate combat unless escalation conditions are met.

---

		Detected Offenses

	Standard Civic Violations : 
* Weapon drawn in civilian zones
* Flying mount violation (feeds Skyward Edict system)
* Illegal PvP attempt (feeds Duel Law system)
* Trespassing restricted buildings
* Disturbing guards or officials
* Blocking civic movement (crowds, markets)

---

	Offense Severity Levels : 

| Level    | Description                   | Outcome                  |
| -------- | ----------------------------- | ------------------------ |
| Minor    | accidental / low impact       | warning or small fine    |
| Moderate | repeated or witnessed         | fine + questioning       |
| Major    | disruptive / intentional      | escort + full inspection |
| Severe   | repeated crimes or escalation | bounty flag possible     |

---

		Response Chain**

	1. Detection Phase

	Triggered by :
* Guardian Patrolers
* Stationary Guardians
* Civilian reports (Suspicion System)
* Merchant complaints

---

	2. Interception Phase

	Guard approaches player :
* stops movement
* issues verbal warning
* requests compliance

---

	3. Civic Inspection

	Player is :
* questioned
* identified
* checked against Citizen Standing

	This feeds :
* NPC Suspicion & Awareness System

---

	4. Resolution Options

	Player is given choices:
* Pay Fine : 
	* instant resolution
	* reduces Civic record severity

	Bribe Attempt : 
* triggers Corruption & Loyalty System
* success depends on guard personality

	Refuse : 
* escalates offense level
* may trigger escort or alert

---

	5. Escort to Guardhouse

	If escalated :
* player escorted to nearest Guardhouse
* temporary movement restriction
* full record review

---

		Civic Record System

	Every offense is stored :

```text
CivicRecordEntry = {
  Type,
  Severity,
  Location,
  WitnessCount,
  ResolutionMethod
}
```

	This affects :
* guard behavior
* merchant pricing
* suspicion baseline
* future inspections

---

		Integration with Existing Systems

	Skyward Conduct Edict : 
* flying violation becomes civic offense automatically

	Duel Jurisdiction Law : 
* illegal PvP feeds into civic offense first

	NPC Suspicion System : 
* determines witness-based escalation

	Bribe System : 
* can override fines or reduce severity

	Corruption & Loyalty System : 
* determines guard flexibility

	Bounty Hunter System : 
* only triggered if civic offenses escalate repeatedly

---

		Guard Personality Influence

	Guards are not identical :

| Type          | Behavior                            |
| ------------- | ----------------------------------- |
| Loyal Guard   | strict enforcement                  |
| Corrupt Guard | accepts bribes easily               |
| Veteran Guard | may issue warnings instead of fines |

---

		Citizen Standing Impact

	Each civic offense modifies hidden reputation : 

* repeated offenses → "Problematic Individual"
* clean behavior → "Trusted Citizen"

	This affects :
* dialogue tone
* inspection frequency
* access to restricted buildings

---

	District Differences : 

| District | Enforcement Style                          |
| -------- | ------------------------------------------ |
| Central  | strict legal enforcement                   |
| East     | educational (warnings first)               |
| West     | flexible, situational enforcement          |
| Docks    | chaotic enforcement (depends on witnesses) |

---

		Failure Escalation Path

	If player ignores all responses :
1. Warning ignored
2. Fine refused
3. Escort resisted
4. Guard Alert triggered
5. Bounty System entry (if severe enough)

---

	System Outputs : 

| System             | Output                   |
| ------------------ | ------------------------ |
| Suspicion System   | witness-based suspicion  |
| Bribe System       | negotiation chance       |
| Corruption System  | guard behavior variation |
| Bounty System      | escalation trigger       |
| Citizen Standing   | reputation evolution     |
| Guard Alert System | enforcement escalation   |

---

	What This System Achieves : 
* Makes law feel structured, not binary
* Gives players multiple escape paths
* Creates social consequences without combat
* Makes guards feel like administrators, not enemies
* Connects all your crime-related systems into one layer

---
