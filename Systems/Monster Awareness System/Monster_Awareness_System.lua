			Monster Awareness System
			
	Path : `GAME/Systems/Monster_Awareness_System.lua`

---

	1. Introduction

	The "Monster Awareness System" governs how creatures perceive, react, and adapt to their surroundings and player actions in real time.
	It serves as a central intelligence layer for all non-player hostile entities, integrating perception, reaction, and behavioral adaptation through a modular 
awareness framework.
	Unlike static aggro-based detection used in traditional RPGs, this system models realistic awareness behavior — simulating how creatures interpret visual, 
auditory, magical, and environmental stimuli. Monsters are not immediately omniscient; instead, their awareness gradually evolves based on sensory information, 
noise intensity, and contextual cues.
	This design introduces perception realism and tactical depth into the world, ensuring that monsters feel alive — stalking, reacting, or ignoring based on 
believable in-world logic.
	The system is deeply tied to other mechanics such as the "Global Noise System", "Night/Day Behavior", and "Panic Mode", enabling dynamic encounters that change 
based on time, location, and player actions.

	Key Design Goals

* Create believable monster reactions to player presence and world events.
* Simulate sensory inputs (sight, sound, scent, magic, proximity) with variable sensitivity per monster type.
* Enable tiered awareness progression: *Idle → Suspicious → Alert → Combat.*
* Provide hooks for AI decision-making, quest scripting, and environmental triggers.
* Offer scalable control for developers — from simple aggro detection to complex sensory ecosystems.

---

	2. Core Mechanics / Functionality

	At its core, the Monster Awareness System functions as a state machine driven by *stimulus input* and *contextual weighting.* Each monster operates on awareness
levels that change dynamically based on stimuli detected within its sensory radius.

	Awareness States

1. Idle : The monster is unaware of nearby threats. Only environmental stimuli or direct provocation can trigger awareness gain.
	* Vision range limited.
	* Noise sensitivity minimal.
	* AI performs passive behaviors (patrolling, grazing, guarding).

2. Suspicious : Triggered when weak stimuli are detected (e.g., distant footstep, faint magical aura).
	* Monster investigates origin direction.
	* Awareness decays if no confirmation is found.
	* May enter “search” subroutine for a short duration.

3. Alert : The monster confirms a credible threat.
	* Heightened sensory range.
	* Activates defensive or offensive preparation AI.
	* Notifies nearby allies if part of a group.

4. Combat (Engaged) : Full awareness of the target.
	* Monster enters battle state.
	* Awareness locks onto threat until target death, escape, or loss conditions.
	* AI switches to combat behavior profile.

---

	Stimulus Channels

	Awareness is influenced by a weighted combination of multiple perception inputs:

| Channel                     | Description                                                   | Example Stimuli                                  | Integration               |
| --------------------------- | ------------------------------------------------------------- | ------------------------------------------------ | ------------------------- |
| **Vision (LOS)**            | Direct line-of-sight check with distance and angle modifiers. | Player movement in open field.                   | Global visibility system. |
| **Sound (Noise)**           | Intensity-based detection from the Global Noise System.       | Weapon clashing, footsteps, spell impacts.       | Global Noise System.      |
| **Scent / Tracking**        | Long-range detection for beast or vampiric types.             | Player bleeding, potion aroma, specific herbs.   | Environment scent map.    |
| **Magic Sense**             | Reaction to mana presence or spellcasting.                    | Active buff, healing spell, teleportation trace. | Arcane signature layer.   |
| **Environmental Awareness** | Contextual triggers from weather, terrain, or time of day.    | Storms, day/night transitions, fire sources.     | Day/Night System.         |

	Each input contributes to a *Cumulative Awareness Score (CAS)*. When CAS exceeds specific thresholds, the monster transitions between states. CAS decays over 
time if no new stimuli are detected, creating a natural ebb and flow of attention.

---

	Awareness Decay & Persistence

* Awareness decays gradually to prevent perpetual aggro.
* Strong stimuli (combat, magic explosions) refresh decay timers.
* Some monsters (e.g., undead or machines) have near-zero decay, remaining alert once provoked.
* Boss-tier monsters can persist awareness across zones for narrative tension.

---

	3. Awareness Model & Data Structure

	The "Awareness Model" serves as the internal logic governing how awareness levels are stored, updated, and utilized across different monster archetypes.
	It is built for modularity — allowing distinct monsters (e.g., humanoid scouts, beasts, undead) to have customized awareness profiles while still relying on a 
unified structural framework.

	Each monster entry in the database contains a "Perception Profile", describing sensory limits, reaction times, and awareness behavior modifiers.

---

	Perception Profile Structure (Database Level)

| Field                   | Type            | Description                                            | Example                       |
| ----------------------- | --------------- | ------------------------------------------------------ | ----------------------------- |
| `visionRange`           | Float           | Maximum visible distance under ideal conditions.       | `35.0` meters                 |
| `visionArc`             | Float           | Field of view angle in degrees.                        | `120°`                        |
| `hearingSensitivity`    | Float           | Multiplier applied to detected noise intensity.        | `1.3` (30% more sensitive)    |
| `scentAwareness`        | Boolean / Float | Enables smell-based detection.                         | `true / 0.8`                  |
| `magicSensitivity`      | Float           | Determines detection radius for magic traces.          | `0.5` (half standard range)   |
| `awarenessDecayRate`    | Float           | Rate of decay per second when no stimuli are detected. | `2.0`                         |
| `groupAlertRadius`      | Float           | Range within which allies are notified.                | `15.0` meters                 |
| `statePersistence`      | Enum            | Determines how long states remain active.              | `Short`, `Normal`, `Extended` |
| `stealthDetectionBonus` | Float           | Multiplier vs. stealth characters.                     | `+10%`                        |

---

	Awareness Scoring Model

	Each stimulus contributes to the "Cumulative Awareness Score (CAS)".
	The CAS increases or decreases over time based on the weight and persistence of the input.

	Example formula (conceptual):

```
CAS = (Vision_Weight * LOS_Factor) 
    + (Sound_Weight * Noise_Level * Sensitivity) 
    + (Scent_Weight * Distance_Modifier) 
    + (Magic_Weight * Arcane_Signature)
```

	When the "CAS" surpasses a defined threshold, the monster transitions to the corresponding awareness state:

* `0–25` → Idle
* `26–50` → Suspicious
* `51–75` → Alert
* `76–100` → Combat

	The model supports non-linear scaling for more organic transitions — for example, sound may spike awareness sharply, while scent provides gradual buildup.

---

	Memory System & Decay

	Each monster maintains a short-term *Memory Log* of the last known player position, stimulus origin, and timestamp.

* If no stimuli reinforce this data, the memory fades over time (configurable per monster).
* Persistent or intelligent monsters may “patrol” around the last known point before fully calming down.
* Group monsters share a simplified *Collective Memory Node* — enabling pack coordination and pursuit behavior.

	This memory architecture ensures that awareness is not binary, but *temporal and contextual*, allowing monsters to “lose” players believably rather than 
instantly resetting.

---

	4. System Integration

	The "Monster Awareness System" is not standalone — it functions as a core pillar connecting multiple subsystems.
	Its design ensures seamless communication between perception events, AI decision trees, environmental effects, and player actions.

---

	Integration with Other Core Systems

| Connected System                | Description                                                              | Integration Purpose                                                                                       |
| ------------------------------- | ------------------------------------------------------------------------ | --------------------------------------------------------------------------------------------------------- |
| **Global Noise System**         | Processes real-time sound emissions from players, monsters, environment. | Feeds noise intensity values into awareness scoring for auditory detection.                               |
| **Stealth & Camouflage System** | Governs visibility modifiers for players and NPCs.                       | Modifies LOS calculations; adds conditional awareness reduction.                                          |
| **Night/Day Behavior System**   | Alters sensory efficiency based on time cycles.                          | Reduces or enhances awareness stats dynamically (e.g., nocturnal monsters gain +30% perception at night). |
| **Global Environment System**   | Handles weather, terrain, and lighting.                                  | Impacts visibility range and scent dispersion; e.g., rain reduces smell tracking.                         |
| **AI Decision Layer**           | Controls monster behavior states and responses.                          | Receives awareness state updates to determine next logical action (investigate, flee, engage).            |
| **Global Combat System**        | Manages combat initiation and targeting.                                 | Awareness state “Combat” automatically triggers combat engagement logic.                                  |

---

	Event Hooks & Communication Flow

	Awareness changes trigger events broadcast to relevant systems:

```
onAwarenessChanged(monster, oldState, newState)
onStimulusDetected(monster, stimulusType, intensity)
onGroupAlert(monster, radius)
```

* These hooks allow AI designers to attach custom reactions — such as emotes, roars, calls for help, or environmental triggers.
* Combat systems can register threat tables upon awareness reaching “Combat.”
* Quest logic can react to Suspicious or Alert states for stealth missions.

---

	Cross-System Considerations

* Awareness sensitivity is influenced by monster type (e.g., Vampiric have strong scent awareness, Undead rely on magic detection).
* Boss monsters may override global decay timers or link awareness to scripted events.
* In group encounters, collective awareness ensures emergent, believable coordination among packs, guards, or patrols.

---

	5. Situational Applications

	The "Monster Awareness System" dynamically adjusts to the situation, ensuring each encounter feels natural and context-driven rather than scripted. It adapts to
different monster types, environmental conditions, and gameplay contexts.

---

	A. Patrol & Guard Behavior

	Monsters assigned as patrol units (city guards, dungeon sentinels, or beast packs) use low-intensity awareness polling :

* Awareness refreshes every few seconds, optimized for performance.
* Detection arcs and ranges vary based on patrol speed and route familiarity.
* Suspicious states trigger "Investigate Zone" subroutines, leading the monster to inspect nearby sound or visual anomalies before resetting.
* If multiple patrols share the same *alert radius*, group awareness spreads — causing chain alerts across patrol paths.

	Example : A castle guard hears a noise near the wall. His awareness spikes to *Suspicious*, and he investigates. If another guard spots movement while he is 
investigating, the alert propagates, shifting both into *Alert* state — escalating naturally.

---

	B. Ambush & Stealth Encounters

	Stealth missions and ambush-style encounters use this system heavily.

* Line-of-sight detection pairs with "Global Noise System" inputs.
* Monsters in *Idle* or *Dormant* states transition to *Suspicious* when faint sound or partial visibility is registered.
* For advanced monsters (e.g., assassins or predators), the system supports *reverse awareness* — allowing them to stalk unaware players instead.

	Mechanics Example : If a player moves behind a *Night Stalker* silently, the creature’s high scent awareness detects the player. The awareness system 
transitions to *Alert*, forcing the player to reposition or distract the monster using noise.

---

	C. Dungeon & Raid Encounters

	Bosses and elite monsters utilize expanded awareness profiles for scripted fights:

* Awareness triggers phase transitions (e.g., "The boss senses your presence — phase two begins!").
* Traps, spells, or magical anomalies feed awareness events, integrating with environment systems.
* Boss AI uses awareness thresholds for reactionary behaviors — retreating, summoning adds, or using ultimate skills.

---

	D. Environmental Awareness

	Environmental factors dynamically alter awareness detection:

* "Rain/Fog" reduces sight and scent accuracy.
* "Wind direction" alters scent tracking radius.
* "Daylight" improves vision for diurnal monsters but reduces nocturnal efficiency.
* "Magic storms" enhance magic detection range by 200%.

---

	E. Special Scenarios & Events

	Some events or world systems tie directly into awareness:

* World Boss awakenings triggered by cumulative awareness of nearby mobs.
* Infiltration missions where maintaining low player awareness level is a victory condition.
* Dynamic Territory Control — monster factions respond to intrusions dynamically, alerting neighboring zones when awareness spikes.
* Rare spawn reveals — monsters that appear only when global awareness triggers meet specific thresholds (linked to Night/Day or event timers).

---

	6. Systemic Impact

	The "Monster Awareness System" is not just an AI layer — it’s a *world logic* system that shapes how the game world “feels alive.” Its systemic nature creates 
organic interactions, emergent encounters, and believable environmental intelligence.

---

	A. Gameplay Impact

1. Stealth Depth – Enables varied stealth gameplay where each enemy type requires different counter-strategies (sound suppression, scent masking, invisibility).
2. World Immersion – Players perceive monsters as entities *reacting* to them, not scripted automata.
3. Adaptive Difficulty – Monsters adapt their perception to player level, skill, or region difficulty dynamically.
4. Organic Combat Triggers – Reduces abrupt combat initiations; fights start because the enemy *noticed*, not just aggro range.
5. Dynamic Ecosystems – Wildlife, undead, and humanoids react to each other’s awareness triggers — creating self-sustaining combat or avoidance loops.

---

	B. AI Network & Server Load Balancing

	The awareness system is optimized for performance:

* Awareness calculations are event-driven, not constant polling.
* Only nearby entities (within 50m) are tracked per update cycle.
* Group alerts share awareness nodes to reduce redundant checks.
* Awareness decay ensures no monster remains in high computation states indefinitely.

	This allows even large-scale raids or open-world battles to retain *fluid AI response* without overwhelming the system.

---

	C. Integration with Player Systems

* Player Stealth System : Awareness acts as the detection layer. Stealth skills modify detection factors (noise, visibility, scent signature).
* Global Noise System : Awareness consumes noise events, converting them to awareness spikes for hearing-based detection.
* Environmental Systems : Dynamic awareness shifts with time, light, or weather — ensuring all systemic features are synchronized.
* Quest System : Awareness states can gate objectives (e.g., “Sneak past guards without raising awareness above 40”).

---

	D. Design & Tuning Levers

	Developers and game designers can tweak:

* Awareness growth rates per monster family.
* Threshold transitions (idle→suspicious→alert).
* Reaction delay variance for “slow” or “fast-reacting” enemies.
* Shared awareness multipliers for group or faction-based encounters.

---

	E. Emergent World Behavior

	When fully integrated, the system becomes part of the living world fabric :

* Bandits might ambush a caravan when their scouts’ awareness triggers.
* Packs of wolves may scatter or regroup based on shared sensory inputs.
* In PvE-PvP hybrid zones, monsters’ awareness can interfere with player stealth — altering tactical flow naturally.

---

	7. Extensibility

	The "Monster Awareness System" is designed with long-term scalability and modular expansion in mind, ensuring it can evolve alongside other core gameplay 
systems or new content updates without major reworks.

---

	A. Modular Architecture

	Each sensory and behavioral layer (vision, hearing, scent, arcane sense, environmental awareness) is treated as an independent module that can be:

* Enabled/Disabled per monster type — lightweight mobs may only use hearing or sight.
* Extended — new senses (e.g., “thermal perception,” “soul detection”) can be added without altering existing code.
* Overridden — bosses or special creatures can replace default modules with unique detection behaviors.

	This modularity ensures that developers can easily introduce new mechanics, environments, or sensory phenomena without impacting system stability.

---

	B. Plugin Support

	The awareness core supports *system plugins* for expansion:

* Faction Awareness Plugin : Allows shared perception across entire factions or clans.
* Taming System Plugin : Enables monsters to track player scent or familiarity over time.
* Magic Flux Plugin : Links magical anomalies to awareness spikes, allowing “magically attuned” monsters to sense spell usage nearby.
* Combat Feedback Plugin : Feeds awareness levels into combat decision trees (e.g., flanking, retreating, prioritizing targets).

	Each plugin communicates through a standardized "Event Bridge", ensuring all data remains synchronized across systems.

---

	C. Integration Hooks

	For seamless interconnectivity with existing or future systems:

* AI Behavior Trees : Awareness thresholds trigger specific AI branches.
* Soundscape & Audio Manager : Awareness integrates real-time sound propagation values.
* Weather & Lighting System : Visibility dynamically updates according to ambient lighting and environmental factors.
* Quest & Event Manager : Awareness can initiate scripted events or mission states.
* Network Replication Layer : Awareness states sync efficiently across clients in multiplayer environments, maintaining consistent AI behavior.

---

	D. Future-Proofing and Scalability

	Designed with future game expansions in mind:

* Supports region-based scaling, where awareness rules differ across zones (e.g., dense jungles vs. underground ruins).
* Accommodates dynamic learning AI — monsters could evolve awareness based on historical player encounters.
* Facilitates cross-faction awareness pools, influencing global world states (e.g., increased monster vigilance after major raids).
* Allows runtime tuning through debug console or admin tools for live balance adjustments.

---

	8. Debugging & Tools

	Robust debugging utilities are integrated to help designers, testers, and developers fine-tune awareness behaviors in live or development environments.

---

	A. Awareness Debug HUD

	A visual overlay tool displaying per-monster awareness parameters in real-time:

* Awareness Level Bar (Idle → Suspicious → Alert).
* Current detection type engaged (Sight / Sound / Scent / Magic).
* Source direction of the latest awareness trigger.
* Awareness decay rate visualization (timers and reset state).
* Group awareness links (highlighted in color-coded lines between entities).

	Developers can toggle the overlay using console commands (e.g., `/debug_awareness on`).

---

	B. Logging & Telemetry

	Comprehensive awareness logging assists in performance and behavioral debugging:

* Event Logs : Each awareness spike event is timestamped with source data (player, noise type, position).
* Telemetry Stats : Monitors average awareness CPU cost, active awareness nodes, and performance spikes.
* Behavioral Analytics : Tracks false positives, awareness reaction times, and threshold tuning accuracy.

	These logs can be filtered per zone, monster type, or event type.

---

	C. Developer Commands

	Quick-access developer tools allow real-time manipulation of awareness behavior:

* `/set_awareness <value>` — manually sets awareness for a target entity.
* `/trigger_awareness <event>` — simulates an awareness spike (e.g., sound, visual).
* `/link_awareness_group <id>` — creates shared awareness groups for testing multi-mob reactions.
* `/reset_awareness_all` — resets the system to baseline values.

	These tools make debugging large encounters or faction-based AI behaviors faster and more predictable.

---

	D. Visual & Audio Feedback Tools

	For testing sensory ranges and player stealth systems:

* Cone Visualization : Draws line-of-sight and hearing radii directly in the environment.
* Heatmap Mode : Displays awareness sensitivity zones across the map.
* Audio Test Mode : Plays sound cues to simulate player actions or environmental disturbances.

	This ensures accurate calibration of sensory mechanics and player stealth interactions.

---

	E. Error Handling & Fallbacks

	The system incorporates failsafe layers:

* Awareness modules gracefully degrade (e.g., if sound system fails, defaults to visual only).
* Log alerts notify developers when awareness data desynchronizes or exceeds thresholds.
* Automatic "Recovery Reset" restores awareness to idle state if no stimuli are detected after X seconds.

---

	F. Optimization Profiling

	Built-in profiler hooks allow performance tracking:

* Awareness cycle cost per tick.
* Active entities and memory footprint.
* Awareness propagation latency (in milliseconds).
* Real-time graphing for live profiling sessions.

Profiling ensures awareness scaling remains efficient even during massive world events or raids.

---