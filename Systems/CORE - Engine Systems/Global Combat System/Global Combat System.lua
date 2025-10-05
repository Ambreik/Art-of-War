			Global Combat System

	Path : `GAME/Systems/Global_Combat_System.lua`

---

	1. Introduction

	The "Global Combat System (GCS)" is the backbone of all combat interactions in the world game. It manages the rules, calculations, and states for every 
engagement, ensuring consistency across all types of combat — PvE, PvP, world bosses, elite creatures, and environmental hazards.

	It integrates tightly with "AI Decision Layer", "Monster Awareness System", and "Damage/Defense mechanics", allowing monsters and players to react dynamically 
to threats, resources, and abilities.

	Key purposes :

* Standardize damage calculation across multiple sources.
* Manage defensive mechanics (Armor, Resistances, Damage Block, StoneSkin, evasion).
* Handle combat states (in-combat, staggered, enraged).
* Apply buffs/debuffs and effects consistently.
* Serve as a foundation for complex combat interactions (e.g., multi-target encounters, threat distribution, elemental interactions).

---

	2. Core Mechanics / Functionality

	The "Global Combat System" is structured into several key functional modules:

	2.1 Damage Calculations

* Computes all forms of damage:
	* Direct damage (melee, ranged, spells)
	* Damage over time (DoT, burn, bleed)
	* Burst damage / Critical strikes / Crushing blows

* Factors in armor, resistances, evasion, block, and StoneSkin/threshold effects.
* Applies multipliers for mechanics like Berserk, God type, or Vampiric absorption.

	2.2 Threat & Aggro

* Updates dynamic threat tables for monsters based on:
	* Damage dealt
	* Debuffs applied
	* Noise & perception (via Awareness system)

* Works with "Dynamic Aggro & Targeting" mechanics to select priorities.

	2.3 Buffs & Debuffs

* Integrates with the Debuff / Curse Mechanic :
	* Status effects (stuns, slows, poison, debuffs)
	* Time-based effects (duration, tick, stacking)

* Tracks temporary immunities or resistances.

	2.4 Combat States

* Handles monster/player states:
	* In-combat
	* Staggered or interrupted
	* Enraged / Berserk / Rage Mode

* Monitors thresholds to trigger behaviors (e.g., God type attack speed increase, HP-based triggers).

	2.5 Critical Mechanics & Special Interactions

* Manages attack types and effects:
	* Area-of-effect, armor penetration, drain attacks, reflect, multistrike

* Handles interactions with resistances (Fire, Water, Earth, Wind, Holy, Shadow)
* Resolves overlapping effects and damage priorities.

---

	3. System Integration

	The "Global Combat System" operates as a centralized layer, synchronizing multiple subsystems and gameplay mechanics to ensure unified combat behavior across 
all entities.

	It connects the following major systems:

	3.1 AI Decision Layer (AIDL)

* Supplies data regarding threat levels, target states, and AI goals.
* AIDL relies on GCS outputs (e.g., damage logs, status effects) to make real-time decisions — fight, flee, reposition, or call for help.

	3.2 Monster Awareness System

* The Awareness layer determines who the AI perceives and how it prioritizes threats.
* GCS consumes this awareness data to:
	* Initiate combat only when visibility and range are confirmed.
	* Apply bonuses or penalties (e.g., surprise attack modifiers).

	3.3 Global Noise System

* Integrates audio-visual disturbances into combat logic.
	* Noise level can trigger “combat-ready” states in nearby creatures.
	* Some monsters may enter combat if specific thresholds are met (e.g., loud explosions).

	3.4 Buff & Debuff Framework

* GCS acts as the execution layer for applying and removing buffs/debuffs.
* Interacts with the Debuff System to calculate:
	* Resistance checks
	* Duration and stack management
	* Cleansing, purging, or amplifying effects.

	3.5 Global Environment System

* Feeds external modifiers into combat calculations:
	* Weather (lightning amplifies storm spells)
	* Terrain (mud slows movement, reducing attack speed)
	* Time-of-day modifiers (Night vs. Day combat bonuses)

* Ensures that world conditions have tangible effects on damage and mitigation.

	3.6 Event & Quest Manager

* Connects combat events to world scripts:
	* Triggers upon monster death, critical hit, or damage milestones.
	* Supports boss mechanics (e.g., phase transitions at HP thresholds).

---

	4. Situational Applications

	The GCS supports adaptive behavior across multiple gameplay contexts:

	4.1 PvE Encounters

* Governs interactions between players and monsters.
* Handles elite and boss combat with advanced calculations:
	* Multiple resistances and thresholds
	* Ability phase transitions (e.g., Rage, Enrage)

* Integrates "Rare Spawn" and "Night/Day mechanics" for temporal variation.

	4.2 PvP & Duel Systems

* Normalizes damage based on class and rank.
* Calculates crowd-control diminishing returns.
* Manages temporary immunities (e.g., anti-stun effects after multiple uses).

	4.3 World Boss / Raid Combat

* Multi-entity threat tracking (group-based aggro).
* Damage splitting and mitigation per phase.
* Synchronization with "Server Combat Logs" for event tracking and boss behavior tuning.

	4.4 Environmental Combat

* Handles player and monster interactions with environmental hazards:
	* Fire zones, lightning storms, collapsing structures.

* Supports Damage over Time from environmental exposure.

	4.5 Dynamic Scaling

* Adjusts monster health, defense, or attack based on:
	* Player level, number of players nearby.
	* World region difficulty modifiers.

* Enables balanced encounters in both solo and group play.

---

	5. Systemic Impact

	The "Global Combat System (GCS)" is a core gameplay pillar; its design decisions ripple across the entire game. Below are the major systemic impacts to track
and manage.

	*5.1 Player Experience & Balance

* Pacing & Difficulty : Damage formulas, mitigation systems, and threshold mechanics directly control encounter pacing. Small tuning changes can make fights trivial
or frustrating.
* Skill Expression : Clear, predictable combat rules reward player skill (timing, positioning, CC usage). Ambiguous rules reduce player agency.
* Role Importance : Threat mechanics, resource drains, and target prioritization define the importance of tanks/healers/DPS. The GCS should be designed to reinforce
intended roles.

	5.2 Content Design

* Encounter Design : Boss phases, enrage timers, and environmental interactions rely on robust combat primitives (DoTs, spell penetration, threshold triggers).
* Loot & Progression : Combat outcomes (kill speed, wipe frequency) drive progression pacing and loot economy. Adaptive scaling ties directly into drop tuning and 
content lifespan.

	5.3 Economy & Meta

* Consumables & Gear : Combat difficulty determines demand for potions, resist gear, food buffs — impacting the in-game economy.
* Meta Evolution : Powerful mechanics (stacking crits, multi-strike) can create dominant strategies that reshape player meta. GCS telemetry must inform balance 
patches.

	5.4 Cross-System Effects

* AI & Awareness : Combat rules influence AI behavior (retreat windows, heal thresholds, enrage triggers).
* Environment & Events : Weather or terrain modifiers feed into combat calculations, making the environment tactically meaningful.
* Network & Replication : Combat determinism and authoritative server logic are required for fair multiplayer play; desyncs undermine trust in the system.

	5.5 Analytics & Live Tuning

* Key Metrics : Track kill times, wipe rates, DPS distributions, cc-usage, damage taken by role, and item usage.
* Feedback Loop : Use analytics to tune damage multipliers, resistances, and encounter parameters over time.

---

	6. Extensibility & Debugging / Tools

	Make the GCS easy to extend, safe to test, and simple to debug. Below are specific tools, modular design patterns, and developer utilities to include.

	6.1 Architecture & Extensibility

* Modular Combat Pipeline : Split combat into clear stages — *input → mitigation → effect resolution → state update → network replication* — so features plug into a
single stage without modifying others.
* Rules Engine / Data-Driven Design : Store damage formulas, resist tables, status definitions, and thresholds in data (DB/JSON) rather than hard-coded logic. 
Designers tune without code changes.
* Policy Hooks : Provide extension hooks for custom interactions (e.g., `OnDamageResolve`, `OnCritical`, `OnDeathPhase`) usable by events,dungeons, or boss scripts.

	6.2 Developer Tools & Debugging

* Combat Profiler : Real-time performance profiling for combat ticks (ms per entity), active effects, and propagation cost.
* Visualizer Overlays : Toggleable in-world overlays showing:
	* Damage sources and recent hit logs.
	* Active buff/debuff icons with stacks and remaining durations.
	* Hitboxes, range checks, and AoE previews.
* Threat & Aggro Inspector : UI panel showing current threat table, priority weights, and why the AI chose a target.
* Simulation Mode : Isolated environment to run scripted combats at scale (stress-testing with dozens/hundreds of entities).
* Event Replayer : Capture combat sessions to replay for debugging and QA.

	6.3 Console & Admin Commands

	Examples for live debugging:

* `/combat_debug on|off` — toggles combat debugging overlays.
* `/show_threat <entityId>` — prints threat table.
* `/simulate_combat <scenarioId>` — runs predefined combat scenario.
* `/adjust_param <paramPath> <value>` — live-tune a numeric parameter (damage multiplier, resist cap).
* `/dump_combat_log <id>` — export fight log for analysis.

	6.4 Telemetry & Logging

* Event Granularity : Log high-level combat events (start, end, phase change) and optionally lower-level ticks for repro.
* Sampling : For high-frequency data (per-attack ticks) use sampling to limit volume while preserving signal for analytics.
* Retention & Dashboards : Build dashboards for top-line metrics (avg kill time, consumable usage, DPS distribution, wipe hotspots).

	6.5 Networking & Determinism

* Authoritative Server : Server is the source of truth for calculations — clients receive results to prevent cheating.
* State Snapshots : Snapshot critical combat states for client reconciliation and rollback in small windows to hide jitter.
* Bandwidth Optimization : Send deltas for status effects and aggregated AoE results instead of per-entity per-tick packets.

	6.6 Safety, Fallbacks & Anti-Exploit

* Sanity Checks : Cap extreme values client-side and server-side (max damage per tick, stack limits).
* Fallback Modes : If an expensive system fails (e.g., combat profiler or third-party service), fall back to simpler deterministic calculations to keep gameplay 
live.
* Exploit Monitoring : Alert rules for abnormal combat patterns (excessive crits, negative damage, impossible status stacks).

	6.7 Tuning Workflow

* Staging & Canary : Test major combat changes in staging or limited canary servers before global rollout.
* Patch Strategy : Maintain small, incremental combat tuning patches with rollback paths.
* Designer Tools : Provide spreadsheets/GUI to tune formulas which export to data bundle consumed by the server.

---

## Quick Implementation Checklist (for devs)

1. Implement modular combat pipeline with clear stage hooks.
2. Move formulas and tunables into data tables.
3. Build core debug overlays and threat inspector.
4. Add telemetry for key combat KPIs.
5. Implement simulation and replay tools for QA.
6. Harden server-side validation & network optimization.

---