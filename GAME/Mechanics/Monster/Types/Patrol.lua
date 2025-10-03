			Patrol

	Path : `GAME/Mechanics/Monsters/Types/Patrol.lua`

---

	Definition

* Patrol-type monsters are mobile AI units that follow predefined routes or roaming patterns.
* They are strategic environmental threats, enforcing territory control, providing natural world immersion, and creating dynamic combat encounters.
* These monsters may interact with other types (Tanky, Coward, or Invoker) to enhance gameplay depth.

---

	Core Attributes

* HP Scaling : Low to moderate, depending on patrol role (scout vs frontline).
* Defense : Typically low; relies on positioning and movement rather than raw toughness.
* Damage Output : Moderate for scouts, higher for patrol leaders or elite variants.
* Mobility : High; constant movement along patrol routes or dynamic wandering paths.
* Detection : Uses perception mechanics (Line-of-Sight, Noise, Magic Detection) to spot intruders.

---

	Stat Profile & Tuning

* Movement Speed : Consistent with patrol path, may increase when engaging players.
* Aggro Threshold : Variable; some patrols will ignore low-level players, while others attack immediately.
* Triggering Mechanisms :
	* Aggro may trigger when players enter patrol range.
	* Certain patrols can dynamically chase, flank, or block players.
* Attack Modifiers : Simple melee/ranged attacks unless combined with other types (Skillable, Tanky, etc.).

---

	Passive Traits & Defensive Mechanics

* Path Awareness : Follows scripted paths or loops, can adapt slightly to obstacles.
* Territorial Control : Guards specific zones, reacting if players attempt intrusion.
* Environmental Interaction : Can trigger traps, alarms, or call nearby reinforcements.
* Avoidance : Some patrols retreat when outmatched (Coward synergy).

---

	Combat Behavior (AI Rules & Role)

* Solo Encounters : Patrols act as moving obstacles or scouts; usually engage briefly and then return to path.
* Group Encounters : May lead players into traps or coordinated group fights; patrol leaders may buff or coordinate others.
* Targeting Rules :
	* Focus on nearest intruders within detection radius.
	* Can deprioritize low-level threats.

* Behavioral Triggers :
	* Deviates from path to engage or avoid players.
	* Returns to route after combat ends.

---

	Typical Attack Set

* Basic Melee or Ranged : Core damage output while patrolling.
* Alarm / Call Reinforcements : Alerts nearby monsters or triggers environmental hazards.
* Blocking / Intercepting : Can position to prevent player escape or flank.

---

	Interaction with Health-Regeneration & Other Resources

* HP Regen : Minimal; relies on pathing to avoid prolonged combat.
* Resource Interaction : Rare; may drain stamina or slow players via debuffs.
* Synergy with Other Types :
	* Tanky + Patrol : Tanky monsters can anchor while patrol units flank.
	* Coward + Patrol : Coward units may flee into patrol paths, triggering player ambushes.

---

	Counterplay

* Study patrol routes to avoid detection.
* Use ranged attacks or stealth to bypass or thin patrol numbers.
* Exploit predictable movement patterns to set traps or ambushes.
* Separate patrol groups before engagement.

---

	Implementation Notes (DB / AI)

* Database Flags : `MonsterType = Patrol`, `PatrolPathID = x`, `AggroThreshold = Variable`.
* AI Behavior :
	* Move along predefined or procedural paths.
	* Detect intruders within LOS, noise, or magic range.
	* Engage, alarm, or retreat based on threat assessment.

---