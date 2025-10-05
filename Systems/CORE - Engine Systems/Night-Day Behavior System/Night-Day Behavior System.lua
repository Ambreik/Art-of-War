			Night/Day Behavior System

	Path : `GAME/Systems/Night_Day_Behavior_System.lua`

---

	1. Introduction

	The "Night/Day Behavior System" manages the dynamic changes in monster behavior,spawn patterns, and environmental interactions based on the in-game time of day.
	This system ensures that the game world feels alive, responsive, and strategically engaging, encouraging players to adapt to the shifting conditions.

	Key objectives:

* Modulate monster activity according to day/night cycle.
* Introduce rare or special night-only or day-only monsters.
* Adjust monster stats, abilities, and aggression depending on time.
* Influence player strategy, encouraging preparation for night encounters or exploiting day vulnerabilities.
* Support environmental effects that interact with day/night phases (e.g., reduced visibility, stealth bonuses).

---

	2. Core Mechanics / Functionality

* Time-Based Modifiers :
	* Monsters have specific behavior sets that trigger depending on the in-game clock.
	* Includes aggression levels, spawn density, movement speed, and ability usage.

* Dormant & Ambush States :
	* Monsters can enter a "Dormant State" during certain phases (e.g., lying on the ground at night), indicated visually (e.g., “Zzz” effects).
	* Ambush-capable monsters adjust position or stealth behavior to surprise players during specific times.

* Rare Spawns :
	* Certain monsters or elite encounters are restricted to night or day, offering unique loot, challenges, or quests.
	* Can include environmental triggers or player-driven events to initiate rare spawn conditions.

* Environmental Adjustments :
	* Visibility, lighting, and stealth mechanics are dynamically adjusted.
	* Interaction with other systems like "Global Environment System" ensures consistency in weather, lighting, and terrain effects.

---

	3. System Integration

* Monster AI Layer :
	* Links with the AI decision layer to dynamically select behavior patterns based on the time of day.
	* Enables monsters to switch between passive, aggressive, or ambush tactics.

* Global Environment System :
	* Receives input from environmental conditions (weather, lighting, terrain) to adjust monster visibility and activity.

* Event & Quest Triggers :
	* Time-specific quests, dungeon events, or monster spawns rely on the system for activation.

* Player Systems :
	* Player detection, stealth, and tracking mechanics (e.g., "Global Noise System") interact with day/night states.

---

	4. Situational Applications / Dynamic Behavior Adjustments

	This section defines how the system dynamically alters monster behavior and game situations based on time-of-day changes:

* Aggression Scaling :
	* Certain monsters become more aggressive at night or less aggressive during the day.
	* Adjusted attack patterns, spell usage, or ranged vs melee prioritization.

* Spawn Variations :
	* Day/night cycle can alter spawn rates for common monsters or introduce rare spawns.
	* Night-specific monsters may patrol previously safe areas or inhabit new locations.

* Ability Modifiers :
	* Cooldowns, damage output, or special mechanics (like stealth or ambush) may be boosted or reduced depending on time.
	* Example: a Night Monster’s "Ambush State" triggers only after dusk.

* Environmental Interaction :
	* Reduced visibility or enhanced shadows at night increase player detection difficulty.
	* Players may gain bonuses or penalties interacting with day-only or night-only zones.

* Event Interaction :
	* Time-sensitive events, world bosses, or quests can be linked to day/night triggers.
	* Rare mobs may appear only under certain conditions (e.g., nighttime + weather effect).

---

	5. Systemic Impact / Influence on Game Balance & Player Strategy

	The Night/Day Behavior System significantly influences game balance and strategic decision-making:

* Player Engagement :
	* Players must consider the time of day when planning exploration, combat, or farming activities.
	* Encourages preparation for night encounters, such as carrying torches, anti-ambush items, or group coordination.

* Monster Challenge Tuning :
	* High-risk monsters appear at night to increase challenge and reward.
	* Daytime periods allow players to recover, prepare, or farm less aggressive monsters.

* Integration with Loot & Rewards :
	* Rare loot or quest items can be tied to time-restricted monsters or events.
	* Night-only spawns may drop exclusive items or trigger world events.

* Game World Immersion :
	* Players experience a living world where time and environment affect outcomes.
	* Encourages emergent gameplay scenarios such as strategic ambushes or night raids.

* Balance Considerations :
	* Aggression and spawn scaling must be tuned to prevent frustration or exploitative farming.
	* Dynamic behavior ensures a fair challenge for solo players, parties, and high-level groups.

---

	6. Extensibility / Adding New Behaviors or Monsters

	The system is designed to allow easy addition of new behaviors, monsters, and interactions without altering the core mechanics:

* Monster Behavior Modules :
	* Developers can attach day/night behavior scripts to any monster type.
	* Modules define aggression, ability modifiers, and special states (e.g., Dormant, Ambush).

* Event Hooks :
	* New world events, quests, or rare monster spawns can be integrated via hooks triggered by time-of-day changes.
	* Supports multi-condition triggers: time + weather + player proximity + quest state.

* Scalable Difficulty :
	* Behavior modules can adjust dynamically based on player level, party size, or regional progression.
	* Ensures a consistent challenge while keeping encounters fresh.

* Cross-System Integration :
	* Can be linked with the "Global Noise System", "Global Combat System", or "Monster Awareness System" for emergent gameplay.
	* Developers can define which mechanics are active at day vs night.

* Custom AI States :
	* Allows for adding custom AI routines for stealth, ambush, or retreat behaviors based on the time cycle.
	* Flexible state machine approach ensures extensibility across all monster classes.

---

	7. Debugging & Tools / Monitoring & Testing Day/Night Mechanics

	Robust debugging and development tools are crucial to maintain consistency and ensure correct system behavior:

* Time Simulation Tools :
	* Developers can simulate day/night cycles to test monster behavior changes without waiting for real-time cycles.

* Behavior Logging :
	* Logs monster state changes (Dormant, Ambush, Aggressive) with timestamps for debugging.
	* Helps identify inconsistencies or edge cases in AI transitions.

* Spawn & Event Testing :
	* Tools allow temporary enabling/disabling of rare spawns or time-triggered events.
	* Facilitates controlled testing of loot, rewards, and player interactions.

* Visualization :
	* Optional in-game overlays to display monster perception range, aggro radius, and day/night modifiers.
	* Useful for tuning AI, adjusting spawn rates, or balancing combat difficulty.

* Integration Checks :
	* Verifies that dependent systems (Global Noise, Awareness, Combat) are correctly responding to day/night triggers.
	* Ensures multiplayer synchronization and consistent AI behavior across clients.

---