			Damage Reflection
			
	Path : `GAME/Mechanics/Monster/Monster_Damage_Reflection.lua`

	Definition : Damage Reflection is a defensive monster mechanic that returns a percentage of incoming damage back to the attacker. It punishes aggressive or 
unplanned attacks, making players carefully consider when and how they engage. This mechanic can reflect physical, magical, or even hybrid sources of damage.

---

	Core Attributes

* Reflection Type : Physical damage, magic damage, or universal.
* Reflection Percentage : Flat % (e.g., 10% of received damage returned).
* Conditional Triggers :
	* Always active (passive).
	* Active under specific thresholds (e.g., below 50% HP).
	* Tied to an ability or aura.
  
* Scaling : The reflected damage may scale with monster level, type, or region difficulty.

---

	Combat Behavior (AI Rules)

* Monsters with Reflection mechanics tend to bait attackers into heavy DPS phases.
* Can be paired with Tanky Type monsters to create long, punishing fights.
* Bosses/Skull monsters may toggle reflection periodically (e.g., shield phases).

---

	Counterplay

* Use DoTs or summons/pets to minimize reflected damage.
* Employ dispel mechanics if the reflection is tied to a buff/aura.
* Switch focus when reflection phases activate (boss example).
* Use mitigation skills before committing burst damage.

---

	Implementation Notes (DB/AI)

* Flag in DB: `damage_reflect = { type = "magic/physical/all", percent = X }`.
* AI triggers: set active on HP thresholds, skills, or timers.
* Can stack with other mechanics like StoneSkin or CC Immunity for elite encounters.

---