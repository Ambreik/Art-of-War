			Non-Playable Character (NPC)

		Section I – Introduction

	Definition : An "NPC (Non-Player Character)" is any character in the world game that is not controlled by human players. These characters are generated and 
controlled by the game server and perform a variety of roles throughout the game world. NPCs can be neutral, friendly, or aligned with specific factions 
(e.g., Knight Empire, Pindar Empire, Outlaw faction). Players cannot attack NPCs from their own faction unless officially at war with that faction, as defined in 
the "Reputation System". Attacking allied or neutral NPCs without justification results in the player becoming a "Traitor", triggering penalties such as debuffs or 
reputation loss.

	Purpose of the NPC Core File : This file defines the base structure, attributes, behaviors, and system integrations for all NPCs. It acts as the central 
blueprint for creating, managing, and extending NPCs of all types, providing a modular and scalable framework for the game’s ecosystem.

	Roles and Capabilities :
NPCs are not limited to simple interactions. They can:

* Trade with players, sell items, or manage inventory.
* Train players in skills, classes, or professions.
* Provide Quests or guide players through storylines.
* Craft or Offer Services, including mounts, pets, or teleportation.
* Engage in Combat, defending settlements or acting as skillable entities.
* Interact Dynamically with the environment, day/night cycles, weather, events, and other NPCs.

	System Integration :
NPCs are fully integrated with the game’s core engine systems, enabling:

* Realistic behaviors and AI responses
* Dynamic environmental reactions
* Multiplayer synchronization and networking
* Reputation-based interactions and consequences
* Event-driven actions and responses

--------------------------------------------------------------------------------------------------------------------------------------------------------------------
	
		Section II – NPC Types

	NPCs in the world game are categorized based on their roles, functions, and interactions with players. Each type has specific duties, rank, and behavior
patterns. While some NPCs may fulfill multiple roles, this classification provides a clear framework for their design, integration, and gameplay impact.

---

	1. Guardians / Guards

* Location : Found in settlements, patrolling entrances, or walking the streets.
* Role : Protect settlements from hostile creatures and rogue players. Some may offer guidance, quests, or minor services.
* Behavior : Defend settlements and assist players under attack. Respond dynamically to faction reputation and player actions.
* Rank : Typically Rank II–III, depending on the settlement size.

---

	2. Vendors

* Role : Trade goods such as consumables, weapons, armor, crafting materials, and special items.
* Interactions : Players can buy or sell items; vendors may offer hints, region-specific guidance, or quests related to restocking.
* Rank : Usually Rank II; higher ranks may offer rare or exclusive items.

---

	3. Trainers

* Role : Help players develop skills by teaching new abilities or enhancing existing ones.
* Rank : Typically Rank IV; higher-tier trainers may provide specialized training or rare quests.
* Types :
	* Class Trainers : Teach class-specific skills at certain levels.
	* Profession Trainers : Offer knowledge, tools, and progression in chosen professions; may also act as vendors for profession-specific goods.

---

	4. Store Managers

* Role : Manage in-game stores where players buy or sell items.
* Rank : Rank II–III, depending on the quality and rarity of the goods offered.
* Special Note : Some store managers provide quests to restock items.

---

	5. Tavern Keepers

* Role : Provide shelter, healing, and occasionally special quests or information.
* Interaction : Players can rest, heal, or receive region-specific guidance.
* Rank : Rank III, higher for specialized taverns.

---

	6. Quest Givers

* Role : Offer quests that advance the main storyline or provide side objectives.
* Rank : Rank III–IV, depending on the significance of their quests.
* Interactions : Quests may be tied to NPC reputation, world events, or player alignment.

---

	7. Caretakers (Horsekeeper, Petkeeper, Mountkeeper)

* Role : Responsible for the care, customization, and management of mounts, pets, and companions.
* Rank : Rank III for general care; Rank IV–V for specialized services or rare companions.

---

	8. Pedestrians

* Role : Non-functional NPCs, typically civilians or background characters in settlements.
* Rank : Rank I; they do not offer trade, combat, or quest services.

---

	9. Mission Specialists

* Role : Provide specialized missions or time-limited challenges outside main or side quests.
* Rank : Rank IV–V, depending on mission complexity.
* Interactions : Offer unique rewards such as rare items, currency, or titles.
* Example : Tactical Specialist for battle challenges; Researcher for gathering rare resources.

---

	10. Event NPCs

* Role : Linked to in-game events, seasonal activities, or live world events.
* Rank : Rank III–IV, based on event importance.
* Interaction : Players can access limited-time content, exclusive cosmetics, mini-games, or PvP challenges.
* Example : Holiday Merchant, Festival Host.

---

	11. Specialist NPCs

* Role : Provide advanced access to profession-related features, rare crafting recipes, or unique roleplay options.
* Rank : Rank V, representing higher-tier professions or exclusive services.
* Interactions : Unlock high-level crafting, dungeon access, reputation boosts, or unique customizations.
* Example : Potion Master (advanced alchemy), Master Enchanter (legendary enchantments).
* Note : These are often "Profession Trainers".

---

	12. Lore Keepers

* Role : Serve as repositories of the world’s lore, history, and legends. Provide lore-based quests and insights.
* Rank : Rank III or higher.
* Interactions : Unlock hidden quests, secrets, or new lore entries.
* Example : Archivists, Historians, Elder Scribes.

---

	13. Teleport NPCs

* Role : Facilitate travel between locations in exchange for predefined currency.
* Rank : Rank III or higher.
* Interaction : Players can teleport to other regions; additional functions may vary per NPC mechanics.


--------------------------------------------------------------------------------------------------------------------------------------------------------------------

		Section III – NPC Mechanics

	NPCs in the world game are not static; they are dynamic entities that interact with the environment, the player, and other systems. Their mechanics define how 
they behave, respond, and provide services, forming an integral part of the world’s ecosystem. NPC mechanics encompass interaction rules, AI behavior, system 
integration, environmental responsiveness, and social dynamics.

---

	1. NPC Alignment and Player Interaction

* Neutral or Friendly NPCs :
	Represented with a "bag icon" (for vendors) or "talk bubble" (for quest givers). Players must interact with them (typically via dialogue) to unlock their 
services. The cursor dynamically changes depending on NPC availability, indicating whether the NPC is accessible or out of range.
* Hostile NPCs :
	Categorized as monsters or faction-opposing units. Hostile NPCs may automatically attack players who enter their territory or who belong to enemy factions. 
	Example: In “Zonen,” NPCs are hostile to Knight players and attack on sight.
* Unique Teleport NPCs :
	Certain neutral NPCs, like "Traveller Guy" or "Serena", act as teleporters, providing fast travel between locations or exclusive access to marketplaces.

---

	2. NPC Death and Respawn Mechanics

* Skillable NPCs :
	Guards, Trainers, and other combat-capable NPCs can be killed by players. Respawn times vary:
	* Randomly between 30 minutes and 3 hours for general NPCs.
	* 10 seconds to 10 minutes for guards in major cities.
    Players responsible for killing NPCs may receive debuffs specific to that NPC type.

* Reputation Impact :
	Killing friendly NPCs decreases a player’s reputation with their faction and settlement, reducing PvP ranking grades. Conversely, killing enemy NPCs may 
increase reputation within the player’s faction.

* No Loot or Experience :
	Killed NPCs do not drop gold, items, or provide experience points. The focus remains on "Reputation", world consequences, and narrative progression.

---

	3. Environmental and Contextual NPC Behavior

* Day/Night Cycles :
	NPCs adjust behavior depending on the time of day. For instance, some vendors or trainers are only available during specific hours.

* Faction-Specific Behavior :
	NPCs react differently based on player faction. Allied NPCs may assist, while opposing NPCs behave aggressively.

* Legendary NPC Interactions :
	NPCs recognize "Legendary Players", offering special greetings, quests, or rewards.

* Voice Chat and Greetings :
	Major NPCs, such as tavern keepers or city trainers, may have voice-acted greetings or offer dynamic interactions via audio cues.

* Dynamic Actions & Environment Awareness :
	NPCs respond to their surroundings: taking cover during combat, warning players of nearby threats, or reacting to environmental conditions 
	(storms, terrain hazards, or seasonal events).

---

	4. Advanced AI and Social Mechanics

* Advanced NPC AI :
	NPCs can be programmed with complex behavior trees:
	* Friendly NPCs adjust interactions based on player reputation.
	* Hostile NPCs can call for reinforcements, adapt combat tactics, or flee strategically.
	* NPC emotional states (happy, fearful, angry) influence dialogue, trading, and combat.

* Dialogue Branching & Dynamic Conversations :
	NPC dialogue may branch based on player actions, reputation, or quest history. Example: A Guard Captain may act hostile if the player previously attacked city 
guards.

* NPC Morale System :
	NPC behavior can shift based on world events or player actions:
	* Tavern Keepers may become more welcoming after players complete local quests.
	* Guards may act more aggressively against players with negative faction reputation.

* Social NPC Interactions :
	NPCs may interact with each other within settlements, forming friendships, rivalries, or dynamic events. For instance:
	* Blacksmiths argue over crafting failures.
	* Guards may provide advice to travelers or respond to disputes.

---

	5. NPC Special Features and Services

* Loot and Treasure NPCs :
	Some NPCs offer treasure maps, rare loot rewards, or instanced dungeon participation (e.g., Raid Leaders, Dungeon Masters).

* Summonable NPCs :
	Certain NPCs can be summoned temporarily for quests or gameplay mechanics. Example: a Bank or Store Keeper can appear through a summoning item.

---

	6. World Event Interactions

* War NPCs :
	NPC factions may dynamically shift allegiances or grant rewards during sieges, territory wars, or faction battles.

* Reputation-Based Changes :
	NPC dialogue, quest availability, and trade offerings may change based on the player’s faction alignment or global world events.

* Seasonal Events :
	Event NPCs react to holidays, festivals, or game anniversaries, offering time-limited quests, rewards, and cosmetics.

---

	7. Player Alignment and Reputation Influence

* Faction Alignment :
		NPCs adjust dialogue, quests, and services based on the player’s faction or criminal status.
  Example: Outlaws may gain special missions, while Knights receive assistance or training from Paladin NPCs.

* Reputation-Based Services :
	Higher reputation can unlock discounts, rare items, exclusive quests, or advanced services from NPCs.

---

	8. Integration with Core Systems

	NPC mechanics are tightly connected to the game’s core engine, including:

* AI Decision Layer – Determines reactions, patrols, and combat behavior.
* Global Noise System – NPCs respond to environmental sounds or player actions.
* Quest & Event Manager – Controls interactions with storylines, side quests, and dynamic events.
* Reputation System – Modulates access to services, dialogue changes, and faction behavior.
* Global Combat System – Governs combat outcomes, skill usage, and threat assessment.
* Day/Night & Weather Systems – Influences NPC availability and routines.
* Travel / Teleport Systems – For NPCs offering fast travel or event-related transport.

---

	9 . NPC Scheduling / Routine Details

* Mention that NPCs may follow daily or weekly schedules, including:
	* Vendors opening and closing shops.
	* Trainers appearing at specific hours.
	* Guards changing patrol routes dynamically.
* Schedules can be influenced by world events, weather, or player actions, making the world feel alive.

---

	10. Interaction Distance & Proximity Mechanics

* NPCs can have interaction ranges :
	* Friendly NPCs require the player to be within a certain distance for dialogue or trade.
	* Hostile NPCs may detect players based on proximity, line-of-sight, or stealth mechanics (integration with Stealth & Camouflage System).

---

	11. Combat & Skill Mechanics

* Skillable NPCs may use combat abilities, spells, or environmental interactions.
* Guards or hostile NPCs can coordinate, call for reinforcements, or retreat based on threat assessment.
* Some NPCs may adapt behavior based on player level or group size.

---

	12. Dynamic Quest/Service Unlocks

* NPCs could unlock new services, quests, or items based on world state or player achievements.
* Example: A Vendor may sell rare items only after a seasonal event or once the player’s reputation reaches Rank III+.

---

	13. AI Awareness & Environmental Triggers

* NPCs can react to environmental triggers :
	* Natural hazards like storms, fire, or flooding.
	* Monster spawns in nearby zones.
	* Player actions affecting settlement stability.

---

	14. NPC Memory & Event History

* Some NPCs could remember past player interactions, affecting future behavior:
	* Hostile NPCs may target repeat offenders.
	* Trainers may refuse service if a player attacked allied guards.
	* Tavern Keepers may provide discounts or gifts to frequent visitors.

---

	15. Group & Social Mechanics

* NPCs may belong to groups or factions within the world:
	* Guards forming squads with coordinated patrols.
	* Pedestrians reacting socially to events (crowding, celebrations, arguments).
	* Dynamic NPC alliances or rivalries impacting behavior.

---

	16. Player Feedback / Immersion

* NPCs can give visual or audio cues :
	* Gestures or animations indicating availability or hostility.
	* Audio hints for hidden quests, rare events, or nearby dangers.

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

		Section IV – System Integrations

	NPCs in the world game are deeply integrated with core engine systems, ensuring that their behavior, interactions, and services are consistent, dynamic, and 
meaningful. This section outlines how NPCs interface with each system and how these integrations shape gameplay.

---

	1. Reputation System

* Purpose : Tracks player standing with factions, settlements, or regions.
* NPC Integration :
	* Friendly NPCs provide services based on player reputation.
	* Killing faction-aligned NPCs triggers Reputation loss and debuffs.
	* Reputation affects quests, discounts, exclusive items, and alignment-based dialogue.
* Systems Connected : Profession Trainers, Quest Givers, Guards, Vendors, Special NPCs.

---

	2. Global Noise System

* Purpose : Governs NPC awareness of sound events in the environment.
* NPC Integration :
	* Skillable or hostile NPCs respond to player actions (e.g., footsteps, combat sounds).
	* Guards and Patrols can investigate disturbances, triggering dynamic reactions.

---

	3. AI Decision Layer

* Purpose : Controls NPC decision-making using behavior trees and AI logic.
* NPC Integration :
	* Determines dynamic actions: defending, fleeing, calling reinforcements, interacting with players.
	* Supports advanced AI behaviors like emotional states, social interactions, and event responses.

---

	4. Event Bridge System

* Purpose : Links NPCs to dynamic events or world triggers.
* NPC Integration :
	* Event NPCs and Mission Specialists react to festivals, sieges, or seasonal events.
	* Triggers special dialogue, quests, or limited-time services.

---

	5. Global Combat System

* Purpose : Governs combat rules, damage, and PvP interactions.
* NPC Integration :
	* Skillable NPCs (Guards, Trainers, Teleport NPCs if attacked) participate in combat following faction alignment.
	* Determines NPC respawn, damage mitigation, and debuff application on players.

---

	6. Global Environment System

* Purpose : Provides environmental data and conditions for regions.
* NPC Integration :
	* NPC behavior adjusts based on weather, terrain, or seasonal changes.
	* Example: Frozen Territory NPCs may respond to storms or snowfall.

---

	7. Monster Awareness System

* Purpose : Tracks NPC detection of hostile entities.
* NPC Integration :
	* Guards or skillable NPCs react dynamically to nearby monsters or hostile players.
	* Ensures realistic patrols, defensive actions, and world immersion.

---

	8. Network Integration & Replication Systems

* Purpose : Synchronizes NPC state, actions, and interactions across clients.
* NPC Integration :
	* Ensures NPC dialogue, combat, movement, and events are consistent for all players.
	* Supports multiplayer interactions with dynamic NPC AI and world events.

---

	9. Night-Day Behavior System

* Purpose : Handles NPC schedules and availability.
* NPC Integration :
	* NPCs like vendors, trainers, or quest givers may be active only during specific times.
	* Regional Merchants’ schedules and rare spawn timers are fully supported.

---

	10. Player Interaction System

* Purpose : Manages player-NPC engagement (talk, trade, quests, skill learning).
* NPC Integration :
	* Determines available actions (trade, heal, teleport, training).
	* Handles UI cues like icons, availability range, or interaction feedback.

---

	11. Quest & Event Manager System

* Purpose : Provides quest logic, triggers, and event management.
* NPC Integration :
	* Quest Givers, Event NPCs, and Mission Specialists rely on this system.
	* Supports dynamic quest rewards, storyline progression, and reputation effects.

---

	12. Server Combat Logs System

* Purpose : Records combat interactions for auditing, balancing, or PvP tracking.
* NPC Integration :
	* Logs player actions against NPCs for reputation, debuff applications, and event triggers.

---

	13. Stealth & Camouflage System

* Purpose : Governs detection and visibility.
* NPC Integration :
	* Skillable NPCs may respond to stealth mechanics or hidden player actions.
	* Guards and patrol NPCs detect hidden players based on system rules.

---

	14. Weather & Lighting System

* Purpose : Impacts visual and environmental conditions.
* NPC Integration :
	* NPC behavior may vary with weather conditions (e.g., certain vendors unavailable in storms).
	* Provides immersion and environmental responsiveness.

---

	15. World Sync Layer System

* Purpose : Maintains consistent world state across players.
* NPC Integration :
	* Synchronizes NPC location, inventory, quests, and schedules.
	* Ensures regional merchants, event NPCs, and respawning NPCs behave consistently across all clients.

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

		Section V – NPC Attributes & Data Structure

	All NPCs in the world game share a set of core attributes, which define their behavior, interactions, and integration with the world systems. These attributes 
can be extended per NPC type to accommodate specialized mechanics, professions, or world events.

---

	1. Core Identifiers

* NPC_ID : Unique identifier for each NPC.
* Name : Displayed name in the world.
* Type : Category of NPC (e.g., Guard, Vendor, Trainer, Quest Giver, Event NPC, Teleport, Specialist).
* Faction : Alignment or faction association (Knight Empire, Pindar Empire, Outlaws, Neutral).
* Rank : Defines NPC power, authority, or service level (I–V).
* Unique_Flag : Indicates whether the NPC is unique or respawnable.

---

	2. Location & Navigation

* Spawn_Location : Default coordinates or region in the world.
* Patrol_Route : Predefined waypoints for guards or mobile NPCs.
* Respawn_Time : Time range for respawn after death.
* Interaction_Range : Distance required for dialogue, trade, or skill interaction.
* Teleport_Targets : For teleport NPCs, list of linked destinations.

---

	3. Core Stats

* Health (HP) : Maximum hit points.
* Mana / Energy (MP) : For skillable NPCs using abilities or magic.
* Combat_Level : Base power rating for threat assessment.
* Defense / Armor : Mitigation against attacks.
* Attack / Damage : Base combat damage for skillable NPCs.

---

	4. Behavior & AI Flags

* Is_Skillable : Determines if NPC can fight or use skills.
* Is_Patrol : Determines if NPC follows patrol routines.
* Aggro_Radius : Detection range for hostile behavior.
* Day_Night_Aware : Modifies behavior based on time.
* Environment_Aware : Triggers reactions to weather, events, or hazards.
* Reputation_Aware : Adjusts dialogue, service, or hostility based on player reputation.
* Quest_Giver : Flag indicating NPC provides quests.
* Vendor : Flag indicating NPC provides trade services.
* Trainer : Flag indicating NPC provides skill or profession training.

---

	5. Social & Event Attributes

* Dialogue_Sets : Multiple dialogue branches based on player alignment, reputation, or past interactions.
* Event_Participation : List of seasonal or world events NPC is involved in.
* Special_Interactions : Unique actions, summons, or rare rewards linked to the NPC.
* Morale / Emotion : Optional attribute to modify behavior dynamically (happy, fearful, angry).

---

	6. Systems Integration Pointers

* AI_Layer_Link : Reference to AI decision scripts or behavior trees.
* Combat_System_Link : Connection to combat routines and skill usage.
* Reputation_System_Link : Points to reputation checks and modifiers.
* Noise_System_Link : Enables NPC response to environmental or player-generated noise.
* Quest_System_Link : Connects NPC to active quests, missions, or event triggers.
* Network_Sync_Flag : Ensures NPC state, interactions, and events are replicated across all clients.

---

	7. Optional Attributes

* Loot_Drops : List of items, if applicable (mostly for Event or rare NPCs).
* Summonable_Item : Item that allows NPC to be temporarily summoned.
* Special_Abilities : Advanced skills, buffs, or spells usable in combat or interaction.
* Voice_Set : Audio clips for greetings, warnings, or dialogue.
* Appearance / Skin : Visual model or costume variations.

---

	8. Inventory, Stock, and Scheduling Mechanics

	Some NPCs, particularly Vendors and Regional Merchants,have dynamic inventories and spawn/availability patterns that add depth and rarity to items in the world.

	Regional Merchants

* Spawn Schedule : Appear randomly every 1–6 days in predetermined regions or continents.
* Duration : Remain active for a limited time before despawning.
* Goods : Sell rare, extremely rare, and “Item-Shop” items.
	* Stock is limited per item and often restricted to 1–2 purchases per account.
	* Encourage player exploration and competition for rare items.
* Interactions : Can offer special quests or temporary services during their appearance.
* Example : A merchant selling unique crafting materials or legendary consumables in Outland Territories for a short period.

	General Stores

* Daily Restocking : Inventory replenished every morning at 7 AM.
* Stock Limitations : Basic goods (like potions) are consistently stocked in main capitals, while regional stores may have limited quantities.
* Quest Integration : Some general stores provide quests to restock goods.
	* Players completing these quests can receive experience, gold, and sometimes rare items.
	* Example: Middlean Island – Capital City or port settlements in Outland Territories.
* Dynamic Inventory :
	* Certain stores may have goods that change between day and night.
	* Others vary stock by day of the week or special weekends, ensuring variety and replayability.

	Other Scheduling Considerations

* Patrols and Availability : NPCs such as Guards or Trainers may follow daily routines or patrol schedules.
* Seasonal/World Events : Some NPCs may only appear during specific world events, linking their inventory and availability to player-driven or global events.
* Interaction with Time Systems : Ties into **Day/Night and Weather Systems**, adjusting NPC behavior, shop availability, and services dynamically.

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

		Section VI – NPC Scheduling & Routines

	This section defines how NPCs move, appear, and interact based on time, world events, and environmental conditions. It ensures that NPCs feel alive and 
consistent with the game world.

	1. Daily and Weekly Schedules

* Vendors & Trainers : Appear at specific hours for trade or training services.
	* Example: General stores restock at 7 AM.
	* Some NPCs may operate only during day or night.

* Guards & Patrols : Follow predefined patrol routes or roaming behaviors.
	* Patrol routines can vary by settlement size, event, or faction alerts.

* Regional Merchants : Spawn randomly between 1–6 days, remain for a short time, then despawn.

	2. Seasonal & Event-Based Scheduling

* NPCs may appear only during festivals, holidays, or world events.
* Event NPCs provide quests, special goods, or limited-time rewards.
* World events may temporarily change NPC schedules (e.g., guards reinforcing cities during sieges).

	3. Spawn & Respawn Mechanics

* Skillable NPCs (Guards, Trainers) respawn based on:
	* Random timers (30 minutes – 3 hours) for regular NPCs.
	* Shorter timers (10 seconds – 10 minutes) in major cities for high-demand NPCs.
* NPCs that are killed may impose reputation penalties or debuffs on the player responsible.
* Respawn logic ties into "Network Sync" to ensure multiplayer consistency.

	4. Dynamic Stock and Inventory Timers

* General Stores : Daily restock at specific times.
* Regional Merchants : Randomized stock during limited-time appearances.
* Item Rotation : Some NPCs rotate items by day, night, or weekly cycles.

	5. Environmental & World Awareness

* NPCs adjust schedules based on environmental conditions:
	* Storms, snow, or extreme heat may modify patrols or service availability.
	* Certain NPCs may seek shelter or stop services during hazardous conditions.
* Integration with "Global Environment System" ensures NPCs react consistently across regions.

	6. Special Timed NPC Events

* Quest-triggered NPCs : Appear for a limited time after a player triggers an event or completes a quest.
* Legendary NPCs : May appear only under rare circumstances or for specific high-level players.
* Dynamic Interactions : NPCs can leave temporary notes, items, or affect world conditions while present.

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

		Section VII – NPC Quests, Services, and Profession Mechanics

	NPCs are not just background entities—they are primary drivers of player progression, interaction, and world engagement. This section details their functional 
contributions.

---

	1. Quests

* Quest Givers : NPCs that offer main storyline or side quests.
	* Rank III–IV, often tied to specific regions or events.
	* Quest availability can depend on player reputation, alignment, or previous actions.

* Special Missions : Mission Specialists provide time-limited, high-reward quests or challenges.
	* Rewards may include rare items, currency, or exclusive titles.

* Event-Linked Quests : Event NPCs grant quests during seasonal events, festivals, or world-changing occurrences.
* Lore-Based Quests : Lore Keepers may provide hidden or story-rich quests tied to world history.

---

	2. Services

* Vendors / Store Managers : Offer goods and trade services.
	* Stock levels, item rotation, and rare items are tied to daily schedules and inventory mechanics.
* Tavern Keepers : Provide resting, healing, and information services.
* Teleport NPCs / Travelers : Enable fast travel between locations in exchange for currency or quest items.
* Care Takers : Manage pets, mounts, and companions.
	* Services may include leveling, customization, or special abilities.

---

	3. Trainers & Profession Mechanics

* Class Trainers : Teach abilities, manage talent trees, and reset specialization.
	* May offer dual-specialization or advanced skill quests.

* Profession Trainers :
	* Teach gathering, crafting, and advanced professions.
	* Unlock recipes, tools, and quests as players progress in rank.
	* Can also act as vendors for profession-specific goods.

* Specialist NPCs : Provide rare, high-tier profession services, including legendary recipes, unique customizations, or reputation boosts.

---

	4. Reputation-Dependent Mechanics

* Certain services or quests unlock only after reaching specific reputation thresholds.
* Examples:
	* High-reputation players gain access to advanced crafting recipes or legendary mounts.
	* Low-reputation players may be denied service, attacked, or flagged for bounty quests.

---

	5. Dynamic and Conditional Interactions

* NPC dialogue, quest availability, and services can change based on:
	* Time of day : Some vendors or trainers are only available during certain hours.
	* Weekly rotation : Rare goods or quests may refresh on a schedule.
	* Environmental conditions : Certain quests or services may be disabled during storms or hazards.
	* Player alignment : Players aligned with opposing factions may experience hostility or limited access.

---

	6. Example NPC Mechanics

* Regional Merchants : Spawn rarely, sell extremely rare or Item-Shop goods, and may provide exclusive quests.
* General Vendors : Stock common goods daily, may involve players in restocking quests.
* Guards / Trainers : Skillable NPCs that can participate in combat, interact with player actions, or provide training/quests.
* Event NPCs : Time-limited quests and unique rewards tied to seasonal or live events.

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

		Section VIII – NPC AI & Behavior Enhancements

	NPCs in the world game are not static entities. They possess dynamic behavior that allows them to interact with players, the environment, and other NPCs in 
meaningful ways. This section outlines the AI systems and enhancements that define these behaviors.

---

	1. Advanced AI Systems

* Behavior Trees : Define NPC decision-making and responses to the environment, players, and events.
* Decision Layers :
	* Friendly NPCs may assist players, offer services, or provide guidance.
	* Hostile NPCs may attack, retreat, or call reinforcements depending on the situation.

* Emotional States : NPCs can exhibit emotions like happiness, fear, anger, or caution, influencing their actions.
* Threat Assessment : Skillable NPCs can evaluate nearby threats and adjust tactics accordingly.

---

	2. Dialogue Branching & Dynamic Conversations

* NPC dialogue can change depending on:
	* Player reputation or alignment
	* Past interactions or decisions
	* Time of day, weather, or world events

* Branching dialogue may unlock:
	* Quests
	* Special services
	* Unique rewards or story content

---

	3. Morale & Social Behavior

* NPCs may have morale levels affecting behavior:
	* High morale NPCs are more helpful or cooperative.
	* Low morale NPCs may flee, refuse service, or act aggressively.

* NPCs can interact with each other:
	* Example: A Blacksmith argues with a Craftsman, a Guard warns a Traveler.
	* Relationships between NPCs (friendships, rivalries) can influence their responses to players.

---

	4. Environment & Event Awareness

* NPCs respond to environmental conditions:
	* Weather: seek shelter during storms or snow.
	* Time: day/night behavior affects shop hours, patrols, and interactions.

* World Events: NPCs may change behavior during wars, sieges, or seasonal festivals.
* Dynamic NPC Actions:
	* Seek cover
	* Warn players of danger
	* Assist or defend against monsters or hostile players

---

	5. Specialized AI Features

* Voice Chat & Greetings : NPCs in major settlements may use audio greetings or provide voice-driven interactions.
* Legendary NPC Awareness : NPCs respond differently to Legendary Players, offering quests, special items, or altered behavior.
* Summonable NPCs : Certain NPCs can be temporarily summoned by players, responding dynamically to the summoner.

---

	6. Integration with Core Systems

* AI Decision Layer : Controls high-level NPC logic and prioritization of actions.
* Global Noise System : NPCs detect sound cues and react to player-generated noise.
* Global Environment System : NPCs adapt to weather, day/night cycles, and environmental hazards.
* Event Bridge System : Connects NPCs to quests, world events, and dynamic content triggers.

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

		Section IX – NPC Death, Respawn, and Reputation Effects

	NPC mortality is not just cosmetic—it directly impacts player progression, faction relationships, and world stability. This section formalizes the mechanics 
around NPC death, respawn, reputation effects, and the consequences applied to players.

---

	1. NPC Death & Respawn Mechanics

* Skillable NPCs (Guards, Trainers, certain Quest Givers) can be killed by players.
* Respawn Timers :
	* Random NPCs: 30 minutes – 3 hours
	* Major city Guards: 10 seconds – 10 minutes

* Respawn Logic :
	* Tied into the "World Sync Layer" and "Network Replication Layer" to ensure multiplayer consistency.
	* NPCs respawn at or near their original location, often resuming patrols or scheduled routines.

---

	2. Reputation Effects

* Killing friendly NPCs decreases "Reputation" with their faction, settlement, or region.
* Killing enemy NPCs may increase Reputation or PvP ranking within the player’s faction.
* Reputation effects influence:
	* Quest availability
	* Vendor prices and stock
	* Trainer services and profession progress

* Reputation changes can affect world events, such as faction territory control or alliances.

---

	3. Player Debuffs for NPC Aggression – “NPC Aggression Penalty”

* Name : "NPC Aggression Penalty"
* Purpose : Applied when a player kills a Neutral or Friendly NPC.
* Effects :
	* Reduced experience gain for a set duration
	* Vendors may provide fewer goods or worse prices
	* Quest givers may temporarily disable quests or interrupt main storyline progression
* Scaling :
	* Minor NPCs (Rank I) → small XP penalty
	* Mid-tier NPCs (Rank III) → moderate XP loss, vendor/quest impact
	* High-tier NPCs (Rank V / Legendary) → severe penalties, long duration, potential bounty triggers
* Duration : Configurable (e.g., 30 minutes to 24 hours)
* Stacking : Multiple kills may increase severity or duration
* Faction-Specific Modifiers : Killing NPCs of your own faction results in stronger debuff effects
* Notification : Players are informed when the debuff is applied

---

	4. Special Considerations

* Faction-Specific Behavior : Allied NPCs may become hostile, issue bounties, or deny access to services.
* Legendary Players : Special handling may adjust penalties depending on reputation or past actions.
* Event NPCs : Killing rare or time-limited NPCs can affect event progression or temporarily disable event rewards.
* Integration With Reputation System : Debuff effects may dynamically adjust based on current faction reputation or alignment.

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

		Section X – NPC Integration with Core Engine Systems

	NPCs are deeply connected to the core engine systems, allowing them to interact dynamically with players, the environment, and world events. These integrations 
ensure NPCs are not static entities but part of a living, responsive game ecosystem.

---

	1. Reputation System

* Purpose : Tracks NPC-player alignment and faction standings.
* Integration :
	* Affects NPC dialogue, quest availability, and access to services.
	* Determines NPC hostility or friendliness based on player actions.
	* Directly interacts with the "NPC Aggression Penalty" debuff when friendly NPCs are killed.

* Example : Killing a Knight Guard decreases reputation with the Knight Empire, unlocking bounties or hostile NPC behavior.

---

	2. Combat & Skill Systems

* Global Combat System : NPCs can participate in combat with players or monsters.
* Skillable NPCs : Use combat abilities and defensive or offensive skills depending on threat assessment.
* Integration :
	* Ties into "AI Decision Layer" for strategic responses.
	* Interacts with "Stealth & Camouflage System", detecting hidden players or monsters.

---

	3. AI & Decision Systems

* AI Decision Layer : Defines NPC logic, behaviors, and dynamic reactions.
* Advanced Behavior Trees : Include decision-making for:
	* Friendly/Hostile interactions
	* Environmental responses (weather, day/night cycles)
	* Morale-based actions or dialogue changes

* Integration : Ensures NPCs act realistically, respond to threats, and interact with players in meaningful ways.

---

	4. Environmental Systems

* Global Environment System : NPCs respond to weather, terrain, and environmental hazards.
* Day/Night Behavior : Certain NPCs only appear or act at specific times.
* Example : Vendors with limited schedules, patrol guards, and event NPCs tied to seasonal or regional conditions.

---

	5. Event Systems

* Quest & Event Manager : NPCs provide quests, trigger world events, and react to event progression.
* Event Bridge System : Connects NPCs to dynamic or temporary content, such as festivals, seasonal quests, or special missions.
* Example : NPCs may offer rare rewards or temporarily disappear based on active events.

---

	6. Inventory & Trade Systems

* Store Mechanics : Vendors and Store Managers maintain dynamic inventories.
* Specialized Merchants : Regional Merchants and Item-Shop NPCs have unique stock, sometimes limited by time or quantity.
* Integration : NPC stock management interacts with daily/weekly schedules, player quests, and world economy systems.

---

	7. Network & Multiplayer Systems

* Network Replication Layer (NRL) : Ensures NPC positions, actions, and states are synchronized across all clients.
* World Sync Layer : Maintains consistent NPC behavior globally, especially for skillable NPCs or event-based NPCs.
* Integration : Critical for multiplayer consistency, ensuring NPC respawns, interactions, and AI actions are visible to all players simultaneously.

---

	8. Special Systems

* Global Noise System : NPCs respond to sounds (player movement, attacks, or environment cues).
* Monster Awareness System : NPCs react to nearby monsters or hostile units.
* Travel & Teleportation Systems : NPCs providing teleport services integrate with fast travel mechanics.
* Debuff System : Handles penalties for player aggression toward NPCs, linking directly to reputation and quest impacts.

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

		Section XI – Summary & Best Practices

	This section consolidates the NPC framework, providing a reference for NPC creation, management, and integration in the world game. It ensures developers and 
designers understand how to implement NPCs consistently and maintain scalability.

---

	1. NPC Blueprint

* Every NPC should be defined with the following key elements:
	* Base Attributes : Health, level, stats, faction alignment, rank.
	* Type & Role : Vendor, Trainer, Guard, Quest Giver, Event NPC, Pedestrian, etc.
	* Mechanics : Skills, AI behavior, daily schedules, respawn timers.
	* Interactions : Dialogue, quests, trade, teleportation, profession services.
	* System Integration : Reputation, combat, environment, network, debuffs.

---

	2. Best Practices for NPC Creation

* Consistency : Use defined NPC types and ranks for predictable behavior.
* Integration : Ensure NPCs interact correctly with all relevant systems: AI, Reputation, Combat, Events, Networking, and Debuff mechanics.
* Scheduling & Routines : Implement time-based or event-based schedules for realistic world presence.
* Faction Awareness : NPCs must respond dynamically to player alignment, reputation, and faction changes.
* Dynamic Interaction : Include adaptive dialogue, branching quests, and environment-aware behaviors.
* Limited Resources & Stock : Regional and rare merchants should have scarcity and timing mechanics to enhance world realism.
* Event Responsiveness : NPCs should dynamically appear, disappear, or change behavior based on world events.

---

	3. NPC Lifecycle

* Spawn & Respawn : NPCs appear in their designated locations with scheduled routines or dynamic event triggers.
* Death & Consequences : NPCs can be killed, triggering reputation changes, debuffs, and potential world event impacts.
* Debuffs : Ensure “NPC Aggression Penalty” is applied correctly for hostile player actions against neutral/friendly NPCs.
* Removal & Cleanup : NPCs tied to temporary events should despawn cleanly without leaving inconsistencies in world systems.

---

	4. Expansion & Modularity

* New NPC Types : Can be added by defining new roles, behaviors, and interactions.
* System Integration : Each new NPC should connect to relevant core systems (Reputation, AI, Events, Network, Combat).
* Quest & Profession Extensions : NPCs can provide new quests, profession training, or special services without modifying existing NPC logic.

---

	5. Developer Notes

* Use modular design to avoid duplicating logic for NPC behaviors or systems integration.
* Test NPC interactions with multiple systems (events, combat, profession mechanics, world changes) to ensure stability.
* Document all new NPC types, schedules, and special behaviors for future maintenance.
* Maintain balance between dynamic world realism and predictable player experience.

---