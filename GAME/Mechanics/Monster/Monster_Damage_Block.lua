			Damage Block

	Path : `GAME/Mechanics/Monster/Monster_Damage_Block.lua`

---

	Mechanic: Damage Block

---

	Definition : Damage Block is a defensive mechanic where a monster reduces or nullifies portions of incoming damage through shielding or hard defenses. Unlike 
Damage Reflection (which punishes attackers), Damage Block simply absorbs, reduces, or negates incoming strikes, extending the monster’s survivability.

---

	Core Attributes

	Block Type :

* Flat value (e.g., *blocks 150 damage per hit*).
* Percentage reduction (e.g., *reduces 40% of incoming damage*).
* Full immunity windows (e.g., *blocks all physical damage for 5s*).
	
	Trigger Conditions :

* Always active (passive shield).
* HP threshold activation (*Stone Armor activates below 30% HP*).
* Timed ability or cooldown (e.g., *Shield Wall every 60s*).

	Scaling :
* May scale by monster level, elite rank, or environment (e.g., dungeon boss has stronger block values).

---

	Passive Traits & Implementations

* StoneSkin effect → flat damage reduction.
* Shield Aura → shared reduction with nearby minions.
* Environmental synergy → standing near objects, shrines, or in night/day cycles may grant bonus block effects.

---

	Combat Behavior (AI Rules)

* Tanky/elite monsters with Block use it to stall and exhaust player resources.
* May combine block with HP regen for frustrating sustain fights.
* Some bosses use Block Phases → alternating damage windows (DPS check mechanics).

---

	Counterplay

* Focus on burst damage during downtime when Block is inactive.
* Apply armor/magic penetration debuffs to reduce effectiveness.
* Use multi-hit skills to wear down flat-value blocks.
* Avoid overcommitting burst into full immunity windows.

---

	Implementation Notes (DB/AI)

* DB Flags:

  ```lua
  damage_block = { 
      type = "flat/percent/immunity", 
      value = X, 
      trigger = "passive/hp_threshold/timer" 
  }
  ```
* AI must toggle stateful buffs (e.g., Shield ON/OFF).
* Can overlap with other mechanics → **Block + Reflect** for punishing late-game bosses.
* Optional visual feedback (glowing shield, rocky skin, aura) to warn players.

---