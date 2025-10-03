			Invoker

	Path : `GAME/Mechanics/Monsters/Types/Invoker.lua`

---

	Definition

* Invoker-type monsters are enemies capable of summoning additional creatures or respawning themselves.
* These monsters are often encountered as mini-bosses, elite creatures, or rare spawns, using their summoning abilities to control the battlefield and overwhelm 
players.
* Their presence is designed to shift encounters from simple fights into multi-layered tactical challenges, requiring coordinated strategies to counter the 
additional units.

---

	Core Attributes

* HP Scaling : Medium to high; Invoker themselves are usually not the highest HP monster, but their summoned units increase encounter durability.
* Defense : Moderate; often balanced so the monster cannot be ignored while dealing with minions.
* Damage Output : Variable; can be moderate but may spike when summoning or synergizing with minions.
* Mobility : Usually low to medium; some may teleport to summon or reposition.
* CC Resistance : Partial; may resist knockbacks or crowd-control to maintain summoning.

---

	Stat Profile & Tuning

* Summon Frequency : Scales with monster level and fight duration.
* Summon Strength : Can vary from low-level minions to elite or rare units.
* Self-Respawn Mechanics : Some Invokers can resurrect themselves if left unchecked or after a timer expires.
* Threshold Scaling : Summon behavior may trigger at certain HP percentages (e.g., below 50% HP).

---

	Passive Traits & Defensive Mechanics

* Summon Aura : Buffs summoned units with minor resistances or damage boosts.
* Resilient Core : Immune to some forms of interrupting mechanics during summoning.
* Minion Synergy : Some minions may actively protect the Invoker, drawing aggro or shielding.

---

	Combat Behavior (AI Rules & Role)

* Solo Encounters : Focuses on maintaining a steady stream of summons while applying moderate pressure.
* Group Encounters : Targets high-threat players indirectly through summoned minions.
* Targeting : May prioritize ranged or low-HP players first if minions are present.
* Synergy : Works with Skillable, Berserk, or Tanky types for layered encounter complexity.

---

	Typical Attack Set

* Summon Abilities :
	* Call Minions – summons multiple weaker mobs.
	* Call Elite – summons stronger creatures on a longer cooldown.
	* Temporary Invocations – buffs or summons that last a short duration but disrupt players.
* Direct Attacks : Melee, ranged, or magic attacks while summoning.
* Debuffs : Can reduce player damage against minions or the Invoker.
* Combo Mechanics : Some summons may trigger enhanced attacks from the Invoker.

---

	Interaction with Health-Regeneration & Other Resources

* HP Regen : Often tied to presence of minions or completed summoning cycles.
* Mana / Rage / Energy : Some Invokers may use drained or generated resources to perform additional summons or abilities.
* Synergy with Other Types :
	* Skillable + Invoker : Can summon while casting complex abilities.
	* Vampiric + Invoker : Can leech resources to sustain summons or themselves.

---

	Counterplay

* Prioritize taking down minions quickly to prevent overwhelm.
* Interrupt or crowd-control summoning abilities.
* Focus burst damage on the Invoker during summon cooldowns.
* Spread party members to reduce area-of-effect pressure from summons.

---

	Implementation Notes (DB / AI)

* Database Flags : `MonsterType = Invoker`, `SummonTypes = [Minion, Elite]`.
* AI Behavior :
	* Determines summon priority based on player composition.
	* Respawns self or triggers additional minion waves under specific conditions.
	* Coordinates with allied AI to maximize battlefield control.

---