			Elemental Penetration (End-Game PvE Only)

> Status : Dormant / Future Activation
> Scope : World Bosses, Notorious Bosses, Raid Final Bosses
> PvP : ❌ Never
> Players : ❌ Never

---

		1. Purpose of This Mechanic (Design Intent)

	Elemental Penetration exists to solve one specific late-game problem :

> Highly optimized groups with multiple healers can out-sustain elemental damage indefinitely.

	This mechanic:
* Does not punish solo or small groups
* Does not invalidate resistance gearing
* Does not increase burst damage
* Only scales when sustain capacity increases

	It is pressure scaling, not damage scaling.

---

		2. Generic Entity Classification (Future-Safe)

	Penetration is not tied to specific monsters, but to Entity Classes :

*EntityClass :
  - WorldBoss
  - NotoriousBoss
  - RaidFinalBoss


	No penetration exists outside these classes.

---

		3. Base Elemental Penetration (Static, Non-Scaling)

	Each eligible entity may have one or more elemental penetration values, fixed at spawn.

	Base Ranges (Hard-Capped)

| Entity Class    | Base Penetration Range |
| --------------- | ---------------------- |
| World Boss      | 8–12%                  |
| Notorious Boss  | 10–14%                 |
| Raid Final Boss | 12–15% (ABSOLUTE MAX)  |

> This value is never modified by level, rage, enrage, or time.

---

		4. Healer-Aware Penetration Scaling (Key Feature)

	This is the important part.

	Core Rule : 

> Elemental Penetration slightly increases based on the number of active healers in the party/raid.

	This scaling exists only during combat and recalculates dynamically.

---

	Healer Definition (Strict)

	A healer is counted only if :
* Has a healing specialization active
* Performs direct healing or shielding within last X seconds
* Is alive and in combat range

	AFK healers, hybrids not healing → ignored.

---

	Scaling Formula (Safe & Controlled)

```text
Effective Penetration =
Base Penetration
+ (Active Healers − 1) × Healer Modifier
```

	Recommended Modifier

```
Healer Modifier = +1.5% per additional healer
```

---

		Example Scenarios

	Example A – Small Group

* Base Penetration: 10%
* Healers: 1

```
10% + (1−1)×1.5 = 10%
```

✅ No penalty for normal play.

---

	Example B – Optimized Dungeon Group

* Base Penetration: 10%
* Healers: 2

```
10% + 1×1.5 = 11.5%
```

➡️ Small pressure increase, barely noticeable.

---

	Example C – Raid Sustain Stack

* Base Penetration: 14%
* Healers: 4

```
14% + 3×1.5 = 18.5%
```

➡️ Resistance still matters, but healing can’t brute-force everything.

---

	Absolute Safety Cap

```text
Max Effective Penetration = 20%
```

	Even in extreme healer stacking, penetration can never exceed this value.

---

		5. Interaction with Your Resistance Curve (Very Important)

	Was already defined :

* Hard Resistance Cap : 50%
* Effective Reduction at Cap : ~45%

	Penetration applies before the resistance curve:

```text
Effective Resistance = Player Resistance − Penetration
```

	Then the non-linear reduction curve is applied.

---

	Example (Hardcore Scenario)

* Player Resistance: 50%
* Effective Penetration: 18%
* Resulting Resistance Used: 32%

	Which converts to roughly:
➡️ ~28–30% real damage reduction, NOT immunity.

	This keeps:
* Tanks mortal
* Healers busy
* Mistakes punishable

---

		6. Why This Doesn’t Kill Resistance Gearing

	Even under heavy penetration :
* Resistance still reduces spike damage
* Resistance still smooths incoming DPS
* Resistance still matters for trash, elites, and non-boss encounters

	Players never feel :

> "Why did I even build resistance?"

---

		7. PvE-Only Enforcement (Non-Negotiable)

	Hard system rules :
* Penetration ignored in PvP
* Penetration ignored in duels
* Penetration ignored in arenas
* Penetration ignored in battlegrounds

	Even Outlaws cannot bypass this.

---

		8. UI & Transparency (Player Trust)

	When active :
* Boss tooltip :
	* "This entity partially ignores elemental resistance. Effect increases with multiple healers."
* Combat log line (optional, minimal) :
	* "Fire Penetration reduced your resistance by 12%."

	No hidden math.

---

		9. Activation Policy (Very Important)

	This entire file can be:
* Disabled globally
* Enabled per dungeon
* Enabled per boss
* Tuned without touching player systems


---
