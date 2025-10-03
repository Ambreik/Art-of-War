			StoneSkin / Threshold Damage Reduction

	Path : `GAME/Mechanics/Monster/Monster_StoneSkin.lua`


---

	Definition : StoneSkin (or Threshold Damage Reduction) is a specialized defensive mechanic where incoming damage is heavily reduced when certain thresholds or 
states are met. Unlike standard Damage Block (which applies universally), StoneSkin activates conditionally and is most often tied to environment, health %, or 
monster type (e.g., rock creatures, armored beasts, elite bosses).

---

	Core Attributes

	Activation Triggers :
* HP threshold (e.g., *StoneSkin activates below 50% HP*).
* Environmental trigger (e.g., *active at night or underground*).
* Ability trigger (e.g., *monster casts Harden Carapace for 10s*).

	Reduction Style :
* Flat minimum hit (e.g., *cannot take more than 200 dmg per hit*).
* Percent-based (e.g., *reduces all damage by 75%*).
* Specific damage type resistance (e.g., *50% less physical, but magic bypasses*).

	Scaling :
* Higher tiers may reduce more or trigger more often.
* Boss variants can combine StoneSkin with immunity phases.

---

	Applicability (Monster Archetypes)

* Tanky monsters → Core mechanic.
* Elemental/Stone/Beast types → Natural thematic fit.
* Bosses/Elites → Used for “DPS check” encounters.
* Common mobs → Rare, only as passive-lite versions (like flat armor).

---

	Passive Traits & Implementations

* Permanent stone armor coating → low-level mobs.
* Burst-phase reduction → bosses immune to one-shots.
* Environmental StoneSkin → active only in caves/mountains.

---

	Combat Behavior (AI Rules)

* Monsters with StoneSkin stall progress until players adapt.
* May force players into waiting mechanics (wait until it wears off).
* Some AI rules:
	* Trigger when damaged too fast (anti-burst).
	* Trigger at scripted HP intervals (phases).
	* Stack with regen → prolong fights further.

---

	Counterplay

* Use damage types that bypass StoneSkin (e.g., magic piercing physical).
* Time burst windows outside of StoneSkin phases.
* Apply armor shred/debuffs to lower efficiency.
* Use DoTs to chip away steadily if StoneSkin blocks only big hits.

---

	Implementation Notes (DB/AI)**

* DB Flags:

  ```lua
  stoneskin = {
      type = "percent/flat/min_cap",
      value = X,
      trigger = "hp_threshold/environment/timer"
  }
  ```
* Should be optional, toggle ON in DB for specific archetypes.
* Visual cues: rocky skin, hardened aura, glowing cracks.
* AI → needs state transition (normal → StoneSkin active).

---