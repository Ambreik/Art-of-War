			Panicked Dockside Smuggler

---

# ✅ **NPC FILE — “PANICKED DOCKSIDE SMUGGLER”**

## **• Name:**

**Panicked Dockside Smuggler**

## **• Role:**

Event NPC / Ambusher

## **• Type:**

Humanoid – Smuggler
Non-repeatable scaling encounter (per player instance)

## **• Function:**

Hidden event enemy spawned from “Suspicious Cargo” crates.

---

# **Overview**

The Panicked Dockside Smuggler is a low-tier criminal who hides inside cargo crates awaiting pickup by the Smuggler’s Guild operating through Southfall Port.
When discovered by a player during crate inspection, the smuggler immediately attempts to flee the scene to avoid capture and the exposure of smuggling routes.

This NPC is **not part of the normal world population**.
It exists **only as a triggered encounter**, created specifically to prevent abuse and to provide an immersive interaction with dock logistics, contraband transport, and hidden criminal activity.

---

# **Appearance**

The smuggler looks like a **dirty bagger / vagrant-type character**, wearing:

* Tattered, mud-stained brown coat
* Torn pants tied with rope
* Bare feet with seaweed stuck between toes
* Greasy, unkempt hair partially covering the face
* Canvas sack strapped over one shoulder
* Tiny blade (rusted shank) used only when cornered
* Face smeared with ash and grime to blend into dock shadows

Animation style:

* Hunched posture
* Nervous head twitches
* Quick, frantic movements
* Constantly looks over his shoulder

He visually contrasts with the clean and orderly dockworkers.

---

# **Behavior & Interaction**

### **Spawn Behavior**

* Bursts out of the crate with a loud *“THUD–CRACK!”*
* Immediately attempts to flee without engaging in combat.
* Uses **Panic Sprint** on spawn (40% run speed for 8 sec).

### **Run Behavior**

* Follows a predetermined escape route toward the dock edge.
* If not intercepted in time, he dives into the water and despawns.
* Despawn message:

  > “You’ll never catch me! This port is ours!”

### **Combat Behavior (if intercepted)**

* Weak melee attacker.
* Avoidance-based fight; low HP.
* Uses:

  * **Throw Sand** – 2 sec blind
  * **Cheap Jab** – small bleed
  * **Panic Dash** – attempts to resume escape route

### **Restrictions**

* Encounter is **solo-instanced** → Only the triggering player can interact, damage, or loot.
* Cannot be stunned more than once every 10 seconds (anti-lockdown).

---

# **Mechanics and Functions**

### **• Flee Mechanic**

Player must stop him; otherwise event fails.

### **• Quest Trigger**

Drops **1 × Contraband Ledger**, starting the quest *“Ledgers of Lies”*.

### **• Anti-Exploit**

* Only spawns from Suspicious Cargo event.
* One smuggler per triggered crate.

---

# **Dialogue / Quotes**

### **On Spawn**

* “Damn—caught again!? Move!”
* “Not today! Outta my way!”

### **During Escape**

* “Can’t let them find the ledger!”
* “No no no no—run!”

### **During Combat**

* “Fine! You want a fight?!”
* “Back off, dock rat!”

### **On Defeat**

* “The… ledger… curse it all…”

### **On Escape**

* “You’ll never catch me! This port is ours!”

---