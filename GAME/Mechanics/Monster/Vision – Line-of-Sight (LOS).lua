			Vision – Line-of-Sight (LOS)

	`GAME/Mechanics/Monsters/Vision.lua`

---

	Definition : Line-of-Sight (LOS) is the primary perception mechanic for most monsters.It determines whether a monster can see a player or target based on range,
field of view, and environmental obstructions. Monsters relying on LOS will remain passive until a player enters their visual detection cone and is unobstructed by 
terrain, objects, or other environmental features.

---

	Core Attributes

* Detection Range :
	* Standard monsters: Medium range (e.g., 10–20 units).
	* Elite/Boss monsters: Long range (e.g., 30+ units).
* Field of View (FOV) :
	* Standard monsters: ~90° cone in front.
	* Elite monsters: Wider or 360° in some cases.
* Obstruction Handling :
	* Trees, walls, rocks, and other environmental features block LOS.
	* Monsters cannot detect through solid barriers unless a special skill is triggered.
* Detection Delay :
	* Optional delay (0–2 seconds) to simulate reaction time when a player enters LOS.

---

	Behavior Mechanics

1. Aggro Activation :
	* Monster initiates combat only when a player enters LOS and is within detection range.
	* If the player exits LOS, some monsters will chase for a limited “leash distance” before resetting.

2. Patrol Integration :
	* Monsters with LOS may rotate or patrol to sweep an area.
	* Patrol paths may be fixed or randomized, affecting detection predictability.

3. Interaction with Stealth :
	* Players with invisibility or camouflage may bypass LOS detection if the mechanic is active.
	* Some monsters may have high perception to partially ignore stealth effects.

4. Group Awareness :
	* LOS can propagate alert signals to nearby monsters.
	* A monster spotting a player may cause nearby allies to investigate or join combat.

5. Night/Environmental Modifiers :
	* Darkness, fog, or environmental effects may reduce LOS range.
	* Monsters may gain enhanced sight in special conditions (e.g., night predators).

---

	Counterplay for Players

* Terrain Usage :
	* Hide behind obstacles, use elevation or corners to break LOS.

* Patrol Observation :
	* Study monster movement patterns to avoid detection.

* Stealth Abilities :
	* Invisibility, camouflage, or scent-masking items reduce LOS detection.

* Distance Attacks :
	* Ranged abilities may allow engagement from outside LOS detection range.

---

	Implementation Notes (DB / AI)

* Database Attributes :
	* `DetectionRange` – Max distance monster can see.
	* `FOV` – Angle in degrees of the monster’s vision cone.
	* `LOS_ObstructionCheck` – Flag to enable terrain/obstacle blocking.
	* `ReactionDelay` – Optional delay before the monster reacts.

* AI Integration :
	* LOS checks occur every few AI cycles to balance performance.
	* Propagation of aggro to nearby allies is optional and can have distance or number limits.
	* Interactions with stealth and camouflage mechanics require separate modifiers.

---