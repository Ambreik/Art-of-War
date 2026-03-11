			Stormreach Watch Soldiers (Frontline Defense Unit Group)

---

	Basic Information : 

* Group Name : Stormreach Watch Soldiers
* NPC Type : Military Defense Unit (Melee / Frontline)
* Faction : Order of Restoration (Stormreach Garrison)
* Location : Middlean Islands → Netar Island → Zone 5 — Northspire Reach / Stormreach Watch
* Exact Placement :
	* Bulwark lines
	* Plaza perimeter	
	* Village entry chokepoints
	* Patrol routes within Stormreach Watch
* Disposition : Resolute, Disciplined
* PvP Status : Not PvP-flagged
* Reputation : None
* Questgiver : No
* Trainer : No
* Skillable : No
* Respawn : Controlled (event-based)

---

	Unit Composition : 

Stormreach Watch maintains a standing force of 14 frontline soldiers, deployed across patrol and defense duties.

	Named Units : 
1. Darius Stonewall
2. Halvor Shieldhand
3. Brenric Ironstep
4. Lucan Broadblade
5. Tormek the Red
6. Alwen Strongarm
7. Corvin Steelward
8. Jarek the Unbroken
9. Sigrid Frostguard
10. Mavren Oathbound
11. Thalen Warder
12. Orik Blackshield
13. Edrin Vanguard
14. Valda Stormhold

> These names serve for immersion, targeting logic, and narrative referencing only — not individual mechanics.

---

	Visual Identity (Shared)

	Armor :
* Heavy iron-and-bronze plate
* Fur-lined pauldrons
* Stormreach insignia etched on chestplates
* Battle-worn, visibly repaired pieces

	Weapons :
* One-handed longswords
* Reinforced kite shields
* Short spears occasionally carried by a few units for variation

	Silhouette :
* Wide stance
* Shields forward
* Rare idle movement, always alert

---

	Role in Village : 

* Stormreach Watch Soldiers form the core physical barrier between invaders and the village.
	
	They:
* Hold chokepoints
* Protect civilians
* Absorb enemy pressure
* Control breaches

	They are the spine of Stormreach’s survival during invasions.

---

		Mechanics : 

	1. Patrol System

	Outside invasions, Soldiers operate on fixed patrol routes :
* Bulwark perimeter
* Plaza ring
* Storage cavern entrances
* Stairway chokepoints

	Rules :
* Routes do not change dynamically
* Patrols never leave village boundaries
* Cannot be pulled or lured outside Stormreach

	This maintains:
* Predictable safety coverage
* No exploit-based repositioning

---

	2. Bulwark Defense Protocol

	When bulwarks are under attack :
* Soldiers automatically:
	* Reassign to damaged sections
	* Prioritize enemies breaching defenses
* They form:
	* Shield walls
	* Tight formations near gaps

	If bulwarks fall :
* Soldiers shift to:
	* Plaza perimeter defense
	* Civilian escort mode

---

	3. Civilian Escort Function

	During invasions :

* Soldiers become the only NPCs that actively protect civilians.

	They :
* Move toward civilians under threat
* Position themselves between civilians and enemies
* Attempt to escort civilians toward:
	* Storage caverns
	* Inner village zones

	This mechanic does NOT require:
* Panic AI
* Evacuation routing systems
	Yet still provides :
* Visual storytelling
* Functional civilian protection

---

	4. Unique Skill — Shieldbreaker Slash

Each soldier possesses one and only one active combat skill.

	Skill: "Shieldbreaker Slash"

* Heavy sword strike
* On hit:
	* Deals physical damage
	* Pushes target backward
* Medium cooldown
* Used primarily against:
	* Breaching units
	* Elites
	* Enemies attacking civilians

	Design Purpose :
* Crowd control
* Breach stabilization
* Tactical repositioning tool

---

	5. Death & Survival Rules

	Soldiers :
* Can be killed during invasions
* Do not die outside events
* Do not respawn mid-wave

	If killed :
* That soldier remains dead for the duration of the event
* Respawns only after :
	* Event resolution
	* Or military reinforcement cycle (15 minutes after conquest)

	This makes :
* Losses meaningful
* Defense integrity visibly degrade over time

---

	6. PvP and Player Interaction

* Not PvP-flagged
* Cannot be attacked by players
* Will not follow players
* Cannot be healed or buffed directly by players

	Players influence them only indirectly via :
* Morale system
* Fortifications
* Fire/light mechanics

---

		AI Behavior : 

	Default State

* Slow, disciplined patrol
* Stops at key nodes
* Visual scanning animations

	Combat State

* Forms shield-first engagement
* Prioritizes:
	1. Breachers
	2. Enemies attacking civilians
	3. Elites
* Rarely chases enemies beyond immediate zones

	Invasion State : 
* Reinforces failing points
* Attempts to stabilize breaches
* Never retreats unless forced

---

	Integration With Other Systems : 

| System            | Interaction                    |
| ----------------- | ------------------------------ |
| Morale System     | Affects stamina, resistance    |
| Bulwark Integrity | Determines deployment behavior |
| Civilian System   | Escort & protection            |
| Invasion AI       | Target priority                |
| Fire System       | Reduced fear near fire         |

---
