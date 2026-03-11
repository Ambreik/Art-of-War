			Overcrowded Market Soft-Penalty Mechanic

		Design Goal

✔ Stop exploit selling & mass grinding
✔ Do **not** crash prices globally
✔ Do **not** punish normal players
✔ Keep economy readable and stable

	This is behavior-based friction, not economy simulation.

---

	Core Principle

> The market does not punish the item — it fatigues the seller interaction channel.

---

		Trigger Conditions (Hidden)

	The penalty activates only when all of these are true:

1. Same item category sold repeatedly
2. Short time window (e.g. 5–10 minutes)
3. High local player density (market overcrowded)
4. Vendor specialization mismatch or oversupply

	If any condition breaks → penalty decays quickly.

---

		Penalty Type: Micro-Diminishing Returns

	Instead of dropping prices globally:

	Per-Player Sale Efficiency
* First few sales: 100% value
* Continued dumping:
	* 95%
	* 90%
	* 85% (soft floor)
* Never drops below a safe threshold

	This makes grinding inefficient, not impossible.

---

	Decay & Recovery (Important)

* Efficiency recovers fast when player:
	* Changes vendor
	* Changes item category
	* Waits a short time
	* Leaves the market zone

> Encourages movement and decision-making.

---

		Vendor Reaction Layer (Flavor, not punishment)

	NPCs react subtly:
* “I already have too much of this.”
* “Try another stall.”
* “Come back later.”

	No hostility, no lockouts.

---

	Market Stability Guarantee

* No global price shifts
* No persistent inflation/deflation
* No cross-zone impact
* Affects only the seller, temporarily

---

	Anti-Exploit Effectiveness

| Exploit Attempt      | Result                       |
| -------------------- | ---------------------------- |
| Mass item dumping    | Time inefficient             |
| Bot-like behavior    | Rapid efficiency loss        |
| Multi-player dumping | Each player hit individually |
| Market flooding      | Neutralized locally          |

---

		Smuggler Stall Interaction (Important)

	Smugglers ignore or soften this penalty:
* Lower diminishing curve
* Slower fatigue buildup
* Faster recovery

➡ Encourages alternative routing, not brute force.

---

		Dynamic Trade Valuation Synergy

	Dungeon oversupply:
* Legal stalls → soft fatigue
* Smuggler stalls → pressure valve
* Market remains stable

---

		Hidden Escapes (Skill Expression)

	Advanced players learn:
* Sell in waves
* Rotate stalls
* Use time-of-day windows
* Use LCWM triggers to reset fatigue

---

	What This Mechanic Is NOT

❌ Not a tax
❌ Not a price crash
❌ Not a punishment
❌ Not visible as a debuff

	It is economic friction, not restriction.

---