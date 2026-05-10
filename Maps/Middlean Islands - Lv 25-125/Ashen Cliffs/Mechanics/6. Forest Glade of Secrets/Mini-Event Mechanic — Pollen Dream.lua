			Mini-Event Mechanic — Pollen Dream

---

		1. Mechanic Overview

	Deep in the Glade, a single bioluminescent flower blooms when this event is active.
	It releases a thick, glowing pollen cloud that slowly spreads in a small radius.

	This is not a puzzle.
	This is a test of endurance, trust, and restraint.

	The player instinct is to step out of danger.

	This event requires the opposite.

---

		2. Trigger Conditions

* 25% chance to be the active mini-event when Glade is entered
* The flower is invisible until event is active
* Soft humming sound and faint glow guide players to it
* Only one player can attempt it at a time
* Event duration window : 6 minutes

	When active :
* Ambient forest sound dulls
* Air particles visibly shimmer
* Slight green-gold fog in a circular area (the pollen zone)

---

		3. Visual & Area Setup

* Circular pollen cloud radius: ~6–8 meters
* Visibility slightly reduced inside
* Edges of screen gain faint blur effect (atmospheric)
* Ground covered in glowing spores

	A clear visual border shows the safe zone the player must not leave.

---

		4. Player Interaction Flow

	Step 1 — Enter the Pollen

	When player steps inside :
* Status message: "The air feels heavy… alive."
* Timer begins (hidden from player)

	Step 2 — Endurance Phase

	Player must remain inside for X seconds (tunable, e.g. 35–45s).

	During this time :
* Mild nature/poison damage ticks every 3 seconds
* Movement speed slightly reduced
* Breathing sound effect increases
* Vision blur intensifies slightly over time

	Step 3 — Psychological Pressure

	At halfway point :
* Sound becomes muffled
* Subtle whispering wind sound
* Player feels urge to step out due to discomfort

	This is intentional design pressure.

---

		5. Failure Conditions

	Event instantly resets if :
* Player steps outside the pollen radius
* Player dies
* Player uses movement ability to blink/teleport out
* Player mounts

	On failure :
* Flower instantly closes
* Pollen vanishes
* Event goes on cooldown

---

		6. Success Feedback

	When timer completes :
* Pollen suddenly disperses upward like dust in sunlight
* Flower closes peacefully
* Player hears deep inhale sound
* Hidden NPC spawns nearby
* Buff is granted

---

		7. Damage & Tuning Notes

	Damage must be :
* Noticeable but non-lethal for prepared players
* Dangerous for low HP or panic movement
* Reduced by poison/nature resistance gear (nice hidden synergy)

	This makes the event feel fair, not scripted.

---

		8. Buff Reward (for your Buff file)

* NAME : Breath of the Glade
* How to get : Withstand the pollen without leaving area
* Effect :
	* +15% poison & environmental resistance
	* Slow HP regen while out of combat
	* Reduced oxygen consumption underwater
* Duration : 20 minutes
* Suffer Debuff : Vision slightly blurred at edges
* UI Icon : Glowing pollen orb
* Flavor : "The forest breathes through you."
* Environmental & Gameplay Interaction :
	* Very useful for caves, underwater zones, toxic areas
	* Strong synergy with multiple Secret Locations on the island

---

		9. Design Purpose

	This event teaches players :
* Not all danger must be avoided
* Sometimes endurance is the solution
* Trusting the environment can be rewarding
* Calm players succeed, panicked players fail

---

