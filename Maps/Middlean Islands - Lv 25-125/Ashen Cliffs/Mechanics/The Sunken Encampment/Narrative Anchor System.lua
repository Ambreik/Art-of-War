			Narrative Anchor System

* POI : The Sunken Encampment
* Purpose : This camp is not just a hub — it is the memory point of the island storyline.

	This is where the game remembers what the player has done around the island, especially in relation to "Fort Mirath" and the Forsaken operations.

---

	Core Idea : The encampment acts as a story checkpoint recorder using hidden flags.

	These flags affect :
* Commander dialogue
* Allied NPC dialogue
* Quest branching
* What information is revealed to the player
* How much the camp “trusts” the player’s reports

	The player feels like :

> "They react to what I’ve done."

	But technically, this is a central story-state interpreter.

---

		Hidden Flag Categories

	These are not visible to the player.

| Flag Type               | Triggered By                                     | Affects                        |
| ----------------------- | ------------------------------------------------ | ------------------------------ |
| Mirath Recon Flag       | Visiting Mirath, scouting, killing patrols       | Commander strategy dialogue    |
| Supply Recovery Flag    | Delivering crates, logging supplies              | New quest chains, trust level  |
| Forsaken Knowledge Flag | Reading notes, killing key mobs, finding ledgers | Lore dialogue options          |
| Island Exploration Flag | Discovering secret locations                     | NPC respect, optional dialogue |
| Rescue/Intel Flag       | Interactions tied to captured soldier arc        | Branching quest availability   |

---

		Dialogue Branching (Commander & NPCs)

	Same NPC, different conversation depending on flags.

	Example behavior :
* If player has never been near Mirath → basic warnings
* If player scouted Mirath → strategic discussion
* If player recovered supplies → logistical talk
* If player found Forsaken documents → lore-heavy discussion

	The NPCs stop explaining basics and start treating the player like a field operative.

---

		Quest Chain Unlock Behavior

	Some quests from the Commander are not time-gated or level-gated.
	They are knowledge-gated.

	Example:
* A quest only appears if player has seen a Forsaken transport note
* Another only if player delivered 2 supply crates before
* Another only after visiting 2 secret locations

	The camp becomes the place where threads connect.

---

		Psychological Effect on Player

	Player perception:

> "I came back, and they knew what I did."

	This is extremely powerful for immersion and costs almost nothing mechanically — just flag checks.

---

		Structural Role in Island Design

	This system ties together :
* Secret Locations
* Supply System
* Mirath activity
* NPC interactions
* Exploration rewards

	Without this, those systems feel separate.
	With this, the encampment becomes the narrative brain of the island.

---

		Implementation Logic (design side)

* Hidden variables stored per player
* Commander and key NPC dialogues check for flags
* Quest availability checks flags instead of timers
* Some lore lines only show once specific flags are active

---

		Design Outcome

	The Sunken Encampment is :
* A safe zone
* A profession hub
* A quest hub
* AND the island’s memory core

---

	One-line Summary : 

> The camp remembers everything the player has done on the island and changes its story, quests, and dialogue accordingly.
