			SMUGGLING NETWORK SYSTEM

		SECTION 1 – System Overview

---

		1. Purpose & Philosophy

	The "Smuggling Network System" represents the hidden economic undercurrent of the world — a decentralized underground trade web operating across cities, ports, 
wilderness routes, and faction territories.

	Smugglers are not political revolutionaries.
	They are not conquerors.
	They are not ideology-driven.

	They are profit-driven facilitators of illegal transport.
	
	Their existence adds :
* Risk-based gameplay
* Secret progression
* Shadow economy mechanics
* Escape-based tension systems
* High-reward transport gameplay

	The philosophy behind the system is :

> Smuggling is dangerous, rare, secretive, and powerful — but never dominant.

	It should feel like walking on a blade’s edge.

---

		2. Role in World Gameplay**

	The Smuggling Network acts as :

* A Shadow Profession : Players can operate as underground couriers and transporters of restricted goods.
* A Risk-Reward Career Path : 
	* High profit
	* High danger
	* Hidden reputation
	* Escalating recognition by authorities
* A Mobility Advantage System

	Smugglers unlock :
* Escape routes
* Emergency extraction
* Safehouses
* Hidden transport paths

* A Bridge Between Systems
	* It connects :
		* Black Market trade
		* Bribery mechanics
		* Bounty consequences
		* Suspicion & detection logic
		* Corruption & Loyalty influence

	It does not replace any system — it links them.

---

		3. Why Smugglers Exist (Lore Justification)

	In a world shaped by the aftermath of the Second Great War and rigid faction governance, trade restrictions, tariffs, and forbidden artifacts naturally created 
underground channels.

	Smugglers emerged because :
* Some goods are banned.
* Some materials are controlled.
* Some artifacts are restricted.
* Some routes are blocked by politics.
* Some factions refuse official trade.

	Smugglers operate in the shadows to bypass control — not to destabilize it.

	They survive because :
* Authorities cannot fully eliminate them.
* Factions secretly benefit from their services.
* Corruption exists at low levels.
* Demand always finds supply.

	They are tolerated in whispers, hunted in daylight.

---

		4. Player Fantasy

	The Smuggling Network delivers a very specific fantasy :
* Moving contraband under patrol watch
* Slipping through secret tunnels
* Being extracted seconds before capture
* Guards recognizing you but lacking proof
* Trading rare items in hidden rooms
* Being known in the underground, unknown to the public

	It creates tension-driven gameplay rather than combat-driven dominance.

Smuggling is not about fighting.
It is about surviving detection.

---

		5. Integration With Major Systems

	The Smuggling Network is a connector system.

	🔹 Bribe System : 
* Players bribe guards to reduce detection
* Failed bribes may expose smuggling operations
* Corrupt NPCs easier to negotiate with

	🔹 Black Market System : 
* Access unlocked at Rank II+
* Enables rare trade
* Illegal goods exchange
* Economic incentive for risk

	🔹 Bounty Hunter System : 
* Failed smuggling may generate bounty
* Known smugglers more likely to be targeted
* Bounty hunters may track high-rank smugglers

	🔹 REP System : 
* Smuggling Rank is separate and hidden
* Guards internally recognize high-rank smugglers
* Lawful REP may increase suspicion around smugglers

	🔹 Suspicion & Awareness System : 
* Suspicion aura visible during risky actions
* Guards detect contraband transport
* Repeated activity increases authority attention

	🔹 Corruption & Loyalty System : 
* Corrupt NPCs easier to negotiate safe passage
* Highly loyal NPCs more likely to expose smugglers

---

		6. Difference From Black Market

	Black Market is :
* A trade interface.
* A buying/selling mechanism.
* An economic system.

	Smuggling Network is :
* A transport system.
* A reputation-based underground network.
* A mission-driven risk system.

Black Market handles goods.
Smuggling handles movement.

	You may access Black Market without being an active courier — but high smuggling rank enhances access and safety.

---

		7. Difference From Outlaw Faction**

	Outlaws :
* Betray their original faction.
* Gain access to unique mechanics (poisons, traps, secret arts).
* Have ideological and mechanical depth.
* Represent rebellion and secret knowledge.

	Smugglers :
* Do not betray factions.
* Do not seek power.
* Do not seek control.
* Only transport goods.

	Smugglers may cooperate with Outlaws for logistics — but they remain independent.

There is no faction merge.
No loyalty merge.
No political alliance.

Only transactional cooperation.

---

		8. Balance Philosophy (Critical)

	Smuggling must be :
* Rare
* Risk-heavy
* Hidden
* Non-dominant
* Non-disruptive to world stability

	It must NEVER :
* Replace legal trade
* Overpower Bounty System
* Create faction imbalance
* Allow city takeover
* Enable infinite escape abuse

	Design constraints :
* Escape abilities have cooldowns.
* Detection scales with rank.
* High-rank smugglers are more recognizable.
* Guards improve pattern recognition over time.
* Repeated failures increase danger.

	Smuggling should feel powerful — but never safe.

---

		9. Core Identity Statement

	Smuggling in this world is :

> A hidden economic network that moves forbidden goods through dangerous territory using players as operatives, rewarding secrecy, timing, and calculated risk while
remaining entirely invisible to the public eye.

--------------------------------------------------------------------------------------------------------------------------------------------------------------------


		SECTION 2 – Smuggler NPC Types & Roles

	This section defines all smuggler-related NPC roles, their behaviors, interactions, and how they connect with existing files :

* `Smuggler NPC Names.lua`
* `Smuggler NPC.lua`

	These NPCs are placed across the world, but all follow the same hierarchy and behavior logic.

---

		1. Core Smuggler NPC Hierarchy

	Smugglers are organized as a decentralized network with specialized roles.

	They are not leaders of factions.
	They are facilitators of illegal logistics.

---

		1.1 Capital City Registration Smuggler

	Located in "Capital City – Middlean Islands"

	Purpose : This NPC is the entry point into the Smuggling Network.

	Functions : 
* Registers player into smuggling faction.
* Starts initiation quest chain.
* Evaluates player through tests.
* Assigns Rank I after approval.
* Unlocks smuggler dialogue with other NPCs.

	Behavior Toward Players : 
* Neutral until registration.
* Suspicious of high-lawful REP players.
* Refuses known bounty targets.

	Interaction With Guards : 
* Avoids patrol routes.
* Moves location periodically.
* If discovered → disappears temporarily.

	Interaction With Bounty Hunters : 
* Will not talk if hunters nearby.
* May trigger fake trails to distract hunters.

---

		1.2 Regional Smuggler Contacts

	Found across world settlements.
	These NPCs are the operational backbone.

	Functions : 
* Provide smuggling quests.
* Offer hidden transport.
* Provide safehouse access.
* Help hide contraband.
* Sell smuggler consumables.

	Behavior Toward Players : 
* Only assist registered smugglers.
* Better services at higher smuggler rank.
* Refuse players with failed operations recently.

	Interaction With Guards : 
* Fake civilian behavior.
* Use hidden dialogue triggers.
* If guard nearby → interaction locked.

	Interaction With Bounty Hunters : 
* Warn player if hunters nearby.
* Offer emergency escape.

---

		1.3 Black Market Brokers

	Hidden rooms, basements, taverns, secret doors.
	These NPCs connect to "Blackmarket".

	Functions : 
* Unlock Black Market access (Rank II+).
* Sell rare illegal goods.
* Buy contraband items.
* Provide transport crates.

	Behavior Toward Players : 
* Polite but cautious.
* Prices scale with player reputation.
* Refuse players under heavy suspicion.

	Interaction With Guards : 
* Close shop if patrol detected.
* Move location temporarily.

---

		1.4 Escape Specialists

	Near city edges, ports, tunnels, ruins.
	These NPCs save players from capture.

	Functions : 
* Emergency teleport outside city walls.
* Portal to wilderness safe zones.
* Hidden tunnel access.
* Smoke bomb distraction events.

	Requirements : 
* Cooldown per player.
* Cost based on smuggling rank.
* Refuse players under Criminal Charge.

	Interaction With Guards : 
* Spawn fake tracks.
* Spawn decoy NPCs.
* Trigger temporary patrol confusion.

---

		1.5 Courier Smugglers

	Found in trade hubs and travel points.
	These NPCs assign delivery missions.

	Functions : 
* Transport contraband quests.
* Route-based missions.
* Multi-region smuggling.
* Escort-less high-risk delivery.

	Mechanics : 
* Player must avoid inspections.
* Suspicion increases if caught near guards.
* Failure leads to item confiscation.

	Rewards : 
* Smuggler REP
* Rare crafting items
* Access to secret routes

---

	1.6 Smuggler Guards (Hidden Protectors)

	Invisible until triggered.
	These NPCs protect smuggler operations.

	Functions : 
* Spawn when player attacked near smuggler NPC.
* Fight guards or bounty hunters briefly.
* Allow player escape.

	Balance Rules : 
* Limited spawn frequency.
* Do not follow player outside zone.
* Cannot be abused for combat farming.

	These NPCs are extremely rare to avoid system abuse.

---

		1.7 Silent Informants (Rare Betrayal NPCs)

	Extremely rare, randomly selected smugglers.
	Important rule: smugglers don’t betray intentionally, but informants exist unknowingly.

	Purpose : Adds realism and tension.

	Mechanics : 
* Certain NPC may unknowingly leak info.
* Happens on critical failure.
* Guards ambush player later.

	This is NOT betrayal — it is network infiltration.

---

		2. NPC Behavior Toward Players

	Smugglers evaluate players by :
* Smuggler Rank
* Recent failures
* Active bounty
* Suspicion level
* Corruption level of region
* Reputation with main faction

	Behavior Examples

| Player Status       | NPC Reaction           |
| ------------------- | ---------------------- |
| Rank I new smuggler | Basic quests only      |
| Rank III trusted    | Secret escape routes   |
| High bounty         | Refuse interaction     |
| High suspicion      | Warn player & relocate |
| Failed smuggling    | Charge extra fees      |

---

		3. Interaction With Guards

	Smuggler NPCs NEVER attack guards first.

	They:
* Hide
* Disappear
* Block dialogue
* Use fake civilian behavior

	If guards attack player near them :
* Escape Specialists may intervene.
* Smuggler Guards may spawn briefly.

	But smugglers do not start open combat.
	They are discreet.

---

		4. Interaction With Bounty Hunters

	Smugglers consider bounty hunters dangerous.

	Reactions : 
* Warn player about nearby hunters.
* Offer emergency escape.
* Increase prices.
* Refuse interaction if hunter reputation high.

	If hunters attack player near smugglers :
* Hidden protectors may delay hunters briefly.
* NPC may relocate permanently.

---

		5. Interaction With Neutral NPCs

	Neutral NPCs :
* Ignore smugglers.
* Can be bribed to stay silent.
* May increase suspicion if player acts strangely.

	Neutral civilians never assist smugglers directly.
	This keeps system realistic.

---

		6. Integration With NPC Files

	`Smuggler NPC.lua` should define :
* NPC Role Type
* Location
* Rank Access Level
* Escape Ability
* Black Market Access
* Dialogue Pool
* Cooldowns
* Hidden Protection Flag

	`Smuggler NPC Names.lua` defines placement.
	The system uses these to generate behavior automatically.

---

		7. Design Philosophy Summary

	Smuggler NPCs are :
* Hidden but widespread
* Helpful but cautious
* Loyal to trade, not ideology
* Non-political
* Non-aggressive
* Escape-focused

	They exist to support smuggling gameplay without destabilizing the world.

--------------------------------------------------------------------------------------------------------------------------------------------------------------------


			SECTION 4 – Player Interaction Mechanics

	This section defines the core gameplay loop of the Smuggling Network.

	Smuggling is not combat-focused.
	It is movement, timing, tension, and decision-making.

	All missions are :
* Solo-only
* Non-competitive
* Instance-free (world-integrated)
* Risk-driven
* System-connected

---

		1. Core Smuggling Gameplay Loop	

1. Accept mission from Smuggler NPC
2. Receive contraband or assignment
3. Travel through guarded or risky areas
4. Avoid detection / manage suspicion
5. Use bribes or escape if necessary
6. Deliver goods
7. Gain hidden Smuggler REP

	Failure at any stage may trigger :
* Confiscation
* Suspicion spike
* Bounty placement
* Rank loss

---

		2. Smuggling Missions

	Mission types scale with rank.

---

		2.1 Transport Illegal Goods

	Most common mission.

	Mechanics : 
* Player receives contraband item.
* Item flagged as “Illegal”.
* If inspected → detection check triggered.
* Suspicion increases near guards.

	Risk Factors : 
* Guard patrol density
* Capital City routes more dangerous
* High lawful REP increases guard curiosity
* High smuggler rank increases authority awareness

	Rewards : 
* Gold
* Smuggler REP
* Rare crafting materials
* Black Market tokens

---

		2.2 Escort Smuggler Caravans

	Higher rank missions.

	Mechanics : 
* Solo player protects hidden caravan NPC.
* Avoid patrol routes.
* If caravan spotted → guard alert event.
* Player must distract or escape.

	No PvP interference allowed.
	Caravan despawns if failure threshold reached.

---

		2.3 Deliver Secret Messages

	Low-visibility missions.

	Mechanics : 
* Player carries coded letter.
* No visible contraband item.
* Increased suspicion near guards.
* Faster completion but lower reward.

	Good for Rank I progression.

---

		2.4 Hide Contraband

	Dead-drop missions.

	Mechanics : 
* Place illegal item in specific hidden container.
* Must not be followed.
* Guards may patrol near drop site.

	Failure :
* Guard ambush event.
* Temporary smuggler distrust.

---

		3. Black Market Trading

	Unlocked at Rank II.

	Mechanics : 
* Access Black Market vendors.
* Sell contraband goods.
* Buy restricted items.
* Buy smuggler consumables (smoke bombs, forged permits).

	Risk : 
* Random inspection events near Black Market entrances.
* Guards may increase patrol frequency.

	Black Market access may be suspended if player recently caught.

---

		4. Bribery Interaction

	Smuggling heavily integrates with "Bribe System".

	Players may :
* Bribe guards to ignore inspection.
* Bribe neutral NPCs to stay silent.
* Bribe officials to reduce suspicion temporarily.

	Bribe outcome depends on :
* Guard loyalty level.
* Player smuggler rank.
* Recent criminal history.
* Corruption & Loyalty System values.

	Failed bribe may :
* Immediately trigger arrest.
* Increase bounty.
* Lock smuggler NPC interactions temporarily.

---

		5. Reputation Interaction

	Smuggler REP affects :
* Mission difficulty.
* Escape availability.
* Black Market pricing.
* NPC trust level.

	Main Faction REP affects :
* Guard suspicion baseline.
* Inspection frequency.
* Patrol targeting.
* Lose of REPutation with local settlement

	High lawful REP + high smuggler rank = increased scrutiny.

---

		6. Suspicion Interaction

	Your Suspicion System is active during smuggling.

	Suspicion Triggers : 
* Standing near guards too long.
* Repeated entry/exit of smuggler locations.
* Carrying contraband.
* Failing inspections.

	Visual Effect : 
* Subtle shadow flicker.
* Idle tension animation.
* Guard voice line changes.

	Suspicion decays slowly over time.

---

	7. Bounty Interaction

	Failure scenarios may trigger :
* Automatic bounty placement.
* Increased bounty value if high-rank smuggler.
* Bounty Hunters tracking delivery routes.

	Repeated smuggling in same city increases chance of :
* Surveillance events.
* Ambush patrols.

	Smuggling does not replace bounty — it feeds it.

---

		8. Escape Assistance

	Escape is limited, not spammable.

	Types of Assistance :

	8.1 Emergency Teleport
* Outside city walls.
* Cooldown-based.
* Costs smuggler REP or gold.

	8.2 Tunnel Exit
* Only works if not rooted or stunned.
* Requires proximity to escape NPC.

	8.3 Combat Assistance
* Hidden Smuggler Guard spawns briefly.
* Delays authorities.
* Cannot kill guards permanently.

	8.4 Distraction Event
* Smoke explosion.
* False alarm triggered elsewhere.
* Patrol temporarily diverted.

	Escape assistance scales with rank.
	Overuse increases authority suspicion globally.

---

		9. Solo-Only Mission Rules

	All smuggling missions :
* Cannot be shared.
* Cannot be grouped.
* Cannot be traded.
* Cannot be assisted by party members.

	If grouped :
* Mission pauses.
* Contraband flagged inactive.

	This prevents exploitation.

---

		10. No Competition Between Smugglers

	Rules:
* No smuggler vs smuggler PvP bonuses.
* No quest race mechanics.
* No shared objectives.
* No sabotage.

	Smugglers do not compete.
	The risk comes from the world — not other smugglers.

---

		11. Risk Escalation Logic

	Higher rank smugglers experience :
* Increased guard inspection rate.
* Wider detection radius.
* More frequent patrol adjustments.
* Higher bounty rewards if caught.

	This ensures :
Power increases.
So does danger.

---

		12. Core Gameplay Identity

	Smuggling gameplay is :
* Tension-based
* Route-planning focused
* Risk-managed
* Escape-aware
* Reputation-sensitive
* Hidden from public status

	It rewards intelligent movement — not brute force.

--------------------------------------------------------------------------------------------------------------------------------------------------------------------


			SECTION 5 – Escape & Protection Mechanics

	This section defines how smugglers avoid guards, bounty hunters, and detection while transporting illegal goods.

	These mechanics reinforce the fantasy of :
• Secret allies
• Hidden escape routes
• Underground protection network
• Smuggler loyalty

	Smugglers do not fight wars.
	They survive through intelligence, bribery, stealth, and escape.

---

		1. Smuggler Escape Infrastructure

	Smugglers maintain a hidden network across major regions.

	Includes : 
• Hidden portals outside cities
• Secret tunnels
• Safehouses
• Escape specialists
• Fake identity providers
• Emergency extraction NPCs

	These systems are available only to registered smugglers.
	Non-smugglers cannot see or use them.

---

		2. Smuggler Portals**

		Portal Locations	

	Portals are hidden near :
• Capital City outskirts
• Major trade roads
• Forest ruins
• Cave entrances
• Abandoned watchtowers

	Portals are invisible to normal players.
	Only smugglers of Rank II+ can detect them.

---

		Portal Logic

	Portals can be used when :
• Player has active smuggling mission
• Player is chased by guards
• Player has high suspicion level

	Restrictions :
• Cannot be used during combat
• Cannot be used while stunned
• Cannot be used in guarded interiors
• Cooldown applies after use

	Portals teleport player to :
• Safehouse
• Neutral region
• Smuggler-controlled outpost

---

		3. Emergency Teleport System

	Emergency teleport is provided by "Escape Specialist NPCs".
	These NPCs exist near major smuggler hubs.

	Features : 
• Instant teleport to safe zone
• Clears guard aggro
• Removes suspicion partially
• Costs gold + reputation

	Cooldown: long cooldown to prevent abuse.
	Higher smuggler rank → cheaper teleport.

---

		4. Secret Tunnels & Hidden Routes

	Some cities have underground tunnels.
	Accessible only through Smuggler Contacts.

	Routes connect :
• City sewers
• Back alleys
• Harbor warehouses
• Hidden caves

	These routes allow :
• Avoiding guards
• Fast deliveries
• Escape from bounty hunters

	Routes are randomized per day to prevent farming.

---

		5. NPC Combat Assistance

	Smugglers avoid open combat, but hidden guards exist.

	Smuggler Guards

	Hidden NPCs that :
• Distract guards
• Block pursuit
• Slow bounty hunters
• Heal smugglers briefly

	They disappear after assistance.
	These NPCs never start combat unless player is being chased.

---

		6. Fake Identity System

	High-rank smugglers can buy fake identities.

	Effects:
• Reduces suspicion near guards
• Allows entry into certain cities
• Changes player name temporarily

	Limitations:
• Expensive
• Breaks if player commits crime
• Limited duration

	Fake identity NPCs are rare.

---

		7. Smuggler Distraction Events

	Smugglers sometimes create diversions.

	Examples :
• Fake street fight
• Cart crash
• Warehouse fire alarm
• Drunk noble disturbance

	These events temporarily pull guards away.
	Triggered via Smuggler Contacts.
	Cooldown applies.

---

		8. Safehouse System

	Safehouses are secret resting places.

	Functions : 
• Remove suspicion over time
• Store contraband
• Change disguise
• Meet smuggler NPCs
• Pick up secret missions

	Safehouses exist in :
• Capital City
• Regional hubs
• Outland territories

	Only smugglers can enter.

---

		9. Emergency Extraction

	Last-resort rescue.

	Triggered when :
• Player is about to be captured
• Suspicion is maxed
• Bounty hunter close

	Extraction NPCs appear and :
• Smoke bomb
• Teleport player
• Remove contraband
• Save player reputation partially

	Cost :
• Very expensive
• Reputation loss
• Long cooldown

	Rank III smugglers get cheaper extraction.

---

		10. When Help is Refused

	Smugglers do not help reckless players.

	Help is refused when :
• Player betrayed smugglers
• Player attacked smuggler NPC
• Player has too many failed missions
• Player owes gold
• Player is outlaw hunter disguised

	This keeps system realistic.

---

		11. Cost of Escape Help

	Costs depend on :
• Smuggling rank
• Reputation with smugglers
• Amount of illegal goods
• Distance teleported

	Typical costs :
• Small teleport → moderate gold
• Emergency extraction → high gold + REP loss
• Fake identity → high gold

	This prevents abuse.

---

		12. Rank-Based Assistance

	The Smuggling Network operates on a 5-tier internal reputation structure.
	Higher rank grants deeper access to protection, escape systems, and network infrastructure.

	Smuggler Rank is hidden from public systems and visible only to the player.

---

		Rank I – Initiate Smuggler

	Entry-level member.

	Access to :
• Basic city tunnels
• Limited safehouse access (1 per region)
• Small contraband storage
• Minor distraction events

	Restrictions :
• No portal access
• No emergency teleport
• No fake identities
• High escape costs

	Guards :
No automatic recognition, but suspicion rises faster if caught.

---

		Rank II – Field Smuggler

	Proven courier within the network.

	Access to :
• Expanded tunnel network
• Additional safehouses
• Limited portal detection (regional only)
• Smuggler distraction events (stronger variants)
• Reduced bribe costs

	Limited assistance from Smuggler Guards (defensive only).

	Guards :
Occasional recognition in high-security cities.

---

		Rank III – Trusted Smuggler

	Recognized and reliable operator.

	Access to :
• Full portal usage (regional)
• Smuggler Guard assistance
• Fake Identity system (basic tier)
• Faster suspicion decay in safehouses
• Access to secure warehouse routes

	Reduced cooldown on escape services.

	Guards :
Increased inspection rate in capital cities.

---

		Rank IV – Network Specialist

	High-trust operative with strategic value.

	Access to :
• Inter-region portal network
• Advanced Fake Identities
• Emergency teleport (limited usage)
• Enhanced distraction events
• Protected smuggling caravans
• Special hidden city entries

	Escape services cost significantly reduced.

	Guards :
More likely to be recognized by elite patrols.
Bounty hunters receive stronger tracking hints.

---

		Rank V – Shadow Master

	Elite smuggling authority.

	Access to :
• Full global portal access
• Emergency extraction (priority response)
• Elite Smuggler Guard intervention
• High-capacity contraband storage
• Access to black-tier smuggling contracts
• Hidden diplomatic routes between hostile regions

	Benefits :
• Lowest escape costs
• Shortest cooldowns
• Maximum safehouse protection

	Guards :
High chance of recognition in major capitals.
Authorities may deploy special patrol events when detected.

---

	Design Rule

Higher rank = stronger network support
	But also :
Higher rank = higher risk of recognition
Power and danger scale together.

---

		13. Guard Countermeasures

	Guards learn over time.
	High-rank smugglers may be recognized.

	Effects :
• Guards inspect more often
• Patrol routes change
• Bounty hunters alerted faster
• Portal locations watched occasionally

	This keeps smuggling dangerous but fair.

---

		14. Integration With Your Existing Systems

	This section connects with your GitHub systems :
• Bounty Hunter System → hunters chase smugglers
• Blackmarket System → illegal goods transport
• Bribe System → escape costs
• Reputation System → smuggler rank

	This ensures everything works together.

---

		15. Design Philosophy

	Escape tools are :
• Powerful
• Rare
• Costly
• Rank-locked

	Smugglers survive by planning, not brute force.

-------------------------------------------------------------------------------------------------------------------------------------------------------------------


			SECTION 6 – Detection & Failure Mechanics

	Defines how smuggling attempts can fail, how NPCs react, and what consequences players face.

	Goal :
Smuggling must feel tense and realistic, without becoming frustrating or abusable.

---

		1. Detection Philosophy

	Smuggling is rare but dangerous.

	Detection depends on :
• Player Smuggler Rank
• Player Criminal Rating
• Guard Level vs Player Level
• Location security level
• NPC corruption/loyalty
• Time of day
• Suspicion aura level

	Detection is never purely random, but influenced by player behavior.

---

		2. Guard Detection Logic

	Guards are the primary opposing force.

	Detection triggers when :
• Player carries contraband
• Player uses smuggler tunnels near patrols
• Player stands near Smuggler NPC while watched
• Player has high criminal rating
• Player previously failed smuggling nearby

	Important rule from your world:
	Guards from Dendera and Zonen starting continents can be bribed only if player is 12+ levels avove NPC Guard level.

---

	Detection Steps : 
1. Suspicion Check
2. Inspection Attempt
3. Search
4. Arrest / Combat

	Bribery may interrupt at step 2 or 3.

---

		3. Suspicion Aura Mechanics

	Smugglers carry a hidden aura.

	Players see indirect feedback :
• NPC whispers
• Guards stare longer
• Tavern rumors spread

	Other players may see a subtle visual effect around suspicious smugglers.

	Aura increases when :
• Carrying illegal goods
• Staying near Smuggler NPCs
• Failing missions
• Being reported by NPCs

	Aura decreases over time or in safehouses.

---

		4. Being Seen Near Smuggler NPC

	If Guards witness player interacting with a smuggler:

	Possible results :
• Suspicion increase
• Temporary tracking
• NPC reporting
• Future inspection events

	High-rank smugglers are recognized faster.
	Low-rank smugglers are ignored unless already suspicious.

---

		5. Random Betrayal Chance

	Rare system, based on your design.

	Triggered when :
• Player has low smuggler REP
• Player failed many missions
• Player has high criminal rating
• Smuggler NPC has low corruption tolerance

	Result :
Smuggler NPC reports player to Guards.

	Important :
Smugglers do not betray other smugglers as a faction rule.
Only weak or fake contacts may betray.

---

	6. Confiscation Logic

	If caught carrying contraband :

	Possible confiscations :
• Illegal goods seized
• Gold fine
• Temporary trade ban
• Smuggling REP loss

	High-rank smugglers may hide part of the cargo.
	Some items can be marked "hidden compartments".

---

	7. Bounty Placement

	Integration with "Bounty Hunter System".

	When detection is severe :
• Player receives bounty level
• Bounty Hunters are notified
• Guards increase patrol checks

	Bounty size depends on :
• Cargo value
• Region security
• Player rank
• Number of prior offenses

	NPCs themselves are not bounty targets, as was specified.

---

		8. REP Loss

	Failure reduces Smuggling REP.

	Small failures → small REP loss
	Major arrests → heavy REP loss
	Repeated failures → rank downgrade

	REP decay also happens slowly over time without activity.
	This keeps realism without punishing offline players.

---

		9. NPC Reporting System

	Certain NPCs may report smugglers:
• Loyal Guards
• Some Vendors
• Special Quest NPCs
• Informants

	Civilians do not report.
	Neutral factions (Knight-Pindar-Outlaw neutral groups) ignore smuggling unless directly harmed.

	Reports create :
• Increased inspections
• Guard patrol events
• Tavern rumors

---

		10. Failure Outcomes

	Depending on severity :

	Minor Failure : 
• Partial cargo loss
• Small fine
• Suspicion aura increase

	Medium Failure : 
• Full cargo confiscation
• Smuggling REP loss
• Criminal Charge debuff

	Major Failure
• Player death or arrest combat
• Teleport exile from city
• Bounty placed
• "Branded by the Watch" debuff

---

		11. Special Debuffs

	Integrates with existing debuff system.

	Examples :

	Criminal Charge
• Guards inspect more often
• Bribe costs increase

	Branded by the Watch
• Cannot use tunnels in major cities
• Smuggler help costs more
• NPCs whisper rumors

	Confiscated Goods Mark
• Cannot sell similar items for a time

	Debuffs decay slowly over time.

---

		12. Partial Success

	Even when caught, smugglers may succeed partially.

	Examples :
• Half cargo hidden
• Fake identity reduces penalty
• Smuggler guard distraction saves player
• Emergency teleport saves life but cargo lost

	High-rank smugglers benefit more here.

---

		13. Teleport Exile

	Instead of jail :

Player may be teleported:
• Outside city walls
• Remote region checkpoint
• Neutral smuggler safehouse

	This keeps gameplay moving without blocking players.

---

		14. Balance Rules**

	To prevent abuse:
• Smuggling cannot be spammed rapidly
• High-value cargo has higher detection
• Escape services have cooldowns
• Guards remember repeat offenders
• Capital Cities are hardest zones

	Smuggling remains low-scale but meaningful.

-------------------------------------------------------------------------------------------------------------------------------------------------------------------


			SECTION 7 – Zone Rules

	Defines where smuggling is allowed, dangerous, or impossible, and how zone security affects gameplay.

	This section connects with :
• ZoneConfig.lua
• SuspicionManager.lua
• NPCReporting.lua
• Black Market System
• Bribe System
• Bounty Hunter System

	Goal : Make smuggling feel realistic, strategic, and location-dependent.

---

		1. Zone Philosophy

	Every zone in the world has a "Security Profile".

	Security Profile defines :
• Guard strength
• Inspection frequency
• Smuggler presence
• Escape availability
• Suspicion sensitivity

	This makes geography meaningful in your world game.

---

		2. Active Smuggling Zones

	These are zones where smuggling missions can start or finish.

	Examples :
• Trade cities
• Frontier towns
• Neutral markets
• Port cities
• Capital outskirts

	Requirements :
• At least one Smuggler NPC present
• Legal trade routes exist
• Guard patrols active

	Players receive missions only in active zones.

---

		3. Escape Zones**

	Escape Zones are areas where Smuggler Network support is strongest.

	Examples :
• Slums districts
• Hidden docks
• Old tunnels
• Wilderness caves
• Smuggler safehouses

	Effects :
• Smuggler portals available
• NPC distraction events trigger
• Safehouse hiding allowed
• Suspicion decays faster

	Escape Zones are rare and carefully placed.

---

		4. Capital City Special Rule – Middlean Islands

	The Capital City in Middlean Islands has unique rules.

	Because this is main hub :
• Guards are strongest
• Inspections frequent
• Smuggler NPCs hidden deeper
• Bribe cost higher
• Detection radius larger

	BUT : 
High-rank smugglers gain special advantages :
• Hidden sewer entries
• Capital-only safehouses
• Emergency extraction points

	This keeps Capital dangerous but playable.

---

		5. Neutral Settlements

	Neutral cities and towns behave differently.

	Examples :
* Knight-Pindar-Outlaw neutral areas (as you defined).

	Rules :
• Guards neutral unless crime seen
• Bribes easier
• Smuggling missions common
• Lower bounty risk

	Neutral zones are ideal beginner smuggling areas.

---

		6. Wilderness Routes

	Important for realism.

	Examples :
• Forest trails
• Mountain passes
• Desert caravans
• River crossings

	Effects:
• No guards
• Random bandits or bounty hunters
• Smuggler couriers appear
• Hidden stash spots

	Players transport goods safely but risk ambush.

---

		7. Ports and Hidden Docks

	Special smuggling hubs.

	Examples :
• Coastal cities
• River ports
• Secret underground docks

	Rules :
• Ship-based smuggling missions
• Black Market brokers appear
• Cargo value higher
• Guard patrols irregular

	Hidden docks may allow instant contraband swap.

---

		8. Wartime Modifiers

	When factions are at war :
• Guard inspections increase
• Contraband value increases
• Bounty sizes larger
• Neutral settlements less safe

	Smuggling becomes harder but more profitable.

	Important : This does not affect Corruption/Loyalty permanently, as was specified.

---

		9. High-Security Settlements

	Some towns are extremely strict.

	Examples :
• Military forts
• Royal trade hubs

	Rules :
• Almost no smuggler NPCs
• Massive guard presence
• Inspection on entry
• Bribes rarely accepted

	Only Rank IV–V smugglers can operate here safely.

---

		10. Outlaw Strongholds

	Outlaw faction areas behave differently.
	Smugglers and Outlaws cooperate but remain separate factions.

	Rules :
• No guard inspections
• Smuggling missions safe
• Black Market full access
• Bounty Hunters may attack

	Outlaw zones act as smuggler recovery hubs.

---

		11. Guard Strength Scaling

	Guard strength depends on zone type.

	Low Security Zones : 
• Few patrols
• Slow inspections

	Medium Security Zones : 
• Normal patrols
• Random inspections

	High Security Zones : 
• Frequent patrols
• Immediate inspection

	Capital City : 
• Elite guards
• Detection radius large
• Suspicion remembered longer

	This matches earlier system where guard level matters.

---

		12. Smuggler Aid Scaling by Zone

	Smuggler Network strength depends on location.

	Escape Zones : 
• Strongest aid
• Cheap portals
• Fast suspicion decay

	Neutral Settlements : 
• Moderate aid
• Normal prices

	Active Smuggling Cities : 
• Balanced aid
• Mission hubs

	Capital City : 
• Expensive but powerful aid

	High-Security Settlements : 
• Minimal aid

	This keeps realism and prevents abuse.

---

		13. Zone Memory Integration

	City Intelligence system remembers crimes.

	If player fails smuggling repeatedly in same zone:
• Guards inspect faster
• NPCs recognize player
• Bribe cost increases

	Memory decays over time (offline included), matching your earlier system.

---

		14. Visual & Immersion Effects

	Zones and NPC reactions provide immersive feedback instead of exposing raw numbers.
	Smuggling detection must feel tense and intuitive.

---

		A. Environmental Feedback

	Examples :
• Guards increase patrol speed
• Patrol routes tighten
• Tavern rumors change
• NPCs whisper when player passes
• Suspicion posters may appear in high-security cities
• Elite guards spawn in repeated failure zones

	Players never see exact suspicion values.

---

		B. Guard Suspicion UI Effect (Authority Detection)

	When a player is under active suspicion from Guard or Authority NPCs, a special on-screen effect appears.
	This effect serves as an attention warning.

	Trigger Conditions :
• Guard is observing player
• Guard begins inspection logic
• Player enters detection radius with contraband
• Player previously reported in that zone

---

	Visual Effect Behavior :
• Subtle screen-edge glow
• Faint heartbeat sound (optional)
• Authority emblem pulse near minimap
• Soft red or amber vignette

	The intensity scales with Smuggler Rank :
Rank I → Very subtle indicator
Rank III → Noticeable tension effect
Rank V → Strong pulse and screen pressure effect

	Reason :
High-rank smugglers are more known by authorities.
Recognition triggers stronger reaction.

	This reinforces your design rule :
Higher Rank = Higher Risk of Recognition

---

		C. Civilian / Neutral NPC Suspicion Effect

	When suspicion is triggered by :
• Vendors
• Civilians
• Neutral guards
• Informants

	A different UI effect appears.
	This effect is less aggressive.

	Suggested behavior :
• Soft yellow or pale blue pulse
• NPC whisper sound cue
• Small suspicion icon near character frame
• Brief distortion shimmer

	This indicates :

"You were noticed, but not officially reported yet."

---

		D. Reporting Escalation Indicator

	If suspicion escalates into official reporting :
• UI pulse sharpens
• Subtle warning message appears (no numeric value)
• Guard icon briefly flashes

	Example message tone : 
"Authorities are paying closer attention."

	No percentages shown.

---

		E. Zone-Based Visual Variation

	Visual intensity also scales by zone type :
Escape Zones → Reduced UI intensity
Neutral Settlements → Moderate UI
Capital City → Strongest UI effects
High-Security Settlements → Immediate strong visual cue

	This ensures Capital feels dangerous.

---

		F. Design Rule

	UI effects :
• Must not expose raw detection numbers
• Must not show exact timers
• Must scale with rank and zone
• Must feel immersive, not arcade

	Players should feel tension, not see math.

---

	This now properly connects :
• Suspicion System
• Guard Detection Logic
• Rank-Based Recognition
• Zone Security Level

---

		15. Lua Implementation Notes

	ZoneConfig.lua should define :

```
ZoneSecurityLevel
HasSmugglerNPC
HasEscapePoints
GuardInspectionRate
SmugglerAidMultiplier
BountyMultiplier
SuspicionDecayRate
```

	This allows easy balancing later.

-------------------------------------------------------------------------------------------------------------------------------------------------------------------


			SECTION 8 – Memory & Persistence

	Purpose : Define how smuggling data is stored, shared, decays over time, and affects gameplay — without hurting performance or punishing offline players.
	This system ensures realism while keeping the game fair.

---

		1. Smuggler NPC Memory of Players

	Every Smuggler NPC keeps a local hidden memory of players who interacted with them.

	Stored Data : 
• Player ID
• Smuggler Rank
• Last interaction time
• Last mission type
• Failure history with that NPC
• Trust Level with that NPC

---

	Behavior

	Smuggler NPCs remember :
• Players who failed missions
• Players who betrayed network
• Players who are reliable couriers

	This affects :
• Mission availability
• Escape assistance
• Black Market access
• Cost of services

---

	Example : 
A player fails 2 courier missions →
NPC increases cost of escape help by 30%.

	This memory fades over time.

---

	Memory Decay : 
Local NPC memory fades every 2–3 in-game weeks.

	Reason :
Players should not be permanently punished.

---

		2. City Authority Memory

	Cities maintain a central intelligence file about smugglers.

	Stored per settlement :
• Known smuggler players
• Suspicion level
• Last smuggling incident
• Confiscated goods
• Linked smuggler NPC sightings

---

	Authority Recognition

If player has high Smuggler Rank :
* Guards may recognize player faster.

This matches the whole idea :

> High-rank smugglers are known faces.

---

		Spread Between Cities

	Information spreads slowly.

	Example :
• Major Cities share info after few days
• Capital City spreads instantly
• Escape Zones share nothing

---

	This connects with REP system logic of the World Game.

---

		3. Smuggling Reputation Decay

	Smuggler Rank stays permanent unless player leaves faction.
	But "Smuggling Activity Reputation" fades.

	Decay Rules

	Every 2–3 in-game weeks :
• Failed mission history reduces
• Suspicion tags fade
• City memory weakens

	This happens even if player is offline.

---

	Exception

	Decay does NOT occur if player :
• Is marked by Bounty Hunters
• Has active Criminal Charge
• Was caught in last 24 in-game hours

	This keeps consequences meaningful.

---

		4. Offline Timer Effects

	Timers continue while player is offline.
	This matches earlier design for "Suspicion System".

	Example timers :
• Rumor fading
• NPC trust recovery
• Investigation cooldowns
• Escape cooldown resets

---

	Reason

	Prevents :
• Players staying offline to avoid detection instantly
• Players being punished forever

	Balanced realism.

---

		5. Rumor Spreading System

	Rumors spread through specific NPCs :
• Tavern Keepers
• Bards
• Mercenary Masters
• Smuggler Contacts

	Rumors affect :
• Guard patrol awareness
• Bribe costs
• Inspection chance

---

		Rumor Spread Speed

Low Rank Smuggler → Local rumors only
Mid Rank → Regional rumors
High Rank → Major city rumors

Capital City → Instant global rumor

Because Middlean Islands Capital is the most dangerous zone.

---

		6. Investigation Timers

	When smuggling is detected :
* An investigation timer starts.

	Stored data :
• Incident location
• Goods type
• Player ID
• NPC witness

---

	Investigation Phases

1. Alert Phase
   Guards increase patrols

2. Search Phase
   Checkpoints increase

3. Cooling Phase
   Rumors fade

---

	Total duration depends on crime severity.

---

		7. Database Persistence

	Smuggling data must be stored efficiently.

	Stored Long-Term : 
• Player Smuggler Rank
• Network membership
• Completed smuggling achievements
• Major betrayal history

---

	Stored Short-Term : 
• City suspicion
• NPC memory
• Active investigations
• Escape cooldowns

	These expire automatically.

---

	Data Structure Example

```
SmugglerDB = {
   PlayerID = {
      Rank = 3,
      LastMission = time,
      FailCount = 1,
      KnownCities = {Capital, PortCity},
      LastSeenByGuard = time
   }
}
```

---

		8. Performance Rules

	Because smugglers exist everywhere, the system must be optimized.

	Rules :
• Only store memory for players who interacted
• Limit city intelligence to top suspects
• Clean expired data weekly
• Use lightweight timers instead of real-time tracking
• Do not store civilian NPC memory

---

		Important Rule

	Escape Zones do NOT store smuggling memory.
	Players can breathe there.
	This matches world design.

---

		9. Anti-Exploit Rules

	Prevents abuse.
• Logging out near smuggler NPC does not clear suspicion
• Leaving faction does not erase city memory instantly
• Repeated mission aborts flagged
• Rapid city hopping tracked

---

		10. UI Feedback

	Players see hints, not numbers.

	Examples :
• "The tavern whispers your name."
• "Guards seem familiar with your face."
• "Smugglers trust you more now."

	Only smuggler members see their internal REP.
	Hidden from public ranking.

-------------------------------------------------------------------------------------------------------------------------------------------------------------------


			SECTION 9 – Edge Cases & Advanced Mechanics

	Purpose : Handle rare or complex situations so the Smuggling Network stays believable and cannot be exploited.
	These rules prevent loopholes and create emergent storytelling.

---

		1. NPC Betrayal

	Rare but important mechanic.

	Smuggler NPCs normally never betray, but betrayal may occur when :
• Player fails multiple missions
• Player is under heavy authority investigation
• Player is secretly flagged by another system (example: extreme corruption heat)

---

	Betrayal Outcomes : 
• NPC alerts guards
• Fake safehouse trap
• Escape portal fails
• Guards ambush location

	This should feel dramatic but rare.

---

	Protection Rule

	Players with Rank IV–V smuggler reputation are almost never betrayed unless :
• Player attacked smuggler NPC
• Player exposed network location
• Player betrayed smuggler faction in quests

	This respects loyalty system.

---

		2. Fake Smugglers

	Authorities sometimes deploy fake smuggler NPCs.
	These appear only in high-security zones.

---

	Behavior : 
• Offer illegal job
• Mark player after acceptance
• Lead to checkpoint trap
• Spawn investigation event

	This punishes careless smugglers.

---

	Detection

	High-rank smugglers get subtle hints :
• NPC dialogue oddities
• Wrong smuggler code phrase
• Missing faction mark

	Encourages roleplay awareness.

---

		3. Framed Players

	A player may be framed if :
• Another player plants contraband
• Player accepts suspicious courier package
• Player near smuggler raid zone

---

	System Response

	Authorities mark player as suspect.

	But investigation logic checks :
• Witness count
• Reputation history
• Smuggler rank
• Previous behavior

	This prevents unfair punishment.

---

	Clearing Your Name

	Player may :
• Pay fine
• Do authority quest
• Reveal real smuggler
• Use legal permit system

	Adds gameplay depth.

---

		4. Double Agents

	Some players may secretly cooperate with authorities.
	Not an outlaw faction — just temporary cooperation.

---

	Effects : 
• Player gets info about smuggler routes
• Smuggler NPC trust reduced
• Escape help becomes expensive
• Black Market limited

---

	Risk

	If smugglers discover betrayal :
• Player loses smuggler rank
• Escape services blocked
• NPC hostility

	Keeps faction loyalty meaningful.

---

		5. Emergency Smuggler Lockdown

	Triggered when :
• Major smuggling bust
• Multiple smugglers caught in same city
• Capital City alert state

---

	Lockdown Effects : 
• Smuggler NPCs disappear temporarily
• Black Market closes
• Escape portals disabled
• Guard patrol doubled

	Duration depends on severity.
	This makes the world react realistically.

---

		6. Mass Smuggling Events

	Rare world-style events.

	Examples :
• Smuggler caravan across regions
• Capital City contraband crisis
• Port blockade

---

	Effects : 
• Special smuggling missions
• Huge risk/reward
• Bounty hunters increased
• Guards stronger

	These events create memorable gameplay.

---

		7. Guard Corruption Interaction

	From your Corruption System.
	Some guards may be bribed.

	But:
• Corrupt guards never fully join smugglers
• Only ignore detection temporarily
• Risk of betrayal remains

---

	Balance Rule : 
High corruption = cheaper smuggling
High loyalty = impossible bribery

	revents world becoming lawless.

---

		8. Multiple Crimes Handling

	If player commits several crimes during smuggling:

	Example :
• Smuggling + Assault + NPC Kill

	System stacks consequences carefully.

---

	Rules : 
• Smuggling REP loss applied once
• Criminal Charge applied if killed by guards
• Bounty system triggered if severe

	Avoids punishment stacking unfairly.

---

		9. Chain Smuggling Detection

	Authorities track patterns.

	Example :
Player smuggles repeatedly in same city.

	System increases :
• Inspection chance
• Guard recognition
• Informant spawn chance

---

	Counterplay

	Players must :
• Change routes
• Use different smugglers
• Wait rumor fade
• Use escape zones

	Encourages strategic smuggling.

---

		10. Smuggler Network Integrity Rules

	Prevents exploits.
• Smugglers never fight each other
• No competition quests 
• No public ranking visibility
• Hidden internal REP
• Website ranking hidden

	Only character profile shows smuggler progress.

---

		11. High-Rank Smuggler Risks

	At Rank IV–V :
* Authorities may recognize player by face.

	Effects :
• Faster guard detection
• Informants watch player
• Tavern rumors stronger

	This keeps high rank risky and exciting.

---

		12. Lore Consistency Rules

	Smugglers are NOT Outlaws.
	They are traders of illegal goods.
	They cooperate with Outlaws but remain separate faction.
	This keeps your world logic consistent.

-------------------------------------------------------------------------------------------------------------------------------------------------------------------


			SECTION 10 – Integration Hooks

	Defines how the Smuggling Network connects to existing systems using event-based hooks.

	Design Principle :
Smuggling does not control other systems.
It emits events and listens for events.

	This keeps architecture modular and scalable.

---

		1. Hook: Bounty Hunter System

	When Smuggling Triggers Bounty

	Smuggling emits :

```
OnSmugglingCrimeDetected(playerID, cargoValue, zoneID)
```

	Bounty System evaluates :

• Crime severity
• Cargo value
• Player history
• Zone security

	If threshold reached :

```
CreateBounty(playerID, bountyValue, zoneID)
```

---

	When Bounty Affects Smuggling

	Smuggling listens for :

```
OnBountyStatusChanged(playerID)
```

	Effects :
• Escape costs increase
• Guard inspection frequency rises
• Smuggler NPC trust decreases
• Portal cooldown extended

---

		2. Hook: Black Market System

	Smuggling unlocks or restricts Black Market access.

---

	On Smuggler Rank Change : 

```
OnSmugglerRankUpdated(playerID, newRank)
```

	Black Market responds :
• Unlock hidden inventory tiers
• Enable restricted goods
• Allow bulk contraband sales

---

	On Black Market Sale : 

```
OnIllegalItemSold(playerID, itemID, value)
```

	Smuggling reacts :
• Increase suspicion aura
• Increase city rumor
• Trigger inspection chance

	This prevents silent laundering.

---

		3. Hook: Bribe System

	Smuggling and Bribe are tightly connected.

---

	When Inspection Begins : 

```
OnGuardInspectionStarted(playerID, guardID)
```

	Bribe system activates.

	If bribe succeeds :

```
OnBribeSuccess(playerID)
```

	Smuggling reduces :
• Suspicion escalation
• Investigation timer
• REP loss

	If bribe fails :

```
OnBribeFailure(playerID)
```

	Smuggling increases :
• Detection severity
• Authority memory

---

		4. Hook: REP System

	Smuggling has hidden internal REP but must notify global REP logic.

---

	On Smuggling Success : 

```
OnSmugglingMissionCompleted(playerID)
```

	Smuggling :
• Increase Smuggler REP
• Possibly reduce general Criminal REP

---

	On Smuggling Failure : 

```
OnSmugglingFailure(playerID, severity)
```

	Smuggling :
• Reduce Smuggler REP
• Notify City Authority Memory
• Notify Bounty System

---

	Important :
Smuggler REP is hidden from public rankings.
Only visible in character profile.

---

		5. Hook: Corruption & Loyalty System

	Guards and cities have corruption values.

	Smuggling listens for :

```
OnZoneCorruptionUpdated(zoneID, corruptionLevel)
```

	Effects :

High corruption :
• Lower inspection rate
• Cheaper bribes
• Slower rumor spread

High loyalty :
• Faster detection
• Stronger investigations
• Lockdown events more likely

---

		6. Hook: NPC Suspicion System

	Smuggling modifies baseline suspicion logic.

---

	When Player Carries Contraband : 

```
OnContrabandDetected(playerID)
```

	Suspicion System increases detection weight.

---

	When Suspicion Escalates : 

```
OnSuspicionThresholdReached(playerID, level)
```

	Smuggling :
• Triggers inspection
• Activates UI effects
• Starts investigation timer

---

		7. Hook: Trainer NPC Reactions**

	Class Trainers and Profession Trainers react subtly.
	Smugglers are not criminals by default, but high suspicion affects NPC reactions.

---

	When Smuggler Is Branded : 

```
OnBrandedByWatch(playerID)
```

	Trainer reactions :
• Increased service cost
• Refusal of certain quests
• Dialogue change

	High-rank trainers may warn player.

---

		8. Hook: Tavern Keeper Rumor Spreading

	Tavern Keepers act as rumor nodes.

---

	On Smuggling Incident : 

```
OnSmugglingIncident(zoneID, playerID)
```

	Tavern system :
• Adds rumor entry
• Increases guard alertness
• Spreads to connected cities

---

	On Rumor Decay : 

```
OnRumorExpired(zoneID)
```

	Smuggling reduces :
• Inspection frequency
• Suspicion multiplier

---

		9. Hook: Settlement REP System

	This hook connects Smuggling notoriety with local settlement reputation.

	Purpose : A player known as a smuggler should lose trust in cities where their activities are detected.

	This ensures smuggling has real social consequences.

---

		A. Core Rule

	Smuggling itself does NOT instantly reduce REP.

	REP decreases only when :
• Player is detected smuggling in that settlement
• Player is prosecuted by Guards
• Player is reported by NPCs
• Player has repeated smuggling rumors in that region
• Player has active bounties tied to that settlement

	This keeps the system fair and realistic.

---

		B. Hook Trigger Events

	Smuggling emits events like :

```lua
OnSmugglingDetected(playerID, settlementID, severity)
OnSmugglingProsecuted(playerID, settlementID)
OnSmugglingRumorSpread(playerID, settlementID)
OnBountyLinkedToSettlement(playerID, settlementID)
```

	REP System listens and evaluates REP loss.

---

		C. REP Loss Scaling

	REP loss depends on :
• Cargo value
• Crime severity
• Player smuggler rank
• Number of past offenses
• Settlement security level

	Example logic :

Low offense → small REP loss
Repeated offenses → large REP loss
Caught + bounty → heavy REP loss

	This matches realism : The more notorious the player becomes, the more REP drops.

---

		D. Regional REP Impact

	If player is repeatedly prosecuted in multiple cities of the same faction :
* Regional REP also decreases.

	Example :
Caught in 3 Knight cities → Knight faction REP decreases.

	This reflects news spreading across human settlements.

---

		E. REP Loss Effects

	When REP drops :

Players lose benefits like :
• Vendor discounts
• Access to profession trainers
• Quest availability
• Entry permission to major cities
• Title privileges (Hero)

	These penalties match Criminal Charge philosophy.

---

		F. High Notoriety Rule

	If player becomes a "Notorious Smuggler" in a settlement:

	Additional effects :
• Guards inspect immediately on sight
• Tavern rumors intensify
• Bribes cost more
• Smuggler help costs more

	This ties all systems together.

---

		G. REP Recovery

	REP can recover through :
• Time-based decay (in-game timer, even offline)
• Paying fines
• Doing legal quests
• Helping city during events
• Completing anti-corruption missions

	This prevents permanent punishment.

---

		H. Hidden Smuggler Rank vs Public REP

	Important distinction:
Smuggler Rank → Hidden
Settlement REP → Public reputation

	Guards do NOT know rank number, only notoriety level.
	This keeps immersion intact.

---

		I. Capital City Rule

	In Middlean Islands Capital City :
Smuggling detection causes double REP loss, because it is the most secure city.

	This matches the design :
Capital City = Most dangerous place for smugglers.

---

		J. Balance Philosophy

	Smuggling is profitable but dangerous.

	Players must choose :
Fast illegal gain → long-term social loss.

	This creates meaningful MMO gameplay.

---

		10. Global Event Bus Model

	All systems communicate through an event dispatcher:

```
GameEventBus:Emit(eventName, payload)
GameEventBus:Subscribe(eventName, handler)
```

	Smuggling only subscribes and emits.
	It does not directly modify other systems.

	This prevents architecture corruption.

---

		11. Performance Rules for Hooks

• No polling loops
• Only event-triggered updates
• Cooldowns stored in shared DB
• Use lightweight flags, not constant checks

	This keeps large-scale NPC network stable.

---

		12. Security & Exploit Protection

• Hooks validate player state
• Prevent double event firing
• Ignore events during teleport transitions
• No recursive event calls

	Prevents abuse loops.

---

		13. Final Architectural Role

	Smuggling is :
• A hidden economic layer
• A risk-based logistics system
• A tension generator for cities
• A bridge between criminal and legal systems

	It is not dominant — it is interconnected.

-------------------------------------------------------------------------------------------------------------------------------------------------------------------


			SECTION 11 – Lua File Structure 
		Smuggling Network – Annotated Lua File Map

---

		1. `SmugglingManager.lua`

* Purpose : Core system logic, handles player registration, rank progression, and global smuggling state.

* Responsibilities :
	* Player registration with Capital City Smuggler NPCs.
	* Rank I–V system (unlocking Black Market, escape paths, special quests).
	* Tracking overall smuggling activity per player.
	* Event triggers for detected smuggling, failed missions, or successful delivery.
	* Interface with integration hooks: Bounty, REP, Bribe, Suspicion.
	* Central timer management for smuggling events and offline decay.

* Key Functions (Examples) :

```lua
RegisterPlayer(playerID, startingNPC)
PromoteRank(playerID, newRank)
DemoteRank(playerID, reason)
GetPlayerSmugglingStatus(playerID)
TriggerSmugglingEvent(playerID, eventType)
ApplyRankBenefits(playerID)
```

---

		2. `SmugglerNPCLogic.lua`

* Purpose : Governs NPC behavior and player interaction.

* Responsibilities :
	* Define behavior for all Smuggler NPC types (Capital Registration, Regional Contacts, Black Market Brokers, Escape Specialists, etc.).
	* Handle NPC reactions to Guards, Bounty Hunters, and other authorities.
	* NPC aid during player escapes or smuggling missions.
	* Randomized NPC patrol/escort logic for missions.

* Key Functions :

```lua
NPCInteract(playerID, npcID)
NPCHelpPlayer(playerID, npcID, missionID)
NPCCombatAssist(playerID, npcID, threatLevel)
NPCReportPlayer(playerID, npcID)
NPCTriggerEscapePath(playerID, npcID)
```

---

		3. `SmugglingMissions.lua`

* Purpose : Manages smuggling quests, tasks, and delivery objectives.

* Responsibilities :
	* Define mission types: transport goods, secret message delivery, escort caravans.
	* Check mission success/failure.
	* Calculate rewards and REP/Rank impact.
	* Solo-only mission enforcement.

* Key Functions :

```lua
StartMission(playerID, missionID)
CheckMissionProgress(playerID, missionID)
CompleteMission(playerID, missionID)
FailMission(playerID, missionID, reason)
CalculateRewards(playerID, missionID)
```

---

		4. `EscapeMechanics.lua`

* Purpose : Handles all player escape mechanics when detected.

* Responsibilities :
	* Smuggler portals and emergency teleport logic.
	* Safehouse access rules.
	* NPC distraction events.
	* Fake identity/disguise support during escapes.
	* Rank-based assistance scaling.

* Key Functions :

```lua
TriggerEscape(playerID, escapeType)
TeleportPlayer(playerID, destination)
ActivateDisguise(playerID, disguiseID)
CallNPCAssist(playerID, npcID)
CheckEscapeCooldown(playerID)
```

---

	5. `DetectionManager.lua`

* Purpose : Governs detection, failure, and punishment.

* Responsibilities :
	* Guard detection logic (proximity, suspicion aura, rank recognition).
	* Visual & UI effects when a smuggler is under suspicion.
	* Failure consequences: confiscation, bounty, REP loss, Criminal Charge, Branded by the Watch.
	* Integration with existing debuffs from NPC Suspicion and Bounty Hunter Systems.

* Key Functions :

```lua
CheckDetection(playerID, guardID)
ApplyFailureDebuffs(playerID, severity)
SpawnGuardPatrol(playerID)
TriggerSuspicionEffect(playerID, npcType)
CalculateREPDecrease(playerID, settlementID)
```

---

		6. `ZoneSmugglingRules.lua`

* Purpose : Contains rules for where smuggling can occur.

* Responsibilities :
	* Active smuggling zones.
	* Escape zones.
	* Capital City special rules (highest security).
	* Neutral settlements, ports, docks, wilderness routes.
	* Wartime/high-security modifiers.
	* Zone-based NPC strength and smuggler aid scaling.

* Key Functions :

```lua
IsZoneActive(zoneID)
GetZoneSecurityLevel(zoneID)
ModifyNPCAssistance(playerID, zoneID)
ApplyZoneModifiers(playerID, zoneID)
```

---

		7. `SmugglingIntegration.lua`

* Purpose : Connects the Smuggling Network to other systems.

* Responsibilities :

* Hooks for :
	* Bounty Hunter System
	* Black Market System
	* Bribe System
	* REP System (Settlement Reputation)
	* Corruption & Loyalty System
	* NPC Suspicion System
	* Trainer NPCs
	* Tavern Keeper rumors
* Event listener registration.
* Cross-system feedback (e.g., REP decreases when caught, Black Market unlocked by rank).

* Key Functions :

```lua
RegisterIntegrationHook(systemName, callback)
TriggerHookEvent(playerID, eventType)
SyncWithBountyHunter(playerID)
UpdateREP(playerID, settlementID)
UpdateBlackMarketAccess(playerID)
```

---

		8. `SmugglingDebug.lua`

* Purpose : Tools for testing, logging, and monitoring the system.

* Responsibilities :
	* Log player actions and NPC responses.
	* Simulate guard detection, failure, and escape scenarios.
	* Monitor timers, rank progression, REP impacts.
	* Test visual/suspicion UI effects.
	* Debug unsafe or unexpected interactions.

* Key Functions :

```lua
LogPlayerAction(playerID, action, details)
SimulateDetection(playerID, guardID)
ForceMissionOutcome(playerID, missionID, success)
MonitorSuspicionEffects(playerID)
PrintSmugglingState(playerID)
```

---

	Notes & Philosophy

* Every file is modular → single responsibility principle.
* Each module can call hooks in `SmugglingIntegration.lua` for cross-system interaction.
* Timers and persistence should follow the same logic as Suspicion & Loyalty systems (offline decay, rumor fading, performance-safe).
* Visual/UI effects are tied to detection and rank (Section 7 subsection 14).
* Player Smuggling Rank is internal/hidden, only authorities can partially infer.
* System scales with rank: higher rank = more access, more escape options, more Black Market access, more danger.

-------------------------------------------------------------------------------------------------------------------------------------------------------------------


			SECTION 12 – Balancing & Tuning (Smuggling Network)

		1. Cost of Smuggling

* Concept : There is no upfront payment for players to join or participate. Players are paid by the system for completing missions.
* Mission risk : The “cost” is risk of detection, item loss, or bounty placement, not gold.
* Scaling : Higher security zones and high-value missions → higher potential reward.
* Purpose : Prevents the player from being penalized financially upfront while keeping gameplay tense and risky.

---

		2. Reward Scaling

	Rewards are rank-dependent and mission-dependent :

| Rank                   | Typical Reward                             | Notes                                                                      |
| ---------------------- | ------------------------------------------ | -------------------------------------------------------------------------- |
| I – Novice Smuggler    | 2–10 gold, minor consumables               | Small missions, no Black Market access                                     |
| II – Trusted Smuggler  | 10–15 gold, moderate rare items            | Access to local Black Market, NPC assistance in escapes                    |
| III – Master Smuggler  | 15–60 gold, rare items, new escape paths   | Access to regional/global Black Market, portals, Smuggler Guard assistance |
| IV – Elite Smuggler    | 15–80 gold, very rare items                | Special mission unlocks, secret city entries, global network leverage      |
| V – Legendary Smuggler | 5-120+ gold, unique items                  | Full Black Market access, all escape/portal paths, maximum NPC support     |

	Notes :
* Items may include consumables, smuggling tools, or Black Market-exclusive equipment.
* Reward amounts are #tunable# for testing; scale risk/reward proportionally to guard density and city notoriety.

---

		3. Black Market Access

* Rank II+ unlocks Black Market access.
* Prices are higher than normal markets, reflecting risk and rarity.
* Players can trade items with NPC brokers or other smuggler members.
* Rank III+ allows global Black Market transactions.
* Black Market items include: rare consumables, smuggling tools, and mission-specific items.
* Tied to Smuggling Rank and reputation within the network; only rank-eligible players can buy/sell.

---

		4. Escape Cooldowns & NPC Assistance

* Smuggler NPC assistance is rank-gated : higher ranks = faster & more powerful aid.
* Escape portals, secret tunnels, and combat assistance have cooldowns to prevent abuse.
* Cooldowns are dynamic : shorter in low-security zones, longer in high-security zones.
* Failed missions may temporarily lock escape support, proportional to risk and notoriety.

---

		5. Detection Chance

* Detection scales with :
	* Mission difficulty (city vs. wilderness, high security vs. low security)
	* Player Rank (high rank = more guards recognize, but also more advanced escape aid)
	* Player behavior (visible near guards, carrying contraband, being suspicious)
* Guards or authorities react based on Suspicion System + REP modifiers.
* Being caught triggers: partial mission loss, item confiscation, criminal charge, or bounty placement.

---

		6. Rank Progression Speed

* Rank gain depends on:
	* Successful mission completion
	* Completing special “training” or side missions from Smuggler NPCs
	* Avoiding detection
* Decay : Reputation within Smuggling Network slowly decays if inactive, but never below Rank I unless missions fail catastrophically.

---

		7. Reward Rarity

* Rare or Black Market items increase in frequency with higher rank.
* Mission type (escort, delivery, contraband transport) affects type of reward.
* Unique smuggler-only items are bound to this system; cannot be obtained elsewhere.

---

		8. Integration Tuning

* Bounty Hunter System : Detection and mission failure may trigger bounty placement.
* REP System : Player notoriety as a smuggler decreases faction or settlement REP when detected. Higher notoriety → stronger REP penalty.
* Suspicion System : Guards and authorities detect suspicious behavior around players carrying contraband or near smuggler NPCs.
* Bribe System : Can be used to bypass detection temporarily; cost depends on NPC corruption/loyalty.
* Corruption & Loyalty System : Interacts indirectly; bribed NPCs may aid smuggling in rare cases.

---

		9. Safety & Anti-Abuse

* No multi-player competition within Smuggling Network.
* Cooldowns prevent repeat exploitation of escapes or high-risk missions.
* Black Market pricing is flexible but tied to rank and NPC rules to avoid economy breaking.
* Offline decay prevents players from “parking” missions indefinitely.

---
