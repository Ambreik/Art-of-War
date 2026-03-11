			Informal Gathering / Loitering Awareness Mechanic

> Cities notice those who linger.

---

		Core Idea

	Standing in sensitive locations without intent creates contextual suspicion, not immediate action.
	This is not anti-AFK — it is anti-unnatural presence.

---

	Sensitive Locations (Loiter Zones)

* In front of:
	* Merchant stalls
	* Quest givers
	* Storage buildings
	* Guard posts
	* Smuggler-adjacent areas
* Narrow alleys near workshops
* Market choke points

	These zones are small, invisible volumes, not entire streets.

---

		AFK-Safe Principle (Very Important)

	The system never acts if:

* Player is in "AFK mode"
* Player performs micro-interactions
* Player moves camera / rotates
* Player interacts with UI (bags, skills)

AFK mode = explicit social contract
“No suspicion generated.”

---

		Suspicion Generation (Hidden Counter)

	Suspicion builds only if ALL are true:
1. Player stands in Loiter Zone
2. No interaction with NPCs or UI
3. No movement or camera change
4. Not AFK flagged
5. Time exceeds threshold (e.g. 60–120 sec)

	Suspicion decays quickly when:
* Player moves
* Interacts
* Leaves zone

---

		Suspicion Stages

	Stage 1: Noticed

* Nearby NPCs glance
* Ambient dialogue triggers
* Guards change patrol path

	Purely atmospheric.

---

	Stage 2: Curious

* Guardian approaches slowly
* Asks neutral line:
	* “Everything alright?”
	* “Looking for someone?”

	Player can respond by:
* Moving
* Interacting
* Talking
* Emoting

	No penalty.

---

	Stage 3: Investigated

	Only if player remains idle.
* Guardian stands close
* Dialogue:
	* “You’ve been here a while.”
* Player auto-exits suspicion if:
	* Moves
	* Opens vendor
	* Opens quest UI

---

	Stage 4: Resolution

	If still inactive:
* Player is escorted a few meters away
* Guardian says:
	* “Don’t block the stalls.”

	No debuff
	No REP loss
	No cooldown

	This is spatial correction, not punishment.

---

		Positive Variant: Informal Gathering Zones

	Now the original good side of the mechanic:

	If Player Is Active but Idle : 
* Looking around
* Emoting
* Targeting NPCs
* Chatting

	Then instead of suspicion:

	Conversation Trigger : 
* Nearby NPC starts gossip
* Rumors unlock:
	* Events
	* Smuggler hints
	* Market fluctuations

	This is intent-based detection, not time-based.

---

		Hidden Synergies

	With Crafting Noise :
* Loud crafting + loitering = faster investigation

	With Fog :
* Fog delays suspicion buildup

	With Smugglers :
* Smuggler NPCs notice loiterers faster
* But react differently (offers, not guards)

	With Fake Alarm :
* Loitering during alarm = instant escort

---

	Anti-Exploit Layer : 
* Bots trigger escort quickly
* AFK bots without AFK flag get moved
* Macro camera jitter still triggers suspicion (randomized checks)

---
