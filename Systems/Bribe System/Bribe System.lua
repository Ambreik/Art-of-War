			Bribery System – World Integration

	The "Bribery System" is a player-driven corruption mechanic that allows bypassing normal gameplay restrictions through money, goods, or outlaw items. Unlike 
combat or lawful diplomacy, bribery introduces a third path of manipulation and corruption.
	It creates dynamic tension: players can save time, dodge punishments, or unlock illicit opportunities — but risk exposure, betrayal, or escalating punishments 
if discovered.

	Bribery is a universal system :
- Outlaws thrive with it.
- Knights and Pindars can dabble in it (with heavier penalties).
- NPCs and factions evolve in reaction to its use.

---

	Core Functionality

1. NPC Corruption Tiers
	NPCs are divided into categories of corruption resistance:

- Tier I – Easily Corruptible
  Dockworkers, smugglers, tavern keepers, minor guards.
  → Low cost, high success chance.

- Tier II – Opportunists
  Mid-rank guards, captains, merchants.
  → Moderate costs, chance depends on player reputation.

- Tier III – Resistant
  Officers, priests, city council officials.
  → High cost, low success chance, may demand rare outlaw tokens.

- Tier IV – Incorruptible
  Paladins, inquisitors, bounty hunters.
  → Cannot be bribed. Attempt = auto failure + punishment.

---

2. Player Influence Factors
	Success or failure of a bribe depends on:

- Faction Standing : Outlaws = +15% chance, Knights/Pindars = -10%.
- Reputation Level : High lawful reputation → harder to bribe, because NPCs fear exposure.
- Player Level : The higher the player level for the location world game level location, the higher the chance of bribing mechanics to be triggered.
- Charisma/Influence Stat : Affects persuasion and bribe cost reduction.
- Items/Professions :
	- Scribes create forged letters of authority.
	- Alchemists brew scent-hiding or “trust potions.”
	- Outlaws craft tokens that count as universal bribes.

---

3. Currency of Corruption
	Bribery is not always just gold:

- Gold : Standard, but inefficient for high ranks.
- Contraband : Exotic spices, outlaw-brewed potions, or rare alchemical goods.
- Faction Tokens : Outlaw Blood Tokens, smuggled seals, forged passes.
- Secrets : Some bribes are information-based → gained from Scribes or taverns.

---

4. Bribery Outcomes

- Success :
	- NPC ignores crime.
	- Unlocks secret shop/route/quest.
	- Temporary buff (Guard Blind Eye : reduces suspicion for 10 min).
- Failure :
	- NPC demands more gold (double cost).
	- NPC betrays → alert nearby guards.
	- Permanent distrust → NPC immune to future bribery.
	- Debuffs (e.g., "Bribery Fatigue").

---

	Situational Applications

1. Law Avoidance
- Trespassing, smuggling, theft → guards can be bribed to downgrade charges.

2. Merchants & Markets
- Unlock hidden outlaw stock (weapons, poisons, illegal pets).
- Gain temporary discount on normal wares.
- Pay smugglers to ship contraband.

3. Bounty System Integration
- Reduce bounty timers by bribing bounty hunters.
- Erase bounty entirely in outlaw-controlled regions.
- Pay off hunters to misreport or delay pursuit.

4. Questlines & Progression
- Skip quest objectives by bribing quest NPCs.
- Unlock alternate “corrupted” endings.
- Shortcut access to restricted dungeons or cities.

5. Faction Soldiers & Warfronts
- Pay patrols to ignore you in hostile lands.

6. Special Events
- Bribe tournament officials for easier opponents.
- Influence politics in city elections/events.
- Bribe tavern keepers for info on rare monsters, hidden outlaw bosses, or dungeon entrances.

---

	Systemic Impact

1. World Reputation
- Overuse of bribery in one city → creates "Corruption Heat Meter".
- At high heat:
	- NPCs demand higher bribes.
	- Anti-corruption squads spawn (hard to bribe).
	- Citizens whisper rumors → dynamic world flavor.

2. Faction Identity
- Outlaws : Bribery is expected and cheap.
- Knights/Pindars : Using bribery tarnishes honor → heavier penalties for exposure.
- Bounty Hunters : Immune to bribery, punish bribers harshly.

3. Economy Effects
- Bribery fuels outlaw markets : contraband, forged papers, tokens.
- Gold sinks into corruption, keeping inflation balanced.
- Smuggling lines (Zonen → Dendera, etc.) expand when bribery succeeds.

---

	Immersion & UI

- UI Window :
	When attempting bribery, a screen opens: NPC demand vs player offer.
- Visuals :
	- NPC glances around nervously before accepting.
	- Failure → guard calls reinforcements immediately.
- Feedback :
	- Success: Small gold transfer, text “The guard looks away.”
	- Failure: Orange glow shifting to red → exposure warning.

---

	Example Scenarios

- A Knight player caught smuggling tries bribing a dock guard. Failure = permanent +50% cost at that port.
- A Pindar sneaks into a Knight fortress. Pays 200g to a corrupt captain to downgrade prison sentence to fine.
- An outlaw bribes a tournament official, faces weak opponents, but rival players discover the scheme later.
- Players bribe tavern keepers in Outland Territories to spawn hints for hidden outlaw bosses.

---

		Bribery Buffs & Debuffs

	Buffs (Positive Effects)

These are temporary benefits when bribery succeeds.

	1. Guard’s Blind Eye

* Effect : Guards and patrol NPCs reduce detection radius by 30%.
* Duration : 5–10 minutes (scales by NPC tier bribed).
* Flavor : "The guard pretends not to notice your presence."

---

	2. Smuggler’s Favor

* Effect : Temporary access to hidden outlaw shops or smuggling transports.
* Duration : Until leaving the region.
* Flavor : "Your silver buys silence… and a little extra."

---

	3. Underworld Connections

* Effect : +10% better prices at outlaw merchants, +5% black-market success chance.
* Duration : 30 minutes.
* Flavor : "A nod and a wink from the shadows open hidden doors."

---

	4. Bribery Momentum (stacking)

* Effect : Each successful bribe in a city reduces the cost of the next by 5% (up to -20%).
* Duration : Until leaving the city/region.
* Flavor : "The more you grease palms, the easier hands stay open."

---

	Debuffs (Negative Effects)

These occur if bribery fails, or if the player abuses the system too often.

	1. Bribery Fatigue

* Effect : +20% bribe cost for next attempt. Stacks up to 3 times.
* Duration : 15 minutes.
* Flavor : "Word spreads fast: you’re running out of coin."

---

	2. Marked by the Pack

* Effect : Guards are more suspicious → detection radius increased by 25%.
* Duration : 20 minutes.
* Flavor : "You’ve been pointed out as the shady one."

---

	3. Rumored Corruptor

* Effect : -10% lawful reputation gain, +10% outlaw reputation gain.
* Duration : 1 hour (city-wide).
* Flavor : "The streets whisper your name alongside dirty coins."

---

	4. Betrayed Bribe

* Trigger : On critical bribery failure.
* Effect : NPC alerts guards immediately, spawning an elite patrol.
* Duration : Instant event (no buff/debuff duration).
* Flavor : "Your coin bought you nothing but betrayal."

---

	5. Corruption Heat (regional mechanic, not per-player)

* Effect : Costs for all players in the city increase by 10–50% as corruption rises.
* Duration : Persists until players complete world events (anti-corruption quests).
* Flavor : "The whole city reeks of bribes — and everyone wants their cut."

---
