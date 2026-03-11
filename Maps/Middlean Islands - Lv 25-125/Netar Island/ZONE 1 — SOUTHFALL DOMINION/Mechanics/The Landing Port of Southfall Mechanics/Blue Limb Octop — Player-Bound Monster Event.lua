			Blue Limb Octop — Player-Bound Monster Event

## ✔ **Trigger Condition**

A successful fishing cast **on Southfall Dock tiles** triggers a hidden roll.

* **Roll is made only when a fish is “caught,”** not on failed casts → reduces spam.
* Player must not be flagged as “Octop Event On Cooldown.”

---

# **✔ Spawn Rules (Non-Abusable Version)**

### **1. Per-Player Instance**

* Same rule: **only the triggering player** can damage it.

### **2. Event Cooldown (Global Per Player)**

To prevent farming:

**After an Octop spawns, the player receives a 12-minute hidden cooldown.**

During this cooldown:

* They cannot trigger another Octop.
* Message: *“The waters grow still… whatever lurked beneath seems gone for now.”*

### **3. Soft Daily Cap**

To prevent extreme power-farming:

* **Max Octop spawns per player per day: 4**
* After 4 events → 0% chance until daily reset.

This still allows fair gameplay while preventing abuse.

---

# **✔ Spawn Chance Logic (New Anti-Abuse Version)**

### **Base Chance:** **3%**

### **Scaling:**

Fishing longer increases the chance, **but only up to a soft cap**, using diminishing returns.

### ##🧮 New Formula:

Let
**T = minutes spent fishing (max 20)**

```
OctopChance(T) = Base × (1 + 0.04 × √T)
```

Why √T?
Because the curve rises early but flattens later → no abuse.

### **Results:**

| Time Fishing | Chance                          |
| ------------ | ------------------------------- |
| 0 min        | 3.0%                            |
| 5 min        | 3 × (1 + 0.04×2.23) = **3.26%** |
| 10 min       | 3 × (1 + 0.04×3.16) = **3.38%** |
| 20 min (cap) | 3 × (1 + 0.04×4.47) = **3.53%** |

### ✔ Difference:

Originally it grew to 6% — too abusable.
Now it caps softly at **3.5%**, safe & controlled.

---

# **✔ Loot Drops (unchanged + balanced)**

### Guaranteed table:

* **Tangle-Wrapped Tentacle** (Cooking)
* **Octop Ink Vial** (Scribe)

### Rare:

* **1% chance**: **Barnacle-Plated Trinket**

### New Anti-Abuse Rule:

* Trinket drop has a **per-player soft cap**:
  **After 1 trinket drop, the chance reduces to 0.1% for the rest of the day.**

This prevents infinite farming.

---

# **✔ Anti-Griefing Protection**

If multiple players are on a dock:

* Only the triggering player sees **the nameplate colored**.
* Others see it as a “ghosted” creature (can’t target it).
* It doesn’t push, drag, or body-block other players.

---

# **4B. Fishing Luck Scaling Mechanic (Rare Fish Improvements)**

Your previous formula was good — now it becomes safer with anti-abuse.

### **Base Rare Chance:** 1.5%

### ###🧮 Revised Formula (Soft Growth, Not Abusive)**

```
RareChance(T) = Base × (1 + 0.05 × log2(T+1))
```

✔ Scales early
✔ Hard to abuse after 10+ minutes
✔ Always capped below 4%

**Values:**

| Minutes | Rare Chance                         |
| ------- | ----------------------------------- |
| 0       | 1.5%                                |
| 5       | 1.5 × (1 + 0.05 × 2.58) = **1.69%** |
| 10      | 1.5 × (1 + 0.05 × 3.46) = **1.75%** |
| 20      | 1.5 × (1 + 0.05 × 4.39) = **1.83%** |

### ✔ Daily Soft Cap

After **25 rare fish** caught in a day:

* Chance reduces by 60% → prevents botting.

---

# **4C. Optional: Fishing “Fatigue Layer”**

After 30 minutes fishing at *the same spot*:

* Fishing Luck stops increasing
* Octop chance stops scaling
* Cosmetic cue: *“The waters seem fished out.”*

Move 5 meters → system resets.

---