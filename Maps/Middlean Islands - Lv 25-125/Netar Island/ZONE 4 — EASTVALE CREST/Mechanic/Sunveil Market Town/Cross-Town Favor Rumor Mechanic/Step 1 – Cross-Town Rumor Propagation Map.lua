			Propagation Map

---

	Step 1 – Cross-Town Rumor Propagation Map

	Purpose : This map defines how rumors flow between NPCs in the town. It is not geographic only, but also social proximity: who talks to whom, who observes, and 
who reacts. This will allow the rumor system to work automatically without player micromanagement.

---

	NPC Nodes and Propagation Links : 

| NPC / Node                           | Primary Archetype    | Can Spread To                                         | Notes                                                                                                       |
| Tavern Keeper                    | Social               | Mount Master, Pet Master, Guards, Random Customers    | Central social hub, rumors amplified if player frequently visits tavern.                                    |
| Mount Master                     | Opportunist          | Pet Master, Stable Master, Hunters                    | Focused on profit; spreads “lucrative” rumors more effectively.                                             |
| Pet Master                       | Cautious             | Mount Master, Tavern Keeper                           | Spreads helpful/competent rumors slowly.                                                                    |
| Stable Master                    | Greedy               | Mount Master, Store Manager                           | Propagates lucrative rumors; notices money-related actions first.                                           |
| Store Manager                    | Greedy               | Armor Merchant, Weapon Merchant, Accessories Merchant | Observes deliveries, large trades; spreads profit-focused rumors.                                           |
| Armor Merchant                   | Opportunist          | Weapon Merchant, Accessories Merchant                 | Only reacts to profitable actions; influenced by Store Manager rumors.                                      |
| Weapon Merchant                  | Greedy               | Accessories Merchant, Armor Merchant                  | Spreads negative or mocking rumors about Armor Merchant.                                                    |
| Accessories Merchant             | Cautious             | Armor Merchant, Weapon Merchant                       | Reacts to social reputation and favor points; spreads positive rumors slowly.                               |
| Flying Master                    | Opportunist          | Smuggler NPC, Travelers                               | Propagates discounts or notoriety rumors if smuggling interactions occur.                                   |
| Smuggler NPC                     | Greedy / Opportunist | Flying Master, Tavern Keeper                          | Spreads hidden deals or “under-the-table” rumors; may secretly propagate positive or negative favor points. |
| Blacksmith Trainer               | Cautious             | Miners, Hunters                                       | Reputation spreads based on crafting skill and duels; supports rumors of competence.                        |
| Miner Trainer                    | Greedy               | Blacksmith, Hunters                                   | Propagates resource acquisition reputation; reacts to player mining contributions.                          |
| Hunter NPC                       | Cautious             | Blacksmith, Miners                                    | Spreads positive rumors if player helps with hunting quests.                                                |
| Alchemist Trainer                | Opportunist          | Herbalist, Tailor                                     | Rumors about player skill in crafting or alchemy.                                                           |
| Herbalist Trainer                | Cautious             | Alchemist, Hunter                                     | Spreads information about competent or helpful players.                                                     |
| Tailor Trainer                   | Opportunist          | Alchemist, Weapon Merchant                            | Can spread rumors about social/gossip status or failures.                                                   |
| Guards / Scouts                  | Social               | Town Guardian, Tavern Keeper                          | Report visible “player misbehavior,” influences rumor chains for public perception.                         |
| Town Guardian                    | Cautious             | Guards, General Merchant Lady                         | Amplifies positive or negative rumors during invasions or town events.                                      |
| Tomb Entrance / Quest NPCs       | Opportunist          | Blacksmith, Hunters                                   | Spreads rumors of rare items, dungeon completions.                                                          |
| Children NPCs / Random Customers | Social               | Tavern Keeper, Guards                                 | Minor rumor amplification; flavor for events only.                                                          |

---

		Propagation Rules

1. Propagation Chance :
	* Each connected NPC has a base 50–80% chance to receive rumor per day, influenced by archetype alignment:
		* Greedy → 80% for lucrative rumors
		* Cautious → 80% for helpful/competent rumors
		* Opportunist → 70% for anything advantageous
		* Social → 60% for social rumors

2. Amplification : 
	* Central social hubs (Tavern Keeper, Flying Master) double rumor spread if player is present during peak hours.

3. Decay : 
	* Rumors fade after 3–5 in-game days unless reinforced.
	* Reinforcement occurs if the player repeats positive/negative actions relevant to the rumor.

4. Rumor Type : 
	* Positive – increases favor points for NPCs receiving rumor
	* Neutral – minor flavor, small FP increase
	* Negative – can reduce FP or block certain interactions temporarily

5. Cross-Town Effects : 
	* Rumors propagate beyond immediate area, to connected NPC nodes.
	* Example: Player impresses Blacksmith → rumor spreads to Miner → Town Guardian → Tavern Keeper → Flying Master

---

	This map will allow automatic rumor chains, influence favor points, and create dynamic reactions without player intervention beyond key actions.

---