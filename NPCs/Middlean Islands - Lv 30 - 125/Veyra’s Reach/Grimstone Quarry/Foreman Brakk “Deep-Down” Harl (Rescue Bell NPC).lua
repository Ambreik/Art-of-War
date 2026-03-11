			Foreman Brakk “Deep-Down” Harl (Rescue Bell NPC)

---

# **1. Overview**

A hardened, no-nonsense rescue worker stationed below ground in Grimstone Quarry.
He is **not a miner**, but part of a special extraction unit responsible for retrieving trapped miners — and now players.

He activates only when the player rings the **Rescue Bell**, and immediately takes action to escort the player safely to the surface.

No quests.
No reputation.
No story.
Strictly functional and mechanic-driven.

---

# **2. Location**

**Grimstone Quarry – Lower Access Caverns**

* Not physically present unless summoned.
* His “natural” idle location is a **hidden side alcove near the main shaft**, inaccessible to players.
* Appears with a short gravel-dust burst and lantern glow when called.

---

# **3. Appearance**

* Stocky, muscular human (or your world race equivalent), coated in quarry dust.
* Leather reinforced miner’s coat, steel knee pads, high-grip boots.
* Belt full of tools:

  * Pitons
  * Rope coils
  * Mini lifting hooks
  * A loud iron whistle
* Carries a **lantern staff** with a rotating cage head.
* Back-mounted compact winch system with retractable ropes and clamps.

**Animations:**

* Lantern swing as he walks.
* Dust-off hands.
* Checks the ground with a toe before moving.
* Short rope-pull gesture when activating extraction.
* If attacked (even though immune): ignores hits and keeps walking.

---

# **4. Behavior**

### **4.1 Summoning Trigger**

Player interacts with a **Rescue Bell** found at:

* cavern choke points,
* deep tunnels,
* semi-boss chambers,
* and near risky vertical drops.

Upon activation:

* Bell emits a low metallic echo.
* Dust motes begin swirling around the ground.
* Foreman Brakk materializes in 1.5 seconds.

He immediately says one of his quotes (see section 7).

---

### **4.2 Escort Pattern (Primary Mechanic)**

Once summoned, he enters **Escort Mode**:

1. **Locates nearest safe extraction route.**
   (He always knows pre-defined nav-mesh tunnels.)

2. **Clears obstacles automatically**, using animations:

   * rope-pull to collapse a small rock pile,
   * pry-bar move to open a blocked path,
   * lantern flare to scare tunnel critters.

3. **Moves at a controlled pace** so players can follow.

4. **Immune to all damage**, and monsters ignore him completely.

5. If the player pulls aggro, Brakk occasionally shouts to keep up.

6. If the player dies, disconnects, or lags behind:

   * He waits 12 seconds at the checkpoint.
   * After that, despawns with a dust animation.

7. When reaching the extraction point terminal:

   * Performs a rope-grip gesture.
   * Triggers a short 1–2 second screen fade.
   * Teleports the player to surface-level camp platform or safe zone.

---

### **4.3 Failsafe Mechanics**

* If a player is stuck in terrain → Brakk detects it and force-extracts.
* If summoned while in combat:

  * He still appears, but waits 3 seconds before starting the escort.
* If summoned repeatedly within 1 minute:

  * He refuses: *“Hold your horses, rock-brain. I ain’t teleportin’ faster than my legs.”*
* If somehow trapped by environment instability:

  * He phases through the terrain and rematerializes.

---

# **5. Additional Hidden Mechanics**

These are “unspoken” features the player isn’t told about.

### **5.1 Bonus: Cave Mapping Knowledge**

First time a player uses Brakk, they permanently unlock:
**“Marked Caverns”** on minimap:

* slightly more visible cave paths,
* faint markers for transitions,
* slightly clearer vertical depth markers.

This is **account-wide**, purely convenience, not power.

---

### **5.2 Monsters Temporarily Clear Out**

For 30 seconds after Brakk is summoned:

* Monsters within a ~20m radius become **disinterested** and patrol away.
* No drops or XP lost, this is purely to help escort begin safely.

---

### **5.3 Rare Brakk Event (1% chance)**

This is a tiny, fun flavor moment:

* Brakk appears riding a small mining cart.
* The cart bumps into a stone, derails, sparks fly.
* He stands up nonchalantly and says,
  *“Pretend you didn’t see that.”*

No gameplay effect, purely cosmetic.

---

# **6. Rescue Bell Object**

(Separate object file if needed — here is the short version.)

* Bronze, slightly rusted bell bolted onto a wooden support beam.
* Emits a *deep, slow* “TOOOOM” sound.
* Can be activated only if the player is in a **danger zone** or **below depth threshold**.
* 30-second cooldown per player.

**UI Interaction Text:**
**Ring for Assistance**
*“Call the Quarry Rescue Crew.”*

---

# **7. Quotes**

Foreman Brakk speaks only when necessary.

### **On Appearing**

* “Keep your boots on, I’m here.”
* “Fell down again, did ya? Right. Follow me.”
* “Don’t wander. Quarry swallows fools alive.”

### **During Escort**

* “Step light. Hear that rumble? Means don’t touch the walls.”
* “Eyes open — not everything sleeping down here is friendly.”
* “Move. Slow is fine, dead isn’t.”
* “Over the rocks, not around ‘em. Safer.”

### **At Extraction Point**

* “Up you go.”
* “You’re back on solid ground. Try stayin’ there.”
* “Surface reached. Breath of fresh air for both of us.”

### **If Player Tries Summoning Too Fast**

* “Bell’s busted? No? Then don’t ring it twice.”

---

# **8. Interaction Rules**

* Immune to PvP and PvE.
* Cannot be damaged, knocked back, CC’d, or taunted.
* Cannot be blocked; player model can pass through him slightly if needed.
* Cannot be dueled.
* Cannot be followed back into caverns — he despawns immediately after extraction.

---