			RESCUE BELL – EXTRACTION SIGNAL DEVICE

---

# **📘 OBJECT FILE: “Rescue Bell – Extraction Signal Device”**

## **1. OVERVIEW**

The **Rescue Bell** is an interactive emergency extraction device installed throughout the **Grimstone Quarry cavern network**.
It allows stranded or overwhelmed players to **signal NPC Foreman Brakk**, who appears via a short-distance teleport to escort them safely back to the surface and village.

The bell is mounted on cave walls, wooden supports, broken mining scaffolds, or iron pylons left behind from previous excavation teams.

---

# **2. FUNCTIONAL ROLE IN GAMEPLAY**

* Provides **controlled extraction** without breaking immersion.
* Prevents players from getting stuck in deep cave layers.
* Adds tension with its **enemy-attraction pulse**, especially in dangerous zones.
* Introduces a utility NPC (Brakk) without making him a vendor or quest giver.

---

# **3. VISUAL DESIGN**

### **Rescue Bell Appearance**

* Iron bell with greenish patina from cave moisture.
* Glowing rope of woven copper + faint magical sigils (low light).
* Emits subtle pulses every 40 seconds (ambient effect).
* Mounted on:

  * Stone alcoves
  * Iron frames
  * Broken lift posts
  * Old mining scaffolds

### **Bell Variants**

All function the same:

* **Standard Bell** – most common
* **Fractured Bell** – sparks slightly when used
* **Deep Echo Bell** (rare spawn location, deeper floors) – louder ring radius, attracts more monsters

---

# **4. PLAYER INTERACTION**

### **Activation Prompt**

**“Ring the Rescue Bell to summon extraction assistance?”**
*Yes / No*

### **Interaction Requirements**

* Player must not be:

  * In combat (unless using Deep Echo Bell)
  * Dead
  * Stunned
  * Mounted

### **Activation Time**

* 2.0 seconds channeling
* Cancelled if:

  * Hit by enemy
  * Moving
  * Interrupted by cave tremor

---

# **5. CORE MECHANICS**

## **5.1 Summoning Sequence**

After activation:

**Step 1 — Bell Rings**

* Echoing sound propagates through cave layer
* Radius depends on bell type
* Light flashes appear on nearby rocks

**Step 2 — NPC Appears (1.5s delay)**
Foreman Brakk teleports in with a blue-teal flash

**Step 3 — Escort Phase Begins**
Brakk walks with player toward:

* Nearest ore lift
* Or nearest slope exit
* Or cave breach if lifts are offline

**Step 4 — Extraction Complete**
Fades to black → player appears outside Grimstone entrance.
Brakk returns to his hut immediately.

---

## **5.2 Cooldown System**

* **Player cooldown:** 8 minutes
* **Bell global cooldown:** 30 seconds
* **If Foreman Brakk is in active combat:**
  → Bell returns an error message
  **“Extraction team is unavailable. Try again shortly.”**

---

## **5.3 Threat Attraction Pulse**

When the bell is rung:

* Creates a **0.5s shockwave**
* Nearby enemies within 30m:

  * Gain “Disturbed” state
  * Investigate bell location for 5 seconds
  * If already in combat: shrug it off

Deep Echo Bell variant attracts enemies from **40–55m**.

This makes ringing during danger zones a **risk–reward** moment.

---

# **6. MULTIPLAYER LOGIC**

## **6.1 Shared Extraction**

If multiple players interact with the bell within 10 seconds:

* They are all grouped under one escort
* Brakk walks them together
* Players with bell cooldown still benefit

## **6.2 PvP FLAG HANDLING**

* PvP flags disabled
* Brakk will not extract flagged players **only if** they are in active duel
* After duel ends, bell works normally

---

# **7. FAIL-SAFE LOGIC**

### **7.1 Pathing Error**

If Brakk cannot reach the player:

* He teleports to nearest safe spot near the player
* If still blocked → extraction happens instantly (2s fade)

### **7.2 Monster Overrun Event**

If too many enemies converge:

* Brakk shouts a warning
* Emits a **stun pulse** (1.2s)
* Escorts the player forcibly to next checkpoint

---

# **8. HIDDEN MECHANICS**

### **8.1 Rare Event: “Lost Miner Spirit”**

2% chance when ringing:
A ghostly miner appears beside the bell:

> *“You woke me… but I’ll help ye leave…”*

He gives:

* +5% mining speed buff (10 minutes)
  OR
* A lore whisper (tiny world detail)

### **8.2 Miner’s Bell Harmony**

If two bells are rung within 20 seconds in different rooms:

* A harmonizing echo sound effect plays
* All enemies in the connecting tunnel enter a **confused** state (reduced aggro) for 10 seconds

### **8.3 Foreman’s Shortcut**

If the player has previously saved Brakk during his roaming encounters:

* Extraction uses the **faster elevator path**
* Reduces exit time by 10 seconds

### **8.4 Special Dialogue from Brakk (rare)**

5% chance on summon:

> “Yer lucky ye rang this bell… the last one who didn’t ring it is still down here somewhere…”

(no actual ghost NPC, just flavor)

---

# **9. ERROR & SYSTEM MESSAGES**

* **“The bell’s echo is still fading. Wait before ringing again.”** (Bell cooldown)
* **“Extraction team unavailable during combat.”**
* **“The bell does not respond while you are under attack.”**
* **“You feel vibrations… but nothing answers your call.”** (rare fail state)
* **“The path shifts… you must move first.”**

---

# **10. HOW PLAYERS RETURN TO SURFACE**

### **A) Via Extraction Escort (default)**

* Guided by Brakk
* Safe route
* Immersive

### **B) Emergency Teleport**

Triggered only when:

* Bell cannot be reached
* Combat is bugged
* Path to bell is obstructed

2-second fade → surface.

### **C) Collapsing Tunnel Shortcut**

Dynamic mechanic:

* Some tunnels collapse and reopen
* If player near an emerging exit → a temporary angled ramp appears
* Used only once per cave reset

---

# **11. PERFORMANCE / OPTIMIZATION NOTES**

* All bells share the same prefab
* Ring sound uses distance-based falloff
* Escort path uses simplified navmesh
* Rare events are server-side controlled to prevent exploitation
* Multiplayer grouping logic handles mixed latencies smoothly

---

# **12. DEVELOPMENT CHECKLIST**

* [ ] Finalize bell prefab visual
* [ ] Implement 3 bell variants
* [ ] Add interaction popups
* [ ] Add Brakk teleport logic
* [ ] Add escort navmesh
* [ ] Add error/fail-safe messages
* [ ] Add hidden mechanics
* [ ] Add achievement hooks (optional)

---