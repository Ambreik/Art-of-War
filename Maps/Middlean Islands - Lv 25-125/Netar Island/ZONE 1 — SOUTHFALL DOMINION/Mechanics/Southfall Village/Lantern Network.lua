			Lantern Network

*A hidden, atmospheric guidance and safety mechanic tied to village identity.*

## ✔ **Core Concept**

At night, lanterns ignite **one by one**, in a timed chain-effect around Southfall Village.

This is not only visual — it creates light-based micro-mechanics that impact:

* Pathfinding
* Monster behavior
* Player perception
* And future stealth/interactivity

---

## ✔ **How the Lantern Sequence Works**

When night begins (server time):

1. **Trigger:** “Dusk Threshold” (environment variable)
2. **Lantern Node #1** (Gate Lantern) ignites
3. Every 1.2 seconds, the next lantern activates
4. Final lantern lights the road leading **toward the Unfinished Citadel**

**Sequence Time:** ~14 seconds total
(Adjustable depending on number of lanterns you place.)

---

## ✔ **Mechanical Effects**

### **1. Light Radius Safety Buff**

When the chain completes:

Players within any lantern’s light radius receive:

* **“Softwarden Glow”** (5 min buff)
  *+3% Movement Speed*
  *+3% Dodge Chance vs Zone 1 monsters*

This is mild, zone-appropriate, and flavor-based.

---

### **2. Monster AI Modification**

Monsters near lantern lights (within 6 meters):

* Reduce aggression range by **40%**
* Pause wandering behavior
* Avoid entering light unless in combat

This makes Southfall feel genuinely safer at night without removing threat entirely.

---

### **3. Guidance Effect**

If a player is:

* **Below level 55**, or
* **Has not discovered Southfall before**

→ A soft glow appears on the lantern posts, guiding them visually toward the **Citadel road**.

(Hidden mechanic, no tutorial pop-up.)

---

### **4. Hidden Rare Event (1% nightly chance)**

During the lantern chain, the **sixth lantern** may spark blue.

This spawns a tiny fire elemental **“Sparkskipper”** that runs around the village, harmlessly.

Players who click it receive:

**“Warm Ember Fragment”** — a cosmetic junk item with lore.
(No gameplay advantage.)

---


### **Light Disruption Event (Ambient Trigger Event)**

Occasionally during the nightly lantern chain, **one lantern fails to ignite**.
A faint sputtering sound is heard, and the lantern glows dim orange.

### **Player Interaction:**

Players can approach and repair it using simple components:

* **Wick** — common village supply
* **Oil Flask** — sold by general merchants
* **Fire Source** — torch, spell, or flint

### **Result of Fixing:**

The lantern bursts into full flame, restoring the chain.

### **Rewards:**

* **Small experience bonus** (symbolic, not farmable)
* **+Tiny Reputation with Southfall Village** *(if this reputation is added later)*
* Subtle world feedback: nearby villagers briefly cheer, nod, or thank the player

### **Purpose:**

Lightly enriches the night cycle
Encourages exploration
Adds small interactions that feel alive without being overwhelming

---