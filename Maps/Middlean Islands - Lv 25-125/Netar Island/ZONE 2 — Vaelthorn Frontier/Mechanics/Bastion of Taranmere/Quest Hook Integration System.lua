			Quest Hook Integration System

---

		I. SYSTEM PURPOSE

* Give meaningful rewards for interacting with scrolls, statues, and bodies
* Provide layered exploration content for players
* Create dynamic optional encounters that respond to player behavior
* Integrate with faction reputation, lore, and skill progression

	Core Principle :

> Exploration and investigation are as rewarding as combat.

---

		II. QUEST TYPES

	We can define multiple types of quest hooks:

	1. Lore Quests

* Triggered by inspecting scrolls, pages, or statues
* Exmples:

	* “Read 3 crusader journals to unlock hidden lore about the seal”
	* “Examine the fallen monuments to learn the Bastion’s history”
* Rewards: experience, minor consumables, lore entries, or hints for dungeon mechanics

	2. Collection Quests

* Require interacting with multiple objects of the same type
* Examples:
	* “Recover 5 fallen crusader bodies”
	* “Examine 4 scattered battle maps”
* Rewards: minor faction reputation, consumables, or crafting materials (optional)

	3. Combat Trigger Quests

* Trigger reactive spawns when objects are inspected
* Examples:
	* Inspecting a sealed chest triggers a group of elite crusaders or spirits
	* Investigating a statue triggers a mini-event with nearby enemies
* Rewards: higher XP or rare consumables

	4. Environmental Puzzle Quests

* Require multiple object interactions in sequence
* Examples:
	* Activating 3 statues in order opens a secret passage
	* Reading multiple pages in correct order grants a temporary buff or hint
* Rewards: access to hidden zones or shortcuts, lore, or rare items

---

		III. QUEST ACTIVATION MECHANICS

* Objects flagged as quest hooks
* Player must interact with object within a certain radius and without interruption
* Objects can be partially reactive :
	* Some trigger immediately
	* Some trigger only if combined with previous objects

	Example Flow:
1. Player reads Scroll A → adds “Read Crusader Journal” quest objective
2. Player examines Statue B → updates quest to “Investigate Battle Monuments”
3. Optional: Spirit ambush occurs during or after inspection
4. Completion triggers reward and/or unlocks next quest step

---

		IV. QUEST COMPLETION REWARDS

* Experience points (minor, optional)
* Faction Reputation with “Restoration” or related faction
* Consumables or temporary buffs
* Lore entries for in-game codex
* Hints for dungeon mechanics or secret paths

	Optional :
* Reward scaling based on party size or difficulty of inspection

---

	V. PARTY AND REACTIVE LOGIC

* Quest hooks are party-friendly :
	* All members in proximity can receive credit
	* Inspection can trigger reactive spawns that scale slightly with party size

* Objects can interact with pressure and escalation system :
	* Inspecting multiple objects rapidly may increase pressure in zone
	* High-pressure zones spawn more elite enemies during quest hooks

---

		VI. REPEATABLE & OPTIONAL DESIGN

* Quest hooks are optional ; players can skip them
* Some can be repeatable (minor XP or reputation rewards)
* Some can be one-time only (important lore or unlocking secrets)

---

		VII. ANTI-EXPLOIT MECHANICS

* Objects flagged for quests cannot be farmed repeatedly for XP or reputation
* Only the first interaction counts for most quest objectives
* Party credit is granted once per group to prevent duplication exploits

---

		VIII. PLAYER EXPERIENCE GOALS

* Players feel rewarded for exploring
* Players are encouraged to engage with the environment
* Exploration contributes meaningfully to lore, faction reputation, and optional progression
* Risk-reward balance:

  * High-value objects may spawn spirits or patrols
  * Safe objects give minor lore without risk

---

		IX. SYSTEM INTEGRATION

	Quest Hook Integration interacts with:

* Interactive Object System (objects serve as triggers)
* Restless Spirits / Escalation System (optional enemy challenge)
* Seal Proximity Danger Zone (higher danger near seal for optional quest hooks)
* Faction Reputation System (optional rewards for completion)
* Dungeon Access / Key Fragment Hints (some objects may hint where fragments spawn)

	Does not interact with:
* Ruin Wildlife
* Rare Monster direct mechanics

---