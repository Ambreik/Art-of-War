			Stormreach Token Vendor

---

	Basic Information : 

* Name : Stormreach Token Vendor
* Role : Reward System NPC / Mini-Event Economy Handler
* NPC Type : Vendor / Service NPC
* Faction : Neutral (Stormreach Economy)
* Location : *Middlean Islands → Netar Island → Zone 5 — Northspire Reach / Stormreach Watch
* Exact Placement : Inside token vendor hut (single-room house) near plaza

* Disposition : Proud, Interactive, Slightly Boastful
* PvP Status : Not PvP-flagged
* Skillable : No
* Reputation : Tied to token economy, does not offer REP
* Respawn : Permanent

---

	Visual Identity

	Appearance :
* Eskimo-inspired attire with heavy furs and decorative trim
* Wears small pouches for token storage
* Carries a small ledger and quill for exchanges
* Pet: Small bear cub named "Fearsome", roaming nearby (purely cosmetic/flavor)

	Silhouette / Presence :
* Stands behind counter in hut
* Often gestures proudly while speaking
* Visual animations for counting tokens, exchanging goods

---

	Role in Village / Functions

* The Stormreach Token Vendor is the core NPC for the mini-event economy : 
	* Exchanges "Stormreach Commendation Tokens" earned during Crusader Invasions and other events

* Offers goods only purchasable with Tokens:
	* 1 title
	* 2 cosmetics
	* Defensive consumables (potions, buffs)
	* Fortification upgrades for village defense
	* Tiered military items
	* Ballista recharges
	* Balloon payload upgrades

* Behavior during invasion :
	* Door remains closed
	* Cannot interact with players while siege is active
	* Resumes business post-event

* Provides flavor text / quotes for immersion depending on situation (greeting, event, trade, siege)

---

		Mechanics : 

	1. Token Exchange

* Accepts "Stormreach Commendation Tokens" only
* Transaction Types:
	1. Title purchase – grants permanent visual title to player
	2. Cosmetic purchase – temporary or permanent visual items
	3. Consumables / Defensive upgrades – usable in defense or combat
	4. Fortification upgrades – adds visual and functional enhancements to village structures
	5. Ballista and Balloon upgrades – interacts with siege mechanics for players
* Exchange UI :
	* Shows token balance
	* Shows inventory categorized by item type
	* Disabled during invasions

---

	2. Mini-Event Integration

* Receives tokens from event tracking system (Crusader Invasion or traveling caravan event)
* Can verify player participation
* Optional daily limit per player to prevent excessive accumulation

---

	3. Shop / Item Mechanics (Secondary File) : 

	Example Items :

1. "Lunar Liquor" – used for fishing "Moonlight School"

	* Mechanics:
		* Only one potion per interaction
		* Must be thrown into pool at exact noon or midnight
		* Evaporates after use, visually shimmering on water surface

2. Defensive Upgrades
	* Can reinforce bulwarks or beacon posts during invasions

3. Ballista Recharges & Balloon Payload Upgrades
	* Compatible with Hot Air Balloon and Ballista mechanics of the village

---

	4. NPC Behavior & Quotes : 

* Always greets players with proud dialogue
* During casual interaction:
	* "Ah, another hero seeking glory! Stormreach owes you much already."
	* "Tokens? I have the finest goods, but only for those who truly earned them."
* During minor events:
	* "Stay alert! Even here, the winds may carry trouble."
* During siege:
	* Hut door remains shut
	* Emote: peeking nervously from inside
* Pet "Fearsome" adds visual flavor but no mechanics

---

	5. PvP / Combat : 
* Cannot be attacked or affected by PvP mechanics
* Passive interaction only
* Immune to environmental effects that target players (fire, frost, wind)

---

	6. Integration With Systems : 

| System              | Interaction                                                  |
| ------------------- | ------------------------------------------------------------ |
| Token Economy       | Accepts & tracks Stormreach Commendation Tokens              |
| Mini-Event          | Tracks event participation & rewards                         |
| Village Defense     | Sells consumables, fortification upgrades                    |
| Player Interaction  | Dialogues, trades, flavor emotes                             |
| LCWM / Hidden Hooks | Optional access during hidden chamber (Artefill interaction) |

---
