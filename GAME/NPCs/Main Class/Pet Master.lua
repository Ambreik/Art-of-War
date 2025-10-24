			Pet Master NPC file

		1. Introduction

	"Pet Masters" are specialized NPCs responsible for managing all aspects of player-owned pets, serving as the primary connection between players and their 
companion creatures. Their role includes overseeing pet storage, healing, revival, and occasionally assisting in pet evolution or fusion for specific pet types.
	They are distinct from "Mount Masters", focusing on living companions that aid players in combat, gathering, or exploration. "Pet Masters" ensure that pets are 
properly maintained, stored, or revived when necessary, providing vital services for players who rely on their pets during their journeys.
	Typically found in populated areas such as towns, stables, or inns, "Pet Masters" also appear in remote or mystical locations depending on the nature of the 
pets they manage. Some "Pet Masters" handle mundane creatures like wolves or birds, while others, especially the mystical or beast-type "Pet Masters", tend to 
magical or rare creatures found in secluded zones.

	Acting as caretakers, healers, and custodians, "Pet Masters" form a crucial part of the game’s ecosystem by ensuring pets remain active companions throughout a 
player’s progression.

-----------------------------------------------------------------------------------------------------------------------------------------------------------------

		2. Primary Roles & Duties

	Core Concept : "Pet Masters" are specialized NPCs responsible for managing all aspects of a player’s pets, distinct from "Mount Masters" or "Stablekeepers". 
Their primary function is to serve as a hub for pet management, storage, care, healing, revival, naming, and selective evolution or fusion for certain pet types.

	Main Roles :
1. Pet Storage Provider
	* Allows players to store extra pets not currently in use.
	* Provides a stable interface showing active and stored pets.
	* Slot system: first 4 slots free, additional slots incur daily fees or require quest/gold unlocks.
	* Storage capacity scales with region and level of the NPC.

2. Pet Retrieval Facilitator
	* Players can summon or swap pets from stored slots.
	* Only one pet can be active at a time.
	* Retrieval must occur at the "Pet Master" location unless Hero/Capital City conditions are met.
	* Provides retrieval UI with pet name, level, type, and class information.

3. Pet Healing & Revival Specialist
	* Can heal or revive pets that are injured or incapacitated.
	* Revival may require a fee or a special item (e.g., rare food or potion).
	* Ensures pets remain usable for combat or bonus effects.

4. Pet Naming & Customization
	* Allows players to rename pets using a special quest reward item.
	* Free of charge at the "Capital City Pet Master".
	* Ensures pet identity management is maintained across stored slots.

5. Pet Evolution / Fusion Supervisor
	* Certain pet types may evolve or fuse only for specific types.
	* Access restricted to designated NPCs and specific regions.
	* Facilitates advanced progression for specialized pets.

6. Optional Feeding / Maintenance Manager
	* Players may provide food or other consumables for pets while stored.
	* Feeding improves pet care quality or reduces fees for certain slots.
	* Non-fed pets may incur a delayed release or extra fee before retrieval.

7. Portable Pet Master Item Operator
	* Temporary "Pet Master NPC" can be summoned for 5–10 minutes using a special item.
	* Allows remote access to services in non-NPC areas.
	* Item is consumed upon use and cannot be reused.

8. Faction Access Controller
	* In "Outland Territories" : accessible to both factions.
	* In Main Continent : restricted to the NPC’s faction unless special conditions are met (Hero status, or Top 5 PvP ranking).

-----------------------------------------------------------------------------------------------------------------------------------------------------------------

		3. Pet Master Services & Mechanics

	Overview : "Pet Masters" provide all in-game services for pets, ensuring players can manage, store, heal, and maintain their companions effectively. Their 
services are structured to balance gameplay convenience, progression, and in-world realism.

	1. Pet Storage

* Slot-Based Storage :
	* Players can store pets in slots via the Pet Master UI.
	* First 4 slots are free; additional slots require a daily fee or quest/gold unlock.
	* Higher-level regions provide Pet Masters with more storage slots.
* Storage UI Features :
	* Shows active pet (currently summoned).
	* Displays all stored pets with: name, level, type, and class.
	* Locked slots are visible but inaccessible until unlocked.
* Feeding & Maintenance :
	* Players can provide food for stored pets to improve care quality or offset fees.
	* Certain pet types may require specific food.

	2. Pet Retrieval
* Pets can be retrieved or swapped at the "Pet Master" location.
* Only one pet can be active at a time.
* Hero-Level Retrieval: In Capital City, players meeting conditions (Hero status,max reputation, or Top 5 PvP) can retrieve pets globally from any storage location.

	3. Pet Healing & Revival

* Healing Services :
	* Pets that are injured or inactive too long can be healed for a small fee.

* Revival Services :
	* Dead pets can be revived using currency or special items (e.g., rare food or potions).
	* Only applies to normal or standard pets, not mystical or special event pets.

	4. Pet Naming & Customization
* Players can rename pets using a special item rewarded from quests.
* Free renaming is available at "Capital City Pet Masters".
* Ensures pets are easily identifiable in storage and UI.

	5. Pet Evolution / Fusion (Selective)
* Certain pet types can evolve or fuse at specific "Pet Masters".
* Only available at designated NPCs in specific regions.
* Facilitates advanced pet progression and unique bonuses.

	6. Costs & Currency

* Daily Storage Fees :
	* Applies to slots beyond the first 4 free ones.
	* Cost scales depending on NPC region and level.

* Optional Feeding :
	* Players can feed pets while stored to maintain health and performance.
	* Some pets require specific food types for evolution or fusion.

	7. User Interface Mechanics

* Stable Window Structure :
  * Active Pet Slot: displays the currently summoned companion.
  * Stable Slots: list of all stored pets.

* Interactive Elements :
	* Click a pet to summon, store, or access details.
	* Locked slots clearly indicated.
	* Sort/filter options by pet type, class, or level for convenience.

	8. Special Features
* Portable Pet Master Item :
	* Spawns a temporary "Pet Master NPC" for 5–10 minutes.
	* Useful for remote pet management in the field.

* Faction Access Control :
	* In "Outland Territories" : available to both factions.
	* On the main continent : restricted to the NPC’s faction unless Hero-level conditions are met.

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

		4. UI / Player Interaction (Pet Master Window)

	Overview : The "Pet Master" opens a specialized "UI" to allow players to manage their pets. The interface provides clear, organized access to all storage, 
retrieval, and pet management functions.

	1. Main Layout

* Active Pet Slot :
	* Displays the pet currently summoned.
	* Includes: pet name, type, level, and class.

* Stable Slots :
	* Displays all stored pets.
	* Each slot shows: name, type, level, and pet class.
	* Locked slots are visible but inaccessible until unlocked.

* Sorting & Filtering :
	* Players can sort pets by type, level, or class.
	* Filter options allow displaying only specific types (e.g., Battle Pets, utility pets).

	2. Interaction Buttons

* Summon Pet :
	* Summons the selected pet to the player.
	* Only one pet can be active at a time.

* Store Pet :
	* Returns a pet to storage.
	* If daily feeding/maintenance fee is unpaid, prompts for payment.

* Rename Pet :
	* Available if player possesses the special renaming item.
	* Free renaming allowed at Capital City "Pet Masters".

* Evolution/Fusion (if available) :
	* Opens additional interface when interacting with specific "Pet Masters".
	* Shows requirements, cost, and resulting pet attributes.

	3. Retrieval Across Locations

* Standard Players :
	* Pets must be retrieved at the same Pet Master where they were stored.

* Hero-Level Players :
	* In Capital City, players with:
		* [HERO] status, or
		* Max reputation with main continent or Capital City, or
		* Top 5 PvP ranking
			* Can retrieve pets globally from any storage location.
			* Interface automatically allows remote retrieval if conditions are met.

	4. Slot Information & Fees

* First 4 storage slots are free.
* Additional slots require a daily fee.
* Slots display:
	* Occupancy status
	* Feeding/maintenance fee per pet class
	* Unlock requirements (money or quest)

	5. Special Notifications

* Alerts when:
	* A pet is dead or requires revival.
	* Slot is locked or fee unpaid.
	* Evolution/fusion is possible.

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

		5. Costs, Slots & Scaling Rules

	Overview : "Pet Masters" provide a structured slot-based storage system for player-owned pets. Slots can be free or require a daily fee depending on number, 
region, and NPC level. This section defines the rules for storage management, slot scaling, and payment handling.

---

	1. Free vs Paid Slots

* First 4 Slots :
	* Always free of charge regardless of region or NPC.
	* Covers the initial pets a player can store.

* Additional Slots :
	* Require a daily maintenance fee to cover food/care for the pet.
	* Fee depends on pet type/class.

---

	2. Slot Scaling Rules

* Region Level Influence :
	* NPCs in higher-level regions offer more total storage slots.
	* Example:
		* Starting Area NPC: 8 total slots (4 free + 4 paid)
		* Mid-Region NPC: 12 total slots (4 free + 8 paid)
		* Capital City or "Outland Territories" NPC: 20+ slots (4 free + 16+ paid) / 40+ slots 4 free + 36+ paid)

* NPC Level / Importance Influence :
	* Certain "Pet Masters" in major cities or "Outland Territories" may have additional premium slots.

---

	3. Unlocking Additional Slots

* Gold/Money Unlock :
	* Player pays a one-time fee to unlock a slot permanently.

* Quest Unlock :
	* Some slots can only be unlocked by completing NPC-specific quests.
* Combination :
	* Certain slots may require both a quest completion and gold payment for access.

---

	4. Alternate Payment via Food/Items

* Players can choose to provide the pet’s required food instead of paying gold.
* Food/items must match the pet’s class/type.
* Prepayment for multiple days is allowed in some NPCs, reducing repeated visits.

---

	5. Overdue Debt Behavior

* Unpaid Slots :
	* If the daily fee or food is not provided, the slot is flagged as overdue.
	* Player cannot retrieve the pet until fee or food is paid.
	* System prompts with a warning when accessing the stable UI.

* Locked Slots :
	* Retrieval from locked slots is impossible until slot is unlocked.

---

	6. Special Notes

* Hero-level players in "Capital City" may bypass some restrictions for global retrieval.
* Payment and storage mechanics are designed to encourage periodic interaction with the "Pet Master NPC", emphasizing the NPC’s role as a central hub for pet 
management.

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

		6. Pet Care & Recovery Policies

	Overview : "Pet Masters" provide essential care and recovery services for player-owned pets, ensuring pets remain usable and accessible even if left inactive or
injured. This section defines healing, revival, temporary housing, timeouts, and special recovery rules.

---

	1. Healing & Revival

* Healing Services :
	* "Pet Masters" can fully heal pets instantly for a small fee or food payment.
	* Healing covers all damage or status effects accumulated while the pet is active.

* Revival Services :
	* If a pet dies (via PvM battle or other in-game events), the "Pet Master" can revive it.
	* Revival requires:
		* A fee in gold or
		* A special revival item (e.g., rare flower, potion).
	* Only applies to stored or player-owned pets; wild or temporary pets are not eligible.

---

	2. Temporary Housing for Inactive Pets

* Pets left inactive for extended periods can be kept in temporary storage by the "Pet Master".
* Player must provide food or pay a small fee to maintain the pet during inactivity.
* NPC tracks the duration of inactivity and may notify players via UI or in-game message if maintenance is required.

---

	3. Timeouts & Expiry

* Long-Abandoned Pets :
	* Pets not accessed or cared for beyond a defined threshold may trigger inactivity warnings.
	* Persistent neglect may result in:
		* Removal from player’s stable (rare, extreme cases)
		* Requirement to pay additional revival or care fees

* Abandonment Rules :
	* No pet is automatically deleted without player consent.
	* Abandonment is entirely player-controlled via Pet Master interaction.

---

	4. Special Recovery Flows

* Hero/High-Reputation Perks :
	* In "Capital City" , players with Hero status, full reputation with main continent/Capital City, or Top 5 PvP ranking may retrieve stored pets from any 
location, bypassing regional restrictions.
* Portable Pet Master :
	* Temporary summoned Pet Master item (5–10 minutes) can be used for immediate healing or revival on the go.
* Lost or Frozen Pets :
	* Pets stored at NPCs in inaccessible regions can only be recovered when player meets Hero/Rep/PvP conditions or uses Capital City Pet Master.

---

	5. Notes

* Recovery services are designed to maintain player continuity and prevent permanent loss of pets due to inactivity.
* Encourages regular interaction with "Pet Masters" and emphasizes their role as central hubs for pet management.

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

		7. Location & Faction Rules

	Overview : "Pet Masters" are found across most human settlements, usually near stables alongside "Mount Masters". Their locations and accessibility vary 
depending on the region and player faction.

---

	1. Common Locations
* "Pet Masters" are located in stables, inns, or other mount/pet management hubs.
* They are typically co-located with "Mount Masters" for convenience.
* Each major capital city hosts at least one "Pet Master".
* In "Outland Territories", "Pet Masters" are accessible to players of both factions.

---

	2. Faction Access Rules

* Main Continent :
	* "Pet Masters" are faction-restricted; only players of the NPC’s faction can interact with them.
	* Cross-faction players cannot use the services unless special exceptions apply.

* Outland Territories :
	* "Pet Masters" are shared between both factions and can be used freely.

---

	3. Special Rules

* "Capital City" Global Retrieval :
	* Players meeting one of the following conditions can retrieve stored pets from any location :
		* Holds [HERO] status
		* Maximum reputation with their main continent or Capital City
		* Top 5 PvP ranking
* Portable "Pet Master" Item :
	* Allows players to summon a temporary "Pet Master" for 5–10 minutes.
	* Item disappears upon use and cannot be reused.

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

		8. NPC Behavior, Emotions & Roleplay

	Overview : "Pet Masters" are designed to provide immersive roleplay interactions while performing their core functions. Their behavior, dialogue, and animations
reinforce the caregiving and pet-handling role.

---

	1. Dialogue & Roleplay

* Typical dialogue emphasizes pet care, animal loyalty, feeding, and bonding.
* NPCs may provide tips or reminders about storage, revival, or feeding requirements.
* Some dialogue lines vary based on player actions:
	* Gratitude for assisting with pets or providing rare food/items.
	* Scolding if the player neglects stored pets or misses payments.
	* Reward or encouragement when a player completes special pet-related quests.

---

	2. Emotions & Ambient Animations

* NPCs display context-sensitive animations such as:
	* Feeding a pet
	* Checking or grooming pets
	* Offering items to the player
	* Celebratory gestures when the player achieves Hero/Rep/PvP milestones

* Animations differ slightly based on NPC type:
	* Urban/practical "Pet Masters": Focused on routine care and management
	* Beast-type mystical "Pet Masters": Display mystical or magical gestures while handling pets

---

	3. Favored-Player Interactions

* Certain players may trigger small perks based on repeated interactions:
	* Discounts for storage or revival fees
	* Access to hidden or optional pet quests
	* Custom greetings or recognition gestures

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

		9. Special Features & Edge Cases

	Overview : "Pet Masters" include unique mechanics and exceptions that go beyond basic storage and care, providing flexibility and advanced functionality for 
high-level or specialized players.

---

	1. Summonable Pet Master Item

* Players can use a special item to temporarily spawn a "Pet Master" NPC.
* Duration: 5–10 minutes per use.
* Limitation: The item disappears after use and cannot be reused.
* Purpose: Allows temporary access to "Pet Master" services in locations where an NPC is not permanently available.

---

	2. Cross-Location Retrieval Exceptions

* Normally, players must return to the specific "Pet Master" where a pet is stored to retrieve it.
* Exceptions: In "Capital City", top-tier players can retrieve pets globally if they meet one of these conditions:
	* [HERO] status
	* Maximum reputation with their main continent or "Capital City"
	* Top 5 PvP ranking

---

	3. Evolution / Fusion Handling

* Certain high-level "Pet Masters" manage pet evolution or fusion for specific pet types.
* Only these top-tier NPCs provide these services; standard "Pet Masters" do not.
* Requirements may include special items, completed quests, or specific in-game achievements.

---

	4. Faction Accessibility

* Outland Territories: "Pet Masters" are accessible to both factions (Knights and Pindars).
* Main Continent: "Pet Masters" are faction-restricted; players from the rival faction cannot normally use them unless exceptions apply (e.g., Hero/Rep/PvP rules).

---

	5. Spawn Item Use Cases**

* The spawnable "Pet Master" item can be used strategically in field locations for temporary access to storage, healing, or evolution services.
* Cannot bypass faction or Hero/Rep restrictions; standard rules still apply.

---

	6. Admin / GMSafe Considerations

* For administrative purposes, "Pet Masters" spawned via GM tools or spawn items should not interfere with permanent NPC behavior.
* Spawned NPCs disappear cleanly without leaving residual data or affecting slot counts.

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

		10. Summary / Quick Reference

	Pet Master Services (Core) :
* Pet Storage: Slot-based, first 4 free, extra slots unlockable via gold or quests.
* Pet Retrieval: Summon stored pets; normally location-bound, exceptions in "Capital City" for top-tier players.
* Pet Healing / Revival: Instant recovery for a fee or food cost.
* Pet Naming: Via special quest item; free at "Capital City" NPC.
* Pet Evolution / Fusion: Handled by top-tier "Pet Masters" only.

	UI / Interaction Notes :
* Stable Window includes Active Pet Slot + Stored Pet Slots.
* Slot display: pet name, level, type, class.
* Sorting & filtering by pet type/class.
* Retrieve/store buttons clearly labeled; cross-location retrieval rules applied automatically.

	Costs & Slot Rules :
* First 4 slots free.
* Paid slots scale with NPC location/region.
* Daily maintenance fee may be paid in currency or pet-specific food.
* Overdue payment locks retrieval until resolved.

	Hero / Unlock Conditions (Capital City only) :
* [HERO] status, max reputation, or Top 5 PvP ranking enables global retrieval.

	Faction Rules :
* "Outland Territories" : accessible by both factions.
* Main Continent: restricted to local faction, unless Hero/Rep/PvP conditions met.

	Special Features :
* Spawnable Pet Master item: 5–10 min temporary access, one-time use.
* Cross-location retrieval exceptions applied only under Hero/Rep/PvP rules.
* Evolution / Fusion services limited to specific NPCs.

	Location Overrides :
* Co-located with "Mount Masters" where possible.
* Secluded mystical or beast-type "Pet Masters" may have unique appearances or interactions.
* Urban / practical "Pet Masters" use standard stables with feeding troughs and ambient animal sounds.

--------------------------------------------------------------------------------------------------------------------------------------------------------------------