			Coward

	Path : `GAME/Mechanics/Monsters/Types/Coward.lua`

---

	Definition

* Coward-type monsters are timid or defensive creatures that actively attempt to avoid combat when threatened.
* They are often low-HP or fragile, relying on fleeing mechanics, environmental advantages, or summoning reinforcements rather than direct confrontation.
* These monsters introduce dynamic encounter design, forcing players to adapt their strategy to prevent escapes or avoid triggering reinforcements.

---

	Core Attributes

* HP Scaling : Low to moderate.
* Defense : Low; avoids damage rather than absorbing it.
* Damage Output : Minimal; rarely engages unless cornered or enraged.
* Mobility : High; enhanced movement speed to flee from threats.
* CC Resistance : Low; crowd-control can prevent fleeing but may provoke counterplay.

---

	Stat Profile & Tuning

* Movement Speed : Increased to prioritize escape.
* Aggro Threshold : Very low; will attempt to disengage at minimal damage or threat.
* Triggering Mechanisms :
	* Flight is triggered by HP thresholds (e.g., <50% HP).
	* Environmental triggers such as sight of larger monsters or player groups.
* Attack Modifiers : Rarely attacks while fleeing; may use ranged poke or weak debuffs.

---

	Passive Traits & Defensive Mechanics

* Fleeing Behavior : Attempts to escape combat when conditions are met.
* Summon Reinforcements : Some coward-type monsters call nearby allies when threatened.
* Evasion & Stealth :
	* May have increased dodge or invisibility during escape.
	* Can trigger traps or environmental hazards to slow pursuers.

---

	Combat Behavior (AI Rules & Role)

* Solo Encounters : Usually avoid combat; may lead players into ambushes or hazards.
* Group Encounters : Can disrupt enemy formation by fleeing and luring players into larger packs or stronger allies.
* Targeting Rules :
	* Prefers to target escape routes or defensive abilities if forced to attack.
	* Avoids high-threat players or groups unless cornered.

* Behavioral Triggers :
	* Flight triggered by HP, threat, or presence of stronger monsters.
	* May enter panic mode if surrounded, increasing movement speed but lowering defenses.

---

	Typical Attack Set

* Weak Poke : Minimal damage; primarily to discourage pursuit.
* Debuff or Hindrance : Slow, blind, or minor DoT to discourage player chase.
* Escape Mechanic : Teleport, dash, or sprint to disengage from combat.

---

	Interaction with Health-Regeneration & Other Resources

* HP Regen : Rarely regenerates unless in safe zones or hidden areas.
* Resource Interaction : Minimal; may drain player stamina or energy indirectly via debuff/hindrance effects.
* Synergy with Other Types :
	* Invoker + Coward : Can flee while summoning reinforcements.
	* Patrol + Coward : Patrol units may herd coward-type monsters into traps or choke points.

---

	Counterplay

* Use ranged attacks to prevent fleeing.
* Apply CC to immobilize or control movement.
* Surround or corner to reduce escape routes.
* Watch for environmental traps triggered by fleeing monsters.

---

	Implementation Notes (DB / AI)

* Database Flags : `MonsterType = Coward`, `AggroThreshold = Low`, `Mobility = High`.
* AI Behavior :
	* Prioritize fleeing when HP or threat threshold met.
	* Call nearby allies or trigger environmental hazards if cornered.
	* Only attack as a last resort.

---