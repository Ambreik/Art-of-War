			God

	Path : `GAME/Mechanics/Monsters/Types/God.lua`

---

	Definition

* God-type monsters are divine or semi-divine beings whose combat capabilities scale dynamically, often gaining incredible attack speed and regenerative power when 
certain conditions are met (e.g., low HP or prolonged fights).
* They are usually designed as high-threat enemies in dungeons, raids, and world encounters, emphasizing strategic management of time, damage output, and crowd-
control resources.

---

	Core Attributes

* HP Scaling : Very high; capable of sustaining long encounters.
* Defense : High, with a combination of resistances and natural damage reduction.
* Damage Output : Moderate initially; spikes dramatically during God-phase activation.
* Mobility : Moderate to high; often increases during God-phase.
* CC Resistance : Low at first, but may gain temporary resistance during activation.

---

	Stat Profile & Tuning

* Attack Speed : Normal until God-phase triggers; can increase exponentially during activation.
* Critical Strike / Multistrike Chance : Boosted during God-phase.
* Damage Multipliers : Scales with HP thresholds, Rage, or time in combat.
* Regen : HP regeneration dramatically increases during God-phase activation.

---

	Passive Traits & Defensive Mechanics

* Activation Trigger : God-phase may activate based on HP % thresholds, rage mechanics, or prolonged combat.
* Divine Regen : HP regenerates rapidly once God-phase is active.
* Damage Reduction : Some have passive mitigation or temporary shields during activation.
* Resistances : May increase resistances to specific damage types (e.g., Fire, Shadow) while in God-phase.

---

	Combat Behavior (AI Rules & Role)

* Solo Encounters : Acts as an endurance challenge; prolonged fights are extremely dangerous.
* Group Encounters : Serves as a boss or elite monster; often paired with support or minions.
* Aggro / Targeting : Can shift priorities dynamically, punishing uncoordinated teams.
* Special Phase Management : AI is tuned to activate God-phase at precise moments for maximum challenge.

---

	Typical Attack Set

* Divine Smite : High-damage melee or ranged strike with scaling damage.
* Blessed Aura : Buffs self or minions, increasing attack speed, resistances, or regeneration.
* Shockwave / AoE Strike : Hits multiple players, often combined with crowd control effects.
* Rage Burst : Temporarily increases all offensive stats when health falls below threshold.

---

	Interaction with Health-Regeneration & Other Resources

* HP Regen : Core mechanic; becomes extremely potent in God-phase.
* Rage / Energy : May fuel additional abilities, passive buffs, or temporary invulnerability.
* Synergy with Other Types : Combining God type with Berserk, Skillable, or Tanky can create formidable hybrid monsters (e.g., “God-Berserk” for massive damage spikes and regen).

---

	Counterplay

* Focus burst DPS to prevent prolonged God-phase activation.
* Use interrupts, stuns, and crowd-control to limit damage output.
* Coordinate healing and mitigation, as regeneration spikes can quickly undo sustained damage.
* Avoid soloing; teamwork is essential for any encounter involving God-type monsters.

---

	Implementation Notes (DB / AI)

* Database Flags : `MonsterType = God`, `ActivationHP = 50%`, `AttackSpeedMultiplier = 2x`, `RegenMultiplier = 3x`.
* AI Behavior :
	* Monitor HP and combat duration to trigger God-phase.
	* Boost attack speed, damage, and HP regeneration dynamically.
	* Adjust threat, targeting, and resistances for high-level encounters.

---