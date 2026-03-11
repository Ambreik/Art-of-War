			Guards Patrol Routes & Behavior
---

		Guard Thalen – Patrol & Behavior System

	Patrol Route Concept (Village Main Gate / Surroundings) :

* Primary Route :

  1. Main gate → small guard tower (north side of gate) → entrance bridge → back to main gate.
* Idle Points :
	* Standing at gate for incoming/outgoing players.
		* Checking the bridge handrail for structural issues (random animation).
	  * Interaction with nearby villagers at the marketplace or well.

	Reactive Behaviors :

1. Alarm Bell / Village Event Trigger :
	* Moves immediately to the bell.
	* Shouts to other guards: “All units, investigate!”
	* Pauses normal patrol until event resolves.

2. PvP Player Flagged Nearby :
	* Shouts warning: “Player flagged for combat! Keep your hands clean, citizens!”
	* Stands at defensive position near gate; warns or intercepts other NPCs.

3. Ongoing Player Combat Nearby :
	* Moves closer to assess, keeps distance to avoid combat unless grudge mechanic triggers.
	* May call other guards (Kael, Brennar, Elric) to coordinate defensive positioning.

4. Players Attacking NPCs :
	* Immediately enters combat stance.
	* Uses defensive skills (stuns, small AoE knockback) to protect nearby villagers.
	* If defeated, respawns at main gate after 15–20 minutes.

5. Quest Interactions :
	* Stops patrol when a player is in quest dialogue range.
	* Animations / dialogue tied to the specific quest stage.
	* Idle animations resume after quest interaction ends.

	Additional Behavior Notes :
* Can keep grudge for players attacking him repeatedly; grudge affects future dialogue or flying access.
* Reacts to environmental cues:
	* Lantern flicker → warns player of dark shadows: “The light dims…something’s moving near the gate.”
	* Sound cues (horn, cracking wood, deep hum) trigger investigation animations.

	Idle Animations / Situations :
* Sharpening spear at tower.
* Observing the horizon / coastline.
* Nodding / greeting villagers near the well or bridge.
* Intermittent whistle / horn signals.

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

		Guard Kael Ironwatch – Patrol & Behavior System

	Patrol Route Concept (Village Walls / Perimeter) :

* Primary Route :

  1. Wall south corner → east tower → north tower → west tower → back to south corner.
  2. Stops briefly at each tower to scan horizon and coastline (idle animation).
* Idle Points / Observations :
  * Leaning on wall battlement, binoculars in hand (visual cue).
  * Shouting warnings to villagers or other guards if suspicious activity is detected.
  * Occasionally tosses small signal flare when a minor threat is spotted (flavor effect).

	Reactive Behaviors :
1. Alarm Bell / Village Event Trigger :
   * Moves along the nearest wall path toward the alarm location.
   * Shouts: “All units, the bell sounds! Prepare for intruders!”
   * Pauses normal patrol until event resolves.

2. PvP Player Flagged Nearby :
   * Observes the player closely; shouts: “That one’s marked for battle, keep your distance!”
   * May block access to gates or wall stairs, depending on location.

3. Ongoing Player Combat Nearby :
   * Moves to vantage points on the walls to assess combat.
   * Does not intervene directly unless grudge mechanic triggers.

4. Players Attacking NPCs :
   * Enters defensive combat mode on the nearest wall segment.
   * Uses ranged knockback / defensive spear thrusts to deter attackers.
   * Calls for backup from Thalen, Brennar, or Elric.

5. Other Behaviors / Environmental Cues :
   * Reacts to lantern flicker, fog, wind, or storm: “These winds hide more than they show…stay alert!”
   * Responds to suspicious sounds (footsteps, distant horn, cracking wood) by pausing patrol and looking around.
   * Occasionally communicates with villagers below: “The walls hold, but the sea whispers tonight.”

	Idle Animations / Situations :
* Resting against wall with spear planted in stone.
* Adjusting shield straps or armor.
* Observing the horizon with binoculars.
* Tossing small rocks over wall for minor visual effect.

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

		Guard Brennar Stonehelm – Patrol & Behavior System

	Patrol Route Concept (Wall Rotation / Observation) :

	Primary Route :

  1. East wall → North wall → West wall → South wall → repeat.
  2. Stops at each wall corner / tower for 15–20 seconds to observe surrounding terrain (idle animation: scanning with spear).
* Idle Points / Observations :
  * Adjusting helmet / chainmail, leaning slightly on spear.
  * Calling out to other guards or villagers if something unusual is spotted.

	Reactive Behaviors :

1. Alarm Bell / Village Event Trigger :
   * Pauses rotation and moves toward nearest gate or tower where threat is reported.
   * Shouts: “All hands, the perimeter is under watch!”
   * Resumes normal rotation after event resolves.

2. PvP Player Flagged Nearby :
   * Observes the flagged player carefully, positions to block or funnel them away from village gates.
   * Shouts: “Marked ones stay clear of the walls!”

3. Ongoing Player Combat Nearby :
   * Moves to high vantage points along the walls to assess the situation.
   * Does not intervene unless attack spills onto walls or villagers are threatened.

4. Players Attacking NPCs :
   * Enters defensive combat mode, uses spear thrusts to interrupt attackers.
   * Calls for backup from Thalen, Kael, or Elric.

5. Environmental / Village Cues :
   * Responds to flickering lanterns: “Something stirs near the wall…”
   * Stops rotation briefly during fog, strong winds, or storm approaching.
   * Reacts to distant horn, cracking wood, or whispers from the well: pauses and listens carefully.

	Idle Animations / Situations :

* Standing in defensive spear stance at tower corners.
* Looking out across village or horizon.
* Adjusting armor or chainmail straps.
* Calling out to other guards: “All clear, for now.”

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

		Guard Elric Tideward – Inner Village Patrol & Reactive Behavior

	Primary Role :
Inner Village Guard – civilian protection, alarm response, escort behavior

---

	Patrol Route Concept (Inner Village Loop)

	Route Type : Dynamic inner loop with priority interrupts

	Primary Path :
1. Southfall Well
2. Central Market / Vendor Cluster
3. Southfall Inn entrance
4. Dockside path entrance
5. Return to well

	Patrol Characteristics :
* Shorter routes, frequent pauses
* Lantern visibly lit at night
* Often walks against villager traffic flow to observe faces and behavior

	Idle Actions :
* Adjusts lantern hook
* Kneels to speak with children or villagers
* Watches alleyways and side paths
* Occasionally checks locks or doors at night

---

	Reactive Behaviors

	1. Alarm Bell Response
* Immediately moves toward central square or well
* Draws weapon but keeps lantern raised
* Calls out:
  > “Stay calm. Stay together.”

If threat persists:
* Escorts villagers toward inn or guarded zones
* Signals wall guards for reinforcements

---

	2. PvP-Flagged Player Nearby
* Positions himself between the flagged player and civilians
* Tracks movement closely but does not attack unless provoked
* Warning quote:
  > “You bring trouble into my village, you’ll answer for it.”

---

	3. Player Combat Inside Village

* Rushes to location
* Uses interrupt-style attacks to stop fighting
* Prioritizes:
	1. Breaking combat
	2. Separating parties
	3. Escorting villagers away

	If combat continues:
* Calls Guard Thalen
* Escalates to full enforcement

---

	4. Players Attacking NPCs

* Immediate hostile response
* Uses stun-style strikes to disable attacker
* Shouts:
  > “Weapons down! Now!”

* NPC escort logic activated for injured villagers
* Marks player for guard tracking until they leave village bounds

---

	Escort & Proximity Behavior

	Villager Escort Triggered When :
* Nightfall begins
* Alarm bell rings
* PvP-flagged player enters inner zone
* Weather fog reduces visibility

	Escort Logic :
* Walks alongside villager
* Lantern held outward
* Path prioritizes:
	* Inn
	* Guarded corners
	* Well area

---

	Environmental & Sound Cue Reactions

* Lantern Flicker Nearby :
  > “Lantern’s uneasy… stay alert.”

* Distant Horn :
	* Stops patrol
	* Listens
	* Moves villagers away from entrances

* Cracking Wood (Wind) :
	* Checks docks and weak structures
	* Warns players near shore

* Whispering Stones (Well) :
	* Stares into well briefly
	* Low voice:
		> “I don’t like that sound…”

---

	Night-Specific Behavior
* Patrol speed reduced
* Lantern glow increased
* Escorts more frequent
* Responds faster to sound cues
* Will verbally warn players loitering too long

---

	Guard Synergy Behavior
* Calls Kael for gate pressure
* Calls Brennar for perimeter escalation
* Reports directly to Thalen

---