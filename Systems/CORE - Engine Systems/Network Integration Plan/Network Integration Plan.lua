			Network Integration Plan

	Type : Technical inter-system architecture
	Purpose : Establishes how core gameplay systems communicate via the Network Replication Layer (NRL) for real-time multiplayer synchronization.

	Path : `GAME/Systems/Network_Integration_Plan.lua` 

---

	1. Overview

	Defines the global message and event routing architecture.
	The NRL acts as the *central message bus* — every major system publishes or subscribes to network events.

	Core philosophy :

* Systems do *not* directly call each other across the network.
* Instead, they emit events, state changes, or commands to the NRL, which then handles routing and replication.
* Clients only receive filtered, relevant, and validated data.

---

	2. System Connectivity Map

| System                          | Direction                         | Data Type                                              | Routed via NRL | Replication Scope                   | Example Message                 |
| ------------------------------- | --------------------------------- | ------------------------------------------------------ | -------------- | ----------------------------------- | ------------------------------- |
| **Global Combat System (GCS)**  | Server → Client                   | Combat Events, Damage, Buffs                           | ✅              | Local zone (players in combat area) | `CombatEvent:DamageApply`       |
| **AI Decision Layer (AIDL)**    | Server → Client                   | AI State, Aggro Target, Threat Levels                  | ✅              | Interest-based                      | `AIStateUpdate:Alert`           |
| **Monster Awareness System**    | Server → Client                   | Detection triggers, awareness level                    | ✅              | Nearby players                      | `AwarenessEvent:PlayerDetected` |
| **Event Bridge**                | Bidirectional                     | Quest/World Triggers, Environmental Events             | ✅              | Dynamic (zone/global)               | `WorldEventNotify:RareSpawn`    |
| **Global Noise System**         | Server → Server / Client → Server | Noise intensity and position                           | ✅              | Local area                          | `NoiseEvent:Source`             |
| **Global Environment System**   | Server → Client                   | Environmental status (time, weather flags, visibility) | ✅              | Per region                          | `EnvState:Nightfall`            |
| **Stealth & Camouflage System** | Server → Client                   | Visibility status, detection chance                    | ✅              | Per entity                          | `StealthState:Detected`         |
| **Quest Manager**               | Server → Client                   | Quest objectives & progress updates                    | ✅              | Per player / party                  | `QuestUpdate:Objectives`        |
| **UI / Client Systems**         | Client → Server                   | Player actions, skill use, movement                    | ✅              | Per player                          | `ActionRequest:Attack`          |

---

	3. Integration Channels

	Each system uses one or more standardized network channels :

| Channel              | Reliability   | Purpose                    | Example                     |
| -------------------- | ------------- | -------------------------- | --------------------------- |
| **Combat Channel**   | Reliable      | Critical combat data       | Hit confirmations, buffs    |
| **AI Channel**       | Semi-reliable | Awareness, targeting       | AI alert, state transitions |
| **Event Channel**    | Reliable      | Quest/world events         | World boss spawn            |
| **Movement Channel** | Unreliable    | Player/NPC transforms      | Position, rotation          |
| **Control Channel**  | Reliable      | Player input, ability cast | Spell cast start            |
| **Sync Channel**     | Reliable      | Snapshot & reconciliation  | Health, resource resync     |

---

	4. Message Ownership

	Clearly define who owns what data and is allowed to modify it:

| Data Type             | Owner                                   | Notes                               |
| --------------------- | --------------------------------------- | ----------------------------------- |
| Player position       | Client (predicted), validated by Server | Reconciled for cheating protection  |
| NPC/Monster position  | Server                                  | Authoritative, client visual only   |
| Combat state          | Server                                  | Server authoritative                |
| AI state              | Server                                  | AI simulated server-side            |
| Quest state           | Server                                  | Persistent, synced per player       |
| Noise & Awareness     | Server                                  | Processed via AIDL                  |
| Environmental effects | Server                                  | Replicated to all clients in region |

---

	5. Example Data Flows

	Combat Flow

```
Client (Player)
 ↓ (ActionRequest:Attack)
Server (GCS)
 → computes hit/miss
 → applies damage, updates AI threat
 ↓
NRL broadcasts (CombatEvent:Damage)
 ↓
All nearby clients update monster HP, FX
```

---

	Awareness & AI Flow

```
Monster Awareness detects player → triggers AIDL decision update
 ↓
AI state changes from Idle → Alert → Combat
 ↓
AIDL sends AIStateUpdate to NRL
 ↓
NRL filters by proximity and broadcasts to clients
 ↓
Clients animate monster alert behavior
```

---

	Event Bridge Flow

```
World Event (rare spawn) triggers server-side
 ↓
Event Bridge publishes EventNotification
 ↓
NRL routes to all clients in affected region
 ↓
Clients show cinematic, quest, or UI notification
```

---

	6. Error Handling & Recovery

* Desync detection : Clients compare local snapshot vs server authoritative state; if deviation > threshold → resync.
* Packet loss recovery : NRL automatically resends missed reliable packets.
* Graceful degradation : If combat or AI data drops, client uses prediction fallback until correction.
* Logging hooks : Every cross-system event is logged with timestamps and message IDs for debugging.

---

	7. Integration Hooks (for developers)

	Provide a standard API for systems to interact with the NRL:

```lua
-- Register system hooks
NRL:RegisterSystem("GlobalCombatSystem", {
    OnCombatEvent = function(data) CombatSystem:HandleCombatEvent(data) end,
    OnDamageSync  = function(data) CombatSystem:SyncHealth(data) end
})

-- Send event from AI system
NRL:Emit("AIStateUpdate", {
    entity_id = 1024,
    state = "ALERT",
    target = player_id,
    timestamp = os.clock()
})

-- Subscribe to event
NRL:Subscribe("WorldEventNotify", function(event)
    EventBridge:HandleWorldEvent(event)
end)
```

---

	8. Testing & Simulation

	For developers:

* Local simulation mode : Mock NRL events for single-player testing.
* Latency injection tools : Simulate network lag and packet loss.
* Visualization tools : Real-time NRL message traffic monitor per system.

---

	9. Security & Validation Layer

	Every message type goes through validation:

* Whitelist approach : Only recognized systems and registered message schemas allowed.
* Rate limiting : Systems can’t flood the network with redundant data.
* Signature validation : Combat or quest results signed by server.

---

	10. Scaling Strategy

* Zoned architecture : Each world region handled by a different NRL instance.
* Gateway routing : Inter-zone communication via central relay (Event Bridge integrated).
* Async job queues : Background updates for slow-changing systems (quests, environment).

---

	11. Summary Table of Integration Points

| System               | Integration Layer  | Network Events          | Replication Type |
| -------------------- | ------------------ | ----------------------- | ---------------- |
| Global Combat System | NRL Combat Channel | CombatEvent, DamageSync | Reliable         |
| AI Decision Layer    | NRL AI Channel     | AIStateUpdate           | Semi-reliable    |
| Monster Awareness    | NRL AI Channel     | AwarenessEvent          | Semi-reliable    |
| Event Bridge         | NRL Event Channel  | WorldEventNotify        | Reliable         |
| Global Environment   | NRL Sync Channel   | EnvStateUpdate          | Reliable         |
| Stealth & Camouflage | NRL AI Channel     | StealthState            | Reliable         |
| Quest Manager        | NRL Event Channel  | QuestUpdate             | Reliable         |

---

	This "Integration Plan" will act as your networking backbone map — ensuring all current and future systems interact through consistent channels and schemas.
	No system needs to directly depend on another; they all communicate through standardized, secure network messaging.

---