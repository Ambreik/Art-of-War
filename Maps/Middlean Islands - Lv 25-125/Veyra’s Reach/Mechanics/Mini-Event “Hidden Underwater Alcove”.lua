			Mini-Event: “Hidden Underwater Alcove”

---

# **🌊 MINI-EVENT FILE – “Hidden Underwater Alcove”**

### **Event Type:**

Timed Exploration / Environmental Puzzle / Micro-Challenge

### **Difficulty:**

Solo (recommended)

### **Location:**

Veyra’s Edge → Coral Reaches (20–28m depth)

---

# **1. Event Introduction**

The **Tide-Marked Compass Fragment** reveals the entrance to a secret pocket chamber beneath Veyra’s Edge.
This is not a combat event — it is a **precision navigation + hazard endurance** micro-event where the player must correctly follow glowing reef markers before the passage seals again.

The player does **not** get a quest automatically.
The event is triggered by interacting with the **compass fragment** while within the correct proximity.

---

# **2. Trigger Requirements**

### **Player Must Have:**

* **Tide-Marked Compass Fragment** in inventory
* Be within **35 meters** of the correct coral formation
* Be underwater (duh)

### **Upon Trigger:**

A faint pulse spreads through the water → glowing algae veins appear on the seabed, revealing the “correct path.”

**Event UI:**
“⚓ A hidden current calls you forward… follow the light before it fades.”

---

# **3. Event Flow Overview**

**Step 1 — Activating Path**

* Bioluminescent coral glows for **40 seconds**
* A narrow movement path is revealed
* Taking the wrong turn applies a debuff (detailed below)

**Step 2 — The Squeeze Tunnel**

* A tight coral tunnel must be traversed
* Player must avoid touching stinging coral walls
* Touching walls = 1s stun + mild damage

**Step 3 — Breath-Pressure Zone**
A small spherical chamber where the water becomes dense and dark.

Player receives a temporary debuff:

### **Debuff: “Crushing Pressure”**

* -30% Swim Speed
* -20% Vision clarity
* Gradual 2% HP drain per second
* Lasts only while inside the chamber

**This creates a timed challenge** → reach the inner alcove before pressure becomes overwhelming.

**Step 4 — Inner Alcove Unlocks**
Upon reaching the final barrier:

* The coral lattice opens
* A small pocket cavern becomes visible
* A short animation plays (glowing spiral current)

Event complete.

---

# **4. Event Failure Conditions**

The event ENDS if:

* Player takes longer than **40 seconds** to reach the squeeze tunnel
* Player leaves the path area
* Player dies from pressure or hazards
* Player is in a Party → ONLY the triggering player may enter
  (The entrance closes for others)

If failed, event resets after **5 minutes**.

---

# **5. Rewards Upon Success**

### **Guaranteed:**

* **Compass Harmonization Progress** (internal tracker, not visible)
* Small amount of gold
* +50 Veyra’s Edge exploration XP

### **Chance-Based (roll system):**

* 25% — **Luminescent Scale Dust** (Alchemy III reagent)
* 10% — **Faint Coral Echo** (cosmetic crafting material)
* 5% — **Rare: Tideglass Node** spawns inside (solo gather)
* 3% — **Fragment of Abyssal Glow**
* 1% — **Abyss-Touched Trinket** (binds, sells for a lot)

### **Hidden Benefit:**

If the player performs the event **three times successfully**, they earn:

**Passive: “Current Awareness”**

* +5% swim speed in Veyra’s Edge waters

---

# **6. Environmental Features**

Inside the alcove:

### **Lighting:**

* Soft cyan glow from algae
* Particle drift slow and foggy
* Subtle shimmering water-wall animation at the entrance

### **Soundscape:**

* Deep bass “ocean hum”
* Occasional distant whale call
* Small “crackling coral” ASMR-like clicking

### **Props:**

* One coral pedestal (used for compass events later)
* Tideglass Node (rare, optional spawn)
* Small alcove pockets with nothing inside (environmental flavor)

---

# **7. Re-Entry and Reset Logic**

The alcove **closes behind the player** and cannot be re-entered until:

* Player leaves the water for 30s
  **OR**
* 10 minutes pass since event activation

If player logs out inside, they spawn **just outside the alcove**, not inside.

---

# **8. Optional Variant (Dynamic Tide Cycle)**

*(You can choose to use or ignore this)*

Every **6 hours** in real time, the event changes slightly:

### Low Tide Variant:

* Squeeze tunnel is shorter
* Path glows stronger
* Rewards slightly weaker

### High Tide Variant:

* Squeeze tunnel is longer
* Pressure zone arcs are more punishing
* Rewards slightly improved

---

# **9. Summary for File Storage**

**Mini-Event: Hidden Underwater Alcove**

* Triggered with Tide-Marked Compass Fragment
* Solo-only environmental micro-challenge
* 4-phase navigation + hazard event
* Rewards alchemy mats, crafting mats, rare drops
* Tracks progress toward compass completion
* Includes pressure zone, coral hazards, glowing path
* Reset timer: 5 minutes (failure) / 10 minutes (success lockout)

---