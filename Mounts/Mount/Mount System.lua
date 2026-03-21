			MOUNT SYSTEM 

---

		1. Introduction — Mount System

	The "Mount System" is a core gameplay feature that allows players to acquire, manage, and utilize various rideable beasts known as "Mounts".
	Mounts are distinct entities from "Horses", although both share specific passive riding skills that interconnect the two systems.

	Mounts function as dynamic transportation and combat companions that enhance player mobility and tactical versatility across different environments.
	They can be acquired through taming, quests, vendor purchases, achievements, or as event rewards. Each mount has a specific elemental type and class, 
determining its behavior, abilities, and progression path.

	The "Mount System" provides an independent "Mount Management Interface" within the character panel, unlocking once the player acquires their first mount.
	This interface enables players to view, select, and manage owned mounts, inspect their attributes, and access all relevant information regarding mount level, 
type, skills, and condition.

	Mounts are directly linked with the "Mount Master NPCs", who are responsible for all mount-related services such as:

* Hosting and caring for mounts for a daily fee
* Reviving dead mounts
* Providing mount-specific items and food
* Offering training or upgrade-related quests

	All mounts follow a unified rule structure regardless of their origin or rarity.
	They are bound to the player’s account once tamed or acquired, and they cannot die permanently. If a mount dies from starvation or combat (while mounted), it 
becomes "Inactive" and requires revival through a Mount Master.

	The "Mount System" emphasizes three design principles:

1. Exploration and Taming : Encourage players to explore diverse regions to find and tame unique beasts.
2. Progression and Customization : Offer growth and specialization through mount levels, elemental affinities, and skill unlocks.
3. Integration and Continuity : Maintain compatibility with other systems (notably the Horse System and Passive Skills) to create a cohesive gameplay experience.

--------------------------------------------------------------------------------------------------------------------------------------------------------------------


		2. MOUNT CLASSIFICATION

	Mounts are categorized by "Class" and "Elemental Type".
	These two properties define the foundation of a mount’s identity, influencing its visual design, stats, available skills, and environmental compatibility.

---

	2.1. Elemental Type

	Each mount belongs to one of six elements, defining its affinity, resistances, and potential skill set:

* "Wind" – speed-oriented, high evasion, light CC resistance
* "Earth" – tanky, high HP/defense, slow movement
* "Water" – balanced, regenerative, terrain-adaptive
* "Fire" – aggressive, offensive buffs, AOE abilities
* "Shadow" – stealthy, high burst, weak defense
* "Light" – defensive, support/passive healing

> Elemental typing also determines mount food preference, compatible regions, and environmental bonuses.
> Certain mount abilities may scale with elemental synergy or suffer penalties in opposite environments (e.g., Fire mounts are weaker in Water zones).

---

	2.2. Mount Classes

| Class               | Description                                                    | Skills                    | Leveling     | Notes                                                            |
| :------------------ | :------------------------------------------------------------- | :------------------------ | :----------- | :--------------------------------------------------------------- |
| **Normal Mounts**   | Basic beasts; entry-level mounts with limited features.        | Passive only              | ❌            | Cannot evolve. Standard speed and attacks allowed while mounted. |
| **Evolved Mounts**  | Upgraded versions of normal mounts; stronger and customizable. | Passive + Active          | ✅            | Can equip “Mount Essence” (non-physical enhancement items).      |
| **Exotic Mounts**   | Rare, event-exclusive or legendary tames.                      | Passive + Advanced Active | ✅            | Superior stats, textures, and attack patterns.                   |
| **Sprinter Mounts** | Built for speed and CC resistance.                             | Passive + Active          | ❌            | Fastest ground mounts; cannot evolve.                            |
| **Flying Mounts**   | Capable of aerial travel.                                      | Passive + Active          | ✅ (optional) | Some have flight height limits; aerial combat possible.          |

---

	2.3. Mount Tier Attributes

	Each mount class is associated with a specific tier of attributes that defines its base power, growth potential, and management difficulty.
	These attributes are standardized for balancing and system integration purposes.

| Attribute                        | Normal Mounts                 | Evolved Mounts         | Exotic Mounts            | Sprinter Mounts            | Flying Mounts         |
| :------------------------------- | :---------------------------- | :--------------------- | :----------------------- | :------------------------- | :-------------------- |
| **Base Speed Modifier**          | 100%                          | 115%                   | 120%                     | 145%                       | 130% (airborne)       |
| **Combat Capability**            | Ground Only (limited attacks) | Ground + Active Skills | Ground + Advanced Skills | Ground Only (Active Buffs) | Air + Airborne Combat |
| **Skill Slots (Passive/Active)** | 2 / 0                         | 3 / 2                  | 4 / 3                    | 2 / 1                      | 3 / 2                 |
| **Starvation Limit**             | 7 days                        | 30 days                | 30 days                  | 14 days                    | 14 days               |
| **Revive Cost (Item Tier)**      | Basic                         | Intermediate           | Rare                     | Intermediate               | Rare                  |
| **Food Type Requirement**        | Standard Feed                 | Enhanced Feed          | Exotic Feed              | Sprint Feed                | Sky Feed              |
| **Taming Difficulty**            | Low                           | Medium                 | Very High                | High                       | High                  |
| **Rarity Tier**                  | Common                        | Rare                   | Epic/Legendary           | Rare                       | Epic                  |

> Design Note :
> The *Base Speed Modifier* is relative to the standard horse speed (100%).
> These values can be adjusted later for gameplay balancing once the "Horse System" mechanics are fully integrated.

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

		3. ACQUISITION METHODS

	Mounts can be obtained through several gameplay channels designed to reward exploration, progression, and player interaction with the world.
	Each acquisition method corresponds to different mount classes and player activities, ensuring a natural sense of discovery and achievement.

---

	3.1. Taming

	Taming is the primary and most immersive method of obtaining mounts.
	Players can encounter wild beasts throughout various regions and attempt to tame them into permanent companions.

* To initiate taming, the target beast must be weakened below a specific health threshold.
* The player must possess a "Taming Tool" or "Charm" appropriate to the beast’s "Elemental Type".
* Upon activation of the "Taming Action", a taming sequence begins, during which the player must maintain focus and stability while resisting the beast’s will.
* The success rate depends on:
	* Player’s "Beast Mastery" passive skill
	* Beast rarity and class
	* Elemental environment compatibility
	* Quality of taming equipment
	* Player’s Mount-related Reputation

	Successful taming transforms the beast into a usable "Mount Entity", automatically added to the player’s "Mount Sheet".
	If taming fails, the beast either becomes aggressive or flees.
	The full mechanical implementation of taming is defined separately in the "Taming System" under *GAME/Mechanics/TamingSystem.txt*.

---

	3.2. Quests

	Certain mounts are awarded upon completing storyline quests or long-term achievements.
	Quest-based mounts often carry unique visual designs, lore value, or regional symbolism, representing accomplishments within the player’s journey.

---

	3.3. Vendors

	Mount Vendors and Mount Masters may sell specific mounts.
	These include:

* "Basic Mounts" : Affordable, entry-level options for new players.
* "Regional Mounts" : Tied to faction or location identity (e.g., Middlean War Elk, Pindar Desert Panther).
* "Seasonal Mounts" : Limited-time variants offered during events or festivals.

	Vendor mounts cannot be tamed and have fixed attributes.

---

	3.4. Events and Achievements

	Exclusive or "Exotic Mounts" can be obtained during global or seasonal events, special hunts, or through complex achievements.
	Examples include:

* Event-Only Beasts : Rare creatures that appear during world events.
* Achievement Rewards : Milestone-based mounts unlocked for reaching certain taming thresholds, exploration goals, or battle accomplishments.

	These mounts often feature enhanced visuals, unique animations, and advanced active skills.

---

	3.5. Summary

| Acquisition Method        | Description                                                  | Related Mount Classes   |
| :------------------------ | :----------------------------------------------------------- | :---------------------- |
| **Taming**                | Capture wild beasts through skill-based taming mechanics.    | Normal, Evolved, Exotic |
| **Quests**                | Obtain mounts as part of storylines or achievement chains.   | Evolved, Exotic         |
| **Vendors**               | Purchase mounts from Mount Masters or specialized merchants. | Normal, Sprinter        |
| **Events / Achievements** | Earn mounts during limited-time or high-tier challenges.     | Exotic, Flying          |

--------------------------------------------------------------------------------------------------------------------------------------------------------------------


		4. MOUNT PROGRESSION

	The Mount Progression System defines how mounts grow stronger and influence the player’s performance through usage and maintenance.
	Progression applies to "Evolved", "Exotic", and some "Flying Mounts".

---

	4.1. Leveling

	Mount leveling reflects the bond and synchronization between rider and beast, granting the player increased performance while mounted.

* Leveling applies to "Evolved", "Exotic", and optionally "Flying Mounts".
* Mounts gain experience (EXP) through:
	* Riding distance/time
	* Combat participation (while the player remains mounted)
	* Feeding and bonding tasks

	Each level gained increases the player’s mounted combat performance rather than the mount’s standalone stats.
	As a mount levels up, the player benefits from:

| Mount Level Tier            | Player Bonuses While Mounted         |
| :-------------------------- | :----------------------------------- |
| **Level 1–10**              | +Movement Speed, +Minor Defense      |
| **Level 11–20**             | +Attack Speed, +Evasion              |
| **Level 21–30**             | +Damage Reduction, +Critical Chance  |
| **Level 31+ (Exotic Only)** | +Unique Passive Aura (element-based) |

* Mounts cannot exceed their maximum tier:
	* "Evolved Mounts" : Up to Level 30
	* "Exotic Mounts" : Up to Level 50
	* "Flying Mounts" : Up to Level 40 (optional)
	* "Normal/Sprinter Mounts" : Non-levelable

	Leveling is gradual and represents long-term mastery, rewarding consistent use and care.

---

	4.2. Starvation and Maintenance

	All mounts must be fed regularly to prevent starvation.
	If a mount remains unfed for too long, it becomes weakened and will eventually die (enter Dormant State).

| Mount Class         | Starvation Limit | Description                                |
| :------------------ | :--------------- | :----------------------------------------- |
| **Normal Mounts**   | 7 days           | Basic endurance; weakest against neglect.  |
| **Evolved Mounts**  | 30 days          | Higher resistance to hunger.               |
| **Exotic Mounts**   | 30 days          | Longest endurance; may require rare food.  |
| **Sprinter Mounts** | 14 days          | Moderate endurance.                        |
| **Flying Mounts**   | 14 days          | Sensitive metabolism; short hunger window. |

	Food Types :
	Basic Feed	
* Endurance Grain			Evolved / Exotic	
* Sky Herb Mix			Flying Mounts	Reduces stamina drain for 10 min.
* Aqua Fruit Blend		Aquatic Mounts	Restores stamina faster when underwater.
* Field Grain Feed 		Restores basic stamina and hunger.
* Refined Herb Mix 		Enhances recovery and resistance to fatigue.
* Golden Oats of Rydia  A premium food granting temporary movement and endurance bonuses.
* Frostleaf Blend 		A special cold-resistant feed, effective for mounts in frozen regions.
   
   These foods can be purchased individually or in bulk, with certain Mount Masters offering regional specialties (e.g., jungle herbs, tundra grains).

	Each mount’s diet depends on its elemental type and class, for example:
* "Wind Feed" – light fruit blend
* "Earth Feed" – root/grain mix
* "Fire Feed" – spiced meat or ember fruit
* "Water Feed" – fish or aquatic herbs
* "Shadow Feed" – nocturnal fruit or dark roots
* "Light Feed" – blessed grain and holy herbs

	Feeding restores stamina and resets the starvation timer.
	Starvation status can be viewed in the "Mount Sheet" interface.

---

	4.3. Dormant State & Revival

	A mount enters the "Dormant State" only when it dies from starvation.
	Combat does not permanently harm or kill mounts — they are automatically dismissed when their HP drops to zero during battle and can be re-summoned after combat
ends or after the player revives.

	When a mount dies of starvation:

* It becomes unavailable for summoning and marked as "Dormant" in the "Mount Sheet".
* It can only be revived through a "Mount Master NPC", using specific revival materials and a small gold fee.

| Mount Class                | Required Materials            | Gold Fee |
| :------------------------- | :---------------------------- | :------- |
| **Normal Mounts**          | *Common Essence*              | 1	    |
| **Evolved Mounts**         | *Beast Heart*                 | 2   	    |
| **Exotic Mounts**          | *Beast Heart* + *Spirit Dust* | 5 	    |
| **Sprinter/Flying Mounts** | *Spirit Dust*                 | 3        |
	* Spiritbloom Flower – A rare herb used to restore vitality to fallen mounts.
	* Essence of Renewal Flask – Used in advanced mount resurrection rituals.
	* Phoenix Dust – A legendary reagent reserved for reviving elite or mystical mounts.

	Revived mounts return with minimal stamina and must be fed immediately to prevent instant fatigue.
	If the player lacks the required materials or gold, the mount remains dormant indefinitely but never lost permanently.

---

	4.4. Maintenance Summary

| Function             | Affected Classes        | Description                                                |
| :------------------- | :---------------------- | :--------------------------------------------------------- |
| **Leveling**         | Evolved, Exotic, Flying | Boosts player stats while riding.                          |
| **Feeding**          | All                     | Prevents starvation and restores stamina.                  |
| **Starvation Death** | All                     | Mount enters Dormant State after exceeding hunger limit.   |
| **Revival**          | All (Starvation only)   | Mount Masters can restore dormant mounts for a small cost. |

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

		5. MOUNT SHEET (UI & MANAGEMENT SYSTEM)

	Once a player acquires their first mount, a dedicated "Mount Interface" is permanently unlocked within the "Character Sheet".
	This interface manages all owned mounts, displays their progression, and offers detailed information about their state, location, and statistics.

---

	5.1. Interface Overview

---

	1. Owned Mounts

* Displays all currently owned mounts in a list or grid view.
* Each entry includes:
	* 3D model preview (with rotation/zoom controls)
	* Mount name
	* Level (if applicable)
	* Elemental Type and Class
	* Current Status:
		* "Active" – summoned or available for summoning
		* "Stable" – stored with a Mount Master NPC
		* "Dormant" – dead from starvation, awaiting revival

*Players can select any mount as "Primary Mount" for quick summoning.*

---

	2. Mount Stats & Traits

* Displays the mount’s base and current attributes:
	* "Elemental Type"
	* "Class"
	* "Speed Modifier"
	* "Mounted Bonus Effects" (Level-based)
	* "Starvation Timer / Hunger Bar"
	* "Mount EXP & Level Progression"
* Includes quick status icons (e.g., hungry, fatigued, dormant, stabled).
* Displays compatible food types and current feed bonuses.

---

	3. Skills (Active & Passive)

* Lists all learned "Active" and "Passive" skills of the selected mount.
* Active skills can be viewed and placed in the player’s "Mount Skill Bar".
* Passive skills that are compatible across mounts are automatically stored in the "Shared Skill Pool".
	* Example: If one mount learns "Dash", all compatible mounts gain access to that passive (including the Horse entity).
* Displays cooldowns, effects, and activation conditions.

---

	4. Mount Equipment / Essence Slots

* Mounts of "Evolved", "Exotic", and "Flying" classes have access to "Essence Slots".
* Essences are non-physical enhancement modules, crafted or found as rewards.
* Each Essence provides bonuses or unique effects tied to elemental alignment.

	Examples include:
* "Wind Feather Essence" → +Speed %
* "Earth Core Essence" → +Defense & Stability
* "Fire Mane Essence" → +Damage Output
* "Shadow Claw Essence" → +Critical Rate
* "Saddle of Endurance" → Increases mounted travel time before rest is required.
* "Rein of Windstride" → Adds a small burst-speed ability (usable every 2 minutes).
* "Ironhoof Shoeing Kit" → Enhances mount stability and knockback resistance.
* "Skill Scrolls of Bonding" → Unlocks mount-specific abilities such as charge attacks, dodging, or extended carrying capacity.
* "Reinforced Saddle" → +5% stamina recovery. 
* "Woven Mane Straps" → 10% drain during combat.
* "Aquatic Fin Harness" → 15% drain underwater.

	2. Advanced / Rare Gear
	Item Name					Effect / Notes
* "Spiritbound Saddle"	→	Reduces stamina cost by 15%.
* "Windveil Manecloth"	→	+15% Speed in windy or stormy regions.
* "Scaleplate Barding"	→	+10% Defense; +5% success vs magical attacks.
* "Runic Bridle"		→	+5% taming success chance when equipped.
* "Eternal Horseshoes"	→	Negates terrain penalties (mud, sand, snow).

	Essences can be equipped or removed freely while the mount is not summoned.

---

	5. Rename / Information

* Players may rename their mounts at any time (with cooldown to prevent abuse).
* Displays mount history data:
	* Acquisition Method : Tamed / Quest / Vendor / Event
	* Original Region & Taming Location
	* Date Acquired (World Time)
	* Time Used (Total Playtime Mounted) :
		* Recorded as Years / Months / Weeks / Days / Hours / Minutes / Seconds
	* Total Starvation Deaths : (counter of how many times the mount has entered Dormant State)
	* Current Storage Location :
		* Displays the Mount Master NPC name and Region/City where the mount is currently stabled.
		* Players can use a "Track Location" function to automatically set a navigation path to the NPC.

	This section ensures every mount has a traceable origin and personal history, adding immersion and making mounts feel like unique, persistent entities within 
the player’s world.

---

	5.2. Interface Utility Features

* Quick Summon Keybind : Instantly summon or dismiss the currently selected mount.
* Stable Transfer : Allows transferring a mount between Mount Masters for a fee.
* Feed Shortcut : Use stored food items directly from the interface.
* Revive Button (Dormant Mounts) : Redirects player to nearest Mount Master who offers revival services.
* Comparison Mode : Compare two mounts’ stats, skills, and essences side by side.

---

	5.3. Data Synchronization

	All mount data is saved to the player’s account and synchronized between sessions.
	If a player logs out while riding, the mount is automatically dismissed but remains "Active" in status upon next login.

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

		6. SHARED PASSIVE SYSTEM (Mount ↔ Horse Link)

	The "Shared Passive System" unifies the riding mechanics between all "Mounts" and the "Horse Entity", ensuring consistency and fluid progression for players 
across both systems.
	It eliminates redundant skill grinding and reinforces the concept that all rideable creatures share a common set of fundamental riding techniques.

---

	6.1. Core Concept

	Certain passive riding skills—once learned from any compatible mount or horse—become globally available across all player-owned rideable entities.

	This includes:
* Mounts of all Classes (Normal, Evolved, Exotic, Sprinter, Flying)
* Horse Entities (managed by Stable Masters)

	The link is bi-directional :
* If a mount learns a compatible passive, the horse automatically gains it.
* If the horse learns one, all compatible mounts gain it.

	This system creates a natural continuity between the "Mount System" and the "Horse System".

---

	6.2. Shared Passive Skills (Examples)

| Skill Name                  | Description                                                     | Compatibility             | Learned From       |
| :-------------------------- | :-------------------------------------------------------------- | :------------------------ | :----------------- |
| **Dash**                    | Temporarily increases movement speed when activated.            | All Ground Mounts + Horse | Base Mount / Horse |
| **Endurance**               | Reduces stamina consumption while sprinting.                    | All                       | Mounts, Horse      |
| **Balanced Gallop**         | Increases stability and control, reducing knockdown chance.     | All Ground Mounts + Horse | Horse              |
| **Aerial Stability**        | Improves flight handling and reduces stamina loss while flying. | Flying Mounts only        | Flying Mounts      |
| **Elemental Resistance**    | Provides minor resistance to the mount’s elemental weakness.    | Evolved / Exotic / Horse  | Mounts             |
| **Mounted Combat Training** | Slightly increases player damage while attacking from mount.    | Evolved / Exotic / Horse  | Mounts, Horse      |

> Note: The list above is illustrative and serves as a framework.
> Actual passives will be defined later in "Mount Skills System.lua" and "Horse Skills System.lua" once the ability systems are finalized.

---

	6.3. Unlock & Progression

* Passive skills are obtained through:
	* "Mount Level Progression" (Section 4)
	* "Mount Master Quests"
	* "Horse Training (Stable Master Services)"
* Once unlocked, the passive is recorded in the player’s "Shared Skill Pool".
* Shared passives are permanent and persist across all mounts and horses owned by the player.

	Each passive can have three upgrade tiers :
* Tier I : Basic effect
* Tier II : Enhanced efficiency
* Tier III : Mastered — provides minor global buff to all mounts/horses

	Mount Masters and Stable Masters can both offer passive upgrades or unlocks depending on the origin of the skill.

---

	6.4. Compatibility Rules

1. Only passive riding-related skills are shareable.
	Active or element-based combat abilities remain mount-exclusive.
2. Skills must be element-neutral (not tied to one elemental type).
3. Passive skills cannot stack — the system automatically applies the highest learned tier.
4. If a mount is deleted or sold, shared passives remain permanently unlocked for the account.

---

	6.5. Integration with NPCs

* Mount Masters :
	Offer quests or training that unlock or upgrade shared passives, especially for Evolved/Exotic mounts.
* Stable Masters :
	Teach and manage shared passives related to traditional horses, such as "Balanced Gallop" or "Endurance".

	Both NPC types are part of the same "Riding Knowledge Network", allowing seamless synchronization between the two systems.

---

	6.6. Interface Integration

	In the Mount Sheet → Skills Tab, a sub-section labeled "Shared Passives" lists all globally unlocked riding passives, their tier, and origin.
	
	Hovering over a skill displays:
* Description
* Tier Progress
* Origin Source (Mount or Horse)
* Compatibility (Mount Class / Element Type)

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

		7. REGIONAL DISTRIBUTION

* Each region or continent has a predetermined set of tamable beasts.
* Mount availability reflects local fauna, faction identity, and environmental conditions.
* Regional distribution encourages exploration and provides players with a sense of discovery, as mounts differ by continent and rarity.

	Examples :

* Knight Continent: ~23 unique ground mount types, tailored to faction aesthetics and gameplay style.
* Pindar Continent: ~23 unique ground mount types, distinct from Knight Continent species.
* Middlean Islands: 23 neutral beasts that can be tamed by any faction.
* Outland Territories: Shared/common mounts from both Knight and Pindar factions ; includes some rare and exotic variants.
* Neutral regions (Middlean Islands and Outland Territories) allow for cross-faction mount acquisition and experimentation with different mount types.
* The exact number of tamable mounts per region may vary slightly depending on world updates or events.

	This system ensures that:

1. Players are encouraged to travel to different regions to complete their mount collection.
2. Mount rarity and type correspond logically to geography and regional ecosystems.
3. Neutral areas serve as hubs for experimentation, cross-faction trade, and event-based mounts.

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

		8. MOUNT COMBAT MECHANICS

	Mounts enhance combat by allowing players to attack while mounted, providing mobility and additional tactical options.Combat capabilities depend on mount class,
element, and skills.

---

	8.1. Attack Restrictions

* Normal Mounts : Can only move and provide passive bonuses; no active attacks.
* Sprinter Mounts : Primarily for speed and CC resistance; limited or no combat skills.
* Evolved/Exotic/Flying Mounts : Can use "Active Combat Skills".

	Examples of Active Combat Skills :
* Trample (AOE stun, ground mounts)
* Wing Slash (air attack, flying mounts)
* Inferno Breath (fire-type mounts, area fire damage)
* Shadow Strike (shadow-type mounts, high single-target burst)
* Mounted combat is restricted by mount stamina, terrain, and environmental factors.

---

	8.2. Mount Stamina System

	Mount Stamina is a unique resource representing the mount’s ability to sustain combat activity, movement, and skill usage.
	Stamina ensures mounted combat is balanced and prevents mounts from being overpowered.

	Mechanics :
* All mounts that can participate in combat (Evolved, Exotic, Flying) have a "Stamina Pool".
* Stamina is consumed by:
	* Using Active Combat Skills
	* Sprinting or rapid movement
	* Performing special maneuvers (e.g., dodges, leaps, aerial turns)

* Stamina regenerates over time when:
	* The mount is walking/standing
	* The mount is fed recently (nutrition affects regeneration rate)
	* Mounted resting at Mount Master/Stable Master

	Suggested Base Values (per mount class) :
* Evolved Mounts: 100 Stamina → medium combat duration
* Exotic Mounts: 150 Stamina → longer combat endurance
* Flying Mounts: 120 Stamina → limited by aerial strain

	Stamina Mechanics :
* Depletion Effects : When stamina reaches 0, mount cannot use active skills and movement slows by 50%.
* Player Feedback : A Stamina Bar appears on the HUD when mounted, showing current Stamina and depletion warnings.
* Recovery Rate : Base regeneration = 1% per 3 seconds; enhanced by feeding or buffs.

---

	8.3. Flying Combat Restrictions

* Flying mounts can engage in combat while airborne, but combat effectiveness is limited by:
	* Altitude Ceiling : Some flying mounts have maximum height limits to prevent world abuse.
	* Flight Duration : Mount Stamina drains faster while flying; low stamina forces the mount to land.
	* Aerial Maneuvers : Advanced skills consume additional stamina (e.g., Barrel Roll, Dive Strike).
* Landing or dismounting mid-combat does not penalize the player, but skill cooldowns remain active.

---

	8.4. Integration with Player Stats

* Mounted combat modifies player stats based on mount level, class, and passive skills:
	* Attack power increases with mount level (Evolved/Exotic)
	* Movement speed bonuses are applied dynamically based on mount type
	* Passive skills (Shared Passive System) enhance stamina efficiency, skill effects, or movement bonuses
* This ensures mounts provide both tactical mobility and combat bonuses, without breaking game balance.

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

		9. MOUNT MASTER NPC ROLE

	"Mount Masters" serve as central service providers for all mount-related activities, ensuring mounts are maintained, trained, and ready for use. They are 
usually located in towns, major cities, or key wilderness settlements, depending on the region.

	Primary Functions :

* Stabling & Care
	* Players can store mounts with the Mount Master for a daily fee.
	* Mounts in stables do not consume food, preventing starvation timers.
	* Stable storage allows easy retrieval and keeps mounts safe while the player is away.

* Revival of Dead Mounts
	* Only mounts that have died from starvation can be revived.
	* Requires specific revival materials (Beast Heart, Spirit Dust, etc.) and a gold fee.
	* Mounts return at minimal stamina and must be fed immediately after revival.

* Feeding & Grooming
	* Mount Masters can feed mounts stored at their facility, restoring stamina and maintaining health.
	* Grooming provides minor cosmetic buffs (appearance shine, clean stats display) and can slightly improve mount EXP gain if mounted afterward.

* Mount EXP & Training Quests
	* Mount Masters offer special quests or tasks to help mounts gain experience.
	* Tasks may include riding challenges, combat participation, or exploration missions.
	* Only Evolved, Exotic, and Flying Mounts are eligible for full training benefits.

* Skill Upgrades / Shared Passive Unlocks
	* Mount Masters can help unlock or enhance passive riding skills for compatible mounts.
	* Players may be sent on quests to acquire rare essences or achieve milestones to upgrade skills.

* Elemental Conversion Quests (Rare)
	* Certain quests allow a mount to change elemental affinity (e.g., Earth → Fire), unlocking new skills or bonuses.
	* Only available for Evolved or Exotic mounts and at high Mount Master reputation levels.

	Additional Notes :
* Mount Master services are tiered by mount class, with higher-class mounts receiving more advanced options.
* All interactions are logged in the "Mount Sheet", ensuring the player can track care, training progress, and skill upgrades.
* Daily fees are scaled to the economy of the world game, ensuring accessibility without trivializing the value of mount maintenance.

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

		10. FUTURE CONNECTIONS & SYSTEM EXPANSION

| Future System                        | Integration Point                                                           |
| :----------------------------------- | :-------------------------------------------------------------------------- |
| **Horse System**                     | Shared passive pool, similar taming mechanics, leveling like Evolved Mounts |
| **Stable Master NPC**                | Focused on horses; works parallel to Mount Master                           |
| **Pet System**                       | Shared bonding mechanics and loyalty UI layout                              |
| **Mount Tournaments / Races**        | Uses Sprinter and Normal mounts                                             |
| **Elemental Mount Fusion (Endgame)** | Combine two compatible evolved mounts to create an Exotic mount             |

---