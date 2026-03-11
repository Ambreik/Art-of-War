			Fading Lantern NPC
			

### 1. Overview

The **Fading Lantern** is a spectral, interactive object that appears exclusively during the **Halloween Event – “Terror of the Underworld Spirits”**.
It serves as a hidden quest trigger for **“Whispers Beneath the Tide”**, initiating daily quest objectives for players who discover it at night.

**Flavor Description:**

> A lantern flickering with unnatural blue flame, its glow bending and pulsing like a heartbeat. Whispers of lost souls drift from its light, faint but insistent.

---

### 2. Appearance

* Small, floating lantern suspended in mid-air (~1.5 meters above the dock).
* Flame is ghostly blue with swirling motes of light around the lantern.
* Emits faint ambient whispers and water-like hum.
* Glows brighter as players approach, indicating interactivity.

---

### 3. Behavior & Interaction

**Spawn Mechanics:**

* Only appears during the Halloween event.
* Spawn time: 21:00 – 05:00 (in-game time).
* Randomized location under Blackwater Landing dock; fixed small radius (~5 meters).
* Despawns if no player interacts within 30 minutes or at 05:00 in-game time.

**Interaction Mechanics:**

1. Player clicks/interacts with the lantern.
2. Prompt appears: **“The lantern flickers… will you hear the whispers beneath the tide?”**
   Options:

   * **Accept Quest** → starts “Whispers Beneath the Tide”
   * **Ignore** → lantern flickers briefly and fades slightly, can be tried again during active hours

**Behavior After Interaction:**

* Once a player accepts the quest, the lantern pulses brighter and creates a subtle guiding light toward nearby spawn points of **Drowned Sailors** and **Tide Wraiths**.
* Emits faint spectral ripples every 10 seconds to indicate nearby quest targets.
* Interaction is **instant**; no combat or damage required.

**Multi-Player Consideration:**

* Multiple players can interact independently; lantern triggers personal quest instance.
* Visual and audio effects remain consistent for all nearby players, but each player collects **Lost Soul Echoes** individually.

---

### 4. Quest Linking

**Quest Triggered:**

* “Whispers Beneath the Tide” – daily, hidden, Halloween-specific.
* Automatically grants objectives upon interaction.
* Completion triggers the **Harbinger of Veils** dialogue and rewards distribution.

**Special Mechanics During Quest:**

* Lantern highlights nearby water spawn points of quest monsters via a subtle glow (directional hint).
* If the player leaves Blackwater Landing, lantern remains active until either quest completion or daily reset.
* After the event ends, the lantern **no longer spawns**, effectively disabling the quest until next year.

---

### 5. Technical Properties

| Property          | Value                                                      |
| ----------------- | ---------------------------------------------------------- |
| NPC Type          | Interactive Object / Event Trigger                         |
| Level             | 1 (non-combat)                                             |
| Spawn Type        | Timed / Event-Dependent                                    |
| Spawn Area        | Under Dock Walkway, Blackwater Landing                     |
| Interaction Type  | Clickable / Quest Trigger                                  |
| Quest Linked      | Whispers Beneath the Tide                                  |
| Active Hours      | 21:00 – 05:00 (in-game time)                               |
| Respawn           | Daily during event, random location under dock             |
| Despawn Condition | Player inactivity (30 mins) or event end / in-game morning |

---

### 6. Dialogue / Audio

**On Idle (ambient whispers):**

* “They call… from the depths…”
* “Lost… waiting… beneath the tide…”
* “The water remembers…”

**On Player Interaction:**

* **Prompt:** “The lantern flickers… will you hear the whispers beneath the tide?”
* **Accept:** “The echoes answer… gather them, and give them rest.”
* **Ignore:** “The whispers fade… for now.”

**Audio Effects:**

* Faint water ripples, whispering voices, soft spectral hum.
* Pulsing light synced with faint heartbeat-like audio cue when player approaches.

---

### 7. Event-Specific Notes

* Only active during the Halloween event; remains dormant / invisible outside the event.
* Invisible during daylight hours (06:00 – 20:59 in-game).
* Works independently of other NPCs at Blackwater Landing, but links directly to Harbinger’s reward system.
* Can coexist with other daily or hidden quests at the same POI without interference.

---