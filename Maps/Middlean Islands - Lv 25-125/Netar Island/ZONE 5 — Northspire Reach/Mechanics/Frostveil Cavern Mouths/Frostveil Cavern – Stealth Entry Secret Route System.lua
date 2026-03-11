			Frostveil Cavern – Stealth Entry Secret Route System

---

	Mechanic ID : "POI_FROSTVEIL_STEALTH_ROUTE_SYSTEM"

---

	Design Category : 
* Hidden Exploration Route
* Behavior-Reactive POI State
* Progression Enabler (Pre-Boss Layer)

---

		DESIGN INTENT (Important For Designers)

	This mechanic represents the "Respect the Hive" path.
Frostveil Cavern reacts to vibration and disturbance.
If players enter aggressively, the hive activates defensive behavior.
If players enter silently, the hive remains dormant — revealing deeper secrets.

	This system :
* Rewards coordinated stealth
* Creates alternate progression path
* Enables Seal Boss Event
* Provides exploration-tier exclusive rewards
* Connects cave to broader world systems

It is NOT a boss event.
It is NOT a farming route.
It is a conditional exploration state.

---

		ENTRY STATE DETECTION SYSTEM

	Entry Scan Window

Scan Trigger : First player crosses cave threshold
Scan Duration : 10 seconds
Scan Scope : All players within cave boundary


	System checks :
* Are all players in Stealth / Invisibility?
* Has any player generated combat threat?
* Has any crystal node been interacted with?
* Has sprint/vibration threshold been exceeded?

---

	If Entry Is NON-STEALTH

State : Hive Defensive Mode
Effects :
    • Regular insectoid mobs spawn
    • Secret Seal despawns
    • Hidden Chamber remains sealed
    • Stealth Route locked for 30 min


Design Purpose : Prevents brute-force players from accessing secret content.

---

	If Entry Is STEALTH / INVISIBLE

State : Hive Dormant Mode
Effects :
    • No monsters spawn initially
    • Ambient low hive hum plays
    • Hidden Chamber entrance unlocks
    • Secret Record Piece of Seal spawns deeper inside


	Important : If any player breaks stealth before chamber reached :
* Hive Defensive Mode activates immediately
* Seal despawns
* Route fails

---

		HIDDEN CHAMBER LOGIC

	Location : 
* Deeper inside cave
* Behind frost-veiled wall or mineral growth
* Only interactable in Dormant Mode

	Environment : 
* Warm vent currents
* Passive bioluminescent insects
* Egg clusters embedded in walls
* No hostile units unless provoked

---

	HIDDEN CREATURES

Behavior : Passive Until Attacked
Aggression : Retaliatory Only
Respawn : 60 minutes
Loot Table : Unique Drops Only

Purpose : These are guardians, not trash mobs.

	If attacked :
* Hive alert meter increases
* After 3 kills → Defensive Mode activates

Design Note : Players can choose peaceful exploration OR greed.

---

		UNIQUE DROP TABLE

	(Only Available In Dormant Mode)

	These items are exploration-exclusive and cannot drop if hive is active.

---

		Utility Items

	"Hammer of the Lord"
* Limited wilderness repair item (5 uses)
* Cannot be repaired
* High vendor value

Design Purpose : Encourages long expeditions.

---

	"Runed Repair Kit"
* Interacts with Blacksmith NPC REP system
* Grants +REP when used at Blacksmith

Integration : Links cave to Profession Teacher structure.

---

	Exclusive Pets

(Account Restriction: Only 1 of the 3 can be owned per account)

	"Frostveil Glowbug"
* Floating frost insect
* Emits dim icy aura
* Minor frost resistance aura

---

	"Thermal Cave Mite"

* Heals player slowly when near warm vents
* Encourages environmental positioning gameplay

---

	"Chitin Sproutling"

* Evolves if fed rare minerals
* Has unique evolution tree tied to mining profession

Design Note : These pets reinforce cave theme (minerals, frost, warmth).

---

		Recipes

	Profession-Linked : 
* Herbalism → Warmroot Extract Potion
* Cooking → Spiced Cave Beetle Skewers (Frost Resist Buff)
* Blacksmith → Chitin-Reinforced Boots
* Tailoring → Frostveil Silk Cloak
* Alchemy → Hive Resin Flask

Design Purpose : Encourages revisits even after boss cleared.

---

		Special NPC Spawn Item

	"Seal of Backup Boy’s Summon"

Effect : Spawns rare “Store Manager” NPC for 20 minutes.
Limit : 
	* 1 active per player.
	* Cannot use in PvP zones.
Design Purpose : High value utility drop for explorers.

---

	"Tavern Keeper’s Hidden Brew Recipe"

Can be delivered to Tavern Keeper NPC.
Unlocks : Secret buffs accessible only to Rank II+ players.
This integrates with Tavern Keeper REP system.

---

	Rare Materials : 
* Frostveil Resin
* Heated Crystal Core
* Ancient Hive Chitin
* Queen’s Venom Sac

	Used by :
* Legendary Blacksmith
* Alchemy Teachers
* Future Hive POIs

	These materials tie the stealth path to high-end crafting.

---

# 🔹 ACHIEVEMENTS

Silent Explorer
Enter cave without triggering Defensive Mode.

Hive Whisperer
Clear Hidden Chamber without killing passive creatures.

Seal Bearer
Successfully retrieve Seal without hive activation.

These reinforce intended playstyle.

---

		SYSTEM INTEGRATION

	This mechanic connects to :
* Crystal Smash Rare Chain
* Warm Current Statue Puzzle
* Secret Seal Boss Event
* Legendary Blacksmith Crafting
* Profession Trainers
* Tavern Keeper REP
* Cross-POI Seal Fragment Network

	It is the bridge layer between casual interaction and boss awakening.

---

		BALANCE & CONTROL

Cooldown :
    Stealth Route success locks for 48 hours per instance
Seal Spawn :
    100% in Dormant Mode
Failure :
    Lockout 30 minutes
Exploit Prevention :
    Stealth check requires full party compliance

---
