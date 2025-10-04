			StoneSkin

	Path : `GAME/Mechanics/Monsters/Types/StoneSkin.lua`

---

	Definition

* StoneSkin-type monsters possess damage mitigation mechanics that reduce incoming damage when certain conditions are met.
* These monsters are resilient against standard attacks and require players to strategically apply debuffs or exploit weaknesses to overcome them.
* StoneSkin can synergize with other types such as Tanky, Berserk, or God, creating more complex and challenging encounters.

---

	Core Attributes

* HP Scaling : Moderate to high; often paired with resistances.
* Defense : High physical/magic resistance when StoneSkin is active.
* Damage Output : Standard; may increase if damage mitigation is bypassed.
* Mobility : Usually low to moderate; durability compensates for limited mobility.

---

	Stat Profile & Tuning

* Damage Reduction Thresholds :
	* StoneSkin activates under specific HP % ranges (e.g., <50% HP).
	* Reduces incoming damage by a fixed percentage (e.g., 25%-50%).
* Duration & Refresh : Active as long as conditions persist; may regenerate after downtime.
* Synergy Modifiers : Can be combined with Tanky type to further increase survivability.

---

	Passive Traits & Defensive Mechanics

* Automatic Damage Reduction : Triggered passively without AI input.
* Elemental Resistances : Often paired with resistances like Fire or Earth to enhance mitigation.
* Immunities : May ignore soft CC (slows, roots) during StoneSkin phase.

---

	Combat Behavior (AI Rules & Role)

* Solo Combat : Acts as a high-sustain opponent; forces players to deal consistent damage or use debuffs.
* Group Combat : Serves as frontline anchor while allies deal damage from behind.
* Adaptive Mechanics : Some variants can activate StoneSkin in response to specific attack types (e.g., AoE or Burst Damage).

---

	Typical Attack Set

* Normal Melee/Ranged Attacks : Base damage, consistent but mitigated by StoneSkin.
* Counterattack / Reflect : Some variants reflect a portion of damage when StoneSkin is active.
* Debuff Triggering Attacks : May apply debuffs when damaged by specific attack types to counter exploit attempts.

---

	Interaction with Health-Regeneration & Other Resources

* HP Regen : May passively regenerate HP while StoneSkin is active.
* Resource Interaction : Rare; mostly affects Rage, Energy, or debuffs on attackers.
* Synergy with Other Types :
	* Tanky + StoneSkin : Extremely difficult to kill without debuff strategies.
	* Berserk + StoneSkin : Can amplify damage when enraged while maintaining mitigation.

---

	Counterplay

* Apply debuffs to bypass StoneSkin (Armor Reduction, Healing Reduction, or Damage Amplification).
* Focus burst attacks to temporarily overcome damage reduction thresholds.
* Coordinate with allies to maintain consistent damage output.
* Use attack types that ignore damage mitigation if available (Armor Penetration, Spell Penetration).

---

	Implementation Notes (DB / AI)

* Database Flags : `MonsterType = StoneSkin`, `DamageReductionThreshold = x%`, `DamageReductionValue = y%`.
* AI Behavior :
	* Automatically activate defensive mitigation when HP conditions are met.
	* Optional synergy checks with other monster types to enhance difficulty.

---