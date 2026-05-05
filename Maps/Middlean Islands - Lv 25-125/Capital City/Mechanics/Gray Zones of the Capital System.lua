			Gray Zones of the Capital System

	*(Capital City – Official vs Unofficial Activity Layer)*

	This system defines how different parts of Capital City naturally develop legal identity zones based on NPC behavior, system enforcement, and time-of-day 
dynamics.
	It does NOT change the map physically — it changes how the world interprets space.

---

	System Purpose : "Capital City" is divided into behavioral legality layers, not hard boundaries.

	Each zone has :
* official identity (lawful function)
* unofficial behavior layer (what actually happens when systems loosen)

	This creates : 

> "same place, different reality depending on time, crowd, and system state"

---

	Core Rule : 

```lua id="zone_core"
ZoneState = OfficialLayer + BehavioralLayer + TimeModifier + SystemPressure
```

	A zone is never purely one thing.

---

		Zone Classification Types

	Official Zones (High Law Enforcement) : 
* Central Governance District
* Barracks vicinity
* Great Library surroundings
* Judgment Hall area

	Behavior :
* strict enforcement
* low tolerance for crime
* high guard presence

---

	Controlled Zones (Mixed Use) : 
* East Academy streets
* Main commercial roads
* Merchant corridors

	Behavior :
* legal during day
* semi-fluid at night
* controlled illegal risk

---

	Gray Zones (Unofficial Layer Active) : 
* West Side back alleys
* Dockside storage paths
* tavern rear exits
* rooftop pathways

	Behavior :
* smuggling activity possible
* bribes more effective
* guards less strict at night
* social masking stronger

---

		Temporal Layering (VERY IMPORTANT)

	Zones change behavior based on time :

	Daytime (06:00–18:00) : 
* official layer dominates
* gray zones partially suppressed
* guards active everywhere

	Night (18:00–06:00) : 
* gray layer expands
* unofficial behavior emerges
* West Side becomes dominant gray zone

---

		System Interaction Hooks

	Civic Offense System : 
* crime severity depends on zone legality state

	NPC Suspicion System : 
* witnesses differ by zone density and authority level

	Bribe System : 
* bribe effectiveness increases in gray zones

	Duel Law System : 
* illegal PvP tolerated longer in gray zones

	Crowd System : 
* gray zones become more active during crowd peaks

	Smuggling System : 
* routes auto-align with gray zone expansion

---

		Dynamic Behavior Shift Rules

	Zones can temporarily shift state due to system pressure :

	Example Triggers :
* Guard Alert Level 2–3
* Smuggling exposure event
* Major civic crime
* Ship arrival congestion

	Effects :

| Zone Type  | Shift Behavior                        |
| ---------- | ------------------------------------- |
| Official   | becomes stricter                      |
| Controlled | becomes unstable                      |
| Gray       | becomes more active or more dangerous |

---

		NPC Behavioral Differences by Zone

	Central NPCs : 
* report crimes faster
* more formal dialogue
* low tolerance for anomalies

	Dock NPCs : 
* flexible morality
* rumor-heavy dialogue
* higher bribe acceptance

	Tavern NPCs (West) : 
* information brokers
* unreliable witnesses
* rumor propagation nodes

---

		Hidden Player Learning System

	Players do NOT see zone labels.

	They learn via :
* guard reactions
* NPC dialogue differences
* success/failure of illegal actions
* crowd behavior shifts

	This creates natural understanding of :

> "where law is strong" vs "where law bends"

---

		Advanced Interaction Layer

	Smugglers & Criminal Players : 
* actively map gray zones
* exploit night expansion
* use docks as transition nodes

	Lawful Players : 
* avoid gray zones at night
* rely on central corridors
* use guard-heavy protection areas

---

	System Outputs : 

| System             | Effect                        |
| ------------------ | ----------------------------- |
| Civil Law System   | zone-based punishment scaling |
| Suspicion System   | witness reliability changes   |
| Bribe System       | success probability shifts    |
| Guard Alert System | enforcement density changes   |
| Smuggling Network  | route generation logic        |
| Crowd System       | activity amplification        |

---

	What This System Achieves : 
* turns map into behavioral layers
* creates emergent "safe vs unsafe" perception
* supports stealth, crime, diplomacy, and economy
* makes Capital City feel like a living political structure

---
