			Tanky

	Path : `GAME/Mechanics/Monsters/Types/Tanky.lua`

---

	Definition

* Tanky monsters are heavily fortified enemies designed to absorb massive amounts of damage and protect weaker allies.
* They serve as frontline defenders in groups, punishing reckless attackers with high durability, defensive mechanics, and control tools.
* While their raw damage may be moderate, their sustain, threat control, and disruptive abilities make them dangerous in prolonged encounters.

---

	Core Attributes

* HP Scaling : Extremely high, often 1.8×–3.5× higher than standard monsters of the same level.
* Armor/Resistance : High physical and magical resistances; some have flat damage reduction.
* Damage Output : Low to moderate; may include reactive mechanics like DoTs or damage reflection.
* Mobility : Usually slow but equipped with control mechanics to prevent kiting.
* CC Resistance : Soft CC (slows, blinds, snares) is often reduced; hard CC (stuns, silences) can be used for counterplay.

---

	Stat Profile & Tuning

* Evasion : Low, as tanky monsters are designed to take hits, not dodge.
* Attack Speed : Moderate, balanced to avoid excessive DPS.
* Damage Reflection : Often 5–15% of received damage.
* Damage Block : 10–30% chance to block part or all incoming damage.
* Regen : Passive HP regeneration; some trigger faster regen under certain conditions (near allies, night cycles, or specific abilities).

---

	Passive Traits & Defensive Mechanics

* Damage Reduction : Percentage-based or threshold-based (e.g., *StoneSkin triggers at HP < 30%*).
* Damage Reflection : Reflects a portion of damage back to attacker (physical, magic, or both).
* Crowd Control Tools : Stuns, snares, roots, or taunts to maintain threat and control players.
* Defensive Auras : Buff nearby allies’ defenses or resistances.
* Immunities : Often resistant to soft CC; may have conditional resistances.

---

	Combat Behavior (AI Rules & Role)

* Solo Encounters : Serve as “wall” encounters, resource drains, or endurance tests.
* Group Encounters : Frontline anchor, holding aggro while ranged or caster allies deal damage.
* Boss/Elite Role : Gatekeepers, bodyguards, or environmental blockers in dungeons or critical areas.

---

	Typical Attack Set

* Taunt / Provoke : Forces threat swap onto the tanky monster.
* Shield Slam / Knockback : Stuns or displaces players to disrupt formation.
* Ground Slam / AoE : AoE damage with slow or knockback effects.
* Guard Aura : Buffs nearby allies’ defenses or resistances.

---

	Interaction with Health-Regeneration & Other Resources

* HP Regen : Steady or conditional; may increase near allies, in specific environments, or when executing abilities.
* Mana/Energy/Rage : Usually irrelevant unless combined with other monster types (e.g., Skillable or God type may use Mana or Rage).

---

	Counterplay

* Focused burst damage to overcome mitigation and regeneration.
* Armor penetration / debuffs to reduce defense or regen.
* Hard CC (stun, silence, polymorph) to interrupt abilities and control aggro.
* Isolation / kiting if terrain allows, avoiding prolonged engagement.

---

	Implementation Notes (DB / AI)

* Database Flags : `MonsterType = Tanky`, `CC_Resist = 30%`, `RegenRate = 1.8x`, `DamageReflect = 10%`.
* AI Behavior :
	* Prioritize taunt / protection of allies.
	* Activate crowd-control and defensive mechanics at thresholds.
	* Maintain frontline positioning during group encounters.

---