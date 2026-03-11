			Guard Patrol / Alert State Mechanic

		Core Identity

	This mechanic represents dynamic, reactive AI behavior for town guards, integrated across walls, towers, and strategic points in Sunveil Market Town.

	Guards are not static NPCs.
	They respond to:
* Player behavior
* Environmental triggers
* Town events (invasions, alert phases)

	It is designed to:
* Promote stealth
* Reward coordination
* Encourage creative use of town mechanics (balloons, ballistas, wind, light, fog)

---

		Physical Structure & Scope

* Watchtowers : 
	* Overlook streets, gate approaches, terraces
* Walls & parapets : 
	* Cover choke points and flanking routes
* Internal courtyard patrols : 
	* Provide dynamic defense during raids or player disruption

---

		Patrol Patterns

	Base Patrol : 
* Guards follow predefined routes during normal state
* Routes are dynamic in minor ways:
	* Slight variation in timing
	* Occasional stops for “inspection”
	* Random idle animations

	Conditional Patrol

* Patrols shift based on:
	* Threat detection
	* Sound from player movement or explosions
	* Environmental conditions (fog, heat shimmer, wind)
	* Balloon or ballista use

---

		Alert States

	1. Passive State

* Guards patrol normally
* Noticeable gaps exist for skilled players
* Detection radius is minimal

	2. Suspicious State

* Triggered by:
	* Sudden loud movement
	* Light flashes (ballista fire, fireball drops)
	* Crowd chaos in central market
* Guards investigate:
	* Move toward source
	* Increase patrol speed
	* Communicate with nearby guards (visual + audio cues)

	3. Alert / Combat State

* Triggered by confirmed threat
* Guards:
	* Converge on location
	* Block exits / reinforce chokepoints
	* Raise alarms
* Patrol patterns are replaced with high-intensity adaptive AI

---

		Detection Mechanics

	Sound Detection

* Measured as distance + intensity
* Sprinting, weapon swings, or projectiles increase detection radius
* Crowds amplify or dampen sound
* Environmental effects (fog, wind, sunlight shimmer) modulate detection:

| Condition      | Detection Modifier               |
| -------------- | -------------------------------- |
| Fog            | +10–15% difficulty spotting      |
| Heat Shimmer   | +5–10% misread distance          |
| Wind Direction | Can mask or enhance player sound |

---

		Visual Detection

* Influenced by:
	* Lighting (heat shimmer, shadows)
	* Line-of-sight
	* Angle and height (gliding terraces)
* Balloons / ballistas create visual alerts visible from towers
* Guards scan in cone-based vision with adjustable angles

---

		Memory & Communication

* Guards remember disturbances temporarily
	* Nearby allies move toward suspicious locations
	* AI shares “alerts” via line-of-sight and distance

* Disturbances fade over time if no further triggers appear
* Prevents permanent alert state without continued threat

---

		Complex Guard Behaviors

	1. Multi-Layered Coordination

* Guards dynamically:
	* Form blocking positions
	* Split to cover entrances
	* Circle back to disrupted areas

	2. Environmental Integration

* Guards react differently in:
	* Fog : cautious movement, slower detection
	* Wind : adjust for auditory cues
	* Shimmer : misjudge distance or trajectory

	3. Player Exploit Windows

* Timing glides or sprint through shaded areas
* Use crowd chaos to mask noise
* Fireball or artillery use creates temporary confusion if coordinated

---

		Hidden Interactions – Guard Patrol / Alert States

	1. False Alarm Exploit

* Small disruptions (throwing objects, knocking barrels) trigger suspicion but not full alert
* Allows players to manipulate patrols subtly

	2. Chain Alert

* Guards share alert state through visual / sound propagation
* Triggers dynamic emergent patrol patterns

	3. Height Advantage Interaction

* Guards on higher terraces detect players earlier
* Players gliding past can create “phantom” detections

	4. Crowd Confusion Synergy

* Market crowd movement temporarily masks player actions
* Guards may investigate wrong locations

	5. Time-of-Day Effect

* Visibility and patrol aggressiveness vary:

	* Morning: alertness moderate
	* Noon (heat shimmer): visual misreads more frequent
	* Fog at dawn/dusk: detection heavily reduced

	6. Event Integration

* Balloon fire, ballista shots, or environmental hazards escalate alert faster than normal movement
* Guards prioritize environmental triggers over isolated player movements

	7. Silent Investigation

* Suspicious AI may investigate but not attack
* Player can watch patrol patterns shift without direct combat

---

		Risk & Skill Expression

* Poorly timed aggression: alert escalation, reinforcement arrival
* Stealth / distraction: manipulation of patrols, environmental synergy
* Coordination: multiple players can control AI indirectly

---

		Why This Mechanic Works

* Makes Sunveil Market Town feel alive
* Encourages strategic thinking over raw combat
* Rewards environmental mastery (fog, wind, shimmer, crowd)
* Emergent gameplay is possible with creative player interaction
* Integrates naturally with both defense mechanics (balloons, artillery) and environmental mechanics

---

			Hidden Interactions by Alert Level

	1. Passive State Hidden Interactions

* Environmental Acclimation : Guards moving along standard patrols slowly adjust to repeated player movements. Players can “train” guards to ignore predictable 
patterns if they repeat low-impact actions (walking past slowly, mild gliding along terrace edges).
* Crowd Shadowing Exploit : Moving among NPC civilians in the market may fully mask the player’s presence. Guards may ignore the presence of a player entirely if 
positioned in high-density pedestrian zones.
* Subtle Sound Masking : Minor player interactions with small objects (stepping on crates, opening doors) in passive state barely register, but repeated 
rhythmically can start pre-conditioning guards for future suspicious behavior.

---

	2. Suspicious State Hidden Interactions

* Decoy Manipulation : Players can trigger temporary suspicious states in one guard, drawing them away while the main patrol continues. The guard may misinterpret 
indirect triggers (thrown object, fireball dropped by balloon) and investigate wrong locations.
* Environmental Trigger Exploits :
	* Fog : Suspicious guards may move slower, inspect multiple locations, or fail to identify players if they hide behind fog clusters.
	* Wind Draft Gliding : Players gliding above terraces can appear/disappear from guard line-of-sight, forcing guards to split focus or hesitate.
	* Crowd Interference : Panic-induced crowd movement in the central market can fully mask minor suspicious triggers, creating exploitable gaps.
* Visual Misread : Guards in suspicion may over-prioritize light-based triggers (ballista flashes, fireball arcs) and temporarily ignore sound cues from nearby 
areas. Players can “bait” them using light tricks without escalating to full alert.

---

	3. Alert / Combat State Hidden Interactions

* Partial AI Saturation :
	* Multiple alerting triggers (balloon fire, artillery, gliding, crowd panic) can temporarily overwhelm guard AI.
	* Some guards may pause mid-combat, investigate secondary threats, or reposition inefficiently.
* Environmental Exploit :
	* Fog : Reduces visibility, causing guards to focus on false positions.
	* Heat Shimmer : Causes misjudged ranged targeting; players can stay near reflective terraces to create temporary dodging opportunities.
* Balloon / Artillery Distractor : Guards in combat may prioritize environmental or structural threats (hot air balloons dropping fire, ballistas launching fireballs) over direct player attacks. Skilled players can use this to manipulate engagement flow.
* Crowd & Pathing Synergy :
	* Crowds escaping panic zones create temporary choke points for alerted guards.
	* Players can manipulate this to control guard movement or funnel them away from key defensive points.

---

		Mechanic Synergy with Existing Systems

| Existing Mechanic       | Interaction with Guard AI                                                        | Player Use / Consequence

| Hot Air Balloon Defense | Visual cue of fireballs triggers guard suspicion or alert depending on proximity | Players can coordinate balloon drops to distract or split guards during invasions 
| Incendiary Artillery    | Flash and projectile noise increase detection in nearby patrols                  | Player can lure guards toward artillery to manipulate patrol flow; indirect suppression of high-priority patrol zones 
| Wind Draft Gliding      | Player glides can bypass line-of-sight or temporarily confuse patrol routing     | Facilitates infiltration, repositioning during suspicious states
| Fog / Mist Entry        | Reduces guard detection radius in all states, slows suspicious and alert patrols | Allows stealthy approaches, bypassing alert state; minor misdirection of AI
| Light / Heat Shimmer    | Misjudgment of distances by guards affects ranged accuracy                       | Player can exploit glare to appear further/closer, delay ranged attacks during combat
| Market Crowd Dynamics   | Crowds dynamically obstruct or redirect guard movement                           | Players can manipulate crowd panic to create cover or funnel guards; interacts with both passive and alert states

---

		Layered AI Complexity

1. Memory & Decay : 
	* Guards “remember” disturbances:
		* Passive → short memory, mild awareness
		* Suspicious → moderate memory, follows patterns
		* Alert → extended memory, persistent pursuit until threat neutralized
	* Environmental mechanics (fog, crowd, wind) modulate memory retention.

2. Priority Targeting : 
	* Guards choose high-threat visual cues first (fireball arcs, bright movement, gliding silhouette)
	* Then medium-threat auditory cues (footsteps, structural noise, balloon ascent)
	* Low-level triggers ignored unless repeated

3. Dynamic Patrol Adaptation : 
	* Suspicious guards re-route dynamically, creating emergent AI paths
	* Alert guards split forces to cover predicted escape paths or environmental triggers

4. Emergent Player Tactics : 
	* Players can chain environmental triggers (fog + balloon + crowd) to control guard AI, creating:
		* Diversions
		* Ambush opportunities
		* Tactical access to restricted areas

---

	Design Notes : 

* Encourages observation, experimentation, and coordination
* Maintains immersive realism : guards respond logically to stimuli, not scripted events
* Synergies amplify the depth of all previous mechanics : nothing exists in isolation
* Emergent gameplay possible for solo or group play

---

