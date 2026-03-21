			Mount Stamina System 

---

		1. Overview

	The "Mount Stamina System" governs the endurance and physical condition of all mounts in the world.
	It defines how long a mount can travel, fight, or fly before requiring rest or feeding, introducing strategic pacing to exploration and combat.

	Stamina reflects the creature’s vitality and the rider’s management skills.
	When depleted, the mount becomes fatigued, limiting mobility, combat ability, and special actions.

	This system applies to all mount classes, including Ground, Flying, Aquatic, Sprinter, Exotic, and Evolved mounts.

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

		2. Core Mechanics

	2.1. Stamina Pool

	Each mount type possesses a stamina pool, representing its total endurance capacity.
	The stamina pool scales with mount type and level.

| Mount Class         | Base Stamina       | Recovery Rate               | Notes                                                                           |
| ------------------- | ------------------ | --------------------------- | ------------------------------------------------------------------------------- |
| Normal Mounts       | Low–Medium         | High                        | Basic endurance; easy to maintain.                                              |
| **Evolved Mounts**  | **Very High**      | Medium                      | Exceptional stamina, ideal for long adventures and combat.                      |
| Exotic Mounts       | High               | Medium                      | Rare mounts balanced between endurance and speed.                               |
| **Sprinter Mounts** | **Medium–High**    | **Low–Medium (Slow Drain)** | Designed for long-distance travel; stamina depletes very slowly outside combat. |
| Flying Mounts       | High               | Medium–Low                  | Airborne stamina drain is slow; increases in combat or altitude.                |
| **Aquatic Mounts**  | **High–Very High** | Medium                      | Excellent endurance underwater; stamina drains mainly during sprint or combat.  |

	Formula Example :

```
Total Stamina = Base Stamina + (Mount Level × 2.5)
```

---

	2.2. Stamina Consumption

	General Rule

* "Normal movement" (walk, trot, or glide) does not consume stamina.
* Sprint, combat, and special actions are the only activities that drain stamina.
* Stamina drain occurs slowly to allow long journeys before needing rest.

| Action                              | Stamina Cost     | Notes                                                           |
| ----------------------------------- | ---------------- | --------------------------------------------------------------- |
| Normal movement                     | 0                | No stamina drain for walking or steady flight.                  |
| Sprint / Dash                       | High             | Continuous drain while active.                                  |
| Combat actions                      | Medium–High      | Each attack or active skill consumes stamina.                   |
| Jump / Leap                         | Medium           | Affects ground/flying mounts.                                   |
| Flight (per second)                 | Low              | Slow drain during steady flight; medium when gaining altitude.  |
| Underwater swim                     | Low              | Aquatic mounts drain slowly; faster when sprinting or fighting. |
| Carrying overweight player or cargo | +20% consumption | Universal modifier.                                             |

---

	3. Fatigue and Exhaustion States

When stamina drops, the mount transitions through performance states.
Each affects mobility, combat ability, and access to special skills.

| State                                                            | Stamina % | Effects                                                            |
| ---------------------------------------------------------------- | --------- | ------------------------------------------------------------------ |
| **Full Energy**                                                  | 100–75%   | Mount operates at full capacity.                                   |
| **Tired**                                                        | 74–50%    | Slightly reduced sprint and skill efficiency.                      |
| **Weary**                                                        | 49–25%    | Reduced attack power, sprint speed, and combat stamina efficiency. |
| **Fatigued**                                                     | 24–0%     | Severe exhaustion — mounts will:                                   |
| • Land automatically (if flying)                                 |           |                                                                    |
| • Stop using any active skills                                   |           |                                                                    |
| • Move only at walking speed                                     |           |                                                                    |
| • Disable sprint/dash/jump/leap abilities until stamina recovers |           |                                                                    |

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

		4. Recovery Mechanics

	4.1. Natural Recovery

	Stamina naturally regenerates only when the mount is resting :

* The mount must be unridden or dismissed for 10–15 seconds (varies by mount type).
* Recovery speed differs per mount category.
* Recovery halts during combat or sprint.

| Mount Type     | Recovery Time | Notes                                      |
| -------------- | ------------- | ------------------------------------------ |
| Normal Mount   | 10 sec        | Quick recovery.                            |
| Sprinter Mount | 10 sec        | Fast to recharge after long travel.        |
| Evolved Mount  | 15 sec        | Longer recharge due to large stamina pool. |
| Flying Mount   | 15 sec        | Must land to recover.                      |
| Aquatic Mount  | 15 sec        | Recovers while stationary or surfaced.     |

	4.2. Feeding Recovery

	Feeding is the primary way to restore stamina without dismounting.
	Each food type restores stamina instantly and may offer minor buffs.

| Food Type        | Recovery % | Compatible Mounts | Notes                                    |
| ---------------- | ---------- | ----------------- | ---------------------------------------- |
| Basic Feed       | +20%       | Normal / Sprinter | Common item, low cost.                   |
| Endurance Grain  | +40%       | Evolved / Exotic  | Ideal for long expeditions.              |
| Sky Herb Mix     | +50%       | Flying Mounts     | Reduces stamina drain for 10 min.        |
| Aqua Fruit Blend | +60%       | Aquatic Mounts    | Restores stamina faster when underwater. |

	4.3. Stable Recovery (Mount Master)

	When left with a "Mount Master", mounts instantly recover full stamina for a service fee.
	High-rank Mount Masters may offer:

* Enhanced Recovery Buffs : +10% stamina capacity for 24 hours.
* Feed Packs : Portable bundles for restoring stamina in the wild.

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

		5. Environmental & Combat Influence

| Factor                               | Effect               | Description                                            |
| ------------------------------------ | -------------------- | ------------------------------------------------------ |
| **Terrain Resistance**               | +10–25% drain        | Rough or steep terrain increases stamina usage.        |
| **Weather Conditions**               | Slower recovery      | Cold, storms, or heat reduce regeneration.             |
| **Altitude / Depth**                 | Increased drain      | Flying high or diving deep consumes more stamina.      |
| **Elemental Harmony**                | +15% faster recovery | Mounts resting in their native zone regenerate faster. |
| **Riding Skill Tree (Player Bonus)** | Variable             | Reduces stamina costs and increases recovery.          |

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

		6. Integration with Riding Skill Tree

	Several "Riding Skill Tree" passives directly interact with the stamina system:

| Skill Name            | Type    | Effect                                                       |
| --------------------- | ------- | ------------------------------------------------------------ |
| **Enduring Ride**     | Passive | Increases total stamina pool by 10–20%.                      |
| **Efficient Gallop**  | Passive | Reduces sprint stamina cost by up to 15%.                    |
| **Aerial Control**    | Passive | Reduces stamina drain at high altitudes.                     |
| **Hydrodynamic Form** | Passive | Reduces stamina consumption while swimming (aquatic mounts). |
| **Veteran Rider**     | Passive | Improves stamina regeneration rate by 10–25%.                |

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

		7. Developer Notes

* The Mount Stamina System emphasizes realistic mount behavior without restricting freedom of exploration.
* No drain on normal movement ensures smooth long-distance travel.
* Combat and sprint drain add strategic depth during high-intensity moments.
* Recovery through rest or feeding encourages preparation and resource management.
* The system balances immersion, progression, and convenience while fitting perfectly within the Mount Master ecosystem and Riding Skill Tree framework.

---