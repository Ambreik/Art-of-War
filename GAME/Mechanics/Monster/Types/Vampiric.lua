			Vampiric

	Path : `GAME/Mechanics/Monsters/Types/Vampiric.lua`

---

	Definition

* Vampiric-type monsters are enemies that sustain themselves by draining resources from players.
* They primarily absorb HP, but advanced variants can also drain Mana, Energy, Stamina, and Rage.
* These monsters are particularly dangerous in prolonged encounters, as their resource-draining abilities can gradually weaken players while sustaining themselves.

---

	Core Attributes

* HP Scaling : Moderate to high; some may regenerate faster when draining resources.
* Defense : Medium; may include resistances to interrupts or specific debuffs.
* Damage Output : Moderate; often augmented by drained resources.
* Mobility : Usually medium; some can teleport or chase effectively to maintain drain.
* CC Resistance : Partial; may be immune to slows to ensure continued resource absorption.

---

	Stat Profile & Tuning

* Drain Potency : Scales with monster level and type of resource drained.
* Health Regen : Often tied to successful resource drains.
* Rage / Energy Generation : Some monsters convert drained resources into their own Rage or Mana for additional abilities.
* Threshold Scaling : Certain Vampiric monsters enter an enhanced drain state below a % HP threshold (similar to Berserk mechanic).

---

	Passive Traits & Defensive Mechanics

* Leech Aura : Gradually drains resources from nearby players in addition to direct attacks.
* Reflective Drain : Some variants return a portion of damage to attackers while leeching resources.
* Resource Immunity : Immune to effects that would reduce their own drained resources or interrupt leech mechanics.

---

	Combat Behavior (AI Rules & Role)

* Solo Encounters : Focuses on maintaining a steady drain while punishing aggressive players.
* Group Encounters : Targets healers or high-resource players to weaken the group strategically.
* Targeting : Prioritizes the richest resource pool or highest-threat player.
* Synergy : Often combined with Skillable or Berserk types for complex encounters.

---

	Typical Attack Set

* Drain Abilities :
	* HP Leech – restores own health.
	* Mana/Resource Leech – drains Mana, Energy, Stamina, or Rage.
* Direct Damage Skills : Melee or ranged attacks that also trigger leech effects.
* Area-of-Effect Drains : Hits multiple players for smaller amounts of resources.
* Buff Synergy : Gains temporary attack or defense boosts when leeching successfully.

---

	Interaction with Health-Regeneration & Other Resources

* HP Regen : Directly tied to leeching abilities.
* Mana / Rage / Energy : Drained resources can power additional abilities or sustain monster skills.
* Synergy with Other Types :
	* Berserk + Vampiric : Can become extremely dangerous at low HP, sustaining itself while increasing damage.
	* Skillable + Vampiric : Can drain and use resources to cast a variety of abilities.

---

	Counterplay

* Interrupt or crowd-control leech abilities.
* Spread players to minimize area-of-effect drains.
* Focus damage quickly to reduce total drain uptime.
* Use consumables or abilities to recover drained resources.

---

	Implementation Notes (DB / AI)

* Database Flags : `MonsterType = Vampiric`, `LeechTypes = [HP, Mana, Energy, Rage]`.
* AI Behavior :
	* Dynamically chooses which resource to drain based on player composition.
	* Activates enhanced drain below certain HP thresholds.
	* Works with group AI to maximize resource disruption.

---