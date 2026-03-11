			Stormreach Watch Archers (Defense Unit Group)

---

	Basic Information : 

* Group Name : Stormreach Watch Archers
* NPC Type : Military Defense Unit (Ranged)
* Faction : Order of Restoration (Stormreach Garrison)
* Location :
* Middlean Islands → Netar Island → Zone 5 — Northspire Reach / Stormreach Watch
* Exact Placement :
	* Watchtower platforms
	* Outer walls
	* Upper terraces
	* Gate-facing battlements
* Disposition : Vigilant, Disciplined
* PvP Status : Not PvP-flagged
* Reputation : None
* Questgiver : No
* Trainer : No
* Skillable : No
* Respawn : Controlled (event-based)

---

	Unit Composition : 

Stormreach Watch maintains a fixed defensive archer cadre of 12 archers, positioned strategically across the village.

	Named Units : 
1. Alric the Farshot
2. Brenna Windstring
3. Caldus Hawk-Eye
4. Elira Stormmark
5. Fenric Longreach
6. Halwen Quickdraw
7. Isolde the Silent
8. Jorvan Skyward
9. Kaelis Trueflight
10. Morric Ironstring
11. Selene Galehand
12. Thoran the Steady

> These names are used for immersion and target referencing during events but do not indicate individuality in mechanics.

---

		Visual Identity (Shared)

	Armor :
* Reinforced leather with bronze trims
* Fur collars for cold resistance
* Stormreach crest on shoulder guards

	Weapons :
* Composite longbows
* Quivers visibly stocked
* Short swords as secondary (rarely used)

	Silhouette :
* Always upright, steady posture
* Bows drawn or resting at shoulder
* Never idle or slouched

---

	Role in Village : 
* Stormreach Watch Archers form the primary static defense layer of the village.
	They:
* Control vertical space
* Deny approach lanes
* Apply pressure during invasions
* Anchor Beacon and Vigil-based mechanics

	They do not roam, do not patrol, and do **not** interact socially.

---

		Mechanics : 

	1. Defensive Positioning System

* Archers are permanently assigned to fixed nodes:
	* Towers
	* Walls
	* Upper terraces
* They:
	* Cannot be lured away
	* Cannot chase enemies beyond their assigned firing arcs
	* Automatically re-position if displaced by physics or effects
* This ensures:
	* No exploit via pulling archers into field combat
	* Defense remains spatially logical

---

	2. Morale & Fortification Scaling

	Their effectiveness scales dynamically with:

	Village Morale :
* Calm → Standard accuracy and fire rate
* Alert → +Accuracy
* Besieged → +Fire rate, +target switching speed
* Broken → Reduced accuracy and slower reload

	Fortification State :
* Intact bulwarks = Optimal firing angles
* Breached bulwarks = Reduced line-of-sight efficiency

---

	3. Beacon & Vigil Buff Reception

	Archers receive enhanced benefits from:

* Beacon Fires :
	* Increased hit chance vs Crusaders
	* Slight fear immunity while near fire

* Buff: "Vigil of the Watch"
	* Faster reload speed
	* Increased critical chance
	* Improved long-range accuracy

	They do not generate buffs — only receive them.

---

	4. Unique Skill — Repulsion Shot

Each archer possesses one and only one active combat skill.

* Skill: "Repulsion Shot"
	* Fires a heavy arrow at a single target
	* On hit:
		* Pushes enemy backward
		* Briefly stuns the target
* High cooldown
* Used only against:
	* Elites
	* Siege-type units
	* Enemies breaching bulwarks

	Design Purpose :
* Crowd control
* Chokepoint protection
* Anti-breach emergency response

---

	5. Death & Survival Rules

	Archers:
* Cannot die under normal conditions
* Cannot be killed by:
	* Regular Crusaders
	* Environmental effects
	* Players

	They can be killed only by :
* Elite Crusaders
* Boss-class invasion units

	If killed:
* That archer remains dead for the remainder of the invasion
* Respawns only after the event ends

	This makes elites feel truly threatening.

---

	6. PvP and Player Interaction

* Not PvP-flagged
* Cannot be attacked by players
* Cannot assist players outside Stormreach defense boundaries
* Cannot be healed or buffed directly by players

	Players influence them only indirectly via :
* Beacons
* Morale
* Fortifications

---

		AI Behavior : 

	Default State : 
* Scan assigned sector
* Idle aim animations
* Weather-reactive posture (wind-facing stance)

	Combat State : 

* Prioritize:
	1. Siege units
	2. Elites
	3. Casters
	4. Massed infantry
* Do not pursue fleeing enemies
* Do not change elevation levels

	Invasion State : 
* Fire in coordinated volleys
* Activate Repulsion Shot only at critical moments
* Never panic, never flee

---

	Integration With Other Systems : 

| System        | Interaction                         |
| ------------- | ----------------------------------- |
| Wind System   | Projectile drift, range variation   |
| Morale System | Accuracy & firing rate scaling      |
| Beacon System | Buff reception                      |
| LCWM          | Indirect activation via Vigil buffs |
| Invasion AI   | Target priority logic               |

---
