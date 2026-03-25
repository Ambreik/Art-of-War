			Pet System
			
	
		Section 1 — Overview

	Purpose : The "Pet System" provides players with companion entities that act as semi-autonomous teammates. Pets serve multiple roles in the game: light combat 
assistance, tactical aggro management, passive bonuses to the player, and utility (inventory carriers). Pets are mechanical systems — not emotional bonding sims — 
and their behaviour, progression, and effects are expressed entirely through gameplay mechanics.

	Core Principles

* Shared foundation with Taming "System" : All tamable monsters that meet the taming criteria in `Monster.lua` can become pets using the universal "Taming System". 
The same taming items and "Tame Passive Skill" apply for both mounts and pets.
* Single, cohesive system : Pets use the same core mechanics family as mounts (taming items, success/failure logic, cooldowns), but they branch into pet-specific 
rules (summon compatibility, skill packs, archetypes, and evolution).
* Player agency and repeatability : When a monster is tamed into a pet, the result (archetype, skill assortment) is randomized within defined constraints. Players 
may dismiss or sell pets if they want to re-tame for a different roll.
* No hidden assumptions : All pet effects, access rules, and interactions follow the mechanics discussed and documented in the "Taming System" and associated "Mechanics" files.

	Pet Roles & High-Level Classification

	Pets are grouped into five main types. Details appear in Section 3; this overview lists them for quick reference:

1. "Normal Pets" — common tamable beasts; entry-level companions. Provide minor combat support, a few passive bonuses for the player, and can evolve after reaching 
specific level thresholds.
2. "Evolved Pets" — evolved form of "Normal Pets" with stronger combat abilities and visual model upgrades; retain passives and can use skill trees.
3. "Combat Pets" — player-controlled, PvP-oriented companions with more complex skillsets and rearrangeable skill trees (for higher rarity). Only one combat pet may
be active at a time; summoning another will dismiss the current pet.
4. "Exotic Pets" — rare, high-end companions combining "Evolved" and "Combat" traits with advanced mechanics, additional passives, unique effects, and higher 
durability. Exotic pets cannot be summoned alongside Normal/Evolved/Combat pets.
5. "Carrier Pets" — utility-only companions that provide inventory space and environmental resistances; can be summoned alongside other pets and do not participate 
in combat.

	Acquisition & Randomization Principles

* Any tamable monster in the world can become a "Normal Pet" upon successful taming. The pet’s archetype (Tanky, Berserk, God, Skillable, Vampiric) and initial 
skill set are determined randomly from the species’ predefined skill pool.
* If a player is unhappy with the rolled archetype or skill set, the pet can be dismissed or sold on the market; players may re-tame the same monster species later 
to attempt different results.
* "Normal Pets" that meet evolution conditions (level thresholds specified per species) have a 50/50 chance to evolve into either "Evolved" or "Combat" type. Exotic
outcomes and other special evolutions are event- or item-driven as per previously documented rules.

	Skill & Passive Assignment Rules (summary)

* When a monster becomes a pet it receives 1–4 active skills randomly drawn from a race-specific skill pack (up to 10 skills defined per species). These skills 
reflect the monster’s original combat kit.
* Pets grant passive bonuses to their master. Normal pets provide the basic set (HP, damage vs. monsters, elemental resistance, etc.). Evolved / Combat / Exotic 
pets provide extended passives tied to element, race and type.
* Advanced pet types (Evolved, Combat, Exotic) can use the "Skill Tree" system for progression and rearrangement in accordance with their rarity and level rules.

	Combat & Behavior Principles

* All pets act as teammate mini-versions of their monster origin : they can attack the player’s current target, use skills according to archetype and available 
skill set, and influence aggro depending on archetype (Tanky/Berserk/God can draw aggro to protect the player; effectiveness is limited against Rank IV+ bosses and similar high-tier enemies).
* "Combat Pets" are specifically tuned for PvP interaction and have passive effects that can activate when the player is in combat stance against other players.
* Summon rules : Combat/Evolved/Exotic/Normal pets are mutually exclusive where stated (e.g., Combat cannot be summoned while a Normal/Evolved/Exotic is active). 
Carrier Pets may be summoned alongside others.

	UI & Player Information

* Pet UI mirrors the Mount UI in structure and provides the following information (Section 7 will expand):
	* Name / Species
	* Level / EXP / Time of activity (total active time)
	* Starvation / Hunger meter
	* Type & Class / Archetype
	* Passive skills and active skills currently learned
	* For Evolved / Combat / Exotic: Skill Tree tab and rearrangement options (as allowed by rarity/level)
* The UI exposes actionable options: feed, dismiss, sell, evolve (when eligible), and access to pet skill/behavior commands.

	Durability, Starvation & Survival

* Pets have hunger mechanics tied to environment and diet. Pets taken far from their native biome may starve faster. Exotic pets tolerate starvation longer.
* Starvation, neglect or lack of appropriate food results in performance penalties and—if unchecked—can lead to permanent loss per the Dormant/Starvation rules 
established in Mount mechanics.

	Economy & Market Considerations

* Pets are tradeable (unless flagged otherwise per special items) and can be sold on the market.
* The random nature of pet archetypes/skills and the existence of valuable rare/exotic pets creates an economy of rerolling, market trading, and item usage for 
targeted outcomes (e.g., rare class-change items).


--------------------------------------------------------------------------------------------------------------------------------------------------------------------

		2. PET ACQUISITION

	Overview : Pet acquisition in "Art of War" is a multi-path system that allows players to obtain companions through taming, questing, exploration, and special 
rewards. While taming remains the core mechanic, additional acquisition paths ensure diversity and accessibility across player progressions.

	Every pet, regardless of how it is obtained, ultimately follows the same "Pet Core Rules" defined in the "Pet System" — meaning all pets have archetypes, random
skill allocations, and evolution potential.

---

	2.1 Taming Wild Monsters

	Taming is the primary method of obtaining pets and directly integrates with the "Taming System". Any monster that is flagged as "Tamable" in "Monster.lua" can 
potentially become a pet upon successful taming.

	Process Summary

1. Player uses the "Tame Ability" (a passive skill enabling taming attempts on tamable creatures).
2. The player must meet the taming conditions — correct item equipped, correct monster HP threshold, correct biome (if applicable).
3. The player uses one of the "Taming Items".
4. Success or failure is calculated using:
	* Player "Taming Focus" and "Monster Resistance" (from Mechanics: FocusResistance.lua)
	* Environmental modifiers (biome and weather)
	* Player’s level difference and luck factor
5. On success:
	* The monster becomes a "Pet Contract" (itemized form) stored in the player’s inventory as a seal, specific for each race of pet.
	* On summoning, the pet’s archetype, skill pack, and visuals are rolled.

	Failure Outcomes

* Taming Failure : The monster becomes aggressive (enters “Frenzy” mode) and cannot be tamed again for several minutes.
* Critical Failure : The monster despawns or permanently increases its resistance to further taming attempts by that player.
* Cooldown : The player’s "Tame" ability enters a global cooldown defined in `TamingCooldown.lua`, preventing spam attempts.

---

	2.2 Quest, Event, and Chest Rewards

	Certain pets are exclusive to world events, limited-time content, or special NPCs. These are typically cosmetic, lore-based, or unique-type companions that 
cannot be obtained through regular taming.

	Sources

* Main Story or Side Quests : Some storyline milestones grant symbolic or utility pets (e.g., questline companions, messenger birds, spirit familiars).
* Event Rewards : Seasonal festivals or invasions can reward rare pets with special skins or passive bonuses.
* Treasure Chests : Random chance to contain rare "Pet Contracts" for specific creatures (e.g., "Baby Drake Contract").
* Dungeon Boss Drops : Unique bosses can drop eggs, essences, or contracts of their miniaturized versions as rare pets.

	These pets are predefined (fixed archetype and skill set) and do not roll random traits, ensuring balanced distribution and collectible rarity.

---

	2.3 NPC Vendors and Item Shop

	Some pets are available through "NPCs" or premium purchases. These follow the same internal system but often include pre-rolled attributes.

	Types of Vendors :  

* Beast Tamers : Located in major cities, offering basic and regional pets for gold, mostly depending of the REPutation based selling.
* Exotic Traders : Appear in "Outland Territories" or as traveling merchants. Sell exotic pet contracts for rare currencies.
* Item Shop : Offers cosmetic versions of pets with identical stats but unique appearances.
* Limited Vendors : Event-based or region-exclusive, selling temporary contracts (e.g., "Festival Fox Contract").

	Vendor Pet Mechanics

* NPC or shop pets are instantly acquired as "Pet Contracts".
* They have fixed rarity, fixed archetype, and no random skill pack, unless otherwise noted in event descriptions.
* Cosmetic variants cannot evolve or participate in combat.

---

	2.4 Archetype Generation

	When a wild monster is tamed, the system determines its archetype immediately during the contract creation step.

	Possible Archetypes

* "Tanky" – Focus on aggro control and defense.
* "Berserk" – High damage, low defense.
* "God" – Hybrid archetype capable of aggro redirection and temporary buffs.
* "Skillable" – Gains additional active skills instead of stronger passives.
* "Vampiric" – Regains HP on hit and may heal its master.

	Each archetype modifies the pet’s "AI behavior", skill preference, and passive bonus distribution to the player.

	Randomization

* Archetype assignment is random, weighted by monster family (e.g., Wolves more likely to be Berserk, Bears more likely to be Tanky).
* The archetype determines which skill pack subset will be rolled from the parent species’ pool.
* On tamed contract creation, the system rolls between 1–4 active skills and 1–3 passive skills according to rarity.

---

	2.5 Re-Rolling and Re-Taming

	Dismissal & Sale

* Any pet may be dismissed through the Pet UI, freeing the player to reattempt taming.
* Alternatively, the "Pet Contract" can be sold or traded on the market, allowing player-driven economy around desirable rolls.

	Class-Change Item

* There exists a rare consumable item that allows the player to reroll a pet’s class/archetype once.
* The item does not change the pet’s type (Normal/Evolved/Combat/Exotic) but only its combat behavior and passives.
* It cannot be used on event, cosmetic, or shop-exclusive pets.

---

	2.6 Evolution Chance

	When a "Normal Pet" reaches its evolution threshold (as defined per species):

* It has a 50/50 chance to evolve into either "Evolved" or "Combat" type.
* "Evolved Pets" enhance their skill set and passives, while "Combat Pets" focus on offense and player synergy.
* The chance can be influenced by rare evolution items (e.g., Blessed Catalyst Stone).

---

	2.7 Summary Table

| Acquisition Source | Type     | Randomized | Evolvable | Tradeable | Notes                                      |
| ------------------ | -------- | ---------- | --------- | --------- | ------------------------------------------ |
| Wild Taming        | Normal   | ✅          | ✅         | ✅         | Core path; archetype & skill randomization |
| Quest/Event        | Fixed    | ❌          | ❌         | ❌         | Cosmetic or lore pets only                 |
| NPC Vendor         | Normal   | ❌          | ✅         | ✅         | Standard city pets                         |
| Item Shop          | Cosmetic | ❌          | ❌         | ❌         | Visual variant only                        |
| Chest/Boss Drop    | Exotic   | ✅          | ✅         | ✅         | Rare mini-boss or unique pets              |

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

		3. PET TYPES

	Pets in "Art of War" are divided into five major categories, each serving distinct gameplay roles, mechanical depth, and strategic functions.
	While all pets share the same base systems — AI behavior, leveling, emote interaction, passive bonuses, and combat participation — their specializations 
determine how they interact with the world, the player, and enemies.

---

	3.1 Normal Pets

	Core Characteristics

	"Normal Pets" are the foundation of the "Pet System" — simple, tamable creatures commonly found across the world. They represent the first level of 
companionship for most players and serve as early-game allies that provide small but meaningful advantages.

* Obtained through taming, low-tier quests, or regional vendors.
* Share elemental alignment with their original monster form: "Earth", "Water", "Wind", "Fire", "Shadow", or "Light".
* Roll one of the five archetypes upon taming: "Tanky", "Berserk", "God", "Skillable", or "Vampiric".
* May randomly obtain 1–4 active skills and 1–3 passive skills from their species’ skill pool.
* Provide passive bonuses effects (HP boosts, resistances, strong against monsters, etc.).

	Role in Gameplay
	
	Normal pets support their masters with light combat assistance and stat bonuses. They are ideal for leveling, exploration, and early PvE content.

	Strengths : 
* Easy to obtain and maintain.
* Can evolve at higher levels (30 or 50 depending on species).
* Share useful passive stats for beginner characters.
* Have moderate AI responsiveness and basic emote interaction.

	Weaknesses : 
* Limited in power and survivability.
* Lower skill cap and no customizable skill tree.
* Short starvation tolerance — must be regularly fed.
* Visuals remain similar to the untamed wild creature.

	Restrictions :
* Only one can be summoned at a time.
* Cannot be summoned with "Combat", "Evolved", or "Exotic" pets.
* Cannot coexist with a "Companion" (Vampire-only pet type).

	Visual & Behavioral Traits :
* Share same model as their wild version, without armor or effects.
* Use a basic "Emote System" (idle animations, light affection/emotion cycles).
* Have low expressivity and respond mainly to player actions or hunger.

---

	3.2 Evolved Pets

	Core Characteristics

	"Evolved Pets" are the natural progression of "Normal Pets", achieved when specific level thresholds are reached and evolution conditions are met. They retain 
the essence of their previous form but display enhanced combat behavior, upgraded models, and new skill potential.

* Result of "Normal Pet" evolution (50% chance versus Combat evolution).
* Gain improved stats, new attack animations, and skill augmentations.
* Acquire armor, glowing effects, or enhanced textures post-evolution.
* Access to expanded "Skill Tree System" starting at evolution.
* Can participate in active combat alongside the player.

	Role in Gameplay

	Designed for PvE efficiency and adaptive support. They perform better in dungeons, farming, and long-term adventures.

	Strengths :
* Retain all Normal Pet bonuses but improved.
* Gain access to skill trees and additional passives.
* Evolve appearance adds uniqueness.
* More independent AI, can attack and assist strategically.

	Weaknesses :
* Moderate upkeep (requires food and maintenance).
* Still limited against PvP-specialized enemies.
* Cannot coexist with Combat or Exotic Pets.

	Restrictions :
* Only one active at a time.
* Cannot be summoned with "Normal", "Combat", or "Exotic" pets.
* Cannot coexist with "Carrier Pets" that share combat slots.

	Visual & Behavioral Traits :
* Larger or armored versions of the base creature.
* Use intermediate "Emote System" — show affection, anger, curiosity.
* May react dynamically to the player’s state (low HP, in combat, idle).

---

	3.3 Combat Pets

	Core Characteristics

	"Combat Pets" represent the battle-focused archetype of the "Pet System". They are direct extensions of the player in combat, capable of using active skills, 
generating aggro, and acting semi-autonomously in "PvP" or "PvE" contexts.

* Obtained from taming high-level beasts, dungeon bosses, or rare chests.
* Divided into "Normal", "Rare", and "Epic" subclasses.
* Have multiple active skills and strong PvP-oriented passives.
* Always have a customizable skill tree after level 50.
* Can gain experience, level up, and earn "Skill Points" for talent allocation.

	Role in Gameplay

	"Combat Pets" are used in offensive or defensive strategies. They assist in duels, battlegrounds, and boss encounters where aggro manipulation and skill synergy
matter.

	Strengths :
* Possess high damage or defensive stats based on archetype.
* Full combat AI capable of prioritizing enemies, dodging, and comboing skills.
* Gain unique passives when in PvP stance (shared with player).
* Dynamic emote reactions (taunts, alerts, victory animations).

	Weaknesses :
* High maintenance cost (requires constant feeding or pet potions).
* Cannot be summoned with other pets.
* Aggressive AI requires management — may overcommit in fights.

	Restrictions :
* Only one Combat Pet active at a time.
* Cannot coexist with "Normal", "Evolved", or "Exotic" pets.
* Summoning another pet dismisses the current one automatically.

	Visual & Behavioral Traits :
* Battle-ready models with armor, spikes, or aura effects.
* Feature advanced "Emote System" (battle roars, dodge/emotion signals).
* Display tactical awareness and react to threats autonomously.

---

	3.4 Exotic Pets

	Core Characteristics :

	"Exotic Pets" are the elite-tier companions, rare and often tied to unique monsters, events, or world bosses. They embody the apex of the "Pet System" — 
combining combat intelligence, independent AI logic, and extraordinary passives.

* Cannot be summoned with any other pet.
* Usually obtained through rare boss drops, world events, or treasure systems.
* Possess the highest durability and adaptive combat logic.
* Feature advanced emote, animation, and environmental reaction systems.
* Use unique idle and run effects, like elemental trails or aura pulses.

	Role in Gameplay :
	"Exotic Pets" are strategic hybrids, performing in both PvE and PvP scenarios. Their AI adapts based on player commands (Attack, Assist, Defensive, Passive), 
giving the player full tactical control.

	Strengths :
* Unparalleled combat and utility value.
* Superior AI logic, target prioritization, and resistances.
* Can’t be mind-controlled by enemy effects.
* Long starvation tolerance and maximum durability.

	Weaknesses :
* Extremely rare and hard to obtain.
* Cannot be revived through standard means — requires special item.
* High upkeep for feeding and care.
* Cannot coexist with "Normal", "Evolved", "Combat", or "Carrier" pets.

	Restrictions :
* Exclusive summon slot (blocks all others).
* Only one "Exotic Pet" may exist per player account at once.
* Cannot be traded once bound.

	Visual & Behavioral Traits :
* Distinct models with aura or movement effects.
* Complex "Emote System" — frequent emotional display and ambient reactions.
* May perform idle animations based on the environment (sleeping, scanning, roaring).
* Retain unique attack patterns per race (jumping, charging, elemental bursts).

---

	3.5 Carrier Pets

	Core Characteristics :
	"Carrier Pets" are non-combat utility companions that function primarily as portable storage extensions. While they lack offensive capability, their logistical 
advantages make them indispensable to explorers and crafters.

* Cannot be tamed; obtained from "Event NPCs" or "Item Shop".
* Provide an extra inventory for potions, food, runes, and crafting materials.
* Never affect player movement speed when full.
* Have limited unique passive bonuses (e.g., faster swimming, environment resistance).

	Role in Gameplay :
	They serve as support entities for adventurers who travel far from cities.They provide convenient storage and reduce downtime for resource-gathering activities.

	Strengths :
* Can be summoned alongside other pets.
* Inventory unaffected by player encumbrance.
* No hunger or durability decay (except event-based variants).
* Unique and customizable appearances.

	Weaknesses :
* No combat interaction or shared passives.
* Cannot evolve or gain experience.
* Limited availability (shop or event-only).

	Restrictions :
* Can coexist with any other pet type.
* Cannot be used in PvP arenas or dungeons that disable pet functions.
* Have no skill or passive tree systems.

	Visual & Behavioral Traits :
* Highly stylized models — backpacks, small wagons, animated tools.
* Use unique "Emote System" tied to inventory state (happy when empty, tired when full).
* Some variants swim or fly depending on type.
* Immune to mind control or environment debuffs.

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

		4. PET ARCHETYPES (COMBAT ROLES)

	Each pet in "Art of War" belongs to one of five combat archetypes, defining its AI behavior, combat logic, and synergy with the player.
	Archetypes are rolled at the moment of taming or acquisition and remain fixed unless changed using a rare "Class Reassignment Item".
	These archetypes emulate combat behaviors inspired by their original wild nature.

---

	4.1 Tanky Archetype

	Overview : "Tanky" pets are frontline protectors, built to absorb damage, generate threat, and defend their masters. They specialize in maintaining aggro 
control and creating a safe environment for the player to fight from a distance or cast freely.

	Combat Behavior & AI Logic
* Automatically prioritize the highest threat target attacking the player.
* Constantly generate bonus aggro from melee and skill damage.
* Attempt to intercept enemy attacks, positioning themselves between player and foe.
* Use taunt or defensive skills at low player HP thresholds.
* Rarely break combat stance until the enemy is defeated or flees.

	Synergy with Player Roles
* Ideal for ranged classes, casters, or support roles.
* Reduces player damage intake by acting as a movable shield.
* Synergizes with defensive buffs or healing auras.

	Combat Stats & Traits
* High HP, Physical Defense, and Resistance.
* Low Attack Speed and Damage.
* Moderate accuracy.
* May possess passives that improve block chance, threat gain, or armor scaling.

---

	4.2 Berserk Archetype

	Overview : "Berserk" pets embody raw aggression and rage. They enter battle with relentless fury, dealing immense damage at the cost of survivability. Their 
primary function is to disrupt enemies quickly and overwhelm through sustained offense.

	Combat Behavior & AI Logic
* Prioritize nearest enemy or lowest HP target.
* Enters "Frenzy Mode" periodically — doubling attack speed and damage for short bursts.
* Ignores defensive positioning; charges into combat instantly.
* In PvP, automatically target enemy players attacking the master.
* Will not retreat even when near death.

	Synergy with Player Roles
* Best for melee-focused players, DPS classes, or solo grinders.
* Complements high-damage rotations by breaking enemy formations or guards.
* Pairs well with lifesteal or self-healing builds.

	Combat Stats & Traits
* High Attack Power and Critical Rate.
* Low Defense and HP.
* May possess passives that enhance critical damage, rage accumulation, or speed boosts after kills.

---

	4.3 God Archetype

	Overview : "The God" archetype represents ascended creatures — rare pets capable of transcending normal combat limitations. They demonstrate advanced 
intelligence, improved reaction time, and adaptive combat decision-making.

	Combat Behavior & AI Logic
* Evaluate battlefield conditions dynamically; target based on threat level, distance, or weakness.
* May redirect aggro to themselves temporarily, similar to Tanky type.
* Prioritize elite or high-threat enemies automatically.
* Can switch attack patterns between melee and ranged if the species supports both.
* Occasionally trigger "Divine Reaction" — a temporary stat boost in dangerous situations.

	Synergy with Player Roles
* Best suited for balanced builds and advanced players.
* Adapts seamlessly to PvP and PvE combat.
* Complements hybrid classes who benefit from intelligent pet positioning and support.

	Combat Stats & Traits
* Balanced HP, Damage, and Defense with above-average scaling.
* Possess unique passives related to divine resistance, speed, or focus generation.
* Can attract enemy aggression in emergencies, reducing pressure on the player.

---

	4.4 Skillable Archetype

	Overview : "Skillable" pets are defined by their capacity to learn and master new abilities beyond their default skill set. They are versatile companions 
capable of adapting to the player’s progression, crafting unique combinations of actives and passives.

	Combat Behavior & AI Logic
* Uses a priority-based skill rotation system rather than auto-attacks only.
* Adjusts ability use according to enemy type (e.g., stuns beasts, burns undead).
* Maintains moderate threat but avoids over-aggroing.
* May self-buff before or during combat.
* Uses support-oriented or elemental skills to complement the player.

	Synergy with Player Roles
* Perfect for strategic or support players who value flexibility.
* Can fill multiple roles depending on learned skills (offense, defense, utility).
* Works well with hybrid or pet-specialist classes.

	Combat Stats & Traits
* Moderate Attack and Defense with variable scaling per skill.
* May possess passives enhancing skill cooldown reduction, mana efficiency, or elemental affinity.
* Gains more from leveling and skill tree investment than any other archetype.

---

	4.5 Vampiric Archetype

	Overview : "Vampiric" pets are sinister entities that feed on life force, mana, or energy from enemies to sustain both themselves and their masters. They are 
highly dangerous companions that thrive in prolonged fights.

	Combat Behavior & AI Logic
* Target enemies with highest HP or resource pools.
* Drain enemy vitality with every strike, restoring HP, Mana, or Energy.
* Can share a portion of drained resources with the player.
* Gains strength as the battle continues (scaling lifesteal).
* May enter “Blood Trance” mode at critical health, boosting drain efficiency.

	Synergy with Player Roles
* Ideal for "Vampire", "Warlock", or Survivability-based classes.
* Pairs perfectly with "DoT" or **sustain-oriented** builds.
* Useful in prolonged PvE or boss encounters with high enemy HP.

	Combat Stats & Traits
* Moderate HP and Defense.
* High Lifesteal, Spell Power, and Sustain.
* May possess passives that enhance drain effects, damage over time, or regen sharing.
* Immune to charm, bleed, or poison effects.

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

		5. EVOLUTION & GROWTH SYSTEM

	The "Pet Evolution & Growth System" defines the progression path of every pet in "Art of War".
	Each pet begins its journey as a "Normal Pet", gaining experience, loyalty, and familiarity over time. Through training, bonding, and special rituals, pets can 
evolve into stronger forms — unlocking new visual appearances, behaviors, and skills.

---

	5.1 Pet Evolution Overview

	Evolution represents the transformation of a pet’s physical and spiritual state.
	Once a pet reaches a defined threshold of power, loyalty, and time of activity, it becomes eligible for "Evolution" — where it may ascend into an "Evolved" or 
"Combat" Pet, and in rare cases, an "Exotic Pet" through special events or divine catalysts.

	Evolution Paths

| Base Type      | Possible Evolution Outcome | Chance | Notes                                                       |
| -------------- | -------------------------- | ------ | ----------------------------------------------------------- |
| Normal Pet     | Evolved Pet                | 50%    | Gains skill tree, new passive, and improved model.          |
| Normal Pet     | Combat Pet                 | 50%    | Gains battle-oriented passives and increased aggression.    |
| Evolved/Combat | Exotic Pet                 | <1%    | Rare outcome through special catalysts, events, or rituals. |

*Evolution is irreversible,* though specialized legendary catalysts may re-roll the outcome once.

---

	5.2 Evolution Conditions

	To trigger evolution, pets must meet the following criteria:

* Level Threshold :   Pets must reach at least "Level 30" to attempt evolution. Some unique or boss-type pets may require Level 40+.

* Catalyst Requirement :   Evolution requires a special consumable item known as an "Evolution Catalyst", which can be obtained through:
	* Rare monster drops.
	* Dungeon boss loot tables.
	* Event rewards.
	* High-rank Pet NPC vendors.

* Time of Activity : Pets that have remained active (summoned) for extended periods have higher success rates. A hidden modifier called "Familiarity Bonus" 
influences this probability.

---

	5.3 Evolution Process

1. Initiation : The player selects an eligible pet in the Pet UI and chooses "Evolve" if all requirements are met.

2. Catalyst Consumption : The required Evolution Catalyst is consumed. Some pets may need specific types 
(e.g., *Wild Essence*, *Spirit Stone*, *Combat Soul Fragment*).

3. Random Determination : The evolution result is determined by RNG with defined odds:
   * 50% → "Evolved Pet"
   * 50% → "Combat Pet"
   * <1% → "Exotic Pet" *(via bonus roll if Catalyst is rare type)*

4. Transformation :
* A brief animation plays, changing the pet’s appearance and abilities.
* All stats are recalculated, and the pet’s archetype (Tanky, Berserk, etc.) remains unchanged.

5. Skill & Passive Assignment :
	Upon evolution, the pet gains access to:
* A "Skill Tree" (Evolved, Combat, Exotic only).
* New "Passive Skills" based on pet race, element, and archetype.
* Updated model visuals (larger, glowing, or armored variants).

---

	5.4 Exotic Pet Path

	"Exotic Pets" represent the pinnacle of evolution — divine or mutated forms of once-normal creatures. They cannot be directly tamed and are only achievable 
through:
* Event-based evolution catalysts (e.g., *Celestial Core*, *Corrupted Spirit Crystal*).
* Unique world events or rituals performed at specific altars or seasonal portals.
* Legendary evolution success from a "Combat" or "Evolved" pet.

	"Exotic Pets" are rare, often unique on servers, and possess:
* Hybrid abilities (combining "Evolved" and "Combat" effects).
* Distinct visual designs (celestial, corrupted, or ancient motifs).
* Special passive aura that affects nearby allies or the player’s stats.
* Permanent "Bound" status (cannot be traded or sold).

---

	5.5 Growth & Experience

	Leveling System

* Pets earn "Experience" (EXP) by participating in combat, completing quests, or staying active beside the player.
* Shared EXP gain:
	* 50% of player’s earned EXP goes toward the active pet.
	* Idle or unsummoned pets gain no EXP unless in "Pet Rest Mode" (in cities).

	Stat Growth
* Each level increases HP, Attack, Defense, and Speed depending on the pet’s archetype.
* Some rare pets have unique "Growth Curves", where early levels grant high gains but taper later on.

---

	5.6 Post-Evolution Growth

	After evolving:

* Evolved and Combat pets continue leveling up normally to Level 50.
* Exotic pets have extended caps, reaching Level 60–70 depending on rarity.
* All pets retain previously learned skills and may gain access to evolution-exclusive ones.

	Loyalty no longer decreases for evolved pets upon death but still reduces slightly for exotics to preserve rarity integrity.

---

	5.7. Pet Evolution Process 

	The "Evolution Process" defines the physical and spiritual advancement of a pet from its base form into a superior, more intelligent, and combat-ready version. 
	Unlike standard leveling, evolution is a multi-stage ritual involving growth, bonding, and testing. A player must prove their connection to the pet, nurture it 
through time and care, and then perform a ritual evolution using specific items and conditions.

---

	5.7.1. Evolution Stages

	Each pet undergoes up to three distinct stages of evolution, depending on its type and rarity.

	Stage I - Tamed (Normal Pet)       
* The pet’s initial form, recently tamed from wildness. Possesses basic stats, 1–2 active skills, and 1 passive boost. 
* All pets.
	
	Stage II - Evolved (Advanced)       
* The pet becomes stronger, gains physical changes, new skills, and a visible aura.
* Normal Pets reaching level 30–50. 
	
	Stage III - Combat / Exotic (Master) 
* The ultimate evolution path — Combat or Exotic, based on RNG and catalyst rarity. 
* Evolved or Normal Pets meeting specific conditions.

*Note : Each stage permanently alters the pet’s model, skill tree, and available passives.

---

	5.7.2. Evolution Attempt Requirements

	Player must meet several exact conditions to evolve a pet:

1. Pet Level :
* Minimum Level 30 for the first evolution (Normal → Evolved/Combat).
* Minimum Level 50 for the second evolution (Evolved/Combat → Exotic).

2. Feeding & Health :
* The pet must be fully fed and not starving before the ritual.
* Starving pets cannot evolve (Evolution UI option is disabled).

3. Evolution Item :
	The player must use a specific catalyst item, depending on the pet’s stage:
* Basic Evolution Stone → for Normal → Evolved/Combat.
* Advanced Spirit Crystal → for Evolved → Exotic.
* Legendary Pet Core → for rare event evolutions or rerolls.

   Each item is a rare drop from bosses, dungeons, or Pet NPC vendors.

4. Pet Activity Time :
* Minimum of 10 in-game hours of active summoning time to ensure bond validation.

---

	5.7.3. Evolution Success Rate

	Evolution has a success probability, influenced by multiple factors.

| Modifier                       | Effect on Success Rate |
| ------------------------------ | ---------------------- |
| Base success rate              | 60%                    |
| Pet Activity Time bonus (10h+) | +5%                    |
| Use of Premium Catalyst        | +10–20%                |
| Starvation penalty             | −20%                   |
| Random factor                  | ±5%                    |

	If the attempt fails, the pet does not disappear or lose levels, but the "Evolution Catalyst" is consumed.

---

	5.7.4. Evolution Ritual Process

	When all requirements are met, players can initiate evolution through the "Pet UI → Evolution Tab".

	Step 1 — Preparation :
* Feed and heal the pet to full.
* Ensure it meets all level and loyalty conditions.
* Have the Evolution Catalyst in inventory.

	Step 2 — Initiation :
* Select "Evolve Pet".
* The system performs a validation check.
* If successful, an "Evolution Window" opens showing both current and potential evolution forms.

	Step 3 — Ritual Animation :
* A ritual circle appears beneath the pet.
* The pet glows, levitates, and emits an aura corresponding to its element (Fire, Water, Earth, etc.).
* The Evolution Catalyst dissolves into the light.

	Step 4 — Result :
* If successful:
	* The pet transforms visually (model, size, aura).
	* Gains new skills, passives, and possibly a skill tree unlock.
	* The evolution result is displayed (Evolved, Combat, or Exotic).

* If failed:
	* The pet remains unchanged.
	* The player receives a system message indicating failure.
	* Loyalty is reduced, and the Evolution Catalyst is consumed.

---

	5.7.5. Post-Evolution Rewards & Effects

* The evolved pet’s maximum level cap increases.
* Its base stats grow by 10–25%, depending on type.
* A new skill tree unlocks (Evolved and above).
* Gains visual upgrades (glowing eyes, elemental effects, armor plating, etc.).
* Increases player’s "Bonded Stat Bonus", granting small passive boosts when the pet is active.

	Additionally:
* Some rare evolutions grant title unlocks for the player (e.g., "Beast Whisperer", "Pet Master").
* The pet name can be changed after evolution to reflect its new form.

---

	5.7.6. Example Evolution Paths

| Pet Type | Stage I               | Stage II                | Stage III                                      |
| -------- | --------------------- | ----------------------- | ---------------------------------------------- |
| Wolf     | Wild Wolf (Normal)    | Alpha Wolf (Evolved)    | Spirit Wolf (Combat) / Celestial Wolf (Exotic) |
| Bear     | Brown Bear (Normal)   | Ironhide Bear (Evolved) | Rampaging Bear (Combat) / Rune Bear (Exotic)   |
| Tiger    | Jungle Tiger (Normal) | Saber Tiger (Evolved)   | Crimson Tiger (Combat) / Void Tiger (Exotic)   |
| Eagle    | Wind Eagle (Normal)   | Storm Eagle (Evolved)   | Sky Talon (Combat) / Phoenix (Exotic)          |

	Each follows the same ritual but produces unique models, abilities, and evolution effects tied to their original elemental type and archetype.

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

		6. Skills and Abilities

	Every pet possesses a unique set of skills and passive abilities that define its combat role, personality, and synergy with its master. Skills are influenced by
the pet’s origin race, type archetype, and evolution stage.

	Higher-tier pets (Evolved, Combat, Exotic) have access to advanced mechanics such as "Skill Trees", tier scaling, and skill re-rolls.

---

	6.1. Active Skills

	Active skills represent the combat abilities that a pet can use during battle, either automatically through AI behavior or manually through player-issued 
commands.

	6.1.1. Skill Origin and Generation

* Every pet species has a "Skill Pool" of up to 10 skills determined by its original monster race.
* Upon being tamed and transformed into a pet, the system randomly assigns between 1 and 4 active skills from that pool.
* Skills are chosen based on the pet’s archetype (Tanky, Berserk, God, Skillable, Vampiric) and elemental affinity (Earth, Fire, Water, Wind, Shadow, Light).
* Each pet’s skill roll is unique — no two tamed versions of the same monster are guaranteed to have the same skill set.

	6.1.2. Skill Categories

	Active skills fall into several categories, depending on their utility:

| Category          | Example Effect                                | Available To                 |
| ----------------- | --------------------------------------------- | ---------------------------- |
| **Offensive**     | Direct damage, bleed, poison, burn            | Berserk, Skillable, Vampiric |
| **Defensive**     | Shields, armor buffs, damage reduction        | Tanky, God                   |
| **Supportive**    | Healing, regeneration, debuff removal         | Skillable, Vampiric          |
| **Crowd Control** | Taunt, stun, slow, knockback                  | Tanky, Berserk               |
| **Utility**       | Area detection, element purge, stealth reveal | God, Skillable               |

	6.1.3. Skill Upgrade System

* Active skills level up automatically as the pet gains levels.
* Skill strength scales with pet level, and evolution stage.
* Some pets can use "Skill Manuals" (rare items) to:
	* Upgrade a specific skill tier.
	* Reduce cooldown times.
	* Increase skill effect duration or area of influence.
* Skill cooldowns vary from 8 to 30 seconds, depending on skill class.

	6.1.4. Skill AI Behavior

* Pet AI dynamically selects which skills to use based on:
	* Target distance and HP ratio.
	* Player stance (Offensive, Defensive, Passive).
	* Enemy weakness (elemental or armor-based).
* Advanced pets (Combat / Exotic) adapt mid-combat — prioritizing weak targets, interrupting heals, or protecting the player when HP drops below thresholds.

---

	6.2. Passive Skills

	Passive skills are always active effects that enhance both the pet and its master. They represent the "bond" shared between the two and scale with pet level, 
and type.

	6.2.1. General Passive Bonuses

	All pets can grant their masters some of the following bonuses:

| Type              | Example Effects                                    |
| ----------------- | -------------------------------------------------- |
| **Survivability** | +Max HP, +HP Regen, +Defense, +Resilience          |
| **Combat**        | +Damage vs Monsters, +Critical Rate, +Attack Speed |
| **Elemental**     | +Resistance (Fire, Water, Shadow, Light, etc.)     |
| **Utility**       | +Movement Speed, +Loot Range, +EXP Gain            |
| **Special**       | Reduced environment effects, bonus taming rate     |

	6.2.2. Scaling Mechanics

* Passive bonuses scale linearly with the pet’s level up to 100%.
* Each evolution stage grants a 10–25% increase in passive effectiveness.
* Some passives are exclusive to specific pet classes:
	* "Normal Pets" : Base stat boosts (HP, Res, Movement).
	* "Evolved Pets" : Minor buffs + new shared effects (HP steal, attack aura).
	* "Combat Pets" : PvP-based bonuses only active in player duels.
	* "Exotic Pets" : Elemental synergy effects and aura fields.
	* "Carrier Pets" : Utility-based passives only (inventory, movement, resistance).

	6.2.3. Passive Skill Activation Rules

* Only one pet’s passives can be active at a time.
* Passives deactivate when the pet dies or is unsummoned.
* Certain universal passives (like bonus EXP) remain active even if the pet is stored, symbolizing a “long-term bond.”

---

	6.3. Skill Tree System (Evolved / Combat / Exotic Pets)

	Once a pet reaches "Evolved","Combat", or "Exotic" form, it unlocks access to a "Skill Tree System" that allows the player to define the pet’s progression path.

	6.3.1. Unlock Conditions

* "Evolved Pets" gain access to a 3-branch Skill Tree at level 30.
* "Combat Pets" and "Exotic Pets" start with an expanded 4-branch Skill Tree.
* Players earn "Skill Points" through:
	* Pet Level Ups.
	* Completing pet-related quests.
	* Using rare items (*Pet Skill Essence*, *Knowledge Rune*).

	6.3.2. Skill Tree Layout

| Branch       | Focus              | Example Enhancements                          |
| ------------ | ------------------ | --------------------------------------------- |
| **Combat**   | Offense & Aggro    | +Damage, +Crit Chance, new attack skills      |
| **Defense**  | Protection & HP    | +Armor, +Damage Reduction, taunt abilities    |
| **Support**  | Aid & Regeneration | +Healing, +Master Buff Duration, cleanse      |
| **Instinct** | Utility & AI       | +Aggro Logic, +Target Priority, +Skill Timing |

	Each node increases the pet’s core behavior efficiency or unlocks new ability modifiers.

	6.3.3. Tree Customization and Re-roll

* Skill Trees can be reset using "Pet Memory Crystal" (rare drop).
* Re-roll allows players to adapt the same pet for different roles.
* Higher loyalty reduces reset cost (bond-based favor).
* Each tier node is locked behind level milestones (e.g., Level 30, 50, 70).

	6.3.4. Advanced Skill Synergies

	Advanced-tier pets (Combat/Exotic) can trigger synergy skills where:

* The pet’s active ability interacts with the player’s abilities.
* Example: a Vampiric pet enhances a Shaman’s life drain or a God-type pet amplifies a Sorcerer’s magic crit.

	These synergies make advanced pets valuable companions even in endgame content.

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

		7. Pet User Interface (UI)

	The "Pet User Interface" (Pet UI) allows players to view, manage, and interact with their pets directly through a specialized in-game window.
	It functions as both a control panel and an information hub, displaying all relevant data such as pet stats, hunger, and skills — mirroring the "Mount UI" 
layout but with expanded sections for combat and evolution.

---

	7.1. General Overview

* The Pet UI becomes accessible once the player tames or obtains their first pet.
* It can be opened through:
	* The character menu (default hotkey: `P`).
	* The Pet Icon on the HUD (bottom corner near Mount tab).
	* Direct interaction with the pet via right-click → “Open Pet Menu.”
* The interface remains consistent across all pet types but dynamically adapts depending on whether the pet is "Normal", "Evolved", "Combat","Exotic", or "Carrier".

---

	7.2. Layout Structure

	The UI is divided into five main tabs, each providing clear access to different systems:

| Tab            | Function                | Description                                                           |
| -------------- | ----------------------- | --------------------------------------------------------------------- |
| **Overview**   | General Info            | Displays basic stats, pet model preview, hunger, and loyalty bar.     |
| **Skills**     | Active & Passive Skills | Lists current learned skills and effects shared with the master.      |
| **Evolution**  | Growth & Upgrades       | Shows evolution progress, level threshold, and catalyst requirements. |
| **Behavior**   | AI Commands             | Allows stance selection: *Attack*, *Assist*, *Defensive*, *Passive*.  |
| **Management** | Ownership & Actions     | Rename, dismiss, feed, revive, or link the pet to the market.         |

---

	7.3. Overview Tab

	This is the main window displayed by default when the Pet UI is opened.

	Displayed Information :

* Pet Name (editable through Rename option).
* Pet Type & Archetype (Normal, Evolved, Combat, etc. + Tanky, Berserk, etc.).
* Pet Element (Earth, Fire, Water, Wind, Shadow, Light).
* Level & Experience Bar.
* Class Icon & Rarity Frame.
* Hunger Bar — pets gradually starve if not fed, reducing their stats until fed again.
* Time Active (Alive) — shows total active playtime since first summon.
* Mini-Model Display — a 3D rotating preview of the pet, updated after evolution.
* Status Indicators :
	* Happy : Normal stats active.
	* Hungry : -10% overall stats.
	* Starving : Passives disabled until fed.
	* Fatigued : Reduced combat efficiency (for Combat/Exotic only).

---

	7.4. Skills Tab

	Displays all active and passive abilities currently available to the pet.

	Includes :
* Active Skills Panel — lists the pet’s current combat skills (1–4) with tooltip descriptions, cooldowns, and icons.
* Passive Skills Panel — shows shared bonuses and effects scaling with level.
* Skill Progression Bar — visual indicator for skill leveling.
* Skill Re-roll Button — allows re-randomization using *Pet Skill Essence* (rare item).
* Skill Sync Indicator — displays current synergy with the player’s class (e.g., “Synergy: Shaman – Life Steal +10%”).

---

	7.5. Evolution Tab

	Only available for Normal, Evolved, Combat, and Exotic Pets (Carrier pets excluded).

	Displays :
* Current Evolution Stage (Normal → Evolved → Combat/Exotic).
* Level Requirement for evolution.
* Required Catalyst Item (*Wild Essence*, *Spirit Stone*, *Combat Soul Fragment*, *Celestial Core*, *Corrupted Spirit Crystal*).
* Preview of Resulting Form — shows 3D model of the evolved version.
* Evolve Button — initiates the transformation animation (disabled if requirements not met).

	Evolution failures trigger mild stat loss or cooldown before retrying (similar to Metin2 evolution process).

---

	7.6. Behavior Tab

	This section manages the pet’s combat stance and AI control.

	Command Options :

| Command           | Description                                                                          |
| ----------------- | ------------------------------------------------------------------------------------ |
| **Attack**        | Pet actively attacks the player’s target, prioritizing enemies with lower HP.        |
| **Assist**        | Pet helps the master, attacking whichever target the master hits.                    |
| **Defensive**     | Pet taunts nearby enemies to protect its master; used mainly by Tanky and God types. |
| **Passive**       | Pet remains idle, retaliating only when attacked.                                    |
| **Follow / Stay** | Movement control, toggled separately.                                                |

	Additional settings:
* Auto-Skill Toggle — enables AI to use skills automatically.
* Aggro Logic Option — for Combat and Exotic pets to fine-tune targeting priority.
* Distance Control Slider — sets how far the pet stays from the player (1–10m).

---

	7.7. Management Tab

	This tab provides all ownership and interaction tools for player–pet relationship management.

	Features :

* Feed — consumes pet food to restore hunger and loyalty.
* Rename — customize the pet’s name (once every 24h).
* Dismiss — permanently removes pet from player ownership.
* Revive — restores a dead pet using a "Revival Rune" or "Pet Soul Fragment".
* Link to Market — lists the pet for trade (if tradable).
* Pet Journal Entry — adds pet to the collection log (for cosmetic tracking).
* Summon/Unsummon Button — quick action to deploy or recall the pet.

---

	7.8. Comparison with Mount UI

	The "Pet UI" shares similar design philosophy with the "Mount UI", but with expanded functionality:

| Feature                  | Mount UI             | Pet UI                         |
| ------------------------ | -------------------- | ------------------------------ |
| **Movement Speed Stats** | ✔                    | ✖                              |
| **Combat Stats Display** | ✖                    | ✔                              |
| **Skill Tree System**    | Limited              | Extensive                      |
| **Hunger System**        | Basic                | Detailed (affects performance) |
| **Emote System**         | Cosmetic Only        | Emotional and Reactive         |
| **Evolution Mechanic**   | Appearance-based     | Functional & Combat-based      |
| **Passive Sharing**      | Mount-to-Master only | Mutual Scaling (Pet ↔ Master)  |

---

	7.9. Interface Customization

* Players can resize or reposition the Pet UI anywhere on the HUD.
* Tooltips update dynamically based on the pet’s evolution form.
* UI colors and frames adapt to pet rarity (Normal = Gray, Rare = Blue, Epic = Purple, Legendary = Gold).
* Advanced filters allow sorting pets by type, level, or last summoned. end end end end end end end end end end end end 

-------------------------------------------------------------------------------------------------------------------------------------------------------------------

		8. Pet Combat & Behavior Mechanics

	The "Pet Combat & Behavior System" governs how pets engage in battle, react to threats, and interact with both their master and the environment.
	This system aims to make pets function as autonomous companions with adaptive combat AI, capable of supporting the player strategically without overshadowing 
their role.

---

	8.1. General Combat Logic

* Pets engage enemies dynamically based on their archetype and command mode.
* They operate under a priority-based AI :
	1. Check command stance (Attack / Assist / Defend / Passive).
	2. Identify eligible targets (based on distance, visibility, and hostility).
	3. Choose skill or basic attack according to cooldowns and archetype type.
* Pets use individual cooldown systems and target recognition, preventing AI loops or multiple pets attacking invalid targets.
* Only one pet can be active per player at a time.
* Combat Pets, Evolved Pets, and Exotic Pets have advanced AI patterns that allow reactive combat decisions (dodging AoE, repositioning, etc.).

---

	8.2. Targeting System & Aggression Control

* Pets can only attack targets the player is currently engaged with unless commanded otherwise.
* Each pet maintains an "Aggro Table" — a hidden system tracking which enemies are most threatening to its master.
* Tanky, Berserk, and God archetypes actively redirect enemy focus using built-in taunts or damage modifiers.
* The AI respects rank restrictions :
	* Pets cannot independently target or aggro Rank IV+ enemies (Elite, Semi-Boss, Boss, World Boss, or Named Monsters) unless the player is already engaged.
	* Pets cannot be used to pull mobs or trigger combat without player input (anti-exploit mechanic).
* When a pet’s master dies or un-summons them, the pet automatically despawns after 5 seconds.

---

	8.3. Archetype-Specific Combat Roles

	Each archetype determines both AI behavior and combat synergy with the player.

	**Tanky** - Defender 
* Uses taunts and defensive buffs to keep enemies focused on itself; prioritizes melee range and shield skills. 
* Ideal for players with low durability. 

	**Berserk** - Aggressor
* Focuses on sustained DPS, rushes into combat, prioritizes nearest enemies; minimal defense logic.
* May pull unintended enemies if set to "Attack".

	**God** - Hybrid
* Alternates between supporting the player (buffs/heals) and taunting enemies during high threat moments.
* The only archetype that can attract Rank IV+ attention temporarily.

	**Skillable** - Support
* Prioritizes skill usage and positioning; avoids direct combat; focuses on debuffs, CC, or ranged damage.
* Often stays behind player.

	**Vampiric** - Sustained DPS
* Focuses on damage-through-recovery, using life-steal or damage conversion; adapts to player’s HP level.
* Avoids overextending when HP <30%.

---

	8.4. Damage Scaling and Stat Influence

* Pet damage, defense, and HP scale directly with:
	* Pet Level
	* Rarity Tier
	* Evolution Stage
	* Player’s Main Stat (e.g., Strength, Agility, Intelligence)
* Each pet archetype applies unique stat multipliers :
	* Tanky : +HP, +Defense, -Attack Speed
	* Berserk : +Attack, +Crit Rate, -Defense
	* God : +Defense, +Support Skill Efficiency, -Damage
	* Skillable : +Skill Damage, +Cast Speed, -Physical Attack
	* Vampiric : +Lifesteal, +Sustain, -Base HP
* Certain rare or exotic pets may gain elemental scaling adding Fire/Water/Earth/Wind modifiers to damage output.
* Evolved and Exotic pets benefit from skill tree upgrades, allowing focused stat investment (offense, defense, or utility).

---

	8.5. AI Reaction and Environment Adaptation

	"Pet AI" dynamically adjusts based on combat intensity and environment:

* Positioning Logic :
	* Ranged pets maintain optimal attack distance.
	* Melee pets reposition automatically if obstructed.
	* Pets avoid lethal AoE zones if flagged as dangerous (Boss abilities, traps, etc.).

* Response System :
	* When player health drops below 25%, defensive pets may use emergency abilities or taunts.
	* Vampiric and God archetypes may activate sustain-based skills automatically.

* Idle & Follow State :
	* When out of combat, pets enter idle stance and perform random emotes or animations (stretching, sleeping, roaring, etc.).
	* Distance between player and pet caps at 15 meters; pets teleport closer if beyond range.

---

	8.6. Player Commands

	Players can issue direct commands via the Pet UI or hotkeys for precise control:

| Command                   | Description                                                        |
| ------------------------- | ------------------------------------------------------------------ |
| **Attack (ALT+1)**        | Orders the pet to engage the player’s current target immediately.  |
| **Assist (ALT+2)**        | Pet mirrors player’s attacks and skill usage priorities.           |
| **Defend (ALT+3)**        | Pet prioritizes protecting its master, using taunts or intercepts. |
| **Passive (ALT+4)**       | Pet stops attacking and remains idle beside the player.            |
| **Follow / Stay (ALT+5)** | Commands the pet to either follow or stay in its current position. |

	Commands override AI routines temporarily but revert to the previous stance after combat ends.

---

	8.7. Combat Restrictions & Limitations

* Only one pet may be summoned at a time per player.
* Pets do not gain experience when dismissed or inactive.
* Pets cannot be used in:
	* Arena or PvP zones (except if allowed by special events).
	* Specific instanced dungeons marked as “No Companion.”
* Combat pets cannot interact with environmental triggers (switches, levers, etc.).
* If a pet’s HP reaches 0:
	* It becomes "Incapacitated" (gray-out in Pet UI).
	* Can be revived using a "Pet Revival Rune" or "Pet Soul Fragment".
	* Revive cost and cooldown depend on pet rarity and level.

---

	8.8. Synergy and Support Behavior

	Pets share combat synergy bonuses with their master:
* Offensive synergy : pets with matching archetype to the player’s class grant bonus critical or damage multiplier.
* Defensive synergy : Tanky and God pets grant reduced damage taken for both.
* Support synergy : Skillable and Vampiric pets can apply buffs or healing effects linked to player’s performance.

	These synergies scale with pet evolution stage and shared elemental alignment.

---

	8.9. Visual and Behavioral Traits

* Each archetype expresses distinct combat animations and emotes :
	* Tanky : shield stance, stomps, defensive roars.
	* Berserk : rapid lunges, bloodlust glow effects.
	* God : radiant aura during taunts or heals.
	* Skillable : calm casting poses, rune-based effects.
	* Vampiric : red or dark particle trails during attacks.
* Pets react emotionally to the battle outcome — roaring in victory or retreating briefly when defeated (before despawning).
* When idle, pets occasionally interact with the environment (sniff, rest, look around) to increase immersion.

-------------------------------------------------------------------------------------------------------------------------------------------------------------------

		9. Hunger, Starvation & Environmental Effects

	The "Hunger and Starvation System" governs how long a pet can remain active, how its efficiency changes over time, and how environmental conditions may affect 
its survival or performance.
	This system ensures that pets feel like living entities — requiring care and attention — without imposing tedious or overly restrictive upkeep.

---

	9.1. Hunger Timers

* Every pet has a "Hunger Timer" that depletes gradually while the pet is active in the world.
* Time is measured in real-time minutes of active use (not idle time in cities or menus).
* The rate of depletion is determined by:
	* Pet Type (Normal, Evolved, Combat, Exotic, Carrier)
	* Archetype Activity (Tanky burns faster due to aggression, Skillable slower due to support role)
	* Combat Intensity (fighting accelerates hunger loss)
* Hunger values are expressed as a percentage bar (100% → 0%) visible in the Pet UI.

| Hunger Range | Status          | Effects                                                                             |
| ------------ | --------------- | ----------------------------------------------------------------------------------- |
| **100–75%**  | Well Fed        | Full combat efficiency. Minor buffs may apply depending on pet type.                |
| **74–50%**   | Hungry          | No debuffs yet, but warning icon appears in Pet UI.                                 |
| **49–25%**   | Starving        | Reduced attack, defense, and skill cooldown recovery (-10%).                        |
| **24–1%**    | Critical Hunger | Severe penalties (-30% all stats). Visual cue: pet looks weaker or slowed.          |
| **0%**       | Faint State     | Pet despawns and cannot be re-summoned until fed. Requires feeding or revival item. |

---

	9.2. Starvation Effects

* Starvation progressively reduces:
	* Attack and defense effectiveness.
	* Skill cooldown recovery speed.
	* Experience gain efficiency.
* Pets that reach 0% Hunger automatically enter a "Faint" state, temporarily unresponsive or despawned.
* Re-summoning a fainted pet without feeding results in a 5-minute cooldown lock before it can be used again.
* Exotic and Evolved pets are less prone to starvation, depleting hunger 25% slower due to their enhanced physiology.

---

	9.3. Feeding Mechanics

* Pets are fed using specific "Pet Food Items", each restoring a certain percentage of hunger and sometimes providing temporary buffs.
* Feeding is done directly from the "Pet UI" (ALT+V) or faster using the combination of keys : ALT + F for faster feeding when player already have the food in the 
inventory.
* Food items are categorized by Tier and Type, corresponding to the pet’s class or environment.

| Food Type            | Example                                      | Hunger Restore | Bonus                                |
| -------------------- | -------------------------------------------- | -------------- | ------------------------------------ |
| **Basic Feed**       | Dried Meat, Fish, Grain Mix                  | +25%           | None                                 |
| **Quality Feed**     | Cooked Meat, Honey Fruit, Herbal Stew        | +50%           | +5% Stat Boost for 15 mins           |
| **Specialized Feed** | Elemental Meat, Spiced Jelly, Crystal Powder | +75%           | Elemental Resistance or Damage Bonus |
| **Premium Feed**     | Beast Feast, Golden Grain, Mystic Essence    | +100%          | +10% All Stats for 30 mins           |

* Feeding can be automated with "Auto-Feed Mode", if the player has sufficient food stock.
* Feeding cannot be done during combat but can be queued once combat ends.

---

	9.4. Environmental Effects

	Even though monsters are not naturally affected by environments in your world, pets may receive passive modifiers depending on where they are summoned — for 
immersion and realism.

| Environment                     | Effect                     | Description                        |
| ------------------------------- | -------------------------- | ---------------------------------- |
| **Desert / Volcanic**           | Faster hunger depletion    | Extreme heat increases metabolism. |
| **Swamp / Toxic Zone**          | No HP regen outside combat | Represents toxicity saturation.    |
| **Frozen / Arctic**             | Reduced attack speed       | Cold environment numbs movement.   |
| **Forest / Plains**             | Neutral                    | Default environment.               |
| **Sacred or Corrupted Grounds** | +Elemental Buff / Debuff   | Based on pet’s element alignment.  |

* Pets native to an environment (e.g., aquatic pets in swamps, desert beasts in dunes) ignore penalties and may even gain +5% efficiency instead.
* Certain rare consumables or pet passives can negate environmental effects temporarily.

---

	9.5. Pet Reactions & Emotes

	While pets do not have moods or bond levels, they still exhibit visual and behavioral cues reflecting their current condition:
* Well Fed : playful idle animations, glowing aura, responsive to player commands.
* Hungry : slower idle movement, subtle fatigue animation (yawning, drooping).
* Starving : noticeably sluggish response, may emit faint growl or visual dimming.
* Critical / Faint : collapses or vanishes in a puff of mist when hunger reaches 0%.

	These emotes serve purely as aesthetic feedback, maintaining immersion without emotional bonding systems.

---

	9.6. Feeding & Item Integration

* Food items are sold by Tavern Keepers, Pet Masters, or Mount Masters.
* Certain rare foods drop from Humanoid enemies or elite beasts.
* Crafted food (Cooking Profession) will provide enhanced versions for longer adventures.
* Feeding items have weight and stack limits, promoting resource management.
*Other sources of food can be obtained from "Fishing", fish its a great source of food for certain pets.

---

	9.7. Integration with Other Systems

* The Hunger Bar is directly visible in:
	* Pet UI (`ALT+V`)
	* Mini Pet Status Bar (optional HUD toggle)
* Hunger directly interacts with:
	* Pet Combat Efficiency
	* Taming Success Chance (for wild monsters) — low HP + hungry state increases taming odds slightly.
* Starvation has no permanent penalty — simply requires food or time to recover.

-------------------------------------------------------------------------------------------------------------------------------------------------------------------

		10. Interaction & Emote System

	The "Interaction and Emote System" brings life and personality to every pet in the game.
	While pets in "World Game" do not rely on emotional bonds or loyalty values, they still express distinct behaviors and reactions based on their type, rarity, 
environment, and condition (e.g., hunger or combat). end end end end end end end end 
	This system focuses on visual storytelling, immersion, and player connection through natural animations and sound cues.

---

	10.1. Emotional Behavior & Personality

	Each pet has a base personality determined during its creation or taming, which defines how it behaves when idle, in combat, or when interacting with the 
player.
	This is purely cosmetic, meant to enrich the world rather than affect gameplay balance.

| Personality Type | Description                                                                      | Example Reactions                             |
| ---------------- | -------------------------------------------------------------------------------- | --------------------------------------------- |
| **Calm**         | Moves slowly, patient idle stances, rarely reacts to surroundings.               | Sits near player, stretches occasionally.     |
| **Playful**      | Frequently performs idle animations, may “tease” the player or nearby creatures. | Jumps around, tilts head, chases butterflies. |
| **Aggressive**   | Constantly alert, emits low growls, and has sharp idle movements.                | Snarls when enemies approach.                 |
| **Curious**      | Often looks around, sniffs, or investigates objects.                             | Moves toward dropped items or NPCs.           |
| **Lazy**         | Frequently lies down, slower reaction to commands.                               | Sleeps after long idle time.                  |

	Each pet’s personality remains fixed unless rerolled by a special cosmetic item.

---

	10.2. Frequency and Variety by Pet Type

	Each "Pet Type" has access to a different range of emotes and animation frequency, reflecting their complexity and rarity.

| Pet Type         | Emote Complexity                                                       |  | Description                                               |
| ---------------- | ---------------------------------------------------------------------- | --------- | 
	**Normal Pets**
* Emote Complexity : Basic idle animations (sit, stretch, hop). 
* Frequency  : Low 
* Description : Simple behavior; express minimal emotion.

	**Evolved Pets**
* Emote Complexity : Advanced idle and interaction emotes.
* Frequency  : Medium
* Description : React to player actions (feed, heal, summon).

	**Combat Pets**
* Emote Complexity : Battle stances, growls, or roars after victory.
* Frequency  : High
* Description : Emotion linked to combat events

	**Exotic Pets**
* Emote Complexity : Extensive animation set, rare idle behaviors, unique particle effects.
* Frequency  : Very High
* Description : Often show off or interact dramatically.

	**Carrier Pets**
* Emote Complexity : Limited idle animation but unique contextual reactions.
* Frequency  : Medium
* Description : React when inventory fills or when player picks up items.

	This creates natural distinction — Normal pets feel tame, while Exotic ones feel alive and unpredictable.

---

	10.3. Interaction Mechanics

	Players can interact with their pets through the "Pet UI" (ALT+V) or quick commands.
	Interactions are primarily visual but can slightly modify temporary states (like idle animations or cosmetic effects).

	Interaction Options :

* Pet / Scratch / Cheer / Sit / Play / Dismiss / Feed
* Some actions trigger unique animations depending on the pet’s personality or archetype.
* Repeated interactions (without feeding) do not improve stats or loyalty but increase the "Response Rate", meaning pets visually react more quickly to player 
input.

	Combat and Event Interactions :
* Pets perform "Victory Animations" after defeating enemies.
* Some pets (especially Combat and Exotic) perform "Entrance Animations" when summoned — roars, howls, elemental bursts, etc.
* Carrier Pets wag tails, flap wings, or emit small effects when picking up dropped items.

---

	10.4. Environmental and Situational Emotes

	Pets dynamically adjust their emotes based on weather, environment, or world state for immersion.

| Condition             | Behavior / Emote                        |
| --------------------- | --------------------------------------- |
| **Rain**              | Shakes off water or hides under master. |
| **Snow / Cold Areas** | Shivers, moves closer to player.        |
| **Heat / Desert**     | Pants or looks for shade.               |
| **City / Crowd**      | Reduced emote frequency, calmer stance. |
| **Battle Victory**    | Jump, roar, or spin animation.          |
| **Starving**          | Sluggish movement, drooping animation.  |
| **Well Fed**          | Happy idle poses, energy animations.    |

	These animations are fully aesthetic and do not influence performance or hunger mechanics.

---

	10.5. Carrier and Exotic Pet Unique Emote Systems

	Carrier Pets

* Have contextual reactions tied to inventory events:
	* Wiggle or hop when their storage is accessed.
	* Emit a sound or sparkle when inventory becomes full.
	* Nudge or circle the player when carrying too many potions or consumables.
* Cannot use manual emotes but act semi-autonomously.

	Exotic Pets

* Possess the most advanced and dynamic emote system of all pet types.
* Can randomly perform rare, flashy animations (hover spins, aura bursts, sound effects).
* Exhibit higher "sentience", occasionally reacting to environmental triggers (e.g., roaring during thunderstorms, glowing in corrupted zones).
* When idle for long periods, they may "display" — spreading wings, creating light trails, or roaring briefly.

---

	10.6. Animation & Audio Integration

* Emotes are integrated with both sound and visual layers:
	* Distinct ambient sounds per race (growls, chirps, purrs, screeches).
	* Particle or aura effects for higher-rarity pets.
* Combat or hunger states modify animation playback:
	* Starving pets move slower and with heavier footsteps.
	* Satiated pets animate fluidly and respond to commands instantly.

---

	10.7. Integration with Systems

	The Interaction & Emote System connects seamlessly with:

* Pet UI (ALT+V) : Displays an "Emote Wheel" for quick selection and includes a toggle for "Auto-Emote Mode".
* Combat System : Triggers event-driven animations on kills or near-death moments.
* Environment System : Adjusts idle behavior dynamically (rain, desert, snow, etc.).
* Carrier Functionality : Animation and sounds respond to inventory management.

-------------------------------------------------------------------------------------------------------------------------------------------------------------------

		11. Items Related to Pets

	Pet-related items are essential to taming, maintaining, evolving, and enhancing pets throughout the game.
	These items range from basic food consumables to rare artifacts capable of evolving a creature’s form or resetting its skill tree.
	Every pet item serves a functional or transformative purpose, allowing players to specialize and personalize their companions through progression.

	All pet-related items are tradable unless stated otherwise, and many can be sold or exchanged using "Pet Cages", enabling secure transfer between players and 
the market system.

---

	11.1. Pet Storage & Trade Items

	Pet Cage

*Type : Storage & Trade Item
*Description : A small magical cage infused with containment runes, used to safely store tamed pets for trading or market sale.
Once a pet is placed inside a Pet Cage, it becomes an item that can be listed on the marketplace or traded to another player.
Opening the cage rebinds the pet to its new owner permanently.

*Usage Notes :
* Available from Pet Master NPCs located in Middlean Island - Capital Island and those Pet Masters located in "Ancient City of Sankis" in Aarong Forest.
* Pets stored in cages retain all their stats, skills, and experience.
* A caged pet cannot be summoned or interacted with until released.
* Cannot be used for Carrier Pets.

---

	11.2. Evolution Catalysts

	"Evolution Catalysts" are unique materials used to trigger or increase the chance of successful pet evolution.
	They are consumed during the evolution process and are often obtained from quests, crafting, or rare events.

| **Item Name**                | **Purpose**                      | **Effect / Description**                                                                                |
| ---------------------------- | -------------------------------- | ------------------------------------------------------------------------------------------------------- |
| **Blessed Catalyst Stone**   | Improves evolution success rate. | Adds +15% chance of success when evolving a Normal Pet into an Evolved or Combat Pet
| **Wild Essence**             | Base evolution material.         | Required for first-tier evolution attempts (Normal → Evolved/Combat).
| **Spirit Stone**             | Intermediate catalyst.           | Enhances the chance of gaining additional skills during evolution.
| **Combat Soul Fragment**     | Specialized evolution item.      | Used exclusively for Combat Pet evolution, boosting attack and skill scaling after transformation.      |
| **Celestial Core**           | High-tier evolution catalyst.    | Used for Exotic Pet creation; adds unique visual effect post-evolution.
| **Corrupted Spirit Crystal** | Risk-enhancing evolution item.   | Doubles the evolution success rate but adds a 25% chance of negative mutation (random passive penalty). |

*Notes :

* All catalysts are consumed during evolution.
* Some can be combined with each other for improved results using the "Alchemy" profession.
* Evolution success depends on pet level, catalyst type, and base rarity.

---

	11.3. Class Change & Reroll Items

	These items allow a pet’s class or archetype to be rerolled, offering new potential without the need to tame another creature.
	However, rerolling comes with risk — the new class is completely random.

	Orb of Rebirth

*Type : Pet Class Reroll Item
*Description : A mysterious orb that resets a pet’s archetype (Tanky, Berserk, God, Skillable, Vampiric) into a random new class.
Often used by tamers seeking optimal synergy between pet type and player build.
Cannot be used on Carrier Pets.

	Acquisition :
* Rare world drop.
* Occasionally sold by the Pet Master NPC during limited-time events.
* Can be crafted through Alchemy using rare essences and a Pet Memory Crystal.

	Effect :
* Randomizes class and recalculates base stats and archetype bonuses.
* Does not reset pet level, skills, or experience.

---

	11.4. Skill & Knowledge Items

Skill-related items grant or modify a pet’s active and passive abilities, or allow restructuring of their skill tree.

| **Item Name**                           | **Purpose**                                                       | **Usage**                                                                |
| --------------------------------------- | ----------------------------------------------------------------- | ------------------------------------------------------------------------ |
| **Pet Skill Essence**                   | Unlocks one random skill from the pet’s racial pool.              | Applied through the Pet UI (ALT+V) under the “Skills” tab.               |
| **Knowledge Rune**                      | Grants a new passive skill or improves an existing one by 1 tier. | Usable once per pet level range (every 10 levels).                       |
| **Pet Memory Crystal**                  | Resets the entire pet skill tree.                                 | Preserves experience, removes all skill allocations, and refunds points. |
| **Skill Manual (Common / Rare / Epic)** | Teaches a specific combat or support skill.                       | Dropped from mini-bosses, quests, or crafted via Scribe profession.      |

	Notes :
* Skill Essences are stackable and tradable.
* Knowledge Runes and Memory Crystals are untradable (bound to character).
* Using a Skill Manual of lower rarity than the pet’s tier has no effect.
* Combat, Evolved, and Exotic Pets benefit most from these items due to their complex skill trees.

---

	11.5. Recovery & Revive Items

	When pets are defeated or enter a dormant state, these recovery items are used to restore them.
	Exotic pets, in particular, require rare items for revival due to their complex essence structures.

| **Item Name**         | **Type**         | **Effect / Description**                                                                         |
| --------------------- | ---------------- | ------------------------------------------------------------------------------------------------ |
| **Pet Revive Charm**  | Revive           | Instantly revives any pet that has fainted in combat.                                            |
| **Revival Rune**      | Exotic Revive    | Required to restore Exotic Pets after death; only drops from world events or high-tier crafting. |
| **Pet Soul Fragment** | Essence Recovery | Restores 50% pet experience and resets its hunger level to 0%.                                   |
| **Beast Salve**       | Recovery         | Heals 25% of pet’s HP and stamina after combat.                                                  |
| **Nurture Elixir**    | Recovery         | Fully restores health and hunger; applies a minor XP gain buff for 10 minutes.                   |

	Notes :
* Revive items are consumed immediately upon use.
* Some recovery items can be applied mid-combat (only by certain classes, e.g., Shaman or Alchemist).
* Carrier Pets cannot be revived — once destroyed, they must be repurchased.

---

	11.6. Food & Nutritional Items

	Pet food items keep pets active and prevent starvation effects (see Section 9).
	Different pet races and types prefer different foods, and quality tiers affect duration and minor stat bonuses.

| **Item Name**         | **Category** | **Effect / Duration**                                                    |
| --------------------- | ------------ | ------------------------------------------------------------------------ |
| **Beast Grain Mix**   | Basic        | Reduces hunger by 50%, lasts 30 minutes.                                 |
| **Savory Meat Chunk** | Rare         | Fully restores hunger and grants +5% attack speed for 15 minutes.        |
| **Elemental Fruit**   | Special      | Preferred by elemental pets; adds +5% resistance matching their element. |
| **Spirit Feed**       | Premium      | Works for all pet types; adds +10% XP gain for 20 minutes.               |
| **Oceanweed Blend**   | Aquatic      | Prevents hunger for aquatic pets up to 1 hour.                           |

	Notes :
* Food items can be crafted via "Cooking" or bought from "Pet Master NPCs".
* Hunger reduction stacks do not overlap — applying new food resets the duration timer.
* Pets that starve lose combat efficiency (attack speed and defense reduced by 15%).

---

	11.7. Summoning Stones & Pet Eggs

	Summoning Stones and Pet Eggs serve as the initial form of a pet before activation.
	Once used, they permanently bind the pet to the player.

| **Item Name**              | **Type**      | **Description**                                                                         |
| -------------------------- | ------------- | --------------------------------------------------------------------------------------- |
| **Pet Egg**                | Common Summon | Obtained from taming wild creatures; requires incubation or activation by a Pet Master. |
| **Spirit Stone (Bound)**   | Rare Summon   | Used to summon higher-tier pets directly, bypassing the taming process.                 |
| **Ancient Summoning Core** | Epic Summon   | Grants a random Exotic Pet with 2–4 random skills.                                      |
| **Event Pet Token**        | Special       | Used to summon Carrier or limited-time pets from seasonal events.                       |

	Notes :
* Some eggs may contain hidden mutations, granting rare passives upon hatching.
* Bound stones cannot be sold or traded.
* Carrier and Exotic pets cannot be obtained through normal taming; they are event- or quest-based only.

---

	11.8. Item Source & Distribution Overview

| **Item Category**                          | **Source**                                |
| ------------------------------------------ | ----------------------------------------- |
| **Pet Cage / Food / Basic Revive Items**   | General Store, Pet Master NPC             |
| **Evolution Catalysts / Spirit Stones**    | Crafting (Alchemy), Dungeon Drops, Events |
| **Class Reroll Items (Orb of Rebirth)**    | Rare Drops, Limited Vendors               |
| **Skill Items (Essences, Manuals, Runes)** | Scribe Profession, Boss Drops, Quests     |
| **Revival Runes / Pet Soul Fragments**     | World Events, Legendary Boss Drops        |
| **Summoning Stones / Eggs**                | Taming, Quests, Chests, Boss Rewards      |

-------------------------------------------------------------------------------------------------------------------------------------------------------------------

	12. Integration with Other Systems

* Relationship with:
	* "Taming System" (shared mechanics and item usage).
	* "Mount System" (parallel UI and passive logic).
	* "Market System" (pets as tradable commodities).
	* "Combat & PvP Systems" (combat pets’ roles).

---
