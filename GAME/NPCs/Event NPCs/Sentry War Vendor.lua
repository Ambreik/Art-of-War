			Sentry War Vendor

		1. Introduction

	The "Sentry War Vendor" is a temporary event NPC that appears in settlements immediately after the Echoes of the Fallen Light mini-event concludes.
	This vendor symbolizes the restoration of order and gratitude toward those who defended the settlement from the Sentry invasion.
	The "Sentry War Vendor" offers exclusive goods, reputation rewards, and event-specific exchanges related to "Emblems of Sentries" earned during the battle.

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

		2. NPC Overview

| Attribute             | Details                                                                           |
| --------------------- | --------------------------------------------------------------------------------- |
| Type             	    | Vendor / Event Reward NPC                                                         |
| Faction          	    | Neutral (interacts with all players)                                              |
| Spawn Condition  	    | Appears automatically in the settlement center once the event ends.               |
| Despawn Condition 	| Despawns after 2 hours or when a new event begins.                            	|
| Alignment        	    | Peaceful; cannot be attacked or targeted.                                         |
| Map Presence     	    | Displayed with a unique golden vendor icon and the label "Sentry War Vendor". 	|
| Role             	    | Distributes event rewards, sells unique consumables, and exchanges event tokens.  |

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

		3. Appearance & Behavior

* The "Sentry War Vendor" wears ornate battle-torn armor with glowing blue runes, representing victory over corruption.
* Its eyes emit faint golden light, symbolizing the "Blessing of Renewal".
* Idle animations include:
	* Polishing a sentry fragment.
	* Raising a banner with a glowing insignia.
	* Inspecting a corrupted shard.
* Voice lines when interacted with:
	* "You’ve earned your rest, Defender."
	* "The sentries have fallen… but they always return."
	* "Your courage restored the light to this place."

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

		4. Services

	The vendor offers multiple specialized services to players who participated in the event.

	A. Event Shop
	Players can purchase or exchange using "Emblems of Sentries" and/or Silver/Gold.

| Category          | Item                       | Cost       | Notes                                         |
| ----------------- | -------------------------- | ---------- | --------------------------------------------- |
| Consumables  	    | Potion of Restoration      | 5 Emblems  | Restores 30% HP instantly.                    |
|                   | War Elixir                 | 10 Emblems | +5% All Stats for 30 minutes.                 |
|                   | Battle Rations             | 3 Emblems  | Regenerates 10% HP/MP every 10s for 1 minute. |
|                   | Crafting Materials         | 3 Emblems  | Crafting Materials for "Cursed Equipment"     |
| Cosmetics   	    | Sentry Cloak               | 25 Emblems | Unique cosmetic cloak, golden trim.           |
|                   | Defender’s Banner          | 30 Emblems | Placeable banner for guild halls.             |
| Titles       	    | "Defender of [Settlement]" | 50 Emblems | Permanent title unlocked after event.         |
| Miscellaneous     | Sentry Fragment            | 15 Emblems | Used for future event crafting.               |

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

	B. Exchange System

| Trade-In                                     | Reward                          | Ratio | Description                                           |
| -------------------------------------------- | ------------------------------- | ----- | ----------------------------------------------------- |
| 100x Emblems of Sentries                 | 1x Sentry War Chest         | 1:1   | Contains random items (potions, PvP gear, tokens).    |
| 250x Emblems of Sentries + 25 PvP Points | 1x Elite War Chest          | 1:1   | Contains rare mounts, materials, or unique cosmetics. |
| 500x Emblems of Sentries                 | 1x Sentry Artifact Fragment | 1:1   | Used for high-tier crafting recipes.                  |

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

		5. Reputation & Interaction Mechanics

* Players who participated in defending the settlement receive temporary Reputation: "Defenders of Light" with the "Sentry War Vendor".
* Higher reputation unlocks unique dialogue lines and new items for purchase.
* Example Reputation Tiers:

  | Tier | Title             | Requirement                           |
  | ---- | ----------------- | ------------------------------------- |
  | 1    | Defender          | Participate in 1 successful defense   |
  | 2    | Protector         | Participate in 3 successful defenses  |
  | 3    | Sentinel          | Participate in 5 successful defenses  |
  | 4    | Champion          | Participate in 10 successful defenses |
  | 5    | Guardian of Light | Participate in 20 successful defenses |

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

		6. NPC Location Behavior

| Region Type                         | Spawn Position                            | Notes                                          |
| ----------------------------------- | ----------------------------------------- | ---------------------------------------------- |
| Starting Continents             	  | Central plaza or near main fountain.      | Guarded by local faction guards.               |
| Middlean Islands (Capital City) 	  | Great Port Plaza (main gathering hub).    | Surrounded by banners and crowd NPCs cheering. |
| Outland Territories             	  | Ancient Obelisks near settlement centers. | Glowing light beams mark spawn point.          |

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

		7. Vendor Lifetime

* Spawn Duration : 2 hours real-time after the event ends.
* Cooldown : Cannot reappear until the next "Echoes of the Fallen Light" event.
* Despawning Animation : Vendor kneels, raises the banner, and fades into golden light particles.

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

		8. Developer Notes

* The Sentry War Vendor is instantiated dynamically by the event script.
* It references:
	* Event Completion Flag (Success)
	* Settlement ID for placement.
	* Emblem of Sentries database value for each player.
* All purchases and exchanges are server-side validated to prevent exploitation.
* Can act as a future Seasonal Event Vendor with expanded inventory rotation.

---

		9. Dialogue Overview

	The "Sentry War Vendor" communicates with solemn gratitude and reverence toward those who fought the Sentries.
	Its voice and dialogue tone differ slightly depending on the outcome of the event (Victory or Corruption) and the player’s participation status 
(Participant / Non-Participant).

---

	9.1. Default Greeting Dialogue

* When the settlement is saved (Victory) :
> “The light endures... because of you.”
> “You fought where others fled. Your courage echoes through these walls.”
> “The corruption has fallen — and with it, our faith is renewed.”
> “Take what you have earned, Defender. These tokens carry the memory of battle.”

	Menu Options :
1. Browse Event Shop — (Opens Vendor Window)
2. Exchange Emblems of Sentries — (Opens Exchange Menu)
3. Check Reputation Rank — (Displays Player’s Sentry Reputation Tier)
4. Ask about the Sentries — (Lore dialogue)
5. Leave

---

* When the settlement fell (Corruption Active) :
> “You came too late… the light has fallen here.”
> “This place reeks of silence and sorrow… the corruption devours all.”
> “Still, the fragments you hold may one day rebuild what was lost.”
> “Even in defeat, you are seen. The war never ends.”

	Menu Options :
1. Redeem Remaining Emblems — (Limited inventory until corruption fades)
2. Seek Redemption — (Lore about cleansing the corruption)
3. Leave

---

	9.2. Dialogue: Lore Path — "Ask about the Sentries"

> "The Sentries are not of flesh nor bone. They are fragments of forgotten wars — memories of vengeance bound to metal and shadow."
> "Each invasion weakens the veil that guards our world. They test us… they adapt… they remember."
> "It is said that their commanders once served the Light, before it fell to greed and silence. Now they return to reclaim what they lost."
> "The Emblems you carry hold their essence. Use them with purpose, for power taken without respect draws the Sentries back sooner."

*After this dialogue, player returns to main options menu.*

---

	9.3. Reputation-Specific Dialogue Variants

| Tier                      | Title                                                          | Greeting / Line                                                                                    | Notes |
| ------------------------- | -------------------------------------------------------------- | -------------------------------------------------------------------------------------------------- | ----- |
| 1 — Defender       	    | “You’ve stood your ground. May your next battle be swifter.”   | Base dialogue, neutral tone. |
| 2 — Protector         	| “Protector of the Light — your deeds are sung across cities.”  | Unlocks access to enhanced consumables. |
| 3 — Sentinel         	    | “Sentinel, your courage binds this realm together.”            | Unlocks new cosmetic rewards. |
| 4 — Champion        	    | “Champion of the Light — even the Sentries whisper your name.” | Unlocks elite exchange items. |
| 5 — Guardian of Light 	| “The Guardian returns... the corruption trembles.”             | Unlocks exclusive dialogue and lore lines, including access to Sentry Artifact crafting materials. |

	Example High-Tier Quote (Guardian of Light) :

> "Few stand where you now stand. Even the old gods turn their gaze to you. What will you forge with what you’ve earned?"

---

	9.4. Exchange Menu Dialogue

* When player opens Exchange Menu:

> "Emblems of Sentries... hardened with fire and sacrifice. What will you trade them for, warrior?"

*Options:*
1. Exchange 100 Emblems for a Sentry War Chest
2. Exchange 250 Emblems + 25 PvP Points for an Elite War Chest
3. Exchange 500 Emblems for a Sentry Artifact Fragment
4. Nevermind.

	After selection:

> "The exchange is sealed. May this serve you well in battles yet to come."

---

	9.5. Event Outcome Interaction

* If Player Participated in Defense :
> "Your courage turned the tide. The banners still stand because of your hands."
> "You have earned your place among the Defenders of Light."

* If Player Ignored the Event :
> "Your silence echoes louder than any battle cry."
> "The light remembers… and so do those who fell without your aid."

*This line reinforces the “Mark of Dishonor” debuff system.*

---

	9.6. Farewell Lines (Randomized when closing dialogue)

* "Until the next dawn — or the next shadow."
* "Rest now, but not too long. The Sentries are never gone."
* "Carry the light, for its flame burns brightest in the dark."
* "Victory fades, but valor endures."

---

	9.7. Visual / Audio Cues

| Trigger                            | Action                                                                                                 |
| ---------------------------------- | ------------------------------------------------------------------------------------------------------ |
| Player opens vendor window         | Brief golden light pulse surrounds NPC; chime plays.                                                   |
| Player purchases item              | "Transaction" sound (metallic hum, like energy resonating).                                            |
| Player reaches new reputation tier | Vendor raises hand; light burst animation; quote: "You ascend beyond the common ranks, [player name]." |
| Vendor despawns (after 2 hours)    | Raises the banner, light circle expands outward; soft horn sound echoes.                               |

---

	10. Developer Notes (Dialogue Integration)

* Dialogue trees are tied to:
	* Event Outcome Flag (`Victory` or `Corruption`)
	* Player Event Participation Flag
	* Reputation Tier
* NPC dynamically changes greetings and shop inventory based on these flags.
* Can support voice-over triggers and animation syncs for immersion.
* Designed for reusability in future Sentry events or seasonal variants.

---