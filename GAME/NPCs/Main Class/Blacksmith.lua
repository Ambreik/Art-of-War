			Blacksmith NPC file

		Blacksmith

	A "Blacksmith" is a master craftsman NPC dedicated to the art of metalworking, forging, and enhancement. They are the backbone of every human settlement, 
maintaining the weapons, armor, and tools that sustain both adventurers and common folk. Known for their unyielding endurance and skill, "Blacksmiths" combine 
strength, precision, and ancient knowledge to reshape raw materials into powerful creations.
	More than simple artisans, "Blacksmiths" are central to the player’s progression. They hold the unique ability to upgrade and enhance equipment, refine raw ores
into valuable ingots, and restore damaged gear through their mastery of the forge. Players will frequently rely on them to strengthen their weapons, armor, and accessories, turning ordinary equipment into items worthy of legendary heroes.
	While every settlement hosts at least one Blacksmith, not all are created equal. Some possess unique techniques or regional forges that specialize in certain 
materials found only in their homeland — volcanic metal, enchanted crystal, or frost-infused iron. These differences make each Blacksmith feel tied to the 
environment and culture of the region they inhabit.

	As key figures in local communities, "Blacksmiths" often maintain ties with miners, traders, and adventurers, exchanging rare materials or offering small tasks 
in return for supplies. Over time, their trust can be earned through local reputation systems, unlocking better prices, improved success rates, and even access to 
experimental crafting options.
	In essence, the "Blacksmith" stands as both a functional and symbolic figure — the embodiment of human craftsmanship and perseverance. Whether tempering a sword
for battle, reforging a shield shattered in combat, or breathing new life into old armor, every clang of the hammer echoes the promise of strength, endurance, and 
progress.

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

		Locations

* Found predominantly in major cities or villages.
* Often present in "Market Plazas" or specific crafting districts.

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

		Appearance and Environment

* Blacksmiths operate from dedicated workshops equipped with tools of their trade:
	* Anvil – Used for shaping and tempering metal items.
	* Furnace – A roaring fire fueled by coal or magic embers, used to melt metals or refine ingots.
	* Hammers, tongs, and molds – Essential tools scattered around their workshop.
	* Crafting materials – Stacks of raw ore, ingots, and unfinished items can be found nearby.

* The workshop's visual design reflects the region’s style (e.g., icy for *Frozen Territory*, wooden for *Aarong Forest*).

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

		Functions

1. Item Upgrading
	* Players can bring equipment to Blacksmiths to improve the item's quality and stats.
	* Upgrading may require specific materials, gold, or special items (e.g., enchanted ingots or magic stones).
	* Blacksmiths can use optional enhancement items during the upgrade process:
		* Reinforcement Scrolls – Increase success rates.
		* Protection Stones – Prevent the destruction of items during failed upgrades.
		* Enhancement Charms – (Optional) Provide minor stat boosts when used in combination with upgrades. *(Defined in item file.)*

2. Crafting
	* Blacksmiths craft a range of items, such as:
		* Equipment Items.
	* Restrictions : Blacksmiths cannot craft "Legendary Equipment", which is exclusive to "Legendary Blacksmiths".

3. Quest Providers
	* Occasionally act as "Quest Givers", offering tasks related to crafting or gathering rare materials.

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

		Functions and Mechanics

* Item Upgrading :
	"Blacksmiths" are crucial for improving the quality of weapons, armor, and accessories by increasing their level. The upgrading process depends on specific 
materials and gold, which the player must provide.

* Success and Failure Rates :
	* Upgrading is not guaranteed. Higher-level upgrades have an increased chance of failure, and in some cases, failure may result in:
		* *Item degradation* (lowering its level).
		* *Complete destruction* of the item (unless a protective item is used).
	* Players can use special items such as:
		* Reinforcement Stones to boost success rates.
		* Protection Perchants to prevent item destruction.

* Optional Enhancement Items :
	Blacksmiths recognize and utilize various enhancement consumables or materials during the forging process.
	These may include:
		* "Polishing Oils", "Stabilizing Powders", or "Infusion Cores" to alter the odds of success or influence the resulting item’s stat rolls.
		* These items are tied to the player’s progress, region, or reputation with the local settlement.

* Crafting Queue / Multi-item Processing (Advanced Feature) :
	Certain Blacksmiths possess advanced forges that allow players to queue multiple items for upgrading or crafting.
		* Each task requires processing time based on the item’s rarity and complexity.
		* Players can continue adventuring while their queued items are processed in the background.
		* When finished, players receive a "Forge Notification" indicating completion or failure results.
		* Higher reputation with the local settlement may reduce processing time.

* Crafting Assistance :
	Blacksmiths can craft or improve materials needed for upgrades, including "Blacksmith Perchants" or other enhancement tools.

* Quests and Reputation :
	While primarily focused on crafting and upgrading, Blacksmiths occasionally act as "Quest Givers", particularly for tasks requiring material gathering.

* Local Reputation Integration :
	Blacksmiths are influenced by the player's "Local Reputation" within the settlement or region.
		* Higher reputation improves success rates and reduces service fees.
		* Neutral reputation maintains standard rates and interactions.
		* Low reputation may increase costs or restrict access to certain services until trust is regained.
		* Reputation can be improved by completing regional quests, supplying materials, or aiding the settlement’s forge during special events.

* Regional Variations :
	Each region’s Blacksmith may have unique traits or services:
	* For example, a Blacksmith in "Lagooma Jungle" might use exotic materials, while one in "Tenebress Territory" could specialize in forging weapons from volcanic
metals.

---

	Repair Functionality

* Item Durability System :
	"Blacksmiths" are responsible for repairing equipment that has lost durability through combat, crafting, or extended use. When an item’s durability reaches 0, 
it becomes unusable until repaired.

* Repair Process :
	* Players can interact with any Blacksmith to restore an item’s durability to its maximum value.
	* The cost of repair depends on the item’s level, quality, and current durability state.
	* Players can choose to repair individual items or use a "Repair All" option for a total cost based on all equipped gear.

* Durability and Damage :
	* Higher-quality or enhanced items degrade more slowly.
	* Items at 0 durability lose all combat or stat bonuses until repaired.
	* Some items (especially rare or crafted ones) may require specific materials in addition to gold for full restoration.

* Integration with Guild Banks :
	* When inside "Guild Territory", players with proper permissions can use guild funds to pay for repair costs, directly linking the repair process to 
"Guild Bank" systems.

* Reputation Influence :
	* A higher local reputation with the Blacksmith slightly reduces repair costs or grants a chance to partially refund materials used in restoration.

---

> 	Repair and Item Quality Relationship :

> * The cost and efficiency of repairs depend on the item’s quality.
> * "Basic" items degrade quickly and require frequent repairs, though their repair costs remain low.
> * "Rare" and "Epic" items have improved durability and slower degradation rates but are more expensive to repair due to their superior materials and enchantments.
> * "Legendary" items are immune to durability loss and cannot be repaired, as their craftsmanship transcends standard wear and tear.
> * Upgraded items (e.g., +5 or +9) have repair costs scaled by their enhancement level, reflecting their refined condition and magical reinforcement.

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

	Legendary Blacksmiths : 
- Blacksmiths do not craft "Legendary Equipment".
- Such tasks are reserved for "Legendary Blacksmiths", rare and powerful NPCs with exclusive quests, recipes, and skills.
- Legendary Blacksmiths often have unique lore tied to their abilities and might require extensive effort or reputation to access.
- They are found only in major cities in "Outland Territories" and "Capital City"

---

	Additional Features : 
1. Blacksmiths in Events : 
	- Occasionally involved in world or faction-based events, offering temporary buffs or unique crafting recipes during celebrations or invasions.
2. Dynamic Interactions : 
	- Some Blacksmiths might provide additional dialogue or lore depending on a player’s "Reputation", "Faction", or the completion of specific quests.