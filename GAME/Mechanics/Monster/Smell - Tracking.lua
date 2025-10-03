			Smell / Tracking

	`GAME/Mechanics/Monsters/Smell_Tracking.lua`

---

	Definition : Smell / Tracking is a perception mechanic used by certain monsters, primarily Beast or Animal types, that allows them to detect players through 
scent, pheromones, or residual trails. Unlike Vision/LOS, this system is not dependent on line-of-sight and can detect hidden or obstructed targets within range.

---

	Core Attributes

* Detection Radius :
	* Standard tracking monsters: ~5–15 units.
	* Elite trackers: ~20–25 units or more.

* Trail Persistence :
	* Player movements leave “scent trails” lasting a few seconds to several minutes depending on environment or monster type.

* Detection Modifiers :
	* Rain, wind, or environmental effects may reduce or distort scent detection.
	* Players with special items (e.g., scent-masking gear) may be partially or fully undetectable.

* Target Types :
	* Can track players, mounts, pets, or other monsters if mechanics allow.

---

	Behavior Mechanics

1. Aggro Activation :
	* Monsters detect a player entering their scent radius, regardless of LOS.
	* They will begin pursuit immediately, with a priority to follow the most recent scent.

2. Tracking Mechanics :
	* Monsters may ignore minor obstacles, but extreme terrain (rivers, walls) may slow pursuit.
	* Scent fades over distance/time, forcing monsters to rely on prediction or last known location if trail is lost.

3. Patrol Integration :
	* Trackers may combine scent detection with patrol routes to cover multiple areas effectively.

4. Group Awareness :
	* Nearby monsters may be alerted when a tracker locks onto a target.
	* Some elite monsters can amplify scent detection for their group.

5. Environmental Interactions :
	* Certain terrain types (mud, sand) can enhance scent trails for trackers.
	* Strong wind or rain may reduce detection accuracy or radius.

---

	Counterplay for Players

* Scent-Masking Items :
	* Gear or consumables that temporarily hide or reduce scent trail visibility.

* Movement Strategies :
	* Zig-zag or backtrack to confuse trackers.
	* Use water bodies or terrain obstacles to reduce trail persistence.

* Distance & Stealth :
	* Avoid entering high-density areas with trackers unless prepared.

---

	Implementation Notes (DB / AI)

* Database Attributes :
	* `ScentRadius` – Distance within which the monster can detect trails.
	* `TrailPersistence` – Duration scent remains detectable.
	* `TrackingModifiers` – Flags for environmental modifiers (rain, wind, terrain).
	* `TargetPriority` – Determines whether player, mount, or pet is tracked first.

* AI Integration :
	* Scent updates occur periodically (every AI cycle or configurable interval).
	* Can combine with LOS detection for hybrid trackers.
	* Alert propagation can have configurable distance or limit to prevent mass aggro.

---