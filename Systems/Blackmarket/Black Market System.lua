			Black Market System

---			
		
			SECTION 1 – System Overview

	What is the Black Market in the World Game?

	"The Black Market" is a hidden, structured, and highly controlled underground trading network operating beneath the visible economy of the world. It is not
merely a place where rare items are sold — it is a secret economic artery powered by the "Smuggling Network" and maintained by trusted operatives within major 
settlements and remote regions.

	Unlike open markets or faction vendors, the Black Market is invisible to ordinary citizens. It exists behind coded dialogue, hidden cellar doors, false walls in
taverns, concealed docks, and quiet exchanges between "Smuggler NPCs" and registered operatives.

It is not chaos.
It is not outlaw anarchy.
It is a disciplined shadow economy.

---

		Role in World Gameplay

	The Black Market serves several core gameplay purposes :
* Provides access to rare, illicit, or restricted items not commonly found in normal markets.
* Acts as an economic reward layer for players who rise within the Smuggling Network.
* Creates a risk–reward loop tied to detection, reputation loss, and bounty systems.
* Functions as a gold sink through controlled taxation on transactions.
* Enhances immersion by introducing secrecy, tension, and hidden power structures.

	It is a progression reward system for smugglers — not a shortcut for wealth.

---

		Lore Explanation – Why the Black Market Exists

	In a world where trade is taxed, monitored, and controlled by guilds, factions, and authorities, restriction naturally breeds resistance.

	The official trade routes are governed by merchant guilds, dockworkers, regional authorities, and city councils. Goods are inspected. Taxes are enforced. Rare 
artifacts are seized. Contraband is outlawed.

	The Smuggling Network emerged not purely out of greed, but out of necessity — to move goods that official systems refuse to acknowledge.

Some items are forbidden.
Some are politically sensitive.
Some are simply too rare to be regulated.

	The Black Market is the economic expression of that hidden movement.

	It exists because :
* Certain factions hoard resources.
* Authorities impose unfair restrictions.
* Rare knowledge is suppressed.
* Powerful artifacts are locked behind political control.

	The Black Market balances the visible economy by sustaining the invisible one.

---

		Player Fantasy

	The Black Market fulfills a specific player fantasy :
* Operating in secrecy.
* Trading under aliases.
* Dealing in rare, dangerous, or morally ambiguous goods.
* Negotiating prices in coded exchanges.
* Knowing something others do not.
* Accessing doors that are closed to ordinary citizens.

	It creates the feeling of belonging to a discreet inner circle — trusted, useful, and slightly dangerous.

Players are not criminals by default.
They are operatives within a shadow infrastructure.

---

		Relationship with the Smuggling Network

	The Black Market is not independent.

	It is a direct extension of the Smuggling Network.

	Smuggling missions transport the goods.
	Black Market trading distributes them.

	Only players who are officially registered within the Smuggling Network — having completed the initiation quests and earned recognition — may access the Black 
Market interface through Smuggler NPCs.

	Smuggler NPCs serve dual roles :
* Mission coordinators
* Black Market brokers

	Access is rank-gated :
* Rank I: Limited visibility, basic goods.
* Rank II+: Trading permissions unlocked.
* Higher Ranks: Expanded item pools, larger trade limits, and better negotiation leverage.

	If a player loses standing within the Smuggling Network, Black Market access can be suspended.

	The system is controlled and monitored internally by Smuggler leadership.

---

		Difference from Normal Vendors

	Normal Vendors :
* Publicly accessible.
* Fixed prices.
* Regulated goods.
* No secrecy.
* No risk of detection.

	Black Market :
* Access restricted to registered smugglers.
* Dynamic pricing.
* Hidden identities.
* Illegal or restricted items.
* Risk of guard suspicion.
* Gold transaction tax to control inflation.
* Limited trade volume per time window.

	Normal vendors serve the lawful economy.
	The Black Market serves the shadow economy.

---

		Difference from the Outlaw Faction

	The Black Market is not an outlaw or criminal faction.

	Outlaws :
* Operate openly against authority.
* Often flagged or hostile.
* May engage in chaotic violence.

	Smugglers :
* Operate quietly.
* Avoid unnecessary conflict.
* Prefer secrecy over confrontation.
* Protect economic stability within their network.

	The Black Market is structured, organized, and economically driven — not anarchic.

---

		Difference from Smuggling Missions

	Smuggling Missions :
* Involve transporting goods.
* Include detection mechanics.
* Trigger guard suspicion.
* Provide operational gameplay.
* Risk physical confrontation.

	Black Market Trading :
* Is economic gameplay.
* Focused on buying and selling.
* Limited by rank and time windows.
* Tied to market logic and taxation.
* Risk comes from reputation and exposure, not combat directly.

	Smuggling is logistics.
	Black Market is distribution.

	Both systems reinforce each other but are mechanically distinct.

---

		Balance Philosophy – Rare but Controlled Economy

	The Black Market is designed around controlled access and economic discipline.

	Key principles :
* No unlimited trading.
* Rank-based buy/sell limits.
* Time-gated trade windows.
* Gold-only currency for fluid integration with main economy.
* Transaction tax percentage to reduce inflation and prevent abuse.
* Dynamic supply and demand adjustments.
* Increased detection risk for high notoriety players.

	The goal is not to make players wealthy quickly.

	The goal is to provide :
* Strategic access to rare goods.
* Meaningful economic decisions.
* Controlled gold circulation.
* Long-term progression reward.

	The Black Market must feel powerful — but never destabilizing.

---

		Why Only Registered Smugglers Can Access

	Access is restricted for both lore and mechanical reasons.

	Lore reasons :
* Trust is earned, not given.
* Exposure risks the entire network.
* Internal vetting ensures loyalty.
* Smuggler leadership protects trade secrecy.

	Mechanical reasons :
* Prevents early-game exploitation.
* Maintains progression incentive.
* Controls economy inflation.
* Ensures integration with Suspicion, REP, and Bounty systems.
* Keeps the Black Market meaningful rather than common.

	Non-registered players cannot :
* Open the Black Market UI.
* See available goods.
* Initiate anonymous trades.
* Participate in negotiation windows.

	To the outside world, the Black Market does not exist.

---

		Final Definition

	The Black Market is :
	A rank-gated, smuggler-controlled, gold-based underground trading system that operates in secrecy across settlements and territories. It distributes rare and 
illicit goods through controlled trade limits, anonymous transactions, and dynamic pricing, while integrating with detection, suspicion, and reputation systems to 
maintain tension and balance.

It is not chaos.
It is not free wealth.
It is a disciplined shadow economy woven into the fabric of the World Game.

--------------------------------------------------------------------------------------------------------------------------------------------------------------------


			SECTION 2 – Black Market NPCs

	This section defines who operates the Black Market, how they behave, and how they interact with the world around them.

	These NPCs are not ordinary vendors.
	They are trusted operatives of the Smuggling Network, working quietly inside settlements, ports, taverns, safehouses, and hidden wilderness hubs.

	They are tied directly to `Smuggler NPC.lua` and `Smuggler NPC Names.lua` files and inherit behavior from Suspicion, REP, Bribe, and Smuggling systems.

---

	2.1 Core Principle of Black Market NPCs

	Black Market NPCs are Smuggler NPCs with expanded functionality :
* Register players into the Smuggling Network.
* Offer smuggling missions.
* Open the Black Market UI window (restricted).
* Provide escape assistance.
* Share rumors about guard or pirate activity.
* Warn players about rival factions or threats.

	Access rule : Only registered smugglers can interact with Black Market features.
To all other players, they appear as ordinary vendors, tavern owners, or neutral NPCs.
This preserves immersion and secrecy.

---

		2.2 Types of Black Market NPCs

	The network uses layered NPC types to create a living, secretive organization:

---

		2.2.1 Guildmaster & Dockworkers’ Guild Core

	"Guildmaster Burlin Tidespanner" : Leader of the smuggling network and central node for Black Market operations.

* Player initiation and Rank advancement.
* Main Black Market UI access (Guildmaster only).
* High-frequency smuggling quests.
* Rare item auctions and high-tier Black Market access.
* Global smuggling route unlocks.
* Rumors, alerts, and warnings about city-wide threats.

	Dockworkers’ Guild NPCs :
* Most are network members, but only "Guildmaster Burlin Tidespanner" opens Black Market UI.
* Other NPCs provide quests, minor vendor services, or intelligence.
* Dual-purpose: public trade authority + secret smuggling operations.

	This ensures immersion : the guild functions normally for the world while secretly running the smuggling network.

---

		2.2.2 Embedded Vendor-Type Smugglers

	These NPCs have legitimate public roles (tavern owner, dock merchant, market vendor) but secretly participate in the network.

* Provide "Illicit Section" tabs in their vendor UI (accessible only to registered smugglers).
* Can give smuggling quests, tips, and rumors.
* May offer limited Black Market item sales, depending on rank and location.

	Access is restricted :
* Illicit Tab available only to network members.
* Black Market UI option appears only on designated NPCs (Guildmaster, selected regional brokers, traveling traders).

	Behavior is cautious: if guards are nearby, trade is temporarily unavailable.

---

		2.2.3 Regional Smuggler Traders

* Located across continents, settlements, and remote ports.
* Provide local rare goods and contraband.
* Black Market access scaled by player rank.
* Offer region-specific smuggling missions.

	They may know hidden docks, wilderness escape paths, and neutral territory routes.
	Stock changes based on regional supply, player activity, and pirate interference.

---

		2.2.4 Mobile Black Market Couriers

* Travel between ports, taverns, and wilderness hubs.
* Appear randomly for limited-time sales or emergency deliveries.
* Offer consumables, rare items, or mission-related goods.
* Disappear if guards detect them or under high alert.

	This keeps the network dynamic and unpredictable.

---

		2.2.5 Hidden Tavern Dealers

* Only some tavern owners are part of the network.
* Provide small-scale trades and rumors.
* Access requires registration and high caution.

	Behavior :
* Close trade if guards are nearby.
* Warn about pirate activity or rival factions.
* Give hints for smuggling missions.

---

		2.2.6 Safehouse Traders

* Located in hidden smuggler safehouses.
* Provide high-value items, rare crafting materials, escape tools, and identity-changing consumables.
* Visible only to Rank II+ smugglers.
* Protected by hidden smuggler guards.

---

		2.3 Black Market Goods Identity

	To reinforce immersion :
* Items have a distinct "Illicit Glow" (deep violet-crimson tint, subtle smoke aura).
* Tooltips mark as "Contraband Item".
* Color appears in inventory, UI, and tooltips.
* Even if sold on the normal market, a subtle contraband mark remains.

	Item types include :
* Rare upgrade items
* Rare ores (from Mining system)
* Rare herbs and cooking/herbalism ingredients
* Rare Runes (special items for crafting/enchants)

---

		2.4 NPC Behavior Toward Players

	NPCs evaluate players based on :
* Smuggling Rank
* Criminal rating / bounty status
* Settlement REP
* Active debuffs
* Nearby guards or authority presence

	They may :
* Refuse service
* Limit stock
* Adjust prices
* Warn of danger
* Interrupt trade mid-conversation

	High-rank smugglers receive faster service and trust. New entrants are tested through dialogue and missions.

---

		2.5 NPC Behavior Toward Guards

* Close trade windows if guards approach.
* Revert dialogue to normal civilian lines.
* Hide entrances or escape paths.
* Increase suspicion for the player.

	Integration with "Bribe System" allows some NPCs to ignore guards temporarily.

---

		2.6 NPC Behavior Toward Pirates

* Pirates attack or disrupt smuggler operations (Outland Territories factions).
* NPCs may warn players, refuse trade, or move stock to safehouses.
* Pirates deal bonus damage and prioritize smuggler players.

	This adds tension without visible faction warfare.

---

		2.7 NPC Reaction to Bounty Hunters

* Refuse trade or warn players.
* High-rank smugglers may receive emergency assistance.
* Summon hidden guards or open escape portals if attacked.
* Never openly fight unless network-protected.

---

		2.8 NPC Refusal Conditions

	Black Market NPCs refuse service if :
* Player is not registered in Smuggling Network
* Player REP is extremely low
* Player is under suspicion in Capital City
* Guards are too close
* Player recently betrayed the network
* Player exceeded trade limit window
* Player carries revealing marks

	Immersive refusal dialogue ensures world realism.

	Example :

> "The docks are too loud tonight. Come back when the tide is quieter."

---

		2.9 Interaction With Normal Market

* Black Market items can be sold on normal vendors.
* Rare items usually stay in Black Market due to scarcity and reputation risk.
* "Known Contraband" label may reduce REP if traded publicly.
* Supports the internal economy and maintains balance.

---

		2.10 Summary

	Black Market NPCs are :

* Smuggler coordinators
* Secret traders
* Informants
* Escape contacts
* Economic stabilizers

	They operate embedded in normal structures, reacting dynamically to guards, pirates, REP, and smuggler rank.
	The Black Market feels alive while remaining secretive.

--------------------------------------------------------------------------------------------------------------------------------------------------------------------


			SECTION 3 – Player Access Rules

	This section defines who is allowed to use the Black Market, under what conditions, and what risks are associated with accessing it.

	The Black Market is not open to the public.
	It is not a hidden tab in a menu.
	It is a privilege granted by the Smuggling Network.

	Access is controlled, conditional, and revocable.

---

		1. Eligibility – Who Can Use the Black Market

	Only players who are officially registered members of the "Smuggling Network" may access the Black Market.

	Registration occurs after :

* Completing the initial smuggling initiation quests from "Dockworkers' Guild" at "Guildmaster Burlin Tidespanner".
* Being approved by a Smuggler NPC, located only in Capital City.
* Not being flagged as a traitor to the network.

	Non-registered players :
* Cannot open the Black Market UI.
* Cannot view item listings.
* Cannot access trade limits.
* Cannot interact with hidden broker dialogue.

	To them, Smuggler NPCs behave as ordinary NPCs.
	The system performs a hidden validation check before opening the Black Market interface.

---

		2. Rank-Based Access (Rank I – V)

	Access is gated according to Smuggling Rank.

	Rank determines :
* Whether trading is unlocked.
* Number of items allowed per trade window.
* Access to rare item categories.
* Negotiation privileges.
* Escape assistance level during trade.

	Rank I – Initiate
* No selling privileges.
* Limited purchasing privileges (basic contraband).
* Restricted item pool.
* Low-volume trade window.
* Cannot access Capital City master brokers.

Purpose : New smugglers observe and participate cautiously.

---

	Rank II – Trusted Smuggler
* Buying and selling unlocked.
* Access to regional Black Market traders.
* Moderate trade limits.
* Limited negotiation discount ability.
* Eligible for courier events.

	This is where the Black Market becomes fully functional.

---

	Rank III – Master Smuggler
* Expanded item categories.
* Increased buy/sell limits.
* Access to Capital City brokers.
* Access to rare contraband goods.
* Faster transaction processing.
* Reduced suspicion buildup while browsing.

	Guards may begin recognizing this player more easily.

---

	Rank IV – Elite Smuggler
* Access to high-value rare goods.
* Increased negotiation leverage.
* Priority interaction during pirate alerts.
* Access to safehouse-exclusive inventory.

	Detection risk increases due to notoriety.

---

	Rank V – Legendary Smuggler
* Full Black Market access.
* Maximum trade limits.
* Unique item pool.
* Broker-level missions.
* Emergency extraction during raids.

	However : 
High-rank smugglers are widely known within authority circles.
Guard detection probability increases significantly in major cities.
Power comes with risk.

---

	3. Hidden Rank Visibility

	Smuggling Rank :
* Is not shown in public UI.
* Is not displayed in global rankings.
* Is not visible to other players directly.
* Is not published on website leaderboards.

	Only :
* Smuggler NPCs
* Certain guards (at high ranks)
* Specific pirate factions

	* can recognize the player through system checks.

	Other players do not see smuggler rank unless through rumor or indirect behavior.
	This preserves secrecy and roleplay integrity.

---

	4. Recognition by Guards at High Ranks

	At higher ranks (III–V), authorities may begin recognizing players.

	Effects include :
* Increased suspicion gain near guards.
* Guards staring or following the player briefly.
* Random inspection attempts.
* Faster detection of contraband.
* Higher REP penalties if caught trading publicly.

	This integrates directly with Suspicion System and REP mechanics.
	In Capital City, because of universal alert logic, recognition is even more sensitive.
	High rank means prestige — but also danger.

---

	5. Losing Access to the Black Market

	Access can be revoked if :
* Player is expelled from Smuggling Network.
* Player betrays smugglers during sting events.
* Player repeatedly fails high-value missions.
* Player cooperates with guards or bounty hunters.
* Player reputation within network drops below threshold.

	Consequences :
* Immediate Black Market UI lock.
* Smuggler NPC dialogue becomes neutral or hostile.
* Escape assistance disabled.
* Safehouse entry revoked.

	Re-entry requires special redemption quest.

---

	6. Black Market UI Access Window

	Access is only possible through Smuggler NPC interaction.

	When conditions are valid :
* Dialogue option appears: "I’m here for the quiet trade."
* Black Market UI opens.

	UI cannot be opened remotely.

	UI closes automatically if :
* Guard enters detection radius.
* Pirate alert triggers nearby.
* Player enters combat.
* Player moves too far from NPC.
* Suspicion threshold crosses limit.

	This prevents abuse and keeps immersion intact.

---

	7. Trade Window Cooldowns

	To prevent abuse and maintain economic balance:
* Each player has a trade window cycle.

	Instead of a strict 12-hour universal reset, the system uses :
* Rolling Trade Window Model

	Example structure (tunable) :
* Trade limits reset every 18 real-world hours.
* Limits refresh individually per player.
* Cooldown begins after first trade in cycle.
* High ranks may receive small reduction in cooldown duration.

	This prevents synchronized exploitation while allowing meaningful engagement.

	Cooldown visibility :
* Displayed in UI as "Next Trade Cycle In: Xh Xm".
* Hidden from non-smugglers.

	The timer continues offline.

---

	8. Detection Risk While Browsing

	Browsing the Black Market is not risk-free.

	While the UI is open :	
* Suspicion gain is slightly increased.
* Guard patrol proximity increases risk.
* Pirate NPCs may prioritize the player.
* Rival faction NPCs may trigger rumor alerts.

	At high suspicion :
* UI flickers warning.
* NPC closes trade abruptly.
* Player receives minor suspicion spike.
* Potential guard inspection event.

	The longer the player stays browsing in high-security zones, the higher the passive suspicion gain.

	This encourages :
* Quick transactions.
* Strategic location choice.
* Safehouse usage for safer trade.

---

	9. Interaction With Normal Market

	Items obtained through Black Market :
* Can be resold on normal market.
* Retain rare/contraband tag.
* May lower REP if sold publicly in high-security zones.
* Do not lose their special illicit color mark.

	Players are free to arbitrage — but public sale carries social risk.

	The system does not forbid it.
	It makes it meaningful.

---

	10. Summary

	Black Market access is :
* Restricted to Smuggling Network members.
* Rank-gated and progression-based.
* Hidden from public systems.
* Risk-sensitive in high-security areas.
* Revocable if trust is broken.
* Controlled by rolling trade window cooldowns.

It rewards dedication.
It punishes recklessness.
It preserves secrecy.

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

			
			SECTION 4 – Trading Mechanics 

	This section defines how players access the Black Market and how Smuggler NPCs provide services.
	The Black Market is player-driven, accessed through Smuggler NPCs using two different interfaces, depending on NPC type.

---

		4.1 Smuggler NPC Interaction Menu

	When a player "Right-Clicks" a Smuggler NPC, a menu appears :

	Example Interaction Menu
• Talk
• Quests
• Training (if trainer)
• "Shop" (if vendor-type NPC)
• "Black Market"
• Leave

	Not every Smuggler NPC is a vendor — but every Smuggler NPC can open the Black Market UI if they belong to the network.

---

		4.2 Two Types of Black Market Access

	Type A – Vendor Smuggler NPC

	Examples :
• Tavern owners
• Dock merchants
• Fence traders
• Traveling smugglers

	These NPCs have a normal vendor window.

	Vendor Window Tabs : 
• Supplies
• Tools
• Contracts
• "Illicit Section" (Smuggler-only tab)

	This tab appears ONLY for players registered in the Smuggling Network.

	Inside this tab :
* Rare illicit goods sold by NPC
* Rotating rare materials
* Quest reward items
* Special smuggler-only items

	Non-smugglers never see this tab.
	This makes tavern vendors secretly part of the network — exactly as you wanted.

---

	Type B – Non-Vendor Smuggler NPC

	Examples :
• Informants
• Couriers
• Safehouse guards
• Network brokers
• Quest givers

	These NPCs do NOT have a Shop.

	But they still have the option :

* "Black Market"

Clicking this opens the "Black Market UI Window".

	So :
Vendor NPC → Shop + Illicit Tab + Black Market UI
Non-Vendor NPC → Black Market UI only

	Very immersive.

---

		4.3 Black Market UI Window

	This UI is separate from vendor UI.

	Opened only through :
* Right-click NPC → Black Market

	This UI contains player-driven trade listings.

	Sections inside :
• Buy Listings
• Sell Item
• Negotiation
• Search & Filters
• Transaction History
• Anonymous PM
• Risk Meter

	NPCs do NOT sell items here.
	This is player-supplied economy only.

---

		4.4 Difference Between Illicit Tab vs Black Market UI

	This is important.

Illicit Tab

	NPC-supplied goods.

	Examples :
• Smuggling quest rewards
• Rotating rare ores/herbs
• Special rune catalysts
• Network-only items

	Think of it as network stock.

---

	Black Market UI

Player-to-player trading only.

	Items come from :
• Smuggling rewards
• Illicit Tab purchases
• Player-owned rare materials

	Every smuggler sees listings.
	No NPC items here.

---

		4.5 NPC Types That Can Host Black Market

	Based on the World Game :
• Dockworkers’ Guild members
• Some Tavern owners in Capital City and around the World Game
• Secret brokers around the World Game
• Safehouse traders
• Traveling couriers
• Hidden forest traders in Outland Territories

	This fits the lore with pirates and rival factions.

---

		4.6 NPC Behavior While Hosting Market

	If Guards nearby :
• NPC closes Black Market option temporarily
• Vendor window remains normal
• Player gets whisper like:
"Not now… eyes everywhere."

	If Pirates nearby :
• NPC warns player
• Risk meter increases
• Possible ambush event

	If Bounty Hunters nearby :
• Black Market option hidden
• Player flagged for suspicion increase

	This ties to your REP and detection systems.

---

		4.7 Item Category Reminder

	Allowed items :
• Rare upgrade materials
• Rare ores (Mining system)
• Rare herbs & cooking ingredients
• Rare Runes

	No mounts/pets/gear.
	Items can be sold on normal market too, but Black Market is preferred due to supply concentration.
	Illegal items use your "Deep Crimson-Violet" color inside Illicit Section.

-------------------------------------------------------------------------------------------------------------------------------------------------------------------


			SECTION 5 – Economy & Pricing System

	This section defines how the Black Market economy operates, how prices are calculated, and what restrictions exist to prevent abuse.
	The goal is a rare, secretive, but meaningful market where smuggler players earn rewards without destabilizing the main world economy.

---

		5.1 Gold-Only Economy

* All transactions in the Black Market are in gold.
* This isolates the Black Market economy from the main world market and simplifies inflation control.

	Purpose : Keeps economy fluid but controlled, ensuring players cannot amass wealth too quickly through illicit trade.

---

		5.2 Black Market Tax / Transaction Fee

* Every sale incurs a tax/commission taken by the network (percentage of sale price).
* Default: ~2–10% of the transaction.
* The tax rate can scale with item rarity, smuggler rank, or location risk.

	Purpose :
* Reduces abusive farming of rare items.
* Provides an anti-inflation sink.
* Reinforces the sense that the Black Market takes its cut.

---

		5.3 Dynamic Pricing Based on Demand

* Item prices fluctuate based on:
	* How many players have bought similar items recently
	* Supply available in the network
	* Smuggler faction Rank (higher rank may unlock discounted access)
	* Local settlement threat level (pirates, guards, rival factions)
* Rare items always maintain higher base prices due to scarcity.

	Effect : Rewards players for exploration, rank progression, and risk-taking.

---

		5.4 Faction Hostility & Risk Premiums

* Selling or buying in dangerous settlements increases the price.
* If a faction opposes the Black Market (Dockworkers’ Guild rivals: Sailor’s Tavern, Navigator’s Lodge, Outland Pirates), prices include a **risk premium**.

	Example :
* Buying a rare herb in a pirate-patrolled port costs 15–20% more than in a neutral area.
* Smuggler rank discounts can offset this risk.

---

		5.5 Smuggling Rank Discounts

* Higher ranks (I–V) receive progressively better price modifiers:

| Rank | Buy Discount | Sell Bonus |
| ---- | ------------ | ---------- |
| I    | 0%           | 0%         |
| II   | 5%           | 5%         |
| III  | 10%          | 10%        |
| IV   | 15%          | 15%        |
| V    | 20%          | 20%        |

	Purpose : Encourages players to progress in the Smuggling Network. Higher rank = safer, more profitable trade.

---

		5.6 Anti-Farming & Market Saturation Rules

* Each player is limited to buy/sell windows per time period (12–24 hours for most goods; rare items may refresh every 24 hours).
* Black Market keeps rolling stock for high-tier items, preventing monopolization.
* Transaction history logs track monthly trades; old entries beyond a month are purged (except last 5 for reference).

	Effect :
* Prevents players from exploiting a small number of items to become extremely wealthy.
* Keeps item rotation meaningful and rare items scarce.

---

		5.7 Inflation Control Logic

* Black Market tax and anti-farming windows act as inflation dampeners.
* Rare items sold to normal vendors retain contraband status, slightly reducing REP or limiting resale price.
* Market reacts dynamically to pirate activity, guard patrols, and smuggler network expansion.

	Example :
* A rare Rune sold on the Black Market has higher value than its base market price.
* Selling it publicly may lower REP and reduce future market gains for that player.

-------------------------------------------------------------------------------------------------------------------------------------------------------------------


			SECTION 6 – Integration With Smuggling System

	This section defines how the "Black Market" system integrates with the Smuggling gameplay mechanics.

	The Black Market is not a standalone feature.
	It is a core component of the Smuggling Network, tightly connected to smuggler ranks, missions, NPC contacts, and illegal trade routes.

	Players interact with the Black Market as members of the Smuggling Network, progressing through ranks to unlock deeper access and more valuable opportunities.

---

		6.1 Unlock Requirement

	Access to the Black Market is tied to Smuggling Rank progression.

| Smuggling Rank | Access Level                              |
| -------------- | ----------------------------------------- |
| Rank I         | Network Initiate (No Black Market access) |
| Rank II        | Basic Black Market Access                 |
| Rank III       | Expanded Item Pool                        |
| Rank IV        | High-Tier Contraband                      |
| Rank V         | Elite Smuggler Privileges                 |

	Unlock condition :
* Players gain Black Market access once they reach "Smuggling Rank II".

	At this point:
* The "Black Market" interaction option appears when speaking with authorized Smuggler NPCs.
* The "Illicit Vendor Tab" becomes available on participating vendor NPCs.
* Players can buy and sell contraband goods through the Black Market UI.

	Rank I players must first prove loyalty through smuggling missions before gaining access.

---

		6.2 Smuggling Quest Rewards

	Many smuggling missions reward items that can only be traded through the Black Market.

	Examples include :
* Rare contraband materials
* Smuggling cargo crates
* Hidden relics
* Pirate loot
* Rare ores or herbs obtained through illegal routes
* Smuggler crafting components
* Rare Runes used in special crafting

	These items often :
* Cannot be sold to normal vendors at full value
* Receive premium pricing on the Black Market
* May be required for higher-rank smuggling missions

	This ensures the Black Market acts as the primary outlet for illegal goods.

---

		6.3 Smuggler NPC Interaction

	Black Market functionality is accessed through "Smuggler Network NPCs".

	These NPCs provide :
* Black Market UI access
* Smuggling missions
* Illicit vendor trade tabs
* Smuggler rank progression
* Rumors about guard patrols
* Information about pirate activity
* Safe routes and hidden docks

	NPCs evaluate players based on :
* Smuggling Rank
* Criminal reputation
* Settlement REP
* Nearby guards or authorities

	Higher-rank smugglers receive :
* Faster service
* Better prices
* Access to rare inventory
* Emergency assistance during pursuit

---

		6.4 Escape Assistance & Smuggler Contacts

	The Black Market network also functions as a support system for smuggler players.

	Some Smuggler NPCs can provide emergency assistance such as :
* Hidden escape routes
* Safehouse access
* Temporary disguise consumables
* Guard distraction services
* Emergency transport between smuggling hubs

	These services are not always available and depend on :
* Player smuggling rank
* Guard presence
* Active bounty status
* NPC trust level

	This reinforces the feeling that the Black Market is a living underground network, not just a shop.

---

		6.5 Rare Items Used in Smuggling Missions

	Some Black Market items exist specifically to support smuggling gameplay.

	Examples include :
* False cargo manifests
* Bribe tokens
* Signal flares for smuggler ships
* Hidden compartment kits
* Guard distraction devices
* Rare cargo containers used in delivery missions

	These items may be required to :
* Complete specific smuggling missions
* Avoid detection by guards
* Improve smuggling success rates
* Unlock higher-tier contracts

	This keeps the Black Market deeply tied to the core smuggling gameplay loop.

---

		6.6 Rank Loss & Market Access Reduction

	If a player loses Smuggling Rank, their Black Market access is automatically reduced.

	Possible causes of rank loss include :
* Betraying the Smuggling Network
* Failing critical smuggling missions
* Exposing smuggler NPCs to guards
* Repeated reputation loss with the network

	Effects of rank reduction :
* Restricted access to high-tier items
* Loss of discount bonuses
* Loss of certain NPC services
* Removal of elite contraband inventory

	In extreme cases, players may be expelled from the Smuggling Network, removing all Black Market access.

---

		6.7 Smuggler-Only Items

	Some items sold through the Black Market are usable only by registered smugglers.

	These include :
* Smuggler escape consumables
* Illegal crafting components
* Network identification tools
* Special cargo containers
* Smuggler-exclusive equipment

	If a player leaves or is expelled from the network :
* These items become inactive or restricted
* Some may be automatically confiscated by the system
* Others remain but lose their special functionality

	This ensures the Smuggling Network retains control over its specialized tools.

-------------------------------------------------------------------------------------------------------------------------------------------------------------------


			SECTION 7 – Rival Factions & Hostility

	This section defines how external factions react to the Smuggling Network and Black Market operations.

	Smugglers do not operate in isolation. Their activities draw attention from pirates, rival dock factions, settlement authorities, and bounty hunters. These 
factions create constant pressure on smuggling routes and Black Market contacts.
	The goal of this system is to create dynamic risk and tension, making smuggling profitable but dangerous.

---

		7.1 Pirates of the Outland Territories

	Pirates operating in the "Outland Territories" view smugglers as competitors and valuable targets.

	Pirate AI behavior toward smugglers includes :
* Target priority : Smuggler players are targeted first during encounters.
* Bonus damage : Pirates deal increased damage against players flagged as smugglers.
* Trade disruption : Pirates may interrupt smuggling missions or Black Market exchanges.

	Pirates aim to :
* Steal contraband goods
* Disrupt smuggling routes
* Capture cargo shipments
* Ambush smugglers traveling through wilderness or coastal routes

	Some pirates may also attempt to intercept smuggling deliveries, forcing players to fight or escape.
	This system ensures that illegal trade routes remain dangerous.

---

		7.2 Dockworkers’ Guild Rival Factions

	Although the "Dockworkers’ Guild" secretly controls the Smuggling Network, other dock factions compete for power and influence.

	Major rival factions include:

* "Sailor’s Tavern"
* "Navigator’s Lodge"

	These factions may :
* Spread rumors about smuggler activity
* Increase guard suspicion in nearby districts
* Interfere with smuggling routes
* Attempt to expose smuggler NPCs

	Their hostility is subtle rather than open warfare. Rival factions prefer to **manipulate authorities and weaken the network indirectly**.

	Players may notice :
* Increased guard patrols
* Higher suspicion levels in certain areas
* Smuggler NPCs refusing interaction temporarily

	This reflects the political tension between dock factions.

---

		7.3 Guard Suspicion Near Black Market NPCs

	Settlement guards actively monitor locations known for illegal trade.
	
	When players interact with Black Market NPCs :
* Nearby guards gain increased suspicion awareness
* Trade windows may close if guards approach
* NPCs may temporarily refuse service

	Factors increasing suspicion include :
* High criminal reputation
* Recent illegal transactions
* Carrying contraband items
* Frequent visits to smuggler contacts

	In heavily monitored locations such as "Capital City", the suspicion increase is significantly higher.
	This ensures that trading in populated areas carries greater risk.

---

		7.4 Rumor Spreading System

	Tavern keepers, travelers, and dock workers spread rumors about smuggler activity.

	Rumors may include :
* Guard patrol increases
* Pirate activity along trade routes
* Rival faction interference
* Upcoming raids or inspections

	Players can gather information by interacting with tavern NPCs.
	Rumors serve as a warning system, allowing smugglers to prepare for danger before attempting risky trades or missions.
	This system reinforces the role of taverns as information hubs.

---

		7.5 NPC Hostility Escalation

	If smuggling activity becomes too visible, hostility toward the network increases.

	Escalation stages may include :

	Stage 1 – Suspicion
* Guards patrol more frequently
* Some NPCs refuse illegal trade

	Stage 2 – Investigation
* Guard presence increases near smuggler hubs
* Some smuggler NPCs temporarily close services

	Stage 3 – Crackdown
* Guard raids may occur
* Black Market access may temporarily shut down in affected settlements

	Escalation may occur due to: 
* Excessive illegal trade activity
* Failed smuggling missions
* Player actions exposing the network
* Rival faction interference

	This system ensures that smuggling activity must remain discreet.

---

		7.6 Random Interception Events

	Smuggler players traveling between settlements may trigger interception events.
	These events simulate authorities attempting to stop illegal trade.

	Possible events include :
* Guard patrol inspections
* Customs checkpoints
* Rival faction spies
* Smuggling cargo searches

	Players must choose how to respond :
* Bribe officials
* Flee the area
* Hide contraband
* Fight their way out

	Interception events add unpredictability to smuggling travel.

---

		7.7 Pirate Ambush Events

	Pirates sometimes launch organized ambushes targeting smuggler activity.

	These ambushes may occur :
* Along coastal trade routes
* Near wilderness smuggling paths
* During smuggling missions
* Near pirate-controlled territories

	Ambush characteristics :
* Multiple pirate enemies
* Increased aggression toward smuggler players
* Attempted cargo theft mechanics

	Successful escapes or victories may reward players with :
* Pirate loot
* Rare contraband
* Reputation with the Smuggling Network

---

		7.8 Guard Raid Events

	Authorities occasionally attempt to raid suspected smuggler locations.

	Raid targets may include :
* Taverns suspected of smuggling activity
* Dock warehouses
* Smuggler safehouses
* Known Black Market NPC areas

	Raid effects include :
* Temporary closure of Black Market access
* Smuggler NPCs disappearing temporarily
* Increased guard patrols in the area

	High-ranking smugglers may receive warnings from NPC contacts before raids occur.

-------------------------------------------------------------------------------------------------------------------------------------------------------------------


			SECTION 8 – Black Market UI Design

	This section defines the full user interface of the Black Market system.

	The Black Market UI is designed to feel secretive, functional, and slightly dangerous, reinforcing the atmosphere of illegal trade. The interface allows 
smugglers to buy, sell, negotiate, and communicate while maintaining anonymity.
	The UI can only be opened by interacting with authorized Smuggler NPCs and selecting the "Black Market" option.
	Players must be Smuggling Rank II or higher to access the interface.

---

		8.1 UI Access & Opening

	Players open the Black Market UI by interacting with an authorized Smuggler NPC.

	NPC interaction menu example :

```
• Shop
• Quests
• Black Market
• Leave
```

	Selecting "Black Market" opens the dedicated UI window.

	The UI cannot be opened while :
* Guards are too close
* The player is under heavy suspicion
* The player is expelled from the Smuggling Network

	If access is denied, a message appears:

> "The network is silent tonight. Come back when the waters calm."

---

		8.2 Main Window Layout

	The Black Market window is divided into four main areas :

	Top Bar
Displays :
* Smuggling Rank
* Current suspicion level
* Black Market reputation status
* Trade window timer

	Left Panel
Item categories and filters.

	Center Panel
Item listing area where available goods appear.

	Right Panel
Item details, negotiation options, and transaction controls.

	Bottom Panel
Messaging system and transaction notifications.

---

		8.3 Buy / Sell Tabs

	The main interface contains two core tabs.

	Buy Tab

Shows items currently available on the Black Market.

Information displayed per item :
* Item icon
* Item name
* Rarity indicator
* Contraband marker
* Seller alias (anonymous)
* Price
* Quantity available

	Example seller names :
* "Smuggler Trader"
* "Dockside Broker"
* "Unknown Dealer"

	Player identities are never shown.

---

	Sell Tab

Allows players to list items on the Black Market.

Selling requires :
* Item selection
* Price setting
* Quantity selection

	The interface shows :
* Recommended price range
* Market demand indicator
* Estimated tax deduction

	Once listed, the item appears anonymously in the market.

---

		8.4 Search Filters

	To prevent clutter, the UI includes advanced filtering.

	Players can filter items by :
* Item category
* Item rarity
* Price range
* Smuggler rank requirement
* Item type (materials, runes, consumables)

	Categories may include :
* Rare Ores
* Rare Herbs
* Crafting Materials
* Runes
* Smuggling Tools
* Contraband Cargo

	This allows fast navigation through large item pools.

---

		8.5 Negotiation Window

	Some trades allow price negotiation between buyer and seller.

	When negotiation is available :
* Buyer sends offer
* Seller receives anonymous notification
* Seller can accept, reject, or counter-offer

	Negotiation window displays :
* Current price
* Offered price
* Timer for response

	Example message :

> "Smuggler Trader is considering your offer..."

	Negotiations expire after a short time window to prevent market delays.

---

		8.6 Transaction History

	Players can view recent trades through the Transaction History panel.

	Information shown :
* Item traded
* Quantity
* Final price
* Date of transaction
* Buyer/seller anonymous alias

	History retention :
* Last 30 days of trades
* Maximum of 5 recent transactions visible at once
* Older entries automatically archived

	This helps players track their smuggling income.

---

		8.7 Risk Tooltip System

	Certain items display a "Risk Tooltip" warning players about potential consequences.

	Example tooltip elements :
* Contraband warning
* Risk of guard suspicion
* Illegal trade indicator
* Reputation effects if sold publicly

Example message :

> "This item is known contraband. Trading it in lawful markets may reduce reputation."

	This reinforces the danger of illegal goods.

---

		8.8 Hidden Player Identity System

	All players are anonymous on the Black Market.
	Real character names are never displayed.

	Instead, the system assigns temporary aliases such as :

* Smuggler Trader
* Hidden Broker
* Dockside Dealer
* Unknown Seller

	Aliases reset periodically to maintain anonymity.
	This prevents retaliation or targeted harassment between players.

---

		8.9 Anonymous Messaging System

	Players can privately message trade partners through the Black Market UI.

	Messaging rules :

* Sender identity hidden
* Receiver identity hidden
* Messages routed through the network

	Example message format :

```
Smuggler Buyer :
"I'll take the cargo if the price drops to 450 gold."
```

	Messages can only be sent during active trades or negotiations.
	This prevents spam and preserves anonymity.

---

		8.10 Suspicion Warning Overlay

If the player’s suspicion level rises, the UI displays warning overlays.

	Warning stages :

	Low Suspicion

Yellow indicator appears.

> "You feel like someone is watching."

	Medium Suspicion

Orange warning overlay.

> "Guard patrols are getting closer."

	High Suspicion

Red flashing indicator.

> "Trading here may expose you."

	At critical levels, the UI may automatically close.

---

		8.11 Rank Limit Indicator

	Some items require higher smuggling ranks.
	When a player attempts to interact with restricted items, the UI displays a lock icon.

	Example tooltip :

> "Requires Smuggling Rank IV."

	This encourages progression through the smuggling system.

---

		8.12 Trade Window Timer

	The UI includes a timer showing when new trade opportunities become available.

	Timers may indicate :
* Next item stock refresh
* Personal trade cooldown
* Negotiation expiration
* Market rotation

	Example display :

```
Next Market Rotation: 02h 17m
```

	This ensures players know when to return for new opportunities.

---

		8.13 UI Atmosphere & Visual Identity

	The Black Market interface should visually feel different from normal vendor UI.

	Recommended aesthetic elements :
* Dark themed interface
* Contraband item glow (violet/crimson)
* Subtle smoke or shadow effects
* Flickering lantern lighting motif

	These elements reinforce the illegal underground atmosphere.

---

		8.14 UI Summary

	The Black Market UI provides players with tools to :
* Buy illegal goods
* Sell contraband items
* Negotiate anonymous deals
* Communicate secretly
* Monitor suspicion levels
* Track trade history

	The design ensures the system is :
* Functional
* Immersive
* Risk-aware
* Integrated with the Smuggling Network

	The interface reinforces the feeling that players are participating in a hidden economy operating beneath the surface of the world.

-------------------------------------------------------------------------------------------------------------------------------------------------------------------


			SECTION 9 – Detection & Risk Mechanics

	This section defines the risk and detection mechanics associated with using the Black Market and interacting with Smuggler NPCs.

	Illegal trade is never completely safe. Guards, rival factions, and pirates actively monitor suspicious activity. Players who engage with the smuggling network
risk detection, confiscation, reputation penalties, or criminal status.

	The purpose of this system is to ensure that the Black Market remains high-reward but high-risk gameplay.

	This system integrates directly with :
* Suspicion System
* Settlement REP System
* Guard AI Behavior
* Bounty System
* Criminal Debuff System

---

		9.1 Guard Detection Logic While Trading

	While the Black Market UI is open, the player is considered to be engaged in suspicious activity.
	Guards within detection range may begin an investigation check.

	Detection probability increases based on :
* Distance between guards and the player
* Player suspicion level
* Settlement security level
* Player criminal reputation
* Frequency of Black Market interactions

	Possible outcomes of detection checks :
* Guard ignores the player
* Guard becomes suspicious and approaches
* Guard attempts to inspect the player
* Guard immediately identifies illegal trade

	If illegal trade is confirmed, enforcement actions begin.

---

		9.2 Suspicion Aura Effects

	When a player interacts with a smuggler NPC or opens the Black Market UI, a temporary "Suspicion Aura" is applied.
	This aura represents the player behaving in a way that attracts attention.

	Effects of the aura :
* Guards notice the player more easily
* Patrol routes may redirect toward the player
* Nearby civilians may react nervously
* Guard inspection chance increases

	The aura gradually fades after the player leaves the area.
	Repeated smuggling activity can stack suspicion effects.

---

		9.3 Being Seen Near Smuggler NPCs

	Certain NPCs are quietly monitored by authorities.

	If a player is repeatedly seen interacting with these NPCs :
* Suspicion increases
* Guards may begin surveillance
* Future detection checks become easier

	High-frequency visits to known smuggling contacts may trigger :
* Guard investigations
* Temporary closure of smuggler services
* Increased patrol activity in the area

	This prevents players from abusing a single Black Market location.

---

		9.4 Pirate Reporting Behavior

	Pirates may sometimes report smuggler activity to rival factions or authorities.

	This behavior occurs when :
* Pirates defeat a smuggler player
* Pirates intercept smuggling cargo
* Pirates observe smuggling routes repeatedly used

	Reporting consequences may include :
* Increased guard patrols
* Smuggler NPC temporary disappearance
* Pirate ambush events triggered more frequently
* Smuggler reputation penalties

	This mechanic reinforces the rivalry between pirates and smugglers.

---

		9.5 Confiscation Rules

	If a player is caught trading illegal goods, authorities may confiscate contraband.

	Confiscation rules :
* Only contraband items are confiscated
* Legal goods remain untouched
* Partial confiscation may occur depending on guard strength

	Confiscated items are permanently removed from the player inventory.
	In some cases, authorities may seize smuggling mission cargo, causing mission failure.

---

		9.6 Settlement Reputation Loss

	Being caught performing illegal trade damages the player’s "Settlement REP".

	Possible penalties 
* Minor REP loss for suspicious activity
* Moderate REP loss for confirmed contraband trade
* Major REP loss for repeated offenses

	Low settlement reputation may cause :
* Higher vendor prices
* Limited access to services
* Increased guard hostility

	This ties the smuggling system into the broader reputation mechanics of the world.

---

		9.7 Bounty Placement Hooks

	Serious smuggling violations may place a bounty on the player.

	Bounties can be triggered by :
* Multiple illegal trade detections
* Confiscation of large contraband shipments
* Failed smuggling missions
* Assaulting guards during inspection

	Once a bounty is issued :
* Bounty hunters may track the player
* Guard aggression increases
* Some settlements deny entry

	This integrates the smuggling system with the bounty and law enforcement systems.

---

		9.8 Partial Success Outcomes

	Not all detection events result in full punishment.
	Sometimes players may experience partial success outcomes.

	Examples :
* Guards interrupt trade but fail to identify the goods
* Player escapes before inspection
* Contraband hidden successfully

	In these cases :
* Suspicion increases
* Trade may fail
* Player keeps items but risks future detection

	This adds unpredictability to illegal trade.

---

		9.9 Fake Item Confiscation

	Some smugglers use decoy contraband.

	If guards confiscate fake items :
* Authorities believe they seized real goods
* Player avoids heavier penalties
* Suspicion still increases slightly

	These decoys may be purchasable through the Black Market and are used strategically by experienced smugglers.

---

		9.10 Forced Teleport Exile

	In extreme cases, players may be forcibly removed from the settlement.

	This occurs when :
* Player is caught with high suspicion
* Player repeatedly violates smuggling laws
* Player refuses guard inspection

	Effects :
* Player teleported outside settlement gates
* Temporary entry restrictions may apply
* Guards remain hostile for a short duration

	This prevents players from repeatedly exploiting city-based smuggling.

---

		9.11 Criminal Debuffs

	Players caught engaging in illegal activity may receive temporary "Criminal Debuffs".

	Possible debuffs include :

	"Marked by the Watch"
* Guards identify player faster
* Suspicion increases more rapidly

	"Contraband Carrier"
* Player movement speed slightly reduced
* Guard detection radius increased

	"Wanted Smuggler"
* Bounty hunters may appear more frequently
* Some NPC services unavailable

	Debuffs expire after time or after paying fines.

-------------------------------------------------------------------------------------------------------------------------------------------------------------------

			
			SECTION 10 – Integration Hooks

	This section defines the integration points between the Black Market system and other core gameplay systems.

	The Black Market is not an isolated feature. It interacts with multiple systems across the world including :
* Smuggling mechanics
* NPC behavior
* Reputation systems
* Criminal status systems
* Rumor and information networks

	These hooks allow the Black Market to function as part of the larger game ecosystem, ensuring consistent behavior across NPCs,factions, and player progression.

---

		10.1 Bounty Hunter System Hook

	The Black Market interacts directly with the "Bounty Hunter System" when players are detected engaging in illegal activity.

	Trigger conditions include :
* Player caught trading contraband
* Large illegal transactions
* Repeated smuggling violations
* Failed smuggling missions

	Effects :
* Player receives "Bounty Flag"
* Bounty hunters may track the player across regions
* Black Market NPCs may temporarily refuse service
* Smuggler NPCs may offer escape assistance depending on rank

	Higher smuggler ranks may unlock :
* Reduced bounty detection
* Smuggler safehouse refuge
* Temporary bounty concealment services

	This ensures smuggling carries meaningful risk.

---

		10.2 Smuggling Network System Hook

	The Black Market is directly tied to the "Smuggling Network System".

	Integration points include :
* Smuggling Rank progression unlocking market access
* Smuggling missions providing Black Market items
* Smuggler NPCs acting as market contacts
* Rank loss reducing market privileges

	Smuggling Rank determines : 
* Market access level
* Item availability
* Trade discounts
* Escape support services

	Players expelled from the Smuggling Network automatically lose access to the "Black Market".

---

		10.3 Bribe System Hook

	The "Bribe System" allows players to avoid or reduce penalties when suspicious activity is detected.

	Bribe opportunities may appear when :
* Guards begin inspection
* Contraband is discovered
* Smuggler NPC interaction is observed

	Possible outcomes :
* Guard accepts bribe and ignores activity
* Guard increases suspicion if bribe fails
* Guard confiscates items regardless

	Bribes scale with :
* Settlement wealth
* Guard rank
* Player criminal history

	This creates additional decision-making during illegal trading.

---

		10.4 REP System Hook (Settlement Reputation)

	Illegal trading directly affects "Settlement Reputation (REP)".

	REP penalties may occur when :
* Player caught trading contraband
* Guard inspections reveal illegal goods
* Smuggling operations fail publicly

	Consequences of low REP include :
* Increased vendor prices
* Restricted NPC services
* Increased guard hostility
* Reduced access to settlement facilities

	High REP settlements are more difficult environments for smugglers due to stronger law enforcement.

---

		10.5 Corruption & Loyalty System Hook

	The "Corruption & Loyalty System" tracks a player’s long-term relationship with the Smuggling Network.

	Actions that increase loyalty :
* Completing smuggling missions
* Protecting smuggler NPCs
* Delivering contraband successfully

	Actions that increase corruption or distrust :
* Betraying smuggler contacts
* Reporting smuggling activity
* Failing missions repeatedly

	Effects include :
* Unlocking elite Black Market services
* Access to rare contraband
* Temporary market bans for disloyal players

	This system reinforces trust within the network.

---

		10.6 NPC Suspicion System Hook

	The Black Market integrates with the "NPC Suspicion System".

	When players interact with smuggler NPCs :
* Suspicion values increase
* Guards may investigate nearby activity
* Civilian NPCs may react nervously

	High suspicion levels can cause :
* Guard inspections
* Temporary closure of Black Market access
* Increased patrol density

	This system ensures illegal trade remains risky.

---

		10.7 Trainer NPC Reactions

	Trainer NPCs may react differently to players known to engage in smuggling.

	Possible reactions include :
* Refusing training to known criminals
* Increasing training costs
* Delivering warnings about illegal activity

	Some trainers may secretly support smugglers and provide neutral or positive interactions.

	Trainer reactions depend on :
* Settlement alignment
* Player REP
* Criminal status

	This adds immersion by allowing the world to react to player behavior.

---

		10.8 Tavern Rumor System Hook

	Taverns serve as information hubs for smuggling activity.

	Tavern NPCs may spread rumors related to :
* Guard patrol increases
* Pirate ambush activity
* Black Market crackdowns
* Rival faction interference

	Players may gather useful intelligence by speaking with tavern keepers.

	Rumors help players prepare for :
* Safe smuggling routes
* Dangerous settlements
* Upcoming raids

	This connects the Black Market with the information economy of the world.

-------------------------------------------------------------------------------------------------------------------------------------------------------------------

			
			SECTION 11 – Memory & Persistence

	This section defines how the Black Market and Smuggling systems store, track, and gradually forget player activity.

	Illegal trade must leave traces in the world, but the system must also avoid excessive data accumulation. Therefore, the Black Market uses controlled memory 
persistence combined with timed decay mechanics.

	These rules ensure the system remains immersive, reactive, and technically efficient.

---

		11.1 NPC Memory of Smuggler Players

	Smuggler NPCs maintain short-term memory records of players who interact with them.

	Stored information includes :
* Player smuggling rank
* Recent trade activity
* Suspicion level during interaction
* Last known smuggling mission status

	NPC memory duration :
* Short-term memory : 24–48 hours of real-time gameplay
* Long-term loyalty markers : stored permanently through the Smuggling Network system

	NPC memory affects :
* Trust during negotiations
* Access to rare contraband items
* Availability of special smuggling missions

	NPCs may react differently to players who frequently conduct illegal trades.

---

		11.2 City Authority Memory

	Settlement authorities maintain records of suspicious individuals.

	Authority memory tracks :
* Confirmed illegal trade incidents
* Guard inspections involving the player
* Confiscated contraband
* Known smuggler contacts

	Memory duration varies by severity :

| Event Type              | Authority Memory Duration |
| ----------------------- | ------------------------- |
| Minor Suspicion         | 12–24 hours               |
| Contraband Confiscation | 2–3 days                  |
| Criminal Offense        | 5–7 days                  |
| Bounty Status           | Until resolved            |

	Authority memory affects :
* Guard hostility levels
* Inspection frequency
* Settlement REP penalties

	This system ensures repeated illegal activity builds a reputation with authorities.

---

		11.3 Offline Rumor Fading

	Rumors about smuggling activity gradually disappear over time.

	Rumor sources include :
* Tavern keepers
* Dock workers
* Traveling merchants
* Informants within rival factions

	Rumor decay rules :
* Rumors lose strength after 24 hours
* Completely fade after 3–5 days without new incidents

	This prevents the world from permanently labeling players as criminals while still reflecting recent activity.

---

		11.4 Investigation Timers

	When suspicious activity is detected, settlements may initiate temporary investigations.
	Investigation timers represent authorities attempting to uncover smuggling operations.

	Typical investigation stages :
	
1. "Observation Phase"
	* Increased guard patrols
	* NPC surveillance of suspected contacts

2. "Inspection Phase"
	* Random guard checks
	* Increased suspicion near smuggler NPCs

3. "Resolution Phase"
	* Investigation ends if no further incidents occur

	Typical investigation duration:
* 12–48 hours depending on settlement security level.

	High-security settlements maintain investigations longer.

---

		11.5 Trade History Persistence

	Black Market trades are recorded for system tracking and player reference.

	Stored data includes :
* Item traded
* Quantity
* Final price
* Anonymous buyer/seller identifiers
* Timestamp

	History limits :
* Maximum 30 days of stored trade data
* Players can view last 5 transactions directly in UI
* Older entries archived automatically

	This supports both player tracking and anti-exploit monitoring.

---

		11.6 Data Cleanup Rules

	To maintain performance, the system automatically removes outdated records.

	Cleanup rules include :

| Data Type                | Cleanup Trigger                |
| ------------------------ | ------------------------------ |
| Minor suspicion records  | After 24 hours                 |
| Rumor entries            | After 3–5 days                 |
| Investigation flags      | After investigation completion |
| Old trade logs           | After 30 days                  |
| Expired criminal debuffs | When timer ends                |

	These automated cleanups ensure that the system remains lightweight and efficient.

---

		11.7 Performance Limits

	To avoid performance issues, several limits apply to stored smuggling data.

	Key limits include :
* Maximum active investigations per settlement
* Maximum active smuggler NPC interactions per player
* Limited transaction history storage
* Restricted simultaneous negotiation windows

	Performance safeguards prevent :
* database overload
* excessive memory usage
* exploitative transaction loops

	These limits allow the Black Market system to scale while maintaining stable server performance.

-------------------------------------------------------------------------------------------------------------------------------------------------------------------


			SECTION 12 – Edge Cases & Advanced Mechanics

	This section describes rare situations that may occur during Black Market activity and Smuggling operations.

	These mechanics serve several purposes :
* Prevent system exploitation
* Introduce unpredictable gameplay events
* Protect the integrity of the Smuggling Network
* Simulate internal conflict and deception within illegal trade networks

	These events occur infrequently but help ensure the Black Market system remains dynamic and resistant to manipulation.

---

		12.1 Fake Smugglers

	Not all individuals claiming to represent the Smuggling Network are legitimate.
	Occasionally, players may encounter fake smugglers posing as Black Market contacts.

	Possible outcomes :
* Fake NPC offers overpriced or worthless goods
* Player loses gold for non-existent items
* Fake trader disappears after transaction

	Detection methods :
* Higher Smuggling Rank improves detection chances
* Trusted smuggler NPCs may warn players in advance

	Fake smugglers add uncertainty and discourage blind trust in unknown contacts.

---

		12.2 Framed Players

	Rival factions or enemies may attempt to frame players for smuggling activity.

	This can occur when :
* Rival NPCs plant contraband items
* Pirate factions report false smuggling accusations
* Rival smugglers sabotage deliveries

	Consequences may include :
* Guard inspections triggered unexpectedly
* Temporary suspicion increase
* Investigation events launched by settlement authorities

	Players can clear their name by :
* Surviving investigation phases
* Proving innocence through inspection results
* Completing special missions for authorities

---

		12.3 NPC Betrayal

	Occasionally, a Smuggler NPC may secretly cooperate with authorities.

	These betrayal events represent internal corruption or pressure from law enforcement.

	Possible effects :
* Guards appear during Black Market interaction
* Trade transactions fail unexpectedly
* Smuggler NPC temporarily disappears

	Betrayal events are rare and usually temporary.
	High-rank smugglers may receive warnings from trusted contacts before these events occur.

---

		12.4 Black Market Sting Operations

	Authorities may conduct sting operations targeting smugglers.

	During these events :
* Guards disguise themselves as traders
* Fake Black Market listings appear
* Players attempting to buy contraband trigger inspections

	Possible outcomes :
* Immediate guard confrontation
* Contraband confiscation
* Criminal debuffs applied

	Experienced smugglers with higher ranks may detect suspicious listings more easily.

---

		12.5 Pirate Fake Traders

	Pirates may infiltrate the Black Market network by posing as traders.

	These fake traders may attempt to :
* Sell stolen goods at inflated prices
* Lure smugglers into ambush locations
* Gather information on smuggling routes

	If a player interacts with such traders, it may trigger :
* Pirate ambush events
* Cargo theft attempts
* Combat encounters

	Higher Smuggling Rank improves detection chances.

---

		12.6 Chain Smuggling Detection

	Large-scale smuggling operations may trigger chain detection events.

	This occurs when multiple smugglers operate in the same area within a short time period.

	Possible consequences :
* Authorities identify smuggling patterns
* Guard patrols increase dramatically
* Smuggler NPC services temporarily close

	This prevents players from mass farming smuggling routes.

---

		12.7 Mass Smuggling Events

	Sometimes the Smuggling Network coordinates large shipments of contraband.

	These events may occur during :
* Pirate supply surges
* Rare contraband discoveries
* Network-wide trade operations

	Features of mass smuggling events :
* Temporary increase in Black Market inventory
* Special smuggling missions available
* Increased risk of pirate interception or guard raids

	These events reward active smugglers but attract greater attention from authorities.

---

		12.8 Emergency Smuggler Lockdown

	If smuggling activity becomes too visible, the network may initiate a temporary lockdown.

	During lockdown :
* Black Market UI access is disabled in certain settlements
* Smuggler NPCs refuse interaction
* Safehouses become the only trading locations

	Lockdowns may be triggered by :
* Major guard raids
* Exposure of smuggler networks
* Excessive player smuggling activity in one region

	Lockdowns typically last 12–24 hours before operations resume.

-------------------------------------------------------------------------------------------------------------------------------------------------------------------


			SECTION 13 – Lua File Structure

	This section defines the Lua code architecture used to implement the Black Market system.
	The goal is to keep the system modular, maintainable, and consistent with the existing NPC and gameplay system file structure.
	Each module handles a specific responsibility while communicating through shared interfaces and global managers.

	The Black Market code should be organized in a dedicated folder :

```
/Systems/BlackMarket/
```

	Example structure :

```
/Systems
    /BlackMarket
        BlackMarketManager.lua
        BlackMarketNPCLogic.lua
        BlackMarketUI.lua
        BlackMarketEconomy.lua
        BlackMarketDetection.lua
        BlackMarketIntegration.lua
        BlackMarketPersistence.lua
        BlackMarketEvents.lua
        BlackMarketDebug.lua
```

	Each file serves a distinct role within the system.

---

		13.1 BlackMarketManager.lua

	Core controller of the entire system.

	Responsibilities :

* Initialize Black Market system
* Register Smuggler NPC interactions
* Control UI opening conditions
* Route requests between subsystems
* Handle system state (lockdowns, raids, market resets)

	Example responsibilities :

```
OpenBlackMarket(player, npc)
CheckPlayerAccess(player)
HandleTradeRequest(player, item)
TriggerMarketRotation()
```

	This file acts as the central coordinator.

---

		13.2 BlackMarketNPCLogic.lua

	Handles all smuggler NPC interactions.

	Responsibilities :
* NPC dialogue responses
* Smuggler NPC recognition logic
* Access to Illicit Vendor Tab
* Black Market UI interaction triggers
* NPC behavior during suspicion events

	Example functions :

```
IsSmugglerNPC(npc)
HandleNPCInteraction(player, npc)
OfferSmugglingQuest(player)
CheckNPCGuardProximity(npc)
```

	This module integrates with your existing NPC system and dialogue logic.

---

		13.3 BlackMarketUI.lua

	Controls the Black Market interface and player interaction elements.

	Responsibilities :
* Opening and closing UI window
* Buy/Sell tabs
* Search filters
* Negotiation interface
* Suspicion warnings
* Trade timers
* Rank limit indicators

	Example functions :

```
OpenMarketUI(player)
RefreshMarketItems(player)
DisplayTradeHistory(player)
UpdateSuspicionOverlay(player)
```

	This file contains all UI logic and client-facing interactions.

---

		13.4 BlackMarketEconomy.lua

	Handles all market pricing and trade economy calculations.

	Responsibilities :

* Dynamic price adjustments
* Black Market taxes
* Smuggler rank discounts
* Risk premiums
* Supply and demand tracking
* Market saturation control

	Example functions :

```
CalculateItemPrice(item, region)
ApplySmugglerDiscount(player)
ApplyMarketTax(price)
UpdateDemand(item)
```

	This file protects the balance of the smuggling economy.

---

		13.5 BlackMarketDetection.lua

	Handles guard detection and illegal trade exposure.

	Responsibilities :

* Guard proximity checks
* Suspicion aura effects
* Confiscation logic
* Criminal debuff application
* Forced exile events

	Example functions :

```
CheckGuardDetection(player)
ApplySuspicionAura(player)
HandleConfiscation(player, item)
TriggerInspectionEvent(player)
```

	This module connects directly to the "Suspicion System and Guard AI".

---

		13.6 BlackMarketIntegration.lua

	Handles communication with other major game systems.

	Integration targets :

* Smuggling Network System
* Bounty Hunter System
* REP System
* Bribe System
* Trainer NPC reactions
* Tavern rumor system

	Example functions :

```
NotifyBountySystem(player)
UpdateSettlementREP(player)
TriggerTavernRumor(event)
ApplyBribeAttempt(player, guard)
```

	This file ensures the Black Market behaves as a fully integrated system within the game world.

---

		13.7 BlackMarketPersistence.lua

	Handles data storage and memory tracking.

	Responsibilities :

* Trade history storage
* NPC memory records
* Authority suspicion records
* Investigation timers
* Rumor persistence

	Example functions :

```
SaveTradeRecord(player, item)
LoadSmugglerData(player)
ClearExpiredRecords()
UpdateAuthorityMemory(player)
```

	This file ensures stable long-term behavior and performance control.

---

		13.8 BlackMarketEvents.lua

	Handles dynamic world events related to smuggling.

	Examples include :
* Pirate ambush triggers
* Guard raids
* Mass smuggling events
* Emergency network lockdown
* Fake trader encounters

	Example functions :

```
TriggerPirateAmbush(player)
StartGuardRaid(settlement)
SpawnFakeTrader(location)
InitiateSmugglerLockdown(region)
```

	This module creates unpredictable world interaction.

---

		13.9 BlackMarketDebug.lua

	Developer tools for testing and monitoring the system.

	Responsibilities :

* Logging illegal trades
* Testing market rotations
* Simulating guard detection
* Spawning smuggler NPCs
* Triggering events manually

	Example functions :

```
DebugSpawnContraband(player)
DebugTriggerRaid(city)
DebugForceMarketReset()
PrintTradeLogs()
```

	This file should only be active in development builds.

-------------------------------------------------------------------------------------------------------------------------------------------------------------------


			SECTION 14 – Balancing & Tuning

	This section outlines the key adjustable parameters used to balance the Black Market system during development and live testing.

	The Black Market interacts with multiple gameplay systems such as :
* Smuggling Rank progression
* Settlement Reputation (REP)
* Guard Suspicion mechanics
* Bounty and Criminal systems
* Global economy and item rarity

	Because of this, several variables must remain configurable and monitored to prevent abuse or destabilization of the game economy.
	Balancing should be handled through tuning values rather than structural code changes whenever possible.

---

		14.1 Rank-Based Buy/Sell Limits

	Smuggling Rank determines how much a player can trade within a given time window.
	This prevents large-scale economic abuse while rewarding progression within the Smuggling Network.

	Example structure :

| Smuggling Rank | Max Purchases | Max Sales |
| -------------- | ------------- | --------- |
| Rank II        | Low           | Low       |
| Rank III       | Medium        | Medium    |
| Rank IV        | High          | High      |
| Rank V         | Very High     | Very High |

	Limits may apply to :
* Total number of trades
* Total gold value traded
* Number of rare items purchased

	Balancing goal :
Prevent low-rank players from flooding the Black Market economy.

---

		14.2 Trade Timer Duration Tuning

	Black Market trades operate within time-limited windows.

	Trade timers control :
* How often a player can perform Black Market transactions
* When market inventories refresh
* Cooldowns between smuggling interactions

	Example tuning parameters :
* Trade cooldown per player
* Global inventory refresh interval
* Negotiation window duration

	Balancing goal :
Ensure trading feels meaningful and strategic, rather than rapid farming.

---

		14.3 Black Market Tax Percentage

	Each Black Market trade applies a tax percentage which removes gold from circulation.
	This acts as a gold sink to help control inflation.

	Example range :

* 5% – minimal tax for high-rank smugglers
* 10–15% – standard tax rate
* 20%+ – penalties during investigations or high suspicion

	Tax rates may be influenced by :
* Smuggling Rank
* Settlement hostility
* Guard alert levels

	Balancing goal:
Maintain a stable economy while preserving the profitability of smuggling.

---

		14.4 Detection Chance Tuning

	Guard detection probabilities must be carefully balanced.

	Detection variables may include :
* Guard proximity radius
* Player suspicion level
* Smuggler rank
* Location risk level
* Number of recent trades

	Example balancing logic : 
* Low suspicion → minimal detection chance
* Moderate suspicion → moderate inspection risk
* High suspicion → frequent investigations

	Balancing goal :
Maintain constant tension without making the system unfairly punishing.

---

		14.5 Reward Rarity Tuning

	Black Market rewards must remain valuable but controlled.

	Adjustable parameters include :
* Rare item spawn probability
* Contraband availability
* Unique crafting material frequency
* Special smuggling reward items

	These should scale based on :
* Smuggling Rank
* Regional supply conditions
* Mass smuggling events

	Balancing goal :
Ensure rare items remain desirable without flooding the economy.

---

		14.6 Integration Tuning With Bounty System

	Black Market activity must integrate carefully with the "Bounty Hunter system".

	Key adjustable variables include :
* Chance of bounty generation after illegal trade
* Bounty value scaling
* Duration of active bounty
* Probability of bounty hunters being alerted

	Example balancing ideas :
* High-value contraband trades increase bounty risk
* Repeat offenders accumulate larger bounties
* Higher smuggler rank slightly reduces detection chance

	Balancing goal :
Maintain the cat-and-mouse dynamic between smugglers and bounty hunters.

---

		14.7 Economy Monitoring Metrics

	To maintain long-term stability, the system should track key economic indicators.

	Recommended metrics :
* Total Black Market gold flow
* Number of trades per day
* Rare item distribution rates
* Contraband circulation
* Player smuggling participation rate

	Developers should periodically review :
* Price inflation trends
* Item rarity saturation
* Gold generation versus gold sinks

	Balancing goal :
Detect economic imbalance early and adjust tuning parameters accordingly.

---

		14.8 Abuse Prevention

	To prevent exploitation, the system must monitor patterns such as :
* Repeated high-frequency trading
* Coordinated smuggling networks abusing item circulation
* Trade loops designed to bypass taxes
* Artificial price manipulation

	Potential responses include :
* Temporary trade limits
* Increased tax rates
* Guard investigation events
* Smuggler network lockdowns

	Balancing goal :
Protect the system from economic manipulation while preserving legitimate gameplay.

---

		14.9 Balancing Philosophy

	The Black Market system should always feel :
* Profitable but dangerous
* Rare but accessible
* Unpredictable but fair

	Smuggling must remain a high-risk, high-reward gameplay path that rewards planning and skill without allowing players to dominate the global economy.

---
