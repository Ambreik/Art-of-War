			AI Decision Layer

	Path : `GAME/Systems/AI/AI_Decision_Layer.lua`

---

	1. Introduction

	The AI Decision Layer (AIDL) serves as the "cognitive brain" for all monsters, NPCs, and certain world entities. It translates sensory input—collected via 
subsystems like Awareness, Global Noise, Vision, and Smell—into actionable decisions. This layer determines whether an entity engages in combat, flees, hides, or 
performs situational behaviors.

	The AIDL is designed for flexibility and modularity, allowing each entity to have a unique decision profile while still following the core logic of the world’s 
AI rules. It ensures that monsters behave consistently with their type, environmental conditions, threat levels, and player interactions.

	Key Goals :

* Realistic and predictable monster behavior.
* Integration with other systems like Awareness, Night/Day Behavior, Rare Spawn triggers, and Global Combat.
* Facilitate dynamic encounters in dungeons, raids, and open-world zones.

---

	2. Core Mechanics / Functionality

	The "AI Decision Layer (AIDL)" serves as the cognitive engine of monsters/NPCs, translating sensory input into actionable decisions. It is modular, extensible, 
and designed to support multiple AI archetypes while interfacing with other systems (Awareness, Global Noise, Combat, Night/Day Behavior).

---

	Input Collectors

* Collects and prioritizes sensory data from multiple sources:
	* Line-of-sight (LOS) : Determines visible targets, including occlusion checks (walls, obstacles, terrain). Detection distance can scale with monster type, alertness state, or environmental lighting.
	* Noise detection : Monitors nearby sounds (player footsteps, spell casting, combat impacts) and assigns threat weights based on intensity and frequency.
	* Scent/Tracking : Certain monsters (beasts, predators, Bloodlust types) track players by pheromones, scent trails, or “blood markers.”
	* Magic detection : Detects spellcasting, enchanted items, or magical effects. Triggers special AI responses (e.g., prioritize spellcasters or evade).
* Integration : Data flows into the Threat Evaluation module and updates the memory layer.
* Example : A rogue using stealth may avoid LOS but generate faint noise; a Blood Beast type may detect this via scent tracking.

---

	Behavior Trees / State Machines

* Governs behavioral sequences based on input signals.
* Supports multiple AI archetypes:
	* Passive / Neutral: Patrols or idles until provoked.
	* Aggressive / Hostile: Engages nearest or highest threat target.
	* Support / Healer: Prioritizes allies’ needs over self-damage.
	* Boss / Rare Elite: Uses complex multi-phase decision sequences, event triggers, or scripted behaviors.
* Conditional transitions : Fight → Flee → Hide → Reset → Enrage, with interruptible actions.
* Example : A Tanky elite may hold aggro while ranged mobs execute support rotations. When low HP (<25%), it may switch to defensive stance or enrage.

---

	Threat Evaluation

* Computes dynamic priority targets using weighted criteria:
	* Proximity
	* Damage dealt
	* Debuff/CC applied
	* Noise or stealth detected

* Generates real-time aggro tables for single- or multi-target encounters.
* Supports multi-factor scaling :
	* Different AI types assign different weightings to input (e.g., healer NPC ignores minor damage, prioritizes debuffed allies).
* Example : If a rogue applies a bleed and a mage casts AoE, the AI calculates which source is the greatest threat.

---

	Memory Layer

* Stores short-term and intermediate-term information about targets and environment.
* Tracked data :
	* Last seen location
	* Recent interactions (damage, buffs, debuffs)
	* Temporary resistances, immunities, or cooldown states
* Enables context-aware reactions instead of purely reactive behavior.
* Memory decay : AI forgets outdated events over time, with thresholds adjustable by monster type or encounter scripting.
* Example : Rare elite remembers the player party that previously triggered it, affecting its next spawn engagement.

---

	Goal Manager

* Assigns objectives and prioritizes decisions according to hierarchy:
  1. Survival (self-preservation or regeneration)
  2. Damage mitigation (shielding allies, retreating)
  3. Attack highest-threat targets
  4. Flee or reposition strategically

* Customizable per monster type or scripted event :
	* A Tanky monster prioritizes maintaining frontline position.
	* A Vampiric type may prioritize draining key targets.
	* Bosses can dynamically alter goals mid-combat.

* Integration : Goal Manager interacts with Combat System, Awareness System, and Event Bridge for emergent behavior and encounter triggers.

---

	Additional Enhancements

* AI Modifiers : Environmental conditions (lighting, terrain, day/night cycle) modify behavior parameters dynamically.
* Adaptive Decision-Making : Repeated player strategies influence AI responses, potentially triggering rare mechanics or behavior shifts.
* Debugging & Testing : Threat tables, memory states, and decision priorities can be visualized for developers and QA.

---

	3. System Integration

	The "AI Decision Layer (AIDL)" does not operate in isolation; it interfaces seamlessly with multiple world systems to produce intelligent, context-sensitive 
monster behavior. This section outlines these interactions and integration points.

---

	Awareness & Perception Systems

* Receives sensory input from "Monster Awareness System", including:
	* Line-of-Sight (LOS)
	* Noise detection (Global Noise System)
	* Scent/Tracking mechanics
	* Magic detection

* Provides feedback to adjust threat evaluation and memory layers dynamically.
* Example : A Blood Beast in a dense forest may detect players by scent despite being outside LOS, triggering an ambush behavior.

---

	Global Noise System

* Acts as a central hub for all sound-based inputs.
* AIDL subscribes to events like:
	* Player footsteps, spellcasting, environmental sounds
	* Combat noises from other monsters

* Adjusts AI reactions based on sound intensity, frequency, and source.
* Example : Rare monsters respond to a loud AoE spell or door-breaking event even if players are hidden.

---

	Night/Day Behavior System

* Modifies AI thresholds and decision priorities based on time of day :
	* Night: Certain monsters gain bonuses (damage, stealth detection, mobility)
	* Day: Reduced aggression or alternative patrol patterns

* AIDL dynamically recalibrates behavior trees according to lighting, season, or special world events.
* Example : Predatory Night Monster may enter Ambush State after sunset, prioritizing stealth kills.

---

	Global Combat System

* Integrates combat rules and attack types (AoE, Damage Over Time, Burst, etc.).
* AIDL evaluates:
	* Threat priority based on damage dealt
	* Effectiveness of attacks (elemental resistance, armor, immunities)
	* Cooldowns and ability sequencing

* Example : Vampiric monster targets players with highest incoming threat while maintaining optimal resource drain.

---

	Event Bridge / Quest Manager

* Connects AI actions to scripted events or world quests:
	* Boss behaviors trigger dungeon mechanics
	* Rare spawns initiate server-wide notifications

* Enables dynamic event reactions, making AI part of world storytelling.
* Example : Defeating a rare elite may unlock quest objectives or spawn environmental hazards nearby.

---

	Network Replication Layer

* Ensures AI states are synced across clients in multiplayer environments.
* Supports:
	* Threat tables
	* Memory layer states
	* Dynamic goal assignments

* Result : Players experience consistent AI behavior regardless of who triggered combat.

---

	Extensibility Points

* Modular hooks allow:
	* New sensory inputs (e.g., environmental magic, traps)
	* Integration with additional world systems (weather, territory control)
	* Custom scripted behaviors for unique monsters or bosses

---

	Debugging & Tool

* Visualizations and logging tools allow developers to:
	* Track AI decisions in real time
	* Monitor threat tables and memory decay
	* Test interaction between systems without affecting live servers

---

	4. Situational Applications

	The "AI Decision Layer (AIDL)" is designed to adapt to a wide range of scenarios, ensuring intelligent, immersive monster behavior across all encounter types. 
	Below are key applications:

---

	4.1 Solo Monster Encounters

* Small groups or lone monsters rely heavily on threat evaluation and memory layers.
* Behavioral Examples :
	* Patrol monsters detect and track a single player using LOS, noise, and scent.
	* Skillable monsters choose abilities strategically, maintaining distance or using cooldowns efficiently.

* Adaptation : Bosses and rare monsters adjust movement and defensive patterns to counter solo players’ strategies.

---

	4.2 Group / Party Encounters

* AI evaluates multiple targets simultaneously, prioritizing by:
	* Damage dealt
	* Proximity
	* Debuffs applied
	* Noise generated

* Behavioral Examples :
	* Tanky monsters hold front line, drawing aggro.
	* Berserk or Vampiric monsters target high-threat DPS players.
	* Skillable monsters sequence abilities for maximum impact on the group.

* Adaptation : AI may coordinate minion summoning or environmental hazards to challenge parties.

---

	4.3 Boss / Rare Elite Encounters

* Integrates multi-phase combat and advanced mechanics:
	* Conditional abilities triggered by HP thresholds
	* Enrage timers
	* Environmental interactions

* Behavioral Examples :
	* Skull monsters use "Shake Skill" to debuff all attackers.
	* Rare spawn monsters respond to player actions or global events.

* Adaptation : Threat evaluation prioritizes high-impact targets while maintaining defensive positioning.

---

	4.4 Environmental & Event-Based Scenarios

* AIDL interfaces with "Global Environment System" and "Event Bridge".
* Behavioral Examples :
	* Monsters react to weather: storms reduce visibility, triggering ambush behaviors.
	* Dynamic traps, terrain hazards, or day/night cycles influence aggression and patrol routes.

* Adaptation : Certain monsters only become active during specific world events, seasonal conditions, or quest triggers.

---

	4.5 Stealth, Ambush & Camouflage

* AI responds intelligently to players attempting stealth or invisibility.
* Behavioral Examples :
	* Ambush State monsters detect hidden players via noise or scent, breaking concealment.
	* Monsters with camouflage adjust aggression thresholds based on visibility and player proximity.

* Adaptation : Rare monsters may spawn or reveal themselves only after specific triggers, enhancing world immersion.

---

	4.6 Adaptive Combat Strategies

* AI uses situational awareness to adjust behavior:
	* Health-based mechanics (Berserk, God, Vampiric)
	* Area control (Tanky or StoneSkin monsters anchoring locations)
	* Tactical retreats (Coward type monsters, repositioning during combat)

* Example : Vampiric monster drains HP from high-threat target, switches to a weaker target if resources are low.

---

	4.7 Multiplayer & Networked Encounters

* AI states and decisions are replicated across all clients, ensuring consistent combat behavior.
* Behavioral Examples :
	* Rare elite monster targeting remains synchronized across a party or raid.
	* Global aggro tables allow multiple players to engage without desync.

* Adaptation : AI adjusts based on the number of players or party composition, enabling scalable encounters.

---

	Extensibility

* Situational application modules are configurable for:
	* Dungeon, raid, or open-world encounters
	* Special events (world bosses, mythic spawns)
	* Integration with newly developed monster types or mechanics

---

	5. Systemic Impact

	The "AI Decision Layer (AIDL)" serves as a central hub connecting multiple systems, ensuring that monster intelligence dynamically shapes gameplay, encounters, 
and world consistency. Its impact spans core mechanics, environmental systems, and player interactions.

---

	5.1 Monster Awareness System

* AIDL consumes input from "Global Noise System", vision, scent, and magic detection.
* Determines detection, aggro, and alert states.
* Example : A stealthy player moving near a monster will trigger partial detection based on noise, leading to cautious behavior 
(investigating, moving toward, or ambushing).

---

	5.2 Health & Resource Mechanics

* Integrates with "Health Regeneration" and "Resource Draining mechanics".
* Example : Vampiric monsters drain HP, Mana, Stamina, or Rage intelligently, targeting high-threat players or low-resource targets.
* Health-based behaviors (Berserk, God type mechanics) trigger dynamically through the AI decision process.

---

	5.3 Combat Systems

* Influences "Dynamic Aggro & Targeting", Threat Tables, and Adaptive Combat Mechanics.
* Coordinates "Minion Summoning / Invoker Mechanics" in multi-phase encounters.
* Supports "Damage Reflection / StoneSkin / Threshold Damage Reduction" by determining timing and target priority.

---

	5.4 Environmental & Event Systems

* Interacts with "Global Environment System" :
	* Day/Night cycles
	* Weather effects (storm, fog, lighting)
	* Terrain hazards

* Integrates with Event Bridge / Quest & Event Manager :
	* Triggers rare spawns, scripted world events, or environmental interactions

* Example: Ambush monsters spawn only in low-light conditions or near specific environmental triggers.

---

	5.5 Player Interaction & Challenge

* Adaptive AI ensures player skill and strategy influence outcomes.
* Monitors group composition, stealth attempts, and resource usage.
* Example : Multi-player parties face dynamic threat management: bosses prioritize DPS players, healers are targeted for disruption, and tanky monsters absorb 
frontline attacks.

---

	5.6 Multiplayer & Network Replication

* AIDL synchronizes AI states across clients:
	* Aggro tables, health thresholds, ability usage
	* Event-triggered behaviors

* Ensures consistent world-state experiences in multiplayer or server-wide events.

---

	5.7 Extensibility

* AIDL impacts future systems:
	* Can integrate new monster types and mechanics
	* Interfaces with additional sensory inputs (sound, aura, environmental cues)
	* Scalable to dungeons, raids, and world bosses

---

	5.8 Debugging & Analytics

* System logs and analytics capture:
	* Threat table decisions
	* Target selection reasoning
	* Ability choice patterns

* Useful for balancing encounters, debugging AI behaviors, and tuning monster difficulty.

---

	6. Extensibility

* New monster types can be added with minimal modifications.
* Allows scripting of custom behaviors for quests, raids, and world events.
* Easily integrates new sensory inputs (e.g., fire vision, sound-based tracking, or environmental awareness).

---

	7. Debugging & Tools

* Visualization tools : Show AI decision trees and target priorities in real-time.
* Logging : Record threat evaluation, decision transitions, and memory states for testing.
* Simulation mode : Test AI in isolated environments without full server load.

---