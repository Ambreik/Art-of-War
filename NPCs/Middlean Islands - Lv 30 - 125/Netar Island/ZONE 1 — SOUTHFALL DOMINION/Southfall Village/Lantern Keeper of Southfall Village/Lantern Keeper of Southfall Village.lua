			Lantern Keeper of Southfall Village

**NPC Name:** *Edrin Wickford*
**Role:** Lantern Keeper (Village Utility Worker)
**Location:** Southfall Village (always within village boundaries, but wanders during event)
**Faction:** Southfall Village (Neutral Human Settlement)
**Combat:** Non-combat NPC (cannot be attacked by monsters or players)
**Event NPC:** Yes — tied to “Lights Before Nightfall” event
**Respawn/Movement:** Standard civilian wandering + special event routes
**Map Icon:** *None* (local utility NPC only)

---

# ✔ **1. NPC VISUAL DESCRIPTION**

**Appearance:**
Edrin Wickford wears simple yet distinct village-worker attire:

* Rough beige linen shirt
* Sleeveless leather vest with soot stains
* Charcoal-dark trousers rolled above boots
* Belt holding small flasks of lantern oil, wick bundles, and tools
* Always carries a long lantern pole with a hook
* Face slightly dirty from soot; hair tied back with twine

During dusk **his lantern pole head softly glows**, showing he’s preparing to make rounds.

During the event, his appearance updates depending on the scenario:

### **Fishing Scenario Appearance**

* Kneeling by the lake
* Pants rolled up
* Fishing rod dropped near him
* “Moonfin Gleamer Guidebook” on the ground

### **Drunk Scenario Appearance**

* Slouched or lying on his back
* Empty bottle in hand
* Cheeks flushed
* Shirt unbuttoned, vest loose

### **Monster-Attacked Scenario Appearance**

* Surrounded by Duskhollow Scravels
* Defensive stance with lantern pole used as improvised weapon
* Heavy breathing, scraped arm

---

# ✔ **2. DEFAULT BEHAVIORS**

When NOT in event mode:

### **Daily Routine**

Edrin has a typical daily loop:

**Morning:**

* Carries oil buckets
* Checks wick supplies
* Performs idle sweeping animation around lantern posts

**Afternoon:**

* Walks between lantern posts inspecting them
* Sits on crate near storage shed
* Polishes lantern pole

**Evening (Event Pending):**

* Stands near the main gate, stretching
* Reacts to the Guardian shouting (if event starts)

**Night:**

* After event or if event didn’t trigger:

  * Walks route lighting lanterns
  * Stays near watchtower warming hands

---

# ✔ **3. EVENT-INTEGRATED BEHAVIOR**

When the “Lights Before Nightfall” event starts, Edrin Wickford is teleported or path-shifted into **one of three states**, chosen randomly.

---

## **Scenario 1: Fishing for Moonfin Gleamer**

**Location:** Southfall Side-Pond / Small Lake
**Animation:** struggling to hold fishing rod
**Dialogue Style:** flustered, embarrassed

**Key Quotes (Random):**

* “Just one more pull—just one more—ah, blast it!”
* “What? Lanterns? Oh no… oh no no no…”
* “Please, I *need* this fish! Help me catch it!”

**Behavior After Player Arrives:**

* Immediately drops rod
* Runs toward village
* Begins lantern route at boosted pace
* Yells while running: “Light the way, light the way—move, Edrin!”

---

## **Scenario 2: Drunk Under the Wall**

**Location:** Leaning against village wall or behind barn
**Animation:** swaying, hiccuping
**Dialogue Style:** slurry, apologetic

**Key Quotes:**

* “Ohhh… lanterns… yeah… the fiery things…”
* “Here—*hic*—take my tools. You’re steadier than me…”
* “Tell the Guardian I… love his hat…”

**Behavior After Player Arrives:**

* Falls asleep
* Doesn’t move until event ends
* Contributes only by providing tools

---

## **Scenario 3: Surrounded by Monsters**

**Location:** Edge of village perimeter
**Enemies:** Duskhollow Scravels
**Dialogue Style:** panicked, shouting

**Key Quotes:**

* “Help! Someone! They smell the oil—I can’t fight them all!”
* “Stay back foul beasts!”
* “Over here! Get them off me!”

**Behavior After Player is Safe:**

* Follows the player to nearest lantern
* Lights first lantern
* Returns to normal route

---

# ✔ **4. INTERACTION OPTIONS**

### **Outside Event**

* Standard greetings
* "Evenin', stranger. These lanterns keep us safe."
* "Oil, wick, flame—simple, but important."
* “Southfall nights are dark. Someone must keep the lights alive.”

### **During Event**

Interactions trigger the scenario-specific dialogue and tasks.

---

# ✔ **5. LORE & RUMORS**

Villagers say:

* “Edrin tries his best… but he’s scatterbrained.”
* “Sometimes I catch him reading fishing manuals instead of working.”
* “He’s harmless. Drink gets him sometimes, though.”
* “I’ve seen him chased by Scravels before… poor fool.”

Guardian says:

* “If he weren’t useful, I’d have replaced him years ago!”
* “Find Edrin before the dark does.”

---

# ✔ **6. TECHNICAL NOTES FOR YOUR SYSTEM**

* **Event NPC Flag:** TRUE
* **Combat Flag:** FALSE
* **Can be Shift-Phased:** TRUE (per-player scenario instance)
* **Cannot be harmed or aggroed**
* **AI State Machine:**

  * **Idle Routine**
  * **Event Scenario 1**
  * **Event Scenario 2**
  * **Event Scenario 3**
* **Lighting Route Path:** predefined path across all lantern posts
* **Event Failure Pose:** sitting near unlit lantern, rubbing temples

---

# ✔ **7. POST-EVENT BEHAVIOR**

After the event:

* Edrin thanks the player if encountered
* Returns to gate area
* Performs “wiping sweat” animation
* Dialogue:

  * “Thanks… I’ll try to be better tomorrow.”

---