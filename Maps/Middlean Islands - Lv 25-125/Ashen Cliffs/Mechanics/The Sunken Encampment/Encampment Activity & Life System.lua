			Encampment Activity & Life System

	A Living Military Outpost Framework for "The Sunken Encampment".

		Short Description
	This system transforms "The Sunken Encampment" from a static quest hub into a living, breathing military survival outpost. NPCs do not stand idle — they patrol,
work, react to threats, change behavior with time, respond to player progression, and interact with each other. The camp feels inhabited, organized, and under 
constant pressure from the island.

	This mechanic ties together :
* Safe Zone Field
* Incursion Warning System
* Tide Reset Influence
* Narrative Anchor System
* Archer Support Mechanic
* Soldier Patrol System
* Profession Field Mechanics

	It is the behavior layer that sits on top of all other mechanics.

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

		Part 1 — Core Behavior Layer (Global Rules of the Camp)

	These rules apply at all times unless overridden by special states (Incursion, Tide, Story events).

	They define how the camp exists when nothing "quest-related" is happening.

---

	1. The Camp Is Always in a State of Readiness

	This is not a village.
	This is not a town.
	This is a temporary military survival position on hostile land.

	NPCs behave accordingly :
* No one stands relaxed for long
* Everyone periodically scans surroundings
* Movements are purposeful
* Weapons are always nearby
* NPCs often look toward treelines, cliffs, sea horizon

	Players subconsciously feel :

> "These people are not safe here."

---

	2. NPCs Do Not Stay Static

	Every NPC has :
* A micro-patrol area (few meters around their post)
* A secondary waypoint they occasionally walk to
* A duty animation they perform there
* A return to their primary position

	Example types of duties (not NPC-specific yet) :
* Checking supply crates
* Inspecting tent ropes
* Looking through spyglass toward Fort Mirath direction
* Sharpening tools / arrows
* Speaking briefly with a soldier
* Looking at injured wreckage parts from the ship

	This prevents "statue NPC syndrome".

---

	3. Cross-Awareness Between NPCs

	NPCs are aware of each other’s presence.

	Occasionally :
* The Archer walks near soldiers and exchanges lines
* The Commander pauses near the Miner or Herbalist
* Vendor comments to passing soldier
* Soldiers acknowledge Commander when passing

	These are ambient scenes, not interactions with the player.
	The player witnesses life happening.

---

	4. Environmental Awareness Behavior

	At random intervals, NPCs react to the environment :
* Look toward loud jungle sounds
* Comment on distant roars
* Pause and listen to the wind
* Watch birds scatter from treetops
* Look toward sea if waves crash loudly

	This ties camp life to the island ecosystem.

---

	5. Weapon Readiness Logic

	NPCs occasionally :
* Touch their weapon
* Adjust bow
* Check arrow quiver
* Tighten armor straps
* Grip sword hilt while scanning distance

	Subtle military tension animation loop.

---

	6. Player Presence Acknowledgement

	When a player stands idle inside the camp for some seconds:

	Nearby NPCs may :
* Look at the player
* Deliver a contextual line
* Nod silently
* Give a warning line about the island

	This makes the player feel noticed, not ignored.

---

	7. Silent Periods

	Very important for realism.

	There are moments where :
* No NPC speaks
* Only wind, waves, and camp sounds exist
* NPCs simply perform duties silently

	This contrast makes dialogue moments feel meaningful.

---

	8. Camp Sound & Visual Rhythm

	Even without quests :
* Cloth tents move with wind
* Campfire crackles
* Occasional hammering from Garrin
* Herbal leaves rustle from Sereth’s table
* Distant arrow practice from Kaelen
* Footsteps of patrolling soldiers

	The camp sounds alive.

---

	9. Default Emotional Tone of the Camp

	The emotional baseline is :

> Cautious survival, discipline, exhaustion, vigilance.

Not hope.
Not comfort.
Not peace.

	That tone influences all quotes later.

---

	10. This System Is Always Running

	Unless overridden by :
* Incursion Warning active
* Night cycle behavior
* Tide cycle change
* Story progression flags

	This is the base state of the encampment.

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

		# **Part 2 — Waypoints & Duty Cycles Per NPC**

*The Sunken Encampment becomes a choreographed, living outpost*

In this layer, every important NPC receives:

* **Primary Position** (where players usually find them)
* **Micro-patrol radius**
* **Secondary & tertiary waypoints**
* **Duty animations**
* **Cross-NPC moments**
* **Environmental reactions**

These run on timers and feel natural, never synchronized.

---

## 🏹 Archer — Kaelen Thorne

**Primary Position : Near outer wooden barricade facing jungle path toward Fort Mirath.

**Micro Patrol Radius : 6–8 meters along barricade line.

**Waypoints & Duties**

1. **Barricade Edge**

   * Leans, scans treeline, hand on bow.
2. **Arrow Crate Near Tent**

   * Kneels, checks arrows, replaces broken shafts.
3. **Small Rock Overlook**

   * Uses hand as visor, watches distant cliffs.
4. **Soldier Crossing**

   * Stops briefly, exchanges silent nod with patrolling soldier.

**Environmental Reactions**

* Birds scatter → he instantly turns and draws bow half way.
* Loud monster roar → climbs barricade step for better vision.

---

## 🪖 Commander — Edran Holt

**Primary Position : Broken cannon overlooking the sea.

**Micro Patrol Radius : 5 meters between cannon, banner post, and map crate.

**Waypoints & Duties**

1. **Cannon Inspection**

   * Kneels, checks barrel, wipes rust.
2. **Supply Map Crate**

   * Opens map, studies it intensely.
3. **Banner Post**

   * Adjusts torn banner straps.
4. **Walk Toward Archer Line**

   * Observes jungle silently, hands behind back.

**Cross-NPC Moment**

* Occasionally stops near Kaelen without speaking, both watching same direction.

---

## ⛏️ Garrin Muld — Miner

**Primary Position : Ore pile and mining tools near rock edge.

**Micro Patrol Radius : 4–5 meters.

**Waypoints & Duties**

1. **Ore Inspection**

   * Taps rock with pickaxe, listens to sound.
2. **Tool Bench**

   * Sharpens pickaxe on stone.
3. **Supply Crate**

   * Checks ropes holding crates from shipwreck.

**Environmental Reaction**

* Ground tremor sound → looks down suspiciously.

---

## 🌿 Sereth Lume — Herbalist

**Primary Position : Herb table near tent shade.

**Micro Patrol Radius : 4 meters around herb station.

**Waypoints & Duties**

1. **Herb Table**

   * Crushes leaves with mortar.
2. **Water Barrel**

   * Washes herbs gently.
3. **Tent Edge (sunlight)**

   * Examines leaves against light.

**Cross-NPC Moment**

* Garrin passes by → brief exchange about island resources.

---

## 🧺 Tavia Morn — Vendor

**Primary Position : Between supply tents.

**Micro Patrol Radius : 3–4 meters.

**Waypoints & Duties**

1. **Inventory Crate**

   * Counts items, writes in notebook.
2. **Campfire**

   * Warms hands, looks toward jungle nervously.
3. **Soldier Path Crossing**

   * Steps aside, lets soldier pass, watches them go.

---

## 🪖 Encampment Soldiers (3)

**Primary Positions : Rotating patrol across inner camp and outer perimeter.

**Patrol Route Includes**

1. Inner tent circle
2. Barricade line near Archer
3. Path toward dock
4. Cliff edge overlooking sea
5. Return through Commander’s area

**Duties**

* Stop at barricade → scan jungle
* Stop near Commander → salute subtly
* Stop near tents → check ropes
* Outside wall → look at ground tracks

They never stop moving for long.

---

## 🧍 Captured Soldier — Alaric Venn (when rescued and present)

**Primary Position : Seated near medical crate or resting log.

**Micro Movement**

* Occasionally tries to stand, sits back down.
* Watches soldiers patrol with guilt/shame expression.

---

## Cross-NPC Ambient Scenes (Very Important)

These happen randomly:

* Kaelen hands Garrin a broken arrow tip found in jungle.
* Sereth gives Tavia small herb pouch.
* Soldier reports something quietly to Commander (no audible text).
* Commander looks toward dock when waves crash loudly.
* Two soldiers stop and examine ground marks outside barricade.

Player witnesses a **story without dialogue**.

---

## Result of Part 2

The player never sees:

> NPC standing forever in same place.

Instead they see:

> A military outpost functioning under pressure.

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

		Part 3 — Time, Night, Tide & Threat State Variations

	(Behavior Table for the Encampment Activity & Life System)

	This part turns the encampment from a static hub into a living military outpost that reacts to :
* Time of day
* Tide cycle (island environmental system)
* Threat state (Incursion Warning active or not)

No quests required.
No player interaction required.
The camp simply lives on its own.

---

	States Used by the System : 

| Variable         | States                   |
| ------------ | ---------------------------- |
| Time of Day  | Morning / Day / Dusk / Night |
| Tide         | Low Tide / High Tide         |
| Threat State | Normal / Incursion Warning   |

	These 3 variables combine and change :
* NPC positions
* Animations
* Patrol routes
* Quotes
* Mood of the camp

---

	Base Reference Positions in the Camp : 

| Area                         | Description             |
| ---------------------------- | ----------------------- |
| Command Post (broken cannon) | Commander’s usual place |
| Tent Cluster                 | Trainers & Vendor area  |
| Firepit                      | Social / rest zone      |
| Perimeter Line               | Soldiers patrol line    |
| Dock Viewpoint               | Archer overwatch point  |

---

	MORNING (Calm Preparation State) : 

| NPC       | Behavior                      | Position       | Activity          | Quotes Mood       |
| --------- | ----------------------------- | -------------- | ----------------- | ----------------- |
| Commander | Reviewing maps                | Command Post   | Writing, thinking | Strategic, calm   |
| Archer    | Checking bow, scanning ridges | Dock Viewpoint | Idle overwatch    | Alert but relaxed |
| Soldiers  | Slow patrol                   | Perimeter      | Walking routes    | Professional      |
| Miner     | Sharpening tools              | Near crates    | Maintenance       | Practical         |
| Herbalist | Sorting herbs                 | Tent table     | Crafting          | Peaceful          |
| Vendor    | Opening stock                 | Stall          | Organizing        | Friendly          |

	Feeling : A new day, preparation before danger.

---

	DAY (Operational Military Camp) : 

| NPC       | Behavior                          | Position              | Activity             | Quotes Mood   |
| --------- | --------------------------------- | --------------------- | -------------------- | ------------- |
| Commander | Giving orders to soldiers         | Walking between posts | Leadership           | Authoritative |
| Archer    | Moves between dock and small rock | Patrol overwatch      | Watching forest line | Focused       |
| Soldiers  | Wider patrol routes outside walls | Extended perimeter    | Guarding             | Alert         |
| Miner     | Inspecting ore samples            | Crate area            | Teaching gestures    | Instructive   |
| Herbalist | Moving between tents              | Herb routes           | Collecting samples   | Observant     |
| Vendor    | Actively interacting              | Stall                 | Selling              | Talkative     |

	Feeling : This is an active forward camp.

---

	DUSK (Tension Begins Rising) : 

| NPC       | Behavior                      | Position         | Activity              | Quotes Mood   |
| --------- | ----------------------------- | ---------------- | --------------------- | ------------- |
| Commander | Stops pacing, watches horizon | Cannon           | Silent watch          | Concerned     |
| Archer    | Stays only at overwatch rock  | Aimed stance     | Long stares           | Suspicious    |
| Soldiers  | Tighter patrol circle         | Inside perimeter | Faster patrol         | Short phrases |
| Miner     | Packs tools                   | Tent side        | Preparing to stop     | Tired         |
| Herbalist | Lights small lantern          | Tent             | Finishing work        | Soft warnings |
| Vendor    | Packing some goods            | Stall            | Preparing night stock | Nervous       |

	Feeling : The island becomes unpredictable.

---

	NIGHT (Defensive Camp State) : 

| NPC       | Behavior                     | Position           | Activity           | Quotes Mood      |
| --------- | ---------------------------- | ------------------ | ------------------ | ---------------- |
| Commander | Near firepit with soldiers   | Firepit            | Quiet talk         | Heavy lore lines |
| Archer    | On top of crate/rock         | Elevated overwatch | Bow always drawn   | Whisper lines    |
| Soldiers  | Stand posts, minimal walking | Gate & corners     | Guard stance       | Minimal speech   |
| Miner     | Sitting near fire            | Resting            | Silent             | Few lines        |
| Herbalist | Inside tent                  | Low light          | Almost inactive    | Rare lines       |
| Vendor    | Inside tent                  | Closed stall       | Sleeping animation | None             |

	Feeling : This is hostile territory.

---

	HIGH TIDE EFFECT (Overlay State) : 

	When "High Tide" is active :
* Sound of stronger waves
* Commander and Archer look more often toward the sea
* Soldiers patrol closer to dock side

	Extra behaviors :

| NPC       | Extra Action                             |
| --------- | ---------------------------------------- |
| Commander | "The sea hides movements…” type lines    |
| Archer    | Faces shoreline more often               |
| Soldiers  | Add dock waypoint                        |
| Herbalist | Comments about wet plants washing ashore |

---

	INCURSION WARNING ACTIVE (Overlay State) : 

	This overrides everything.

| NPC       | Immediate Reaction             |
| --------- | ------------------------------ |
| Commander | Shouts orders, moves to center |
| Archer    | Takes permanent overwatch aim  |
| Soldiers  | Run to defensive positions     |
| Miner     | Pulls pickaxe ready            |
| Herbalist | Moves behind crates            |
| Vendor    | Runs inside tent               |

	Quotes become short military commands.

---

		What This Achieves

	Without quests, the player sees :
* Different camp moods
* NPCs not standing like mannequins
* A believable military presence
* Environmental storytelling
* Quotes changing by situation (we will use this in NPC files)

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

		Part 4 — State Change Behavior (Incursion / Tide / Story)

	This part defines how NPC behavior instantly changes when the camp’s global state changes due to :
* Incursion Warning (Forsaken approach)
* Tide State (High / Low)
* Story Progress (Mirath / Commander questline flags)

	These are hard switches that override the normal Time-of-Day routine from Part 3.
	Think of this as the reaction layer of the "Encampment Activity & Life System".

---

		INCURSION WARNING — Defensive Protocol State

	Trigger : Incursion Warning System activates.

	Immediate Camp Reaction (2–3 seconds) : 

| NPC                  | Reaction                        | New Position             | New Behavior           |
| -------------------- | ------------------------------- | ------------------------ | ---------------------- |
| Commander Edran Holt | Shouts orders                   | Moves to camp center     | Command animation loop |
| Archer Kaelen Thorne | Sprints to overwatch rock/crate | Elevated point           | Permanent aim stance   |
| Soldiers (all three) | Run to defensive waypoints      | Gate / Perimeter corners | Combat-ready stance    |
| Garrin Muld          | Draws pickaxe                   | Near crate line          | Guard posture          |
| Sereth Lume          | Moves behind supply crates      | Cover position           | Crouched idle          |
| Tavia Morn           | Runs inside tent                | Hidden                   | Panic idle             |

	Quote Set Switch : 

	All NPCs switch to short military lines :
* "Positions! Now!”
* "They’re testing us again!”
* "Hold the line!”

	Mechanical Effect : 
* Soldiers become more alert (faster patrol if they move)
* Archer scans constantly left/right
* Commander stops all idle animations

	When Incursion ends → NPCs do not instantly revert.
	They enter a cooldown state (30–60 seconds of tension animations).

---

		HIGH TIDE — Shoreline Alert State

	Trigger : Tide system → High Tide.

| NPC       | Behavior Change                      | Focus Direction   |
| --------- | ------------------------------------ | ----------------- |
| Commander | Walks more toward cannon / sea view  | Shoreline         |
| Archer    | Adds dock to patrol waypoint         | Shoreline         |
| Soldiers  | One soldier patrols near dock        | Shoreline         |
| Sereth    | Comments on sea-washed plants        | Ground near shore |
| Garrin    | Mentions wet rocks / unstable cliffs | Ground            |

	Visual Storytelling

	NPCs behave as if :

> "Threat can come from the sea."

	This subtly connects the camp to the island ecosystem.

---

		STORY PROGRESSION STATES (Mirath Questline Influence)

	As players advance Commander Holt’s storyline, the camp mood changes permanently.

	Story State 1 — Arrival Phase (early quests) : 
* NPCs cautious, uncertain
* More scouting quotes
* Archer highly alert
* Soldiers tighter patrols

	Story State 2 — Evidence of Mirath Found : 
* Commander more aggressive in posture
* Soldiers patrol further out
* Archer leaves camp more often (implied scouting)
* Dialogue becomes more confident

	Story State 3 — Soldier Rescued / Mirath Confirmed : 
* Camp morale improves slightly
* More conversation at firepit at night
* Vendor less nervous
* Herbalist calmer quotes
* Commander has determined tone, not worried tone

	This is permanent evolution of the POI based on player progression.

---

		Combined State Priority (Very Important)

	If multiple states happen, priority is :

> "Incursion Warning" overrides everything
> then "Story State"
> then "Tide State"
> then "Time of Day"

	This ensures logical reactions.

---

		Why This Is Powerful

	The same camp :
* Feels different at night
* Feels different at high tide
* Feels different during attack
* Feels different after story progression

	Without adding new content — only behavior logic.

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

		Part 5 — Cross-NPC Interactions & Ambient Scenes

	This part defines living moments inside "The Sunken Encampment" where NPCs interact with each other — not the player.

	These are ambient scenes that trigger when :
* No Incursion is active
* No player is in direct dialogue
* Camp is in normal state

	They make the POI feel inhabited, not staged.

---

	Scene System Rules : 
* Scenes last 15–40 seconds
* Trigger every 2–4 minutes randomly
* 2–3 NPCs participate
* Player can walk nearby and hear unique dialogue
* If player interrupts → scene gracefully dissolves

---

		Scene 1 — Commander & Archer Tactical Exchange

	Participants :
* Commander Edran Holt
* Archer Kaelen Thorne

	Location : Broken cannon facing the sea

	What happens :
* Archer points toward ridges
* Commander looks through spyglass
* Short tactical exchange

	Sample lines :
> Archer: "Movement on the ridge again."
> Commander: "They’re watching. Let them."
> Archer: "I don’t like being measured."
> Commander: "Good. Stay sharp."

	Purpose : Shows ongoing threat awareness.

---

		Scene 2 — Garrin Complains, Sereth Corrects Him

	Participants :
* Garrin Muld
* Sereth Lume

	Location : Near herb crates / ore sacks

	What happens :
* Garrin drops ore loudly
* Sereth annoyed by dust

	Lines :
> Sereth: "You’re covering my herbs in grit again."
> Garrin: "Stone feeds us. Leaves just smell nice."
> Sereth: "Those ‘leaves’ saved three soldiers yesterday."
> Garrin: "…Fair."

	Purpose : Profession flavor, humanizes them.

---

		Scene 3 — Archer Training with a Soldier

	Participants :
* Archer Kaelen Thorne
* One Camp Soldier

	Location : Perimeter crate / target dummy

	What happens :
* Archer demonstrates shot
* Soldier tries, fails

	Lines :
> Archer: "You’re pulling the string, not guiding it."
> Soldier: "Feels the same to me."
> Archer: "That’s why you miss."

	Purpose : Shows skill hierarchy and training theme.

---

		Scene 4 — Tavia Trading Rumors with a Soldier

	Participants :
* Tavia Morn
* Any Soldier

	Location : Vendor tent

	Lines :
> Tavia: "You hear the howls last night?"
> Soldier: "Not wolves."
> Tavia: "…I know."

	Purpose : Teases island dangers without exposition.

---

		Scene 5 — Commander Alone at Night

	Participants :
* Commander only

	Location : Shoreline

	What happens :
* Looks at sea
* Kneels by broken banner

	Whisper line :

> "We should have seen it in him…"

	Purpose : Deep lore mood moment.

---

		Scene 6 — Soldiers Changing Patrol

	Participants :
* Two Soldiers

	Location : Camp entrance

	Lines :

> "Your turn."
> "Quiet night?"
> "Too quiet."

	Purpose : Reinforces defensive system.

---

		Scene 7 — Sereth Teaching Tavia a Plant

	Participants :

* Sereth
* Tavia

	Lines :

> "Crush the stem, not the leaf."
> "Smells bitter."
> "That’s how you know it works."

	Purpose : Environmental integration.

---

		What This Achieves

	Players who stay in camp feel story without quests.

	The camp :
* Talks
* Trains
* Worries
* Lives

	This is what makes the POI memorable.

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

		Part 6 — Rare Dynamic Scenes Players May Witness

	*Unscripted “life moments” inside The Sunken Encampment*

	This layer adds low-frequency, high-impact ambient events that players can stumble upon while exploring "The Sunken Encampment".

	Unlike Part 5 (structured interactions), these are :
* Rare
* Not guaranteed
* Often missed entirely
* Designed for replay value and discovery

	They are the "did you see that?" moments of the camp.

---

		Global Rules for Rare Scenes

* Trigger chance: low (1–5% per cycle)
* Only one rare scene active at a time
* Cannot overlap with Incursion Warning state
* Must occur in normal or Tide states only
* Player presence is optional (scene can run without them, but only becomes “special” if witnessed)

---

		Rare Scene 1 — “Missing Patrol Return”

	Trigger : Night / Dusk / low tide

	Location : Camp entrance

	Event : A patrol returns late — but only partially.

* 2 soldiers return instead of 3
* Silence instead of report
* Commander appears immediately

	Key moment :
No combat, no explanation.
Just tension.

	Sample lines :
> "Where is Feld?"
> "…We lost him near the cliffs."

	Purpose : Foreshadows island danger without showing it directly.

---

		Rare Scene 2 — "Sea-Washed Artifact"

	Trigger : High Tide transition

	Location : Shoreline near Commander post

	Event :
* A strange object washes up :
	* Broken Forsaken insignia fragment
	* Unknown ship metal piece
	* Half-burned log seal

	NPC reaction chain :
* Commander kneels instantly
* Archer stops scanning forest and looks at sea
* Soldier calls out silently

	Purpose : Direct link to Mirath/Forsaken presence without exposition.

---

		Rare Scene 3 — “Perfect Shot”

	Trigger : Daytime, calm state

	Location : Archer overwatch rock

	Event : Kaelen fires a single arrow into the distance.

No enemy visible.

	A few seconds later :
* A distant creature drops off-screen (not visible kill)

	Soldier nearby reacts :

> "You saw that from here?"

	Kaelen :

> "I saw it before it moved."

	Purpose : Establishes elite perception skill of Archer NPC.

---

		Rare Scene 4 — “Herbal Disturbance Reaction”

	Trigger : Random jungle sound event

	Location : Sereth Lume station

	Event : Herbs in her crates suddenly shake / glow faintly.

	She immediately reacts :
* Stops work
* Looks toward jungle
* Moves herbs inside tent

	Line :

> "That plant shouldn’t react to wind…"

	Purpose : Subtle ecosystem intelligence hint.

---

		Rare Scene 5 — "Ore That Shouldn’t Be Here"

	Trigger : Garrin inspection cycle

	Location : Mining area

	Event : Garrin finds ore type not native to island

	He pauses:

> "This didn’t form here…"

	Commander may briefly observe but not comment.

	Purpose : Foreshadows external influence / corruption / Forsaken logistics.

---

		Rare Scene 6 — “Merchant Price Refusal Panic”

	Trigger : Player absent, idle camp cycle

	Location : Vendor tent

	Event : Tavia suddenly closes shop early, even if nothing happens

Soldier nearby asks why.

	She replies :

> "Some things are being counted… not sold."

	Purpose : Economic tension + hidden faction pressure hint.

---

		Rare Scene 7 — “Soldier Silent Oath”

	Trigger : Pre-night or post-incursion cooldown

	Location : Camp firepit

	Event :
* One soldier silently sharpens weapon
* Then places it down briefly
* Touches chestplate

	No dialogue until another NPC speaks first

	Purpose : Emotional grounding + realism of military life

---

		Rare Scene 8 — “Commander Watches Without Speaking”

	Trigger : Night + clear sky

	Location : shoreline cannon

	Event : Commander stands completely still for ~20–30 seconds

No UI prompt
No dialogue

	If player stands nearby long enough :

> "If he’s alive… he will come back here."

	Then silence again.

	Purpose : Deep lore delivery without interaction.

---

		Design Outcome of Part 6

	This system ensures :
* Players feel the world continues without them
* The camp feels unpredictable but alive
* Lore is delivered visually, not through text dumps
* Replay value increases naturally
* Emotional attachment forms through observation

-------------------------------------------------------------------------------------------------------------------------------------------------------------------

		Part 7 — Quote Trigger Matrix System

	*Dynamic Dialogue Logic for The Sunken Encampment*

	This system defines when, why, and how NPCs speak inside "The Sunken Encampment".
	It turns all previously written dialogue into a state-driven behavioral language system, instead of static lines.
	No NPC file upgrades yet — this is the engine behind future NPC text behavior.

---

		1. Core Concept

	Every NPC does NOT have fixed quotes.

	Instead, every quote belongs to a "Trigger Category" : 
* Environment Trigger
* Time Trigger
* State Trigger
* Player Trigger
* Cross-NPC Trigger
* Rare Event Trigger

	Each category has :
* Priority level
* Frequency weight
* Emotional tone
* Context restrictions

---

		2. Trigger Priority System

	If multiple conditions are active :
1. Incursion State Quotes (Highest Priority)
2. Story Progress Quotes
3. Tide State Quotes
4. Time of Day Quotes
5. Ambient / Idle Quotes
6. Rare Event Quotes (Override when triggered)

---

		3. Quote Categories Definition

---

		A. Incursion Trigger Quotes (High Priority Combat Layer)

	Used when :
* Incursion Warning active
* Enemy presence detected
* Soldiers moving to defense

	Tone : Short, urgent, fragmented

	Examples style (system logic) :
* Commands
* Alerts
* Tactical responses
* No emotional speech unless Commander

	NPC behavior rule :
* No idle dialogue allowed
* All speech becomes functional

---

		B. Story Progress Trigger Quotes (Narrative Layer)

	Used when:
* Mirath storyline advances
* Captured soldier rescued
* Forsaken evidence discovered

	Tone : Reflective / serious / lore-heavy

	Behavior rules :
* Commander gets majority of lines
* Archer adds tactical observations
* Soldiers reduce speech frequency

	Effect : Camp becomes more “aware” of narrative stakes

---

		C. Tide Trigger Quotes (Environmental Awareness Layer)

	Used when:

* High Tide
* Low Tide transitions

	Tone : Observational / uneasy / superstitious

	Behavior rules :
* Herbalist + Miner get more lines
* Commander references sea indirectly
* Archer increases shoreline commentary

---

		D. Time Trigger Quotes (Atmospheric Layer)

	Used when :
* Morning / Day / Dusk / Night shifts

	Tone changes :

| Time    | Tone                       |
| ------- | -------------------------- |
| Morning | disciplined / preparation  |
| Day     | active / functional        |
| Dusk    | tense / warning            |
| Night   | quiet / minimal / survival |

	Important rule : At night → 70% reduction in speech frequency

---

		E. Ambient Idle Quotes (Background Layer)

	Used when :
* No major state active
* Player nearby idle
* NPC performing routine actions

	Tone : Natural, conversational, low importance

	Examples of behavior :
* Short observations
* Tool-related comments
* Environmental remarks

	This is the "life filler" system.

---

		F. Player Proximity Trigger Quotes

	Used when :
* Player stands near NPC idle > 3–6 seconds

	Rules :
* NPC acknowledges presence once per cooldown cycle
* Different reaction based on race (Human / Vampire / Werewolf)
* Some NPCs ignore players depending on role

	Behavior types :
* Greeting
* Warning
* Observation
* Silent acknowledgment (nod / stare)

---

		G. Cross-NPC Interaction Quotes

	Used when :
* Two NPCs are near each other
* Patrol routes intersect
* Duty overlap occurs

	Rules :
* No player required
* Often partial sentences
* Can be interrupted naturally

	Purpose : Creates "living world illusion".

---

		H. Rare Event Trigger Quotes

	Used when :
* Rare scenes from Part 6 occur
* Environmental anomalies happen
* Special loot / signals appear

	Rules :
* Overrides all other categories except Incursion
* Always short burst dialogue
* Emotional spike (fear, surprise, suspicion, awe)

---

		4. NPC Personality Weighting System

	Each NPC has internal weighting for how often they speak :

| NPC Type     | Speech Frequency           |
| ------------ | -------------------------- |
| Commander    | Medium (high during story) |
| Archer       | Medium-High                |
| Soldiers     | Low-Medium                 |
| Trainers     | Medium                     |
| Vendor       | Medium-High                |
| Herbalist    | Medium                     |
| Miner        | Medium                     |
| Captured NPC | High (story dependent)     |

---

		5. Cooldown Logic (Very Important)

	To prevent spam :
* Same quote type cannot repeat for 90–180 seconds
* Player cannot trigger proximity quotes repeatedly
* Cross-NPC scenes have cooldown timers
* Rare events have long cooldown (hours/days)

---

		6. Emotional State Mapping

	Quotes are not random — they follow emotional states :

| State        | Emotion                 |
| ------------ | ----------------------- |
| Normal       | neutral awareness       |
| Alert        | suspicion               |
| Incursion    | urgency                 |
| Story reveal | tension / seriousness   |
| Tide change  | unease                  |
| Night        | minimal / survival tone |

---

		7. System Result (What This Creates)

	When fully active, the camp becomes :
* A place that talks differently every visit
* A place where NPCs react before players act
* A place where story is heard through behavior, not exposition
* A place that feels unscripted, but actually fully structured

---
