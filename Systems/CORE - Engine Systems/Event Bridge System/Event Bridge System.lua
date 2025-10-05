			Event Bridge System

	Path : `GAME/Systems/Event_Bridge.lua`
	Type : Middleware / System Connector
	Purpose : The Event Bridge serves as the communication backbone between all active gameplay systems. It allows asynchronous, modular interaction without 
hardcoding direct references between systems (e.g., Awareness System notifying the Quest Manager or the Combat System triggering an AI alert).

---

	1. Definition

	The "Event Bridge" is a centralized event routing framework that manages cross-system communication within the game world.
	Its main purpose is to allow loose coupling between systems — ensuring each module (AI, Awareness, Combat, Quests, Environment, etc.) can trigger and respond to
world events without directly depending on other systems’ code.

	This ensures scalability, maintainability, and performance efficiency across the game’s evolving ecosystem.

	Core Concepts

* Event Dispatching : Systems broadcast events (e.g., “MonsterDetectedPlayer”, “WeatherChanged”, “QuestObjectiveComplete”) through the bridge.
* Event Listening : Other systems subscribe to event types they care about (e.g., Quest System listens to monster kills).
* Event Routing : Bridge ensures correct data propagation, applying filters, priorities, or delays.
* Conditional Reactions : Event responses can be gated by state (e.g., faction standing, time of day, or AI state).
* Temporal Queues : Some events are buffered and executed after a delay or when conditions are met (useful for chain events or cutscenes).

---

	2. Core Attributes

| Attribute             | Description                                                                                       |
| --------------------- | ------------------------------------------------------------------------------------------------- |
| **EventRegistry**     | Table of all registered events with listener callbacks.                                           |
| **EventQueue**        | Temporary queue for deferred or conditional event executions.                                     |
| **PriorityLayer**     | Controls event order (e.g., combat > quest > ambient).                                            |
| **ConditionFilters**  | Optional functions that validate if an event can trigger (e.g., environment state or time check). |
| **EventContext**      | Holds metadata like source, target, timestamp, and trigger type.                                  |
| **ListenerHandles**   | IDs assigned to each listener for management (add/remove).                                        |
| **NetworkBridgeHook** | Interface to replicate events between server and clients.                                         |
| **DebugOverlay**      | Optional UI overlay for real-time event visualization and tracing.                                |

---

	3. Core Functions / Modules

	3.1 Event Registration

	Registers an event listener or callback within the bridge.

```lua
EventBridge:RegisterListener(eventType, listenerId, callbackFn, priority)
```

* `eventType` — e.g., `"onMonsterKilled"`, `"onQuestUpdated"`, `"onSoundDetected"`.
* `listenerId` — Unique system identifier (e.g., `"QuestManager"`, `"AI_DecisionLayer"`).
* `priority` — Determines order of callback execution.
* `callbackFn` — The function executed when the event is triggered.

---

	3.2 Event Dispatching

	Broadcasts a system event to all listeners.

```lua
EventBridge:Dispatch(eventType, payload, context)
```

* `payload` — Data carried by the event (entities, positions, damage values).
* `context` — Metadata (source system, world region, conditions, timestamp).

	Supports instant, queued, and conditional dispatch modes.

---

	3.3 Conditional & Delayed Events

	Some events depend on timing or world states.

```lua
EventBridge:QueueEvent(eventType, payload, delay, conditionFn)
```

* Executes after a delay (in seconds).
* If `conditionFn` returns `true`, the event fires; otherwise, it is held or discarded.

Example:
When an NPC is killed → delay 10s → spawn rare mob only if weather is stormy.

---

	3.4 Event Filtering

	Allows high-level filtering before events reach listeners.

```lua
EventBridge:SetFilter(eventType, filterFn)
```

* Useful for performance (e.g., ignore “Awareness” updates beyond X range).
* Can also modify payloads (e.g., normalize damage before reaching a quest).

---

	3.5 Event Propagation Rules

	Each event can define its propagation scope:

* **Local : Only for current instance or zone.
* **Global : Across all zones/worlds.
* **Networked : Replicated to clients in multiplayer sessions.
* **Silent : Internal systems only (no player-facing response).

---

	3.6 Debugging and Logging

	Includes a toggleable debugging system:

```lua
EventBridge:Debug(eventType, mode)
```

	Visualizes events as they are dispatched — e.g.:

* Awareness event triggers combat alert.
* Combat event triggers quest update.
* Quest completion triggers weather transition (for story events).

	Logs event chains to trace dependencies or bugs.

---

	4. Example Use Cases

| System                 | Event Sent                 | System Reacting                     | Result                                      |
| ---------------------- | -------------------------- | ----------------------------------- | ------------------------------------------- |
| **Awareness System**   | `onMonsterDetectedPlayer`  | **AI Decision Layer**               | Monster switches to combat behavior.        |
| **Combat System**      | `onPlayerDealtCriticalHit` | **Quest Manager**                   | Updates quest “Deal 10 Critical Hits.”      |
| **Environment System** | `onWeatherChanged`         | **Monster Behavior / Sound System** | Monsters become passive during rain.        |
| **Quest System**       | `onQuestComplete`          | **Global Event System**             | Unlocks new world event (e.g., spawn boss). |
| **AI Decision Layer**  | `onThreatTableUpdated`     | **Network Replication**             | Synchronizes AI state to players.           |

---

	5. Implementation Notes (DB / AI / Performance)

* Data-Driven Events : Store event definitions in a table or JSON with event type, scope, and listeners.
* Thread Safety : Use lightweight coroutines for queued/delayed events.
* Memory Efficiency : Clean up old listeners and expired queued events regularly.
* Profiling : Include event dispatch timing metrics to detect bottlenecks.
* AI Integration : The AI Decision Layer uses EventBridge signals to switch states dynamically (e.g., “flee”, “search”, “call allies”).
* Networking : Only propagate relevant events to clients within range or visibility.
* Persistence : Long-term world events (like world boss spawns) should be logged in DB for state recovery after server restart.

---

	6. Optional Developer Tools

* `/event_debug` — Shows live event traffic.
* `/event_trace <eventType>` — Logs event propagation path.
* `/event_flush` — Clears delayed queue.
* `/event_inject <eventType> <payload>` — Manually trigger events for testing.
* In-Editor “Event Graph” visualizer that shows system interconnections and real-time firing.

---

Perfect — that’s a very clear and well-reasoned direction.
We’ll **keep the definition of “Event”** as *systemic triggers and cross-system reactions* (signals that connect Awareness, AI, Combat, Quests, etc.), and **not** as seasonal or holiday events like *Easter*, *Halloween*, etc. Those will belong later under a separate structure such as `/GAME/Events/World_Events/`.

We’ll also **ignore global weather mechanics** — they’ll stay **localized, environmental flavor effects**, not a world-level system that modifies AI or combat.

Given your clarifications, here’s the **continuation of the Event Bridge System**, adding and expanding the **Extension Layer (Section 6)** into detailed subsections, aligned with your design philosophy and game structure.

---

	7. Extended Functional Layers

	7.1 Hierarchical Event Domains

	To maintain clarity and prevent conflicts, all event communication is divided into logical domains.
	Each domain operates independently but can pass information through a central dispatcher.

| Layer                | Purpose                                                                                            | Example Events                                                     |
| -------------------- | -------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------ |
| **Core Domain**      | Handles internal logic: combat, AI, awareness, damage, death.                                      | `onCombatStart`, `onThreatDetected`, `onMonsterKilled`             |
| **World Domain**     | Controls ambient world logic, local area changes, biome effects, or local weather (if applicable). | `onAreaLoaded`, `onLocalWeatherShift`, `onDungeonReset`            |
| **Narrative Domain** | Triggers dialogue, cinematic, and quest progress updates.                                          | `onQuestObjectiveComplete`, `onDialogueTrigger`, `onCutsceneStart` |
| **Network Domain**   | Used by multiplayer or co-op environments for client synchronization.                              | `onClientJoin`, `onClientDesync`, `onStateReplicate`               |

	Each domain can subscribe only to relevant events, preventing unnecessary system load.

---

	7.2 Persistent Event States

	Some events, especially major world changes or rare spawns, must persist after reloads or server restarts.
	The Event Bridge supports state serialization with timestamps and expiration.

```lua
EventBridge:Persist(eventType, payload, duration, saveToDB)
```

* Duration defines how long the event remains active.
* saveToDB (boolean) stores the event state inside the world database.
* Used for major conditions: e.g., “Boss Defeated”, “Mystic Stone Destroyed”, “Territory Captured”.

	This ensures continuity between sessions and supports long-term world consequences.

---

	7.3 Event Chaining & Conditional Sequences

	Events can be chained or conditioned to trigger other events dynamically.
	This enables world systems to react organically and creates narrative progression without hard-coding.

Example chain:

```lua
EventBridge:Chain("onMonsterKilled", "onRareSpawnTrigger", conditionFn)
```

	Possible chain examples:

* Killing a rare monster (`onMonsterKilled`) → triggers Treasure Guardian Spawn.
* Capturing a fort → triggers Faction Alert Broadcast.
* Player entering hidden cave → triggers Cinematic or Dungeon Activation.

	Creates an adaptive ecosystem where player actions evolve the world state.

---

	7.4 Scoped & Factional Routing

	Events can target specific scopes, not always broadcast globally.
	This optimizes performance and creates believable inter-AI reactions.

```lua
EventBridge:Dispatch(eventType, payload, { scope = "Faction:Dendera" })
```

	Scopes may include:

* Faction-based routing : Only monsters or AI aligned with a certain faction (e.g., Dendera, Zonen, Alabam) react.
* Area-based routing : Localized dispatch (e.g., only within “Haunted Marsh” region).
* Entity-based routing : Sent to specific NPC groups or AI clusters.

	Prevents irrelevant systems from reacting to distant or unrelated signals.

---

	7.5 Event Priority & Throttling

	To maintain performance, the Event Bridge integrates priority queues and throttling rules.

	Each event is weighted by importance:

* High : Combat & AI events (damage, aggro, death)
* Medium : Quest or narrative triggers
* Low : Ambient or visual events (sound, environment)

	When server load spikes, lower-priority events are deferred or dropped.
	This ensures combat and gameplay remain responsive during high-activity moments like sieges or massive raids.

---

	7.6 Visualization & Debugging Tools

	For developers or GMs, the Event Bridge can expose a debug visualization layer, listing all live events.

* Live view of active and queued events.
* Filters by domain, type, or priority.
* Logs for chained or failed events.

	Optional in-engine overlay or console commands:

```
/eventbridge debug
/eventbridge list domain=Core
```

	Simplifies debugging complex AI-Quest-Combat interactions.

---

	7.7 Emotional & Behavioral Hooks (Optional AI Layer)

	Although monsters don’t have complex emotions yet, the Event Bridge can route signals that simulate behavioral triggers :

* `onAllyKilled` → trigger “panic” or “rage” state in nearby monsters.
* `onBossKilled` → trigger morale loss among remaining AI.
* `onGroupVictory` → trigger “taunt” emote or buff.

	Connects systemic events to emotional AI responses for deeper immersion.

---

	7.8 Asynchronous Dispatch

	Events can optionally be handled asynchronously (non-blocking), allowing heavy or cosmetic events to process in parallel.

	For example:

* Audio, visuals, or ambient triggers can run outside the main loop.
* Combat or AI events remain synchronous to prevent logic delays.

---

	7.9 Cross-System Integration Summary

| Connected System              | Function            | Example Integration                                 |
| ----------------------------- | ------------------- | --------------------------------------------------- |
| **AI Decision Layer**         | Consumer            | Receives `onThreatDetected`, `onFleeTriggered`.     |
| **Global Combat System**      | Producer / Consumer | Sends `onHit`, `onCritical`, listens for `onDeath`. |
| **Awareness System**          | Producer            | Dispatches `onPlayerSeen`, `onNoiseHeard`.          |
| **Quest & Narrative Manager** | Consumer            | Listens for `onBossDefeated`, `onItemCollected`.    |
| **Global Environment System** | Producer            | Local events only — “onFogRise”, “onCaveCollapse”.  |
| **Network Layer**             | Router              | Syncs all relevant events across clients.           |

---