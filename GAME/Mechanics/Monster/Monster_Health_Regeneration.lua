			Monster_Health_Regeneration

Path: `GAME/Mechanics/Monster/Monster_Health_Regeneration`

---

	Monster Mechanic: Health Regeneration

---

	Definition : Health Regeneration (Regen) is the ability of monsters to restore lost HP over time. Unlike healing spells or external effects, regeneration is 
intrinsic—either passive, conditional, or triggered by certain states. It prevents monsters from being slowly whittled down without active engagement and creates 
pressure on players to sustain damage output.

---

	Core Attributes

* Base Regen Value : Restores a flat amount of HP or a % of max HP.
* Tick Rate : Frequency of healing (e.g., once every 3s, once per second).
* Scaling : Higher-level monsters and special types gain stronger regeneration.
* Visibility : Usually signaled by effects like glowing auras, sound pulses, or animations.

---

	Types of Regeneration

1. Passive Regeneration
	* Always active at a steady rate.
	* Common for Tanky and God type monsters.

2. Out-of-Combat Regeneration
	* Triggers only after combat ends.
	* Baseline mechanic for most common monsters to reset their HP if left alone.

3. Combat Regeneration
	* Active while in battle.
	* Often tied to dangerous monsters (e.g., Vampiric or Bosses).

4. Conditional Regeneration
	* Based on specific triggers:
		* Low HP (God Type) → Regen accelerates when below 50% HP.
		* Resource Drain (Vampiric) → Regen tied to siphoning HP/MP/Stamina/Rage.
		* Environment → Regen increases in certain zones (swamps, corrupted lands, night cycle).
		* Support Units (Invoker/Spawner) → Regen tied to summoned allies or stones nearby.

---

	Stat Profile & Tuning

* Normal Monsters : Minimal regen, usually out-of-combat only (0.1–0.3% max HP / 5s).
* Elites : Noticeable in-combat regen (0.3–0.5% max HP / 3s).
* Bosses : Regen scales dynamically, sometimes 1–2% max HP / second below 40%.
* World Bosses / Skulls : Regeneration may function as a “soft enrage” mechanic, requiring debuffs or items to counter.

---

	Passive Traits & Defensive Integration

* Often paired with:
	* Tanky Type → Makes them “wall” encounters.
	* God Type → Spikes regen at critical HP thresholds.
	* Vampiric Type → Converts damage dealt into regen.
  
* May combine with Resistances or Damage Reflection for layered durability.

---

	Combat Behavior

* Encourages drawn-out fights if not interrupted.
* Some monsters retreat to regenerate, punishing disorganized groups.
* May synergize with "Panic Mode" or "Rage Mode" when forced below thresholds.

---

	Counterplay

* Healing Reduction Debuffs (anti-regen effects).
* Burst Damage to outpace healing.
* Crowd-Control to prevent retreat or regeneration triggers.
* Environmental Triggers → Removing buffs (destroying stones, disrupting night advantage).
* DoTs usage to block the regen trigger.

---

	Implementation Notes (DB / AI)

* Regen should be a flagged attribute in the monster DB (`regen_base`, `regen_tick`, `regen_trigger`).
* AI can check regen states and switch behaviors (e.g., defensive stance at <30% HP).
* Synergy with other mechanics (Noise, Dormant, Ambush) can make regen tactical instead of passive.

---