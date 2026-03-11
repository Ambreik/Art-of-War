			Master Cross-Town Rumor Table

	1.Traders & Merchants : 

| NPC                  | FP Range | Trigger                | Dialogue Example                                                           | Effect / Notes                          |
| Armor Merchant       | +50      | Sold rare armor        | “People say you always pick the finest pieces—merchants notice.”           | Unlocks minor discount / priority goods |
| Armor Merchant       | 0        | Sold ordinary armor    | “I saw someone trading… nothing remarkable.”                               | Neutral flavor only                     |
| Armor Merchant       | -50      | Returned bad armor     | “Word is this player traded low-quality stuff… not trusted.”               | FP decay, minor discount penalty        |
| Weapon Merchant      | +50      | Tested weapons         | “Heard someone had the Weapon Merchant test their blade—impressive skill.” | Unlocks duel / testing mechanic         |
| Weapon Merchant      | 0        | Purchased normal items | “I saw a regular trade… nothing to report.”                                | Flavor only                             |
| Weapon Merchant      | -50      | Argued prices          | “They haggled too hard… the merchant isn’t pleased.”                       | Discounts / rare goods blocked          |
| Accessories Merchant | +50      | Regular trades         | “Word is this player often buys here… they trust her taste.”               | Small FP bonus for related merchants    |
| Accessories Merchant | 0        | Neutral trade          | “Nothing special about today’s purchases.”                                 | Flavor only                             |
| Accessories Merchant | -50      | Tries to cheat         | “Heard someone tried to trick the Accessories Merchant… not smart.”        | FP decay, no access to rare items       |

---

	2. Trainers : 

| NPC       | FP Range | Trigger                    | Dialogue Example                                                         | Effect / Notes                              |

| Alchemist | +50      | Crafted rare potions       | “They mastered a difficult potion—well done!”                            | Unlocks special recipes or crafting bonuses |
| Alchemist | 0        | Regular crafting           | “I saw them brewing… nothing fancy.”                                     | Flavor only                                 |
| Alchemist | -50      | Failed crafting            | “Heard someone ruined an experiment… clumsy hands!”                      | Minor crafting delay / FP decay             |
| Herbalist | +50      | Cared for pets             | “They brought their pet along and showed care—wise choice.”              | Unlocks random herbal discount              |
| Herbalist | 0        | Normal herbs               | “Saw them buying herbs… nothing notable.”                                | Flavor only                                 |
| Herbalist | -50      | Poison mishap              | “I heard someone grabbed the wrong plant… dangerous!”                    | FP decay, crafting may fail                 |
| Tailor    | +50      | Delivered correct flowers  | “The Tailor is delighted—someone brought exactly what was needed!”       | Reduces crafting time                       |
| Tailor    | 0        | Neutral activity           | “They came by the Tailor… just browsing.”                                | Flavor only                                 |
| Tailor    | -50      | Delivered poisonous flower | “He remembers someone brought the wrong blooms… slow service next time.” | FP decay, extra crafting time applied       |

---

	3. Trainers (Blacksmith, Miner, Hunter) :

| NPC        | FP Range | Trigger               | Dialogue Example                                           | Effect / Notes                       |
| ---------- | -------- | --------------------- | ---------------------------------------------------------- | ------------------------------------ |
| Blacksmith | +50      | Tested crafted weapon | “The Blacksmith praises your craft—others notice too.”     | Duel testing available               |
| Blacksmith | 0        | Normal trade          | “I saw someone trade for supplies… standard day.”          | Flavor only                          |
| Blacksmith | -50      | Misused tools         | “They mismanaged the forge… not trusted.”                  | FP decay, crafting speed reduced     |
| Miner      | +50      | Delivered rare ores   | “Heard someone brought the Miner rare Quartz—well done!”   | Unlocks daily quest bonus            |
| Miner      | 0        | Regular ores          | “Just standard mining deliveries… nothing special.”        | Flavor only                          |
| Miner      | -50      | Wrong ore             | “They sent the wrong ores… careless work!”                 | FP decay, crafting or reward penalty |
| Hunter     | +50      | Assisted in hunt      | “Word is they helped the Hunter—he speaks highly of them.” | Buff during hunting events           |
| Hunter     | 0        | Neutral               | “They passed by the Hunter… nothing notable.”              | Flavor only                          |
| Hunter     | -50      | Failed mission        | “The Hunter notes their failure… needs to do better.”      | Buffs unavailable / FP decay         |

---

	4. Special NPCs (Steward, Tavern Keeper, Flying Master, Smuggler) : 

| NPC           | FP Range | Trigger             | Dialogue Example                                      | Effect / Notes                              |
| ------------- | -------- | ------------------- | ----------------------------------------------------- | ------------------------------------------- |
| Steward       | +50      | Completed tasks     | “The Steward heard you helped the town—commendable!”  | Unlocks extra minor town favors             |
| Steward       | 0        | Neutral             | “They were seen in the Steward’s office… normal day.” | Flavor only                                 |
| Steward       | -50      | Failed task         | “Heard they missed their duties… not reliable.”       | Minor FP decay                              |
| Tavern Keeper | +50      | Regular patron      | “They never miss a visit—special brew awaits.”        | Unlocks hidden beverage                     |
| Tavern Keeper | 0        | Casual visit        | “They came by… ordinary day.”                         | Flavor only                                 |
| Tavern Keeper | -50      | Caused fight        | “Ruckus last night—patrons are wary!”                 | Guard may root / pushback player next visit |
| Flying Master | +50      | Paid fare correctly | “Reliable traveler… they always respect the routes.”  | Minor flight priority / discount            |
| Flying Master | 0        | Neutral             | “Arrived for ride… nothing unusual.”                  | Flavor only                                 |
| Flying Master | -50      | Missed fare         | “Skipped payment… not trusted.”                       | No flight priority / discount blocked       |
| Smuggler      | +50      | Successful trade    | “They know the right people… clever and discreet.”    | Unlocks blackmarket discount or access      |
| Smuggler      | 0        | Neutral             | “Nothing notable about their presence.”               | Flavor only                                 |
| Smuggler      | -50      | Cheated or ignored  | “Tried to cheat Darian Crowfen… risky.”               | No smuggling discount / access blocked      |

---

	5. Guards & Special Combat NPCs : 

| NPC           | FP Range | Trigger                  | Dialogue Example                            | Effect / Notes                              |
| ------------- | -------- | ------------------------ | ------------------------------------------- | ------------------------------------------- |
| Town Guardian | +50      | Assisted during invasion | “The Guardian praises your courage!”        | Buffs during invasion                       |
| Town Guardian | 0        | Neutral                  | “They were around… nothing noted.”          | Flavor only                                 |
| Town Guardian | -50      | Ignored call for help    | “He saw you ignore the call—untrustworthy.” | FP decay, no assistance in events           |
| Tavern Guard  | +50      | Helped break fight       | “They kept the tavern calm—thankful!”       | Unlocks hidden beverage or perk             |
| Tavern Guard  | 0        | Neutral                  | “No trouble today.”                         | Flavor only                                 |
| Tavern Guard  | -50      | Started fight            | “They caused a scene… the guard is wary.”   | Guard may root / pushback player next visit |

---

	Implementation Notes :

1. FP Value System :
	* Each NPC has FP (-100 to +100) per player.
	* Positive rumors propagate FP to related NPCs slowly (+1 to +5 per rumor).
	* Negative rumors decay FP and can block services / discounts.

2. Rumor Propagation :
	* When a rumor triggers, NPC dialogue changes dynamically.
	* Multiple NPCs can comment on same player independently.

3. Randomization :
	* Each rumor line has chance 5–15 per interaction.
	* Repeated actions reinforce rumor strength (stacking FP effect).

4. Unlocks / Restrictions :
	* Positive FP → discounts, unlock hidden crafting recipes, exclusive beverages, duel opportunities.
	* Negative FP → denied services, minor delays, discount removal, NPCs hostile toward player during special events.

---