			Stormreach Watch Patrol Guards (Internal Security Unit Group)

---

	Basic Information

* Group Name : Stormreach Watch Patrol Guards
* NPC Type : Security / Internal Control
* Faction : Order of Restoration (Stormreach Garrison)
* Location : Middlean Islands → Netar Island → Zone 5 — Northspire Reach / Stormreach Watch
* Exact Placement :
	* Village streets
	* Plaza area
	* Near tavern & lodge entrances
	* Around storage caverns

* Disposition : Alert, Rule-Enforcing
* PvP Status : Not PvP-flagged
* Reputation : None
* Questgiver : No
* Trainer : No
* Skillable : No
* Respawn : Controlled (event-based)

---

	Unit Composition : 

Stormreach Watch maintains 6 Patrol Guards in total to keep streets and key internal areas safe without overcrowding.

	Named Units : 
1. Roderic Shieldbear
2. Soren Ironstride
3. Tyra Gatewatch
4. Alaric Wardstep
5. Branna Stoneguard
6. Veylen Oakshield

> These names are primarily for immersion and targeting in dynamic interactions with smugglers (Mr. B & Mr. D).

---

	Visual Identity (Shared)

	Armor :
* Light iron and bronze plate
* Fur-lined shoulder pads
* Small stormreach crest on chest
* Sturdy boots for patrolling

	Weapons :
* Medium shields (round or kite style)
* Short swords for backup combat

	Silhouette :
* Upright, attentive stance
* Walking patrol animation
* Shield held ready for blocking or skill activation

---

	Role in Village : 
* Patrol Guards serve as internal security and conflict management :
	* Enforce village rules (prevent fights, monitor suspicious activity)
	* Interact dynamically with smuggler NPCs (Mr. B & Mr. D)
	* Adjust patrol routes based on morale tiers and event state
	* Protect key NPCs inside the village, including the lodge and storage caverns

	They do not participate directly in wall defense or invasion combat, but will respond to events if morale is low or if smugglers create disturbances.

---

		Mechanics : 

	1. Patrol Routes & Dynamic Adjustments : 

* Each guard has a preset patrol route covering streets and key village interiors
* Patrol routes dynamically change based on:
	* Morale tier
	* Presence of smugglers
	* Time of day (longer patrols at night)
* Guards stop or investigate suspicious players or NPCs (visual + emote cues)

---

	2. Shield Skill — Guard Stance : 

* Skill: "Guard Stance"
	* Defensive skill activated when engaging NPCs, enemies, or smugglers
	* Effects:
		* Reduces damage taken by 20–30% for 5–10 seconds
		* Reflects small stagger / pushback to melee attackers
		* Automatically triggers when interacting with smugglers or during minor invasions
	* Cooldown: Medium (10–15 seconds)
	* Can stack visually if multiple guards engage in a row

	Purpose :
* Protect internal village areas
* Provide dynamic reaction to NPC conflict
* Encourage player awareness when near smugglers

---

	3. Interaction With Smugglers (Dynamic Conflict) : 

* Guards identify Mr. B & Mr. D on sight
* Attempt to:
	* Intercept or chase
	* Issue emote warnings
	* Block movement in streets
* Smugglers have scripted counterplay (e.g., hiding, escaping, blaming the other twin)

This creates local emergent gameplay with minor consequences without disrupting main invasion mechanics.

---

	4. Morale & Environmental Scaling : 

	Patrol behavior and skill efficiency scale with village morale :

| Morale Tier | Patrol Behavior                 | Guard Stance Frequency | Notes                                   |
| ----------- | ------------------------------- | ---------------------- | --------------------------------------- |
| Calm        | Standard patrol                 | Normal                 | Routine enforcement                     |
| Alert       | Wider patrol                    | Increased use          | Smugglers more likely intercepted       |
| Besieged    | Focused patrol on key buildings | Maximum use            | Civilians may be escorted               |
| Broken      | Reduced patrol coverage         | Low usage              | Guards may refuse non-essential actions |

---

	5. Death & Survival Rules : 

* Guards cannot die under normal conditions
* Cannot be targeted by players
* Can only be removed temporarily if killed by "Elite Crusader" units during invasion

	Post-Event :
* Guards respawn in original patrol locations
* Streets and internal areas are re-secured automatically

---

	6. PvP and Player Interaction : 

* Not PvP-flagged
* Cannot assist players in combat
* Cannot receive buffs from players
* Players can observe interactions with smugglers for emergent roleplay or stealth gameplay

---

		AI Behavior : 

	Default State
* Walk patrol route
* Monitor streets for NPC conflicts or suspicious activity
* React to environmental cues (morale, light, events)

	Conflict State
* Engage smugglers dynamically
* Activate Guard Stance automatically
* Block access to restricted areas if needed

	Invasion State
* Take passive protective stance near civilians or key buildings
* Avoid frontline engagement unless forced

---

	Integration With Other Systems : 

| System             | Interaction                                 |
| ------------------ | ------------------------------------------- |
| Morale System      | Patrol frequency & Guard Stance activation  |
| Invasion AI        | Passive protection if morale drops          |
| Dynamic NPC AI     | Interacts with Mr. B & Mr. D                |
| Environmental Cues | Reacts to fire, light, and beacon mechanics |

---

