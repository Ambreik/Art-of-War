			Mini-Event Mechanic — Whispers in the Leaves

---

		1. Mechanic Overview

	Inside the Forest Glade, the environment itself begins to guide the player through subtle natural cues.

	This is not a visible puzzle.
	There are no markers, no UI prompts, no obvious indicators.

	The player must pay attention to the forest.

	A sequence of four hidden "Whisper Points" must be discovered in the correct order by following :
* Direction of leaf movement
* Soft wind-like whispering audio
* Slight shimmering of foliage
* Very faint ground particle drift

	Wrong order resets the event.

	Correct order summons the Hidden NPC and grants the buff.

---

		2. Trigger Conditions

* Player enters the Forest Glade area
* 25% chance this mini-event becomes active
* Only one player can have the event active at a time
* Event lasts up to 6 minutes before fading if not completed

	When active :
* Ambient forest audio changes slightly (more wind, soft whispers)
* Leaves occasionally move unnaturally in a specific direction

---

		3. Whisper Points

	There are 4 invisible locations randomly selected from a pool of possible positions around the Glade.

	Each point has :
* Subtle leaf swirl animation
* Directional whisper sound (3D audio)
* Slight pollen drift toward the next correct point

	The cues are only noticeable if the player stops and observes.

---

		4. Player Interaction Flow

	Step 1 — Discovery
	Player walks near a Whisper Point → hears faint whisper → interacts (no UI, proximity based).

	Step 2 — Guidance

	After first point is triggered :
* Leave briefly swirl toward the direction of the next correct point
* Whisper sound shifts direction

	Step 3 — Sequence
	Player must find points in correct order.

	If player activates a wrong point :
* All whispers stop
* Leaves become still
* Event resets after 10 seconds

	Player must start again from the first point.

---

		5. Failure & Reset

	Event resets if :
* Wrong Whisper Point activated
* Player leaves the Glade
* Time expires (6 min)
* Player dies

	After reset, event can re-trigger after a cooldown.

---

		6. Success Outcome

	Upon activating the 4th correct Whisper Point :
* Forest goes completely silent for 3 seconds
* Leaves freeze mid-air
* Soft gust of wind passes through trees
* Hidden NPC spawns nearby
* Player receives the buff

---

		7. Buff Reward (for your Buff file)

* NAME : Forest’s Whispering Insight
* How to get : Complete the whisper path correctly
* Effect :
	* +10% movement speed in forests
	* +8% detection range for hidden enemies/resources
	* Slight stamina regen boost
* Duration : 20 minutes
* Suffer Debuff : –5% armor
* UI Icon : Leaf with sound waves
* Flavor : "You begin to hear what the forest tries to say."
* Environmental & Gameplay Interaction :
	* Helps in jungle/forest POIs
	* Improves awareness vs ambushes

---

		8. Design Purpose

	This mechanic teaches players :
* To stop rushing
* To observe environment instead of UI
* That the island communicates through nature
* That not all puzzles are visual — some are sensory

	It fits perfectly with Ashen Cliffs’ environmental philosophy.

---

