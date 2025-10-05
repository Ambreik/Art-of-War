			Server Combat Logs System

	Path : `GAME/Systems/Server_Combat_Logs.lua`

---

	1. Introduction

	The "Server Combat Logs System (SCLS)" is a core infrastructure designed to record, organize, and process all combat-related interactions between players, NPCs,
monsters, and environmental elements in the world game. Its purpose is to create a centralized, real-time record of every combat action, from basic attacks to 
complex skills, debuffs, and buffs.

	SCLS ensures transparency, replayability, debugging, and analytics for combat encounters. It serves as a foundation for both gameplay feedback 
(e.g., damage reports, threat tables) and development tools (balancing, event logging, and AI tuning).

	This system is modular and extensible,capable of integrating with other systems such as "Global Combat System", "AI Decision Layer", "Monster Awareness System",
and "Network Replication Layer", ensuring consistent combat logging across both single-player and multiplayer sessions.

---

	2. Core Mechanics / Functionality

	The Server Combat Logs System captures every relevant combat event with a timestamped entry. Key functional areas include:

* Event Capture :
	* Records all combat interactions:
		* Player attacks and skills.
		* Monster attacks, skills, and special abilities.
		* Environmental or world-triggered damage (traps, hazards).
	* Supports high-frequency, low-latency logging to prevent data loss during large-scale encounters (e.g., raids or world bosses).

* Data Structure & Storage :
	* Logs are stored as structured objects (not raw text), capturing:
		* Source (attacker)
		* Target (defender)
		* Action type (attack, debuff, heal, buff, environmental effect)
		* Damage/healing/impact values
		* Status effects applied
		* Critical hits, misses, or special outcomes
	* Supports temporal queries (e.g., last 10 seconds of combat) and aggregated summaries (total damage, threat generated).

* Integration with Combat Systems :
	* Directly hooks into "Global Combat System", "AI Decision Layer", and "Monster Awareness System" to log:
		* Threat generation
		* Damage mitigation
		* Buff/debuff applications
	* Compatible with the "Network Replication Layer", ensuring combat logs reflect what all clients experience in multiplayer sessions.

* Filtering & Querying :
	* Allows filtering by:
		* Actor type (player, monster, boss)
		* Damage type (direct, AoE, DOT)
		* Combat round or encounter
		* Critical vs normal actions
	* Provides a foundation for in-game combat reports, PvP statistics, or debugging logs.

---

	3. System Integration

	SCLS interacts with multiple systems:

* Global Combat System : Receives all damage, healing, and status change events in real-time.
* AI Decision Layer : Records AI-targeting decisions and threat calculations.
* Monster Awareness System & Perception Mechanics : Logs events triggered by sensory perception (e.g., monster detects player, enters combat).
* Network Replication Layer : Synchronizes combat logs for all connected clients in multiplayer, preserving consistency.
* Event Bridge : Allows combat log events to trigger world events, quests, or scripted sequences.

---

	4. Situational Applications

	The system supports:

* Real-time combat monitoring : Enables developers or GMs to monitor ongoing encounters for irregular behavior or balance issues.
* Replay & Analysis : Logs can be replayed to analyze raid mechanics, player strategies, and monster AI behavior.
* PvP & PvE Analytics : Generates statistics like DPS, threat generation, healing efficiency, and debuff uptime.
* Debugging & Bug Tracking : Identifies missed mechanics, damage calculation errors, or AI failures.

---

	5. Systemic Impact

* Improves balance and tuning for monsters, bosses, and player abilities.
* Provides audit trails for competitive or PvP encounters.
* Enables AI improvement by analyzing AI actions logged during combat.
* Enhances event-trigger systems for world dynamics by feeding data into Event Bridge.

---

	6. Extensibility & Future Development

	SCLS is designed to scale as new systems and mechanics are implemented:

* Skill & Buff Expansion : Logs will adapt to new skill types, buffs, debuffs, and unique mechanics.
* Multi-layered Combat Encounters : Supports group combat scenarios (raids, mass PvP battles).
* Advanced Analytics : Future integration with combat heatmaps, damage distribution charts, and AI behavior analytics.
* Player Feedback : Real-time combat summaries, post-combat reports, and encounter breakdowns can be integrated into the UI.
* Persistent Logs & Data Mining : Long-term storage for meta-analysis, balancing, and gameplay trend detection.

---

	7. Debugging & Tools

* Live Logging Dashboard : Allows developers to visualize ongoing combat in real-time.
* Replay Mode : Replays encounters using recorded events for debugging or demonstration.
* Filtered Export : Supports exporting logs for analysis in CSV, JSON, or internal tools.

---