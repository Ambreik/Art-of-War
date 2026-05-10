			Inner Leadership Chambers

	Location : Fort Mirath
	Mechanic Type : AI + Environmental + Quest State Integration

---

	1. Mechanic Identity

	This mechanic defines a "Command Hierarchy System" where the operational efficiency of the fortress defenses is directly tied to the survival of specific 
traitor leaders located in separate inner wings.

	These leaders are AI control anchors for multiple existing fortress systems :

* Alert Level System (Calm → Suspicious → Alarmed)
* Patrol Route Logic (walls, towers, courtyards, halls)
* Reinforcement Deployment (inner halls, dungeon exits)
* Defense Grid Behavior (traps, chokepoints, cannons)
* Response Coordination across vertical layers

The fortress does not change structurally.
It changes behaviorally as leaders are eliminated.

---

	2. Leader Role Definition (AI Anchors)

	Each leader governs a defense domain of the fortress :

| Leader Domain                   | Governs                                                            |
| ------------------------------- | ------------------------------------------------------------------ |
| Wall & Tower Command            | Watchtower sentries, line-of-sight discipline, alarm bell priority |
| Courtyard & Gate Command        | Patrol synchronization, shield formations, chokepoint discipline   |
| Inner Hall Command              | Tripwire response, corridor investigation behavior                 |
| Dungeon & Reinforcement Command | Reinforcement speed, count, and pathing to upper levels            |
| Artillery Command               | Cannon manning priority and coordination                           |

> Leaders are physically separate so players may defeat them in any order.

---

	3. Fortress Efficiency Variable

	A hidden global variable exists for the fortress :

```
FortressEfficiency = number_of_alive_leaders / total_leaders
```

	This value continuously modifies multiple AI systems.

| Fortress Efficiency | Behavioral State        |
| ------------------- | ----------------------- |
| 100%                | Military precision      |
| 75%                 | Minor coordination gaps |
| 50%                 | Noticeable disorder     |
| 25%                 | Severe breakdown        |
| 0%                  | Disorganized defenders  |

---

	4. System Degradation Effects

	A. Patrol Logic Degradation

	As efficiency drops :
* Patrol timing desynchronizes
* Larger gaps appear between patrol groups
* Some patrol routes are skipped intermittently
* Investigation of disturbances becomes slower

	Player Effect : Stealth routes naturally open without layout changes.

---

	B. Alert System Degradation

	Affects transition speed between alert states.

| Efficiency | Suspicious → Alarmed Time | Alarm Spread                   |
| ---------- | ------------------------- | ------------------------------ |
| 100%       | Immediate                 | Instant tower-to-yard relay    |
| 50%        | Delayed                   | Partial relay coverage         |
| 0%         | Very slow                 | Some areas never receive alarm |

	Guards hesitate, double-check, or fail to communicate effectively.

---

	C. Reinforcement Degradation

	When Alarmed :
* Fewer enemies deploy from inner halls and dungeon
* Deployment delay increases
* Reinforcements may choose inefficient routes vertically

---

	D. Defense Grid Degradation

	Affects traps, chokepoints, and cannons.

* Tripwire alarms may not trigger responses
* Pressure plate zones may be ignored by defenders
* Oil spill chokepoints are not strategically used
* Shield formations at gates form slowly or not at all
* Cannon manning priority becomes inconsistent
* Enemies may abandon cannons mid-operation

---

	E. Watchtower Effectiveness Reduced

* Sentries react slower to spotted players
* Line-of-sight reaction delay increases
* Alarm bell usage becomes unreliable

---

	5. Progressive, Not Instant Change

	Defeating a leader does not instantly change behavior.

	A grace degradation timer (e.g., several minutes) simulates :

> Confusion, loss of command, delayed awareness.

	This creates a believable transition from order → disorder.

---

	6. Player Perception (No UI Indicator)

	There is no UI message saying the fortress is weaker.

	Players notice through :
* Patrol mistakes
* Slower alarms
* Empty chokepoints
* Fewer reinforcements
* Sloppy defense behavior

	The story is told through AI behavior.

---

	7. Non-Linear Progression Support

	Because leaders are in separate wings :
* Players may choose which domain to weaken first
* Different playstyles benefit from different targets :
	* Stealth players remove tower command first
	* Assault players remove gate/courtyard command
	* Tactical players remove artillery command

---

	8. Interaction With Existing Fort Mechanics

	This mechanic directly modifies previously defined systems without replacing them :
* 3-State Alert Level System
* Cannon Interaction System (usable by both sides)
* Trap & Defense Grid
* Vertical Fortress Navigation

	It is a modifier layer, not a new system.

---

	9. Recovery Behavior

	When a Leader is Defeated : 
* FortressEfficiency decreases
* Patrol, alert, reinforcement logic degrade
* This degraded state persists for a long duration

	Think in terms of :

> 2–4 real hours 
	
	During this time :
* Leaders do not respawn
* The fortress remains disorganized
* Players clearly feel the impact

---

	When the Leader Respawns

	The moment the leader respawns :
* FortressEfficiency for his wing returns
* Patrol synchronization improves
* Alert and reinforcement speed improves
* Cannon and defense coordination normalizes

	The fortress rebuilds its command structure.

---

	What this achieves

	You get :
* Meaningful impact for players who assault the fortress
* A window where the location feels weakened
* A believable military recovery after time passes

---

	The Feeling for Players : 
* First group clears leaders → fortress chaotic.
* Later group arrives hours later → fortress disciplined again.

	This feels natural and alive.
	Leadership death causes temporary systemic degradation that lasts until leadership respawns.

	Not forever.


---

	10. Design Purpose Summary

	This mechanic ensures :
* The fortress feels like a real military structure
* Player progress visibly affects the environment
* Stealth, assault, and tactical playstyles are naturally supported
* Existing mechanics gain depth without new assets
* The location tells a story through behavior, not dialogue or UI

---

	This is one of the keystone mechanics that makes "Fort Mirath" feel alive and reactive rather than static.
