			Berserk

	Path : `GAME/Mechanics/Monsters/Types/Berserk.lua`

---

	Definition

* Berserk monsters are enemies that dramatically increase their damage output when their health drops below a specific threshold (commonly 25–50% HP).
* This mechanic forces players to carefully manage health, cooldowns, and positioning, as prolonged fights can become extremely dangerous.
* While their base defenses may be moderate, the sudden spike in damage makes them a high-priority threat in any encounter.

---

	Core Attributes

* HP Scaling : Moderate to high; enough to trigger Berserk mechanics without dying immediately.
* Defense : Standard for their level; not their main survival mechanism.
* Damage Output : Low to moderate at high HP, surging dramatically once Berserk triggers.
* Mobility : Moderate; may increase movement or attack speed during Berserk.
* CC Resistance : Often low initially; may gain resistance when Berserk activates.

---

	Stat Profile & Tuning

* Attack Speed : Normal until Berserk triggers; increases significantly during the phase.
* Critical Strike / Multistrike Chance : May be boosted during Berserk.
* Damage Multipliers : Can double or triple damage output based on HP thresholds.
* Regen : Some Berserk monsters have passive regen, which may also spike during Berserk.

---

	Passive Traits & Defensive Mechanics

* Berserk Trigger : Automatically activates when HP drops below a set percentage (configurable per monster).
* Rage Mechanics : Berserk may build or consume a Rage resource, powering abilities or further increasing damage.
* Damage Immunities : Minimal; focus is on raw damage, not defensive traits.
* Aggro Modification : May reset threat priorities, forcing players to adapt.

---

	Combat Behavior (AI Rules & Role)

* Solo Encounters : Becomes a sudden burst threat mid-fight; forces players to adjust damage output carefully.
* Group Encounters : Often paired with tanky or support mobs; Berserk spikes create tension for healers and DPS.
* Boss / Elite Role : Typically a mid-phase mechanic or a core feature for semi-bosses, special monsters, and challenging mobs.

---

	Typical Attack Set

* Frenzy Strike : Increased attack speed and damage.
* Cleave / AoE Burst : Hits multiple players in melee range.
* Charge / Leap : Sudden repositioning to reach vulnerable targets.
* Enrage Roar : Buffs self or nearby Berserk allies; may increase critical strike chance.

---

	Interaction with Health-Regeneration & Other Resources

* HP Regen : Usually minimal; focus is on increasing offensive potential.
* Rage / Energy : Berserk phase may utilize Rage to empower attacks, trigger abilities, or activate AoE effects.

---

	Counterplay

* Focus on defensive cooldowns and healing during low HP phases.
* Interrupt / CC to prevent devastating Berserk abilities.
* Spread damage among multiple targets to avoid stacking hits.
* Avoid unnecessary prolonged fights if possible, as Berserk phase punishes endurance-heavy strategies.

---

	Implementation Notes (DB / AI)

* Database Flags : `MonsterType = Berserk`, `BerserkThreshold = 50%`, `DamageMultiplier = 2x`.
* AI Behavior :
	* Monitor HP thresholds and activate Berserk state dynamically.
	* Increase attack speed, damage, and possibly critical strike chance during Berserk.
	* Adjust threat and target priority to challenge players.

---