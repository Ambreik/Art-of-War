			Melee

	Path : `GAME/Mechanics/Monsters/Types/Melee.lua`

---

	Definition

* Melee-type monsters are close-range combat specialists who rely on raw strength, endurance, and proximity to their targets.
* They excel at direct damage, grappling players, and engaging in sustained fights. Unlike ranged or skillable types, melee monsters operate primarily in the front 
line, often coordinating with other types (like Tanky or Berserk) to dominate combat encounters.

---

	Core Attributes

* HP Scaling : Moderate to high, depending on role.
* Defense : Moderate; relies on armor and resistances rather than mobility.
* Damage Output : High close-range damage; may include critical strikes or crushing blows.
* Mobility : Moderate; able to chase and corner players.
* CC Resistance : Moderate; may resist knockbacks or stuns to maintain contact.

---

	Stat Profile & Tuning

* Attack Speed : Balanced for sustained melee damage.
* Reach : Short-range; relies on getting close to the target.
* Critical / Crushing Chance : Moderate to high; some melee monsters include multi-strike or combo mechanics.
* Special Effects : Chance to apply bleed, debuffs, or resource drain (stamina/energy/rage).

---

	Passive Traits & Defensive Mechanics

* Regen Mechanics :
	* Some melee types can passively regenerate HP when hitting targets or under certain thresholds.
	* Others may have synergy with allies, gaining regeneration buffs when near Tanky or God-type monsters.

* Damage Reduction :
	* Natural armor reduces incoming physical damage.
	* May have partial resistance to ranged attacks.

* Aggro Maintenance :
	* Remains on top of primary targets to prevent kiting.

---

	Combat Behavior (AI Rules & Role)

* Solo Encounters : Focuses on sustained damage and keeping players engaged in close range.
* Group Encounters : Works alongside Tanky or Berserk monsters to pressure players; attacks prioritized targets like healers or ranged DPS.
* Targeting Rules :
	* Prefers nearest target but may switch to low-HP or high-threat players.
	* Uses special attacks when multiple players are engaged.
* Behavioral Triggers :
	* Executes stronger attacks at certain HP thresholds.
	* May enraged when separated from group or at low HP.

---

	Typical Attack Set

* Basic Strike : Core melee attack.
* Combo Attack / Multi-Strike : Executes rapid sequence of hits.
* Debuff Strike : Reduces player armor, speed, or stamina temporarily.
* Crushing Blow : Deals heavy damage on critical hits.

---

	Interaction with Health-Regeneration & Other Resources

* HP Regen : Can regain HP during combat either passively or through mechanics like Berserk or God synergy.
* Resource Interaction : Some attacks may drain player stamina or energy; some may trigger Rage accumulation in targets.
* Synergy with Other Types :
	* Tanky + Melee : Tank draws attention while Melee dishes high damage.
	* Berserk + Melee : Melee damage spikes at low HP.

---

	Counterplay

* Maintain distance to avoid sustained melee damage.
* Use kiting, traps, or CC to interrupt combos.
* Focus on debuffs to reduce damage output.
* Coordinate burst attacks with ranged or skillable allies.

---

	Implementation Notes (DB / AI)

* Database Flags : `MonsterType = Melee`, `AttackRange = Melee`, `AggroPriority = High`.
* AI Behavior :
	* Chase and corner targets.
	* Use special attacks based on HP thresholds or proximity triggers.
	* Prioritize high-value targets in groups.

---