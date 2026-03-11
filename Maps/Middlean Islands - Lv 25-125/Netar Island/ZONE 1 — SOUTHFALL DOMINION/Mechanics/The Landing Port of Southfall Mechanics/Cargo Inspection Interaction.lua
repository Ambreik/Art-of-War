			Cargo Inspection Interaction

### **Random Inspectable Crates**

* Small wooden crates appear in different dock spots (2–4 active at a time).
* 30–45 second respawn timer.
* When opened:
  * 70% chance: small junk resources (bait, scraps, food).
  * 25% chance: crafting material (Tier 1).
  * 5% chance: very small chance for **a Dockworker’s Lost Ring** (cosmetic trinket + 5% vendor resale value).

### **Hidden Interaction**

#### **“Suspicious Cargo” Rare Event**

* 1% chance when inspecting a crate.
* Spawns a hostile smuggler NPC who tries to flee to the end of the dock.
* If the player stops him, he drops **1 “Contraband Ledger”**, starting a mini-quest.

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

# **A. RANDOM INSPECTABLE CRATES — LOOT TABLE**

### **Spawn Rules**

* 2–4 crates active in the dock area.
* Respawn after 30–45 seconds.
* Each crate can be inspected once per spawn.

---

## **LOOT LIMIT (Anti-Abuse System)**

Each player can loot:

* **Guaranteed:** 2 crates per hour
* **Low chance:** A third crate per hour (10% chance)

After hitting the limit, crates still show as interactable, but the result becomes:

> “You find nothing else useful right now.”

This system discourages farming loops.

---

## **LOOT TABLE (With Percentages)**

### **1. Junk / Low-tier Items (70%)**

| Item                       | Description                                    |
| -------------------------- | ---------------------------------------------- |
| **Salted Fish Scrap** x1–3 | Low-value vendor item.                         |
| **Dockworker’s Rations**   | Minor food restoring a small amount of health. |
| **Old Fishing Bait**       | +1 Fishing Skill for 10 minutes.               |
| **Frayed Rope Strand**     | Basic crafting junk.                           |
| **Harbor Pebbles**         | Cosmetic throwable stone (no combat value).    |

---

### **2. Crafting Materials — Tier 1 (25%)**

| Material                   | Used For                    |
| -------------------------- | --------------------------- |
| **Softwood Planks**        | Carpentry / basic crafting. |
| **Copper Fragments**       | Blacksmithing Tier 1.       |
| **Herbal Sprigs**          | Alchemy Tier 1.             |
| **Damp Cloth**             | Tailoring Tier 1.           |
| **Brittle Leather Scraps** | Leatherworking Tier 1.      |

Each crate gives 1–2 materials.

---

### **3. Rare Cosmetic Trinket (5%)**

### **Dockworker’s Lost Ring**

* Cosmetic ring with a rusty appearance.
* +5% vendor resale bonus (minor bonus).
* Small sparkle effect when inspected in bags.

---

# **B. HIDDEN INTERACTION — FULL EVENT DESIGN**

This is the expanded version of:

### **“Suspicious Cargo” Rare Event**

---

## **EVENT TRIGGER**

When a player inspects a crate:

* **1% chance** to trigger the hidden event.
* Crate shakes slightly and breaks open visually.
* An NPC spawns **inside the crate**.

---

# **C. EVENT PHASES**

---

## **PHASE 1 — SMUGGLER ESCAPES THE CRATE**

**NPC:** *Panicked Dockside Smuggler*
Behavior:

* Pops out of the crate in panic.
* Says:

  > “Damn it—spotted! Move aside!”
* Immediately turns and **sprints toward the end of the dock**.

Smuggler uses **Sprint (40% speed for 8 seconds)** at the start.

---

## **PHASE 2 — PLAYER CHASE / INTERCEPT**

### Player must:

* Slow him
* Stun him
* Root him
* Or simply catch him and deal damage

If the player reaches 10 meters from the dock’s final edge:

### ❌ **FAIL CONDITION**

The smuggler jumps into the water and disappears.

He yells:

> “You’ll never find the ledger!”

The player receives no loot and the event ends.

---

## **PHASE 3 — COMBAT (If Caught)**

Smuggler Stats (scaled to zone level):

* Low HP (similar to a weak humanoid)
* Uses:

  * *Cheap Shot* (1-second stun)
  * *Throw Sand* (blind for 2 seconds)
  * *Panic Dash* (20-second cooldown escape attempt)

Upon defeat:

### **Guaranteed Drop:**

✔ **1 × Contraband Ledger**
(Binds on Pickup — starts quest: *“Ledgers of Lies”*)

### **Additional Drops (25% each):**

* **Smuggled Coin Purse** (small currency reward)
* **Illicit Herb Packet** (Alchemy Tier 1 bonus mats)
* **Faded Smuggler Map Fragment** (collectable)

### **Rare Drop (1%):**

**Smuggler’s Mask** — cosmetic cloth mask covering lower face.

---

# **D. EVENT VARIANTS (Optional Enhancers)**

These variations may happen rarely to keep things interesting:

### **1. Double Smuggler Spawn (0.2%)**

Two smugglers exit the crate fighting each other, then notice the player.

### **2. Ambush Smuggler (0.5%)**

Instead of running, the smuggler attacks immediately.

### **3. “Dead Smuggler in Crate” (0.3%)**

The event triggers but spawns a dead body containing loot + lore note.

---

# **E. FOLLOW-UP QUEST HOOK**

**Contraband Ledger** starts:

### **QUEST: “Ledgers of Lies”**

Bring the ledger to the Cargo Inspector.

Reward ideas:

* Dock Inspector’s Token
* Small XP
* Progress in Navigator’s Lodge REP

---