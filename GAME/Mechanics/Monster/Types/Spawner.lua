			Spawner

	Path : `GAME/Mechanics/Monsters/Types/Spawner.lua`

---

	Definition

* Spawner-type monsters are stationary or semi-stationary entities that generate additional creatures over time.
* These monsters are primarily used to maintain pressure in an area, guarding strategic locations, rare resource nodes, or critical zones.
* Their spawned minions can vary from weak fodder to elite minions, creating persistent combat challenges for players.

---

	Core Attributes

* HP Scaling : Low to medium; Spawners themselves are not heavily tanky but are protected indirectly by their minions.
* Defense : Low to moderate; relies on minions for defense rather than personal durability.
* Damage Output : No damage at all. Adds aretheonly damage dealers.
* Mobility : Generally immobile or very slow-moving.
* CC Resistance : Resistant to all CCs apart of DoT.

---

	Stat Profile & Tuning

* Spawn Interval : Configurable by monster level and area importance.
* Spawn Quantity : Can range from 1–10+ groups of minions per cycle depending on environment.
* Spawn Type : Weak minions, elite minions, or rare resource-bearing mobs.
* Threshold Behavior : Some Spawners increase spawn rate when health drops below a certain percentage (e.g., <50% HP).

---

	Passive Traits & Defensive Mechanics

* Spawn Aura : Provides minor buffs to spawned units (damage, resistances).
* Area Denial : Spawned minions control player movement and create choke points.
* ** Defense : The presence of minions makes it harder to target the Spawner directly.

---

	Combat Behavior (AI Rules & Role)

* Solo Encounters : Never engages directly; relies on minions to attack.
* Group Encounters : Supports bosses, elites, or territory control by overwhelming players with additional units.
* Targeting : Prioritizes spawning over direct attacks, but may retaliate if approached.
* Synergy : Works effectively with Tanky, Vampiric, Invoker or StoneSkin.

---

	Typical Attack Set

* Summon Minions : Periodically generates weaker or elite units.
* Area Effects : Small AoE attacks or debuffs to deter players from staying in one spot.
* Debuffs on Spawned Units : Buffs or special effects that enhance survivability or aggression.
* Environmental Interactions : Spawns may interact with nearby terrain to block or slow players.

---

	Interaction with Health-Regeneration & Other Resources

* HP Regen : Some Spawners may regenerate slowly unless all spawned minions are cleared.
* Resource Interaction : Does not drain player resources directly; focus is on battlefield control.
* Synergy with Other Types :
	* Invoker + Spawner : Can summon additional waves while the Spawner maintains pressure.
	* Tanky + Spawner : Minions can hold aggro while the Spawner regenerates.

---

	Counterplay

* Focus fire to eliminate spawned minions quickly.
* Use ranged attacks or AoE to reduce the number of threats.
* Coordinate party positioning to avoid being trapped by minions.
* Interrupt or destroy the Spawner before waves overwhelm the group.

---

	Implementation Notes (DB / AI)

* Database Flags : `MonsterType = Spawner`, `SpawnedUnitTypes = [Minion, Elite]`.
* AI Behavior :
	* Maintains spawn cycles even if partially attacked.
	* Prioritizes spawning over direct engagement.
	* May interact with environmental triggers to enhance battlefield control.

---