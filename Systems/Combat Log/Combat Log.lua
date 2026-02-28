			Combat Log System

---

### 📂 **File Path:**

`GAME\UI\CHAT\Combat_Log.lua`

---

### **Combat Log System**

**System Name:** Combat Log
**Category:** UI / Chat
**Type:** Global Feedback Interface
**Version:** 1.0
**Purpose:** To record and display all combat-related, environmental, and system text notifications in a structured and non-intrusive way.

---

### **1. Introduction**

The **Combat Log System** is a dedicated text-based interface designed to centralize all in-game feedback messages related to:

* Combat results (damage, healing, buffs, debuffs)
* Pet and mount actions
* Environmental interactions
* System notifications (revives, pickups, alerts)

This system improves clarity and reduces chat clutter by moving technical or repetitive combat information into a separate, toggleable interface.

---

### **2. System Location and UI Integration**

* **Interface Category:** Located under the **Chat Window**, in a separate tab labeled **“Combat”**.
* **File Path:** `GAME\UI\CHAT\Combat_Log.txt`
* **Visual Style:**

  * Scrollable message list
  * Timestamp on each entry (optional toggle)
  * Filter buttons per message category
  * Minimalistic gray text with category color codes (e.g., damage = red, healing = green, buffs = blue)

---

### **3. Functional Overview**

The Combat Log collects text output from every in-game system that needs to communicate events to the player.

#### **Supported Message Categories:**

1. **Combat Events**

   * Player, pet, or mount damage dealt and received.
   * Critical hits, blocked attacks, dodges.
2. **Buffs & Debuffs**

   * Applied, removed, expired.
3. **Pet & Mount Interactions**

   * Pet ability triggers, passives, fear alerts, auto-loot.
   * Mount fatigue, death, and stamina updates.
4. **Environment & Status**

   * Fall damage, drowning, lava burns, poison gas.
5. **System Notifications**

   * Item pickups, revives, quest triggers, passive activations.
6. **Miscellaneous**

   * Special scripted or NPC messages related to world events.

---

### **4. Example Messages**

| Category    | Example Message                                 |
| ----------- | ----------------------------------------------- |
| Combat      | *You dealt 132 damage to Redscale Basilisk.*    |
| Pet         | *Your pet frightened 2 enemies to protect you.* |
| Mount       | *Your mount has become exhausted.*              |
| Buff        | *You gained [Blessing of Resistance].*          |
| Debuff      | *Poison effect faded.*                          |
| System      | *Auto-loot collected: Iron Claw x3.*            |
| Environment | *You take 12 fire damage from Lava Pool.*       |

---

### **5. UI Interaction and Controls**

* **Tabs:**
  `[General] [Party] [Guild] [Combat]`

* **Filters:**

  * `[ ] Damage`
  * `[ ] Healing`
  * `[ ] Buffs/Debuffs`
  * `[ ] Pets & Mounts`
  * `[ ] System`
  * `[ ] Environment`

* **Settings:**

  * Enable/disable message timestamps
  * Enable/disable color-coding
  * Message retention: up to 1000 entries per session
  * Option to export last combat log to local storage (`Logs/Combat/yyyy-mm-dd.txt`)

* **Player Control:**

  * The Combat Log can be fully hidden, resized, or minimized.
  * Optional “mute all” toggle prevents message spam.

---

### **6. Integration Policy**

To send text messages to the Combat Log, any in-game system or mechanic file will use the following internal method:

```
SendToCombatLog(category, message)
```

**Example:**

```
SendToCombatLog("Pet", "Your pet has detected a rare creature nearby!");
SendToCombatLog("System", "You’ve learned the passive skill: Willd Call.");
SendToCombatLog("Combat", "You dealt 54 critical damage to Nightfang Alpha!");
```

Each connected system (e.g., Pet Skills, Environment Damage, Mount Fatigue, etc.) can use this API call to display structured and categorized feedback.

---

### **7. Development Notes**

* The Combat Log will **not** replace visual UI elements such as buff icons or special effects.
* Designed for **lightweight message tracking** only.
* This system ensures clarity in both solo and group play by isolating textual combat information from the main chat.
* The system automatically assigns color, icon, and timestamp formatting based on the message category.

---

### **8. Future Expansion**

Planned optional extensions:

* **Player Performance Tracker** (logs total damage, healing, etc. per fight).
* **PvP Combat Summary** tab.
* **Filter Presets** (e.g., “Show only pet messages”).
* **Quick Jump to Event** — click a message to highlight the entity on the field (for debugging or advanced tracking).

---