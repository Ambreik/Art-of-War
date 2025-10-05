			Quest & Event Manager System

	Path : `GAME/Systems/Quest_Event_Manager.lua`

---

	1. Introduction

	The Quest & Event Manager (QEM) is the orchestration layer responsible for controlling all narrative and world-driven events in the game world.
	It manages the registration, triggering, and synchronization of quests, dynamic events, and conditional interactions between NPCs, players, and the environment.

	Unlike static quest systems, the QEM operates as a reactive, systemic framework, meaning that:

* Quests can be influenced by global conditions (time of day, weather, region control, etc.).
* Events can be triggered dynamically by other systems — e.g., "Awareness System", "Combat System", or "Global Noise System".
* It integrates with the "Event Bridge", ensuring proper propagation of triggers across clients in multiplayer environments.

	The QEM is therefore the narrative intelligence core — turning the game’s mechanical events into story-driven experiences, when the moment is coming.

---

	2. Core Mechanics / Functionality

	The QEM is divided into several functional layers:

	A. Quest Definition Layer

	Defines the structure and data of all quests, including:

* Quest ID / Type (Main, Side, Profession, Exploration)
* Prerequisites (level, items, previous quests)
* Objectives (kill, gather, explore, interact, defend, survive)
* Conditions (time of day, faction rank, reputation, or event state)
* Rewards (XP, items, reputation, access unlocks)

	Quests can be static (traditional scripted missions) or systemic, generated dynamically by gameplay contexts from a list of already done quests, and storedto be
utilized when the moment is right from the dynamics of the events.

---

	B. Event Listener Layer

	The reactive backbone of the system.

* Registers all possible world signals through the "Event Bridge".
* Maps signals to quest logic, e.g.:
	* `onMonsterKilled(monsterID)` → Updates “Hunt” quest objective.
	* `onLocationEntered(playerID, regionID)` → Triggers exploration event.
	* `onBossAwarenessActivated(entityID)` → Unlocks “Ambush” quest chain.
* Supports conditional responses, meaning events may not always fire unless specific environmental or systemic conditions are met.

---

	C. Progression Engine

	Handles quest state machines:

* `Not Started`
* `In Progress`
* `Completed`
* `Failed`
* `Expired` (for time-sensitive missions)

	Implements save-state synchronization so that all clients and the server share consistent quest progress.
	Each update passes through the "Event Bridge" and the "Network Replication Layer".

---

	D. Event Scheduler

	Manages timed, cyclic, or world-based events:

* “Defend the Outpost” every 3 in-game days.
* “Rare Monster Invasion” at night.
* “Eclipse Ritual” every real-world week.

	Uses both in-game and real-world timers, ensuring event consistency even during server restarts.

---

	E. Dynamic Trigger System

	Allows procedural content generation:

* Detects monster spawns, region control changes, or world boss deaths, and creates new related quests.
* Can chain multiple systems:
	* Monster Awareness → Event Bridge → Quest Spawn → Combat System engagement.

	This makes the world alive, reacting naturally to player behavior and global conditions.

---

	3. System Integration

| Integrated System             | Role / Relationship                            | Example                                                               |
| ----------------------------- | ---------------------------------------------- | --------------------------------------------------------------------- |
| **Event Bridge**              | Main communication layer                       | “onMonsterKilled” or “onRegionCaptured” signals trigger quest updates |
| **Network Replication Layer** | Ensures synced quest progression               | All party members see identical quest updates                         |
| **Awareness System**          | Triggers “Discovery” or “Stealth” quests       | “You’ve been spotted” or “Find hidden relic”                          |
| **AI Decision Layer**         | Feeds event triggers based on monster behavior | Monster retreat triggers “Track the Beast”                            |
| **Global Combat System**      | Manages combat-based quest goals               | “Deal 5000 damage” or “Survive 3 waves”                               |
| **Global Noise System**       | Used for stealth-based objectives              | “Stay quiet while infiltrating camp”                                  |
| **Time / Day-Night System**   | Time-locked quests                             | “Only available at dusk”                                              |

---

	4. Situational Applications

	The QEM handles a wide variety of in-game situations:

1. Exploration Quests – Triggered by entering marked areas or discovering hidden ruins.
2. Chain Quests – One quest’s completion triggers a new one automatically.
3. Faction Campaigns – Multi-phase quests tracking global faction progress.
4. Reactive Quests – Dynamic missions generated when:
	* A boss awakens.
	* A faction loses control of a zone.
	* The environment changes (storm, eclipse, or corruption spread).
5. Emergency Events – Server-wide crises such as invasions or resource shortages, uniting players for temporary objectives.

---

	5. Systemic Impact

	The QEM heavily influences and depends on several world systems:

* Encourages exploration and interaction between global systems.
* Enables story persistence across multiplayer sessions.
* Provides mission logic for monsters, NPCs, and regions.
* Serves as the foundation for dynamic content updates and seasonal events.
* Connects AI, combat, and environmental changes with player-driven progression.

	In essence, it ensures the game world feels *responsive, evolving, and narratively cohesive.*

---

	6. Extensibility & Debugging Tools

	Developer Tools

* `/quest debug <ID>` → Shows all quest states.
* `/event trigger <name>` → Manually triggers an event.
* `/quest sync` → Forces replication test for quest progress.
* `/event list` → Lists all active timed events.
* `/quest reload` → Reloads all quest data without server restart.

	Debug Overlay

	Visual debugging layer that displays:

* Active quest markers.
* Event triggers firing in real time.
* Conditional logic validation (highlighted in red/yellow).

	Extensibility Options

1. Add *Seasonal Event Modules* (E.g., Winter’s War, Blood Moon, etc.)
2. Integrate *Reputation Systems* (Factions or Taverns influencing quest availability)
3. Implement *Procedural Story Arcs* using AI-generated quest chains.

---

	7. Example Event Flow

	Scenario :

* Player triggers a noise alert near a boss camp at night.

	Flow :

1. "Global Noise System" sends event → `EventBridge:Dispatch("onNoiseDetected")`
2. "Monster Awareness System" reacts → monster enters alert mode.
3. "AI Decision Layer" triggers state → `Hunt Player`.
4. "Event Bridge" sends signal to QEM.
5. "QEM" spawns “Hunter’s Revenge” quest for nearby players.
6. "Global Combat System" handles ensuing battle.
7. Upon defeat, "Event Bridge" triggers “Quest Completed” → QEM updates progress.

---

	8. Future Expansion

* "AI-Generated Quest Narratives" — using procedural storytelling for replayable content.
* "Player-Driven Events" — high-ranking players can initiate local world events.
* "Cross-System Synchronization" — faction and territory systems tied directly into QEM for world evolution.

---