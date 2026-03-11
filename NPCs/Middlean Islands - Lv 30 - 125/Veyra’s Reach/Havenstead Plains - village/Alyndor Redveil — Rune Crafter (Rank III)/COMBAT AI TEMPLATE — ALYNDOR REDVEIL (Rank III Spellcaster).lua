			COMBAT AI TEMPLATE — ALYNDOR REDVEIL (Rank III Spellcaster)

This is a fully game-ready template with logic, priorities, and action cycles.

---

# **Alyndor’s Combat Behavior**

### **General AI Rules**

* Avoids melee
* Prioritizes protecting players
* Uses crowd control sparingly
* Teleports away at 30–40% HP unless rare event requires him
* Will NOT fight against another village NPC

---

# **PHASE 1: Opening Actions**

When entering combat:

1. Cast **Arcane Shield** on himself
2. Scan for nearby player
3. If player present → cast **Barrier of Assistance** on player
4. Begins ranged engagement

---

# **PHASE 2: Standard Combat Rotation**

Priority list:

### **1. Arcane Bolt (spammable)**

* Fast cast, low cost
* Used when no other spell has priority

### **2. Runic Burst (5 sec cooldown)**

* AoE explosion
* Used when 2+ enemies are close

### **3. Arcane Anchor (10–15 sec cooldown)**

* Root + damage over time
* Used on high mobility monsters (like Lizardmen)

### **4. Telekinetic Push (8 sec cooldown)**

* Knockback
* Used if monster gets within melee range

### **5. Rune of Disruption (20 sec cooldown)**

* Interrupt
* Silence for 3 sec
* Used on enemy spellcasters

---

# **PHASE 3: Defensive Logic**

### **If HP < 60%**

* Cast **Greater Arcane Shield**

### **If HP < 45%**

* Self-heal with **Arcane Mend**
* Move backward / reposition

### **If HP < 30%**

* **Teleport away**
* Reappears at hut
* Combat ends

Rare spawn exception:

* If fighting a rare monster, he stays until 10% HP

---

# **PHASE 4: Cooperative AI**

If player is fighting alongside him:

### **He checks player HP**

* <50% → casts Barrier of Assistance
* <25% → casts Rune of Disruption to CC nearby enemies
* If player’s target is different → switches to player’s target

### **Tagging System**

If **either** tags the monster:

* Player can loot
* If player gives loot to him → small rune dust reward

---

# **PHASE 5: Special Behaviors**

### **Monster Chasing**

If a monster runs:

* Alyndor levitates briefly to chase faster

### **Environmental Magic**

Certain walls or stones react to his spells (visual only)

### **Runic Overload (very rare)**

1% chance
He fires a **massive arcane blast** that:

* One-shots non-rare monsters
* Deals 40% HP to rares
* Leaves him stunned for 2 sec

Player comment:
“Whoa.”

Alyndor comment:
“That… was unintended.”

---