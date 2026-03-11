			CORRUPTION & LOYALTY SYSTEM

	This system tracks temporary NPC susceptibility to bribery or player influence and NPC loyalty to their faction or smuggling networks. It works mainly in cities
and settlements, and is low-scale to avoid exploitation.

---

		SECTION 1 – Concept & Goals

	Purpose :
* Provide dynamic NPC behavior linked to bribery and smuggling.
* Determine whether an NPC:

	* Accepts bribes more easily (high corruption)
	* Acts strictly according to faction rules (high loyalty)
* Integrate with:
	* "Bribery System" (main factor)
	* "Smuggling System** (loyalty for smuggling faction)
	* "Reputation System" (influence NPC response)

	Core Principles :

* Temporary Influence : All corruption/loyalty changes decay over time.
* Faction-Linked : NPC behavior is faction-specific; neutral NPCs act impartial.
* Controlled Scope : Only key NPCs (Guards, Tavern Keepers, Mercenary Masters, some Vendors, Arena Managers) are influenced.
* Immersive Feedback : No numeric display to players; only indirect hints (NPC gestures, rumors).

---

		SECTION 2 – NPC Types Affected

| NPC Type                                        | Bribable?         | Loyalty/Corruption Affected?      | Notes                                              |
| ----------------------------------------------- | ----------------- | --------------------------------- | -------------------------------------------------- |
| Guards (starting continents, 12+ level players) | Yes, limited      | Yes                               | Only high-level players can influence  +12 level
|												  |					  |								      | difference										   |
| Tavern Keepers                                  | Yes               | Yes                               | Corruption affects information sharing             |
| Bards                                           | No direct bribery | Loyalty affects rumor propagation | Spread hints on NPC/player behavior                |
| Arena Managers                                  | No direct bribery | Loyalty affects event enforcement | Can favor/disfavor player during duels             |
| Mercenary Masters                               | Yes               | Yes                               | Loyalty tied to Smuggling faction if applicable    |
| Vendors (key merchants)                         | Yes               | Yes                               | Can affect almost all the Vendors from World Game  |
| Regional Governors / Envoys                     | No                | Minor                             | Mostly story-driven; minimal corruption impact     |
| Civilians                                       | No                | No                                | Only filler NPCs                                   |

	Notes :

* Corruption/loyalty is temporary, decaying slowly if no player interaction.
* NPCs outside of Capital City or major settlements have limited bribery influence, unless linked to smuggling factions.

---

		SECTION 3 – Corruption & Loyalty Values

	Scale : 0–1000
* 0–300 : High loyalty (strict)
* 301–700 : Balanced (moderate bribery influence)
* 701–1000 : High corruption (easily influenced)

	Rules :

* Temporary Effects :
	* Decays every 24–48 in-game hours if no player influence
	* Smuggling faction loyalty persists while registered
* Bribery Cost Modifier :
	* Low corruption → bribe cost higher, chance of failure higher
	* High corruption → bribe cost lower, chance of success higher
* Detection Influence :
	* High corruption → NPC less likely to detect suspicious actions
	* High loyalty → NPC may immediately report or refuse service

	Special :
* Capital City: nearly all NPCs (except low-tier civilians) can be bribed, but cost/effect depends on player REP and criminal rating

---

		SECTION 4 – Player Interaction Mechanics

1. Bribery Interaction :
   * Success/failure influenced by NPC corruption/loyalty value
   * Bribery attempts update NPC temporary corruption value
   * Failed bribes may trigger:
		* "Betrayed Bribe" (NPC alerts authorities or triggers minor patrol)
		* Reduced trust for a temporary period

2. Smuggling Hooks :
	* NPCs aligned with smuggling factions:
		* Loyalty determined by player rank & participation
		* Grants access to secret routes and easier bribery

3. Reputation Hooks :
	* NPC loyalty may scale with player REP:
		* High lawful REP → reduces corruption potential in non-smuggling factions
		* High outlaw REP → increases corruption influence for bribable NPCs

4. Indirect Feedback :
	* NPC gestures ("looks the other way", "winks")
	* Bards / Tavern Keepers may hint via rumors
	* No numeric feedback to preserve immersion

---

		SECTION 5 – Zone & Event Modifiers

* Faction-Specific Zones :
	* Loyalty/Corruption calculations vary depending on NPC’s faction
	* Neutral NPCs remain balanced, not favoring any faction
* Capital City Override :
	* All major NPCs can be influenced (cost/effect scaled by REP/criminal rating)
	* Guardians/militia still high loyalty unless bribed successfully
* Starting Regions (Dendera / Zonen) :
	* Only high-level players can influence bribery for Guards
	* Low-level players can’t manipulate loyalty significantly
* Events / World State :
	* No world events affect loyalty/corruption; system designed for low-scale, controlled influence

---

		SECTION 6 – Memory & Persistence

* Temporary NPC Values :
	* Corruption/loyalty decays gradually if players stop interacting
	* Player offline → decay continues at normal rate
* No permanent corruption unless :
	* Player is part of smuggling or outlaw faction
* City database tracks NPC current loyalty/corruption values for MMO persistence

---

		SECTION 7 – NPC Behavior by Corruption/Loyalty

| Corruption Level   | NPC Behavior                                       | Examples                                                       |
| ------------------ | -------------------------------------------------- | -------------------------------------------------------------- |
| 0–300 (loyal)      | Strict; rejects bribes, reports suspicious actions | Guard refuses bribe, reports player                            |
| 301–700 (balanced) | Negotiable; may accept bribes, subtle hints        | Tavern Keeper accepts bribe if REP allows, spreads minor rumor |
| 701–1000 (corrupt) | Easily influenced; lowers detection, aids player   | Mercenary Master provides smuggling info, Guard looks away     |

	Additional Mechanics :

* Corrupt NPCs may betray if bribery fails ("Betrayed Bribe")
* Extremely loyal NPCs refuse interaction until decay occurs
* Indirect feedback only (gestures, rumors)
* Capital City NPCs more manipulable but high REP reduces cost

---

		SECTION 8 – Edge Cases

* NPC may be temporarily influenced by repeated player interaction
* Multiple bribery attempts: scaling chance of success/failure
* Group influence: loyalty/corruption affects player factional groups differently
* System is intentionally low-scale, preventing “city-wide corruption”
* No world events or fatigue effects affect NPCs

---

		SECTION 9 – Lua File Structure

```
Systems/
└── Corruption & Loyalty System/
    ├── CorruptionManager.lua       -- Tracks NPC corruption values, decay, faction influence
    ├── LoyaltyManager.lua          -- Tracks NPC loyalty values, bribery resistance, faction alignment
    ├── NPCInteractionHooks.lua     -- Interfaces with Bribe System, Smuggling System, Reputation
    ├── ZoneModifiers.lua           -- Adjusts NPC behavior based on zone & Capital City overrides
    ├── PlayerInfluence.lua         -- Handles player actions that affect NPC corruption/loyalty
    ├── DecayPersistence.lua        -- Handles decay timers, offline persistence, data cleanup
    └── DebugTools.lua              -- Tools for dev/test visualization of corruption/loyalty
```

	Notes :
* Modular structure ensures integration with bribery, smuggling, and reputation without interfering with bounty or suspicion systems.
* Each module is responsible for one part of the system: core mechanic, zone adjustments, player influence, persistence, debugging.

---
