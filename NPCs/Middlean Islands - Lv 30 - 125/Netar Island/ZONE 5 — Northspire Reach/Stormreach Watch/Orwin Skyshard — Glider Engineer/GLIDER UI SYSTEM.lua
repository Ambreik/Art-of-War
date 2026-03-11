			GLIDER UI SYSTEM
		(Endurance Bar, Wind Indicator, Flight Feedback)

	Purpose
	
	The Glider UI provides real-time readability so players :
* Understand glide stamina
* Read wind influence
* Control landing timing
* Feel mastery instead of guessing

---

		1. Glide HUD Activation

	The Glider UI appears ONLY while gliding

	UI fades in when :
* Glider deploys
* Emergency glide triggers

	UI fades out when :
* Player lands
* Glide collapses
* Glider is canceled

	This keeps UI clean and non-invasive.

---

		2. Glide Endurance Bar

	Function

* Tracks remaining glide stamina

	Bar Behavior : 

| State          | Visual               |
| -------------- | -------------------- |
| High endurance | Full bar, stable     |
| Medium         | Slight flicker       |
| Low            | Pulsing warning      |
| Critical       | Flashing red         |
| Depleted       | Shatters / collapses |

	Drain Sources : 
* Time spent gliding
* Turning sharply
* Speed-diving
* Turbulent wind
* Carrying weight penalties

---

		3️⃣ Wind Direction Indicator

	Wind Compass Icon

* Small circular UI element showing :
	* Wind direction arrows
	* Strength intensity
	* Favorable vs hostile airflow

	Colors : 

| Color        | Meaning                 |
| ------------ | ----------------------- |
| Blue / Green | Helpful wind            |
| Yellow       | Neutral                 |
| Red          | Resistance / turbulence |

	Player Benefit

* Players learn to :
	* Glide with wind
	* Avoid headwind
	* Ride lift streams for longer travel

---

		4. Vertical Drop Indicator (Optional Overlay)

	A faint altitude fade meter showing :
* Remaining safe fall range
* Risk zone threshold

	Helps players judge :
* When to land
* When to dive
* When emergency deployment is needed

---

		5. Stability & Turbulence Feedback

	Visual Feedback : 
* Screen sway in turbulence
* Cloth flap animation on glider
* Shake if low-quality glider struggles

	UI Feedback : 

| Effect             | Indicator     |
| ------------------ | ------------- |
| Stable flight      | Calm glow     |
| Minor instability  | Flicker       |
| Severe instability | Warning flash |

---

		6. Emergency Deployment Indicator

	If player falls dangerously :
* UI flashes "Emergency Deploy Ready"
* If triggered: "Auto-glide message"
* If unavailable: "Warning pulse"

---

		7. Soft Minimalist Design Goal

	The UI should feel :
✔ Light
✔ Non-cluttered
✔ WoW-like
✔ Optional to hide
✔ Informative without distraction

---
