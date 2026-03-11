		Quest Board NPC – “Dockmaster’s Notice Board”

**Role:** Passive Questgiver Object
**Type:** Interactive Object NPC (Board Entity)
**Function:** Provides rotating local tasks and dynamic updates for the Dragon Isle area.

---

### **Overview**

A wooden board nailed to a support post under the dock canopy. Sealed papers and hand-written notes appear daily, offering small bounties, exploration requests, and supply deliveries.

---

### **Mechanics**

* **Quest Rotation:**

  * 2–4 random “Daily Island Tasks” (e.g., recover cargo, scout pirate positions, gather specific fish or herbs).
  * Occasionally triggers “Urgent Notice” missions tied to island events (pirate raids, resource blooms).

* **Reputation Integration:**

  * Completing tasks contributes to the *Explorers’ Guild* rep.
  * High reputation unlocks unique contracts (rare loot crates, transport licenses).

* **Interaction Style:**

  * Clickable board with parchment visuals; each quest scroll opens a short task window.
  * Board emits faint blue glow if new notices are available.

---

### **Idle Details**

* Faint creaking of wood and sea wind audio effect.
* Seagulls perch above it, occasionally knocking a parchment loose.
* Some notes bear the wax seal of Doran Vale’s merchant company.

---

## 🧩 Integration Summary

| **NPC / Object**          | **Type**           | **Role**        | **Core Function**                               | **Related Systems**        |
| ------------------------- | ------------------ | --------------- | ----------------------------------------------- | -------------------------- |
| Captain Doran Vale        | Transport NPC      | Travel Master   | Island ↔ Capital transport, short-range ferries | Fast travel, resurrection  |
| Mira the Deckhand         | Vendor NPC         | Supply Merchant | Sells basic supplies and reputation goods       | Exploration prep, survival |
| Dockmaster’s Notice Board | Interactive Object | Questgiver      | Daily and event missions                        | Reputation, event system   |

---

## 📜 **Dockmaster’s Notice Board – Quest Set**

---

### ⚓ **Quest 1: “Cargo Recovery at Tidebreaker Cove”**

**Type:** Daily / Repeatable
**Category:** Exploration & Recovery
**Recommended Level:** Island Entry Tier
**Quest Giver:** Dockmaster’s Notice Board
**Location:** Tidebreaker Cove (western coast)

---

#### **Quest Summary**

> “A merchant ship carrying exploration tools was struck by pirates near Tidebreaker Cove. The crates have drifted ashore, but the beach is crawling with scavengers and sea drakes. Recover what’s left and return it to the Dockmaster.”

---

#### **Objectives**

* Recover **5× Salvaged Cargo Crates** from Tidebreaker Cove
* Defeat **8× Pirate Scavengers**
* Return to the Notice Board for report

---

#### **Mechanics**

* Cargo Crates spawn near shoreline debris; glowing faintly at night.
* Each crate has a chance to yield a random trade item (like *Tarnished Compass*, *Waterlogged Charts*).
* Pirates respawn fast, encouraging players to clear in groups.
* Quest can be completed solo, but faster with others.

---

#### **Rewards**

* **Explorers’ Guild Reputation** (+50)
* **Blackwater Token ×2** *(currency used at Mira’s vendor for rare supplies)*
* **Chance (5%)** to find “Weathered Compass” (starts a hidden lore quest chain leading to an ancient wreck POI).
* **Gold:** 300

---

#### **Flavor Dialogue**

* “Cargo’s no good to fish or pirates. Get it back to us before the tide eats it.”
* “Every crate’s worth a voyage home. Don’t waste time fighting the waves.”

---

---

### 🐊 **Quest 2: “Crocs in the Fan”**

**Type:** Local Threat / Event Quest
**Category:** Combat / Cleansing
**Recommended Level:** Mid-tier (for solo veterans or small groups)
**Quest Giver:** Dockmaster’s Notice Board
**Location:** Fan Lake (center of the island, near Dragon God Dungeon entrance)

---

#### **Quest Summary**

> “Something’s stirring the crocodiles of Fan Lake. They’ve grown larger, meaner — almost possessed. Clear out the worst of them before the lake becomes a deathtrap for explorers.”

---

#### **Objectives**

* Defeat **6× Enraged Crocodiles**
* Optional: Defeat **‘Old Fang’**, the Alpha Crocodile (Elite)
* Report success at the Notice Board

---

#### **Mechanics**

* The crocodiles become active during rainy weather (synergy with weather event mechanics).
* **‘Old Fang’** spawns randomly during storms; defeating it grants extra reputation and unique crafting drops.
* Completing the quest during stormy weather doubles EXP and item rewards.
* Killing ‘Old Fang’ during the storm triggers a short global system message:

  > “The waters of the Fan have calmed — the old beast sinks beneath the waves once more.”

---

#### **Rewards**

* **Explorers’ Guild Reputation** (+120 / +250 with ‘Old Fang’ kill)
* **Blackwater Token ×4**
* **Unique Drop:** *Scale of the Fan Guardian* (used in crafting anti-poison gear)
* **Gold:** 600–900

---

#### **Flavor Dialogue**

* “If you hear the water breathing, it’s already too late.”
* “They say the lake feeds on fear. Let’s see what happens when we feed it steel instead.”

---

---

## 🪙 **Blackwater Token (Local Currency)**

**Description:**
A dark coin stamped with the symbol of a coiled sea serpent — currency used by sailors and explorers on Dragon Isle. Can be exchanged at **Mira the Deckhand’s stall** for special goods.

**Usage Example:**
10× **Blackwater Tokens** → **Blackwater Chest** *(contains consumables, rare bait, and cosmetic items)*

---

### **Blackwater Chest (Reward Container)**

**Loot Pool Example:**

| Item                              | Description                                       |
| --------------------------------- | ------------------------------------------------- |
| *Ancient Bait*                    | Increases fishing rare chance by +20% for 30 min  |
| *Explorer’s Map Fragment*         | Used in hidden treasure mini-event                |
| *Polished Coral Trinket*          | Sellable trade good                               |
| *Light Flask of the Living Water* | Small restorative potion, lore reference to Elara |

---

	## 🕯 Hidden Daily Event Quest – “Whispers Beneath the Tide”

**Linked Event:**
🕯 *Halloween Event – Terror of the Underworld Spirits*
**Availability:** Only during the active event period (15 days total). Resets daily at midnight (server time).

**Quest Type:**
Hidden Event Quest (automatically available upon interacting with a hidden object or NPC trigger)

**Quest Trigger Location:**
Blackwater Landing – Under the Dock Walkway
A faintly glowing lantern appears at nightfall (game time 21:00–05:00). Interacting with it starts the quest.
During daylight hours, the lantern is invisible and cannot be interacted with.

---

### 📜 Quest Overview

**Quest Name:** “Whispers Beneath the Tide”
**Quest Type:** Hidden / Repeatable (Daily)
**Location:** Blackwater Landing, Arliton Island
**Quest Giver:** *The Fading Lantern* (spectral interactive object)
**Quest Receiver:** Automatically turns in to *The Harbinger of Veils* (remote completion via spiritual connection)

**Flavor Text (on activation):**

> The lantern flickers unnaturally, its light bending like a living shadow.
> As you touch it, a whisper seeps into your mind—*“They drowned below, forgotten by the living… bring them peace before they rise again.”*

---

### 🧭 Objectives

**Primary Objective:**

* Collect **5 Lost Soul Echoes** from drowned spirits haunting the nearby waters (spectral versions of *Drowned Sailors* and *Tide Wraiths* spawn around the cove).

**Optional Objective:**

* Find and light **the Lantern of Passage** at the end of the dock to release the trapped spirits.

**Hidden Condition:**

* Completing the quest **after midnight in-game time** grants a **bonus reward** (representing the true “Witching Hour”).

---

### ⚔️ Event Mechanics & Behaviors

* During the Halloween event, a faint mist rolls across Blackwater Landing at night, and spectral waves occasionally wash through the dock.
* **Drowned Sailors (Rank II)** and **Tide Wraiths (Rank III)** spawn randomly near the waterline, only during the event period.
* If the player carries an active “Whispers Beneath the Tide” quest, these enemies drop **Lost Soul Echoes** (quest items).

---

### 🎁 Rewards

| Reward                                                                      | Description                                                                                              |
| --------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------- |
| **2 Obol**                                                                  | Event currency (soul coin).                                                                              |
| **1x “Lanternlight Essence”**                                               | Temporary consumable granting +5% spirit resistance and +5% movement speed in fog. Duration: 30 minutes. |
| **Small XP Bonus**                                                          | Based on player level.                                                                                   |
| *(Bonus)* **1 additional Obol** if completed during in-game midnight hours. |                                                                                                          |

---

### 🗣 Harbinger’s Completion Dialogue

When the quest completes (via automatic dialogue popup):

> “You heard their cries, even across the sea... Their echoes fade thanks to your mercy.
> But the veil thins still — every drowned whisper feeds the tide between worlds…”

---

### 🌫 Atmospheric Detail (Local Effects)

* Slight ghostly fog appears around Blackwater Landing each night during the event.
* Players hear faint whispers and creaking wood when near the water.
* The Fading Lantern’s glow pulses in rhythm with ambient whispers.

---

Perfect! Let’s fully integrate the **“Whispers Beneath the Tide”** quest with its monsters and event mechanics. Here’s the detailed development:

---

## **Event Monsters – Dragon Isle (Halloween Event)**

### 1. **Drowned Sailor**

**Type:** Rank III – Event Monster
**Environment:** Spawn in shallow waters and dock-adjacent ponds around **Blackwater Landing**
**Behavior:**

* Slow-moving undead sailor, attacks with cutlass or spectral rope.
* Linked Aggro: Disturbing water nearby triggers additional nearby Drowned Sailors to appear.
* Day/Night behavior: Only spawns at night (21:00 – 05:00).
  **Drops:**
* **Lost Soul Echo** (quest item) – guaranteed drop
* Obol (10% drop chance per kill)
* Minor loot: Rusty Dagger, Tattered Clothing

---

### 2. **Tide Wraith**

**Type:** Rank IV – Event Monster
**Environment:** Spawn in slightly deeper waters around **Blackwater Landing** and near jungle edge ponds
**Behavior:**

* Ghostly, fast-moving; casts AoE water damage.
* Can teleport short distances if the player moves too far from water edge.
* Stealth / Camouflage: Can become partially invisible when in tall reeds or near water surface.
  **Drops:**
* **Lost Soul Echo** (quest item) – 1–2 per kill
* Obol (20% drop chance per kill)
* Minor loot: Spectral Band, Drifting Scroll

---

### 3. **Monster Mechanics Integration**

* **Resource-Based Mechanics:**
  *Lost Soul Echoes* are collected to complete **Whispers Beneath the Tide**. Only obtainable from these monsters.
* **Creature / AI Mechanics:**

  * Drowned Sailors alert nearby Tide Wraiths (Linked Aggro).
  * Both monsters have night-specific behavior tied to the lantern’s active hours.
* **Exploration Mechanics:**

  * Lantern highlights nearby spawn locations, subtly guiding players.
  * Players are encouraged to explore shallow docks, ponds, and jungle water edges.

---

### 4. **Quest Mechanics – “Whispers Beneath the Tide”**

**Objective:**

* Collect 10 Lost Soul Echoes from Drowned Sailors and Tide Wraiths.

**Completion Reward:**

* 5–10 Obol (event currency)
* Small chance to drop: Event-exclusive **Spectral Trinket** (cosmetic or minor stat boost)
* Experience points and event lore entries

**Daily Reset:**

* Quest can be repeated once per day per account while the event is active.

**Interaction Flow:**

1. Player interacts with **Fading Lantern** → quest offered
2. Lantern emits guiding light to nearby event monster spawns
3. Player kills monsters, collects Lost Soul Echoes
4. Returns to Fading Lantern → quest turn-in
5. Reward given; lantern pulses in approval, emits spectral flash

---