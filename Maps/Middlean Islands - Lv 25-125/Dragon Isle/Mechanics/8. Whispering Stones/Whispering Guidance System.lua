			Whispering Guidance System

* Type : Core / Clue / Exploration
* Function : Guides players toward hidden nearby content

---

	Player Interaction :
* Approach stones
* Activate “listen” interaction

---

	System Behavior :

* Upon interaction :
	* Emits directional whisper cue
	* Provides :
		* Audio hint (stronger in correct direction)
		* Subtle visual cue (faint glow pulse)

---

	Guidance Logic :

* Points toward :
	* Hidden caves
	* Secret fishing pools

---

	Accuracy Behavior :
* Closer player gets → clearer signals
* Further away → vague direction

---

	Conditions / States :
* Silent (inactive)
* Whispering (active guidance)

---

			Activation State System (Night / Elara Link)

* Type : Environmental / Conditional
* Function : Controls when stones are usable

---

	Activation Conditions :

* Night Time : 
	* Default activation window

OR

* Elara Spawn Active

---

	System Behavior :
* When active :
	* Stones glow faintly
	* Interaction becomes available
* When inactive :
	* Stones remain dormant
	* No guidance available

---

	Conditions / States :
* Dormant (day / no event)
* Active (night or Elara present)

---

			Hidden Discovery System

* Type : Core / Reward / Exploration
* Function : Resolves guidance into actual discoveries

---

	Player Interaction :
* Follow whispers
* Locate hidden point of interest

---

	Possible Discoveries :
* Hidden caves
* Secret fishing pools

---

	Discovery Behavior :
* Not marked directly
* Requires :
	* Interpretation
	* Exploration

---

	Conditions / States :
* Undiscovered
* Discovered

---

			Clue Reward System

* Type : Reward / Progression

---

	Rewards :
* Exploration XP
* Small loot caches
* Clue fragments

---

	pecial Integration :

	"Skyreach Spire Puzzle Clues"

* Low chance reward
* Provides :
	* Hints
	* Pieces of larger puzzle

---

	System Behavior :
* Rewards granted on :
	* Successful discovery
	* Not on stone interaction

---