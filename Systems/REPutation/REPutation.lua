			REPutation System 
			
		I. Introduction

	The "REPutation System" defines the relationship between players and the various NPCs, factions, or organizations within the *World Game*.
	It serves as a dynamic mechanic that reflects how NPCs perceive individual players based on their actions, allegiance, and contribution to the world.

	Unlike the "Profession System", which tracks a player’s growth and mastery in crafting or gathering skills, the REPutation System focuses entirely on social, 
political, and personal alignment with NPC groups and characters.

	Through the REPutation System, players can build trust, loyalty, and prestige with specific factions, cities, or individual NPCs—unlocking access to special 
goods, quests, discounts, storylines, and hidden services. Conversely, poor reputation or betrayal can lead to hostility, restricted access, or even bounties being 
placed upon the player.

	Each NPC or faction configured with REPutation data can display a relationship level ranging from *Hated* to *Exalted*, determining their behavior, dialogue 
options, trade offers, or quest availability.

	The REPutation system is deeply intertwined with:

* "NPC Core System" – NPCs recognize and react to player reputation dynamically.
* "Quest System" – Reputation gain/loss is often tied to quest outcomes and decisions.
* "Economy & Vendor Systems" – Higher reputation levels unlock better prices, exclusive items, or trading privileges.
* "World Events & Factions" – Large-scale events can shift reputation across entire regions or groups.

	Overall, the REPutation System aims to provide a living world mechanic—where the actions of each player influence not only their individual relationships but 
also the greater political and social balance of the world.

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

		Section II – Reputation Entities & Scope

	2.1 Overview

	Reputation in the world game is a key mechanic that governs how players interact with different factions,organizations, and NPCs. Each entity—whether a kingdom,
guild, or independent vendor—maintains its own reputation track that reflects the player’s standing and trust within that group.

	Reputation determines access to:

* Quests, storylines, or hidden missions
* Goods, discounts, or exclusive wares from vendors
* Special services (e.g., crafting, training, fast travel)
* Social and military recognition across the world

---

	2.2 Reputation Groups

	Each faction or organization maintains its own reputation bar. These are divided into main categories:

1. Continental Factions – Represent the major political powers of the world:
	* *Knight Empire (Dendera)*
	* *Pindar Empire (Zonen)*
	* *Outlaw Network (Alaban)*
2. City and Regional Factions – Represent smaller organizations like city guards, merchants’ guilds, or trading posts.
3. Profession-Linked Factions – Certain professions (like Alchemy, Blacksmithing, or Scribing) have their own associations that track player progress separately.
4. Religious, Military, and Order Factions – Paladin Orders, Mage Circles, or Bounty Offices maintain their own REP standings tied to questlines or service to the 
cause.

---

	2.3 Reputation Ranks

	Reputation progression follows a standard tier structure, applicable across all faction types. Each tier unlocks new privileges, quests, and access levels:

| **Rank** | **Standing** | **Progress Range** | **Access Level / Benefits**                             |
| :------- | :----------- | :----------------- | :------------------------------------------------------ |
| 1        | Hated        | -42000 to -6000    | Guards attack on sight, NPCs refuse interaction         |
| 2        | Hostile      | -5999 to -3000     | Limited interactions, inflated prices                   |
| 3        | Unfriendly   | -2999 to 0         | Dialogue restricted, minor penalties                    |
| 4        | Neutral      | 0 to 2999          | Standard interactions and pricing                       |
| 5        | Friendly     | 3000 to 8999       | Access to basic quests and services                     |
| 6        | Honored      | 9000 to 20999      | Discounts, unique items, additional questlines          |
| 7        | Revered      | 21000 to 41999     | Faction mounts, rare recipes, unique vendors            |
| 8        | Exalted      | 42000+             | Full access, high-tier gear, exclusive cosmetic rewards |

---

	2.4 Reputation Decay and Transfer

	Reputation is persistent across continents and can partially carry over between regions:

* Completing all reputation milestones in a starting continent grants a starting bonus in the next region’s related factions.
* Example: A player "Exalted" with Dendera’s *Royal Guard* will begin with "Friendly" reputation toward *Aarong Forest’s Guard Outposts* in Outland Territories.
* Likewise, players well-known in Dendera or Zonen’s "Capital Cities" may find certain major NPCs already recognizing them with "Honored" or higher standing when 
visiting "Legrand Main City".

---

	2.5 Reputation Rewards

	Each reputation level provides scaling benefits:

* Neutral to Friendly – Access to quests, minor items, or reputation-based dialogue options.
* Honored to Revered – Unlocking specialized vendors, crafting blueprints, and visual titles.
* Exalted – Access to elite mounts, high-rank profession tools, cosmetics, or legendary items.
* Some NPCs may recognize high-rep players automatically, triggering special greetings or offering limited-time goods.

---

	2.6 Daily and Weekly Reputation Opportunities

	Certain NPCs offer repeatable or time-limited reputation tasks:

* Daily Quests : Routine missions that grant small REP increases (e.g., supply deliveries, monster hunts).
* Weekly Quests : Larger objectives, such as defeating local bosses or restocking merchant caravans.
* Event Quests : Temporary opportunities tied to world events, wars, or territorial invasions.
* Some NPCs, like "Regional Merchants" or "General Stores", restock goods based on REP level and may require player participation to resupply them.

---

	2.7 Hidden & Cross-Faction Reputation Networks

	Not all factions operate openly. Some, like the "Outlaw Network", exist in secrecy and form complex webs of hidden reputation systems that span continents and 
operate independently from lawful governance.

	Outlaw Network Overview

	The "Outlaw Network" is a covert organization that thrives in the shadows of both major empires. Its influence spreads across "Dendera" and "Zonen", coordinated
from its secret homeland, "Alaban".

	Players aligned with the Outlaws gain access to exclusive NPCs such as smugglers, bounty traders, and black-market merchants, who offer rare and illegal goods, 
special contracts, and outlaw-specific quests.

* Reputation gained in one smuggler faction (Dendera or Zonen) partially carries over to the other.
* Players who betray or expose Outlaw activities may lose REP globally across all smuggler branches.
* "Outlaw Players" benefit from unique items, services, and access to hidden areas unavailable to lawful factions.

	Player Interaction Dynamics

* Lawful Players : Can interact discreetly with smugglers but risk penalties or reputation loss with their own factions.
* Outlaw Players : Are recognized by both Dendera and Zonen smuggler branches, receiving access to all Outlaw vendors and covert quest lines.
* Certain Outlaw NPCs have dual reputation states—appearing neutral to lawful players but offering full services to those aligned with the Outlaw Core.
* Reputation gain may occur through theft missions, contraband delivery, or smuggling success, while reputation loss can happen through betrayal or cooperation with
city guards.

---

	2.8 Inter-Faction Reputation Relationships

| **Faction / Organization**           | **Allies**                          | **Rivals**        | **Notes**                                                       |
| :----------------------------------- | :---------------------------------- | :---------------- | :-------------------------------------------------------------- |
| **Dendera (Knight Empire)**          | City Guards, Merchants              | Outlaws           | Rewards players aiding lawful settlements or defending caravans |
| **Zonen (Pindar Empire)**            | Mage Circles, Trade Houses          | Outlaws           | Reputation gained through arcane service or city contribution   |
| **Outlaw Network (Alaban)**          | Smuggler Factions (Dendera & Zonen) | Guards, Merchants | REP gained through smuggling, thievery, or bounty contracts     |
| **Outland Continent Network**        | Local Settlers, Hunters             | None              | Recognizes players with prior REP from mainland factions        |
| **General Merchants’ Guild**         | City Vendors, Artisans              | Outlaws           | Provides discounts and restock quests to loyal customers        |
| **Bounty Hunter Union**              | Guards                			     | Criminals         | Dynamic REP changes based on hunt or protection contracts       |

---

	2.9 Reputation Transfer Between Continents

	As players progress through different continents:

* Reaching "Exalted" rank in one region grants automatic Friendly or Honored status in the next.
* For Outlaw players, recognition extends across all smuggler networks globally, ensuring access to services even in new regions.
* Certain "Capital City" NPCs recognize highly reputable players and offer early access to reputation-based perks 
(discounts, unique goods, or early quest availability).

---

	2.10 Reputation Interface & Visual Indicators

	The Reputation system features a dedicated in-game UI window, allowing players to monitor progress with each faction or NPC group.

	Reputation Panel Overview

* Accessible via the Character Sheet.
* Displays all known factions and their standings.
* Each faction entry shows:
	* Faction "Name & Emblem"
	* "Standing Rank" (e.g., Friendly, Revered)
	* "Progress Bar" (current REP points vs. required for next rank)
	* "Associated Region or NPC Type"
	* "Quick Tooltip" with latest activity source (e.g., “Quest Turn-In: +250 REP”)

	Visual Standing Indicators

* "Color Code System" for instant recognition:

  | Standing   | Color       | Example Tooltip                                              |
  | :--------- | :---------- | :----------------------------------------------------------- |
  | Hated      | Dark Red    | “You are despised. Guards will attack on sight.”             |
  | Hostile    | Red         | “NPCs avoid or threaten you.”                                |
  | Unfriendly | Orange      | “Limited interaction; prices inflated.”                      |
  | Neutral    | Gray        | “Standard services and quests available.”                    |
  | Friendly   | Light Green | “NPCs recognize you; new quests unlocked.”                   |
  | Honored    | Blue        | “You are trusted; access to discounts and mid-tier rewards.” |
  | Revered    | Purple      | “Elite services unlocked; special items available.”          |
  | Exalted    | Gold        | “You are a living legend to this faction.”                   |

* Sound and Animation Feedback :
	* Level-up chime and faction banner animation when reputation rank increases.
	* NPC greetings or crowd cheers in cities for major REP milestones (e.g., reaching *Exalted*).

---

	2.11 Faction Influence & Cross-Reputation Effects

	Factions and NPCs can be dynamically connected through *influence chains*.
	Improving your standing with one entity may affect others:

| **Action**                            | **Primary Effect**        | **Secondary / Cross Effect**                                   |
| :------------------------------------ | :------------------------ | :------------------------------------------------------------- |
| Completing missions for *Royal Guard* | +REP with Dendera Guard   | +REP (minor) with Dendera Merchants, −REP (minor) with Outlaws |
| Delivering goods to Smugglers         | +REP with Outlaws         | −REP with City Guard and Bounty Office                         |
| Killing NPC Guards                    | −REP with Guard Faction   | −REP (major) with Merchants and Local Villagers                |

	This system ensures social coherence — reputation actions have believable ripple effects, creating a living ecosystem.

---

	2.12 Regional Reputation Bonuses

	Players who maintain high reputation with multiple factions within a single region gain "Regional Standing Bonuses", representing growing influence, trust, and
recognition.

| **Region**                   | **Bonus Name**        | **Effect**                                                                                   |
| :--------------------------- | :-------------------- | :------------------------------------------------------------------------------------------- |
| Dendera                      | Defender of the Realm | +2% vendor discount within the region; +5% increased reputation gain in Dendera settlements. |
| Zonen                        | Pindar Patron         | +2% vendor discount within the region; +5% increased reputation gain in Zonen settlements.   |
| Outland Territories          | Frontier Ally         | +1 passive inventory slot reserved for reputation-related consumables or favor items.        |
| Alaban (Outlaw Faction Zone) | Shadow Partner        | +3% stealth effectiveness; access to contraband vendors and outlaw-exclusive quests.         |

	When a player achieves Exalted standing with all major factions in one region, they earn a "Regional Title", reflecting their reputation dominance.
	
	For example:
* *Hero of Dendera*
* *Champion of Zonen*
* *The Shadow Broker* (for Outlaw alignment)

	Regional titles can grant access to additional quests or unique cosmetic items tied to the faction theme.

---

	2.13 Dynamic Reputation Interactions

	Instead of pre-defined world events, the system allows configurable dynamic reputation triggers, meaning the developer can attach REP rewards or penalties to 
certain recurring activities, quests, or world states.

| **Trigger Type**      | **Example**                                   | **Potential Reputation Impact**                  |
| :-------------------- | :-------------------------------------------- | :----------------------------------------------- |
| Guard Assistance      | Defend city gates or patrol routes            | +REP with City Guards, +REP with Local Merchants |
| Smuggler Support      | Deliver hidden goods or protect contraband    | +REP with Outlaws, −REP with Guards              |
| Resource Contribution | Donate crafting materials to a settlement     | +REP with Local Workers’ Guilds                  |
| Criminal Actions      | Pickpocketing or theft detected               | −REP with Citizens, Guards, Merchants            |
| Escort & Protection   | Escort caravans between cities                | +REP with Traders and Guards                     |
| Quest Completion      | Complete assigned missions from a faction NPC | REP gain based on quest difficulty               |

Developers can later expand these triggers into formal **dynamic events** (daily, weekly, or world-based) as the system evolves. For now, this flexible structure ensures any quest or action can influence reputation based on configuration.

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

		Section III – Reputation Ranks & Progression Structure

	This section defines how the player’s relationship with NPCs or factions is quantified, progressed, and how it translates into gameplay benefits. 

	3.1 Reputation Ranks

	Players advance through reputation tiers with individual NPCs or factions. Each rank unlocks additional interactions, services, or bonuses.

| **Rank**   | **Description**                                       | **REP Points Range** | **Gameplay Effects**                                                                           |
| :--------- | :---------------------------------------------------- | :------------------- | :--------------------------------------------------------------------------------------------- |
| Hated      | Player is disliked; hostile NPCs may attack on sight. | 0 – 299              | Certain vendors refuse service; guards may be aggressive.                                      |
| Hostile    | NPCs actively distrust the player.                    | 300 – 899            | Limited access to quests; minor service restrictions.                                          |
| Unfriendly | NPCs are cautious, neutral interaction possible.      | 900 – 2099           | Standard NPC interactions; limited discounts.                                                  |
| Neutral    | No positive or negative bias.                         | 2100 – 4199          | Full interaction with basic services; normal quest access.                                     |
| Friendly   | NPCs recognize and favor the player.                  | 4200 – 8399          | Discounts, early quest access, minor bonus items.                                              |
| Honored    | Player is trusted; access to advanced services.       | 8400 – 16799         | Additional vendor goods, exclusive crafting recipes, special quests unlocked.                  |
| Revered    | NPC highly respects player; privileged access.        | 16800 – 33599        | Priority access to services, rare items, faster travel options.                                |
| Exalted    | Player is considered a hero to the faction/NPC.       | 33600+               | Maximal benefits: unique gear, titles, reputation-exclusive rewards, faction-wide recognition. |

---

	3.2 Reputation Progression Mechanics

* Gains : Completing quests, providing assistance, trading rare items, or defeating hostile NPCs can increase REP.
* Losses : Attacking allied NPCs, failing missions, or committing crimes reduces REP.
* Daily/Weekly Caps : Developers can set limits on reputation gain per day/week per NPC or faction to prevent rapid maxing.
* Cascading Bonuses : Achieving high REP with a major NPC or faction can automatically boost REP with minor, allied NPCs in the same region.

  * Example: Max REP with Dendera’s main city NPCs grants starting REP with Outland Territories NPCs.

---

	3.3 Regional & Faction Correlations

* Regional Bonuses : Completing REP in one region may provide a head start in another.
	* Example: Exalted in Dendera → +2,000 REP with allied Zonen NPCs or Outland NPCs upon first visit.

* Faction Relations : NPC factions may react collectively to the player’s standing with a single NPC.
	* Example: High REP with Dendera Guards increases trust from city merchants.

* Outlaw Faction Integration : Certain rogue/underworld NPCs (smugglers, thieves) require a separate reputation track. Positive reputation grants access to black-
market items, smuggling missions, or secret services.

---

	3.4 Reputation Decay & Maintenance

* Decay : REP with NPCs or factions may slowly decay over time if no interaction occurs.
* Maintenance Activities : Completing quests, donating items, or providing services prevents decay and can grant minor REP boosts.

---

	3.5 Reputation-Based Unlocks

| **REP Rank** | **Unlockable Features**                                                |
| :----------- | :--------------------------------------------------------------------- |
| Friendly     | Discounted goods, minor quest availability                             |
| Honored      | Special vendor items, advanced profession recipes                      |
| Revered      | Exclusive services (fast travel, rare crafting items)                  |
| Exalted      | Unique titles, cosmetic rewards, high-tier quests, faction recognition |

---
	
	Here’s a cross-reference table linking "NPC Ranks" from Section 2.3 with "Player Reputation" (REP) thresholds from Section 3.1. This will help align NPC rank 
and player progression clearly:

| **NPC Rank (Section 2.3)** | **Description / Role**                    | **Suggested Player REP for Full Interaction** | **Notes / Effects**                                                                                                           |
| :------------------------- | :---------------------------------------- | :-------------------------------------------- | :---------------------------------------------------------------------------------------------------------------------------- |
| Rank I                     | Pedestrians / basic NPCs                  | 0 – 4199 (Neutral)                            | Full interaction is basic; no special services.                                                                               |
| Rank II                    | Vendors, Store Managers                   | 2100 – 8399 (Neutral → Friendly)              | Discounts unlock gradually; basic items available; quests may be minimal.                                                     |
| Rank III                   | Quest Givers, Caretakers, Tavern Keepers  | 4200 – 16799 (Friendly → Honored)             | Advanced quests, service perks, limited exclusive items.                                                                      |
| Rank IV                    | Trainers, Mission Specialists, Event NPCs | 8400 – 33599 (Honored → Revered)              | High-level quests, rare items, profession perks; may require daily/weekly activities to maintain REP.                         |
| Rank V                     | Specialist NPCs, Legendary Blacksmiths    | 16800 – 33600+ (Revered → Exalted)            | Unlock top-tier rewards, special crafting recipes, unique NPC interactions; access to rare goods or unique gameplay features. |

	Key Points :

* The table maps NPC rank to the player’s REP needed to fully benefit from that NPC.
* REP progression is cumulative and can be influenced by quests, trade, assistance, or special faction tasks.
* Certain NPCs may have exceptions : e.g., Outlaw NPCs, Pet/Mount Masters, or Regional Merchants might require special tasks or items to increase REP regardless of 
NPC rank.
* The thresholds are scalable; for example, you can adjust “Friendly → Honored” boundaries if certain NPCs should be easier or harder to gain trust with.

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

		Section IV – NPC System Integrations (Expanded with Regions, Capitals & Outland Territories)

	1. REP Integration

* REP-enabled NPCs : Vendors, Quest Givers, Guards, Trainers, Caretakers, Pet/Mount Masters.
* Player Actions Increasing REP : Trading, completing quests, helping NPCs, using faction-specific items.
* REP Carry-over Mechanics :
	* Fully maxed REP in starting continent carries over to Region II.
	* Capital City (Middlean Island) NPCs recognize high-REP players from Dendera or Zonen, granting early access to some services or quests.
	* Example: A player who has maxed REP with Dendera’s major vendors will have enhanced access to traders and special services in Capital City.
	* REP from starting continents partially unlocks NPC ranks in "Outland Territories" regions. For example, high REP in main cities allows players to start at 
Rank II with some NPCs in Aarong Forest.

	2. Faction & Region Rules

* Starting Continents : Dendera (Knights), Zonen (Pindars).
* Outlaws / Alaban Zone : Thieves and smugglers operating across continents; can interact with faction NPCs via REP without full penalties.
* Middlean Island – Capital City : Neutral hub connecting factions; NPCs recognize high-REP players, granting partial early rank benefits.
* Outland Territories : High-level continent divided into 4 major regions. REP from starting continents affects NPC interactions:
	* NPCs in early regions (Region I & II) may grant some rank benefits based on prior REP.
	* Later regions (Region III & IV) require additional REP work to unlock full NPC services.

	3. Quest & Item Integration

* Daily/Weekly Quests : Certain NPCs require repeatable tasks to increase REP.
* Regional Merchants : Rare and extreme-rare items, spawn randomly (1–6 days), limited stock.
* General Stores : Full stock resets daily (7 AM). Some provide restock quests; rewards include EXP, gold, or rare items.
* Middlean Island Merchants : Serve both Dendera and Zonen players, allowing high-REP visitors early access to exclusive items.
* Outland Territories Merchants : Higher-level goods, advanced crafting materials, and profession-specific items available as REP increases.

	4. Environment & Engine System Integration

* Dynamic NPC Behavior :
	* Day/Night Cycles: Certain vendors/trainers only available at specific hours.
	* Weather Awareness: NPCs react to storms, extreme temperatures, or environmental hazards.
	* Combat / Skillable NPCs: Guards, Trainers, and other skillable NPCs defend themselves or allies. Death triggers REP loss debuffs.
	* AI Systems: Global Noise, Monster Awareness, Decision Layer, and Environment Systems ensure NPCs react realistically.
	* Network Replication: Multiplayer synchronization ensures all players see consistent NPC behaviors.

	5. Debuff Mechanic

* General Debuff : Killing allied NPCs triggers:
	* Reduced EXP gain.
	* Restricted access to goods and services.
	* Temporary quest interruptions.
* Applicability : All players equally; debuff persists until REP is restored or time expires.

	6. NPC Special Cases

* Pet/Mount Masters : Can store pets/mounts for items or REP favors.
* Teleport NPCs : Do not use REP; they only provide fast travel services.
* Legendary NPCs : Offer unique interactions or rewards based on player REP.
* Seasonal/World Events : NPCs can temporarily alter behavior, provide rare rewards, or special quests.
* Outland Territories NPCs : Some require players to reach specific REP thresholds in starting continents or regions before granting access to high-level quests or 
items.

	7. Integration Summary Table (NPC ↔ Systems)

| NPC Type          | REP Enabled | Daily/Weekly Quests | Items Exchange | Engine System Interactions | Faction Dependent | Region Specific                              | Special Notes                                                                    |
| ----------------- | ----------- | ------------------- | -------------- | -------------------------- | ----------------- | -------------------------------------------- | -------------------------------------------------------------------------------- |
| Vendor            | ✅           | Optional            | ✅              | Day/Night, Stock Reset     | Yes               | Starting Continent, Middlean Island, Outland | Rare items at high REP; early access for recognized players                      |
| Trainer           | ✅           | Optional            | ✅              | AI, Combat, Skillable      | Yes               | All regions                                  | Unlock recipes/skills by REP                                                     |
| Guard             | ✅           | Optional            | ❌              | Combat, Awareness          | Yes               | All regions                                  | Debuff triggers if killed                                                        |
| Quest Giver       | ✅           | ✅                   | ✅              | Dialogue Branching         | Yes               | All regions                                  | Quest unlocks tied to REP; some in Capital City provide cross-faction quests     |
| Tavern Keeper     | ✅           | Optional            | ✅              | Voice Chat, Environment    | Yes               | All regions                                  | Provides rest/healing, REP bonuses                                               |
| Pet/Mount Master  | ✅           | Optional            | ✅              | AI, Awareness              | Yes               | All regions                                  | Favors/items required for storage; Middlean Island accessible to both factions   |
| Teleport NPC      | ❌           | ❌                   | ❌              | AI                         | No                | All regions                                  | REP not applicable                                                               |
| Special/Legendary | ✅           | Optional            | ✅              | All Systems                | Yes               | All regions                                  | Unique interactions/rewards; recognize high-REP players from starting continents |

---

	NPC Reputation System – Regions & Platforms

	1. Starting Continents

| Continent   | Main Factions               | REP Opportunities                                                          | Notes                                                                                                                                            |
| ----------- | --------------------------- | -------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| **Dendera** | Knights                     | Vendors, Quest Givers, Guards, Trainers, Tavern Keepers, Pet/Mount Masters | Primary starting area for Knight-aligned players; REP fully gained here carries over to Middlean Island & Outland Territories                    |
| **Zonen**   | Pindars                     | Vendors, Quest Givers, Guards, Trainers, Tavern Keepers, Pet/Mount Masters | Primary starting area for Pindar-aligned players; same carry-over mechanics as Dendera                                                           |
| **Alaban**  | Outlaws (smugglers/thieves) | Specialized faction NPCs, some vendors, quest givers                       | Operates outside normal continents; accessible to Outlaw players, with interaction mechanics allowing limited access within Dendera/Zonen cities |

	2. Middlean Island – Capital City

| NPC Type               | REP Interaction                                                 | Notes                                                                     |
| ---------------------- | --------------------------------------------------------------- | ------------------------------------------------------------------------- |
| Vendors & Quest Givers | Early recognition for players with high REP in Dendera or Zonen | Unlocks partial NPC ranks and features; facilitates cross-continent trade |
| Guards                 | REP available                                                   | Protects hub; skillable NPCs                                              |
| Trainers               | REP available                                                   | Unlock recipes/skills for high-REP players                                |
| Pet/Mount Masters      | REP available                                                   | Storage/favor system, accessible to both Knight and Pindar players        |

	3. Outland Territories

| Region                                    | Environment  | REP Opportunities                       | Notes                                                                     |
| ----------------------------------------- | ------------ | --------------------------------------- | ------------------------------------------------------------------------- |
| **Aarong Forest**                         | Nature       | Vendors, Quest Givers, Guards, Trainers | REP partially pre-filled based on starting continent REP                  |
| **Frozen Territory** *(placeholder name)* | Ice          | Vendors, Quest Givers, Guards, Trainers | Needs proper naming; same carry-over mechanics as Aarong Forest           |
| **Lagooma Jungle**                        | Wind/Thunder | Vendors, Quest Givers, Guards, Trainers | High-level region; REP from previous regions affects early rank           |
| **Tenebress Territory**                   | Fire         | Vendors, Quest Givers, Guards, Trainers | High-level region; some NPCs require max starting continent REP to unlock |

	4. Other Platforms

| Platform       | REP Interaction               | Notes                                                                |
| -------------- | ----------------------------- | -------------------------------------------------------------------- |
| **Underworld** | Vendors, Quest Givers, Guards | Developed reputation system; interacts with specific factions/quests |
| **Underwater** | None (at present)             | Potential future REP system integration; currently no NPC REP        |

---

	Notes on REP Carry-Over & Unlock Mechanics

1. Max REP in starting continents influences NPC recognition in "Middlean Island" and early regions of Outland Territories.
2. Certain high-level NPCs in "Outland Territories" only unlock interactions when the player achieves a threshold REP in Dendera/Zonen continents.
3. Special factions like "Outlaws" can interact with Dendera/Zonen cities NPCs in limited ways, based on REP mechanics and quest completion if are part of Outlaw 
faction.
4. Platforms like "Underworld" are unique and allow specialized REP progression independent of the main area.
5. "Underwater" platform is a placeholder for future development of NPCs and REP interactions.

---

	NPC Reputation System – Numeric Values & Thresholds

	REP Levels (Example)

| Level | Name         | Required REP Points | Description / Benefits                                                                                                   |
| ----- | ------------ | ------------------- | ------------------------------------------------------------------------------------------------------------------------ |
| 0     | **Neutral**  | 0                   | Player has no reputation; NPC interactions limited to basic dialogue or initial quest access.                            |
| 1     | **Friendly** | 1 – 999             | NPC starts offering basic services, minor discounts on goods, minor quest access.                                        |
| 2     | **Honored**  | 1000 – 2499         | NPC provides improved services, some exclusive items, access to higher-tier quests.                                      |
| 3     | **Revered**  | 2500 – 4999         | NPC offers rare items, unique crafting recipes, and special services (e.g., advanced trainers, mount/pet storage perks). |
| 4     | **Exalted**  | 5000+               | Maximum reputation: NPC unlocks all services, special dialogue, discounts, and rare quests/rewards.                      |

---

	Example Distribution Across Regions

| Region / Platform                  | NPC Types                               | Starting REP | Maximum REP | Notes                                                                                                         |
| ---------------------------------- | --------------------------------------- | ------------ | ----------- | ------------------------------------------------------------------------------------------------------------- |
| **Dendera**                        | Vendors, Quest Givers, Guards, Trainers | 0            | 5000        | Standard starting continent mechanics; full REP attainable by completing quests, trading, and assisting NPCs. |
| **Zonen**                          | Vendors, Quest Givers, Guards, Trainers | 0            | 5000        | Same as Dendera; progression mirrors Dendera mechanics.                                                       |
| **Alaban (Outlaws)**               | Specialized faction NPCs                | 0            | 5000        | Outlaw-specific NPCs; REP earned mostly via faction quests and special interactions.                          |
| **Middlean Island – Capital City** | All NPC Types                           | 100 – 500    | 5000        | Starting continent REP partially pre-filled; early recognition for high REP players.                          |
| **Aarong Forest (Outland)**        | Vendors, Quest Givers, Guards, Trainers | 0 – 1000     | 5000        | Players who completed full REP in starting continents gain partial REP automatically.                         |
| **Frozen Territory (Outland)**     | Vendors, Quest Givers, Guards, Trainers | 0 – 1000     | 5000        | High-level region; pre-filled REP from Dendera/Zonen; requires quests to advance.                             |
| **Lagooma Jungle (Outland)**       | Vendors, Quest Givers, Guards, Trainers | 0 – 1000     | 5000        | Similar to other Outland regions; unlocks progressively.                                                      |
| **Tenebress Territory (Outland)**  | Vendors, Quest Givers, Guards, Trainers | 0 – 1000     | 5000        | Some NPCs require max starting continent REP for full services.                                               |
| **Underworld**                     | Vendors, Quest Givers, Guards           | 0            | 5000        | Independent REP system; players progress via unique quests and interactions.                                  |
| **Underwater**                     | None (currently)                        | 0            | N/A         | Potential future REP system.                                                                                  |

---

	REP Gains Mechanisms

* Quests : Completing NPC-specific quests grants REP points based on difficulty and rarity.
* Trading / Services : Purchasing items or using services (e.g., crafting, mount/pet storage) grants small REP increments.
* Special Actions : Assisting NPCs in events, world interactions, or faction-specific missions grants bonus REP.
* Carry-Over Mechanics : REP earned in starting continents partially translates to Middlean Island and Outland Territories NPCs.

---

	Example NPC-Specific Thresholds

| NPC Type                          | REP Level | Reward / Unlock                                                           |
| --------------------------------- | --------- | ------------------------------------------------------------------------- |
| General Vendor                    | Friendly  | Basic items, small discounts                                              |
| Blacksmith / Legendary Blacksmith | Honored   | Access to crafting materials, enhanced recipes                            |
| Guard                             | Revered   | Player is acknowledged, receives assistance in combat or guidance         |
| Trainer                           | Exalted   | Unlocks all profession skills or class skills, special quests             |
| Pet/Mount Master                  | Revered   | Discounts on storage, access to exclusive storage slots, faster retrieval |

---

	NPC Reputation Table – Draft

| Region / Platform                             | NPC Type           | REP Level | Threshold (Points) | Example Rewards / Effects                      |
| --------------------------------------------- | ------------------ | --------- | ------------------ | ---------------------------------------------- |
| **Dendera Continent**                         | General Vendors    | Friendly  | 0–999              | Access to basic goods                          |
|                                               | General Vendors    | Honored   | 1000–2499          | Discount on items, special recipes             |
|                                               | Quest Givers       | Friendly  | 0–999              | Unlock minor quests                            |
|                                               | Quest Givers       | Revered   | 2500–4999          | Access to unique quests                        |
|                                               | Guards             | Neutral   | 0–999              | Passive patrol, no interaction                 |
|                                               | Guards             | Friendly  | 1000–2999          | Aid during attacks, info                       |
| **Zonen Continent**                           | General Vendors    | Friendly  | 0–999              | Access to basic goods                          |
|                                               | General Vendors    | Honored   | 1000–2499          | Discount, special recipes                      |
|                                               | Quest Givers       | Friendly  | 0–999              | Unlock minor quests                            |
|                                               | Quest Givers       | Revered   | 2500–4999          | Access to unique quests                        |
|                                               | Guards             | Neutral   | 0–999              | Passive patrol, no interaction                 |
|                                               | Guards             | Friendly  | 1000–2999          | Aid during attacks, info                       |
| **Alaban (Outlaw Zone)**                      | Smuggler Merchants | Friendly  | 0–999              | Access to rare/illegal items                   |
|                                               | Smuggler Merchants | Honored   | 1000–2499          | Discount, rare items, exclusive missions       |
| **Middlean Islands – Capital City**           | Capital Vendors    | Friendly  | 0–1499             | Access to all basic items from Dendera & Zonen |
|                                               | Capital Vendors    | Honored   | 1500–2999          | Discount, special city items                   |
|                                               | Trainers           | Friendly  | 0–1499             | Standard skill learning                        |
|                                               | Trainers           | Revered   | 1500–2999          | Advanced skills, special quests                |
| **Outland Territories – Aarong Forest**       | Vendors            | Friendly  | 0–999              | Basic items from Outland                       |
|                                               | Quest Givers       | Friendly  | 0–999              | Low-level quests                               |
|                                               | Guards             | Friendly  | 0–999              | Patrol support                                 |
|                                               | Vendors            | Honored   | 1000–2499          | Discounts, rare items                          |
|                                               | Quest Givers       | Revered   | 2500–4999          | Special missions unlocked                      |
| **Outland Territories – Frozen Territory**    | Vendors            | Friendly  | 0–999              | Basic region items                             |
|                                               | Quest Givers       | Friendly  | 0–999              | Low-level quests                               |
|                                               | Vendors            | Honored   | 1000–2499          | Discounts, rare items                          |
| **Outland Territories – Lagooma Jungle**      | Vendors            | Friendly  | 0–999              | Basic region items                             |
|                                               | Quest Givers       | Friendly  | 0–999              | Low-level quests                               |
|                                               | Vendors            | Honored   | 1000–2499          | Discounts, rare items                          |
| **Outland Territories – Tenebress Territory** | Vendors            | Friendly  | 0–999              | Basic region items                             |
|                                               | Quest Givers       | Friendly  | 0–999              | Low-level quests                               |
|                                               | Vendors            | Honored   | 1000–2499          | Discounts, rare items                          |
| **Underworld**                                | Shadow Vendors     | Friendly  | 0–999              | Basic underworld items                         |
|                                               | Shadow Vendors     | Honored   | 1000–2499          | Rare underworld items, quests                  |

---

	Notes / Mechanics :

1. REP Levels follow a WoW-like system:
	* Friendly → Honored → Revered → Exalted

2. NPC Recognition Across Regions :
	* Completing REP in "Dendera" or "Zonen" automatically increases starting REP in "Middlean Islands".
	* Completing REP on the starting continent partially unlocks REP in "Outland Territories".

3. NPCs without REP :
	* Teleport NPCs
	* Certain event-specific NPCs

4. Special NPC Mechanics :
	* Some NPCs require daily or weekly quests to increase REP.
	* Smugglers in Alaban and faction-specific Outlaw NPCs act as “cross-faction” vendors for certain players.

5. Rewards :
	* Discounts, exclusive items, rare recipes, special quests, access to hidden locations, or bonus services.

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

		Section V – NPC Rewards and Benefits (Extended Version)

	1. General Vendors

* Reward Type :
	* Discounts on common and rare goods.
	* Access to rare consumables, materials, or crafting tools.
	* Occasionally unlocks special vendor-exclusive items.

* Unlock Mechanism :
	* Friendly REP (0–2999) : Standard goods available.
	* Honored REP (3000–5999) : Unlocks rare consumables and minor discounts (-5% to -10% on goods).
	* Revered REP (6000–9999) : Unlocks rare materials, crafting items, better discounts (-15%), access to special limited items.
	* Exalted REP (10000+) : Unlocks exclusive vendor items, further discount (-20%), and first access to rare event goods.

* Example :
	* A Dendera city general vendor provides rare potions once a player reaches "Honored REP".

---

	2. Quest Givers

* Reward Type :
	* Exclusive quests unlocking hidden storylines.
	* Optional side quests with rare item rewards.
	* Bonus EXP or currency based on REP level.

* Unlock Mechanism :
	* Neutral (0–999) : Basic quests available.
	* Friendly (1000–2999) : Minor side quests unlocked.
	* Honored (3000–5999) : Special quests granting rare items.
	* Revered (6000–9999) : Storyline-related quests unlocked; optional bonus rewards.
	* Exalted (10000+) : Unique or legendary quest chains unlocked, exclusive title rewards.

* Example :
	* A Zonen city quest giver unlocks a hidden trade caravan quest at "Revered REP".

---

	Trainers / Profession Trainers

* Reward Type :
	* Unlock advanced skills and new recipes.
	* Offer reduced training costs or free access to profession-specific items.
	* Access to profession-exclusive quests.

* Unlock Mechanism :
	* Friendly : Basic skill training.
	* Honored : Intermediate skills and recipes unlocked; small discount on training.
	* Revered : Advanced recipes, additional tools, medium discount (-10% to -15%).
	* Exalted : Legendary recipes, free or highly discounted training (-20%), unlock of secret profession mechanics.

* Example :
	* Master Blacksmith in Dendera grants access to legendary crafting recipes at "Exalted REP".

---

	4. Guards / Guardians

* Reward Type :
	* Assistance during attacks or hostile encounters.
	* Access to safe passage through territories.
	* Bonus hints about nearby threats, hidden treasure, or NPCs.

* Unlock Mechanism :
	* Neutral / Friendly : Guards respond if attacked.
	* Honored : Guards may offer escort missions and minor bonuses.
	* Revered : Full protective support, temporary buffs in combat.
	* Exalted : Unlock advanced missions, extra rare loot, or hidden NPC interactions.

* Example :
	* Guards in "Middlean Capital City" escort a player safely through the city at "Honored REP".

---

	5. Special NPCs (Smugglers, Regional Merchants, Pet/Mount Masters)

* Reward Type :
	* Rare or unique items.
	* Temporary storage or summoning services for pets/mounts.
	* Access to limited stock items from “Item Shop” or unique trade routes.
* Unlock Mechanism :
	* REP increases through completing daily/weekly quests or specific trade actions.
	* Friendly / Honored : Access to basic rare items and storage services.
	* Revered : Access to very rare items, storage upgrades, exclusive trade.
	* Exalted : Complete access to rare inventory, unique items, and special summons.
* Example :
	* Alaban smuggler sells unique weapons at "Revered REP".
	* Regional Merchant (Middlean Island) grants first-access items after completing weekly quests and reaching **Honored REP**.

---

	6. Cumulative Effects

* Mechanic : REP across multiple regions influences NPC interactions elsewhere.
* Example :
	* Exalted REP with Dendera vendors provides starting "Honored REP" with "Middlean Islands NPCs".
	* REP gained in starting continents carries over to "Outland Territories", providing rank boosts automatically for certain NPCs.

---

	7. Event-based Rewards

* Mechanic : Certain NPCs react to world events, seasonal, or time-limited activities.
* Rewards : Exclusive items, bonus EXP, unique consumables, or temporary buffs.
* Example :
	* NPCs in the city unlock special seasonal items for players with Honored or higher REP.

---

	NPC Reputation System – Numeric Table

| REP Level | Threshold   | General Vendors                                                          | Quest Givers                                     | Trainers / Profession NPCs                                                              | Guards / Guardians                                                 | Special NPCs (Smugglers, Regional Merchants, Pet/Mount Masters)                      |
| --------- | ----------- | ------------------------------------------------------------------------ | ------------------------------------------------ | --------------------------------------------------------------------------------------- | ------------------------------------------------------------------ | ------------------------------------------------------------------------------------ |
| Neutral   | 0 – 999     | Standard goods                                                           | Basic quests                                     | Basic skill training                                                                    | Respond if attacked                                                | Limited access, minimal services                                                     |
| Friendly  | 1000 – 2999 | Standard goods + minor discounts (-5%)                                   | Minor side quests                                | Basic recipes unlocked, minor training discount                                         | May offer escort missions                                          | Access to some rare items, basic storage or summon services                          |
| Honored   | 3000 – 5999 | Rare consumables & crafting materials, discounts (-10%)                  | Special quests granting rare items               | Intermediate skills & recipes, medium discount (-10%)                                   | Full protective support, temporary combat buffs                    | More rare items, upgraded storage/summon, daily/weekly quest access                  |
| Revered   | 6000 – 9999 | Rare materials & limited stock items, discounts (-15%)                   | Storyline-related quests, optional bonus rewards | Advanced recipes & tools, advanced training (-15%)                                      | Unlock advanced missions, extra rare loot                          | Exclusive rare items, improved storage, weekly quest bonuses                         |
| Exalted   | 10000+      | Exclusive vendor items, first access to event goods, max discount (-20%) | Legendary quest chains, exclusive titles         | Legendary recipes, free or highly discounted training (-20%), secret mechanics unlocked | Rare unique missions, elite guard support, hidden NPC interactions | Full access to all rare items, ultimate storage, summoning services, special bonuses |

---

	Additional Notes :

1. Cumulative REP Effect :
	REP gained in starting continents (Dendera, Zonen) partially transfers to Middlean Islands NPCs and Outland Territories NPCs. This provides starting rank boosts
without repeating all REP grind.

2. Daily / Weekly Quests Influence :
	Some Special NPCs (Regional Merchants, Smugglers, Pet/Mount Masters) require repeated quests to increase REP. These quests may include trade, crafting, or 
combat objectives.

3. Faction-Specific REP :
	REP is also influenced by the player’s faction alignment. For example:
	* Knights aligned players gain faster REP with Dendera NPCs.
	* Outlaws can interact with both Dendera and Zonen smuggler factions for specialized rewards.

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

		Section VII – System Integration and Technical Notes

	7.1 Integration with NPC Core File

	The REPutation system is deeply interconnected with the "NPC Core" structure. Every NPC capable of interacting with the player beyond simple dialogue can be 
assigned a "Reputation ID (REP_ID)". This ID links the NPC to a specific faction, group, or settlement.

	Mechanics :
* Each NPC has a configurable `ReputationValue`, `ReputationType`, and `ReputationTriggers` property in its data profile.
* NPC interactions such as completing quests, trading, restocking goods, or helping in defense events modify REP values.
* Negative actions (e.g., attacking guards, merchants, or allied NPCs) will decrease the REP value.
* The "Traitor’s Mark" debuff is automatically triggered if the player falls below a hostile threshold within a region or faction.

	Example :

```lua
NPC.Reputation = {
    REP_ID = "DENDERA_CITY_GUARD",
    Type = "Faction",
    StartingValue = 0,
    MaxValue = 42000,
    Thresholds = {"Hated", "Hostile", "Unfriendly", "Neutral", "Friendly", "Honored", "Revered", "Exalted"}
}
```

---

	7.2 Integration with Quest System

	The "Quest System" uses REPutation as a reward modifier and progression gate.
	Certain quests are "REP-locked", meaning players must achieve a minimum standing before accessing them.

	Key Mechanics :

* Daily & Weekly Quests : Provide consistent REP growth within regions or cities.
* Milestone Quests : Trigger upon reaching specific REP levels (e.g., Exalted unlocks elite city quests).
* Faction Event Quests : Large-scale dynamic missions that affect multiple players’ REP simultaneously (e.g., defending a port or restocking caravans).
* Hidden Reputation Lines : Secretive or outlaw NPCs (e.g., smugglers, thieves, assassins) offer REP through covert missions that may conflict with lawful factions.

---

	7.3 Integration with Economy and Vendor Systems

	Reputation directly influences merchant behavior, pricing, inventory access, and trade frequency.

	Economic Effects :

* Friendly or higher REP : Reduced prices (up to -20%), access to rare goods, and early item restocks.
* Neutral REP : Standard prices and availability.
* Hostile REP : Merchants refuse trade or increase prices drastically (up to +50%).
* Unique Vendors (e.g., Regional Merchants or Specialty Crafters): Appear only for players with specific REP levels or items tied to faction favor.
* Dynamic Stock Resets : Merchants with linked REP restock more frequently for players maintaining positive standings.

---

	7.4 Integration with Combat and PvP Systems

	The REPutation system integrates with combat behavior to reflect moral and social consequences.

	Combat Effects :

* Attacking neutral or friendly NPCs reduces REP drastically with their faction and allied subfactions.
* Killing faction guards or leaders triggers the "Traitor’s Mark" debuff:
	* Reduces EXP gain by 15%
	* Merchants sell fewer goods (-50% stock)
	* Quest givers suspend activity for the player for 12–24 hours
* Restoring REP after hostility requires atonement quests or fines paid to faction representatives.
* Players flagged with *Traitor’s Mark* can be legally attacked by other players in certain PvP zones.

---

	7.5 Integration with UI/UX Systems

	A clean, informative interface helps players track REP progress and understand consequences.

	UI Elements :

* Reputation Panel in the character sheet displaying:
	* Current REP level and numeric value
	* Progress bar with visual rank thresholds
	* Associated NPCs or factions per region

* Tooltip Integration :
	* Hovering over NPCs or merchants displays current REP status (e.g., *Friendly*, *Honored*).

* Map Indicators :
	* Regional icons show where players can earn REP with specific factions.
	* Color-coded markers for hostile, neutral, or allied areas.

* Event Notifications :
	* Floating text for REP changes (e.g., “+150 Reputation with Zonen Guards”).
	* Warnings for REP loss or faction hostility changes.

---

	7.6 – Developer Implementation Notes

	7.6.1 Data Storage and Synchronization

	The REPutation system uses persistent data storage per character, with optional account-wide synchronization for legacy or neutral factions.

	Technical Setup :
* Each character maintains a structured table `PlayerReputation`:

  ```lua
  PlayerReputation = {
      ["FactionName"] = {
          CurrentValue = 15750,
          Rank = "Friendly",
          LastUpdated = os.time(),
          LinkedNPCs = {"Dendera Merchant", "City Guard Captain"},
          Region = "Dendera Continent"
      },
  }
  ```
* Data is saved server-side to prevent manipulation and synced upon:
	* Player login / logout
	* REP change event (gain or loss)
	* Quest completion or failure

* Account-wide reputations** apply to neutral or global factions such as:
	* “Middlean Capital Council”
	* “Underworld Syndicate”
	* “Outland Expedition Coalition”

* Replication Rules :
	* Regional or city-based REP = Character only
	* Global or legacy REP = Account-shared

---

	7.6.2 Reputation Update Events

	To maintain modularity, every REP-altering event is triggered by an "Event Hook System".
	These are integrated in all major systems (Quests, Vendors, Combat, and Dialogues).

	Core Hooks :

```lua
Events:Register("OnQuestComplete", function(player, questID)
    ModifyReputation(player, questID.RewardReputation)
end)

Events:Register("OnNPCKill", function(player, npcID)
    ModifyReputation(player, GetNPCReputationLoss(npcID))
end)

Events:Register("OnTradeSuccess", function(player, npcID)
    ModifyReputation(player, GetTradeReputationGain(npcID))
end)
```

**Reputation Modification Function :

```lua
function ModifyReputation(player, value)
    local current = player.Reputation.CurrentValue
    player.Reputation.CurrentValue = math.clamp(current + value, 0, MAX_REP_VALUE)
    UpdateReputationRank(player)
end
```

---

	7.6.3 Rank Synchronization and Scaling

	Ranks are automatically scaled based on total numeric value and displayed dynamically on the UI.

| Rank       | REP Range       | Behavior                                               |
| ---------- | --------------- | ------------------------------------------------------ |
| Hated      | 0 – 3,000       | Attacked on sight; access blocked                      |
| Hostile    | 3,001 – 9,000   | Refused trade; NPCs warn player                        |
| Unfriendly | 9,001 – 12,000  | Limited dialogue and quests                            |
| Neutral    | 12,001 – 15,000 | Normal access; standard prices                         |
| Friendly   | 15,001 – 21,000 | Reduced prices; minor quest unlocks                    |
| Honored    | 21,001 – 30,000 | Special discounts; cosmetic rewards                    |
| Revered    | 30,001 – 39,000 | Unique items and advanced quests                       |
| Exalted    | 39,001 – 42,000 | Access to elite content, mounts, and hidden storylines |

	These ranks are universal across all factions and NPCs unless custom behavior is defined per NPC or region.

---

	7.6.4 Debugging and Testing Tools

	For development and balancing, debug commands are integrated for GMs or testers.

	Console Commands :

```lua
/reputation add <faction> <amount>
/reputation set <faction> <rank>
/reputation list
/reputation reset <faction>
```

	Testing Utilities :

* Log all REP gain/loss to the console.
* Visualize regional reputation influence with colored overlays on developer map tools.
* Simulate faction hostility or alliance states for QA testing.

---

	7.6.5 System Dependencies

	This system links and depends on:

* NPC Core System (Reputation Hooks and Dialogue Triggers)
* Quest System (Reputation Rewards and Prerequisites)
* Economy System (Vendor Stock & Pricing)
* Combat System (Reputation Penalties and Debuff Triggers)
* Debuff System (“Traitor’s Mark” Integration)
* UI Framework (Reputation Tracker and Map Indicators)

	Each subsystem is loosely coupled via the Event Hook System, ensuring modular design and independent updates.

---

	7.6.6 Future Expansion Support

	The REPutation system is designed with future expansion zones, continents, or factions in mind:

* Dynamic faction alliances that shift over time (e.g., seasonal or world events).
* Cross-region synchronization where player reputation affects multiple territories.
* Integration with "Guilds", allowing group reputation pooling.

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

		Section VIII – Summary and Balancing Notes

	8.1 System Overview

	The "REPutation System" functions as a dynamic relational framework that governs how players interact with the living world.
	Every NPC, faction, and region can participate, allowing the game world to evolve naturally based on player actions.
	It directly impacts:

* NPC dialogue, behavior, and hostility.
* Access to special quests, goods, and discounts.
* Eligibility for region-specific or faction-bound storylines.

	By replicating the proven World of Warcraft model while extending it through region interconnection (Dendera, Zonen, Middlean, Outland Territories, and Alaban),
this system ensures long-term progression and narrative immersion.

---

	8.2 Balancing Guidelines

	8.2.1 Reputation Gain Rates

	To prevent reputation grinding from feeling either trivial or overly time-consuming:

* Minor Factions / Individual NPCs
	Gain rate should range between 5–25 REP per minor task or trade interaction.
* Major Factions / Regional Alliances
	Reputation increases by 100–500 REP per quest or event participation.
* Daily / Weekly Quests
	Should yield 250–750 REP, encouraging consistent but non-repetitive engagement.
* Cross-Region Boosts
	When players reach “Exalted” in one continent, related regions should start with 10–15% REP pre-filled for immersion and continuity.

---

	8.2.2 Reputation Decay & Penalties

	Reputation decay maintains realism and discourages inactive players from hoarding maximum standings indefinitely.

* Inactivity Decay :
	If no interaction occurs for 30 in-game days, 5% of current REP gradually decays weekly.

* Penalty Sources :
	* Killing friendly or neutral NPCs.
	* Completing quests for rival factions.
	* Participating in outlaw activities (smuggling, black market trading).

* Associated Debuff :
	"Traitor’s Mark" temporarily reduces EXP gain and trading efficiency for offenders.

---

	8.2.3 Multi-Faction Balancing

	Since each continent and faction can coexist with its own internal REP systems:

* Avoid symmetrical progression; make each faction feel unique.
	(e.g., Dendera = Order and Law, Zonen = Commerce and Knowledge, Outland = Survival and Discovery, Alaban = Smuggling and Secrecy).
* Some factions can oppose each other. Gaining REP with one may reduce REP with another (mirroring faction rivalry).
	Example: Helping the Dendera Guard lowers standing with Outlaw Smugglers.

---

	8.3 Player Experience Goals

	8.3.1 Early Game (Starting Continents)

* Teach players REP mechanics gradually via tutorial quests.
* Use visible NPC feedback (dialogue, emotes, shop prices) to show consequences.
* Allow reputation-based shortcuts or fast travel unlocks for players who gain early favor.

	8.3.2 Mid Game (Middlean Islands, Capital City)

* Introduce cross-faction interactions and reputation trade-offs.
* Make REP a meaningful factor for accessing regional merchants, neutral guilds, and rare crafting materials.

	8.3.3 Late Game (Outland Territories)

* Transform REP into a strategic endgame system :
	* Unlock access to rare mounts, relics, or world boss raids.
	* Provide region-exclusive buffs (e.g., protection in elemental regions).
	* Enable alliances with new, morally grey factions (e.g., mercenaries or heretics).

---

	8.4 Development & Testing Notes

	Balancing Checklist for QA :

1. Ensure all NPCs with active REP roles respond properly to rank thresholds.
2. Validate event hooks for every REP gain/loss scenario.
3. Confirm data persistence between sessions.
4. Stress-test faction rivalry mechanics to prevent exploit loops.
5. Verify that cross-region pre-filled reputation values behave correctly after migration.

	Debug Tools (for Developers) :

* `/reputation show <region>` – Displays all current factions and REP values.
* `/reputation simulate <faction> <event>` – Runs scripted reputation scenarios for balance tests.
* `/reputation audit` – Lists all NPCs incorrectly linked to multiple REP factions.

---

	8.5 Final Summary

	The "REPutation System" forms one of the foundational pillars of the game’s social and progression structure.
	Through it, every player action contributes to a persistent sense of consequence and world belonging.
	Whether gaining favor with the honorable knights of Dendera, the scholars of Zonen, or the cunning smugglers of Alaban — the system ensures that every 
interaction is meaningful, traceable, and rewarding.

-------------------------------------------------------------------------------------------------------------------------------------------------------------------

		Section IX – API Integration & Developer Notes

	9.1 Overview

	The "REPutation API" provides the backend functions and hooks required to manage player reputation data, synchronize changes across the world, and integrate 
with NPC behaviors, quests, and events.
	It allows both system-level and modular scripts to query, modify, or react to reputation values dynamically, ensuring all reputation-based interactions are 
consistent and persistent.

---

	9.2 Core Data Structure

	Each player has a "Reputation Table" stored in their character data, formatted as:

```lua
Player.Reputation = {
    ["FactionName"] = {
        current = 0,            -- Current reputation points
        rank = "Neutral",        -- Current rank (string label)
        lastUpdated = os.time(), -- Timestamp for decay or tracking
        region = "Dendera",      -- Optional region/faction tag
    },
}
```

	All reputation progress is serialized in the player’s save file or character database upon logout or world event triggers.

---

	9.3 Primary API Functions

	GetReputation(factionName)

	Returns the player’s current reputation points and rank for a given faction or NPC group.

```lua
local rep, rank = GetReputation("Dendera Guard")
```

	AddReputation(factionName, value)

	Increases (or decreases, if negative) the reputation points for a given faction. Automatically updates the rank and triggers relevant events.

```lua
AddReputation("Outlaw Smugglers", 250)
```

	SetReputationRank(factionName, rank)

	Manually sets the reputation rank (for debug or quest scripting).

```lua
SetReputationRank("Zonen Scholars", "Friendly")
```

	GetFactionRankName(value)

	Translates a numerical reputation value into its corresponding rank name (e.g., “Honored”, “Revered”).

```lua
local rankName = GetFactionRankName(4200)
```

	GetFactionStandingColor(rank)

	Returns a color code (hex) for UI display (e.g., Neutral = yellow, Friendly = green, Hostile = red).

```lua
local color = GetFactionStandingColor("Friendly")
```

---

	9.4 Reputation Event Hooks

	OnReputationChange(player, faction, delta)

	Triggered every time a player gains or loses reputation.
	Can be used to play animations, trigger dialogue changes, or unlock new shop inventory.

	OnReputationRankUp(player, faction, newRank)

	Triggered when a player’s reputation crosses a threshold to a higher rank.
	Example usage:
* Granting access to faction vendors or mounts.
* Unlocking profession recipes tied to that faction.
* Displaying on-screen notifications.

	OnReputationDecay(player, faction, percentLost)

	Fires during scheduled reputation decay events due to inactivity or penalties.

---

	9.5 NPC and Quest Integration

	NPC Configuration Example

```lua
NPC = {
    id = 1053,
    name = "Captain Lorn",
    faction = "Dendera Guard",
    reputationRequired = "Friendly",
    onInteract = function(player)
        if GetReputationRank(player, "Dendera Guard") == "Friendly" then
            OpenVendorWindow(player, NPC)
        else
            NPCDialogue(player, "Earn our trust before I do business with you.")
        end
    end
}
```

	Quest Example

```lua
Quest = {
    id = 2084,
    name = "Defend the Frontier",
    rewardReputation = { faction = "Zonen Scholars", value = 500 },
    onComplete = function(player)
        AddReputation("Zonen Scholars", 500)
        NPCDialogue(player, "You’ve earned the scholars’ gratitude!")
    end
}
```

---

	9.6 Debug and Administrative Commands

| Command                         | Description                                                        |
| ------------------------------- | ------------------------------------------------------------------ |
| `/rep show [faction]`           | Displays player’s current REP with all factions or a specific one. |
| `/rep add [faction] [value]`    | Adds reputation manually (admin/debug use).                        |
| `/rep setrank [faction] [rank]` | Forces a rank for testing.                                         |
| `/rep reset`                    | Resets all reputation values to Neutral (for testing).             |

---

	9.7 Data Persistence & Sync

	All reputation data is automatically:

* "Saved" on logout, map change, or event completion.
* "Loaded" on login, spawning NPC responses and quest eligibility dynamically.
* "Synced" across party members when group-based faction reputation is gained (e.g., joint quest completion or raid events).

---

	9.8 Compatibility and Expansion

	The system is built to integrate seamlessly with:

* NPC Core Framework (for dialogue, hostility, and shop conditions).
* Quest System (for rewards and rank-based prerequisites).
* Event System (for world events, sieges, or festivals).
* Profession System (for faction-specific recipes and crafting bonuses).

	Future expansions may include:

* Cross-character or account-wide reputation sharing.
* Guild-wide reputation scaling (e.g., guilds gaining faction trust collectively).
* Dynamic faction diplomacy (factions changing alliances in real time).

---

	9.9 Summary

	This section ensures developers and modders can easily extend, debug, and integrate the Reputation System with every gameplay layer — from NPC logic to faction
politics.
	It’s designed to be fully modular, transparent, and scalable, maintaining a perfect balance between simplicity for scripters and depth for systemic
interactions.

-------------------------------------------------------------------------------------------------------------------------------------------------------------------