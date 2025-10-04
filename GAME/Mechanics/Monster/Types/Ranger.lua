			Ranger

	Path : `GAME/Mechanics/Monsters/Types/Ranger.lua`

---

	Definition

* Ranger-type monsters are ranged combat specialists, excelling at attacking players from a distance.
* They rely on mobility, precision, and positioning rather than brute strength. Rangers often support groups or bosses by targeting priority players, kiting, and 
applying ranged debuffs.

---

	Core Attributes

* HP Scaling : Moderate; not built for prolonged tanking.
* Defense : Light to moderate; relies on distance and evasive maneuvers.
* Damage Output : High ranged damage, often with critical or burst potential.
* Mobility : Agile, can reposition quickly to maintain distance.
* CC Resistance : Moderate; may resist slows or snares to preserve kiting.

---

	Stat Profile & Tuning

* Attack Range : Configurable distance depending on encounter type.
* Attack Speed : Faster than melee types, allowing frequent ranged strikes.
* Critical/Precision Chance : High chance for precise hits; can target weak points.
* Projectile Mechanics : May include area effects, piercing shots, or damage-over-time projectiles.

---

	Passive Traits & Defensive Mechanics

* Kiting Mechanics : Moves backward or laterally when approached, maintaining distance.
* Evasion : Higher chance to avoid melee attacks while moving.
* Ranged Debuff Attacks : May slow, weaken, or mark targets from afar.
* Resource Interaction : Can drain stamina or ranged-specific resources in certain attacks.

---

	Combat Behavior (AI Rules & Role)

* Solo Encounters : Focuses on harassment and ranged burst; can kite melee players.
* Group Encounters : Provides support fire for melee or tanky monsters; targets healers or ranged DPS.
* Targeting Rules :
	* Prioritizes lightly armored or low-HP players.
	* Maintains distance to avoid counterattacks.

* Behavioral Triggers :
	* Retreats when HP drops below threshold.
	* Uses specialized attacks or traps when cornered.

---

	Typical Attack Set

* Ranged Strike : Primary attack from a distance.
* Poison/DoT Arrows : Continuous damage over time.
* Trap or Snare : Slows player movement.
* Area Shot : Damages multiple targets in a line or radius.

---

	Interaction with Health-Regeneration & Other Resources

* HP Regen : Minimal; relies on distance for survival rather than regeneration.
* Resource Interaction : Certain attacks may reduce player stamina or block energy regeneration.
* Synergy with Other Types :
	* Tanky + Ranger : Ranger deals consistent damage while tank absorbs aggression.
	* Skillable + Ranger : Can chain ranged abilities with tactical effects.

---

	Counterplay

* Close distance to interrupt or reduce effectiveness.
* Use shields, evasive movement, or CC to prevent kiting.
* Focus fire to eliminate Rangers quickly in group encounters.
* Avoid clustering to minimize AoE or trap damage.

---

	Implementation Notes (DB / AI)

* Database Flags : `MonsterType = Ranger`, `AttackRange = X`, `ProjectileSpeed = Y`.
* AI Behavior :
	* Maintains distance from targets.
	* Prioritizes weak or high-value players.
	* Uses ranged-specific attacks according to health and encounter design.

---