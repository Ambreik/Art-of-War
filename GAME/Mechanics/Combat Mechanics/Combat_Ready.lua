			Combat Ready

	Purpose

* Represents a pre-combat stance or “ready-to-fight” state.
* Used by any entity capable of combat: NPCs, Monsters, Battle Pets, Guardians/Barons, and Players.
* Adds tactical depth, allowing reaction windows before full aggression.
* Works seamlessly with Global Noise System, Linked Aggro, and combat flow.

---

	States & Transitions

| Prior State             | Trigger Condition(s)                                         | Transition To           | Behavior                                                              |
| ----------------------- | ------------------------------------------------------------ | ----------------------- | --------------------------------------------------------------------- |
| Idle / Patrol / Relaxed | Noise threshold exceeded, visual detection, or player action | Combat Ready            | Entity prepares stance, cautious movement, draws weapon/spell readied |
| Investigating / Alert   | Ongoing threat detected, repeated noise, suspicious action   | Combat Ready            | Moves deliberately toward source, may call backup (if applicable)     |
| Combat Ready            | Confirmed enemy action (attack, spell, interaction)          | Combat / Aggro          | Fully engages in combat                                               |
| Combat Ready            | Threat dissipates / safe zone reached                        | Return to Idle / Patrol | Lowers guard, returns to prior behavior                               |

---

	Behavior by Entity Type

* NPCs / Monsters :
	* Stops current routine; adopts ready stance.
	* Moves cautiously toward detected threat.
	* Calls backup if applicable (Linked Aggro).

* Battle Pets :
	* Halts idle actions.
	* Prepares primary attack or skill when commanded or provoked.
	* Plays ready animation (growl, posture, visual effect).

* Guardians / Barons :
	* Stance shift occurs automatically when spawned or commanded.
	* Prepares PvP engagement; does not interact with environment outside PvP.
	* Roar/animation may generate noise event for PvP strategy.

* Players :
	* Weapon ready stance / spell channeling cue.
	* Optional visual/audio feedback for immersion.
	* Can manually enter stance (toggle), or auto-enter when noise/threat detected.

---

	Tunable Parameters

* `readyDuration`: Time entity remains in Combat Ready before fallback.
* `readinessThreshold`: Combined noise/visual threat required to enter state.
* `movementMultiplier`: Speed modifier while approaching threat (0.3–1.0).
* `backupRadius`: Radius in which allies/pets respond to ready state.
* `warningNoiseFactor`: Multiplier for noise generated when preparing (affects linked aggro).
* `visualCue`: Optional UI overlay or animation indicator.

---

	Integration Points

* Global Noise System : Triggered by noiseSum exceeding thresholds.
* Linked Aggro : Calls nearby allies, pets, or mobs.
* Scared State : Certain entities with low morale may transition to Scared instead of Combat Ready.
* Dungeon / Raid / PvP contexts : Tiered reactions based on scripted conditions.

---

	UI / Feedback

* Optional icon above entity : exclamation mark, glowing aura, or stance animation.
* Ambient sound cue : growl, shout, weapon drawn.
* Player feedback : slight weapon ready animation or screen effect if entering Combat Ready automatically.

---