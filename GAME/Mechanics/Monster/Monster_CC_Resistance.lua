			Crowd-Control Immunity / CC Resistance
			
	Path : `GAME/Mechanics/Monster/Monster_CC_Resistance.lua`

---

	Definition : The CC Resistance mechanic governs how monsters react to crowd-control effects (stuns, roots, fears, slows, silences, charms, etc.). Not all 
monsters should be equally affected — this mechanic allows design flexibility so weaker monsters can be fully disabled, while stronger ones 
(elites, bosses, special types) have partial or full resistance.

---

	Core Attributes

* Soft CC → Reduces monster effectiveness without stopping it fully.
	* Examples: slows, blinds, roots, disarms, snares.

* Hard CC → Fully disables monster actions.
	* Examples: stuns, silences, fears, charms, polymorph.

* Resistance Types :
	* Full Immunity → Bosses are often immune to hard CC (stuns/fears).
	* Partial Resistance → Reduced duration (50% stun time, 30% fear duration).
	* Conditional Resistance → Immune only during certain states (Rage Mode, below 25% HP, nighttime).
	* Scaling Resistance → The more CC applied in a short time, the less effective the next one is ("Diminishing Returns").

---

	Applicability (Monster Archetypes)

* Common mobs → Fully vulnerable to CC.
* Elite monsters → Some partial resistance (reduced duration).
* Tanky monsters → Often immune to soft CC like slows, but can still be stunned.
* Boss monsters → Immune to most hard CC, but may allow brief disables for mechanics balance.
* Night Monsters / Ambush predators → Can be resistant to fears or blinds (predatory instinct).

---

	Passive Traits & Defensive Mechanics

* Innate Resistances :
	* "This monster cannot be feared."
	* "Slows reduced by 70%."
  
* Triggered Immunities :
	* Activates at HP thresholds (immune to stuns below 25%).
	* Rage Mode → immune to all CC while active.
  
* Scaling Resistances :
	* First CC = 100% duration → second CC = 50% → third CC = 25%.

---

	Combat Behavior (AI Rules)

* Monsters with CC immunity will not alter combat routine when hit with CC skills.
* Monsters with partial resistance will react but quickly recover.
* Some monsters may retaliate against CC attempts (e.g., silence a caster who tried to fear them).

---

	Counterplay

* Players must identify which CC works on which monsters.
* Use debuffs to lower resistance (example: "Shatter Will" makes target vulnerable to fear).
* Focus on damage or positioning mechanics when CC is not effective.
* Some monsters can be “CC baited” into wasting immunities early.

---

	Implementation Notes (DB/AI)

* DB Flags:

  ```lua
  cc_resistance = {
      immune_to = {"fear", "charm"},
      partial_resist = {stun = 50, slow = 70}, -- % reduction
      conditional = {"rage_mode", "hp<25%"},
      diminishing_returns = true
  }
  ```
* Monster tooltips or bestiary entries can hint at resistances.
* AI scripting: If CC fails, monster may trigger counter-skills or aggression boost.

---