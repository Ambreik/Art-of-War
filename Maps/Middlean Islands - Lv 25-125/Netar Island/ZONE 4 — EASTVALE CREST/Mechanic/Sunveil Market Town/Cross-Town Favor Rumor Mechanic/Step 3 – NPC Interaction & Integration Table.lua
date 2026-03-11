			Step 3 – NPC Interaction & Integration Table

| NPC                                  | Archetype      | Primary Actions Affecting FP                                      | Rumor Triggered                     | Effect on Other NPCs                            | Threshold/FP Influence                       | Notes / Hidden Effects                                                     |
| Flying Master (Corvin Ashwing)           | Opportunist        | Player pays fare, uses flying paths correctly, assists in emergencies | “Player is savvy in town transit”       | Smuggler FP +2, Mount Master FP +1                  | FP > 50 → Discount on flying                     | Night smuggler influence reduces price by 5–50% depending on player reputation |
| Smuggler (Darian Crowfen)                | Greedy/Opportunist | Player trades in blackmarket, carries Blackmarket Item                | “Player may be part of underground ops” | Flying Master FP +2 if nearby, Store Managers FP ±1 | FP > 50 → secret trades available                | Only visible if player has Blackmarket Item                                    |
| Tavern Keeper (Dwarven NPC)              | Social             | Player visits 3 days consecutively, buys drinks, helps in fights      | “Player is loyal patron”                | Guards FP +1, Hunter FP +1                          | FP > 50 → unlocks special beverage, tipsy effect | FP < -10 → may refuse service, starts minor warnings                           |
| Blacksmith Trainer                       | Cautious           | Player delivers ores, crafts high-level items                         | “Player is skilled and reliable”        | Miner FP +2, Accessories Merchant FP +1             | FP > 50 → allows duel testing                    | FP < 0 → adds crafting delay (e.g., +5 min)                                    |
| Miner Trainer                            | Cautious           | Player delivers minerals, performs escort, daily quests               | “Player helps maintain town resources”  | Blacksmith FP +2, Town Guardian FP +1               | FP > 50 → unlock rare Rank IV quests             | FP < 0 → miner becomes grumpy, reduces ore processing efficiency               |
| Hunter NPC                               | Cautious/Social    | Player assists hunting, completes elite monster quests                | “Player is trustworthy hunter”          | Tavern Keeper FP +1, Guards FP +1                   | FP > 50 → heals pet, minor attack buff           | FP < 0 → Hunter ignores player                                                 |
| Mount Master (Hairy Savage)              | Opportunist        | Player hosts mounts, provides items                                   | “Player takes care of mounts well”      | Pet Master FP +2, Flying Master FP +1               | FP > 50 → mounts gain faster stamina recovery    | FP < 0 → reduces mount availability                                            |
| Pet Master (Beautiful NPC)               | Social             | Player trains pets, feeds mounts, buys items                          | “Player loves their pet”                | Mount Master FP +2                                  | FP > 50 → unlock rare pet training               | FP < 0 → pet interaction limited                                               |
| Store Managers (Generic)                 | Greedy/Cautious    | Player stores items, converts currency, interacts via bounty          | “Player handles wealth responsibly”     | Other merchants FP ±1                               | FP > 50 → lower storage/conversion fee           | FP < 0 → NPC may refuse service, alert guards                                  |
| Guards (Permanent / Tavern)              | Cautious           | Player breaks rules, starts fights, defends town                      | “Player is troublemaker/hero”           | Tavern Keeper FP ±1, Town Guardian FP +1            | FP > 50 → assist in small fights                 | FP < 0 → NPC may intervene aggressively                                        |
| Town Guardian                            | Cautious/Social    | Player helps in invasions, assists NPCs                               | “Player protects the town”              | All citizens FP +1                                  | FP > 50 → minor healing, alert notifications     | FP < 0 → reduces support during events                                         |
| NPC Merchants (Armor/Weapon/Accessories) | Greedy/Opportunist | Trades, bargains, delivers rare items                                 | “Player is good/bad merchant partner”   | FP spreads to siblings and rivals +1/-1             | FP > 50 → rare goods, discounts                  | FP < 0 → higher prices, refuses trade                                          |

---

	How Rumor Propagation Works

1. Trigger : Player action that affects FP (helping, trading, delivering, assisting)
2. Propagation :
	* Nearby NPCs (within line-of-sight or town radius) receive a fraction of FP change as “hearsay” (+1 or +2 FP)
	* Rumor text may appear in local chat or in NPC dialogue:
		* Example: “Did you hear? That player helped the Miner yesterday!”
3. Decay :
	* Rumor influence diminishes over time (-1 FP per day if not reinforced)
	* Random chance (5–10%) for rumor misinterpretation → ± FP swing

---

		Example Scenario : 

	Player Action : Delivers 200 Lumen Quartz to Miner Trainer
* Miner FP +5
* Blacksmith FP +2 (heard the rumor)
* Town Guardian FP +1
* Tavern Keeper FP +1 (patrons talking about player)

	FP Effects :
* Miner offers Rank IV quests
* Blacksmith allows duel testing
* Town Guardian may heal player during invasion
* Tavern Keeper unlocks special beverage for 15 minutes

	Rumor Displayed in NPC Dialogue :
* Blacksmith: “Ah, I heard you helped the Miner yesterday—impressive work.”
* Tavern Keeper: “People say you’re quite handy with rare minerals!”

---

	This table effectively links every NPC in town into a dynamic cross-town reputation and favor system. It allows your players to manipulate FP with actions, 
unlock mechanics, and trigger emergent gameplay in a living city.

---