			Whisper Network System

	*(Capital City – Rumor Propagation Layer)*

	This system controls how information spreads organically through the population of "Capital City" based on player actions, witnessed events, and system-driven 
narrative diffusion.

	It creates a living rumor ecology instead of static NPC dialogue.

---

	System Purpose : "Capital City" does not update its story through UI logs.

	Instead :
* NPCs talk to each other
* rumors evolve over time
* information spreads spatially
* truth degrades or amplifies based on repetition

	This system turns actions into social memory events.

---

	Core Rule : 

```lua id="whisper_core"
Rumor = Event + WitnessWeight + ZoneType + TimeDecay + AmplificationFactor
```

	Rumors are not fixed — they evolve as they travel.

---

		Propagation Direction Model

	Rumors spread in a structured flow :
* West Side → ⚪ Central → 🟨 East Side

	Why :
* West = informal information origin (taverns, docks, smugglers)
* Central = administrative filtering zone
* East = institutional reinterpretation (academy, merchants, officials)

	Each zone changes the rumor slightly.

---

		Rumor Generation Triggers

	Rumors are created by :
* illegal PvP events
* civic offenses
* bounty encounters
* smuggling activity
* guard interventions
* rare achievements
* public failures or humiliations

---

		Rumor Strength Levels**

	Weak Rumor : 
* single witness
* vague description
* inconsistent details

	Confirmed Talk : 
* multiple NPC mentions
* stable narrative core

	City-Wide Knowledge : 
* repeated spread across districts
* becomes common knowledge

	Institutional Awareness : 
* guards / officials acknowledge it
* affects inspections and behavior

---

		Rumor Evolution System

	As rumors travel :

| Zone    | Effect on Rumor         |
| ------- | ----------------------- |
| West    | exaggerates or distorts |
| Central | filters / formalizes    |
| East    | analyzes / reinterprets |

	Example :

> "Player fought guards in West"
	> becomes :
> "Armed disturbance involving suspected criminal actor in district outskirts"

---

		NPC Participation System

	Not all NPCs spread rumors equally :

	High Spread NPCs : 
* Tavern NPCs
* Dockers
* Drunk civilians
* Merchants

	Medium Spread NPCs : 
* guards
* workers
* travelers

	Low Spread NPCs : 
* officials
* academy staff
* military personnel

---

		Time Decay & Memory

	Rumors are not permanent.

	They decay unless reinforced :
* repeated sightings strengthen rumor
* absence of events causes fading
* contradictory events rewrite older rumors

---

		Rumor Amplification Events

	Certain systems amplify rumors :

	Guard Alert System : 
* instantly boosts rumor spread speed

	Bounty System : 
* converts rumor into official pursuit narrative

	NPC Suspicion System : 
* increases local awareness probability

	Civic Offense System : 
* stabilizes rumor into “recorded behavior”

---

		False Information Layer

	Rumors can degrade into misinformation :
* smugglers intentionally distort truth
* drunk NPCs exaggerate events
* guards simplify reports
* civilians misinterpret actions

	Result :

> city truth is always "approximate"

---

		Player Awareness Feedback (Indirect Only)

	Players never see “rumor UI”.

	They perceive it via :
* changed NPC dialogue
* altered guard behavior
* merchant reactions
* increased inspections
* sudden recognition lines

	Example :

> "So you’re the one they were talking about…"

---

		Zone-Based Rumor Flavoring

	West Side : 
* dramatic, emotional, exaggerated rumors

	Central District : 
* formal, structured, "official-sounding" rumors

	East District : 
* analytical, softened, reworded rumors

---

	System Outputs : 

| System             | Effect                          |
| ------------------ | ------------------------------- |
| NPC Suspicion      | contextual validation of rumors |
| Citizen Standing   | reputation reinforcement        |
| Guard Alert System | rumor acceleration              |
| Bounty System      | formalization into pursuit      |
| Civil Law System   | rumor-to-record conversion      |
| Smuggling System   | rumor distortion pathways       |

---

	What This System Achieves : 
* turns NPC dialogue into a living network
* removes need for quest log storytelling
* creates organic “player legend building”
* makes Capital City feel socially aware
* bridges law, crime, and reputation into narrative flow

---
