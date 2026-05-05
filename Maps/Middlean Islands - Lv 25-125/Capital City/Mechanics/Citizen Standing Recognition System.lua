			Citizen Standing Recognition System

	*(Capital City – Hidden Social Reputation Layer)*

	This system defines how the population and authority structures of Capital City perceive and react to a player over time.
	It is a hidden identity state system, not a visible reputation bar.

---

	System Purpose : The city does not see the player as "neutral".

	It categorizes them dynamically based on : 
* legal behavior
* civic interaction
* criminal activity
* economic influence
* system-based interventions (bribes, fines, bounty encounters)

	This determines :

> how the entire city "remembers" the player socially

---

	Core Rule : 

```lua id="citizen_core"
CitizenStanding = f(CivicOffenses, Bribes, Quests, Bounties, GuardInteractions)
```

	This value is not linear and does not display numeric values to the player.

---

		Standing Tiers

	Visitor : Default state for all new players.

	Behavior :
* neutral guard behavior
* standard prices
* basic dialogue
* no recognition

---

	Known Face : Player has interacted with systems repeatedly.

	Triggers :
* completed quests
* minor fines
* repeated presence in city zones

	Effects :
* guards recognize player visually
* civilians comment occasionally
* minor inspection chance increases

---

	Trusted Citizen : Player is seen as socially stable or useful.

	Triggers :
* completed faction work
* paid fines consistently
* helped guards or NPC systems
* low crime history

	Effects :
* reduced inspection frequency
* better merchant prices
* guards may skip minor checks
* NPCs offer friendly dialogue

---

	Problematic Individual : Player is flagged as unstable or suspicious.

	Triggers :
* repeated civic offenses
* illegal PvP activity
* unresolved fines
* bounty activity
* smuggling involvement

	Effects :
* frequent inspections
* guards stop player on sight in some zones
* higher fine severity
* restricted access to certain buildings

---

		Dynamic Transition Logic

	Standing is NOT permanent.

	It shifts via :

	➕ Positive Inputs : 
* completing city quests
* paying fines
* assisting guard systems
* successful legal interactions
* controlled smuggling cooperation (hidden path)

	➖ Negative Inputs : 
* illegal PvP
* flying violations
* civic offenses
* resisting guards
* bounty involvement

---

		Hidden Memory System

	The city remembers : 
* last offense type
* last guard interaction
* frequency of violations
* district of activity

	So recognition is contextual, not global.

	Example :
* Trusted in East Academy
* Problematic in Docks

---

		Guard Behavior Integration

	Guards do NOT use uniform reactions.

| Standing        | Guard Behavior             |
| --------------- | -------------------------- |
| Visitor         | neutral                    |
| Known Face      | occasional checks          |
| Trusted Citizen | respectful, minimal checks |
| Problematic     | immediate interception     |

---

		NPC Dialogue Integration

	NPCs subtly react :

	Trusted Citizen :
* "Good to see you again."
* "You’ve been helpful to the city."

	Problematic :
* "I’ve heard stories…"
* "The guards mentioned you."

	This feeds your "Dialogue & Ambient Reaction Matrix" system.

---

		Economic Effects

	Merchants :
* Trusted → discounts
* Problematic → price increase or refusal

	Taverns :
* Known Face → more stories shared
* Problematic → rumors and avoidance

---

	System Interaction Map : 

| System               | Effect                          |
| -------------------- | ------------------------------- |
| Civic Offense System | primary negative driver         |
| Bribe System         | modifies standing recovery      |
| Corruption System    | allows bypass of penalties      |
| Bounty System        | hard-lock into Problematic tier |
| NPC Suspicion        | short-term detection layer      |
| Guard Alert System   | enforcement escalation          |

---

		Special Edge Cases

	Temporary Forgiveness : 
* Certain quests or faction support can temporarily mask standing.

	Corrupt Recovery Path : 
* High-level bribery can downgrade Problematic → Known Face without full cleanup.

	Legal Reset Events : 
* Judgment Hall or major faction resolution can partially reset standing.

---

	What This System Achieves : 
* creates invisible social memory
* makes city feel "aware" of player history
* drives NPC tone organically
* connects all crime systems into one identity layer
* replaces traditional reputation bars with living perception

---
