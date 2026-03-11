			Visiting Merchant Rotation — Full System

## **1. Core Concept**

Every **2–3 in-game days**, a unique merchant arrives at the **Landing Port of Southfall (Zone 1)** and stays for **6 in-game hours**.
They always appear at the same “Visiting Merchant Spot” beside the pier canopy.

**Goal of this system:**
Provide a predictable but exciting low-tier economy loop for new players, while offering a small chance for time-sensitive or reputation-based bonuses.

---

# **2. NPC Structure (General Template)**

You can create multiple rotating merchants later (e.g., Clothier, Spice Trader, Lure Maker).
All of them follow the same framework.

### **Visiting Merchant — Base Template**

* **NPC Type:** Vendor / Rotating Merchant
* **Faction:** Neutral (no REP)
* **Behavior:**

  * Arrives → Sets up crates → Opens shop
  * After 6h → Packs up → Leaves
* **Vendor Window:**
  Contains **Category Tabs** so adding new items is easy.

---

# **3. Item Pool Architecture (Very Important)**

To make extending easy later, items are separated into **four independent pools**:

---

### **A. Common Stock Pool**

These items always appear regardless of which merchant arrives.

**Categories:**

1. **Low-Tier Profession Materials (Tier 1)**
2. **Local Decorative Items**
3. **Fishing Lures (Limited Charges)**
4. **Local Snacks / Foods**

**Format (simple for future item files):**

```
ItemPool_Common = [
  { itemID: X, name: "Rough Woodchips", type: Material, tier: 1 },
  { itemID: Y, name: "Dockside Pebble Ornament", type: Decoration },
  { itemID: Z, name: "River Minnow Lure", charges: 10 },
  ...
]
```

---

### **B. Merchant-Specific Stock Pool**

Each visiting merchant has their own themed items.

Examples:

* **“Salty Berro the Fisherman Merchant”** → sells lures, wet boots, nets
* **“Tamsin the Spice-Trader”** → sells dried herbs, snacks
* **“Clothpatch Igra”** → sells cloth scraps, small bags

Format:

```
ItemPool_Fisherman
ItemPool_SpiceTrader
ItemPool_ClothTrader
```

---

### **C. “One-Per-Visit” Limited Stock**

A single item from this pool is chosen per visit:

Examples:

* **“Tide-Polished Trinket”** (cosmetic)
* **“Minor Sailor’s Draft”** (1h stamina regen buff)
* **“Lucky Hook Charm”** (tiny +1% fishing skill, 30 uses)

Format:

```
ItemPool_LimitedVisit = [
  { itemID: A, rarity: Uncommon },
  { itemID: B, rarity: Uncommon },
  ...
]
```

---

### **D. Secret Item Pool (Special Mechanic)**

Contains only 4–7 items maximum.
Meant to feel rare and special.

Examples:

* **“Navigator’s Pocket Spyglass”** (cosmetic, zoom function)
* **“Weighted Mooring Hook”** (utility item: slows a creature for 3s)
* **“Lodgemaster’s Weathered Logbook Page”** (contains 1 random clue to a world secret — expandable)
* **“Smoker’s Mini Fish Rack”** (decor toy)

Format:

```
ItemPool_Secret = [
  { itemID: S1, req: Rank I or early arrival },
  { itemID: S2, req: Rank I or early arrival },
  ...
]
```

---

# **4. Secret Item — Trigger Conditions**

### The player can purchase the Secret Item only if:

1. They interact **within the first in-game hour**,
   **OR**
2. They have **Rank II Navigator’s Lodge Reputation**.

*Only 1 secret item per visit.*
If the player buys it → it disappears for everyone.

If nobody buys it → merchant leaves with it.

---

# **5. Arrival Mechanics**

### **Arrival Pattern**

1. Merchant arrives with:

   * 1 pack yak / mule / cart (cosmetic)
   * 4–6 small crates that spawn near the booth

2. Animation sequence:

   * Places lantern
   * Opens umbrella/awning
   * Sets up shop

3. Shop opens to players.

### **Departure Pattern**

After 6 in-game hours:

* "Merchant is preparing to leave soon" (ambient announcement)
* Packs up
* Crates despawn
* Leaves along pier path

---

# **6. Rotation Logic**

### Every time the merchant arrives:

1. Pick **1 merchant type** from the rotation list
2. Load:

   * Common Pool
   * Merchant-specific Pool
   * One-per-visit Pool
   * Secret Pool

This ensures the system is **easy to expand** without rewriting anything.

---

# **7. Example Merchant Loadout (Sample)**

**Visiting Merchant: “Salty Berro”**

✔ Common items
✔ Salty Berro’s Fishing Set
✔ One-per-visit: “Soggy Sailor’s Figurine”
✔ Secret Item: “Navigator’s Pocket Spyglass” (hidden tab)

---

# **8. Optional Features (Expandable)**

### ** Daily Discount**

With Navigator’s Lodge REP Rank II, future merchants may offer:

* 1 random 5% discount item
  (*can be implemented later*)

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

		ROTATING MERCHANTS (NAMES ONLY)


### **1. Vaelis Hookthane**
Fishing Goods Merchant

### **2. Seraphelle Mossweft**
Herbalism Goods Merchant

### **3. Bront Tavaspan**
Cooking Goods Merchant

### **4. Miraleen Threadsage**
Tailoring Goods Merchant

### **5. Jorvik Beasttender**
Mount & Pet Food Merchant

### **6. Runecarver Elthron**
Rune Part / Tier I–II Rune Merchant


---

# ✅ **OFFICIAL MERCHANT ROTATION (in order)**

### **Standard Rotation Cycle (One Merchant Appears):**

1. **Vaelis Hookthane**
2. **Seraphelle Mossweft**
3. **Bront Tavaspan**
4. **Miraleen Threadsage**
5. **Jorvik Beasttender**
6. **Runecarver Elthron**

After #6, the rotation loops back to #1.

---

# 🌀 **Rare Dual-Merchant Events (Chance: 8%)**

Triggered at the moment the merchant spawns.

Dual combinations (in order of priority):

### **A. Vaelis Hookthane + Seraphelle Mossweft**
(Fishing & Herbalism pair — thematically natural)

### **B. Bront Tavaspan + Miraleen Threadsage**
(Cooking & Tailoring pair — crafted goods merchants)

### **C. Jorvik Beasttender + Runecarver Elthron**
(Beasts + Runes — “beastkin & mystic” duo)

Only **one** of these pairs can appear.
If no dual spawn triggers → normal rotation.

---