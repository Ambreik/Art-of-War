			Deathblow

	Path : `GAME/Mechanics/Monsters/Types/Deathblow.lua`

---

	Definition

* Deathblow-type monsters are high-risk, high-reward attackers that possess the ability to deliver sudden, devastating strikes capable of killing unprepared players
or heavily damaging groups.
* These monsters are often combined with Berserk or Boss types, making them unpredictable and deadly in encounters.

---

	Core Attributes

* HP Scaling : Medium to high; often survives bursts long enough to execute Deathblows.
* Defense : Moderate; they rely on timing and surprise attacks rather than sustained tanking.
* Damage Output : Extremely high during Deathblow activation; moderate otherwise.
* Mobility : Usually agile enough to reach targets quickly for lethal strikes.
* CC Resistance : Often resistant to interrupts that would prevent their Deathblow attack.

---

	Stat Profile & Tuning

* Deathblow Chance : Configurable percentage per attack or triggered by specific conditions (HP thresholds, proximity, stacking).
* Damage Multiplier : Deals significant extra damage (x2–x5 depending on balance) when triggered.
* Cooldown/Recharge : After performing a Deathblow, a short cooldown prevents immediate repetition.

---

	Passive Traits & Defensive Mechanics

* Berserk Synergy : Often stacks with Berserk type mechanics to increase lethality at low HP.
* Critical Strike Integration : Deathblows can critically hit, sometimes ignoring armor or resistances.
* Reactive Behavior : May focus Deathblow on players with highest DPS or healers.

---

	Combat Behavior (AI Rules & Role)

* Solo Encounters : Functions as a precision killer, punishing mistakes or poor positioning.
* Group Encounters : Targets priority players (healers or high-damage characters) to disrupt strategy.
* Trigger Conditions :
	* HP threshold (e.g., <50%)
	* Accumulated combo points
	* Exposure to specific player actions

---

	Typical Attack Set

* Deathblow Strike : A high-damage attack capable of instant or near-instant player elimination if not mitigated.
* Combo Integration : Combines with other attacks for burst sequences.
* Debuff Application : May reduce target defense or apply temporary immobilization before strike.

---

	Interaction with Health-Regeneration & Other Resources

* HP Regen : Deathblow monsters often regain minimal HP between attacks to maintain threat.
* Resource Interaction : Occasionally drains Rage or Stamina on a Deathblow hit, depending on encounter design.
* Synergy with Other Types :
	* Berserk + Deathblow : Extremely lethal at low health.
	* Skillable + Deathblow : May chain Deathblows with skill combos for maximum disruption.

---

	Counterplay

* Maintain spacing and avoid stacking to reduce exposure.
* Use defensive cooldowns or immunities when Deathblow is telegraphed.
* Interrupt or stun where possible if Deathblow triggers are predictable.
* Coordinate party to absorb or mitigate burst damage effectively.

---

	Implementation Notes (DB / AI)

* Database Flags : `MonsterType = Deathblow`, `DeathblowChance = X%`, `DeathblowMultiplier = x`.
* AI Behavior :
	* Targets priority characters based on threat, HP, or role.
	* Activates Deathblow according to defined conditions.
	* Integrates seamlessly with Berserk, Skillable, or Tanky monsters.

---