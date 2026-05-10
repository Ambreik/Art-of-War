			Watch Before You Move

---

	1. Basic Information

* Quest Name : Watch Before You Move
* Quest Type : Reconnaissance / Observation
* Quest Giver : Carler Pincher
* Location : The Watcher’s Perch — Northern Cliffs, Ashen Cliffs Island
* Recommended Level : 46–52
* Party Size : Solo
* Repeatable : No

---

	2. Narrative Context

	Carler Pincher has been hiding inside the old watchtower for days, studying the movement patterns of the Forsaken patrols below. He believes the Forsaken are 
not wandering randomly — they move with military precision along fixed paths.
	He lacks the time and safety to confirm the full pattern himself.
	He needs the player to observe, not fight.
	This is the first time the player is asked to behave like a scout rather than a soldier.

---

	3. Quest Objective

	The player must use the old tower’s vantage points to study patrol behavior.

	Objectives :
* Interact with 3 Observation Points placed at :
	* Top platform of the tower
	* Mid-level broken balcony
	* Ground-level window slit facing waterways
* After observing from all points, interact with "Mark Supply Path" at the map table inside the tower.

---

	4. Player Tasks (Mechanical Flow)

1. Reach first observation point → interact → character enters short "observe” channel (4 s).
2. During channel, visible patrols below move along their routes.
3. Repeat for all 3 vantage points.
4. After all are completed, return inside tower and mark the suspected main route.

	No combat is required, but patrols pass close enough that careless players may aggro them.

---

	5. Environmental & AI Mechanics Used

	This quest intentionally exposes the player to :
* Patrol route behavior
* Line-of-sight from elevation
* Timing of movement rather than rushing
* How Forsaken units move in discipline along repeated paths

	If the player attacks patrols, the quest becomes harder but does not fail.

---

	6. Failure / Reset Conditions

* Leaving the POI area resets observation progress.
* Death resets current observation point only.

---

	7. Completion Condition

	All 3 observation points completed and the supply path marked on the table.
	Return to Carler Pincher.

---

	8. Rewards

* Experience appropriate to level
* Small coin reward
* Minor reputation gain with island reconnaissance effort (hidden value for later questlines)

---

	9. Carler Pincher Dialogue

	On Accept :

> "Most fools look at a fortress and see walls. I look and see movement."
> "They don’t wander. They march. Watch them… and you’ll see it too."
> "Up there — different angles. Different truths."

	On Progress (after first observation) :

> "You noticed it, didn’t you? Same route… same timing…"

	On Completion :

> "Good… good. You see it now. This is not chaos. This is command."
> "And if there’s command… there’s a way to break it."

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

			Smoke in the Wind

---

	1. Basic Information

* Quest Name : Smoke in the Wind
* Quest Type : Environmental Test / Survival Observation
* Quest Giver : Carler Pincher
* Location : The Watcher’s Perch — Northern Cliffs, Ashen Cliffs Island
* Recommended Level : 48–54
* Party Size : Solo
* Repeatable : No

---

	2. Narrative Context

	Carler Pincher believes the signal brazier atop the Watcher’s Perch is still partially functional. If lit, it may trigger old Forsaken response protocols — not 
full fortress alerts, but localized investigation behavior.
	He wants to test how quickly patrols respond, and from which directions they converge.
	More importantly, he wants the player to survive the reaction.

---

	3. Quest Objective

	Primary Objective :
* Ignite the signal brazier at the top of the tower

	Secondary Objective :
* Survive the investigation phase
* Avoid or evade incoming Forsaken patrols
* Do not destroy patrol units unless necessary

	Final Objective :
* Return to Carler Pincher and report :
	* Number of responding patrol groups
	* Approximate approach directions

---

	4. Player Tasks (Mechanical Flow)

1. Climb to the top of The Watcher’s Perch
2. Interact with the "Signal Brazier"
	* Ignition triggers smoke column (visible across northern cliffs)
	* Activates localized alert behavior in nearby patrol AI
3. After ignition :
	* Forsaken patrols begin converging toward tower vicinity
	* Patrols do NOT immediately enter tower — they investigate surrounding paths first
4. Player must :
	* Hide in tower levels OR cliffside blind spots OR upper-mid observation slits
	* Avoid detection or disengage if spotted
5. After convergence phase ends, return to Carler

---

	5. Environmental & AI Mechanics Used

	This quest directly uses :
* Minor Alert Event System (localized response only)
* Patrol convergence logic (multiple entry directions)
* Line-of-sight and elevation concealment
* Fog/weather amplification (if active, reduces detection range)

	Key design intent :

> Players learn that "alert” does not mean "instant combat swarm” — it means structured investigation behavior.

---

	6. Alert Behavior Breakdown (Simplified System Exposure)

	When brazier is lit :
* Patrols within nearby waterways :
	* Pause patrol route
	* Redirect toward tower base
* Patrols on cliffside routes :
	* Split into 2–3 investigation paths
* Patrols inside fort :
	* No full fortress alarm triggered
	* Only local reinforcement groups may appear near outer cliffs

	This is intentionally a controlled escalation system, not full fortress engagement.

---

	7. Failure Conditions

* Player dies → quest resets to pre-ignition state
* Leaving the tower before reporting → quest reset
* Destroying all converging patrols → Carler commentary changes (but quest still completes with reduced insight value)

---

	8. Completion Condition

	Return to Carler Pincher and provide observational report.

	Quest completes when player delivers :
* Estimated number of responding patrol groups
* Approximate directions of arrival

---

	9. Rewards

* Experience reward (moderate, higher than first quest)
* Small stealth/scouting thematic bonus reward
* Unlocks Carler’s deeper reconnaissance questline

---

	10. Carler Pincher Dialogue

	On Accept :

> "Light it… and we’ll see how tightly they hold their leash."
> "Just don’t think this is a signal for help. It’s a test."

	On Ignition :

> "There it is… now we wait."
> "Don’t move unless you have to. Let them reveal themselves."

	If player is spotted :

> "They see you? No—don’t fight. Observe. Survive."

	On Completion :

> "Good. Fast response. Structured too… they didn’t break formation."
> "This is exactly what I needed to know."

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

			They Know I’m Here

---

	1. Basic Information

* Quest Name : They Know I’m Here
* Quest Type : Stealth / Distraction / Escort-style NPC Protection
* Quest Giver : Carler Pincher
* Location : The Watcher’s Perch — Northern Cliffs, Ashen Cliffs Island
* Recommended Level : 49–55
* Party Size : Solo
* Repeatable : No

---

	2. Narrative Context

	Carler Pincher has confirmed something troubling — a Forsaken patrol has begun actively sweeping the cliffside routes near The Watcher’s Perch.
	Unlike normal patrol behavior, this unit is not simply passing through. It is searching intentionally.
	Carler cannot afford to be discovered. If he is exposed, the reconnaissance effort collapses entirely.
	He instructs the player to divert attention away from the tower without engaging in direct combat.

---

	3. Quest Objective

	Primary Objective :
* Lure the Forsaken patrol away from The Watcher’s Perch

	Secondary Objectives :
* Do not kill patrol members (optional but heavily discouraged)
* Maintain patrol diversion for a sustained duration

	Final Objective :
* Confirm Carler has successfully relocated to a safer position inside the tower

---

	4. Player Tasks (Mechanical Flow)

1. A Forsaken patrol spawns on cliffside routes near the tower base
2. Patrol begins "search behavior” (slower movement, tighter formation, scanning actions)
3. Player must :
	* Use environmental interactions to create noise or distraction :
		* Throwable rocks
		* Triggered debris falls
		* Line-of-sight baiting
	* Gradually pull patrol away from tower radius
4. Once patrol is sufficiently displaced :
	* Carler triggers relocation state
	* He vanishes (smoke / stealth exit mechanic already defined)
5. Player waits until patrol begins to return to route cycle OR is fully disengaged

---

	5. Core Mechanics Used

	This quest introduces or reinforces :

* Aggro manipulation without combat
* Patrol AI "search state" behavior (non-random, investigative movement)
* Noise-based environmental distraction
* Enemy formation integrity (patrol stays grouped unless broken by player actions)

	Important design rule :

> Killing enemies does NOT solve the quest efficiently — it destabilizes the observation logic.

---

	6. Patrol AI Behavior (Quest-Specific)

	When activated :
* Patrol switches from :
	* Normal route cycle → "Search Pattern Mode"

	Search Mode traits :
* Slower movement speed
* Frequent stop-and-scan behavior
* Splitting into partial sub-groups if distracted too far
* Prioritizing sound and movement over line-of-sight

	If player is detected :
* Patrol does NOT immediately escalate fortress-wide alert
* Instead :
	* They tighten formation
	* Call for nearby reinforcement checks
  * Continue local search sweep

---

	7. Failure Conditions

* Killing the entire patrol → quest continues but Carler becomes more paranoid (dialogue variation)
* Player or Carler detected → partial reset of patrol behavior and Carler relocation fails
* Leaving the area → quest reset
* Carler exposed → quest fails immediately

---

	8. Completion Condition

	Quest completes when :
* Patrol is successfully diverted away from tower zone
* Carler confirms safe relocation inside Watcher’s Perch

---

	9. Rewards

* Experience reward (slightly higher than previous quest)
* Unlocks advanced reconnaissance questline branch
* Small stealth proficiency bonus (system-level progression flag if applicable)

---

	10. Carler Pincher Dialogue

	On Accept :

> "They’re closer than I thought..."
> "I need them looking anywhere but here. Preferably far away."

	During Patrol Approach :

> "Don’t engage them. Move them. That’s all I need."

	If player kills patrol :

> "That wasn’t the point… but… it will have to do."
> "Less noise… more suspicion. Not ideal."

	On Successful Diversion :

> "Good. Good… they’re drifting away."
> "You just bought me time I didn’t have."

	After Completion :

> "They were searching for me… not randomly. That means I’m close."
> "Or they already know more than I do."

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

			Supply Route Confirmation

---

	1. Basic Information

* Quest Name : Supply Route Confirmation
* Quest Type : Stealth / Investigation / Light Infiltration
* Quest Giver : Carler Pincher
* Location : The Watcher’s Perch → Waterways beneath Northern Cliffs, Ashen Cliffs Island
* Recommended Level : 50–56
* Party Size : Solo
* Repeatable : No

---

	2. Narrative Context

	Carler Pincher has identified unusual movement patterns along the island’s northern waterways.
	He believes the Forsaken are not only patrolling the fort — they are actively moving supplies through hidden logistical routes beneath the cliffs.
	These routes may connect smaller outposts, shoreline access points, and Fort Mirath’s internal supply system.
	However, confirming this requires physical verification.
	Carler cannot risk exposure outside the Watcher’s Perch.
	The player is assigned to quietly mark and identify supply crates moving through the waterways.

---

	3. Quest Objective

	Primary Objective :
* Locate and mark 3 suspicious supply crates in the waterways below the cliffs

	Secondary Objectives :
* Avoid detection by Forsaken patrol units
* Do not engage in open combat (optional but discouraged)

	Final Objective :
* Return to Carler Pincher with confirmation of crate movement patterns

---

	4. Player Tasks (Mechanical Flow)

1. Player descends from Watcher’s Perch to cliffside water routes
2. Area contains :
	* Light Forsaken patrol presence
	* Moving crate carriers (Rank I–II logistical units)
	* Occasional static watch points near shore access
3. Player must :
	* Identify crates with Carler’s hidden markings (visual cue system)
	* Interact with crates to apply chalk marking
4. Each marked crate increases "route confirmation progress”
5. After all crates are marked :
	* Player must safely return to Carler

---

	5. Core Mechanics Used

	This quest reinforces and expands :
* Stealth infiltration in low-to-medium threat zones
* Environmental observation applied to logistics systems
* Interaction-based objectives instead of combat
* Early exposure to supply chain structure of "Fort Mirath"

	Key design principle :

> The player is learning that war is not only fought on walls — it is sustained through movement.

---

	6. Enemy Behavior (Waterway Patrol Logic)

	Forsaken units in this area behave differently from fortress guards :
* Patrol small shoreline segments
* Escort crate carriers in pairs or small groups
* Occasionally stop to inspect crates or exchange cargo
* React to suspicious movement with investigation behavior (not full alarm)

	If player is detected :
* Local chase behavior is triggered
* Reinforcements come from nearby shoreline routes only
* No fortress-wide alert escalation

	This keeps tension localized and manageable.

---

	7. Failure Conditions

* Being killed → reset to last marked crate
* Leaving the area → reset all progress
* Being seen interacting with crates → patrols become more aggressive but quest continues
* Destroying crates → optional penalty dialogue, but quest remains completable

---

	8. Completion Condition

	Quest completes when :
* All 3 supply crates are successfully marked
* Player returns to Carler Pincher with confirmation

---

	9. Rewards

* Experience reward (moderate)
* Unlocks deeper logistical insight into Fort Mirath supply system
* Small stealth progression flag (system-level, optional for later use)
* Unlocks next reconnaissance quest branch

---

	10. Carler Pincher Dialogue

	On Accept :

> "If I’m right… they’re moving more than just weapons."
> "Find the crates. Mark them. Don’t let them notice you exist."

	During Quest (if player returns partially marked):**

> "Good… that confirms movement, but not direction yet."

	If player is detected :

> "Careful! If they start questioning the cargo, everything shifts."

	On Completion :

> "So it’s true… they’re running supplies through the waterways."
> "That means the fort is not isolated. It’s sustained."

> "And if it’s sustained… it can be starved."

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

			The Blind Spots

---

	1. Basic Information

* Quest Name : The Blind Spots
* Quest Type : Reconnaissance / Exploration / Line-of-Sight Mapping
* Quest Giver : Carler Pincher
* Location : Northern Cliffs → Cliff edges overlooking Fort Mirath approaches, Ashen Cliffs Island
* Recommended Level : 51–57
* Party Size : Solo
* Repeatable : No

---

	2. Narrative Context

	Carler Pincher has gathered enough intelligence to understand that Fort Mirath is not just defended by patrols and walls — it is defended by vision control.
	Watchtowers, battlements, and elevated positions create overlapping sight coverage across most approach routes.
	However, even the best surveillance systems have weaknesses.
	Carler wants to identify those weaknesses — the blind spots where movement is not easily detected.
	These locations will later define how the fort can be infiltrated.

---

	3. Quest Objective

	Primary Objective :
* Identify and analyze 4 Blind Spot Locations along the cliffside approach to "Fort Mirath"

	Secondary Objective :
* Avoid detection while standing in observation zones
* Do not engage enemy patrols unless necessary

	Final Objective :
* Return to Carler Pincher with a completed line-of-sight map

---

	4. Player Tasks (Mechanical Flow)

1. Player follows marked cliffside path routes toward observation points
2. At each designated Blind Spot location :
	* Player must stand still for a short observation channel (5–7 seconds)
	* During this time :
		* Fort patrol sight cones are simulated visually
		* Enemy detection zones may pass over or miss the player
3. Player repeats this at all 4 points
4. After all points are completed :
	* Map at Watcher’s Perch updates with safe approach routes highlighted

---

	5. Core Mechanics Used

	This quest introduces and reinforces :
* Line-of-sight detection system (fort visibility logic)
* Static observation under risk pressure
* Environmental awareness over combat
* Route planning for future fortress infiltration

	Key design principle :

> Players are not just learning where enemies are — they are learning where enemies cannot see.

---

	6. Environmental & AI Interaction

	This quest directly integrates :
* Fort watchtower detection cones
* Patrol rotation timing along outer walls
* Fog and weather effects :
	* Fog increases blind spot reliability
	* Clear weather reduces safety window and increases detection risk

	Enemy behavior :
* Patrols do not directly chase unless player is fully exposed
* Detection is based on line-of-sight exposure duration, not instant spotting

---

	7. Failure Conditions

* Being detected for too long → patrol escalation in nearby cliff section
* Death → resets current blind spot only
* Leaving area → resets full progress
* Ignoring observation requirement → no map update at completion

---

	8. Completion Condition

	Quest completes when :
* All 4 blind spot observation points are analyzed
* Carler confirms a usable infiltration map has been generated

---

	9. Rewards

* Experience reward (moderate-high due to strategic importance)
* Unlocks "Fort Mirath Approach Map" (Partial Reveal System)
* Unlocks next reconnaissance chain leading toward direct fortress entry planning
* Small stealth/navigation progression flag (system-level)

---

	10. Carler Pincher Dialogue

	On Accept :

> "Every fortress has eyes… the trick is finding where they blink."
> "Walk the edge. Don’t rush. You’re not fighting — you’re learning."

	At First Observation Point :

> "Stop there… don’t move. Let them pass over you."

	If player is detected :

> "Too exposed! You’re inside their sightline!”

	On Completion :

> "Good… this changes everything."
> "They don’t see the cliffs evenly. There are gaps… real gaps."

> "Now we know where to walk when it’s time to enter."

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

			Count the Guns

---

	1. Basic Information

* Quest Name : Count the Guns
* Quest Type : Reconnaissance / Target Identification / Environmental Survey
* Quest Giver : Carler Pincher
* Location : The Watcher’s Perch → Northern Cliffs overlooking Fort Mirath walls, Ashen Cliffs Island
* Recommended Level : 52–58
* Party Size : Solo
* Repeatable : No

---

	2. Narrative Context

	Carler Pincher has confirmed that Fort Mirath is not only defended by patrols and elevated watch positions, but also by a structured cannon-based defense grid.
	However, the exact number, placement, and coverage angles of these cannons remain unknown.
	This information is critical.
	If an assault or infiltration is ever attempted, understanding artillery coverage will determine survival.
	Carler assigns the player to perform a precise visual count and positional mapping of all visible cannons from the Watcher’s Perch.

---

	3. Quest Objective

	Primary Objective :
* Identify and count all visible cannons on Fort Mirath’s outer walls

	Secondary Objectives :
* Determine approximate positions of each cannon :
	* North wall segment
	* East-facing inner courtyard line
	* Cliff-facing defense line
* Avoid detection while observing

	Final Objective :
* Report full cannon count and positions to Carler Pincher

---

	4. Player Tasks (Mechanical Flow)

1. Player moves between designated "Observation Points" inside The Watcher’s Perch :
	* Top platform (wide fort visibility)
	* Mid-level slit windows (angled wall view)
	* Cliff-edge side view (waterway-facing artillery line)
2. At each point :
	* Player uses an "Observe Cannon" interaction
	* Camera shifts or zooms toward fortress sections
	* Cannons become highlight-marked when discovered
3. Player must manually confirm each cannon observation
4. After all cannon observations are complete :
	* A "Cannon Layout Summary Map" is generated in quest UI
5. Player returns to Carler Pincher with full report

---

	5. Core Mechanics Used

	This quest introduces and reinforces :
* Structured enemy fortification reading
* Static environmental scanning gameplay
* Preparation for future "Cannon Interaction System"
* Spatial awareness of siege defense architecture

	Key design principle :

> The fortress is not just defended — it is engineered.

---

	6. Environmental & AI Interaction

	This quest is strongly influenced by environmental conditions :

	Clear Weather :
* Maximum visibility of cannon positions
* Easier to count and confirm placements
* Higher risk of being spotted by fortress watch units

	Fog / Rain :
* Partial visibility of cannons
* Some cannon positions require estimation rather than direct confirmation
* Encourages careful observation rather than speed

	Enemy behavior during quest :
* Cannons themselves are inactive objects (no firing unless triggered by future systems)
* Patrols continue normal movement along walls
* Detection risk increases if player remains exposed too long at observation points

---

	7. Failure Conditions

* Death → resets current observation point only
* Leaving tower → resets full cannon count progress
* Incorrect or incomplete cannon report → quest still completes but yields reduced analysis reward (Carler comments on inaccuracies)
* Being heavily exposed for too long → patrol escalation in nearby cliff sections

---

	8. Completion Condition

	Quest completes when :
* All visible cannons have been identified and mapped
* Player returns to Carler Pincher with a full cannon layout report

---

	9. Rewards

* Experience reward (high importance reconnaissance tier)
* Unlocks future Cannon Interaction System awareness flag
* Improves Fort Mirath siege intelligence dataset (used in later questlines)
* Unlocks final reconnaissance quest in this chain

---

	10. Carler Pincher Dialogue

	On Accept :

> "If you don’t know where their guns are pointing… you already lost."
> "Count them. Every single one. Don’t guess."

	During Observation :

> "Good… slow down. That’s a blind angle… note it."

	If player misses a cannon :

> "No… you missed that one. Look again. Precision matters."

	On Completion :

> "So that’s how many they still maintain..."
> "They’re not just defending the fort. They’re preparing it."

> "And I don’t like what that implies."

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

			Too Quiet Below

---

	1. Basic Information

* Quest Name : Too Quiet Below
* Quest Type : Investigation / Exploration / Environmental Discovery
* Quest Giver : Carler Pincher
* Location : The Watcher’s Perch → Cliffside paths above western approach routes (leading toward The Shattered Rampart)
* Recommended Level : 53–59
* Party Size : Solo
* Repeatable : No

---

	2. Narrative Context

	Carler Pincher detects an inconsistency in Forsaken patrol behavior.
	A section of routine movement along the western cliff approaches has become unusually silent. Patrol timing no longer aligns with previously recorded cycles.
	This is not random.
	Something has changed in the terrain or in Forsaken movement routes.
	Carler suspects a structural failure or hidden route alteration that could explain the shift — potentially even a previously unknown approach path toward Fort 
Mirath.
	He sends the player to investigate directly.

---

### 3. Quest Objective

	Primary Objective :
* Investigate the marked cliffside anomaly location

	Secondary Objectives :
* Identify cause of patrol disruption
* Locate and document structural change in terrain
* Avoid direct engagement with Forsaken units when possible

	Final Objective :
* Report findings to Carler Pincher

---

	4. Player Tasks (Mechanical Flow)

1. Player travels from Watcher’s Perch to a marked cliffside observation route
2. Area contains :
	* Reduced patrol density (intentional "too quiet" design state)
	* Partial visibility zones with irregular patrol gaps
3. Player must :
	* Explore cliffside terrain carefully
	* Identify environmental anomaly :
		* Collapsed wall segment
		* Broken rampart extension
		* Fallen debris bridge or newly exposed passage
4. Once anomaly is discovered :
	* Interaction triggers "Route Discovery" event
	* Map updates with new possible approach line toward fort
5. Player returns to Carler Pincher

---

	5. Core Mechanics Used

	This quest reinforces and expands :
* Dynamic patrol density changes (environment reacts to structural shifts)
* Exploration-based progression without combat requirement
* Environmental storytelling through terrain collapse
* Natural transition from reconnaissance POI to structural POI

	Key design principle :

> Silence in a patrol system is not safety — it is information.

---

	6. Environmental & AI Interaction

	This quest is built around a patrol gap anomaly system :
* Forsaken patrols avoid or reroute around damaged terrain
* Reduced patrol frequency in affected area creates misleading "safe zone”
* AI does not directly explain the change — players must infer cause

	Weather integration :

* Fog :
	* Makes anomaly harder to visually confirm
	* Increases risk of accidental patrol encounter
* Clear weather :
	* Easier structural visibility
	* Higher chance of being spotted from distant cliff patrols

---

	7. Discovery Element (Key Moment)

	At the anomaly site, players discover :
* A collapsed rampart extension or broken defensive wall section
* This creates a natural transition path downward toward "The Shattered Rampart POI"
* The route appears unstable but usable for traversal or infiltration

	This is the first quest that directly bridges :

> Watcher’s Perch → Shattered Rampart → Fort Mirath outer structure

---

	8. Failure Conditions

* Death → resets to last checkpoint (Watcher’s Perch)
* Leaving area → resets investigation progress
* Ignoring anomaly and returning early → Carler rejects report (quest incomplete)
* Triggering heavy patrol alert → increased enemy presence in follow-up attempt

---

	9. Completion Condition

	Quest completes when :
* Structural anomaly is identified and documented
* Player returns to Carler Pincher with confirmed explanation or evidence of route change

---

	10. Rewards

* High experience reward (exploration milestone tier)
* Unlocks The Shattered Rampart traversal route officially
* Improves Fort Mirath approach map accuracy
* Unlocks final reconnaissance quest in Watcher’s Perch chain

---

	11. Carler Pincher Dialogue

	On Accept :

> "Something changed down there… and I don’t like unexplained silence."
> "Go find out what broke the rhythm."

	At Discovery :

> "So that’s it… the structure failed there."
> "Or they *wanted* it to look like it failed..."

	On Completion :

> "That path wasn’t on any map I’ve seen."
> "Which means either we missed it… or they hid it well."

> "Either way, it leads somewhere important."

-------------------------------------------------------------------------------------------------------------------------------------------------------------------

			If I Disappear...

---

	1. Basic Information

* Quest Name : If I Disappear…
* Quest Type : Escort / Delivery / Information Safeguard / Risk-based Interaction
* Quest Giver : Carler Pincher
* Location : The Watcher’s Perch → Hidden cliffside crevice storage points, Ashen Cliffs Island
* Recommended Level : 54–60
* Party Size : Solo
* Repeatable : No

---

	2. Narrative Context

	Carler Pincher has begun to recognize a growing risk.
	The Forsaken presence around Fort Mirath is no longer static — patrol adjustments, supply movements, and surveillance shifts suggest increasing awareness of an
external observer.
	Carler anticipates that one day, his position at The Watcher’s Perch may be compromised.
	To prevent the loss of critical intelligence, he prepares contingency records — fragmented notes containing everything he has gathered so far.
	These records must not be found by the Forsaken.
	He entrusts the player with securing them.

---

	3. Quest Objective

	Primary Objective :
* Retrieve Carler Pincher’s sealed intelligence notes
* Hide them in a designated cliffside crevice storage point

	Secondary Objectives :
* Avoid detection during transport
* Do not lose or destroy the notes

	Final Objective :
* Return to Carler Pincher after successful concealment

---

	4. Player Tasks (Mechanical Flow)

1. Player receives "Carler’s Intelligence Notes Item"
	* Physical quest object (carried state)
2. While carrying notes :
	* Player movement is normal, but :
		* Slight detection risk increase (due to carrying identifiable item)
3. Player must travel to a marked cliffside crevice location :
	* Hidden rock formation below Watcher’s Perch observation paths
4. At crevice : 
	* Player performs "Hide Intelligence" interaction
	* Notes are placed into secure environmental cache
5. After placement :
	* Player must return to Carler Pincher for confirmation

---

	5. Core Mechanics Used

	This quest reinforces and expands :
* Item-based risk delivery (persistent quest object handling)
* Non-combat tension through vulnerability state
* Environmental hiding mechanics (world persistence concept)
* Emotional narrative reinforcement through NPC dependency

	Key design principle :

> Information is a physical risk — not just a reward.

---

	6. Environmental & AI Interaction

	While carrying the notes :
* Forsaken patrols may react slightly more aggressively if player is exposed for long durations
* Detection remains normal — but suspicion accumulation is increased
* No special "tracking” mechanics — risk is purely situational and environmental

	At the crevice location :
* Area is low visibility but not safe
* Occasional patrol paths pass nearby
* Fog enhances concealment reliability

	No combat requirement is enforced, but combat remains possible if player is detected.

---

	7. Failure Conditions

* Death while carrying notes → return to Carler, must restart delivery
* Dropping or abandoning notes → quest reset
* Placing notes incorrectly (wrong location) → invalid state, requires correction
* Leaving area before hiding notes → progress reset

---

	8. Completion Condition

	uest completes when :
* Intelligence notes are successfully hidden in designated crevice storage
* Player reports back to Carler Pincher

---

	9. Rewards

* High experience reward (risk-based reconnaissance tier)
* Unlocks "Carler Contingency State Flag" (used for future narrative branching if he is ever removed or captured)
* Unlocks final Watcher’s Perch reconnaissance quest
* Strengthens lore connection between player and Forsaken surveillance escalation

---

	10. Carler Pincher Dialogue

	On Accept :

> "If I don’t make it here one day… these notes must survive longer than I do."
> "Take them. Hide them where they won’t think to look."

	While Carrying Notes :

> "Careful… if they recognize what you’re carrying, you’re already exposed."

	At Hidden Location :

> "Good. Not even I would find this quickly… and that’s the point."

	On Completion :

> "If this place falls silent… at least the truth won’t fall with it."
> "Now we’re prepared for the worst case."

-------------------------------------------------------------------------------------------------------------------------------------------------------------------

			First Step Toward the Fort

---

	1. Basic Information

* Quest Name : First Step Toward the Fort
* Quest Type : Reconnaissance / Decision-Based Observation / Environmental Planning
* Quest Giver : Carler Pincher
* Location : Watcher’s Perch → Northern Cliffs overviewing Fort Mirath approaches, Ashen Cliffs Island
* Recommended Level : 55–60
* Party Size : Solo
* Repeatable : No

---

	2. Narrative Context

	Carler Pincher has now gathered enough intelligence to move beyond passive observation.
	The patrol routes are mapped. The blind spots are identified. The cannon positions are known. The supply movement routes are partially confirmed.

	What remains is the final step  :
* Understanding how to enter Fort Mirath itself.
* Carler no longer asks the player to simply observe — he asks them to decide.
* This is the first moment where reconnaissance turns into tactical planning.

---

	3. Quest Objective

	Primary Objective :
* Observe Fort Mirath under two conditions:

  * Fog / reduced visibility state
  * Clear weather / full visibility state

	Secondary Objective :
* Identify safest approach route based on environmental conditions
* Compare :
	* Cliffside infiltration paths
	* Waterway access routes
	* Shattered Rampart entry possibilities

	Final Objective :
* Return to Carler Pincher with a recommended infiltration plan

---

	4. Player Tasks (Mechanical Flow)

1. Player travels to Watcher’s Perch observation platform
2. Quest activates **dual observation phase system :
	* Phase A: Fog / low visibility condition
	* Phase B: Clear / high visibility condition
3. At each phase :
	* Player interacts with "Observe Fort" points
	* Fort structure highlights dynamically:
		* Patrol density zones
		* Cannon coverage influence
		* Movement corridors
		* Vertical entry points
4. Player must evaluate:
	* Which approach route is safest in each condition
	* Which route offers highest stealth efficiency
5. Final interaction:
	* Player submits chosen infiltration strategy to Carler

---

	5. Core Mechanics Used

	This quest finalizes integration of all Watcher’s Perch systems :
* Weather & Fog Integration (visibility vs detection tradeoff)
* Line-of-Sight mechanics
* Patrol density mapping
* Vertical Fortress navigation preparation
* Environmental decision-making over combat

	Key design principle :

> The player is no longer learning the fortress — they are choosing how to break it.

---

	6. Environmental & AI Interaction

	This quest dynamically reacts to world conditions :

	Fog / Rain State :
* Reduced fortress visibility
* Lower detection accuracy from watchtowers
* Increased stealth route viability
* Slight unpredictability in patrol sightlines

	Clear Weather State :
* Full fortress visibility
* Maximum cannon and tower detection range
* Higher risk during any visible approach route
* More accurate route planning data

	Enemy behavior remains passive:
* No direct escalation
* Patrols continue normal cycles
* Emphasis is on interpretation, not combat

---

	7. Failure Conditions

* Death → resets current observation phase
* Leaving area → resets full progress
* Failing to complete both weather observations → incomplete report (Carler refuses approval)
* Random guessing without observation → quest completes but locks optimal infiltration bonus

---

	8. Completion Condition

	Quest completes when :
* Player has observed both fog and clear weather conditions
* Player submits a final recommended infiltration route
* Carler confirms readiness for next phase (Fort Mirath infiltration arc)

---

	9. Rewards

* High experience reward (major reconnaissance milestone)
* Unlocks "Fort Mirath Infiltration Preparation Flag"
* Enables transition into :
	* Shattered Rampart traversal chain
	* Fort Mirath entry planning quests
* Grants strategic world map update (full reconnaissance overlay for this POI chain)

---

	10. Carler Pincher Dialogue

	On Accept :

> "Now we stop guessing… and start planning."
> "Show me the fort in both faces — fog and clarity."

	During Observation (Fog) :

> "Good… now remember this version of the world. It lies to you."

	**During Observation (Clear) :

> "That’s the truth of it. Every gun. Every eye. Every path."

	On Submission :

> "So that’s your answer..."
> "I agree. That’s the only route that makes sense… given what we know."

> "If you survive this… Fort Mirath will not remain a mystery for long."

---

