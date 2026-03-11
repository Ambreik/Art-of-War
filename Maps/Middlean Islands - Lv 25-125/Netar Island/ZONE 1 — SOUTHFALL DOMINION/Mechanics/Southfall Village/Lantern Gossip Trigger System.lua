			Lantern Gossip Trigger System

* Type : Ambient Dialogue / Environmental Trigger
* Scope : Southfall Village (scalable to all settlements on Netar Island)
* UI : None
* Quest Dependency : None
* *Repeatable : Yes (with internal cooldowns)

---

		Core Concept	

	Lanterns in Southfall are not just light sources — they are reactive world objects.
	When a lantern flickers, nearby NPCs may unconsciously speak aloud, mutter, or whisper information tied to:

* Local rumors
* Environmental danger
* Hidden mechanics
* Future quest hooks

	The player is never explicitly told why the NPC spoke.

---

	Trigger Conditions

	A Lantern Gossip Trigger can occur when ALL of the following are true:

1. Lantern State
   * Lantern is lit
   * Lantern enters a flicker phase (wind, fog, night surge, unseen disturbance)

2. NPC Proximity
   * NPC is within 6–8 meters of the lantern
   * NPC is idle or walking slowly (not in combat, not interacting)

3. Environmental Context
   At least one is active:
   * Night time
   * Fog from sea
   * Wind surge
   * Hidden event active nearby
   * Rare spawn / Mystic Stone present in zone

---

		NPC Reaction Types

	When triggered, the NPC performs one of the following:

	A. Rumor Murmurs

	Low-value, atmospheric lines.

	Examples :
* “Lanterns don’t flicker like that without reason…”
* “My father said the sea breathes before it takes.”
* “Strange lights near the quarry again. I won’t go there.”

	Purpose:
* World flavor
* Builds tension
* No direct instruction

---

	B. Warning Statements

	Mid-value informational hints.

	Examples :
* “Best not wander far tonight. Things walk when the fog comes.”
* “Guards spotted movement near the treeline.”
* “If you hear dogs barking toward the coast… don’t ignore it.”

	Purpose:
* Reinforces existing mechanics
* Encourages player caution

---

	C. Hidden Mechanic Hints

	High-value but subtle information.

	Examples :
* “Funny thing… water shows more than stone at sunset.”
* “Lanterns burn brighter when the mountain wakes.”
* “Some paths only open when light meets old fire.”

	Purpose:
* Teases puzzles, reflection mechanics, timed systems
* No explicit directions

---

	Dialogue Delivery Rules

* Spoken as:
	* Mutters
	* Side comments
	* Half-whispers
* NOT direct player-facing dialogue
* No quest acceptance window
* No dialogue box — floating text or ambient voice

---

	Cooldown & Frequency Control

	To prevent spam:
* Per Lantern :
	* 10–15 minute internal cooldown

* Per NPC 
	* 20 minute cooldown

* Per Player :	
	* Player can hear at most 1 lantern-triggered gossip every 5 minutes

---

	Special Variations

	Guard NPCs
* Lean toward warnings and patrol-related hints

	Fishers
* Sea, tide, night, and rare fish hints

	Villagers
* Rumors, superstition, personal fears

	Children
* Vague, eerie lines
	* “The light blinks when someone’s watching…”

---

	Player Experience Outcome

* Players begin to linger near lanterns
* Lanterns become information hubs
* Information feels discovered, not given
* Reinforces nighttime tension on Netar Island

---

	Future Expansion Hooks (Not Implemented Yet)
* Lantern colors changing for rare events
* Specific lantern tied to major questlines
* Lantern sabotage mechanics
* Crusader interference with light sources

---