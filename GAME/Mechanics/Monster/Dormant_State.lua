			Dormant State

	`GAME/Mechanics/Monsters/Dormant_State.lua`

---

	Definition : The "Dormant State" represents a passive, resting behavior used by certain monsters in their natural environment. Monsters in this state appear 
inactive, often lying on the ground or hiding, indicated visually (e.g., *“Zzz”* effect). While dormant,monsters are less likely to detect players unless disturbed,
creating opportunities for stealth, ambush, or environmental interaction.

---

	Core Attributes

* Dormant Duration :
	* The period a monster remains in its dormant state before returning to active patrol or re-entering stealth.

* Activation Conditions :
	* Typically occurs during night, specific weather, or environmental triggers.
	* Monsters may become dormant in forests, caves, or other wilderness areas.

* Detection Threshold :
	* Monsters in Dormant State have reduced Line-of-Sight (LOS) and rely on **Global Noise System** triggers to detect players.
	* Player actions such as running, jumping, or casting spells generate noise that can wake dormant monsters.

* Interruptions :
	* Physical interaction, entering proximity radius, or environmental hazards will awaken monsters from the Dormant State.

---

	Behavior Mechanics

1. Resting Position :
	* Monster visually appears inactive (lying down, curled up, or motionless).

2. Noise Sensitivity :
	* Interacts directly with "Global Noise System" :
		* Each player action generates a noise value.
		* Dormant monsters detect cumulative noise over a threshold and awaken if exceeded.

3. Aggression Upon Awakening :
	* Once awakened, monsters immediately switch to combat mode or flee depending on type (Tanky, Berserk, Coward, etc.).

4. Environmental Role :
	* Provides dynamic gameplay by creating tension in wilderness areas: players can sneak past, accidentally trigger combat, or plan ambushes of their own.

---

	Counterplay for Players

* Noise Management :
	* Slow movement, sneaking mechanics, or silencing items reduce risk of awakening dormant monsters.

* Environmental Observation :
	* Monitoring monster positioning, visual cues (e.g., sleeping animation), and ambient effects helps avoid triggering.

* Strategic Preparation :
	* Players may use ranged attacks or abilities to prepare traps without waking nearby dormant monsters.

---

	Integration with Global Noise System

* Noise Calculation :
	* Each player action is logged in the Global Noise System.
	* Dormant monsters subscribe to relevant noise events within a radius.

* Noise Threshold & Response :
	* Each monster type may have a unique noise threshold (e.g., Tanky monsters are less sensitive than Coward types).
	* Threshold exceedance triggers immediate wake-up and potential ambush or aggressive behavior.

* Scaling & Party Mechanics :
	* Cumulative noise from multiple players increases the likelihood of awakening.
	* Ambush or dormant mechanics can scale with party size or proximity.

---

	Implementation Notes (DB / AI)

* Database Attributes :
	* `DormantDuration`: Time spent dormant.
	* `NoiseThreshold`: Value of noise required to awaken.
	* `ActivationConditions`: Night, weather, environmental factors.

* AI Integration :
	* AI monitors the Global Noise System for noise events.
	* Defines actions upon awakening (combat, flee, reposition).
	* Optional coordination with nearby monsters for group awakening.

---