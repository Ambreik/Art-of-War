			NPC in World Game

		Overview

	The NPC Core File defines the base structure, attributes, behaviors, and system integrations for all Non-Player Characters (NPCs) in the world game. This file 
acts as the central blueprint for creating, managing, and extending NPCs of all types, providing a modular and scalable framework for the game’s ecosystem.

	NPCs in the world game are not limited to simple interactions. They can trade, train, craft, fight, guard, provide quests, or offer services, depending on their
role and capabilities. NPCs are fully integrated with the game’s core engine systems, enabling realistic behaviors, dynamic reactions to the environment, and 
multiplayer synchronization.

---

	Purpose

	The core NPC file serves the following purposes:

1. Standardization : Provides a unified structure for all NPCs, ensuring consistent behavior and attributes across different NPC types.
2. Extensibility : Supports the addition of new NPC types, behaviors, and system integrations without modifying the core logic.
3. Integration : Acts as the central hub for connecting NPCs with the game’s core systems, including:
	* AI Decision Layer
	* Global Combat System
	* Player Interaction & Quest Manager
	* Reputation & Profession Systems
	* Environment, Weather, and Awareness Systems
	* Event Bridge and Multiplayer Network Synchronization
4. Documentation : Serves as a reference for developers and designers, describing all attributes, capabilities, and interactions an NPC can have.

---

	Key Features

* Modular NPC Types / Capabilities : Each NPC can possess one or more capabilities such as Vendor, Trainer, Quest-Giver, Crafting NPC, Skillable, or Guard.
* System Hooks : Every NPC is prepared to interact with core game systems like combat, AI, reputation, quests, environment, and events.
* Behavior Flexibility : NPCs can respond to environmental changes, day-night cycles, player actions, and world events.
* Multiplayer Ready : Fully compatible with network replication layers to synchronize NPC state across all clients.
* Extensible Base Class : Provides a foundation for creating specialized NPCs with custom methods, attributes, and AI behavior.

---

	Intended Use

	The NPC Core File is intended to be used as:

* A base blueprint for all NPCs in the game world.
* A reference document for defining NPC behavior, attributes, and interactions.
* A template for creating specialized NPC files (e.g., Tavern Keeper, Trainer, Guard, Biologist, Traveling Ghost Ship).

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

		Section II — Base Attributes

	Overview

	This section defines all fundamental properties that every NPC in the world shares.
	These attributes form the core data structure of the NPC system, ensuring consistency across all NPC types — whether a vendor, trainer, guard, or unique 
character.

	Each NPC instance inherits these base attributes and can extend or override them to define specialized functionality.

---

	1. Identity Attributes

| Attribute         | Type      | Description                                                                                                                      |
| ----------------- | --------- | -------------------------------------------------------------------------------------------------------------------------------- |
| **Name**          | `string`  | The NPC’s display name as shown to players and used internally for reference.                                                    |
| **ID**            | `integer` | Unique identifier assigned to each NPC for database and replication purposes.                                                    |
| **Type**          | `string`  | General classification (e.g., “Human”, “Undead”, “Construct”, “Beast”, “Spirit”). Defines how the NPC is perceived in the world. |
| **Subtype**       | `string`  | Optional refinement of Type, such as “Merchant”, “Trainer”, “Guard”, or “Tavern Keeper”.                                         |
| **Title**         | `string`  | Optional secondary name displayed under or beside the main NPC name (e.g., “Master Blacksmith”, “Innkeeper of Lendaria”).        |
| **Gender**        | `string`  | Defines appearance and dialogue variants where relevant (`Male`, `Female`, `Unknown`, `None`).                                   |
| **Race / Origin** | `string`  | Species or cultural background of the NPC, relevant for lore or faction relationships.                                           |

---

	2. Faction & Alignment Attributes

| Attribute            | Type     | Description                                                                                               |
| -------------------- | -------- | --------------------------------------------------------------------------------------------------------- |
| **Faction**          | `string` | Defines which faction or organization the NPC belongs to. Influences hostility, reputation, and dialogue. |
| **Alignment**        | `string` | Determines moral disposition and behavior tendency (e.g., `Lawful Good`, `Neutral`, `Chaotic Evil`).      |
| **Hostility Level**  | `enum`   | Defines whether the NPC is Friendly, Neutral, or Hostile toward the player or other factions.             |
| **Reputation Group** | `string` | Optional link to the Reputation System for tracking player standing with this NPC or its faction.         |

---

	3. Physical & World Attributes

| Attribute                  | Type               | Description                                                                                                                          |
| -------------------------- | ------------------ | ------------------------------------------------------------------------------------------------------------------------------------ |
| **Level**                  | `integer`          | Defines the NPC’s general power level, used for scaling combat or dialogue options.                                                  |
| **Health / Mana / Energy** | `integer`          | Base stats used in combat or skill interactions (if applicable).                                                                     |
| **Model / Appearance ID**  | `integer / string` | Reference to the visual model or template used to render the NPC.                                                                    |
| **Position (x, y, z)**     | `vector3`          | World coordinates of the NPC.                                                                                                        |
| **Rotation**               | `float`            | Facing direction of the NPC in world space.                                                                                          |
| **Zone / Region / Map**    | `string`           | Defines the NPC’s current world location or area of operation.                                                                       |
| **Spawn Behavior**         | `table`            | Information about how and when the NPC spawns (static, dynamic, timed, or event-driven).                                             |
| **Schedule**               | `table`            | Optional day-night behavior patterns (e.g., “Active during day”, “Patrols at night”). Integrated with the Night-Day Behavior System. |

---

	4. Behavioral Attributes

| Attribute             | Type      | Description                                                                                                                                           |
| --------------------- | --------- | ----------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Capabilities**      | `table`   | List of capability types this NPC possesses (e.g., `Vendor`, `Trainer`, `Craft`, `Guard`, `QuestGiver`, `Skillable`). Defines available interactions. |
| **AI Profile**        | `string`  | Reference to an AI Decision Layer profile defining default decision-making patterns.                                                                  |
| **Aggression Radius** | `float`   | Distance at which the NPC reacts to hostiles or disturbances.                                                                                         |
| **Awareness Range**   | `float`   | Detection range used by the Global Awareness or Noise Systems.                                                                                        |
| **Reaction Speed**    | `float`   | Delay before the NPC reacts to stimuli (noise, combat, player interaction).                                                                           |
| **Combat Enabled**    | `boolean` | Determines if the NPC can enter combat states. Used with Global Combat System.                                                                        |
| **Skill Set**         | `table`   | List of skills or abilities available to this NPC (used if Skillable or Guard).                                                                       |
| **Dialogue Set**      | `table`   | References to dialogue entries or conditions managed by the Interaction System.                                                                       |

---

	5. Interaction & Integration Attributes

| Attribute                 | Type      | Description                                                                                                       |
| ------------------------- | --------- | ----------------------------------------------------------------------------------------------------------------- |
| **Interaction Range**     | `float`   | Maximum distance a player must be within to interact with this NPC.                                               |
| **Interactable**          | `boolean` | Whether the NPC currently allows player interaction.                                                              |
| **Quest Links**           | `table`   | References to quest IDs or events tied to this NPC. Integrated with the Quest & Event Manager.                    |
| **Vendor Inventory**      | `table`   | Item list for vendor-type NPCs. Tied to Vendor / Store Manager systems.                                           |
| **Profession Link**       | `string`  | If a Trainer or Profession Teacher, identifies which profession or skill line they teach.                         |
| **Event Hooks**           | `table`   | References to events or triggers connected via the Event Bridge System.                                           |
| **Network Sync ID**       | `integer` | Used by the Network Replication Layer to synchronize this NPC’s state across all clients.                         |
| **Environment Reactions** | `table`   | Determines how NPC reacts to weather, noise, or environmental changes. Integrates with Global Environment System. |

---

	6. State & Runtime Attributes

| Attribute                 | Type      | Description                                                                             |
| ------------------------- | --------- | --------------------------------------------------------------------------------------- |
| **Current State**         | `string`  | The NPC’s current behavioral state (Idle, Patrol, Engage, Trade, Dialogue, Dead, etc.). |
| **Last Interaction Time** | `float`   | Timestamp of last player interaction, used for cooldowns or AI resets.                  |
| **IsAlive**               | `boolean` | Determines if NPC is alive or defeated.                                                 |
| **Respawn Time**          | `float`   | Time until NPC respawns after death (if applicable).                                    |
| **Active Events**         | `table`   | List of ongoing events or activities involving the NPC.                                 |
| **Combat Target**         | `entity`  | Current target in combat mode.                                                          |
| **Linked Entities**       | `table`   | Other entities linked to this NPC (guards, pets, event objects).                        |

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

		NPC Capabilities / Types

	Every NPC in the world can possess one or more capabilities, defining its function and behavior.
	Capabilities determine what actions the NPC can perform — such as selling goods, giving quests, crafting, training, or defending an area.

	Each NPC’s capabilities are selected individually from a predefined list stored in the NPC Type Database.
	This allows world designers to configure each NPC quickly without changing the core code.

---

	Overview

	Each capability represents a specific functional category.
	NPCs can have one or more of these types enabled simultaneously.

| Capability     | Function Summary                                    |
| -------------- | --------------------------------------------------- |
| **Vendor**     | Sells or buys items through a store window.         |
| **QuestGiver** | Provides quests or tasks to players.                |
| **Craft**      | Crafts or refines materials into new items.         |
| **Trainer**    | Teaches abilities, skills, or professions.          |
| **Skillable**  | Can use combat skills or respond to aggression.     |
| **Guard**      | Protects areas, engages enemies, and alerts others. |

---

	Capability Assignment

	NPC capabilities are stored in the "NPC Database", typically as a list or array.
	This allows one NPC to have multiple types enabled without hardcoding behavior.

Example:

```lua
NPC.Capabilities = { "Vendor", "Craft", "Trainer" }
```

	This configuration defines an NPC who can sell items, craft gear, and train players — all determined dynamically from the database.

---

	Dynamic Combination

	Since capabilities are modular, you can create complex NPCs by simply assigning multiple types.
Examples:

| NPC Example            | Capabilities                          |
| ---------------------- | ------------------------------------- |
| **Town Guard Captain** | `{"Guard", "QuestGiver"}`             |
| **Master Blacksmith**  | `{"Vendor", "Craft", "Trainer"}`      |
| **Arena Manager**      | `{"QuestGiver", "Vendor", "Trainer"}` |
| **Tavern Keeper**      | `{"Vendor", "QuestGiver"}`            |
| **Biologist**          | `{"QuestGiver", "Craft"}`             |

---

	Database Integration Concept

	In the "NPC Database", capabilities will likely be stored as either:

* A table of strings,
* Or as flags (true/false) under each capability key, depending on how the world’s data schema is built.

For example:

| NPC_ID | Name              | Capabilities                       |
| ------ | ----------------- | ---------------------------------- |
| 1001   | Master Blacksmith | `{ "Vendor", "Craft", "Trainer" }` |
| 1002   | Town Guard        | `{ "Guard" }`                      |
| 1003   | Tavern Keeper     | `{ "Vendor", "QuestGiver" }`       |

	This structure allows for dynamic retrieval — when the NPC loads into the world, its capabilities are fetched from the DB and corresponding systems are 
activated automatically.

---

	Core Rules

* NPCs can have one or more capabilities.
* Each capability activates its system hooks automatically (e.g., Vendor → Shop System, Guard → Combat System).
* New capabilities can be added to the global list without altering existing NPCs.
* The system supports custom extensions for unique NPCs (e.g., “ArenaMaster”, “ShipCaptain”, or “ReputationVendor”).

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

		NPC System Integrations

	NPCs are fully integrated into the game’s "Core Engine Systems", allowing them to react dynamically to the world, the environment, and player interactions.
	This integration layer ensures all NPC behaviors — from dialogue to combat — are synchronized, network-safe, and context-aware.

	Each system connection enhances how NPCs behave, respond, and communicate across the world.

---

	Core Engine Systems Integration

	1. AI Decision Layer

	The "AI Decision Layer" governs NPC thinking and reaction patterns.
	It controls decision-making, including awareness, target selection, and task prioritization.
	NPCs with *Skillable* or *Guard* capabilities depend heavily on this system.

	Functions :
* Evaluate environmental and player triggers.
* Determine combat, flee, or idle behavior.
* Support both static and roaming NPC logic.
* Integrate with "Monster Awareness" and "Event Bridge" for coordinated AI responses.

	Example : A Guard NPC detects nearby aggression → reports to the AI Layer → decides to attack or alert other guards.

---

	2. Global Combat System

	This system manages all combat-related actions involving NPCs — both as participants and as environment actors.
	NPCs tagged as `Skillable` or `Guard` use this system to perform attacks, handle damage, and trigger abilities.

	Functions :
* Handles NPC vs Player, NPC vs NPC, and Faction-based combat.
* Controls attack ranges, cooldowns, resistances, and threat tables.
* Integrates with "Server Combat Logs" for tracking interactions.
* Syncs with "Awareness System" for reaction range and detection behavior.

---

	3. Player Interaction System

	Defines how players interact with NPCs.
	This covers dialogue windows, trading, quest acceptance, crafting menus, and other UI-driven interactions.

	Functions :

* Registers click/talk interactions.
* Opens appropriate UI windows depending on NPC capabilities.
* Syncs with "Reputation" and "Profession Systems" for condition-based access.
* Supports interaction distance and cooldown checks.

	Example : Interacting with a Trainer opens the training interface if the player’s reputation or rank is sufficient.

---

	4. Global Environment System

	Links NPCs to the environmental simulation.
	NPCs can adjust routines or dialogue depending on time of day, region, or weather conditions.

	Functions :
* Synchronizes with "Night-Day Behavior System".
* Modifies ambient dialogue, lighting reactions, or visibility.
* Triggers environmental events (e.g., “Rain → Vendor covers goods”).
* Enables regional behavior (e.g., Desert merchants close during sandstorms).

---

	5. Night-Day Behavior System

	NPCs can exhibit different routines, appearances, or locations based on the in-game time.
	This system is especially relevant for *Tavern Keepers*, *Guards*, and *Vendors*.

	Examples :
* Vendors close shops at night.
* Guards patrol or rest in shifts.
* Tavern Keepers become more active at night, offering unique dialogue or quests.

---

	6. Reputation System Integration

	NPCs may restrict access to certain dialogues, quests, or goods based on a player’s "Reputation Rank".
	This integration is fundamental for *Trainers*, *Profession Vendors*, and *Quest-Givers*.

	Functions :
* Reads player reputation rank or faction standing.
* Unlocks or hides dialogue options and vendor items.
* Adjusts NPC dialogue tone based on player standing (friendly, neutral, hostile).

	Example : A Grand Master Trainer only interacts with players who hold "Master Rank" or higher in the associated profession.

---

	7. Profession System Integration

	Used primarily by *Trainers*, *Crafters*, and *Vendors*.
	This connection defines training progression, recipe unlocking, and crafting enhancements.

	Functions :
* Links NPCs to their respective profession data tables.
* Checks player’s rank for training eligibility.
* Unlocks unique recipes or materials through quests.

---

	8. Quest & Event Manager System

	Controls all NPC-based quest interactions and scripted events.
	All *Quest-Giver* and story-based NPCs connect to this system.

	Functions :
* Assigns quests and tracks completion.
* Triggers cutscenes, dialogue trees, or environmental changes.
* Integrates with "Event Bridge System" for multi-NPC or world events.
* Supports repeatable, limited, or dynamic world quests.

---

	9. Global Noise & Awareness System

	Defines how NPCs perceive or respond to sound, movement, or environmental noise.
	It allows stealth mechanics and NPC cooperation in reacting to nearby activity.

	Functions :
* Detects combat noise or footsteps in range.
* Alerts nearby guards or AI clusters.
* Interacts with the "Stealth & Camouflage System".

---

	10. Stealth & Camouflage System

	NPCs with awareness or guard capabilities use this system to detect hidden players or creatures.
	Stealth detection depends on player stats, light level, and environmental noise.

	Functions :
* Checks line-of-sight and distance.
* Adjusts detection thresholds dynamically.
* Can trigger “Suspicious” or “Alerted” NPC states.

---

	11. Weather & Lighting System

	Affects NPC visibility, pathfinding, and world presence.
	Guards may patrol with torches during storms, while vendors might take shelter.

	Functions :
* Modifies movement speed, vision, and interaction visibility.
* Triggers ambient NPC behavior (e.g., closing stalls during heavy rain).
* Enhances immersion through environmental synchronization.

---

	12. Network Replication Layer (NRL)

	Ensures NPC states and actions are synchronized across all players in a multiplayer environment.

	Functions :
* Replicates NPC position, state, and interactions to clients.
* Syncs animations, dialogues, and combat actions.
* Works with the "World Sync Layer System" for seamless global consistency.
* Handles distance-based optimization (NPCs far from the player update less frequently).

---

	13. Event Bridge System

	A core coordination layer that links NPC actions with other world events or systems.

	Functions :
* Allows NPCs to trigger or react to global events.
* Enables scripted behaviors (e.g., “If Boss defeated → Vendor unlocks rare item”).
* Coordinates multiple NPCs during dynamic scenarios (sieges, invasions, celebrations).

---

	14. World Sync Layer System

	Handles the seamless synchronization of all NPCs between client and server environments.

	Functions :
* Maintains position, rotation, and active states.
* Handles despawning or persistence during player transitions.
* Keeps the world consistent for all players across network sessions.

---

## 🧩 Integration Summary

| System                        | NPC Role Impacted             | Example Effect                               |
| ----------------------------- | ----------------------------- | -------------------------------------------- |
| AI Decision Layer             | Guard / Skillable             | Determines combat and awareness behavior.    |
| Global Combat System          | Skillable / Guard             | Manages attacks, health, and aggro.          |
| Player Interaction System     | All types                     | Handles player dialogues and UI windows.     |
| Reputation System             | Vendor / Trainer / QuestGiver | Locks or unlocks access based on reputation. |
| Profession System             | Trainer / Craft               | Controls training and crafting logic.        |
| Quest Manager                 | QuestGiver                    | Provides storylines and rewards.             |
| Environment & Weather Systems | All                           | Adjusts daily routines and visuals.          |
| Network & Sync Layers         | All                           | Keeps NPC state identical across clients.    |

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

		NPC AI & Behavioral Logic

	NPCs in *Art of War* operate through a state-based behavioral system, governed by AI decision layers and situational triggers.
	Each NPC continuously evaluates environmental, player, and world events to determine its current state and next action.

	This ensures lifelike, dynamic NPC behavior — whether the NPC is a shopkeeper idly sweeping their stall,a guard patrolling, or a bandit reacting to an intruder.

---

	AI Core Overview

	Every NPC is assigned an "AI Profile", defining its behavioral priorities, awareness range, and emotional traits.
	This profile determines how the NPC reacts to events and transitions between states.

	Example AI Profile Structure :

| Parameter         | Type   | Description                                                               |
| ----------------- | ------ | ------------------------------------------------------------------------- |
| `AwarenessRange`  | float  | Distance at which the NPC detects players or other entities.              |
| `AggressionLevel` | float  | Determines hostility response (0 = passive, 1 = neutral, 2 = aggressive). |
| `ReactionSpeed`   | float  | Time delay before the NPC reacts to a stimulus.                           |
| `EmotionalState`  | string | Defines base emotional tone (Calm, Suspicious, Fearful, Hostile, Joyful). |
| `DailyRoutine`    | table  | Predefined actions depending on the time of day or environment.           |
| `DialogueMood`    | string | Alters dialogue lines based on emotional state or player relationship.    |
| `BehaviorTree`    | table  | References AI script controlling the NPC’s logic flow.                    |

---

	AI State System

	NPCs follow a finite-state logic where they switch between behavior modes depending on conditions.
	Each state defines allowed actions, animations, and interaction possibilities.

| State             | Description                                                      | Example NPC Behavior                                 |
| ----------------- | ---------------------------------------------------------------- | ---------------------------------------------------- |
| **Idle**          | Default rest state. NPC performs ambient animations or dialogue. | Vendor sweeping the floor, guard standing at post.   |
| **Patrolling**    | The NPC follows a predefined path or guard route.                | City guard patrolling walls.                         |
| **Interacting**   | The NPC is currently in dialogue, trading, or training mode.     | Trainer talking to a player.                         |
| **Alerted**       | NPC detects potential danger or suspicious activity.             | Guard notices stealth player.                        |
| **Engaged**       | NPC actively in combat or executing skills.                      | Skillable NPC attacking player.                      |
| **Fleeing**       | NPC tries to escape danger or call for help.                     | Merchant running from an aggressive creature.        |
| **Sleeping**      | Inactive behavior, used in night cycles.                         | Villager asleep in home.                             |
| **Dead**          | NPC has died, triggering respawn logic or story events.          | Fallen guard awaiting respawn timer.                 |
| **ScriptedEvent** | Temporarily controlled by a world or quest script.               | NPC joins a cutscene or performs a cinematic action. |

---

	State Transitions

	The "AI Decision Layer" continuously checks for conditions that trigger state changes.
	These transitions are based on *stimuli* such as player proximity, aggression, time of day, and scripted events.

	Example Transition Logic :

```
If PlayerInRange and AggressionLevel >= 2 → switch to ALERTED
If Attacked → switch to ENGAGED
If LowHealth → switch to FLEEING
If NoThreatsDetected for X seconds → return to IDLE
If TimeOfDay == Night and HasDailyRoutine("Sleep") → switch to SLEEPING
```

---

	Awareness System & Detection Layers

	NPC awareness is based on vision, hearing, and environmental feedback.
	This makes them responsive to stealth mechanics, sounds, and visual cues.

| Detection Type    | Controlled By           | Description                                           |
| ----------------- | ----------------------- | ----------------------------------------------------- |
| **Visual**        | Line-of-sight, lighting | NPC sees player or entity directly.                   |
| **Auditory**      | Global Noise System     | NPC hears combat or footsteps nearby.                 |
| **Environmental** | Event Bridge            | NPC reacts to explosions, storms, or global events.   |
| **Proximity**     | AI Layer                | NPC senses nearby entities based on awareness radius. |

	NPCs combine these layers for smarter reactions — e.g., a guard hearing noise at night may turn toward the source before visually confirming the target.

---

	Emotional & Personality Modifiers

	NPCs can have emotional layers that modify their AI behavior, dialogues, and reactions dynamically.
	These emotions can shift over time or based on interactions.

| Emotional State | Description                               | Effect on Behavior                                  |
| --------------- | ----------------------------------------- | --------------------------------------------------- |
| **Calm**        | Default neutral state.                    | Regular dialogue and ambient behavior.              |
| **Suspicious**  | NPC senses something unusual.             | Dialogue tone changes, alert animations triggered.  |
| **Hostile**     | NPC becomes aggressive or ready to fight. | Enters Alerted or Engaged state faster.             |
| **Fearful**     | NPC avoids combat or seeks help.          | Switches to Fleeing or calls guards.                |
| **Joyful**      | NPC expresses happiness.                  | Offers discounts or unique dialogue.                |
| **Sad**         | NPC reacts to past events.                | May refuse to interact or lower dialogue frequency. |

	These modifiers make the world feel *alive* — NPCs remember, react, and evolve based on the player’s impact.

---

	💬 Dialogue Behavior & Mood Variation

	NPC dialogue is dynamic and influenced by:
* Player Reputation
* NPC Emotional State
* Time of Day or Weather
* Active Quests or Events

	Example :

> “You again... still owe me from last time.” (if low reputation)
> “Ah, my favorite customer! What’ll it be today?” (if friendly + daytime)
> “Come back tomorrow. I’m closing shop.” (if night cycle active)

---

	Behavioral Tree Architecture

	Each NPC has an associated "Behavior Tree", which defines priorities and fallbacks for actions.

	Simplified example:

```
[Root]
 ├── [Idle Behavior]
 │    ├── Perform ambient animation
 │    ├── Trigger random dialogue
 │    └── Check awareness
 ├── [Detection]
 │    ├── If hostile → Engage
 │    └── If suspicious → Investigate
 ├── [Combat]
 │    ├── Select skill
 │    ├── Attack target
 │    └── Evaluate retreat condition
 └── [Post-Combat]
      ├── Reset health
      └── Return to idle
```

	This modular structure allows easy modification of individual NPC logic without breaking the system.

---

	Cooperative Behavior Layer

	NPCs can communicate with nearby NPCs through local AI channels, allowing group awareness and reactions.

	Example behaviors :
* Guards alert other guards when detecting an intruder.
* Villagers flee collectively when danger arises.
* Vendors close stalls when environmental hazards trigger.

	This cooperative system uses the "Event Bridge" to propagate alerts and state changes across multiple entities.

---

	Death & Respawn Logic

	NPCs that can die (guards, hostile trainers, or event-based NPCs) follow a controlled respawn system.

	Functions :
* NPC enters “Dead” state and despawns after delay.
* Respawn timer begins (based on type or location importance).
* Optional world event trigger upon death (e.g., loss of town guard until respawn).

---

	Summary

| Component             | Description                                      |
| --------------------- | ------------------------------------------------ |
| **AI Profile**        | Defines base awareness, aggression, and emotion. |
| **State System**      | Controls active NPC behaviors.                   |
| **Transitions**       | Rules that determine state switching.            |
| **Awareness Layers**  | Enable sensing and perception.                   |
| **Emotions**          | Modify actions and dialogue.                     |
| **Routines**          | Define daily life patterns.                      |
| **Behavior Tree**     | Logical flow of AI decisions.                    |
| **Cooperation Layer** | Enables NPC-to-NPC communication.                |

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

		NPC Data Structure & Database Model

	The "NPC Data Structure" defines how every NPC’s data is stored, referenced, and loaded into the world.
	It ensures all systems — from AI to dialogue — can access and modify the same source of truth efficiently.

	This section outlines how NPC data is organized both in-engine (runtime) and in the database (persistent storage).

---

	Core NPC Data Model

	Each NPC is represented by a structured dataset combining static (unchanging) and dynamic (runtime) data.
	This allows persistent properties like name or model to stay fixed, while attributes such as health or emotional state update in real time.

	Base NPC Data Structure :

| Field             | Type      | Description                                                |
| ----------------- | --------- | ---------------------------------------------------------- |
| `NPC_ID`          | integer   | Unique identifier for the NPC.                             |
| `Name`            | string    | Display name of the NPC.                                   |
| `Title`           | string    | Sub-title or rank (e.g., “Blacksmith of Capital City”).         |
| `Faction`         | string    | Associated faction or alignment.                           |
| `Race`            | string    | NPC’s species or origin.                                   |
| `Gender`          | string    | Male, Female, or Neutral.                                  |
| `ModelID`         | integer   | 3D model reference ID.                                     |
| `VoiceID`         | integer   | Voice profile for dialogue or reactions.                   |
| `Level`           | integer   | NPC’s internal level for scaling (guards, trainers, etc.). |
| `Capabilities`    | table     | List of roles the NPC can perform (Vendor, Trainer, etc.). |
| `Location`        | vector3   | World coordinates of the NPC.                              |
| `Rotation`        | float     | Facing direction.                                          |
| `SpawnRegion`     | string    | Region or city name for world management.                  |
| `AIProfile`       | string    | Reference to the AI behavior profile.                      |
| `ReputationLink`  | string    | Connected Reputation group or faction standing.            |
| `QuestLink`       | table     | References to quests the NPC can provide.                  |
| `VendorInventory` | table     | List of items available for sale (if Vendor).              |
| `DialogueID`      | string    | Reference to dialogue tree file or script.                 |
| `RoutineID`       | string    | Reference to daily schedule.                               |
| `ScriptHook`      | string    | Custom event or function binding.                          |
| `CombatStats`     | table     | Health, defense, damage, resistances.                      |
| `EmotionState`    | string    | Current emotional condition.                               |
| `LastInteraction` | timestamp | Last player interaction for cooldown or memory.            |
| `RespawnTimer`    | float     | Delay before respawn (if killable).                        |
| `Flags`           | table     | Custom properties (isEssential, isHidden, canTrade, etc.). |

---

	Example NPC Record

	Here’s an example showing how a fully defined NPC might look in the database:

```lua
NPC = {
    NPC_ID = 1024,
    Name = "Master Blacksmith Eron",
    Title = "Artisan of Capital City Forge",
    Faction = "Middlean Island",
    Race = "Human",
    Gender = "Male",
    ModelID = 201,
    VoiceID = 33,
    Level = 45,
    Capabilities = { "Vendor", "Craft", "Trainer" },
    Location = { x = 312.5, y = 47.3, z = -120.8 },
    Rotation = 1.57,
    SpawnRegion = "Capital City City",
    AIProfile = "Town_Artisan",
    ReputationLink = "Legrand_Craft_Guild",
    QuestLink = { "Forge_Apprentice_Quest", "Refine_Mastery_Task" },
    VendorInventory = "Vendor_Blacksmith_Legrand",
    DialogueID = "Dialogue_Blacksmith_Eron",
    RoutineID = "Routine_Blacksmith_Legrand",
    ScriptHook = "Event_Blacksmith_SpecialForge",
    CombatStats = { HP = 3200, DEF = 120, DMG = 80, Resist = 15 },
    EmotionState = "Calm",
    LastInteraction = nil,
    RespawnTimer = 300.0,
    Flags = { isEssential = true, canTrade = true }
}
```

---

	Static vs Dynamic Data

	NPCs are composed of two data layersCapital City

| Layer            | Description                                                            | Stored In              |
| ---------------- | ---------------------------------------------------------------------- | ---------------------- |
| **Static Data**  | Permanent info like name, model, and base AI.                          | Database / DataTables  |
| **Dynamic Data** | Runtime info like HP, emotion, location offsets, and temporary states. | Memory / Runtime Cache |

	The engine merges both layers on NPC load:

```
FinalNPC = Merge(StaticNPCData, RuntimeNPCState)
```

	This ensures NPCs keep their identity but can act, move, and evolve dynamically in-game.

---

	Data Persistence & Synchronization

	All NPC data changes (position, reputation, quest progress, etc.) are handled through the **World Sync Layer System (WSLS)**.

	Core Persistence Features:

* Server-side authoritative storage for all NPC states.
* Automatic save intervals for persistent NPCs (important ones like trainers, guild masters, quest givers).
* Temporary runtime NPCs (bandits, event characters) are handled by memory-level serialization only.
* Replication hooks through the "Network Replication Layer (NRL)" ensure all connected players see the same NPC behavior and state.

---

	Database Schema Concept

	A simplified relational schema (or table-based approach):

```
NPCs
 ├── NPC_ID (Primary Key)
 ├── Name
 ├── Faction
 ├── Level
 ├── ModelID
 ├── VoiceID
 ├── Capabilities
 ├── Region
 ├── AIProfile
 ├── ReputationLink
 ├── RoutineID
 ├── DialogueID
 ├── ScriptHook
 ├── Flags
```

Linked tables:

* `NPC_VendorInventories`
* `NPC_Quests`
* `NPC_Routines`
* `NPC_Dialogues`
* `NPC_Scripts`
* `NPC_Stats`

	This modular layout keeps performance high and supports **thousands of active NPCs** loaded in memory.

---

	Runtime Loading Flow

	Simplified logic :

```
1. Player enters region.
2. Engine requests NPCs within region from database.
3. Static NPC data loaded.
4. Dynamic state merged (AI, reputation, emotional state).
5. Systems activated based on capabilities.
6. NPC spawned into world.
```

Example:

```
If NPC.Capabilities includes "Vendor" → Register with VendorSystem.
If NPC.Capabilities includes "Guard" → Register with CombatSystem.
If NPC.Capabilities includes "Trainer" → Register with TrainerSystem.
```

---

	Optimization & Caching

* NPC data is regionally cached to prevent redundant queries.
* Inactive regions (no players) unload NPCs but preserve their last state snapshot.
* Critical NPCs (Quest Givers, World Leaders) remain always loaded in memory.
* Network delta compression used for replication to clients.

---

	Summary

| Component              | Function                                                        |
| ---------------------- | --------------------------------------------------------------- |
| **Static Data**        | Permanent info stored in database tables.                       |
| **Dynamic Data**       | Real-time info managed by runtime memory.                       |
| **Capabilities**       | Core behavior drivers used by multiple systems.                 |
| **Linked Tables**      | Extend functionality modularly (quests, dialogue, inventories). |
| **Replication & Sync** | Keeps NPCs identical across clients.                            |
| **Regional Caching**   | Optimizes performance by loading NPCs on demand.                |

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

		NPC Dialogue & Interaction System

	The "Dialogue & Interaction System" governs all player-NPC communications.
	It allows NPCs to:
* Speak with players via text, voice, or both.
* Provide quests, training, crafting, or vendor services.
* React dynamically to the player’s reputation, progression, or environmental conditions.
* Support branching dialogue and multiple response outcomes.

---

	Core Principles

1. Dynamic Dialogue :
   NPCs adjust their speech based on:

   * Player reputation or faction standing.
   * Current quest stage.
   * Time of day, weather, or location.
   * Emotional state of the NPC.

2. Capability-Driven Interaction :
   Available interactions depend on NPC capabilities:

   * `Trainer` → Opens training UI.
   * `Vendor` → Opens store inventory.
   * `QuestGiver` → Offers quests or tasks.
   * `Craft` → Opens crafting interface.

3. Branching Choices :
   Players can choose responses in dialogue trees, affecting:

   * Quest availability or progression.
   * NPC emotion or reputation adjustments.
   * Unlocking of hidden options (special items, rare quests).

---

	Dialogue Data Structure

	Each NPC links to a "Dialogue Tree", which contains nodes for text, choices, and triggers.

	Node Structure Example :

| Field          | Type           | Description                                                                   |
| -------------- | -------------- | ----------------------------------------------------------------------------- |
| `NodeID`       | string         | Unique identifier of the dialogue node.                                       |
| `Text`         | string         | NPC’s dialogue line.                                                          |
| `Choices`      | table          | Player response options.                                                      |
| `NextNode`     | string / table | Next node(s) based on player choice or condition.                             |
| `Conditions`   | table          | Requirements to access this node (level, quest, reputation).                  |
| `Triggers`     | table          | Actions triggered when node is reached (give quest, open UI, modify emotion). |
| `VoiceLineID`  | integer        | Optional audio clip reference.                                                |
| `MoodModifier` | string         | Adjusts NPC mood for this interaction (e.g., “Friendly”, “Irritated”).        |

	Example Dialogue Node :

```lua
Node = {
    NodeID = "Blacksmith_Greet",
    Text = "Welcome back, apprentice! What can I do for you today?",
    Choices = {
        { Text = "Show me your wares.", NextNode = "Blacksmith_Trade" },
        { Text = "I want to train.", NextNode = "Blacksmith_Train", Conditions = { ProfessionRank = 2 } },
        { Text = "Goodbye.", NextNode = "EndConversation" }
    },
    Triggers = {},
    VoiceLineID = 45,
    MoodModifier = "Friendly"
}
```

---

	Interaction Flow

	Step-by-step player-NPC interaction :

1. Player clicks / approaches NPC.
2. System checks capabilities :

   * Opens corresponding UI or dialogue.
3. NPC presents dialogue tree node.
4. Player selects choice:

   * System checks conditions (reputation, quest state, level).
   * If met, proceeds to `NextNode`.
   * If not met, shows alternate response or blocks option.
5. Any triggers (give quest, update emotion, open store) are executed.
6. NPC state may update (e.g., EmotionState, LastInteraction).

---

	Emotional & Reputation Impact

	NPC dialogue is influenced by NPC mood and player reputation.
	This allows dynamic responses:

* Friendly NPC : Provides discounts, hints, or rare quests.
* Neutral NPC : Offers standard services without special perks.
* Hostile NPC : Refuses interaction or warns the player.
* Suspicious NPC : Limited dialogue, cautious responses.

	Example :

```lua
if Player.Reputation < 2 then
    Node.Text = "I don’t trust you enough to deal with my wares."
elseif Player.Reputation >= 5 then
    Node.Text = "Ah, my favorite customer! Take anything you like."
end
```

---

	Environmental & Temporal Triggers

	NPCs can react to:

* Time of day (morning greeting, shop closure at night)
* Weather (rain or storms affecting dialogue or actions)
* World events (festivals, invasions, or rare spawns)

	Example :
* Rain triggers: “Better stay under the awning, these clouds look nasty.”
* Festival triggers: “Welcome to the Spring Fair! Care to see the special items?”

---

	Capability Integration

	Dialogue nodes can also link directly to NPC capabilities :

| Dialogue Trigger      | Capability Action                               |
| --------------------- | ----------------------------------------------- |
| “Show me your wares.” | `Vendor` → Opens store UI.                      |
| “I want to train.”    | `Trainer` → Opens profession or skill training. |
| “I need a quest.”     | `QuestGiver` → Assigns quest.                   |
| “Can you craft this?” | `Craft` → Opens crafting interface.             |

---

	Advanced Features

1. Conditional Branching
   Dialogue can adapt to multiple conditions:

   * Quest completion
   * Profession rank
   * Reputation level
   * Player choices in previous interactions

2. Memory System
   NPCs can “remember” past interactions:

   * Adjust dialogue tone based on player history.
   * Track repeat choices to offer unique options.

3. Voice Integration
   Supports NPC voice lines mapped to dialogue nodes for immersion.

4. Event Hooks
   Dialogue choices can trigger:

   * World events
   * NPC mood changes
   * Quest progression
   * Unlocking special rewards

---

	Developer Example

	Blacksmith Eron Interaction :

* Player approaches NPC → `Trainer` & `Vendor` capabilities detected.
* Dialogue tree loaded: `Blacksmith_Greet`
* Player selects: “I want to train.”
* System checks: Player ProfessionRank >= 2 → Allowed
* Opens training UI → updates LastInteraction → optionally triggers minor dialogue.

	Alternative Choice :

* Player selects: “I want to train.” but ProfessionRank < 2 →
* Dialogue node shows: “You need more experience before I can train you.”

---

	Summary

| Feature                        | Description                                                       |
| ------------------------------ | ----------------------------------------------------------------- |
| Dynamic Dialogue               | NPC adapts speech based on player, environment, and world state.  |
| Branching Trees                | Supports conditional paths, player choice, and multiple outcomes. |
| Capability-Linked Actions      | Dialogue nodes trigger Vendor, Trainer, Craft, or Quest UI.       |
| Emotional / Reputation Effects | Dialogue adjusts based on mood and player standing.               |
| Event Hooks                    | Player choices trigger quests, scripts, or world events.          |
| Memory System                  | NPCs remember interactions for persistent world immersion.        |

-------------------------------------------------------------------------------------------------------------------------------------------------------------------

		NPC Inventory, Trading & Crafting System

	This system governs how NPCs manage items, resources, and services related to trading, crafting, and training.
	It integrates closely with NPC capabilities, reputation, profession systems, and dialogue nodes.

---

	Core Principles

1. Capability-Based Access :

   * `Vendor` → Can sell and buy items.
   * `Trainer` → Can teach recipes or skills.
   * `Craft` → Can craft items for the player or NPC themselves.

2. Dynamic Inventory :
   NPC inventories can be:

   * Static : Fixed list of items (common for standard vendors).
   * Dynamic : Items change based on reputation, time of day, quests, or special events.

3. Reputation & Rank Impact :
   Certain items, recipes, or crafting options are locked behind player progression.
   Example: Grand Master Trainer only teaches advanced recipes if the player has reached the required rank.

---

	Inventory Data Structure

	NPC Inventory Example Structure :

| Field               | Type    | Description                                                    |
| ------------------- | ------- | -------------------------------------------------------------- |
| `ItemID`            | integer | Unique identifier of the item.                                 |
| `ItemType`          | string  | Weapon, Armor, Consumable, Resource, etc.                      |
| `Quantity`          | integer | Available quantity in stock.                                   |
| `Price`             | float   | Purchase price for player.                                     |
| `SellPrice`         | float   | Price NPC will pay if player sells item.                       |
| `RequiredRank`      | integer | Minimum profession or reputation rank needed to access item.   |
| `SpecialConditions` | table   | Optional conditions like quests completed or events triggered. |

	Example NPC Inventory Table :

```lua
VendorInventory = {
    { ItemID = 101, ItemType = "Weapon", Quantity = 10, Price = 150.0, SellPrice = 50.0, RequiredRank = 1 },
    { ItemID = 202, ItemType = "Potion", Quantity = 25, Price = 20.0, SellPrice = 5.0, RequiredRank = 0 },
    { ItemID = 303, ItemType = "Recipe", Quantity = 1, Price = 500.0, SellPrice = 0.0, RequiredRank = 3, SpecialConditions = { QuestCompleted = "Forge_Mastery" } }
}
```

---

	Trading Mechanics

1. Buying Items :

   * Player selects item from NPC inventory UI.
   * System checks player gold and any required conditions (rank, quest, reputation).
   * If conditions are met, item is added to player inventory, quantity deducted from NPC stock.

2. Selling Items :

   * Player selects item to sell.
   * NPC determines buyback price based on item type, rarity, or NPC mood.
   * Reputation or quest conditions can modify the sell price.

3. Dynamic Pricing :
   NPC prices may vary based on:

   * Player reputation with faction.
   * Supply and demand (number of players buying or selling).
   * Special events or limited-time items.

---

	Crafting & Recipe Management

	NPCs with "Craft" or "Trainer" capabilities can craft items or teach recipes.

	Crafting Flow:
1. Player provides materials.
2. NPC verifies materials and player eligibility (profession rank, quest status).
3. NPC crafts the item:
	* Can consume materials.
	* Can create unique items based on special conditions.
4. Resulting item is added to player inventory.

	Recipe Example :

```lua
Recipe = {
    RecipeID = 101,
    Name = "Iron Sword",
    RequiredMaterials = {
        { ItemID = 10, Quantity = 3 }, -- Iron Ore
        { ItemID = 20, Quantity = 1 }  -- Wood Handle
    },
    RequiredRank = 2,  -- Player must be rank 2 or higher
    ResultItemID = 301,
    CraftTime = 5.0,   -- seconds
    SpecialConditions = { QuestCompleted = "Forge_Apprentice_Quest" }
}
```

---

	Inventory & Crafting Updates

* Daily Stock Refresh :
	Vendors can restock at scheduled intervals (daily, weekly, event-based).
* Special Event Items :
	Event-driven NPCs may temporarily hold rare items, which are removed after the event ends.
* Inventory Synchronization :
	Inventory changes propagate through "Network Replication Layer" to maintain consistency across clients.

---

	Integration with Systems

| System                    | Role in Inventory/Crafting                                      |
| ------------------------- | --------------------------------------------------------------- |
| **Profession System**     | Unlocks new recipes, crafting skills, and training options.     |
| **Reputation System**     | Unlocks special items or discounts.                             |
| **Quest & Event Manager** | Triggers item availability based on quest progress or events.   |
| **AI Decision Layer**     | Determines NPC availability and interaction timing.             |
| **Dialogue System**       | Provides context for crafting/trading through dialogue prompts. |

---

	User Interaction Example

	Scenario : Player interacts with Blacksmith Eron:

1. Dialogue opens: “Welcome back, apprentice! Would you like to trade or train?”
2. Player chooses "Trade" → NPC inventory UI opens.
3. Player selects "Iron Sword" :
	* System checks inventory quantity (10 available).
	* Player has 3 Iron Ore + 1 Wood Handle → sufficient.
4. NPC crafts item (5 seconds) and updates both NPC and player inventories.
5. NPC says: “Here’s your Iron Sword, crafted to perfection!”

---

	Summary

| Feature                | Description                                                                      |
| ---------------------- | -------------------------------------------------------------------------------- |
| Dynamic Inventory      | Items can change based on events, rank, reputation, and stock levels.            |
| Capability Integration | Vendors, Trainers, and Crafters provide services tied to dialogue and AI.        |
| Crafting System        | NPCs can craft items or teach recipes based on rank and material availability.   |
| Event & Quest Driven   | Inventory and crafting unlocks depend on player progression and world events.    |
| Network Sync           | All trades, crafting, and inventory changes are replicated to connected players. |

-------------------------------------------------------------------------------------------------------------------------------------------------------------------

		NPC Combat & Skill System

	The "Combat & Skill System" defines how NPCs respond to threats, engage in combat, use abilities, and coordinate with other NPCs or players.
	It is integrated with the "Global Combat System", "AI Decision Layer", "Stealth & Camouflage", and "Event Bridge System" for reactive and dynamic combat 
behavior.

---

	Core Principles

1. Capability-Driven Combat :
	* Only NPCs with `Guard`, `Skillable`, or event-driven combat capabilities engage in fights.
	* `Trainer`, `Vendor`, or `QuestGiver` NPCs may flee or call for help if attacked, depending on flags.

2. AI-Controlled Behavior :
	* NPCs follow behavior trees for combat decisions (attack, defend, cast skill, flee).
	* Emotional states (aggression, fear) and AI profile modify combat tactics.

3. Skill System :
	* NPCs can have active and passive abilities, cooldowns, and energy/mana costs.
	* Skills are chosen based on priority rules, player actions, or environmental triggers.

---

	NPC Combat Data Structure

| Field               | Type   | Description                                          |
| ------------------- | ------ | ---------------------------------------------------- |
| `CombatStats`       | table  | Health, defense, damage, resistances, stamina/mana.  |
| `Skills`            | table  | List of available combat or utility skills.          |
| `AggressionLevel`   | float  | Determines response to hostile players or NPCs.      |
| `TargetingPriority` | table  | AI rules for selecting target (player, ally, enemy). |
| `AlertRange`        | float  | Distance at which NPC detects enemies.               |
| `FleeThreshold`     | float  | HP or condition at which NPC tries to flee.          |
| `GroupBehavior`     | string | Patrol, call-for-help, coordinated attack patterns.  |
| `LootTable`         | table  | Items dropped on death (if applicable).              |
| `Flags`             | table  | isHostile, canDie, isEssential, skillable, etc.      |

	Example Combat Stats :

```lua
CombatStats = {
    HP = 3200,
    DEF = 120,
    DMG = 80,
    Resist = 15,
    Stamina = 100,
    Mana = 50
}

Skills = {
    { SkillID = 101, Name = "Slash", Type = "Melee", Cooldown = 3.0, Priority = 1 },
    { SkillID = 102, Name = "Shield Block", Type = "Defense", Cooldown = 5.0, Priority = 2 },
    { SkillID = 103, Name = "War Cry", Type = "Buff", Cooldown = 20.0, Priority = 3 }
}
```

---

	Combat Behavior Flow

1. Detection :
	* NPC detects player or hostile entity via "Awareness Layers" (vision, sound, proximity).

2. Decision Making :
	* AI Decision Layer evaluates target, skill selection, and engagement rules.

3. Action Execution :
	* Performs melee/ranged attacks, casts skills, or defends.
	* Grouped NPCs coordinate using "Event Bridge" to call allies.

4. State Transition :
	* Switches between `Idle`, `Alerted`, `Engaged`, `Fleeing`, or `Dead` states based on combat progress.

5. Combat Resolution :
	* Updates health, buffs/debuffs, and triggers loot or quest events if NPC dies.

---

	Skill Usage Logic

	NPCs select skills based on:

| Factor         | Description                                                |
| -------------- | ---------------------------------------------------------- |
| **Priority**   | Skills are ordered by AI-defined priority.                 |
| **Cooldown**   | Skill can only be used if cooldown expired.                |
| **Range**      | NPC selects skill based on distance to target.             |
| **Resource**   | Skill requires sufficient mana/stamina.                    |
| **Conditions** | Skill may require certain buffs, debuffs, or enemy status. |

	Example Skill Decision Pseudocode :

```
for skill in NPC.Skills:
    if skill.Cooldown <= 0 and skill.Range OK and Resources OK:
        UseSkill(skill)
        break
```

---

	Defense & Flee Mechanics

* NPCs may defend or block incoming attacks.
* Low HP triggers `FleeThreshold` → NPC tries to escape, call guards, or use defensive abilities.
* NPCs with isEssential flag may not die but enter a “knocked out” state.

---

	Group & Guard Behavior

	NPCs with "Guard" or "Patrol" capabilities may:
* Patrol predefined paths and respond to nearby threats.
* Alert nearby NPCs of hostile players or monsters.
* Use cooperative combat logic :
	* Focus fire on high-threat targets.
	* Protect vulnerable NPCs (vendors, quest givers).
* Retreat strategically if outnumbered.

---

	Loot & Rewards

* NPCs with combat capability may have loot tables :
	* Common drops: gold, consumables, low-tier items.
	* Rare drops: profession materials, quest items, or unique equipment.

* Loot availability may depend on:
	* Player reputation
	* Quest involvement
	* Event status

---

	Integration with Systems

| System                          | Role in Combat & Skills                                          |
| ------------------------------- | ---------------------------------------------------------------- |
| **Global Combat System**        | Handles attack, damage calculation, status effects, and death.   |
| **AI Decision Layer**           | Determines skill usage, target selection, and tactical movement. |
| **Stealth & Camouflage System** | Enables sneaking mechanics or hidden attacks.                    |
| **Event Bridge System**         | NPC calls for help, triggers world events, or updates quests.    |
| **Network Replication Layer**   | Ensures combat actions are synchronized across all clients.      |

---

	Summary

| Component          | Description                                                 |
| ------------------ | ----------------------------------------------------------- |
| CombatStats        | Health, defense, damage, resistances, resources.            |
| Skills             | Active and passive abilities with cooldowns and conditions. |
| Aggression & Flee  | Determines when NPC attacks, defends, or retreats.          |
| Targeting          | Prioritization rules for selecting enemies.                 |
| Group Behavior     | Guards and allies coordinate attacks or protection.         |
| Loot               | Rewards and items dropped on death.                         |
| System Integration | Ensures combat is synced, dynamic, and reactive.            |

-------------------------------------------------------------------------------------------------------------------------------------------------------------------

		NPC Respawn, Event & World Integration

	This system manages NPC lifecycle, world placement, event participation, and dynamic spawning.
	It ensures that NPCs appear naturally, respond to world changes, and integrate with quests, events, and other systems.

---

	Core Principles

1. Persistent NPCs
	* Key NPCs (trainers, quest givers, vendors, guild leaders) are always present in the world.
	* Their states (location, inventory, quests, reputation) are saved and restored across server sessions.

2. Dynamic NPCs
	* Event or hostile NPCs spawn temporarily (bandits, monsters, traveling merchants).
	* These NPCs can appear based on player proximity, world events, or schedule.

3. Region-Based Management
	* NPCs are loaded or unloaded depending on player location and regional activity.
	* Reduces server load while keeping gameplay seamless.

4. Event Integration
	* NPCs can be tied to quests, festivals, invasions, or environmental triggers.
	* Example: Tavern Keeper appears in wilderness locations during travel events.

---

	NPC Spawn & Respawn Data Structure

| Field             | Type    | Description                                            |
| ----------------- | ------- | ------------------------------------------------------ |
| `SpawnID`         | integer | Unique spawn point identifier.                         |
| `NPC_ID`          | integer | Reference to the NPC definition.                       |
| `Region`          | string  | Spawn region or city.                                  |
| `Coordinates`     | vector3 | Exact spawn location.                                  |
| `Rotation`        | float   | NPC facing direction.                                  |
| `RespawnTime`     | float   | Time before NPC respawns after death or despawn.       |
| `SpawnConditions` | table   | Conditions to spawn (time of day, event, quest state). |
| `Dynamic`         | boolean | Determines if NPC is permanent or event-driven.        |
| `Flags`           | table   | Custom flags like isEventNPC, isBoss, isEssential.     |

---

	Respawn Mechanics

* Permanent NPCs :
	* Never despawn unless manually removed by the game logic (e.g., story progression).
	* Example: Blacksmith in Legrand City always present.

* Dynamic/Temporary NPCs :
	* Spawn based on triggers :
		* Player entering region.
		* Quest activation.
		* World events (traveling merchants, ghost ships).
	* Respawn after a defined delay or event reset.

* Death Handling :
	* Combat-capable NPCs can die or be “knocked out” depending on `isEssential` flag.
	* Respawn timer begins after death; NPC restores to full health and inventory.

---

	Event Integration

	NPCs can participate in world events:

| Event Type     | Role                                                                        |
| -------------- | --------------------------------------------------------------------------- |
| Quests         | NPCs appear/disappear based on quest stage; give objectives or rewards.     |
| Festivals      | Temporary NPCs appear to sell event items or provide unique services.       |
| Invasions      | Hostile NPCs spawn dynamically with combat behavior.                        |
| Traveling NPCs | NPCs like traveling merchants or ghost ships appear at scheduled locations. |

	Example: Traveling Ghost Ship Integration

* NPCs on ships are spawned only when ship enters a region.
* When the ship leaves, NPCs despawn to conserve server resources.
* Interactions with ship NPCs persist during player engagement and affect quests or reputation.

---

	World Integration Logic

1. Region Load
	* Engine checks player proximity to region.
	* Loads permanent NPCs immediately.
	* Checks conditions for dynamic NPCs.

2. Spawn Evaluation
	* Checks `SpawnConditions` (quest progress, events, time of day).
	* Spawns NPCs at `Coordinates` with `Rotation`.

3. Interaction Registration
	* Registers NPCs with relevant systems based on capabilities:
		* Vendor → Vendor System
		* Trainer → Trainer System
		* Guard/Skillable → Combat System
		* QuestGiver → Quest & Event Manager

4. Respawn & Cleanup
	* NPCs removed when leaving inactive regions.
	* Dynamic NPCs respawn according to `RespawnTime` or event reset.

---

	Optimization & Caching

* Regional Caching :
	Only NPCs near active players are loaded in memory.

* Event Hooks :
	NPC spawns and despawns can trigger events such as:
		* Quest updates
		* Dialogue availability
		* Temporary buffs or world changes

* Snapshot System : For dynamic NPCs, state snapshots (health, inventory, emotion) are saved before despawn to restore upon respawn if necessary.

---

	Summary

| Feature              | Description                                                                  |
| -------------------- | ---------------------------------------------------------------------------- |
| Persistent NPCs      | Trainers, vendors, and quest givers always present.                          |
| Dynamic NPCs         | Spawned based on events, quests, or world conditions.                        |
| Region-Based Loading | Optimizes memory and server load.                                            |
| Event Participation  | NPCs integrate with festivals, invasions, traveling events, and ghost ships. |
| Respawn Mechanics    | Handles death, cleanup, and re-spawning with state restoration.              |
| System Integration   | Links NPCs to combat, trading, crafting, dialogue, and reputation systems.   |

-------------------------------------------------------------------------------------------------------------------------------------------------------------------

