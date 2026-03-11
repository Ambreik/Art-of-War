			Bastion of Taranmere – Enemies & Mechanics
			
		Escaped Crusader Undead (Primary Enemies)		

---

		I. NARRATIVE & FUNCTIONAL IDENTITY

	Lore Role : Escaped Crusader Undead are remnants of the order that once sealed the abyss beneath the Bastion. As the seal weakens, fragments of their bound 
spirits tear free, reanimating their bodies or forming unstable undead manifestations.

	They are:
* Not mindless
* Not fully sentient
* Bound by instinct to protect the seal area

	Gameplay Role :
* Backbone enemy of the Bastion
* Primary source of "Key Fragments"
* Pressure element that escalates closer to the seal

---

		II. ENEMY SUB-TYPES

	Escaped "Crusader Undead" are not a single enemy, but a family of variants, allowing visual and mechanical diversity without overwhelming complexity.

	1. Crusader Watcher

	Role : Patrol & detection
* Light armor
* Sword / mace
* Faster movement speed
* Lower health

	Behavior :
* Leads patrol groups
* Reacts quickly to sound and combat
* More likely to investigate disturbances

---

	2. Crusader Bulwark

	Role : Area control
* Heavy armor
* Shield + weapon
* Slow but durable

	Behavior :
* Often guards narrow corridors
* Holds chokepoints
* Will not chase far from assigned routes

---

	3. Crusader Penitent

	Role : Unstable damage dealer
* Broken armor
* Two-handed weapon or claws
* Visibly corrupted

	Behavior :
* Erratic movement
* Aggressive pursuit
* May overextend from patrol routes

---

	4. Crusader Bound (Elite Variant – Rare in Open World)

	Role : Mini-elite pressure unit
* Appears near seal zones
* Stronger stats
* Slightly larger model

	Behavior :
* Anchors patrol groups
* Causes nearby undead to become more aggressive

---

		III. SPAWN ZONE DISTRIBUTION

	Inner Castle Corridors
* Standard patrol groups (2–3 enemies)
* Mix of Watchers and Penitents
* Moderate respawn density

	Broken Halls
* Unstable spawns
* Higher chance of Penitents
* Increased ambush risk

	Collapsed Stairwells
* Vertical combat zones
* Bulwarks often placed here
* Patrol routes overlap floors

	Seal Antechamber
* Highest density
* Increased chance of Elite variants
* Shorter patrol loops
* Faster reaction times

---

		IV. GROUP COMPOSITION RULES

	To prevent repetitive encounters, group composition follows rules:

* Minimum group size: 2
* Maximum group size: 4
* No more than:
	* 1 Bulwark per group
	* 1 Elite per two groups
* Every group has:
	* At least one Watcher or Penitent

	This ensures:
* Tactical variety
* Predictable difficulty without sameness

---

		V. PATROL & MOVEMENT LOGIC

	Patrol Routes
* Predefined node-based routes
* Each group assigned:
  * Primary route
  * Secondary deviation nodes

	Idle Behavior
* Short pauses at:
	* Doorways
	* Broken banners
	* Old guard posts
* Idle time is limited (30–60 seconds)

	Investigation Behavior

	When combat or sound is detected:
* Watchers investigate first
* Bulwarks follow if threat persists
* Penitents may charge prematurely

---

		VI. RESPAWN SYSTEM

	Respawn Timing
* Base respawn: 6–10 minutes
* Slight random variance per group

	Respawn Location Logic
* Groups do not respawn at the same node twice in a row
* Respawn pool rotates through:
	* Adjacent corridors
	* Nearby ruined rooms
* Prevents static farming

	Conditional Respawn Delays

	Respawn timer may increase if:
* Area has high player density
* Seal area recently activated

---

		VII. AGGRESSION & LEASH RULES

	Aggro Range
* Medium base aggro
* Increased near seal
* Reduced near courtyard

	Lash Behavior

* Will not pursue into:
	* NPC courtyard
	* Outer wall safe paths
* Reset if dragged too far

---

		VIII. KEY FRAGMENT INTEGRATION (PREVIEW)

	While detailed later, for reference:

* All Crusader Undead have:
	*Low base chance to drop Key Fragments
* Elite variants have:
	* Increased chance
* Drop rates are tuned for:
	* Steady progression, not burst farming

---

		IX. PLAYER EXPERIENCE GOALS

	Players should feel:
* Watched
* Pressured but not overwhelmed
* Rewarded for clearing patrols strategically
* Unsafe lingering too long near the seal

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

			Bastion of Taranmere – Enemies

		Restless Spirits (Secondary Threat)

---

		I. NARRATIVE & THEMATIC IDENTITY

	Lore Role : "Restless Spirits" are fragmented echoes of crusaders, workers, and defenders who died during the sealing of the abyss. Unlike the undead crusaders,
they are not bound to physical duty, but to memory, regret, and place.

	They are manifestations of:
* Unfinished vows
* Trauma bound to locations
* The seal’s gradual failure

	Gameplay Role :
* Ambush-based threat
* Environmental hazard rather than frontline combat
* Reinforces the haunted, unstable nature of the Bastion

---

		II. SPIRIT SUB-TYPES

	Spirits are fewer in number but more unpredictable than crusader undead.

	1. Lingering Wraith

	Role : Ambush & pressure
* Humanoid spectral form
* Slow drifting movement
* Moderate damage, low durability

	Behavior :
* Appears behind or above players
* Engages briefly, then fades
* Rarely fights to the death

---

	2. Bound Echo

	Role : Area denial
* Anchored to an object or location
* Emits spectral distortions
* Cannot move far from anchor

	Behavior :
* Activates when players linger
* Applies debuffs or pressure effects
* Retreats when players disengage

---

	3. Mourning Shade

	Role : Reactive lore guardian
* Appears near inspectable objects
* Stronger than other spirits
* Highly thematic presentation

	Behavior :
* Spawns when lore objects are inspected
* Aggressive only after inspection
* Disappears if not engaged quickly

---

	III. SPAWN AREA LOGIC

	Fallen Statues
* Bound Echoes
* Guard memory fragments
* Often linked to crusader remains

	Old Battlements
* Lingering Wraiths
* High vertical ambush potential
* Appear from walls or air

	Sites of Mass Death
* Increased spirit density
* Mixed spirit sub-types
* Heightened ambient effects

	Scroll & Relic Locations
* Mourning Shades most common
* Reactive spawn triggers
* Lore-protection role

---

	IV. SPAWN BEHAVIOR & VISIBILITY

	Idle State
* Semi-invisible
* Soft visual distortion
* Audible whispers or echoes

	Trigger Conditions

	Spirits fully materialize when:
* Players approach within range
* Lore objects are inspected
* Large groups of enemies are defeated nearby
* High spawn pressure exists

	Materialization Rules
* Short emergence animation
* Cannot be instantly attacked
* Gives players reaction window

---

	V. REACTIVE SPAWN SYSTEM

	Lore Interaction Triggers

* Inspecting scrolls, pages, statues, or bodies:
	* Has a chance to spawn a Mourning Shade
* Chance increases if:
	* Area recently cleared
	* Multiple players inspect at once

	Combat Escalation
* Excessive crusader kills in one zone:
	* May cause spirits to manifest nearby
* Encourages movement over farming

---

		VI. RESPAWN & DESPAWN RULES

	Respawn Timing

* Base respawn: 10–15 minutes
* Longer than crusaders
* Randomized per spirit type

	Despawn Conditions

	Spirits despawn if:
* Players ignore them for too long
* Players leave the area
* They complete a disruption cycle without combat

	This prevents:
* Area clutter
* Forced combat loops

---

		VII. AGGRESSION & PURSUIT

	Aggro Behavior
* Short aggro range
* Focus on surprise rather than chase

	Pursuit Rules
* Will not pursue across zones
* Fade if dragged too far
* Cannot be kited into NPC areas

---

		VIII. ENVIRONMENTAL EFFECTS

	When spirits are active:
* Subtle screen distortion
* Ambient audio changes
* Flickering lights or shadows

	These effects:
* Stack mildly with multiple spirits
* Fade quickly after combat

---

		IX. PLAYER EXPERIENCE GOALS

	Players should:
* Feel uneasy inspecting objects
* Learn that stillness can be dangerous
* Expect ambushes without feeling punished
* Associate spirits with memory and place

---

		X. SYSTEM INTEGRATION

	Restless Spirits interact with:
* Crusader spawn pressure
* Investigation quests
* Lore object system
* Rare monster escalation logic

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

			Bastion of Taranmere

		Ruin Wildlife (Ambient Hostiles)

---

		I. NARRATIVE & WORLD FUNCTION

	Lore Role : "Ruin Wildlife" represents creatures that have adapted to the abandoned fortress, thriving in collapsed structures and overgrown sections where the 
undead presence is weaker.

	They are:
* Not corrupted by the seal
* Not tied to crusader lore
* Simply survivors of neglect and decay

	Gameplay Role :
* Provide environmental danger
* Break visual and combat repetition
* Keep outer areas from feeling empty or safe

---

		II. WILDLIFE SUB-TYPES

	1. Dire Bats

	Role : Aerial harassment
* Fast, erratic movement
* Low health
* Moderate damage in swarms

	Behavior :
* Roost in towers and ceilings
* Trigger when players pass beneath
* Retreat quickly if players disengage

---

	2. Ruin Wolves

	Role : Territorial ground threat
* Medium health
* Pack-based behavior
* Strong opening attacks

	Behavior :
* Guard specific areas
* Howl to alert nearby wolves
* Disengage if players flee too far

---

	3. Stone-Scaled Lizards

	Role : Area control & surprise
* High armor
* Slow movement
* Camouflaged against stone

	Behavior :
* Remain motionless until approached
* Short, powerful attacks
* Return to idle after brief pursuit

---

	III. SPAWN AREA DISTRIBUTION

	Outer Walls
* Dire bats
* Occasional lizards
* Sparse but unpredictable encounters

	Collapsed Towers
* Bat colonies
* High vertical ambush risk
* Limited escape routes

	Overgrown Sections
* Wolves dominate
* Lizard presence near sun-warmed stone
* Natural patrol boundaries

---

	IV. SPAWN & RESPAWN RULES

	Spawn Density
* Low to moderate
* Never clustered heavily
* Designed to be encountered while traveling

	Respawn Timing
* Long respawn times
* Not synchronized
* Wildlife population feels persistent

---

	V. AGGRESSION & TERRITORIAL LOGIC

	Territorial Radius
* Clearly defined zones
* Visual cues (bones, nests, markings)

	Chase Rules
* Will not pursue beyond territory
* Reset quickly if disengaged

	Interaction with Undead
* Wildlife avoids high undead density areas
* No mixed patrols with crusaders or spirits

---

	VI. COMBAT & REWARD RULES
* No Key Fragment drops
* Minimal loot
* Experience gain is minor
* Combat is optional, not required

---

	VII. PLAYER EXPERIENCE GOALS

	Players should:
* Feel the world is alive
* Stay alert even outside undead zones
* Experience natural pacing between major encounters
* Never feel forced to fight wildlife

---

	VIII. SYSTEM INTEGRATION

	Ruin Wildlife interacts with:
* Exploration pacing
* Outer-zone quest routes
* Rare monster pathing (indirectly)

	Does not interact with:
* Seal mechanics
* Dungeon access systems
* Crusader pressure logic

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

			Bastion of Taranmere

		Rare Monster (Semi-Boss)

---

	I. DESIGN INTENT

	The Rare Monster in Bastion of Taranmere is designed to be:

* Optional, never blocking progression
* Dangerous, even to prepared groups
* Unpredictable, creating emergent encounters
* Memorable, not just “a bigger mob”

	It exists to:
* Reward awareness and preparation
* Punish careless exploration
* Break routine patrol expectations

---

	II. IDENTITY & LORE POSITION

	Narrative Role : The Rare Monster is a manifestation of the Bastion’s instability — a creature drawn to the weakening seal but not bound by crusader oaths.

	It is:
* Neither crusader nor spirit
* Not aligned with the seal’s purpose
* A predator exploiting chaos

	This keeps it thematically separate from dungeon lore while still belonging to the zone.

---

	III. SPAWN CONDITIONS & CONTROL

	Global Spawn Rules

* Only one Rare Monster exists at any time across the Bastion
* If killed, a long respawn timer begins
* If despawned naturally, cooldown still applies

	Respawn Window
* Long and randomized
* Prevents tracking and farming
* Encourages chance encounters

---

	IV. SPAWN LOCATIONS (RANDOM DEEP ZONES)

	The Rare Monster can spawn in one of several deep-zone clusters :
* Inner castle lower halls
* Seal-adjacent corridors
* Collapsed interior towers
* Broken stairwell networks

	It never spawns in:
* Courtyard NPC area
* Outer wall travel routes

	Spawn points rotate randomly per cycle.

---

	V. PATROL & MOVEMENT BEHAVIOR

	Patrol Routes
* Long, looping paths
* Routes intersect:
	* Crusader patrols
	* Spirit spawn zones
* May enter active combat areas

	Movement Style
* Purposeful, not random
* Slower than spirits, faster than bulwarks
* Feels like it is searching

---

	VI. AGGRESSION & ENGAGEMENT LOGIC

	Aggression Rules
* Large aggro radius
* Will interrupt:
	* Player combat
	* Crusader fights
* Prioritizes players over NPCs

	Persistence
* Will pursue players across multiple rooms
* Will not leash easily
* Disengages only if:
  * Players reach safe zones
  * Players die or fully escape

---

	VII. COMBAT DESIGN PHILOSOPHY

	Difficulty Profile

* Designed for:
	* Full party or
	* Highly skilled smaller group
* Overwhelming for solo players

	Ability Design Principles
* High-impact attacks
* Clear telegraphs
* Punishing mistakes, not unavoidable damage

	(Specific abilities can be designed later if you want a named monster.)

---

	VIII. INTERACTION WITH OTHER ENEMIES

* Crusaders may:
	* Ignore it
	* Be killed by it
* Spirits may:
	* Appear more frequently nearby
* Wildlife avoids its presence

	This reinforces its dominance in the zone.

---

	IX. REWARD STRUCTURE

	Loot Philosophy
* Better-than-normal drops
* No unique items required
* No dungeon access items

	Rewards are:
* Bonus
* Prestige
* Not mandatory

---

	X. DESPAWN RULES

	The Rare Monster despawns if:
* Not engaged for a long period
* Lured toward NPC areas
* Server reset or world event

	Despawning still triggers respawn cooldown.

---

	XI. PLAYER EXPERIENCE GOALS

	Players should:
* Feel sudden danger
* Decide whether to fight or flee
* Tell stories about the encounter
* Never feel obligated to hunt it

---

	XII. SYSTEM INTEGRATION

	The Rare Monster interacts with:
* Enemy patrol systems
* Spirit escalation
* Exploration pacing

	Does not interact with:
* Seal mechanics
* Key fragments
* Dungeon access flow

---