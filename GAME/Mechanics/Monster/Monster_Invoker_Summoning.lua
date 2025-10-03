			Minion Summoning / Invoker

	Path : `GAME/Mechanics/Monster/Monster_Invoker_Summoning.lua`

---

	Definition : The Invoker Mechanic defines monsters that can summon minions or reinforcements to aid them in combat. This mechanic shifts encounters from a 
direct duel into multi-target management, creating pressure on players by increasing enemy numbers dynamically.

---

	Core Attributes

	Summon Types :
* Direct summons → elemental spirits, beasts, undead.
* Constructed summons → animated statues, mystic golems.
* Environmental summons → pulling creatures from nearby terrain.

	Summoning Triggers :
* Timed intervals (every X seconds).
* HP thresholds (summon waves at 75% / 50% / 25%).
* External conditions (nighttime, being in a swamp, or standing on ritual ground).
* Player actions (summon on kill attempt, on spell cast, etc.).

	Scaling Rules :
* Low-level → 1–2 weak adds for every spawn.
* Elite/Boss → multiple waves, scaling with difficulty.
* Special → infinite summoning until source (Invoker) is killed.

---

	Applicability (Monster Archetypes)

* Spawner monsters → Core identity (Mystic Stones, Hive Mothers).
* Invoker monsters → Primary ability, defines them.
* Necromancers / Warlocks → Thematic fit.
* Elite bosses → Summoning phases add endurance and chaos.
* Rare mobs → Very limited, small summon (wolf companion, insect swarm).

---

	Passive Traits & Implementations

* Linked Summons : Killing the Invoker kills all summons.
* Independent Summons : Summons persist after death, must be cleared.
* Weakened Summons : Half strength of base monsters.
* Empowered Summons : Buffed when near Invoker.

---

	Combat Behavior (AI Rules)

* Invokers tend to stay back, focusing on summoning/minor support damage.
* Summons act aggressively → frontline harassment.
* Some invokers may retreat while sending minions to stall.
* Boss AI → Summons used as mechanics phases, forcing multitasking.

---

	Counterplay

* Target Priority : Focus the Invoker to stop summoning.
* AoE abilities : Essential to clear waves efficiently.
* Interrupts : Some summoning is casted → interruptible.
* Kiting : Prevent being surrounded if too many adds spawn.
* Environmental tricks : Lead summons into traps or hazards.

---

	Implementation Notes (DB/AI)

* DB Flags:

  ```lua
  invoker = {
      can_summon = true,
      summon_type = {"undead", "insect_swarm", "construct"},
      summon_limit = X,
      trigger = "hp_threshold/timer/environment",
      linked_to_caster = true/false
  }
  ```
* Summons can be marked as:
	* Linked (despawn on master death).
	* Independent (must be killed manually).
* Visual cues: Ritual animations, glowing summoning circles, chants.
* AI: Prioritize summoning over direct combat unless engaged in melee.

---