			Ambush State

	`GAME/Mechanics/Monsters/Ambush_State.lua`

---

	Definition : The "Ambush State" represents a proactive stealth behavior used by certain monsters to surprise and overpower players. Monsters in this state 
remain hidden, often blending with the environment, and wait for optimal conditions to initiate combat. This mechanic introduces tension, strategy, and dynamic 
encounters, particularly in forests, caves, and dungeon areas.

---

	Core Attributes

* Ambush Duration :
	* The length of time a monster remains in stealth before either initiating an attack or resetting its ambush.

* Trigger Conditions :
	* Proximity Detection : Monsters attack when players enter a defined detection radius.
	* Noise or Movement : Monsters may react to player-generated sounds, footsteps, or spellcasting.
	* Environmental Factors : Darkness, cover (bushes, rocks), or night-time conditions increase ambush effectiveness.

* Activation Delay :
	* Some monsters delay their attack after detection to optimize positioning or coordinate with nearby allies.

* Stealth Stats :
	* Reduced detectability based on visibility modifiers (e.g., night, shadow, weather).

---

	Behavior Mechanics

1. Initial Positioning :
	* Monsters position themselves in strategic locations to maximize effectiveness when ambushing players.

2. Stealth and Concealment :
	* Visual and audio cues are minimized (silent movement, camouflage) to delay player detection.

3. Coordinated Strikes :
	* Some monsters in ambush state can signal nearby allies to converge on the player simultaneously.

4. Aggression Activation :
	* Once triggered, monsters emerge from stealth and initiate attacks with a burst of damage, crowd control, or debuffs.

5. Retreat or Reset :
	* If ambush fails (players detect them early or evade), monsters may retreat, hide again, or reposition to attempt another ambush.

---

	Counterplay for Players

* Awareness and Vision Tools :
	* Spells or items that reveal hidden enemies or highlight movement can reduce ambush effectiveness.

* Noise Management :
	* Avoiding loud actions, careful movement, or using decoy devices can prevent triggering ambushes.

* Area Scanning :
	* Observing environmental indicators (disturbed foliage, glowing effects, shadow movement) allows players to anticipate ambushes.

* Crowd Control Preemptive Tactics :
	* Applying slow or immobilization spells on likely ambush spots can mitigate surprise attacks.

---

	Implementation Notes (DB / AI)

* Database Attributes :
	* `AmbushDuration`: How long the monster remains hidden.
	* `TriggerRadius`: Distance at which the ambush activates.
	* `StealthModifiers`: Modifiers for detectability based on environment or conditions.
	* `AggroSignalRadius`: Distance to alert nearby monsters.

* AI Integration :
	* AI should monitor player positions and conditions to determine the correct moment to exit ambush.
	* Include logic for coordinated attacks if multiple ambush monsters exist.
	* Implement fallback behavior if ambush is unsuccessful (reposition or reset).

---