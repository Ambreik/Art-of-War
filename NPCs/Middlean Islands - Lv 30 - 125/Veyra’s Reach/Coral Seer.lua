			Coral Seer

**Type:** Event-Specific Aquatic NPC
**Role:** Vision-Giver, Environmental Oracle, Mini-Event Gatekeeper
**Location:** Hidden Underwater Alcove (Veyra’s Edge)
**Status:** Not killable, not targetable, not interactable outside the event
**Alignment:** Neutral / Environmental Entity
**Model Concept:** A semi-transparent aquatic spirit shaped like a humanoid coral silhouette, with glowing blue cracks and strands of drifting algae flowing like hair.

---

# **1. Core Identity & Behavior**

### **Origin & Nature**

The Coral Seer is not a living creature, but a residual spirit anchored to the seabed by coral magic. It appears only when triggered by the event, and it has no physical influence on the world outside this location.

### **Purpose**

It serves as:

* A **vision guide** for future content tied to the *Tomb of the Great Crusaders*
* A **temporary mentor** granting cryptic lore
* A **checkpoint NPC** validating whether players cleared the alcove properly

The Coral Seer does **not** give quests directly—only the item *Echoing Shard* begins the quest.

---

# **2. Event Appearance Rules**

The Coral Seer **appears ONLY** when:

* The player enters the hidden alcove while carrying the **Echoing Shard**,
* AND has survived the Crushing Pressure zone for at least 10 seconds.

The Seer materializes in a slow “bloom” animation:

* coral light gathers → silhouette forms → eyes open
* soft, underwater echo accompanies the spawn

If a player leaves the alcove, the Seer slowly dissolves and will not return until the mini-event resets.

---

# **3. Interaction Flow**

The Coral Seer does **not** use normal dialog windows.
Interaction is presented through **on-screen whispers** (no UI dialog box).

When the player approaches:

### **Whisper 1 – Greeting**

> *“The tide hums with your arrival… bearer of forgotten echoes.”*

### **Whisper 2 – Vision Prompt**

If player holds the Echoing Shard:

> *“The shard trembles. Let me awaken the memory bound within…”*

If the player **does not** hold the item:

> *“Drifting soul… without the echo, I cannot reveal what sleeps beneath the waves.”*

### **Whisper 3 – Start of Vision**

After accepting (automatic):

> *“Breathe the silence… see what once was.”*

---

# **4. The “Vision” Mechanic**

Upon the Seer’s activation:

* Screen darkens slightly
* Player movement slows
* Ambient underwater rumble begins
* Small coral lights drift around the player
* A **blue phantom projection** of the sunken warship appears briefly (shimmering outline)
* A rune flashes in the player’s view

### **Vision Fragment Revealed**

The Coral Seer shows a **hint** about the deeper storyline:

> *“Seek the relic bound in chains. Deep beneath the warship’s broken keel… entombed by oath and tide.”*

This unlocks:

* Quest progress for “Echoes of the Deep Memory”
* A new “ping” marker on the hidden alcove map

The Seer fades after the vision completes.

---

# **5. After-Event Behavior**

Once the event ends:

* The Coral Seer becomes **inert**, fading into coral particles
* It cannot be re-triggered until the mini-event resets
* Players without the Echoing Shard see nothing

If multiple players enter with shards:

* Seer appears once per player instance
* Each player gets their own vision instance
* No interference between players

---

# **6. (Optional) Additional Mechanics & Hidden Features**

### **Hidden Passive – “Coral’s Blessing”**

After completing the vision **for the first time**, the player gains a permanent minor underwater perk:

**+5% underwater movement speed**
(Only within Veyra’s Edge)

This is NOT displayed in UI.

---

# **7. Voice Lines (All Whispered)**

### **Idle Lines**

These trigger randomly every 30–45 seconds while the player is near the Seer:

> *“The currents remember…”*
> *“Shadows drift… but truth sinks deeper still.”*
> *“So many tides… so many failures…”*

### **If player tries to attack**

> *“Flesh cannot touch what the tide has forgotten.”*

### **If player leaves the alcove**

> *“The memory fades… until you return.”*

---

# **8. Technical Notes (Implementation)**

**Spawn Conditions:**
*Triggered exclusively by Echoing Shard possession + Player entering alcove.*

**Despawn Conditions:**
*Leaving the alcove OR event timer ending.*

**Interaction Type:**
*System messages + floating whispers, no dialogue UI.*

**Collision:**
*None. Ghost-type model.*

**Hostility:**
*Never hostile; cannot be targeted, stunned, silenced, taunted, or interacted with physically.*

---