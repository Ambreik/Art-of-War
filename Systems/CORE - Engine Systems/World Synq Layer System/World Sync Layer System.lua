			World Sync Layer System

	Path : `GAME/Systems/World_Sync_Layer.lua`

---

	1. Introduction

	The "World Sync Layer (WSL)" is the real-time synchronization core responsible for maintaining a consistent and authoritative state of the game world across all
connected clients and the server.

	It ensures that every dynamic element — from NPCs, monster spawns, timers, and environmental changes to player states and event triggers — remains consistent 
for every player in the shared world.

	This system acts as a temporal and spatial regulator, ensuring that:

* World events happen simultaneously for all players.
* Monster and item spawns follow server-defined schedules.
* Environmental states (e.g., day/night, fog, weather) remain in sync.
* Time-dependent mechanics (quests, cooldowns, or world cycles) are consistent across regions and instances.

---

	2. Core Mechanics / Functionality

	A. State Synchronization

* Keeps server-authoritative copies of:
	* Player location and state
	* NPC positions and states (alive, dead, patrolling)
	* Object states (doors, switches, resources)
	* World phase (day/night, region state, invasions)
* Uses delta replication, sending only the *changes* in data instead of full snapshots to save bandwidth.

---

	B. Time Coordination

* Manages the "World Clock", a synchronized time source across all servers.
* Regulates:
	* Monster respawn timers.
	* Resource node cooldowns.
	* Time-sensitive quests or events.
	* Day/Night and environmental transitions.
* Clients adjust to server drift using time drift correction algorithms.

---

	C. Spatial Authority Model

* Each world region (zone) can have its own regional sync node.
* Reduces load by handling synchronization locally within that area.
* Example:
	* Dendera Region Sync Node
	* Zonen Territory Sync Node
	* Middlean Islands Sync Node
	* Outland Zone Sync Node

	This allows massive player counts without global desync.

---

	D. Event Propagation

* Interacts directly with the "Event Bridge", distributing system events like:
	* Monster spawn/death updates.
	* Player quest progress.
	* Environmental phase changes.
* Events are batched and time-stamped, maintaining deterministic replay integrity.

---

	E. Conflict Resolution

* Handles discrepancies using authoritative server override.
* Detects desyncs:
	* Object positions diverging beyond tolerance.
	* Invalid state transitions.
	* Duplicate entities or missing spawns.
* Automatically re-syncs clients via corrective state packets.

---

	3. System Integration

| Connected System              | Relationship                        | Example                                                |
| ----------------------------- | ----------------------------------- | ------------------------------------------------------ |
| **Network Replication Layer** | Handles packet-level transmission   | Sync packets for world and player data                 |
| **Event Bridge**              | Broadcasts systemic events globally | “onWorldPhaseChange” triggers day/night cycle          |
| **AI Decision Layer**         | Relies on synchronized sensory data | Avoids outdated monster positioning                    |
| **Quest & Event Manager**     | Ensures shared event triggers       | “Region Secured” quest syncs across all players        |
| **Global Combat System**      | Maintains combat state parity       | Ensures all players see combat resolution at same time |

---

	4. Systemic Impact

* Guarantees fair and consistent gameplay across global sessions.
* Prevents “ghost states” (e.g., a monster appears alive for one player but dead for another).
* Supports cross-region synchronization for global events.
* Provides foundation for multiplayer persistence and reliable replay data.

---

	5. Extensibility & Debug Tools

	Developer Tools:
* `/sync validate` → runs full world consistency check.
* `/sync flush` → forces full world state resend to clients.
* `/sync clock` → checks time drift between server/client.

	Debug Overlays:
* Sync Lag Indicator : shows delay per subsystem.
* Entity Ghost Detector : highlights unsynced or duplicated objects.

---

	6. Future Expansion

* Integration with "Sharded Worlds" (multiple servers running mirrored versions).
* Predictive Sync AI, allowing clients to interpolate world movement more smoothly.
* Replay Mode, using logged sync data for cinematic replays or analytics.

---