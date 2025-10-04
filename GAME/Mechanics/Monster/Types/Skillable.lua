			Skillable

	Path : `GAME/Mechanics/Monsters/Types/Skillable.lua`

---

	Definition

* Skillable-type monsters are highly intelligent enemies capable of using multiple abilities, spells, or special attacks during combat.
* They are designed to challenge players beyond basic auto-attacks, requiring awareness, timing, and strategy.
* Skillable monsters are often used for elites, bosses, rare monsters, and event-specific encounters.

---

	Core Attributes

* HP Scaling : Moderate to high; depends on encounter type.
* Defense : Medium to high; may include damage mitigation or temporary shields.
* Damage Output : Highly variable, depending on ability usage.
* Mobility : Varies; can include teleportation, charge, or flight.
* CC Resistance : May have specific immunities to prevent easy lockdown.

---

	Stat Profile & Tuning

* Skill Damage : Scales with level and encounter difficulty.
* Mana / Energy / Rage Usage : Some Skillable monsters use resource-based mechanics to cast abilities.
* Cooldown Management : Abilities have cooldowns; AI dynamically chooses optimal usage.
* Attack Patterns : Mix of single-target, AoE, and interrupt skills to pressure players.

---

	Passive Traits & Defensive Mechanics

* Adaptive Behavior : Adjusts skill usage based on player actions or health thresholds.
* Reactive Skills : Can counter certain CCs, interrupts, or healing.
* Immunities : May resist specific debuffs, slows, or silences depending on monster rank.

---

	Combat Behavior (AI Rules & Role)

* Solo Encounters : Acts dynamically, using abilities strategically to outplay single players.
* Group Encounters : Supports other monsters by debuffing, controlling, or buffing allies.
* Targeting : Prioritizes players based on threat, healing output, or low HP.
* Resource Management : AI manages abilities considering resource pools (mana, rage, etc.).

---

	Typical Attack Set

* Debuffs / Crowd Control : Slows, snares, stuns, fear effects.
* Direct Damage Skills : Melee or ranged skill attacks with scaling damage.
* Area-of-Effect (AoE) Abilities : Hits multiple targets simultaneously.
* Utility Skills : Shields, temporary invulnerability, or self-buffs.

---

	Interaction with Health-Regeneration & Other Resources

* HP Regen : May synergize with abilities or passive buffs.
* Mana / Rage : Abilities consume or generate resources dynamically.
* Synergy with Other Types : Combining Skillable with Berserk or God can create complex boss encounters with high threat and variable behavior.

---

	Counterplay

* Identify ability patterns and anticipate skill usage.
* Use interrupts, silences, or stuns to reduce threat.
* Coordinate crowd-control and mitigation in group encounters.
* Avoid standing in AoEs or predictable attack zones.

---

	Implementation Notes (DB / AI)

* Database Flags : `MonsterType = Skillable`, `AbilitySet = [list of skills]`, `CooldownTimers = [per ability]`.
* AI Behavior :
	* Dynamically chooses abilities based on threat and player composition.
	* Reacts to player debuffs, heals, and positioning.
	* Scales difficulty by rank (Normal, Elite, Boss, World Boss).

---