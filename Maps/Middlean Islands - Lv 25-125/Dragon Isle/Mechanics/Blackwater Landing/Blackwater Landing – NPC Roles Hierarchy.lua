			Blackwater Landing – NPC Roles Hierarchy

---

	1. Command / Management Layer

	Purpose : Centralized authority, controls the dock operations and NPC coordination.

| Role                        | Description                                                                           | Mechanics & Interactions
| --------------------------- | ------------------------------------------------------------------------------------- | ---------------------------------- |
| Shipmaster             	  | Oversees all travel to and from the island. Coordinates boat arrivals and departures. | Boat Rental, Arrival/Departure Mechanics, NPC travel advice.
| Harbor Quartermaster		  | Manages dock supplies, cargo manifests, and resource logistics.                       | Cargo Delivery Quests, Expedition Supply Management, Dock economy.
| Expedition Cartographer 	  | Studies maps, fragments, and landmarks.                                               | Map Fragment mini-events, exploration guidance.

	Notes : These NPCs are static, rarely move, and are central hubs for quests or mechanics.

---

	2. Service / Vendor Layer

	Purpose : Provides player services and supplies.

| Role                     | Description                                              | Mechanics & Interactions                      |
| ------------------------ | -------------------------------------------------------- | --------------------------------------------- |
| General Store Vendor	   | Sells survival items: rations, ropes, bait, lantern oil. | Supply purchases, exploration prep.           |
| Fisherman				   | Provides bait, fishing tips, rumors about aquatic zones. | Fishing System, Underwater Wreck hints.       |
| Wounded Sailor           | Stationary NPC providing lore and hints.                 | Minor storytelling, Hidden Wreck quest clues. |

	Notes : All these NPCs are mostly static, with minor idle animations (e.g., fishing, repairing gear, or sitting).

---

	3. Labor / Operational Layer

	Purpose : Handles dock maintenance, loading/unloading, and day-to-day activities.

| Role             | Description                                 | Mechanics & Interactions                                            |
| ---------------- | ------------------------------------------- | ------------------------------------------------------------------- |
| Dock Workers	   | Unload cargo, repair docks, stack supplies. | Dock Work Animations, Minor rumor sharing, environmental immersion. |

	Notes :
* These NPCs patrol very limited zones, usually near crates or workstations.
* Can occasionally trigger minor environmental mechanics (falling crates, minor collisions).

---

	4. Security / Combat Layer

	Purpose : Ensure player and NPC safety, respond to hostile events.

| Role               | Description                                            | Mechanics & Interactions                                                          |
| ------------------ | ------------------------------------------------------ | --------------------------------------------------------------------------------- |
| Dock Patrols  	 | Roam perimeter of the landing, monitor for threats.    | Light combat AI, minor patrol mechanics, responds to pirate scouting.             |
| Dock Guardians     | Static elite defenders positioned at strategic points. | Safe Zone Enforcement, Emergency Combat Response, Heavy AI for threat mitigation. |

	Notes :
* Dock Patrols have roaming AI, Dock Guardians are stationary, high defense.
* They respond to pirate incursions, player combat events, or triggered mechanics like explosions or ambushes.

---

	5. Interaction / Quest Layer

	Purpose : NPCs that link directly to the "Dockside Quest Board" and exploration mechanics.

| Role                       | Description                         | Mechanics & Interactions                  |
| -------------------------- | ----------------------------------- | ----------------------------------------- |
| Shipmaster / Quartermaster | See above, provide quests directly. | Quest assignment, dynamic event triggers. |
| Expedition Cartographer    | Provides map insights.              | Map interpretation, hidden relic hints.   |
| Wounded Sailor             | Minor NPC hinting at secrets.       | Lore, environmental curiosity hooks.      |

---

		Hierarchy Flow : 

1. "Command Layer" → Issues orders and provides main quest hooks.
2. "Service Layer" → Supports player needs, indirectly interacts with mechanics.
3. "Labor Layer" → Keeps the environment functional; minor immersion mechanics.
4. "Security Layer" → Ensures safety, responds to player-triggered or environmental events.
5. "Interaction Layer" → Connects quests, hints, and hidden mechanics to players.

---

		Visual Idea

```
Command / Management
│
├─ Shipmaster
├─ Harbor Quartermaster
└─ Expedition Cartographer
│
Service / Vendor
├─ General Store Vendor
├─ Fisherman
└─ Wounded Sailor
│
Labor / Operational
└─ Dock Workers (3–5)
│
Security / Combat
├─ Dock Patrols (2–3)
└─ Dock Guardians (2)
│
Interaction / Quest Layer
└─ Embedded in Command & Service NPCs
```

---
