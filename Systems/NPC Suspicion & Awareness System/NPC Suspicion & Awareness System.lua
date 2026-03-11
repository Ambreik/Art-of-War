			NPC Suspicion & Awareness System

		SECTION 1 – CORE SUSPICION MODEL

---

		1. SYSTEM PURPOSE

	The NPC Suspicion & Awareness System simulates :
• How cities detect criminal behavior
• How rumors spread
• How guards react
• How NPCs remember players
• How intelligence escalates to bounty hunters

	The system integrates with :
* Reputation System
* Bounty Hunter System
* Bribery System
* Permit Inspection System
* Disguise Item System
* Future Smuggling System
* Future Corruption & Loyalty System

	It only operates in major settlements and cities listed in your location file.

---

		2. SUSPICION DATA STRUCTURE

	Suspicion exists in three layers.

---

		A. Local NPC Suspicion

	Tracks suspicion between a player and one NPC.

```lua
LocalSuspicion[NPC_ID][Player_ID] = {
    value,
    lastSeenTime,
    crimes = {},
    memoryStrength
}
```

Purpose :
• Dialogue changes
• NPC reporting
• Local reactions

Example : A Guard sees you steal → local suspicion +120.

---

		B. City Intelligence Profile

	Central intelligence of settlement.

```lua
CitySuspicion[City_ID][Player_ID] = {
    value,
    alertLevel,
    crimes = {},
    lastReportTime,
    investigationState,
    reputationModifier
}
```

Purpose :
• Patrol intensity
• Permit checks
• Guard recognition
• Service denial
• Bounty escalation

Major NPCs push data here.

---

		C. Global Intelligence Record

	Activated only when:

• Suspicion ≥801
OR
• Severe crime committed

```lua
GlobalSuspicion[Player_ID] = {
    value,
    knownCities,
    bountyEligible,
    lastUpdate
}
```

Purpose :
• Cross-settlement alerts
• Bounty Hunter System trigger

---

		3. SUSPICION SCALE

Range: 0 – 1000

	Alert Levels : 

| Level      | Range     | Meaning |
| ---------- | --------- | ------- |
| Calm       | 0-100     |         |
| Watched    | 101-250   |         |
| Suspicious | 251-500   |         |
| Wanted     | 501-800   |         |
| Hunt Order | 801-1000+ |         |

These control NPC reactions.
Players see bars, not numbers.

---

		4. SUSPICION GAIN

	Suspicion comes from triggers.
	Every trigger has :

```lua
suspicionGain = BaseValue × Modifiers
```

---

	Common Base Values : 

| Action            | Base Suspicion |
| ----------------- | -------------- |
| Trespassing       | 25             |
| Failed Permit     | 40             |
| Minor Theft       | 60             |
| Pickpocket        | 80             |
| Assault NPC       | 120            |
| Kill Civilian     | 250            |
| Kill Guard        | 400            |
| Major Crime Quest | 300-600        |

	Values adjustable in config.

---

		Modifiers

	Reputation Modifier

From Reputation System.
Example :

| REP Tier   | Modifier |
| ---------- | -------- |
| Exalted    | ×0.7     |
| Friendly   | ×0.85    |
| Neutral    | ×1.0     |
| Unfriendly | ×1.2     |
| Hostile    | ×1.5     |

High REP slows suspicion growth.

---

	Disguise Modifier

Depends on disguise quality and faction match.
Example :

| Disguise Quality | Modifier |
| ---------------- | -------- |
| Perfect Match    | ×0.3     |
| Good             | ×0.6     |
| Poor             | ×0.9     |
| Wrong Faction    | ×1.3     |

---

	Bounty Modifier

Players with bounty get increased suspicion gain.
Example :

```lua
modifier = 1 + (BountyValue / MaxBounty × 0.5)
```

---

	Corruption Modifier (future system)

Corrupt city → suspicion slower
Loyal city → suspicion faster

---

		5. SUSPICION DECAY

	Two decay types.

---

		A. Short-Term Decay

Runs continuously using in-game time.
Example :

| Zone Type  | Decay Rate    |
| ---------- | ------------- |
| Same City  | –0.2 / minute |
| Other City | –0.5 / minute |
| Wilderness | –1.0 / minute |

Decay stops if new crimes occur.

---

		B. Long-Term Rumor Fade

Runs every 2-3 in-game weeks.
Applies to:

• CitySuspicion
• GlobalSuspicion minor crimes

Formula example:

```lua
value = value × 0.75
```

Major crimes fade slower:

```lua
value = value × 0.90
```

Legendary crimes never fade.
This continues while player offline.

---

		6. CROSS-SETTLEMENT ESCALATION

	Level 1 – Local

0-500 → Only current city knows.

---

	Level 2 – Regional

501-800 → Nearby settlements informed.

	Through :
• Governors
• Envoys
• Military reports
• Bard rumors

	Recognition faster.

---

	Level 3 – Global

801+ → All major settlements alerted.

Triggers Bounty Investigation Phase.

---

		7. BOUNTY TRIGGER (B + C RULE)

	When suspicion ≥801:
Player enters "Investigation Phase".

	Conditions for bounty :
• Severe crime → instant bounty
OR
• Suspicion ≥801 for X in-game hours
OR
• Repeated crimes during investigation

Otherwise suspicion can drop.
This integrates with your existing Bounty Hunter System.

---

		8. CAPITAL CITY SPECIAL RULE

	In Middlean Islands Capital :
• All NPCs are intelligence nodes
• Suspicion spreads instantly
• Investigation timer shorter
• Global alert faster

Smugglers provide escape routes.
This makes the capital dangerous.

---

		9. NPC MEMORY

	NPC remembers players based on memoryStrength.
	Example:

| NPC Type      | Memory    |
| ------------- | --------- |
| Guard         | Strong    |
| Tavern Keeper | Medium    |
| Bard          | Medium    |
| Vendor        | Weak      |
| Citizen       | Very Weak |

	Memory decays with rumor fade.

--------------------------------------------------------------------------------------------------------------------------------------------------------------------


			SECTION 2 – NPC Awareness & Intelligence Propagation

	This section defines how NPCs detect players and share information.
	This is the heart of stealth gameplay.

---

		2.1 Detection Types

	NPCs detect players through three channels :
1. Sight Detection
2. Sound Detection
3. Rumor Detection

	Each type adds suspicion differently.

---

	Sight Detection

Used by :
* Guards
* Military
* Arena Managers
* Governors
* Some Vendors
* Tavern Keepers
* Bards
* Capital city civilians

Sight checks :
✔ Player visible
✔ Distance
✔ Lighting
✔ Disguise quality
✔ Movement type
✔ Reputation

	Example formula :

```lua
SightScore = BaseSight × LightModifier × DisguiseModifier × MovementModifier
```

	Examples :

| Situation        | Modifier |
| ---------------- | -------- |
| Night            | ×0.7     |
| Bright day       | ×1.2     |
| Running          | ×1.3     |
| Sneaking         | ×0.6     |
| Perfect disguise | ×0.3     |

If SightScore > Threshold → NPC detects suspicious behavior.

---

	Sound Detection

Used by :
* Guards
* Tavern Keepers
* Bards
* Civilians
* Criminal NPCs

Triggered by :
• Fighting
• Running in restricted zones
• Lockpicking
• Breaking doors
• Spell casting

	Sound radius example :

| Action    | Radius |
| --------- | ------ |
| Running   | 8m     |
| Combat    | 15m    |
| Explosion | 30m    |

NPC hears → small suspicion gain + rumor flag.

Sound spreads faster in Capital City.

---

	Rumor Detection

Used by :
* Tavern Keepers
* Bards
* Vendors
* Criminal NPCs
* Envoys
* Governors

Rumors come from :
• Witness reports
• Bard stories
• Tavern gossip
• Guard reports
• Smuggler whispers

Rumor adds small suspicion but spreads widely.

	Example :
Pickpocket seen → +80 local
Rumor spreads → +10 city-wide

Rumor strength decays quickly.

---

		2.2 Awareness Radius

	Each NPC has awareness radius.
	Example :

| NPC Type      | Radius                |
| ------------- | --------------------- |
| Guard         | 15m sight / 20m sound |
| Tavern Keeper | 10m sight / 25m rumor |
| Bard          | 8m sight / 30m rumor  |
| Governor      | 20m sight / 50m rumor |
| Vendor        | 6m sight / 10m rumor  |
| Criminal NPC  | 10m sight / 25m rumor |

Capital City multiplies radius by 1.5.
This makes it harder to hide.

---

		2.3 NPC Awareness States

	NPC awareness has stages :
1. Idle
2. Curious
3. Suspicious
4. Alerted
5. Reporting
6. Hostile

	Example :
Player sneaks → Guard becomes Curious
Player steals → Guard Suspicious
Guard sees weapon → Alerted
Guard calls others → Reporting

Each stage adds suspicion differently.

---

		2.4 Reporting Chains

	Information moves through chains, not instantly everywhere.
	This is critical realism.
	Example chain :

Tavern Keeper → Local Guard → City Captain → Governor → City Intelligence
Time delays based on NPC type.

	Example delays :

| NPC Type      | Report Delay    |
| ------------- | --------------- |
| Guard         | Instant         |
| Tavern Keeper | 2 minutes       |
| Bard          | 5 minutes       |
| Vendor        | 10 minutes      |
| Citizen       | Random 0-20 min |

Capital city reduces delays.

---

		2.5 City Intelligence Network

	Major nodes push info to CitySuspicion.
	Major nodes list :

* Guardians
* Military
* Arena Manager
* Mercenary Masters
* Commander of Realm
* Regional Governors
* Envoys
* Tavern Keepers
* Bards

	Each node has information strength.
	Example :

| NPC Type      | Info Strength |
| ------------- | ------------- |
| Guard Captain | 100%          |
| Governor      | 100%          |
| Arena Manager | 80%           |
| Tavern Keeper | 60%           |
| Bard          | 50%           |
| Vendor        | 20%           |

	Strength multiplies suspicion sent to city.

---

		2.6 Vendor Light Awareness

	Vendors behave differently.
	They :

✔ Raise prices
✔ Refuse service
✔ Whisper rumors
✔ Call guards if violence

	But they do NOT store long-term memory.
	Their reports are weak and delayed.
	This preserves gameplay freedom.

---

		2.7 Criminal Counter-Intelligence

	Outlaw NPCs also track suspicion.
	They detect :

✔ High suspicion players
✔ Wanted players
✔ Low reputation players

	They can :
✔ Offer escape
✔ Sell fake permits
✔ Hide identity
✔ Spread false rumors

	Example :
Smuggler lowers CitySuspicion by 50 but raises OutlawRep.
This connects to Smuggling System later.

---

		2.8 False Information Mechanics

	NPCs can be bribed or corrupted to spread lies.

	Example :
Bribe Tavern Keeper → false rumor → –20 suspicion.
But if discovered → +200 suspicion.
Later integrates with Corruption System.

---

		2.9 Capital City Network Rules

	In Middlean Islands Capital :

✔ All NPCs share instantly
✔ Rumor radius huge
✔ Investigation faster
✔ Guards spawn faster
✔ Smuggler secret exits essential

	This city becomes a true stealth challenge.

---

		2.10 Edge Cases

	Examples :
• Player commits crime in disguise → suspicion applied to disguise faction first
• Player logs out → investigation continues
• Multiple players crime → suspicion shared among witnesses
• Player framed → false rumor system
• NPC killed before report → info lost

	These will be expanded in Section 7.

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

			SECTION 3 – NPC Behavior by Suspicion Level

---

		3.1 PURPOSE OF THIS SECTION

	This section defines :

• How NPCs react to players based on "Suspicion Level"
• Which NPC types react and how
• When guards chase / kill
• When debuffs are applied
• How information spreads through settlements
• How rumors fade
• How this integrates with Bounty Hunter + Reputation

	This is the AI brain of the Criminal & Authority System.

---

		3.2 SUSPICION SCALE OVERVIEW

	Proposed Scale : 0 – 1000 Suspicion

	This gives enough precision for :
• Small crimes
• Major crimes
• Regional tracking
• Bounty escalation

---

	Suspicion Tiers : 

| Tier | Value    | Status             |
| ---- | -------- | ------------------ |
| T0   | 0–49     | Clean Citizen      |
| T1   | 50–149   | Rumored            |
| T2   | 150–300  | Suspicious         |
| T3   | 301–500  | Wanted             |
| T4   | 501–800  | Dangerous Criminal |
| T5   | 801–1000 | Legendary Outlaw   |

---

		3.3 NPC GROUPS LINKED TO SYSTEM

		From NPC list :

	Authority NPCs : 
• Guardians
• Military Personnel
• Arena Managers (official duels / PvP)
• Regional Governors & Envoys
• Commander of Realm
• Mercenary Masters (Bounty Hunters)

	Civilian NPCs (Information Network) : 
• Tavern Keeper
• Bard
• Some Vendors

	Criminal Network NPCs : 
• Outlaw Recruiter
• Smuggler NPC
• Night Thieves

	These NPCs share information through the central rumor network.

---

		3.4 NPC BEHAVIOR BY SUSPICION LEVEL

---

	T0 – CLEAN CITIZEN (0–49)

	NPC Reaction : 
• Normal services
• Normal dialogue
• Bards praise hero stories
• Tavern Keepers give tips
• Guards ignore player

	System Notes : No rumor entries.

---

	T1 – RUMORED (50–149)

	Rumors begin.

	NPC Reaction :
• Tavern Keeper: cryptic lines
• Bard: sarcastic songs
• Vendors: +5% prices
• Guards: idle observation

	Information Flow : 
NPCs store rumor in settlement memory.

	Rumor Fade : 
If no crimes → fades after 2–3 in-game weeks.

---

	T2 – SUSPICIOUS (150–300)

	Player flagged locally.

	NPC Reaction : 
• Guards watch player
• Arena Manager may deny entry
• Mercenary Master logs name
• Tavern Keeper may warn guards

	Civilian Behavior : 
• Vendors limit rare items
• Bards spread rumors

	Criminal NPC Reaction : 
• Outlaw Recruiter may approach player.

---

	T3 – WANTED (301–500)

	Player is considered criminal.

	NPC Reaction : 
• Guards follow player
• Military patrol shadows player
• Commander of Realm logs activity
• Envoys alert nearby towns

	BUT : 
Guards only attack if:
✔ Player commits crime again
✔ Player resists inspection
✔ Player enters restricted zone

---

	T4 – DANGEROUS CRIMINAL (501–800)

	Player becomes city threat.

	NPC Reaction : 
• Guards attempt arrest → kill on resistance
• Military squads patrol
• Arena Manager bans player
• Vendors refuse service
• Tavern Keeper denies rest

	Criminal NPC Reaction : 
• Smugglers offer escape paths
• Night Thieves may assist player

	System Effect : 
Player becomes known in nearby settlements.

---

	T5 – LEGENDARY OUTLAW (801–1000)

	Now linked to Bounty Hunter System.

	NPC Reaction : 
• Guards attack on sight
• Military hunts player
• Mercenary Masters activate bounty
• Regional Governors spread alert globally

	Capital City Special Rule

	In "Capital City – Middlean Islands Region" :
👉 Entire city uses global alert meter
👉 Smugglers open secret escape routes
👉 Hardest place to survive

---

		3.5 WHO CHASES THE PLAYER

	As was decided :

✔ ONLY Guardians + Military chase

No other NPCs chase.

Others only:
• Alert
• Refuse service
• Spread rumors

This keeps gameplay fair.

---

		3.6 WHEN PLAYER IS CAUGHT

	Was decided :
* Guards kill player, not arrest.

	After death :
* Player respawns randomly outside city walls.

---

	On Resurrection – Apply Debuffs

	Main Debuff : "Criminal Charge"

Effects :
• Loss of profession trainers
• Vendors refuse repairs
• Quest givers locked
• Lose HERO title
• Cannot enter major settlements
• Fee deducted (can go negative)
• Teleport outside gates
• Movement speed penalty
• Stamina penalty
• Guards hostile on re-entry

	Also :
* Item durability reduced heavily.

---

		3.7 OTHER DEBUFFS INTEGRATION

	NPC system can apply them based on event.

---

	Detection Debuffs : 

• Branded by the Watch
• Marked by the Pack
• Hunted by Moonlight
• Lingering Bloodtrace

	Triggered by :
• Guards detecting disguise
• Werewolves tracking scent
• Investigator NPCs

---

	Bribery Debuffs : 
• Bribery Fatigue
• Rumored Corruptor
• Betrayed Bribe
• Corruption Heat (regional)

	Triggered by :
• Failed bribery attempts.

These affect economy + reputation.

---

	Violence Debuff : 
• NPC Aggression Penalty

Triggered by killing NPCs.

	This links with "Reputation System" strongly.

---

		3.8 INFORMATION NETWORK

	NPCs act like a web.

	Example:
* Tavern Keeper hears rumor → tells Bard → Bard sings → Guard hears → adds suspicion.

	Each NPC type has Information Strength :

| NPC           | Info Strength    |
| ------------- | ---------------- |
| Commander     | 100%             |
| Governor      | 90%              |
| Guardian      | 80%              |
| Tavern Keeper | 70%              |
| Bard          | 60%              |
| Vendor        | 40%              |
| Smuggler      | criminal network |

	This determines rumor speed.

---

		3.9 RUMOR FADE SYSTEM

	As was requested :
* Rumors fade every 2–3 weeks (in-game timer).

	Works even if player offline.

	Effects :
• Suspicion slowly decreases
• NPC hostility reduces
• Name removed from other settlements

	BUT not if :
✔ Player commits crime again
✔ Active bounty exists

---

		3.10 NPC MEMORY SYSTEM

	Each settlement stores :
• Player name
• Suspicion value
• Crime type
• Last seen time

	After fade timer → memory removed.
	This prevents permanent stress.

---

		3.11 SPECIAL NPC BEHAVIOR

---

	Tavern Keeper

	Can:
• Warn player quietly
• Alert guards secretly
• Offer outlaw contacts at high REP

Matches Tavern Keeper NPC file.

---

	Bard

	Can:
• Spread rumors faster
• Reduce suspicion if bribed
• Start city-wide rumor events

---

	Mercenary Master

Links directly to Bounty Hunter System.

At 801+ :
Player added to bounty board.

---

	Commander of Realm

* Admin NPC.
* But civilians see normal NPC.

Can assist guards during events.

---

## Outlaw Recruiter

Appears when suspicion >150.

Offers outlaw faction quests.

---

	Smuggler NPC

Helps escape in high suspicion zones.
Especially in Capital City.

---

	Night Thieves

Steal items from criminals OR victims.
Adds chaos.

---

		3.12 CAPITAL CITY SPECIAL MODE

	Middlean Islands Capital City :
• Global alert meter
• Smuggler escape tunnels
• Secret outlaw portals
• Military heavy presence

This becomes end-game stealth zone.

-------------------------------------------------------------------------------------------------------------------------------------------------------------------

			SECTION 4 – Player Interaction Mechanics

	This section defines every way the player can interact with the "Authority & Suspicion System".
	It connects directly with :
• REP System
• Bounty Hunter System
• Disguise System
• Smuggling System
• NPC AI System
• Settlement Rumor Network

	This is the mechanical layer between player actions and NPC reactions.

---

		4.1 CORE PRINCIPLE

	Every interaction modifies three main values :

1. Suspicion (0–1000)
2. Local Reputation (per settlement - when applied)
3. Authority Awareness

	These values determine NPC behavior.

---

		4.2 DISGUISE INTERACTION

	Disguises allow players to mask identity inside settlements.
	
	Connected NPCs :
• Guardians
• Military Personnel
• Tavern Keeper
• Bard
• Arena Manager
• Commander of Realm
• Mercenary Masters
• Regional Governors
• Outlaw Recruiters
• Smugglers

---

		4.2.1 Types of Disguises

• Clothing disguise
• Faction disguise
• Voice mimicry
• Scent masking
• Illusion magic

	Each disguise has :
• Quality Level
• Detection Resistance
• Duration
• Cooldown

---

		4.2.2 Detection Mechanics

	Detection depends on :
• NPC Rank
• Suspicion Level
• Player Reputation
• Distance
• Lighting / Time of day
• Special NPC senses (werewolves, vampires, investigators)

---

		4.2.3 Failure Results

	When disguise fails → apply debuffs :

• "Branded by the Watch"
• "Hunted by Moonlight"
• "False Authority"
• "Lingering Bloodtrace"

	Effects:
• Guards detect from +40% range
• Disguises disabled
• Merchant block
• Bounty Hunters spawn more often

---

		4.2.4 Successful Disguise

	If disguise holds :
• Suspicion reduced slowly
• Player can use services
• Guards treat player as neutral

	But rumor memory still exists.

---

		4.3 BRIBERY INTERACTION

	Players may bribe NPCs to avoid trouble.

	Available NPCs :
• Tavern Keeper
• Bard
• Governors
• Some Vendors

	NOT bribable :
• Guards	
• Commander of Realm
• High-rank military
• Legendary NPCs
• Arena Manager
• Envoys

---

		4.3.1 Bribe Types

• Silence bribe
• Inspection skip
• Suspicion reduction
• Permit forgery
• Rumor erase

---

		4.3.2 Bribe Success Formula

	Based on :
• Player REP
• NPC Loyalty
• Corruption Level of city
• Suspicion Level
• Amount offered

---

		4.3.3 Failure Effects

	Apply debuffs :
• "Bribery Fatigue"
• "Rumored Corruptor"
• "Betrayed Bribe"
• "Corruption Heat"

	These raise prices and suspicion.

---

		4.3.4 Capital City Special Rule

	In Middlean Islands Capital City :
* Bribes are less effective because corruption is high but controlled by smugglers.
* Players must use smuggler network instead.

---

		4.4 PERMIT INSPECTION INTERACTION

	Guards can stop players and demand permits.

	Example permits :
• Weapon permit
• Smuggling license
• Arena combat license
• Caravan pass
• Magic-use permit

---

		4.4.1 Inspection Triggers

	Triggered when :
• Suspicion >150
• Carrying illegal goods
• Wearing disguise
• Entering restricted zone
• Random patrol event

---

		4.4.2 Player Options

1. Show permit
2. Bribe
3. Lie
4. Run
5. Attack

	Each option affects suspicion differently.

---

		4.4.3 Failure Effects

	If caught :
• Suspicion increase
• Guards follow player
• Possible death → "Criminal Charge"

---

		4.5 BOUNTY SYSTEM INTERACTION

	Connected NPCs :
• Mercenary Masters
• Guardians
• Military
• Tavern Keepers
• Bards

	When Suspicion ≥801 :
Player added to bounty list.

---

		4.5.1 Player Effects

• Bounty Hunters track player
• NPC hostility global
• Cannot hide in major cities

---

		4.5.2 Capture Result

	When killed by authority or bounty hunter :
* Apply "Criminal Charge"
* Spawn outside city walls
* Durability loss

---

		4.6 REPUTATION INTERACTION

	Connected to your REP System.

	Each settlement tracks :
• Lawful Reputation
• Outlaw Reputation

---

		4.6.1 Positive Actions

• Helping guards
• Reporting criminals
• Paying taxes
• Winning arena officially

	Reduces suspicion.

---

		4.6.2 Negative Actions

• Bribery
• Smuggling
• Theft
• Killing NPCs

	Apply "NPC Aggression Penalty" and REP loss.

---

		4.6.3 Reputation Override

	High REP can :
• Delay guard attacks
• Lower bribe cost
• Unlock special dialogue

	But cannot erase major crimes.

---

		4.7 SMUGGLING SYSTEM HOOKS

	Connected NPCs :
• Smuggler NPCs
• Outlaw Recruiters
• Night Thieves

---

		4.7.1 Smuggler Services

• Escape tunnels
• Fake permits
• Identity change
• Rumor reduction
• Hidden city routes

	Especially strong in "Capital City".

---

		4.7.2 Risk

	If smuggler betrays player :
* Apply "Betrayed Bribe"
* Spawn elite patrol.

---

		4.8 CORRUPTION & LOYALTY HOOKS

	Each NPC has :
• Loyalty to law
• Corruption tolerance
• Fear level

	These affect interaction outcomes.

---

		4.8.1 Corruption Level of City

High corruption → bribes easier
Low corruption → bribes harder

City events can change corruption.

---

		4.8.2 Loyalty Events

	Players can influence loyalty :
• Help guards → loyalty increases
• Help smugglers → loyalty decreases

	This affects entire settlement behavior.

---

		4.9 SPECIAL INTERACTIONS

---

	Tavern Keeper : 
• Gives rumor info
• Can hide player briefly
• May secretly report player

---

	Bard : 
• Spreads rumors faster
• Can reduce suspicion through songs
• Can expose disguised players

---

	Arena Manager : 
• Allows legal PvP
• Illegal fights increase suspicion

---

	Commander of Realm : 
Admin NPC but part of civilian network.
Can trigger events that affect suspicion globally.

---

		4.10 PLAYER ESCAPE OPTIONS

	Players can escape by :
• Going to wilderness taverns
• Smuggler hideouts
• Outlaw settlements
• Neutral Outland zones

	System not active there.

-------------------------------------------------------------------------------------------------------------------------------------------------------------------

			SECTION 5 – ZONE RULES

	This section defines where the NPC Suspicion System is active, how it behaves differently per zone, and how it connects settlements into a rumor network.

---

		5.1 ZONE TYPES

	Every location in the world must be tagged with a "ZoneType".

	This tag controls :
• Suspicion gain
• Rumor propagation
• NPC memory sharing
• Guard behavior
• Bounty activation

---

		5.1.1 ZoneType List

		1. AUTHORITY ZONES

	Major settlements where system is fully active.
	Examples include towns like "Goldcap Town", "Tandara City", "Ridley Village", "Frozenwall Citadel", "Silvermoon City", "Berlang Fortress".

	Rules:
• Suspicion fully tracked
• Guards patrol
• Permit inspections active
• Bribery allowed
• Rumor network active
• NPC memory stored

	This is the default mode.

---

		2. ESCAPE ZONES

	Locations where system is disabled or heavily reduced.
	
	Examples : 
• Wilderness Taverns
• Outlaw camps
• Deep forest villages
• Neutral monster territories

	Like taverns such as "Little Knot Tavern" or "Stonewall Tavern".

	Rules:
• Suspicion freezes
• Guards do not spawn
• Bounty Hunters may not enter (unless special event)
• Rumors do not spread

	These zones are essential for player recovery.

---

		3. CIVILIAN-EXCLUDED ZONES

	Some settlements exclude civilian NPCs from suspicion.

	Example rule from design : NPCs from civilian area are not included.
	Examples include cities like "Dravenhold" and "Dreadhollow Fortress" civilian districts.

	Rules :
• Only Guards & Military track suspicion
• Tavern Keepers still track suspicion
• Vendors ignore suspicion

	Purpose : Players can still trade while under suspicion.

---

		4. CAPITAL CITY OVERRIDE

	The Capital City in Middlean Islands is special.
	Example: "Capital City of Middlean Islands"

	Rules:
• Entire island shares suspicion memory
• NPCs all participate
• Rumor network instant
• Smuggler escape paths exist
• Bribes expensive
• Bounty threshold lower

	This becomes the most dangerous city.

---

		5. DYNAMIC EVENT ZONES

	Temporary rule changes during events.

	Examples :
• Festival
• War
• Siege
• Royal visit

	Zone rules may change dynamically.

	Example:
Festival → suspicion gain reduced
Siege → suspicion gain doubled

---

		6. WARTIME OVERRIDE

	When factions are at war.
	Examples between Knights vs Pindar or Guard factions.

	Rules:
• Enemy faction instantly suspicious
• Permit checks increased
• Curfew active
• Guards more aggressive

	This integrates with your faction alignment system.

---

		5.2 ZONE DATA STRUCTURE

	Each zone must store :

ZoneName
ZoneType
SettlementLevel
RumorNetworkID
GuardPresence
CivilianExclusion
SmugglerPresence
EventModifier

Example Lua structure:

Zone = {
name = "Goldcap Town",
type = AUTHORITY,
rumorNetwork = FanthekarCluster,
guardLevel = 3,
civilianExcluded = false,
smugglerRoutes = true
}

---

		5.3 RUMOR NETWORK CLUSTERS

	Settlements are grouped into rumor clusters.

	Examples :
Fanthe’kar cluster
Garland cluster
Frozen Territory cluster

If Suspicion ≥400:

Nearby settlements are warned.

If ≥600:

Entire region warned.

If ≥801:

Global Bounty network activated.

---

		5.4 ESCAPE ZONE RULES

	When player enters escape zone :
• Suspicion stops increasing
• Guard memory decays faster
• Disguises become effective again

	But :
• Bounty still active globally.

---

		5.5 CIVILIAN EXCLUSION DETAILS

	Excluded NPCs :
• Normal Vendors
• Story NPCs
• Low-rank civilians

	Still active NPCs :
• Tavern Keepers
• Mercenary Masters
• Arena Managers
• Guards

	Reason : Players must still be able to repair gear and prepare.

---

		5.6 CAPITAL CITY SPECIAL RULES

	Because you wanted extreme difficulty :

	Inside Capital City :
• NPCs share suspicion instantly
• Smugglers provide secret exits
• Guards patrol rooftops
• Bounty hunters spawn faster

	Rumor fading slower here.
	This matches your idea of smugglers dominating underground routes.

---

		5.7 DYNAMIC EVENTS

	Examples :
Royal Visit → inspections every minute
Corruption Purge → bribery disabled
Smuggler Festival → smuggling easier

	These events change zone modifiers.

---

		5.8 WARTIME RULES

	When war flag active :
• Neutral NPCs become suspicious faster
• Patrol size doubled
• Curfew at night
• Entry permits required

	This integrates with faction wars.

---

		5.9 OFFLINE TIMER RULE

	Suspicion decays even if player offline.

	Zone type affects decay :
Authority Zone → normal decay
Escape Zone → faster decay
Capital City → slower decay

	Rumor fade every 2–3 weeks in-game.

---

		5.10 EDGE CASES

• Player logs out in city → suspicion stored
• Player dies outside → rumor persists
• Player teleports → rumor follows

	Unless identity changed by smuggler.

-------------------------------------------------------------------------------------------------------------------------------------------------------------------


			SECTION 6 – MEMORY & PERSISTENCE

	This section defines how Suspicion information is stored, shared, decayed, and cleaned across NPCs and settlements.

	It connects directly with :
• REP System
• Bounty Hunter System
• NPC AI System
• Smuggling System
• Zone Rules
• Offline timers

	And it supports your rule :
👉 Rumors fade every 2–3 in-game weeks
👉 System only active in major settlements
👉 Capital City shares full memory

---

		6.1 MEMORY TYPES

	There are three memory layers in the system.
	Each layer exists because MMO scale needs hierarchy.

---

		6.1.1 NPC MEMORY (Short-Term)

	Stored inside individual NPC.

	Tracks :
• Last suspicious action
• Player disguise seen
• Bribe attempt
• Attack witnessed
• Permit inspection result

	Lifetime :
5–30 minutes in-game time.

	Purpose :
Allows NPCs to react realistically.

	Example :
A Tavern Keeper in "Ridley Village" remembers player bribery for 20 minutes.

---

		6.1.2 SETTLEMENT MEMORY (Mid-Term)

	Stored in city database.

	Tracks :
• Player Suspicion score
• Local reputation impact
• Crimes committed
• Bounty eligibility
• NPC deaths

	Lifetime :
2–3 in-game weeks before rumor fade.

	Example :
City like "Tandara City" remembers theft rumors for weeks.

---

		6.1.3 GLOBAL MEMORY (Long-Term)

	Stored in world database.

	Tracks :
• Active bounties
• Major crimes
• Legendary crimes
• Commander of Realm investigations

	Lifetime :
Permanent until cleared.

	Example :
Crimes in "Capital City" in Middlean Islands propagate globally.

---

		6.2 NPC MEMORY DECAY

	NPC memory fades automatically.

---

		6.2.1 Decay Rules

	Decay depends on NPC type :
Guards → slow decay
Tavern Keeper → medium decay
Bard → medium but spreads rumor first
Vendors → fast decay

	NPCs with high rank remember longer.

---

		6.2.2 Triggered Forgetting

	Memory may reset if :
• Player bribes successfully
• Player saves NPC life
• Reputation high
• Smuggler alters identity

---

		6.3 CITY DATABASE PERSISTENCE

	Each settlement keeps a player record.

	Stored fields :
PlayerID
SuspicionValue
LastSeenTime
CrimeList
WitnessCount
BountyFlag
RumorIntensity

	Example towns like "Goldcap Town" or "Frozenwall Citadel" maintain their own database.

---

		6.3.1 Cluster Sharing

If Suspicion ≥400:

Neighbor settlements share rumor.

	Example :
Crime in "Silvermoon City" spreads to nearby cities.

---

		6.3.2 Capital City Rule

	Capital City shares instantly with entire island.
	Smugglers become critical here.

---

		6.4 OFFLINE RUMOR FADING

	You requested realistic timers.
	This uses in-game clock, not real time.

---

		6.4.1 Rumor Fade Cycle

	Every 2–3 in-game weeks :
• Suspicion reduced gradually
• Witness reliability reduced
• Old crimes archived

	Unless player commits new crimes.

---

		6.4.2 Offline Player Handling

	While offline :
Suspicion decays normally.

	Reason :
Player should not be punished for logging off.

	But :
Active Bounty does NOT decay.

---

		6.5 INVESTIGATION TIMERS

	Certain crimes trigger investigations.

	Triggered by :
• Murder
• High bribe
• Permit forgery
• Commander investigation

	Investigation NPCs may spawn.

---

		6.5.1 Investigation Duration

Minor crimes → 1–2 in-game days
Major crimes → 1–2 weeks

	During investigation :
	Guards patrol more.

---

		6.5.2 Investigation Results

	Outcome can be :
• Suspicion increase
• Bounty placed
• Case dropped
• Player cleared

---

		6.6 DATA CLEANUP

	Necessary for MMO performance.

---

		6.6.1 Cleanup Rules

	Delete records if :
• Suspicion <50
• No crimes in 3 in-game weeks
• Player reputation high
• NPC witnesses dead

	Archive instead if major crime.

---

		6.6.2 Archive System

	Stores legendary crimes permanently.

	Used for :
Bard stories
Historical quests
Commander reports

---

		6.7 PERFORMANCE RULES

	Because MMO scale is critical.

---

		6.7.1 Memory Limits

	Each NPC stores only :
• Last 10 players
• Last 20 events

	City stores only :
• Players seen last 3 weeks

	Global stores only bounties.

---

		6.7.2 Distance Checks

	NPC memory updates only if player near.
	Prevents server overload.

---

		6.7.3 Batch Updates

	Rumor propagation runs every X minutes.
	Not real-time.
	Except Capital City.

---

		6.8 SMUGGLING INTERACTION

	Smuggler NPCs can :
• Reset settlement memory
• Change PlayerID alias
• Remove witness count

	But expensive.
	Especially in cities like "Berlang Fortress" or "Frozenwall Citadel".

---

		6.9 EDGE CASES

Player logs out during chase → memory persists
Player dies → memory persists
Player changes faction → memory reduced but not erased
Player disguises → memory suppressed temporarily

-------------------------------------------------------------------------------------------------------------------------------------------------------------------


			SECTION 7 – EDGE CASES & ADVANCED MECHANICS

	This section defines exceptions, advanced interactions, and special scenarios that are not handled by standard rules. It ensures the system feels realistic, 
scalable, and fair.

---

		7.1 FALSE ACCUSATIONS

	NPCs can misinterpret player actions, especially in crowded zones.

		7.1.1 Triggers
* Witness NPC is corrupt or distracted.
* Player in disguise but spotted vaguely.
* NPC memory decay or rumor misinterpretation.

		7.1.2 Mechanics
* Suspicion increases temporarily (+10–50 points)
* May trigger Rumor Network alerts within settlement.
* Can escalate to minor bounty if guards intervene.

		7.1.3 Player Options
* Pay bribe to correct accusation.
* Use smuggler network to reset rumor memory.
* High REP may reduce severity or prevent escalation.

---

		7.2 NPC CORRUPTION

	Some NPCs may aid criminals, misreport, or ignore crimes.

		7.2.1 Corrupt NPC Types

* Guards with high corruption tolerance
* Tavern Keepers / Bards
* Some Mercenary Masters (for illicit contracts)

		7.2.2 Effects

* Player escapes suspicion temporarily.
* Rumors can be suppressed locally.
* Bribe costs reduced.

		7.2.3 Risk
* Corrupt NPCs can betray player if bribery fails → "Betrayed Bribe".
* Can trigger mass panic if multiple crimes occur.

---

		7.3 FRAMED PLAYERS

	Players can be set up by other players or NPCs.

		7.3.1 Triggers
* Player carries stolen item planted by NPC/other player.
* Smuggler informs guards of false identity.
* Witness misreports action in crowded area.

		7.3.2 Mechanics
* Suspicion score rises instantly.
* Rumor network spreads false information (duration: 2–3 weeks).
* Guard / bounty hunters pursue.
* Requires investigation timer to resolve (see SECTION 6).

		7.3.3 Player Options
* Hire a smuggler or fixer to remove false suspicion.
* Bribe witness or guard to retract accusation.
* Complete special quest or task to clear name.

---

		7.4 DISGUISE DETECTION FAILURES

	Even high-level disguises can fail due to :
* NPC rank (Guard vs Low-level civilian)
* Suspicion level
* Lighting / Time of Day
* Nearby witnesses or magical perception

		7.4.1 Mechanics
* Partial detection → suspicion increment + small debuff (e.g., "Branded by the Watch" for short duration).
* Full detection → standard debuffs applied ("Hunted by Moonlight", "Criminal Charge").
* Detection probability scales with disguise quality vs NPC perception.

---

		7.5 MASS PANIC EVENTS

	Triggered when multiple crimes occur in same zone within short period.

		7.5.1 Triggers
* ≥3 high-suspicion actions in 5 minutes (kill, theft, assault)
* Rumor intensity ≥ 800 in settlement cluster

		7.5.2 Effects

* All Guards and Military NPCs switch to full alert
* Suspicion gain for all players rises +20–50%
* Bounty Hunters may spawn immediately
* Tavern Keepers / Bards spread panic rumors faster
* Can escalate to temporary lockdown in city gates

---

		7.6 WAR STATE LOGIC

	When factions are at war :
* Enemy faction players → suspicion automatically higher
* Guards / Military NPCs act with zero tolerance
* Permit checks doubled
* Bribes more expensive or impossible
* Rumor network prioritizes enemy crimes

	Special Cases :
* Neutral players committing crimes → may be mistaken for enemy → medium suspicion spike
* Corrupt NPCs → may aid enemy faction → risk of framing

---

		7.7 MULTIPLE PLAYER CRIMES

	Mechanics for several players committing crimes in same zone simultaneously :
* Suspicion and rumor scale with player group count
* Detection probability for each player increases if other members are detected
* Guard patrol size scales dynamically
* Rumor network flags entire group, can trigger mass bounty

---

		7.8 GROUP CRIME LOGIC

	Group actions affect system differently :
* Killing multiple NPCs → higher suspicion per member, but may split memory if witnesses partial
* Bribery / disguise used by group → success/failure depends on group leader’s REP / total bribe amount
* Smuggling / theft → group profit increases but also rumor intensity
* Bounty placement → higher for coordinated crimes
* Group faction alignment can affect whether NPCs target entire group or single member

---

		7.9 EDGE CASE RESOLUTION PRIORITY

	When multiple events coincide :

1. Capital City overrides → all rules amplified
2. War State → overrides normal suspicion scaling
3. Group crimes → apply highest member suspicion first
4. False accusation / framing → investigated independently
5. NPC corruption → may delay or invert enforcement

-------------------------------------------------------------------------------------------------------------------------------------------------------------------

			SECTION 8 – LUA FILE STRUCTURE

	This section defines the file and module layout for the NPC Suspicion & Awareness System, following your style of modular MMO systems.

---

		8.1 SuspicionManager.lua

	Purpose : Core mechanic for tracking player "Suspicion" and local reputation in each settlement.

	Responsibilities :
* Stores player suspicion score per settlement (0–1000 scale)
* Updates suspicion based on:
	* Player actions (combat, theft, bribery, disguise)
	* NPC reports
	* Zone modifiers
	* Event modifiers
* Interfaces with "CityIntelligence.lua" for rumor propagation
* Triggers threshold events:

	* 400 → nearby settlements alerted
	* 600 → regional alert
	* 801 → global bounty activation
* Applies relevant debuffs from other systems (Disguise, Bounty, Bribe)

	Integration :
* Uses "NPCReporting.lua" to receive NPC observations
* Calls "AwarenessManager.lua" to determine NPC detection chance
* Hooks into "IntegrationHooks.lua" for REP, Bounty, and Smuggling updates

---

		8.2 AwarenessManager.lua

	Purpose : Handles NPC detection, line-of-sight, and awareness checks.

	Responsibilities :

* Calculates detection probability based on:
	* NPC rank & perception
	* Player disguise quality
	* Player REP & notoriety
	* Environmental factors (lighting, crowd, zone type)
* Determines reaction type : passive, warning, pursuit, lethal
* Interfaces with "SuspicionManager.lua" for real-time suspicion updates
* Applies temporary NPC memory when witnessing player actions

	Integration :
* Hooks into "ZoneConfig.lua" for guard density and patrol rules
* Triggers "NPCReporting.lua" for rumor / witness propagation

---

		8.3 CityIntelligence.lua

	Purpose : Handles settlement-wide memory, rumor network, and persistence.

	Responsibilities :
* Stores per-city player records :
	* Suspicion value
	* Crimes committed
	* Bounty eligibility
	* Witness list
* Propagates rumors to neighboring settlements
* Handles decay:
	* Offline players
	* Rumor fading every 2–3 in-game weeks
* Special handling for "Capital City" : full island-wide memory & instant propagation

	Integration :
* Receives updates from "SuspicionManager.lua"
* Sends information to "NPCReporting.lua"
* Links with "IntegrationHooks.lua" for REP, Bribe, and Smuggling

---

		8.4 NPCReporting.lua

	Purpose : Core observer module; NPCs report player actions to system.

	Responsibilities :
* Logs NPC observations:
	* Suspicious behavior
	* Failed disguises
	* Bribery attempts
	* Permit violations
* Updates "SuspicionManager.lua" in real-time
* Adds witness memory to "CityIntelligence.lua"
* Can apply corruption logic: NPCs may misreport actions or suppress memory

	Integration :
* Linked to "AwarenessManager.lua" for detection events
* Works with "IntegrationHooks.lua" to apply cross-system effects

---

		8.5 ZoneConfig.lua

	Purpose : Defines zone-specific rules and modifiers for the system.

	Responsibilities :
* Defines "ZoneType" : Authority, Escape, Civilian-Excluded, Capital, Event, War
* Stores:
	* Guard presence
	* Smuggler routes
	* Event modifiers
	* Curfew / inspection frequency
* Handles zone-specific decay and rumor spread rates
* Overrides default behavior for "Capital City" and wartime conditions

	Integration :
* Called by "AwarenessManager.lua" for NPC patrol & detection rules
* Called by "SuspicionManager.lua" for action scaling

---

		8.6 IntegrationHooks.lua

	Purpose : Connects "Suspicion System" to other game systems.

	Responsibilities :
* Hooks for:
	* Reputation System → adjusts REP gain/loss based on suspicion
	* Bounty Hunter System → triggers bounty spawn
	* Disguise System → applies debuffs when detected
	* Bribe System → failure / success updates suspicion
	* Smuggling System → memory reset, hidden exits
	* Corruption & Loyalty System → modifies NPC loyalty, bribery cost
* Provides event listeners for world events, festivals, or war

	Integration :
* Called by "SuspicionManager.lua" and "CityIntelligence.lua" on player actions

---

		8.7 DebugTools.lua

	Purpose : Provides tools for developers and testers to visualize and debug system behavior.

	Responsibilities :
* Display:
	* Player suspicion per settlement
	* NPC memory logs
	* Rumor propagation paths
	* Active debuffs / status effects
* Test functions:

	* Force suspicion increase/decrease
	* Simulate disguise detection
	* Trigger zone overrides or mass panic events
* Performance monitoring for MMO-scale testing

	Integration :
* Accesses all other modules for testing purposes

---

		8.8 FOLDER LAYOUT (Recommended)

```
Systems/
└── NPC Suspicion System/
    ├── SuspicionManager.lua
    ├── AwarenessManager.lua
    ├── CityIntelligence.lua
    ├── NPCReporting.lua
    ├── ZoneConfig.lua
    ├── IntegrationHooks.lua
    └── DebugTools.lua
```

-------------------------------------------------------------------------------------------------------------------------------------------------------------------

