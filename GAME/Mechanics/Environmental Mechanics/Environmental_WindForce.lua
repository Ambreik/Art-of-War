			System Spec — Strong Winds (Beach & Cliff Pushback)

> Canonical, standalone system document describing the global Strong Winds mechanic for the world game. This is a world-level design and implementation spec — 
reusable across islands, regions, cliffs, ridges, towers, and beaches.

---

	1. Purpose & high-level goals
* Add environmental immersion and risk near cliffs, beaches, and elevated terrain.
* Create light movement pressure that makes exploration feel more alive without being frustrating.
* Provide designers with a configurable tool for shaping navigation challenges and subtle hazards.
* Integrate with combat only indirectly (positioning), never as a direct damage source.

---

	2. Player-facing behavior
* In areas tagged with "Strong Winds", players experience a gentle, periodic push away from cliffs or toward shorelines depending on wind direction.
* Push is never instant displacement; it is applied as a "force vector" that slightly adjusts trajectory.
* Wind intensity varies by region preset: Calm (no effect), Breezy (aesthetic only), Strong (noticeable push), Severe (hard to stand still near edge).
* Players can compensate by moving against the wind, but footing feels less stable near edges.
* Falling remains possible if players resist poorly near a cliff.

---

	3. Concrete rules, formulas & tunables
	All values must be data-driven per zone. Below are recommended defaults.

	3.1 Force vector application
* Force applied every server tick when in a Strong\_Wind zone:

  * `F = WIND_FORCE * dir`
  * `WIND_FORCE` ∈ \[0.0, 1.0] representing % of base walk speed per second.
* Recommended presets:

  * Breezy: 0.05 (5% walk speed/sec)
  * Strong: 0.15 (15% walk speed/sec)
  * Severe: 0.25 (25% walk speed/sec)

	3.2 Directionality
* Each zone has a `windDirection` vector (normalized 2D or 3D, depending on terrain orientation).
* Designers can align winds to push "away from cliffs", "toward sea", or "along ridges".

	3.3 Conditions
* Wind applies only in zones flagged `Strong_Wind=true`.
* Optional altitude check: `if altitude > threshold` to restrict to elevated terrain.
* Players inside structures or caves: wind disabled (requires navmesh volume tags).

	3.4 Combat & movement interactions
* Ranged projectiles: optional slight drift modifier (default off for balance).
* Channeling abilities: not interrupted by wind, but movement precision required.
* Mounts: heavier mounts resist push more (resistance factor configurable per mount type).

	3.5 Edge safety
* To avoid frustration, a hidden safety buffer is applied: players cannot be pushed fully off ledges unless they are within `1.5m` of the edge and also moving toward it.

---

	4. Server responsibilities (authoritative)

* Determine if player is inside a Strong\_Wind zone and apply force vector to position updates.
* Handle mount resistance and player weight modifiers.
* Send periodic state packets (wind strength, direction) for client prediction and FX.

---

	5. Client responsibilities (feedback & prediction)
* Apply predicted pushback for smooth motion.
* Visual FX: blowing grass, sand particles, cloth/flags, sea spray.
* Audio FX: wind gust loops scaling with strength.
* Screen shake: mild at Severe setting, optional toggle.
* Show small buff/debuff icon labeled "Strong Winds" with tooltip.

---

	6. Interaction with other systems
* Vegetation Camouflage : Dense vegetation can reduce effective wind push (shelter mechanic, config-driven).
* Swimming / Fatigue Waters : Winds near coasts can slightly alter swim trajectory.
* Flying mounts / gliding (if present): Lift or turbulence effects can be built on this system.
* Linked Aggro : Ambient flocks of birds may take flight visibly during gusts.

---

	7. UI & UX details
* Buff/debuff icon appears when inside Strong\_Wind zone.
* Tooltip: "Strong Winds are pushing you. Movement is harder near edges."
* Wind direction arrow indicator near minimap (optional, configurable).
* Visual confirmation: grass leaning, sand/dust streaks, sea mist particles.

---

	8. Data model & config examples

```
WindZone = { id:string, bounds:poly, windForce:float, windDirection:vec3, altitudeThreshold:float, shelterTags:[string] }
StrongWindsConfig = { Breezy:0.05, Strong:0.15, Severe:0.25, EdgeSafetyBuffer:1.5 }
```

---

	9. Balancing & sample values
* Breezy: 5% walk speed/sec drift → mostly cosmetic.
* Strong: 15% walk speed/sec drift → noticeable, but counterable.
* Severe: 25% walk speed/sec drift → must actively resist near cliff edges.

---

	10. QA / test cases
* Enter/exit wind zones: verify smooth force application and removal.
* Stand at cliff edge in Strong winds → confirm push requires movement input toward edge.
* Mount resistance modifiers function correctly.
* Structures marked as shelter disable wind push.
* Visual/audio FX scale correctly with force.

---

	11. Analytics & telemetry
* Track time spent in wind zones, average drift distance, number of falls near wind edges.
* Detect frustration: fall deaths from wind > threshold should trigger balancing review.

---

	12. Implementation notes & pitfalls
* Performance: wind application must be efficient (zone checks only on movement updates).
* Predictability: ensure force is applied smoothly, no stutter in networked play.
* Avoid griefing: wind must feel immersive, not punishing or exploitable.

---