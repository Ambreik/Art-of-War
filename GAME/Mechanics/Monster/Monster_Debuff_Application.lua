			Monster Debuff Application

	Path: GAME/Mechanics/Monster/Monster_Debuff_Application.lua

	Definition : Certain monsters apply debuff effects directly to players through abilities, auras, or passives. These debuffs may weaken stats, drain resources,
or cripple sustain. Unlike normal skill-based debuffs, some monster debuffs ignore conventional resistances and can apply globally to entire groups.
	The "Shake" mechanic (used by Skull monsters) is the prime example.


---

	Core Attributes & Triggers

* Trigger Source: Monster ability, aura, or passive.
* Effect Strength: Usually 5–15% penalties to stats.
* Application Range: Affects all engaged attackers.
* Stacking Rules: Some debuffs stack, others refresh.
* Duration: 5–15s, re-applied periodically.

---
	
	Stat Profile & Tuning

* Stat Penalties:
	- Damage dealt reduction
	- Attack speed reduction
	- Healing received reduction
	- Resistances weakened
* Scaling by Monster Tier:
	- Elite: Minor debuffs (1–5%)
	- Bosses: Stronger debuffs (5–10%)
	- Skull/Mythic: Group-wide stacking debuffs (10–15%)

---

	Passive Traits & Common Implementations

	1. Shake (Global Weakening Aura)
* Affects all attackers, reducing combat effectiveness.

	2. Corruption Mark
* Stacking debuff that weakens armor or resistance.

	3. Soul Drain
* Weakens stats while draining HP/MP/Stamina/Rage.

	4. Frenzy Curse
* Reduces healing effectiveness while increasing incoming damage.

---

	Combat Behavior (AI Rules)

* Monsters cast debuffs strategically, not randomly.
* Typical triggers:
	- At HP thresholds (75%, 50%, 25%)
	- When enraged
	- Based on group size (number of attackers)
	
* AI alternates between direct damage and debuff casting.

---

	Interaction with Other Systems

* Rage Mode: Debuffs accelerate enrage by lowering sustain.
* Panic Mode: Players panic earlier while debuffed.
* Dormant/Ambush: Ambush monsters may open with a strong debuff.
* Regen: Healing reduction debuffs counter natural regeneration.

---

	Counterplay (Player Strategy)

* Use cleanse/dispels to remove or mitigate debuffs.
* Stack buffs and consumables to counter Shake.
* Focus damage during debuff downtime.
* Position strategically (some debuffs are range-based).

---

	Implementation Notes (DB / AI)

* Database entries should define:
	- Debuff type (linked to DeBUFF.lua)
	- Strength & duration
	- Stack rules (true/false)
	- Trigger condition
	
* AI scripting should control:
	- When Shake or other debuffs are cast
	- Thresholds or timers
	
* Effects must appear in UI debuff bars for player awareness.

---
	
	Example Configurations

	1. Shake (Skull Monsters)
* 10% damage reduction to all attackers for 10s.
* Reapplies every 20s, stacks up to 2x.

	2. Soul Burn (Elite Caster)
* Reduces Mana & Stamina regen by 25% for 8s.
* Single target, applied every 15s.

	3. Flesh Rot (Undead Boss)
* Stacking DoT (-5% healing received per stack).
* Max 5 stacks.

---

	Pitfalls / Balancing Notes:
* Avoid overusing group-wide debuffs (can feel unfair).
* Stacking should have limits/counters to prevent wipes.
* Provide visual cues (roar, animation) when debuff is applied.
--------------------------------------------------------------------------------
