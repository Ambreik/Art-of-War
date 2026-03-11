			Step 4. Flavor dialogue examples for positive, neutral, and negative rumors

---

	1. Positive Rumors (FP > 50)

| NPC Type / Trigger              | Dialogue Example                                                            | Effect / Notes                            |
| ----------------------------------- | ------------------------------------------------------------------------------- | --------------------------------------------- |
| Miner / Delivered Rare Ores         | “I hear you helped the Miner gather rare Lumen Quartz—well done!”               | Boosts FP for NPCs who value diligence        |
| Blacksmith / Craft Tested           | “Word is you tested your craft with the Blacksmith—he seemed impressed!”        | Unlocks duel-testing mechanic                 |
| Tavern Keeper / Regular Patron      | “People say you never miss a day at the Tavern—you’ve earned the special brew!” | Unlocks special beverage                      |
| Smuggler / Blackmarket Trade        | “They say that player knows the right people… clever and discreet.”             | Only visible if player holds Blackmarket Item |
| Flying Master / Paid Fare Correctly | “I heard you always pay your fare and mind the routes—a reliable traveler.”     | Unlocks small discount or priority seating    |
| Town Guardian / Assisted Invasion   | “The Guardian himself spoke highly of your courage today.”                      | Grants minor support buff during invasions    |

---

	2. Neutral Rumors (FP ≈ 0) : 

| NPC Type / Trigger        | Dialogue Example                                                                | Effect / Notes                                             |
| ----------------------------- | ----------------------------------------------------------------------------------- | -------------------------------------------------------------- |
| Miner / Missed Deadline       | “I hear someone ran out of time collecting ores… maybe next time.”                  | Slight FP decay, no real effect                                |
| Tavern Keeper / Casual Visit  | “They say that player enjoys a drink now and then… nothing special.”                | Flavor only, no FP impact                                      |
| Store Manager / Minor Trade   | “I saw them at the Store Manager today… ordinary business, I suppose.”              | Neutral, can influence cautious merchants slowly               |
| Flying Master / Missed Flight | “Some say they arrived late to the Flying Stall… no big deal.”                      | Minor annoyance FP -1                                          |
| Smuggler / Ignored Offer      | “Heard someone passed up a chance with Darian Crowfen… maybe they don’t like risk.” | Neutral unless repeated multiple times, then FP drops slightly |

---

	3. Negative Rumors (FP < 0) : 

| NPC Type / Trigger           | Dialogue Example                                                     | Effect / Notes                                    |
| Miner / Delivered Wrong Ore      | “Word is that player brought the wrong minerals again… careless!”        | Minor crafting delays from Blacksmith                 |
| Tavern Keeper / Starts Fight     | “Did you hear? Someone caused a ruckus at the Tavern last night!”        | Tavern Guard may root / pushback player on next visit |
| Smuggler / Caught Cheating       | “They say this player tried to cheat Darian Crowfen… risky business!”    | Smuggling routes or discount blocked                  |
| Flying Master / Missed Payment   | “They skipped their fare payment… not a reliable traveler.”              | FP reduced, flight priority blocked                   |
| Town Guardian / Ignored NPC Help | “The Guardian noticed someone ignoring the call for help—untrustworthy.” | Reduces support buffs during invasions                |
| Merchants / Poor Bargaining      | “I heard that player haggled badly… the merchants are not amused.”       | Discounts and rare goods may be locked                |

---

	4. Implementation Notes : 

1. Dynamic Text Placement :
	* Rumor text can appear in NPC dialogue window or local chat whispers.
	* Positive rumors appear first for high FP NPCs, negative for low FP.

2. Rumor Decay / Spread :
	* Neutral rumors linger 1–2 days, minor FP adjustments.
	* Positive rumors propagate FP to nearby NPCs (+1 or +2).
	* Negative rumors propagate FP decay (-1 to -3), especially among cautious NPCs.

3. Randomness & Repetition :
	* Each rumor has a 5–15% chance of appearing in NPC dialogue per interaction.
	* Repeating the same action reinforces rumor strength.

4. Emergent Gameplay :
	* Player may strategically generate positive rumors for certain NPCs to unlock perks.
	* Negative rumors can limit access or services, encouraging thoughtful gameplay.

---
