			Dynamic Spawn Pressure & Escalation System

---

		I. SYSTEM PURPOSE

	This system exists to:
* Prevent static farming
* Keep cleared areas from feeling safe
* Reward movement and awareness
* Create natural difficulty spikes without artificial scaling

	Design Rule :

> The Bastion does not punish players — it responds to them.

---

		II. PRESSURE ZONE MODEL

	Pressure Zones

	The Bastion is divided into "Pressure Zones", which loosely match patrol zones but are evaluated separately.

	Zone examples:
* Outer Ruins
* Inner Halls
* Broken Stairwells
* Seal Proximity Zones

	Each zone has its own pressure value.

---

		III. PRESSURE VALUE SYSTEM

	Pressure Value (PV)
* Numerical value per zone
* Invisible to players
* Ranges from 0 (Dormant) to 100 (Critical)

---

		IV. PRESSURE INCREASE TRIGGERS

	Pressure increases when players:
* Kill Escaped Crusader Undead
* Kill Elite Crusader variants
* Clear multiple patrols quickly
* Linger in the same zone
* Engage near the seal

	Weighting
* Standard crusader kill: +X PV
* Elite crusader kill: +High PV
* Rapid kills: multiplier applied
* Seal-adjacent combat: bonus PV

	Spirits and wildlife kills add minimal or no pressure.

---

		V. PRESSURE DECAY LOGIC

	Pressure decays naturally when:
* Players leave the zone
* Time passes without combat
* No crusaders are killed

	Decay Rate
* Slow and steady
* Faster in outer zones
* Slower near the seal

	This allows:
* Tactical retreats
* Resetting difficulty naturally

---

		VI. ESCALATION THRESHOLDS

	As pressure rises, "Escalation Levels" activate.

---

	Escalation Level 0 – Dormant (0–20 PV)
* Normal patrols
* Minimal spirit presence
* Standard respawn timers

---

	Escalation Level 1 – Stirring (21–40 PV)
* Slightly increased patrol frequency
* Small chance for spirit manifestation near combat
* Increased patrol overlap

---

	Escalation Level 2 – Disturbed (41–60 PV)
* Higher chance of elite crusader variants
* Spirits spawn reactively near cleared patrol routes
* Patrol routes shorten (faster re-encounters)

---

	Escalation Level 3 – Unstable (61–80 PV)
* Frequent spirit ambushes
* Elite crusaders more common
* Reduced respawn timers in zone
* Visual/audio environmental changes

---

	Escalation Level 4 – Critical (81–100 PV)
* High risk state
* Multiple patrols may converge
* Spirits manifest aggressively
* Area becomes extremely unsafe

📌 At Critical, players are strongly encouraged to move.

---

		VII. PLAYER COUNT SCALING

	Scaling Principles
* Scale presence, not durability
* Never create health sponges
* Avoid exponential difficulty

	Scaling Effects

	Based on nearby player count:
* +1 extra enemy per patrol (max cap)
* Slightly reduced respawn delay
* Increased patrol route overlap

	What Does NOT Scale
* Enemy health
* Enemy damage beyond minor tuning
* Boss or rare monster stats

---

		VIII. ELITE VARIANT INTEGRATION

	Elite Crusader variants:
* Triggered by pressure thresholds
* Appear naturally within patrol groups
* Replace, not add to, group members

	Elites feel:
* Earned
* Contextual
* Avoidable by movement

---

		IX. SPIRIT ESCALATION INTEGRATION

	As pressure increases:
* Spirit spawn chance increases
* Reactive spawn radius expands
* Spirits manifest faster after triggers

	This ties combat escalation to atmosphere, not just enemies.

---

		X. ESCALATION RESET CONDITIONS

	Pressure partially or fully resets when:
* Players leave the zone
* Dungeon seal interaction begins
* Server/world reset
* Rare Monster disrupts zone

	Prevents runaway difficulty.

---

		XI. ANTI-EXPLOIT SAFEGUARDS

* Pressure cannot be artificially stacked by:
	* Pulling enemies from other zones
	* Killing wildlife repeatedly
* Pressure gain has diminishing returns
* Zones have pressure caps per time window

---

		XII. PLAYER EXPERIENCE GOALS

	Players should:
* Feel the world pushing back
* Learn to rotate zones
* Recognize danger signals intuitively
* Feel smart for disengaging early

---

		XIII. SYSTEM INTEGRATION

	This system integrates with:
* Patrol logic
* Spirit reactive spawns
* Elite variants
* Rare Monster emergence timing
* Key Fragment pacing

---