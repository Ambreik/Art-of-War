			UI DESIGN: RESCUE BELL + EXTRACTION SYSTEM

## **1. INTERACTION PROMPT (when player approaches the bell)**

### **Floating Interaction Widget**

**[Bell Icon]**
**“Ring the Rescue Bell?”**
**→ Press E**

**Style:**

* Soft gold border
* Light cave-green glow
* Slight screen shake on hover (0.5%)
* Faint echo ripple animation around the bell icon (slow)

---

# **2. ACTIVATION CHANNEL BAR**

Appears when player holds the button to ring:

**Title:**
**“Ringing the Bell…”**

**Bar Style:**

* Horizontal bar
* Copper → teal gradient fill
* Embers fall off the edges when channeling
* A subtle glow flashes at completion

**Cancel Text:**
**“Interrupted!”** (red shake)

---

# **3. POST-ACTIVATION MESSAGE**

After ring completes:

**“Your call echoes into the deep…”**

This text slowly fades after 2 seconds.

---

# **4. NPC SUMMON NOTIFICATION**

When Brakk begins teleporting:

### **System Message (Top Center)**

**“Foreman Brakk is on his way.”**

### **Subtitle Line**

Small, under main text:
**“Stay close to the bell.”**

Blue-teal shimmer animates behind the message.

---

# **5. ESCORT-START UI**

When Brakk appears:

### **Dialogue Box (automatic)**

**Brakk:**
**“Alright, let’s get ya out. Follow me!”**

Box Style:

* Hammer icon on left
* Wooden frame with iron trim
* Glow pulse every 3 seconds

---

# **6. ESCORT STATUS BAR**

Appears at the top of screen during escort.

**[Boots Icon] Extraction Escort — Follow Brakk**

### **Progress Segments**

Not a continuous bar—
Instead:

* Each segment = cave layer passed
* Lights up copper → teal
* Final segment flashes green on extraction

---

# **7. EXTRACTION COMPLETED UI**

Fades in after screen blacks out:

## ✔ **Safe Extraction Complete**

**You have been escorted out of the Grimstone Caverns.**

Small icon: Brakk’s hammer and lantern crossed.

---

# **8. ERROR / BLOCKED UI PROMPTS**

### **Bell on cooldown:**

❗ **“The bell hasn’t recovered yet.”**

### **Player in combat:**

⚔️ **“You cannot call for extraction while in combat.”**

### **Brakk busy:**

⏳ **“Extraction team is assisting another miner.”**

### **Path obstructed:**

🛑 **“The cave shifts… try moving to a safer area.”**

---

# **9. RESCUE BELL ICONOGRAPHY**

### **Main Icon – “Rescue Bell”**

* Shape: Iron bell with a thick copper rope
* Glow: Greenish cavern light
* Extra detail: Faint sigils on metal surface
* Use: Interaction prompt, inventory filters, UI list

### **Deep Echo Bell Variant**

* Bell cracked
* Small sparks
* Slight echo rings behind the icon

### **Inactive Bell**

* Desaturated
* Rope looks slack
* No glow

### **On Cooldown**

* Bell icon with sandglass overlay
* Greyed rim

---

# **10. FOREMAN BRAKK ICONOGRAPHY**

### **NPC Summon Icon**

* Hammer and lantern crossed
* Blue-teal background aura

### **Escort Status Icon**

* Heavy iron boots
* Movement lines behind them

### **Emergency Extraction Icon**

* Cracked stone floor
* Blue rune symbol glowing from below

---

# **11. OPTIONAL (but recommended) HUD NOTIFICATIONS**

### **Bell Pulse Detected**

Appears if enemies begin moving toward the bell:

💥 **“Your signal draws unwanted attention…”**

Pulse rings animate outward from center of screen.

---

# **12. ICON FILES LIST (for your project folder structuring)**

You can use this exact naming scheme later:

```
UI/
 ├─ Icons/
 │   ├─ rescue_bell_default.png
 │   ├─ rescue_bell_deep_echo.png
 │   ├─ rescue_bell_inactive.png
 │   ├─ rescue_bell_cooldown.png
 │   ├─ brakk_summon.png
 │   ├─ brakk_escort.png
 │   ├─ brakk_emergency.png
 │   └─ extraction_complete.png
 ├─ Widgets/
 │   ├─ prompt_rescue_bell.png
 │   ├─ channel_bar_rescue_bell.png
 │   └─ escort_status_bar.png
 └─ Notifications/
     ├─ extraction_warning.png
     └─ bell_pulse_alert.png
```

---