			 Network Test Suite System

	Path : `GAME/Systems/Network/Network_Test_Suite.lua`

---

Type : Developer / Debugging Toolset
Purpose : Validates, monitors, and stress-tests synchronization of all replicated systems — especially AI Decision Layer, Global Combat System, Awareness System, 
and Event Bridge under multiplayer conditions.

	1. Introduction

	The "Network Test Suite (NTS)" acts as the diagnostic backbone of the multiplayer architecture.
	Its purpose is to ensure deterministic and synchronized gameplay across multiple clients and servers.
	It tests:

* Replication latency
* State accuracy
* Event dispatch consistency
* Combat synchronization
* AI awareness propagation

	The system runs both in developer sandbox mode (for real-time debugging) and in live testing environments (for validation under stress).

---

	2. Core Objectives

1. Replication Integrity :
	Ensure that combat states, AI decisions, awareness data, and quest triggers are identical across all clients.

2. Latency Simulation :
	Emulate various network delays, packet losses, and out-of-order delivery to test NRL resilience.

3. Desync Detection :
	Identify and log inconsistencies between server and client states (e.g., monster HP, AI mode, or combat position).

4. Event Propagation Tests :
	Validate that Event Bridge messages (e.g., *onMonsterDetectedPlayer*, *onQuestTrigger*) reach all relevant systems.

5. Performance Monitoring :
	Measure replication cost, CPU load, and bandwidth usage per system type.

---

	3. Core Modules

	A. Test Runner

* Automates replication and synchronization tests.
* Supports multiple categories:
	* Combat Sync
	* AI Decision Consistency
	* Awareness Propagation
	* Quest/Event Transmission
* Generates detailed reports.

	B. Network Simulation Layer

* Artificially introduces:
	* Latency (0–500ms)
	* Packet loss (0–15%)
	* Bandwidth throttling
	* Burst congestion
* Used to ensure stability under unstable network conditions.

	C. State Validator

* Compares entity states between server and client memory snapshots.
* Checks:
	* Position & Rotation
	* Combat State
	* Health/Mana/Stamina
	* Awareness Flags
	* Aggro Table
* Logs any discrepancies with timestamps and system source (AI, Combat, Event).

	D. Debug Overlay (In-Game UI)

* Displays network test results in real-time:
	* Current ping
	* Sync errors
	* Event latency
* Developer-only, toggleable via console.

---

	4. Test Categories

| Category                | Purpose                                             | Systems Involved               |
| ----------------------- | --------------------------------------------------- | ------------------------------ |
| **Combat Replication**  | Tests synchronized damage, healing, and effects.    | Global Combat System           |
| **AI Behavior Sync**    | Ensures consistent monster behavior across clients. | AI Decision Layer              |
| **Awareness / Event**   | Validates detection triggers and event propagation. | Awareness System, Event Bridge |
| **Quest / Script Sync** | Ensures quest and script events fire uniformly.     | Quest & Event Manager          |
| **Stress Simulation**   | Validates stability under heavy player load.        | All Systems                    |

---

	5. Data Logging & Analytics

* Generates test logs in `/Logs/NetworkTests/`
* Metrics captured:
	* Average latency per system
	* Desync events
	* Missed packets per session
	* Client/server delta timings
* Exportable to CSV or JSON for debugging tools.

---

	6. Implementation Notes

* Should be non-invasive — does not alter live logic of other systems.
* Hooks into:
	* `Network Replication Layer`
	* `Event Bridge`
	* `AI Decision Layer`
* Can be executed manually via developer console (`/nettest run all`).
* Results can be visualized via the in-game debug overlay or external developer tools.

---

	7. System Integration Plan

	The "Network Test Suite (NTS)" is tightly coupled with core runtime systems but remains *non-invasive*.
	It works by observing, replicating, and verifying data streams between systems, without modifying them directly.

---

	A. Integration with Network Replication Layer (NRL)

	Purpose : Validate that NRL correctly syncs entity and system states between the server and all clients.

	Integration Hooks :

* `NRL:onEntityReplicated(entityID, stateSnapshot)`
* `NRL:onReplicationError(entityID, field, serverValue, clientValue)`
* `NRL:OnPacketLoss(rate)` — simulation feed
* `NRL:LatencySim(profile)` — applies latency presets (Low / Medium / High / Extreme)

	Outcome : Real-time comparison of replicated data ensures that monsters, players, and environmental states remain consistent in all connected clients.

---

	B. Integration with Event Bridge

	Purpose : Guarantee that cross-system events (e.g., Awareness → Quest → Combat) are delivered and processed correctly in both server and client contexts.

	Integration Hooks :

* `EventBridge:onEventDispatched(eventType, payload)`
* `EventBridge:onEventReceived(clientID, eventType)`
* `EventBridge:getDispatchTime(eventID)`

	Testing Focus :

* Timing discrepancies
* Missed or duplicated events
* Conditional or delayed events not firing properly

	Outcome : Ensures the “event mesh” of the world remains synchronized and predictable even under latency or packet loss.

---

	C. Integration with AI Decision Layer (AIDL)

	Purpose : Measure AI consistency — verifying that NPCs/monsters make identical behavioral decisions on all clients, under identical environmental stimuli.

	Integration Hooks :

* `AIDL:onBehaviorChanged(entityID, newState)`
* `AIDL:onThreatTableUpdated(entityID, threatSnapshot)`
* `AIDL:onGoalReprioritized(entityID, newGoalSet)`

	Validation Focus :

* AI state transitions
* Awareness reactions
* Combat engagement timings

	Outcome : Confirms deterministic AI behavior across clients, ensuring no “ghost” AI desyncs (e.g., one player sees a monster flee, another sees it attack).

---

	D. Integration with Global Combat System (GCS)

	Purpose : Ensure combat resolution is server-authoritative yet reflected correctly client-side.

	Integration Hooks :

* `GCS:onDamageCalculated(attackerID, targetID, damage)`
* `GCS:onCombatStateChanged(entityID, newState)`
* `GCS:onCriticalOrBlockTriggered(eventData)`

	Validation Focus :

* Sync of health, mana, stamina across clients
* Timing and animation desync detection
* Buff/debuff application consistency

	Outcome : Guarantees fairness in combat — no desynchronized HP bars, ghost kills, or delayed effects.

---

	E. Integration with Global Noise System & Awareness System

	Purpose : Verify spatial awareness and sensory triggers (sight, sound, magic) propagate properly across connected clients.

	Hooks :

* `NoiseSystem:onNoiseDetected(listenerID, emitterID, intensity)`
* `AwarenessSystem:onTargetSpotted(observerID, targetID, awarenessLevel)`

	Outcome : Ensures perception-based systems behave identically in multiplayer — no client-side invisibility or mismatched detection alerts.

---

	8. Systemic Dependencies

| System                        | Relationship           | Description                      |
| ----------------------------- | ---------------------- | -------------------------------- |
| **Network Replication Layer** | Core dependency        | Provides replicated data streams |
| **Event Bridge**              | Cross-system link      | Facilitates test event triggers  |
| **AI Decision Layer**         | Behavior verification  | Tests logic consistency          |
| **Global Combat System**      | Combat data validation | Ensures combat state sync        |
| **Awareness System**          | Perception test layer  | Evaluates detection consistency  |
| **Global Noise System**       | Input simulation       | Feeds ambient noise patterns     |

	All dependencies are optional runtime bindings — if a system is disabled, the NTS will gracefully skip that test group.

---

	9. Extensibility & Debugging Tools

	Custom Test Scripts

	Developers can create custom test sequences using Lua-like syntax:

```lua
TestSuite:Create("CombatSyncStress", function()
  NTS:SpawnEntities(10, "Orc_Warrior")
  NTS:SimulateCombat(30, { latency = 250, loss = 0.05 })
  NTS:AssertSync("Health", tolerance = 0.01)
  NTS:Log("Combat synchronization verified.")
end)
```

	Remote Console Commands

| Command                   | Description                           |
| ------------------------- | ------------------------------------- |
| `/nettest run all`        | Runs all test categories              |
| `/nettest latency <ms>`   | Sets global latency simulation        |
| `/nettest stress <count>` | Spawns test entities to simulate load |
| `/nettest report`         | Exports session data to file          |

	Debug Visualization

* Real-time UI panel displaying:
	* Entity desync percentage
	* Network throughput
	* Event propagation delay
* Color-coded indicators for failed tests.

---

	10. Future Extensions

1. Automated QA Integration — connects with continuous integration servers for automated nightly replication validation.
2. Visual Playback Tool — replays recorded desyncs for easier debugging.
3. Machine Learning Anomaly Detection — identifies unusual network behaviors in live playtesting.
4. Player Bug Report Sync — automatically triggers tests when players submit “lag” or “desync” reports.

---