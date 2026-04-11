			Ruined Temple
			
	This dungeon is located on "Arliton" island, that is part of "Middlean Islands".
	
	Consist in 7 floors. Floors are regions of this dungeon. the only region that can be considered big is the "side floor" and "6th Floor".
	
		Floor 1 — The Outer Containment Hall

---

	Section 1 — Design Description

	Players enter into a massive rectangular stone hall.

	This is clearly not a temple room. It looks like :
* Thick stone walls reinforced with metal ribs
* Rusted chains hanging from ceiling beams
* Old broken ballista mechanisms on the sides
* Cracked stone tiles with small patches of moss and roots pushing through
* Very dim lighting from old wall torches (some extinguished)

	At the far end of the hall is a gigantic reinforced stone door with locking mechanisms and 4 chain anchors attached to it.

	The room is symmetrical :

```
Entrance
   ↓
Main Hall (large open area with pillars)
   ↓
Locked Reinforced Door (to Floor 2)
```

Pillars provide line-of-sight breaks. Some are broken.

This room immediately tells players:

> Humans built this to hold something.

---

	Section 2 — Requirements to Advance

	The reinforced door is held shut by "4 Chain Lock Mechanisms" .
	Each mechanism is located in a corner of the hall, attached to the chains that bind the door.

	Players must :
1. Find and activate all "4 Chain Lock Mechanisms"
2. Each mechanism is guarded by enemies
3. When activated, the chain retracts slightly from the door
4. When all 4 are released, the door slowly opens

	There is no puzzle here — this is intentional. It teaches exploration of the room.

---

	Section 3 — Mechanics on This Floor

	These mechanics are light introduction only.

	* Prison Awareness

* Some enemies are dormant statues until players approach
* Teaches players that environment matters

	* Early Root Presence

* Small moss patches on floor
* Root-Born monsters regenerate while standing on them
* If pulled away → they are much weaker

This subtly introduces the "roots" concept from the ritual without being obvious.

	* Light Interaction (Very Soft)

* Areas near torches: enemies slightly weaker
* Dark corners: enemies slightly stronger

Not enough to be mandatory — just noticeable for observant players.

---

	Section 4 — Monster Ecosystem

	This floor uses mostly "Ancient Prison Remnants" and a little "Root-Born".

	Normal Monsters : 

| Monster             | Origin    | Notes                   |
| ------------------- | --------- | ----------------------- |
| Temple Guardian     | Prison    | Patrols central hall    |
| Rusted Sentinel     | Prison    | Near pillars            |
| Chain Warden        | Prison    | Guards chain mechanisms |
| Rootbound Strangler | Root-Born | Near moss areas         |
| Fungal Crawler      | Root-Born | Roams in small groups   |

	Rare Monsters : 

| Monster         | Origin    | Notes                               |
| --------------- | --------- | ----------------------------------- |
| Iron Inquisitor | Prison    | Near one random chain lock          |
| Bloom Herald    | Root-Born | If present, buffs root mobs heavily |

	Elite : 

| Monster                 | Origin | Notes                      |
| ----------------------- | ------ | -------------------------- |
| Warden of the Labyrinth | Prison | Patrols entire hall slowly |

This elite teaches players early that patrolling elites exist.

---

		How Players Finish the Floor

	Players explore the hall, fight through packs, and activate the 4 chain locks.

	When the final chain retracts :
* Loud stone grinding sound
* Dust falls from ceiling
* Door opens slowly

	They proceed to "Floor 2".

--------------------------------------------------------------------------------------------------------------------------------------------------------------------
	
		Floor 2 — The Idol Antechamber

---

	Section 1 — Design Description

	After passing the reinforced door from Floor 1, players enter a narrower but taller stone chamber.
	This area feels less like a prison hall and more like a ritual containment space built by humans after the dragon was imprisoned.

	Visual elements :
* A large stone "Idol Statue" embedded into the left wall, covered in cracked seals and roots
* Ancient chains hanging from ceiling beams
* Broken cages and old military supply crates
* Moss and roots far more visible than on Floor 1
* Dim torchlight mixed with faint green bioluminescent spores in the air
* Two exits :
	* Main sealed door forward (to Floor 3)
	* Stone gate near the Idol (sealed) → leads to Side Floor if unsealed

	This room immediately suggests :

> This is where humans tried to reinforce the prison with rituals.

---

	Section 2 — Requirements to Advance

	Players now have two choices.

	✅ Choice 1 — Continue to Floor 3

	To open the main door, players must :
* Defeat enemies in the room until they collect "4 Idol Seal Fragments"
* Use fragments on the central locking mechanism of the main door
* Door opens once all fragments are placed

	✅ Choice 2 — Unbreak the Idol Seal (Side Floor Access)

Players may instead interact with the "Idol Statue".
Doing so consumes the fragments to unbreak the seal on the side gate.
This opens access to the "Side Floor".

> Important : Players cannot do both with the same fragments. They must choose.

	This creates a meaningful decision.

---

		Side Floor — The Annex of Stirr

---

	Section 1 — Design Description

	Players enter a large circular central room.
	From this room, 8 corridors lead to 8 outer rooms, forming a wheel-like structure.

	In the center stands : "Spirit of Stirr"

	Inactive until the group leader interacts.
	This is an ancient human spirit — one of the prison defenders.

---

	Section 2 — Requirements / Objective

	After activation, Stirr speaks to the party : 
	
<Message> : "Welcome warriors, arriving here i can offer my services but only if you kill all those evil creatures that long time ago they put me down after an exhausting fight. Me and my comrades tried to keep them back in this annexe chambers preventing them to escape in the temple to create more chaos. Please warriors, avenge my men and I and i will be very grateful with you using my magic that is still with me after those centuries and keep me alive as a spirit."

...

<Message> : "Collect "Piece of Broken Steel" and "Piece of Clean Crystal" from the monsters and put them on my statue. Once a stack of 100x is collected, i can offer you 10x keys for each warrior that helped. Also keep in mind, that i can only keep you all in here for about 60 minutes, before i must rest."

...

<Message> : "Don't you worries, collecting "Esence of Accuracy" from the archers, you can increase the duration of this time, once you add one by one to my statue. But don't be too greedy, those essences have a low chance to drop, and one represent only 1 minute added to my time here. A maximum of 4 hours is my capacity to stay around as a spirit before i am send back to rest, probably this time forever. So good luck my warriors !!!"
		

	Objective :
* Players must collect from monsters :
	* "Piece of Broken Steel"
	* "Piece of Clean Crystal"

	Bringing 100 of each to the statue rewards :

> 10 Keys per player

	This can be repeated as long as Stirr remains active.

---

	Section 3 — Mechanics

	Time Limit Mechanic

* Stirr can remain for 60 minutes
* Players can extend time by adding "Essence of Accuracy"
* 1 Essence = +1 minute
* Cap: 4 hours

	Timer visible under minimap.

	When time ends :
* Stirr shouts across the temple
* Shockwave kills all monsters in the "Side Floor"
* Screen trembles
* Stirr vanishes

---

	Creature Behavior

	This annex contains "Vampiric Undead" — remnants of those who died defending the prison.

	Spawn rules based on distance from center :

| Creature                     | Behavior                                                                |
| ---------------------------- | ----------------------------------------------------------------------- |
| Central Room — Rank 3 melee  | Ignore ACC, Bleed, Stun                                                 |
| Outer Rooms — Archers        | Ignore ACC, high attack speed, Stun, Slow, spawn every 20s              |
| Outer Rooms — Tank Creatures | Very high resistances, AoE skills, spawn every 5s, drop 2x Broken Steel |
| Spirit Creatures             | Random spawns, heal tanks, high AoE damage, drop 2x Clean Crystal       |

	Special Mechanic — "Ancestral Spirit Leader"

	Sometimes when a Spirit dies :
* It transforms into "Ancestral Spirit Leader" .

	This elite :
* Cannot be killed normally
* Must be stunned
* Then killed with fire damage

	This ties beautifully into Veylthara’s fire origin lore.

---

	Section 4 — Monster Ecosystem

	This area uses a special sub-ecosystem :
* Undead prison defenders corrupted over time.

| Monster                 | Role              |
| ----------------------- | ----------------- |
| Fallen Defender         | Rank 3 melee      |
| Cursed Archer           | Ranged control    |
| Armored Husk            | Tank              |
| Wandering Spirit        | Support / healer  |
| Ancestral Spirit Leader | Conditional elite |

---

		How Players Leave

Players may leave anytime and return to Floor 2.
This is a farming / reward / optional challenge floor.

---

		How Floor 2 Is Finished

	If players ignore the Idol :
* Collect 4 Seal Fragments
* Open main door
* Proceed to Floor 3

	If players do Side Floor :
* When they return, they must again gather fragments to open the main door

	So Side Floor is a detour, not a bypass.

---

		Design Intent

	Floor 2 introduces :
* Player choice
* First real root/spore presence
* First lore-heavy human defense area
* Optional high-reward challenge
* First time players encounter unusual kill conditions (fire on stunned)

	This prepares players mentally for later floors.

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

		Floor 3 — The Overgrown Passage

---

	Section 1 — Design Description 

	As the stone door of Floor 2 closes behind the party, the air changes immediately. The smell of rust and old stone is replaced by a humid, organic heaviness. 
The corridor ahead is no longer cleanly carved by human hands. The walls, once straight and reinforced with metal ribs, are now split by thick roots that have 
forced their way through centuries of stone. Some of these roots pulse faintly, as if something alive moves within them.
	The passage slopes gently downward, forming a long, winding hallway rather than a chamber. Parts of the ceiling have collapsed and faint green light filters 
through cracks where spores drift lazily in the air. Old torches are still mounted on the walls, but many are extinguished, and in the darker sections the corridor 
feels narrower, almost claustrophobic.
	Occasionally, the path widens into small natural pockets where the roots have completely overtaken the architecture, forming grotesque mixtures of stone and 
organic growth. In these pockets, the floor is soft with moss and fungal spread, and the silence is broken only by subtle wet sounds, as if the walls themselves are
breathing.
	Far ahead, barely visible through the dimness, stands another reinforced door — but unlike the previous ones,this one is partially swallowed by roots and vines.
It looks as if the dungeon itself is trying to reclaim it.

	This is the first place where players feel :

> They are no longer in a human prison.
> They are walking through something that has grown inside it.

---

	Section 2 — Requirements to Advance

	The door at the end of the passage is completely entangled in massive living roots.
	Players cannot interact with it.
	To free the door, they must destroy three "Root Hearts" located in the widened organic pockets along the corridor.
	Each "Root Heart" is a large pulsating mass attached to walls and floor, guarded by creatures.

	When a "Root Heart" is destroyed :
* Nearby roots wither and retract slightly
* The corridor becomes easier to traverse
* Light from ceiling cracks becomes stronger in that area

	After all three are destroyed, the roots retract from the final door, allowing players to open it and proceed to Floor 4.

---

	Section 3 — Mechanics

	This floor introduces players fully to the Root-Born influence of "Harbinger".
	The moss and fungal spread on the ground are no longer cosmetic. Creatures standing on these areas regenerate at a visible rate, and fights become noticeably 
harder if players remain inside these patches. Pulling enemies away from the growth makes them far easier to defeat.
	Spores floating in the air slowly build a light poison effect on players who stay too long in the widened pockets. It is not deadly, but it pressures the group 
to keep moving rather than fighting in place.
	In darker sections of the corridor, creatures are more aggressive and detect players from farther away. In the few places where light comes from the cracked 
ceiling, enemies behave more sluggishly and their regeneration is weaker.
	Nothing here is explained to the players, but observant groups will start understanding that positioning matters.

---

	Section 4 — Monster Ecosystem

	This floor is dominated by Root-Born Creatures.

	Normal Monsters : 

| Monster             | Notes                           |
| ------------------- | ------------------------------- |
| Rootbound Strangler | Often found on moss patches     |
| Fungal Crawler      | Large groups in narrow passages |
| Vine Lasher         | Mid-corridor ambushers          |
| Rotwood Stalker     | Emerges near Root Hearts        |
| Mossback Brute      | Guards widened pockets          |

	Rare Monsters : 

| Monster          | Notes                                      |
| ---------------- | ------------------------------------------ |
| Bloom Herald     | Near one Root Heart, massively buffs regen |
| Mycelium Watcher | Uses spore bursts to reduce visibility     |

	Elite : 

| Monster           | Notes                         |
| ----------------- | ----------------------------- |
| Grove Abomination | Guards one of the Root Hearts |

---

		How Players Finish the Floor

	Players progress through the corridor, discover the widened pockets, destroy the three "Root Hearts", and watch the roots retract from the final door.
	They proceed to "Floor 4".

---

		Design Intent Recap

	Floor 3 teaches players :
* Fighting location matters
* Roots and spores are dangerous environments
* Light vs darkness begins to feel meaningful
* The prison is being consumed from within


--------------------------------------------------------------------------------------------------------------------------------------------------------------------
	
		Floor 4 — The Chamber of Hushed Memory

---

	Section 1 — Design Description

	The door from Floor 3 opens into a vast circular hall so unnaturally still that the party hears their own armor shifting as if it were thunder. The air is dry 
here, preserved, untouched by the roots that consumed the previous floor. The stone is smooth, polished, and engraved with ancient symbols that spiral toward the 
center of the chamber like a ritual diagram.
	Tall, slender pillars rise toward a domed ceiling lost in shadow. Between these pillars hang enormous stone chimes and suspended plates of carved metal, all 
perfectly still. Long, tattered banners hang from above, unmoving despite the subtle currents of air. The floor is covered in fine dust, undisturbed for ages.
	At the center of the room stands a wide circular platform with a dormant mechanism built into it — rings of stone etched with runes that resemble sound waves 
frozen in time.
	Around the perimeter of the chamber are four sealed alcoves, each closed by a wall of translucent stone that faintly vibrates, as if containing something behind
it.
	There are no roots here. No spores. No life.
	Only silence so heavy it feels intentional.
	And as the party steps further in, a low, almost imperceptible hum begins — not from the room, but from within their own ears.

---

	Section 2 — Requirements to Advance

	The exit to Floor 5 is hidden beneath the central platform and will only reveal itself when the chamber’s "Resonance Mechanism" is correctly activated.

	To activate it, players must :
1. Open the four sealed alcoves around the chamber.
2. Inside each alcove is a "Resonant Relic".
3. Each relic emits a unique tone when interacted with.
4. Players must carry these relics to the central platform and place them in the correct sequence around the runic rings.

	The correct order is not given.

	It must be deduced from :
* Wall engravings
* Sound patterns
* Environmental clues
* Trial and error

	Placing relics in the wrong order awakens hostile manifestations and resets part of the puzzle.
	Only when the correct harmonic sequence is achieved does the platform descend, revealing the path forward.
	This process takes time, observation, and coordination.

---

	Section 3 — Mechanics

	This floor introduces a mechanic never seen before in the dungeon :
* Sound is a gameplay element

	Every action players take produces noise :
* Running
* Fighting
* Casting
* Breaking objects

	The more noise generated, the more the chamber reacts.
	The hanging stone chimes begin to vibrate. The dust on the floor starts shifting. The hum in the players’ ears grows louder.

	If noise exceeds certain thresholds :
* Invisible entities begin stalking the party
* Players start receiving “Disorientation” effects
* Shadows move between pillars

	Conversely, when the party moves slowly, fights carefully, and avoids unnecessary actions, the chamber becomes calmer and safer.
	Inside the alcoves, the sound sensitivity is extreme. Loud combat inside them will awaken what is sealed within prematurely.
	The relic tones are subtle. To hear them clearly, players must reduce all other noise in the room.

	This teaches players to :

> Slow down.
> Move deliberately.
> Fight quietly.

---

	Section 4 — Monster Ecosystem

	This floor contains very few monsters — but they are memorable.

	Normal Monsters : 

| Monster           | Notes                                    |
| ----------------- | ---------------------------------------- |
| Hushed Warden     | Patrols between pillars, reacts to noise |
| Resonant Fragment | Appears when relics are mishandled       |
| Silent Observer   | Invisible unless players make noise      |

	Rare Monsters : 

| Monster       | Notes                                                 |
| ------------- | ----------------------------------------------------- |
| Echo Manifest | Spawns if noise threshold is exceeded repeatedly      |
| Dust Revenant | Forms from disturbed floor dust during chaotic fights |

	Elite Monster : 

| Monster             | Notes                                                                                   |
| ------------------- | --------------------------------------------------------------------------------------- |
| The Echo of Silence | Appears after two relics are placed incorrectly or if players are too loud for too long |

	"The Echo of Silence" does not patrol.

	It materializes without warning between the pillars when summoned by player behavior.

	It does not roar.
	It does not cast flashy spells.

	It removes sound from the room entirely.
	When it appears, all audio cues stop, and players must fight relying only on visual awareness.
	Defeating it calms the chamber significantly and makes the puzzle easier to complete.

---

		How Players Finish the Floor

	Players carefully explore, open alcoves, retrieve relics, deduce the harmonic order, manage their noise, and activate the central mechanism.
	The platform descends silently, revealing a spiral path to Floor 5.

---

		Design Intent Recap

	Floor 4 teaches players :
* Noise matters
* Patience over speed
* Observation over brute force
* Environmental storytelling through mechanics
* Introduction of a lore Elite in a memorable, non-standard way

	This is a thinking floor, not a fighting one.


--------------------------------------------------------------------------------------------------------------------------------------------------------------------
	
		Floor 5 — The Shifting Trial

---

	Section 1 — Design Description

	The descent from Floor 4 ends into a structure that does not feel like part of the temple at all. The architecture here is fragmented, asymmetrical, as if 
pieces of different chambers were torn from elsewhere and stitched together into a single unstable space.
	The floor is broken into large stone platforms floating above a dark abyss. Some are connected by narrow bridges, others by broken stairways, and some seem 
reachable only by moving mechanisms that slide slowly into place and then retract again.
	Ancient devices, pillars with rotating rings, sealed braziers, cracked mirrors, dormant statues, and ritual altars are scattered across these platforms with no 
apparent order. Faint light pulses through cracks in the stone like a heartbeat.

	The air here feels restless.
	Nothing is quiet. Nothing is stable.
	As soon as the party spreads through the first platform, glowing runes ignite across the stone, and a deep voice echoes through the entire structure.

---

	Section 2 — Requirements to Advance

	This floor does not have one requirement.
	It has randomized trials.

	At the start of the floor, the dungeon selects between 2 and 5 random tasks from a pool of possible challenges. These tasks must all be completed before the 
sealed gate to Floor 6 opens.

	Players are informed immediately.

---

	Initial Announcement

> <Dungeon Message>
> "This chamber does not test strength. It tests reaction. Adapt, or be buried in the attempt."

	Moments later, glowing symbols appear in the air, listing the selected trials for this run.

	Example :

> <Dungeon Message> — Active Trials (3/5)
> "Restore the Four Braziers of Light"
> "Activate the Rotating Pillars in Harmonic Alignment"
> "Survive the Trial of the Moving Bridges (Timed)"

	Each run shows a different combination.

---

	Section 3 — The Trial Pool (Random Mechanics)

	Below are the possible tasks the floor can choose from.

---

	Trial 1 — Restore the Four Braziers of Light

	Four extinguished braziers exist on distant platforms.
	Players must find "Embers" dropped by monsters and carry them to the braziers.

	While carrying an Ember :
* Player movement is slowed
* Player takes increased damage
* Ember extinguishes if the player takes too much damage

> <Dungeon Message>
> "The braziers remember the light. Feed them, before the dark consumes the embers."

---

	Trial 2 — Harmonic Pillars Alignment

	Several stone pillars with rotating rings must be aligned to match the symbols shown on nearby walls.
	Monsters constantly interfere by rotating them randomly during combat.

> <Dungeon Message>
> "Order was once present here. Restore it, even as chaos fights back."

---

	Trial 3 — The Moving Bridges (TIMED)

	Bridges between platforms begin shifting rapidly.

	Players must cross and activate three distant levers within 4 minutes.

	If players fail the timer, one of two penalties is randomly chosen :

1. Endless Waves Penalty

> <Dungeon Message>
> "You were too slow. The chamber awakens its guardians."

	Groups of monsters begin spawning every 15–30 seconds until all floor tasks are completed.

	OR

2. Boss Awareness Penalty

> <Dungeon Message>
> "You were noticed. The one below prepares for you."

	The final boss of the dungeon gains +10% power permanently for this run.

---

	Trial 4 — The Mirror Fracture

	Cracked mirrors around the platforms spawn hostile reflections of players.
	These reflections must be defeated near the mirrors they came from.

> <Dungeon Message>
> "Face yourselves, or be followed by what you refuse to see."

---

	Trial 5 — The Ancient Mechanism

	Players must gather scattered mechanical pieces dropped by monsters and assemble them into a dormant device while under constant attack.

> <Dungeon Message>
> "What was broken must work again, even as the chamber resists."

---

	Trial 6 — The Silent Statues

	Statues awaken if players fight too close to them. Players must lure monsters away and keep combat distant while activating runes near the statues.

> <Dungeon Message>
> "Not every enemy must be fought. Some must be avoided."

---

	Section 4 — Core Floor Mechanic (Always Active)

	Relentless Creatures

	All monsters on this floor have a 10–15% chance upon death to :

> Reassemble themselves after 6 seconds and return to combat.

	This can happen multiple times.
	Players cannot predict which enemies will rise again, creating constant pressure and chaos during the trials.

---

	Section 5 — Monster Ecosystem

	This floor has high monster density and constant interference.

| Monster          | Behavior                                |
| ---------------- | --------------------------------------- |
| Platform Stalker | Pushes players toward edges             |
| Rune Disturber   | Interferes with pillar alignment        |
| Ember Thief      | Targets players carrying embers         |
| Bridge Watcher   | Ranged attackers during bridge trial    |
| Reflection Spawn | Created by mirrors                      |
| Mechanic Ravager | Drops device parts                      |
| Awakened Statue  | Activates if players fight near statues |

	All monsters :
✔ Chance to resurrect
✔ Aggressive pathing
✔ Designed to interrupt tasks, not just fight

---

		How Players Finish the Floor

	Players must complete all randomly assigned trials while handling :
* Resurrection monsters
* Possible endless waves
* Environmental hazards
* Coordination under pressure

	Only after the last task is complete does the massive sealed gate grind open, revealing the path to Floor 6.

--------------------------------------------------------------------------------------------------------------------------------------------------------------------
	
			Floor 6  
	
		Scenario I — The Collapse of the Triune Seal

---

		I. Design Description (Narrative)

	The stairway from Floor 5 opens into a vast, square chamber whose architecture feels older than the rest of the temple. The walls are carved with scenes of 
chained dragons, shattered armies, and three towering pillars binding something unseen.
	The chamber is silent at first.
	In the exact center stands a small circular stone platform etched with ancient sigils. Around it, slightly elevated, lies a larger circular ring of polished 
white stone where a shaft of pale light descends from an opening in the ceiling. Dust particles drift within the beam like suspended ash.
	Surrounding the inner circle, three colossal pillars rise in a triangular formation. Their surfaces are cracked, pulsing faintly with green-veined corruption — 
spores leak from their fractures and drift lazily through the air.

	On the far wall stands the sealed gate to Floor 7.
	To the left and right walls, two narrow passageways are hidden behind semi-concealed stone mini-gates — barely noticeable unless approached.
	The moment the entire party steps into the chamber, the doors behind them seal shut.
	
	A low tremor runs through the room.
	Then a voice whispers through the walls.

> <Dungeon Message>
> "Break the unborn… or awaken the chained."

---

		II. Primary Objective

	Players are immediately given a choice — destroy the Dragon Eggs in time, or face what the pillars were meant to contain.

---

	Egg Phase (Timed — 60 seconds)

	Two hidden side chambers (left and right mini-gates) contain corrupted dragon eggs.
	Players must split and destroy both eggs within 60 seconds.

	The eggs :
* Cannot be damaged until players destroy the magical barrier in front of them.
* Periodically release poison mist (light damage, stacking).
* Pulse darkness that reduces vision slightly (Archaeology Ritual tie-in).

> <Dungeon Message>
> "Two hearts beat behind stone. Silence them together."

	If BOTH eggs are destroyed within 60 seconds :
* The three central pillars crack violently and collapse inward.
* The chamber shakes.
* The real trial begins.

	If players FAIL the timer :
* The pillars remain intact.
* The chamber darkens.
* The elite awakens.

---

		III - A. Success Path — Pillars Collapse

---

	Environmental Shift : 
* The central small circle cracks.
* Green spores erupt from the fallen pillars.
* Light from the ceiling flickers.
* The room becomes a survival arena.

---

	Undead Assault Phase

	Initial Spawn :
* 10 groups of 3 undead monsters appear immediately.

	Ongoing Spawns :
* Every 8–15 seconds → 5 new groups spawn.
* Continues until objective is completed.

---

		Additional Environmental Threat — Corrupted Thorn Growths

	Around the outer edge of the large circular ring, corrupted plant entities begin to sprout.
	These are highly dangerous.

	Thorn Growth Behavior :
* Deal continuous poison damage.
* Can "Root" players.
* Upon death → explode in AoE.
* Spread 3–8 sprouts randomly.
* Sprouts may grow into adult Thorn Growths rapidly with a lower chance.

	If left uncontrolled, plant numbers can spiral.
	This ties to the spore mechanic of the Ritual — spores intensify plant growth if too many undead die nearby (secondary interaction).

---

	Strategy Layer : 
* Lure undead away from plants.
* Control growth zones.
* Use high ACC or sustained healing to endure.

	This is not meant to be brute-forced.

---

		Completion Condition

	Undead drop 4 different Sigils :
* Sigil of Bone
* Sigil of Ash
* Sigil of Silence
* Sigil of Binding

	Only the party leader can collect them.
	
	Once all 4 are in leader inventory :
* Right-clicking any Sigil fuses them into a "Sigil Key".
* Right-clicking Sigil Key :
	* All undead instantly vanish.
	* Plants wither.
	* Door to Floor 7 opens.

> <Dungeon Message>
> "The seal reforms. Leave — before it seals again."

	Players have 10 seconds to pass the gate.

	Failure to exit in time :
* Gate slams shut.
* Floor resets.
* Party is trapped and must restart the scenario.

---

	III - B. Failure Path — The Pillars Hold

	If eggs are NOT destroyed in time :
* The three pillars flare with dark energy.
* The central small circle erupts.
* An elite emerges.

---

		Elite: The Bound Chain Reaver

	An enormous undead juggernaut wrapped in spectral chains.
	Its body is armored in blackened bone and rusted iron fused together. Its face is featureless except for hollow light leaking from inside.

---

		Arena Mechanic — The Light Control

	The room design now becomes critical.

	Two circular zones exist :
* Inner small circle (spawn location)
* Outer large illuminated ring (light zone)

	The light from the ceiling weakens the elite.

	Players have a UI element :
* A horizontal bar:
* Black (left) → White (right)

	This represents how much of the elite’s body is within the light radius.

* More white → elite loses tankiness
* More black → elite regains armor and absorbs more HP

---

	Chain Reaver Abilities : 
* "Chain Drag" : Pulls random players toward him.
* "Life Absorption" : Drains HP and applies "Marked by Chains".
* Marks stack.
* Every 5 stacks → AoE explosion from that player.
* Explosion spreads stacks to nearby allies.

	Forces spacing discipline.

---

	Archaeology Ritual Integration : 
* When elite stands outside light → darkness intensifies → players’ ACC slightly reduced.
* When inside light → elite loses resistance to earthly damage types.
* Noise from chain slams causes brief disorientation pulses.
* Spores leak slowly from pillars, applying minor poison stacks over time.

	These are secondary pressures, not primary mechanics.

---

		Completion

	Upon defeating the Chain Reaver :
* Pillars crumble.
* Door unlocks.
* Same 10-second escape window applies.

	Failure to pass = trapped.

---

		IV. Monster Ecosystem

	Undead Variants (Success Path) : 
* Bone Ravagers (melee swarmers)
* Grave Archers (ranged)
* Rotting Knights (semi-tank)
* Sigil Bearers (higher HP)

	Thorn Growths : 
* Rooting flora
* Explosive death
* Rapid reproduction

	Elite (Failure Path) : 
* The Bound Chain Reaver
* Tank archetype
* Stack mechanic punisher

---

		Design Philosophy of Scenario I

	This scenario tests :
* Split-team coordination
* Speed and execution
* Spatial awareness
* Light management
* Stack control discipline
* Environmental containment

	Failure does not end the run — it changes the challenge.

------------------------------------------------------------------------------

			Floor 6 
			
		Scenario II — The Leaders of the Unending Wave

---

		I. Design Description (Narrative)

	The passage from Floor 5 opens into the same immense square chamber, yet this time the room feels strangely emptier. The three pillars seen in other 
manifestations of this place are absent. The floor is flat stone, scarred by ancient burn marks and deep impact craters as if something colossal once battled here.
	In the middle lies the familiar small circular platform and around it the larger circular ring where pale light falls from the broken ceiling above.
	The side mini-gates on the left and right walls are sealed by translucent magical barriers. Thin beams of light leak through the cracks of those barriers, 
stretching across the floor like prison bars.
	The far gate to Floor 7 stands closed.

	The moment all party members step onto the small circular platform, the light above intensifies briefly… then fades to a dim glow.
	The barriers shatter.
	The floor begins to tremble.

> <Dungeon Message>
> "You stand where armies fell. Now endure what they could not."

	Undead begin crawling out from cracks in the walls, the floor, and the darkness of the corners.
	The trial begins.

---

		II. Primary Mechanic — The Wave System

	This floor becomes a sustained survival and priority-target encounter.
	Undead monsters begin spawning in waves.

* A new wave spawns every 60–90 seconds.
* Each wave contains numerous undead minions.
* Every wave has a Leader.

	These Leaders are the true objective of the floor.

---

		III. The Leaders (Core Mechanic)

	Leaders are intelligent berserker-type undead.
	They do not behave like normal monsters.
	When their HP reaches 1%, they do not die.

	Instead, they grab a nearby undead minion and devour it, instantly :
* Restoring to full HP
* Increasing all stats by 3% per devoured minion

	If players ignore the Leader and clear minions first, the Leader becomes exponentially harder to kill.

> <Dungeon Message>
> "The commander feeds on the fallen!"

	This forces players to focus Leaders first every wave.

---

		IV. Catastrophic Condition — Too Many Leaders Alive

	If at any moment more than 5 Leaders are alive simultaneously:

	Everything freezes.
	All minions stop moving.
	Players cannot move.
	Only the Leaders can move.
	They slowly walk toward one another.
	One Leader begins devouring the others.
	A horrific fusion takes place.
	They merge into a new entity.

---

		The Abomination Commander

	A massive undead construct combining :
* Tank resilience
* Vampiric regeneration
* God-type resistances

	It possesses three devastating AoE abilities.
	Each AoE shows a ground preview 2 seconds before impact.
	At this moment, a 20-minute countdown appears at the top center of the screen.

> <Dungeon Message>
> "You allowed the generals to unite. Now face the consequence."

	If this timer reaches 0 :
* Everything freezes again.
* The Abomination slowly walks to each player.
* Players are "consumed".
* Party is teleported to dungeon entrance.

	This is a hard failure.

---

		V. Light Interaction (Archaeology Ritual Integration)

	The beams of light from the side mini-gates stretch across parts of the floor.

	These beams :
* Damage undead minions over time.
* Do not affect Leaders.
* Do not affect the Abomination.

	This creates tactical zones where players can thin waves faster.
	Dark zones away from light slightly reduce players’ ACC (darkness effect from Ritual).
	Noise from constant undead spawning creates subtle disorientation pulses over time.

---

		VI. Completion Condition

	To complete the floor, players must :
* Kill a specific number of Leaders (hidden counter).
* Prevent Leader accumulation beyond 5.

	Once enough Leaders are defeated properly :
* All spawning stops.
* Remaining undead crumble.
* The far gate to Floor 7 opens.

> <Dungeon Message>
> "The chain of command is broken. Advance."

	Players again have 10 seconds to pass the gate.
	Failure to do so traps them on this floor.

---

		VII. Monster Ecosystem

	Undead Minions : 
* Fast melee swarmers
* Ranged bone throwers
* Heavy rotting guards

	Leaders : 
* Berserker intelligent type
* Devour mechanic
* Scaling threat if mismanaged

	Abomination Commander (Failure State) : 
* Fusion of Leaders
* AoE devastation
* 20-minute hard wipe timer

---

		Design Intent of Scenario II

	This scenario tests :
* Target priority discipline
* Wave control
* Awareness of leader count
* Positioning in light zones
* Sustained endurance over time
* Punishment for losing tempo

	Unlike Scenario I, this is not about speed.
	It is about control.

------------------------------------------------------------------------------

			Floor 6 

		Scenario III — The Heart That Should Not Beat

---

		I. Design Description

	The passage opens into the now-familiar square chamber, but this time the room feels oppressive, as if the air itself is heavier. The stone floor is darker 
here, veined with black lines that converge toward the center like roots feeding a buried heart.
	In the exact middle of the room rests a massive, irregular rock formation, taller than any player and wide enough to block sight across the chamber. It pulses 
slowly with a dim, dark light from within its cracks — like a heart beating under stone skin.
	The small inner circular platform is still present around the rock, and the larger illuminated ring surrounds it, though the light from the ceiling flickers 
weakly, as if struggling to remain lit.

	The side mini-gates are sealed. The far gate to Floor 7 is shut.
	The moment all party members approach the central platform, faint lines of light begin to crawl across the floor between them.

> <Dungeon Message>
> "Stand as one… or be broken alone."

	The trial begins.

---

		II. Primary Mechanic — The Living Link

	The rock cannot be damaged.
	It is protected by a magical barrier tied directly to player positioning.
	
	Players must stand equidistant from :
* The rock
* Each other

	When positioned correctly, beams of light connect each player, forming a luminous circle around the rock.
	The beams grow brighter and thicker over a few seconds.

	Then—
A massive pulse of light erupts from the rock, expanding outward until it hits the walls.
The shield shatters.
The undead awaken.

---

		III. Wave System

	Undead waves begin spawning every 30 seconds.

	Wave Structure : 
* Wave 1 : 20 undead, no leader
* Wave 2 : 80 undead, 1 Leader
* Wave 3 : 50 undead, 1 Leader, 1 Shaman
* Wave 4+ : Same as Wave 3, every 60 seconds

	This continues until the rock is destroyed.

---

		IV. The Rock UI — Shared Objective

	A UI element appears on screen :
* A horizontal HP bar for the Rock.
* Green → Yellow → Red (below 11%)

	This is the true objective of the floor.
	The rock loses HP only when Leaders are killed.
	Each Leader death removes 5–7% of the Rock’s HP.

---

		V. Priority Targets

	Leaders : 
* High durability
* Upon death → damage Rock HP

	Shamans (Critical Threat) : 
* Shamans must be killed immediately.

	They :
* Heal all nearby undead (visible radius)
* Heal Leaders
* Heal the Rock itself
* Reduce players’ movement and attack speed by 3% per shaman nearby (stackable)

	If multiple shamans live, players become extremely slow and overwhelmed.

---

		VI. Escalation Phase — Rock Reaches Red

	When Rock HP reaches the red zone :
* All new waves stop spawning.
* Remaining Leaders gain +5% stats if still alive.
* Shamans, if alive, begin channeling directly into the Rock.

	The Rock begins pulsing damaging waves every 30 seconds :
* Damage ignores ACC and evasion.
* Also regenerates 1% HP every pulse.

	This creates a soft enrage.
	Players must finish remaining Leaders and Shamans quickly.

---

		VII. Failure Condition

	If players lose control in this final phase:
* The Rock emits a deep black pulse.
* All players become petrified.

	After 5 seconds :
* Party is teleported to dungeon entrance.
* All armor and weapons drop to 0 durability.

	A severe punishment.

---

		VIII. Archaeology Ritual Integration

	This scenario heavily uses Ritual elements as environmental pressure :
* Darkness pulses from the rock reduce visibility slightly.
* Light link mechanic mirrors Ritual seal alignment.
* Noise from pulses causes brief disorientation.
* Spores seep from cracks as waves progress, applying mild poison stacks.

	Again — secondary, immersive, not dominant.

---

		IX. Completion Condition

	When Rock HP reaches 0 :
* The rock shatters into fragments.
* All undead collapse instantly.
* The gate to Floor 7 unseals.

> <Dungeon Message>
> "The false heart is silenced. Move — before it beats again."

	Players have 10 seconds to pass through.
	Failure to pass = trapped on the floor.

---

		X. Monster Ecosystem

	Undead Minions : 
* Standard melee swarmers
* Ranged attackers
* Durable guards

	Leaders : 
* High HP priority targets
* Direct link to Rock HP

	Shamans : 
* Healers
* Player debuffers
* Rock sustainers

---

		Design Intent of Scenario III

	This scenario tests :
* Team positioning precision
* Target priority under pressure
* Spatial awareness
* Sustained wave control
* Handling soft enrage mechanics
* Coordinated execution in final phase

	This is the most coordination-heavy version of Floor 6.

-------------------------------------------------------------------------------------------------------------------------------------------------------------------
	
			Floor 7
		The Antechamber of Withered Rebirth — Presence of the Harbinger of Forgotten Roots

---

		I. Design Description

	The last stairs of the ruined temple descend into a corridor unlike any other seen so far. The air here is heavier, humid, and carries the faint odor of rot 
and old spores. The stone walls are narrower, forcing the party to move in a stretched formation rather than as a compact group.
	The corridor does not run straight. It bends unnaturally to the left, then to the right, forming the shape of a long, distorted "S". The design feels 
intentional — built to separate, to divide sight, to prevent those inside from seeing what lies ahead or behind.
	Dim green veins run through the walls and floor, pulsing slowly like roots beneath skin.
	As the party advances through the first curve, they reach a wider circular chamber carved into the middle of the corridor. Suspended above the ground floats a 
grotesque object: an enormous "Necrotic Egg", made of bone fragments fused together by dark magic. Veins of shadow energy crawl across its shell, and every few 
seconds it emits a low pulse that echoes down both sides of the S-shaped corridor.
	Undead crawl out from cracks in the walls near the egg and begin wandering toward both directions of the corridor.
	Beyond the second curve, barely visible in the distance, a tall figure floats above the ground, holding a crooked staff made from shattered wood and bone 
shards bound together by roots.
	He does not approach.
	He waits.

> <Dungeon Message>
> "The mind feeds on the heart. Break the heart… and the mind shall falter."

	This is where the party realizes they cannot remain together.

---

		II. The Mandatory Split

	The layout itself forces the group to divide naturally into two teams.
	One team remains in the "Egg Chamber".
	The other team advances beyond the second curve toward the floating necromancer : "Harbinger of Forgotten Roots"

	Line of sight between the two teams is impossible because of the S-shaped structure. They must rely on timing, awareness, and communication rather than vision.

---

		III. The Necrotic Egg — Central Mechanic

	The Egg cannot be destroyed immediately.
	It constantly regenerates and pulses dark energy through the corridors.

	Its purposes are threefold :
* It continuously spawns undead toward both teams.
* It channels energy directly to the "Harbinger".
* It acts as the key to weakening him.

	The Egg has visible breakpoints at 75% / 50% / 25% HP.

	Every time players in the Egg chamber push its HP past one of these thresholds :

> <Dungeon Message (visible to entire party)>
> "The heart trembles. The Harbinger weakens!"

	At that exact moment, the Harbinger loses his protective shield for 20 seconds.
	This creates an attack window for the second team.

	If the Egg is ignored :
* The Harbinger becomes heavily shielded.
* He takes minimal damage.
* He summons stronger undead.

	But there is no instant punishment — only slowed progress.

---

		IV. Team A — The Egg Breakers

	Players stationed here must :
* Continuously damage the Egg.
* Control the undead that spawn nearby.
* Watch for the breakpoints to assist Team B.

	Environmental pressure here :
* Spores leak from the Egg, lightly poisoning players over time.
* Darkness pulses reduce visibility slightly.
* Undead spawn frequency slowly increases the longer the Egg stays above a threshold.

	This area is about endurance and awareness.

---

		V. Team B — Confronting the Harbinger

	Beyond the second curve, the Harbinger floats calmly, staff planted into the ground, channeling energy from the Egg through invisible veins running across the 
floor.
	He is not immediately aggressive.
	He begins attacking only when approached.

	His abilities are those of a true necromancer :
* Summons undead warriors from the corridor walls.
* Creates zones of decay on the floor.
* Traps players briefly in bone prisons.
* Channels beams of dark energy toward random players.

	But the most important detail :
* He is nearly invulnerable until the Egg is weakened.

	This forces Team B to call for assistance from Team A.

---

		VI. Shared Mechanic — Soul Awareness

	Periodically, the Harbinger links himself to a random player from each team with a thin line of dark energy.
	
	If those two players move too far from their current positions :
* They suffer increasing damage.

	This subtly reminds both teams that they are still part of the same fight, even when separated.

---

		VII. The Escape of the Harbinger

	When the Harbinger reaches around 6% HP, he stops fighting.
	He rises into the air as roots wrap around his body and dissolve into shadow.

> <Dungeon Message>
> "She wakes… and you walk willingly into her prison."

	He vanishes through the ceiling in a spiral of dark smoke.
	He is not defeated.
	He retreats to the chamber where the dragoness is imprisoned.

--------------------------------------------------------------------------------

			Floor 7 
		
		The Antechamber of Withered Rebirth — Collapse of the Heart • Awakening of the Path

---

	The moment "Harbinger of Forgotten Roots" vanishes, the entire corridor changes.

	The green veins inside the walls begin to pulse rapidly. The "Necrotic Egg" in the center chamber starts cracking violently, releasing bursts of dark spores 
that roll down both sides of the S-shaped corridor like fog.
	Undead begin emerging faster now — not because of a mechanic, but because the chamber is losing control.

	The players feel it :
* This place was never meant to hold two powers at once.
* The Egg was stabilizing the Harbinger.
* The Harbinger was stabilizing the Egg.

	Now, both are failing.

---

		I. The Final Phase — The Egg Must Fall

	The Egg no longer has breakpoints.
	It must be destroyed completely.

> <Dungeon Message>
> "The heart has lost its master. Destroy it before the rot consumes the corridor."

	Both teams must now regroup in the central chamber.
	What was previously a split encounter becomes a survival burn phase.

	What changes now :
* Undead spawn from both ends of the corridor and rush toward the Egg room.
* Spores fill the chamber, applying stacking poison if players remain stationary.
* The Egg emits shockwaves every 12 seconds, forcing movement.

	This is no longer a tactical phase.
	This is controlled chaos.

---

		II. The Resurrection Trait of the Undead

	All monsters on this floor possess a passive trait :

> Upon death, they have *~12% chance to reassemble themselves after 6 seconds.

	When this happens :

> <Dungeon Message (local)>
> "The corpse twitches… roots pull it back together!"

	This makes ignoring the adds impossible. Corpses left unattended may rise again behind the group.

---

		III. The Egg’s Death

	When the Egg reaches 0 HP, it does not explode.
	It implodes.
	All lights in the corridor extinguish for 3 full seconds.
	Total darkness.
	Total silence.

	Then — A deep, distant dragon roar echoes from somewhere far below the temple.
	Not above.
	Below.

	The stone floor in the Egg chamber begins to glow with ancient runes.
	A teleportation sigil activates beneath the party.

> <Dungeon Message>
> "Her prison weakens. You are being drawn to her."

	Players are not given time to prepare.
	They are forcibly teleported.

---

		IV. What This Floor Achieved (Design Intention)

	This floor was not a gate.
	Not a puzzle.
	Not a test of speed.

	It was a test of coordination under separation.

	It taught the party :
* To operate without line of sight.
* To trust timing cues instead of visuals.
* To manage pressure from multiple directions.
* To regroup under chaos.
* To understand that enemies here do not always die when defeated.

	And most importantly…
	That the Harbinger is not dead.
	He is waiting for them in the next chamber.

---

		V. Transition to the Dragoness Chamber

	Players arrive in a side stone room, not a grand arena.
	The air is dry here. Still. Ancient.
	There is only one large sealed stone door ahead of them, engraved with roots and dragon wings intertwined.

	From behind it, they hear :
* Slow breathing.
* Heavy chains dragging across stone.
* And faint whispers in an unknown tongue.

	The fight with the dragoness has not started.
	But she already knows they are here.
	And she is not alone.


-------------------------------------------------------------------------------------------------------------------------------------------------------------------
		
			Boss Chamber — Architectural & Environmental Design

	When the party is force-teleported from Floor 7, they do not arrive into a classic arena.
	They arrive into a prison hall.
	A place not built for battle… but for containment.

---

		Overall Shape

	The chamber is a long rectangular hall, wider than it is tall, carved from black volcanic stone. The ceiling is arched and cracked, allowing faint shafts of 
pale light to descend in diagonal angles.
	At the far opposite end of the room, chained against a colossal obsidian structure, rests the dragoness :

		Dragoness Boss

	She is not free.
	She is bound by ancient runic chains embedded into the walls and floor. Her wings are partially spread but restrained. She cannot approach the players during 
Stage 1.

	Instead… she watches.
	And from time to time, she lifts her head and exhales long cones of fire across sections of the battlefield without moving from her prison.
	This makes the room feel alive from the first second.

---

		The Battlefield Layout (players’ side)

	The players arrive on a raised stone platform at the opposite end of the chamber.
	From this platform, three wide stone ramps descend into the main floor area.

	This gives :
* verticality
* line of sight to eggs
* tactical retreat point for healer/ranged
* clear view of dragon fire breath lanes

---

		Egg Field — Main Combat Zone

	The central 70% of the room is a scattered field of dragon nests.
	These are not placed symmetrically.
	They are placed organically, as if laid over centuries.
	At any time, 6 "RED Dragon Eggs" are active on the field.
	They are large (player-height), pulsating, organic, and slightly translucent.
	Each egg sits in a shallow bone-nest, making them clearly visible from distance.
	Players can move freely between them.
	This entire zone is where Stage 1 happens.

---

		Environmental Hazards from the Dragoness

	Even though she is chained, the Dragoness affects the room :
* Every 25–40 seconds, she uses one of these without warning :
	* Long straight fire breath across the field (players must sidestep)
	* Arcing fire lob that leaves burning ground for 6 seconds
	* Roar that causes small tremors (minor stagger)

	This ensures players cannot stand still and tunnel eggs.

---

		Lighting & Atmosphere

	The chamber lighting is dim red-orange from lava cracks in the walls.
	But the eggs emit a soft internal glow.
	This glow becomes important for the mechanics further.

	Because : 
* At ~30% HP, each egg begins to emit a faint colored aura :
	* Very pale cyan shimmer → will become "Light Blue"
	* Very soft amber pulse → will become "Orange"

	This is subtle but readable for attentive players.
	This is the signal to "STOP DPS" that egg and move away.
	This creates skill expression and prevents accidental over-spawning.

---

		Side Walls

	The side walls are lined with :
* broken pillars
* ancient dragon bones
* collapsed cages
* blackened ritual markings

	These are flavor now… but will matter in Stage 2 with the crystals.

---

		Room Size Feeling

	This room is intentionally large enough that :
* Tank can pull undead far from eggs
* Ranged can reposition safely
* Players can avoid fire lanes
* Eggs never feel cramped

	It feels like a war field, not an arena.

---

		What players understand immediately upon arrival

	They see :
* The chained Dragoness at the far end
* 6 red pulsating eggs in the field
* Open space to move
* No Harbinger yet
* A battlefield that suggests objective control, not boss rush

	And before anything starts, the screen displays :

> <Dungeon Message>
> "The Mother is bound… but her brood is not."

	This sets the tone for Stage 1 perfectly.

---------------------------------------------------------------------------

			Stage 1 — The Brood Must Not Hatch

	The moment the party steps down from the stone platform into the egg field, the chamber comes alive.
	A low vibration travels through the floor. Dust falls from the ceiling. The Dragoness raises her head and releases a distant, echoing growl that rolls through 
the entire hall like thunder trapped in stone.
	The fight does not begin with monsters.
	It begins with a choice.
	Six red eggs pulse slowly across the battlefield.
	They are harmless… for now.
	Then the first message appears.

> <Dungeon Message>
> "Destroy the brood before it awakens."

	A hidden timer starts.
	Exactly 3 minutes from now, a new wave of 6 eggs will replace any that were destroyed.
	This cycle will repeat until 3 Orange Egg Rounds are successfully completed.

---

		The Egg Mechanic (core of Stage 1)

	All eggs begin as "RED".
	Players can freely attack any egg.
	When an egg reaches 70% HP, nothing happens.

	When an egg reaches ~30% HP, it begins to emit a very faint colored aura :
* Pale cyan shimmer → this egg will become "Light Blue"
* Soft amber pulse → this egg will become "Orange"

	This is the visual warning for players to stop attacking if they want control.
	At 49% HP, the egg is stable.
	At 50% HP, the transformation happens instantly.
	If players fail to notice the color hint and push it past 50% carelessly, they trigger consequences they did not plan for.
	This is where coordination matters.

---

		Light Blue Egg (mistake / overflow mechanic)

	The Light Blue egg instantly shatters when reaching 50%.

	It releases:
* 2 Dragon-Lizard creatures

	If players already failed to clear previous eggs before the next 3-minute cycle, a Light Blue egg instead releases :
* 1 Elite Dragonoid (biped bone-flesh creature)

	These creatures :
* dash to targets
* apply Knockaway CC
* pressure the healer and ranged

	They are not lethal alone.
	They are lethal when accumulated.
	This is the punishment for poor egg management.

---

		Orange Egg (progress mechanic)

	Orange eggs do not break.
	They remain attackable.
	These are the correct targets.

	When destroyed, an Orange egg :
* Reduces the Dragoness HP directly
* Counts toward the "Round Completion"

	But destroying an Orange egg also triggers :
* Spawn of Undead defenders from the ground
* 1 Berserker Lizard that spreads fire and poison

	So progress always creates pressure.

---

		Undead Spawn Pressure

	Each Orange egg destroyed spawns :
* 6–10 Undead creatures
* 1 Berserker Lizard

	These undead do not stop spawning if players rush eggs blindly.
	They accumulate and must be managed by tank and off-DPS.
	This forces a split of roles naturally.

---

		Dragoness Interference

	Throughout all this, the Dragoness continues to :
* Breathe fire lanes across the field
* Launch fire arcs that leave burning zones
* Roar causing tremors

	She is not idle.
	She is controlling space while players try to manage eggs.

---

		The Intended Strategy Players Discover

	Players learn quickly :
* Look for 30% aura
* Ignore Light Blue eggs
* Focus Orange eggs
* Control undead before next egg cycle
* Avoid creating too many Light Blue breaks

	This becomes a rhythm.
	A dance of discipline.

---

	✅ What is a “Round”

	A round is completed when :
* All Orange eggs from that wave are destroyed.

	After 3 completed Orange Rounds, Stage 1 is complete.
	The egg spawning stops.
	But this is where tension appears…

	Because if players fail to clear eggs before the next 3-minute cycle :
* Eggs overlap
* More Light Blue mistakes happen
* Elite Dragonoids start appearing
* Undead pressure becomes chaotic

	This creates natural difficulty scaling without artificial enrage.

---

		End of Stage 1

	When the third Orange Round is completed and all monsters are killed, the room goes silent.
	The Dragoness stops attacking.
	All remaining eggs wither into ash.

	A message appears :

> <Dungeon Message>
> "The brood is lost… the jailer awakens."

	A 10-second pause begins.
	Players can breathe.
	Heal.
	Reposition.

	Because the Harbinger is about to enter the fight.

--------------------------------------------------------------------------------

		Harbinger Skirmish — "The Wing That Refuses to Fall"

	As the last monsters of Stage 1 die and the eggs stop spawning, an unnatural silence fills the ruined chamber. The dragoness stops breathing fire. The room 
darkens slightly. A low necrotic hum begins to vibrate through the stone floor.
	From the far side of the room, where the dragon initially stood, a tall silhouette slowly rises from a mass of black smoke and drifting ash.

	"Harbinger of Forgotten Roots" has arrived.

	He does not rush the players. He walks forward slowly, dragging his corrupted staff across the stone, leaving a trail of black residue that evaporates into 
fumes. His body is large, cloaked in torn ancient robes, pieces of roots and bones fused into his frame. Green necrotic light pulses inside his chest cavity.
	A 10-second on-screen countdown appears for players to prepare.

	Then the skirmish begins.

---

		Mechanics of the Skirmish

	This is not a boss fight.
	This is a survival + objective phase that determines Stage 2 difficulty.

	Harbinger cannot be killed here. At 6% HP, he vanishes automatically.

		Harbinger Abilities During Skirmish

	He rotates between abilities, forcing movement and awareness :
* Necrotic Fire Blasts shot in lines across the room
* Staff sweeps that knock players down in a cone
* Fear pulses that force repositioning
* Summoning undead that chase random players but do low damage (distraction units)

	He is meant to pressure, not wipe.

---

		The Two Flesh Pillars (Critical Objective)

	Shortly after the skirmish starts, two "Pillars of Corrupted Flesh" erupt from the ground :
* One on the left side wall
* One on the right side wall

	They pulse with red-black energy connected to Harbinger by tendrils of light.
	These pillars must be destroyed.

	Players quickly realize :

> Harbinger is empowered by these pillars.

---

		Outcomes of the Skirmish

	This is where player performance matters.

	✅ If players destroy both pillars : 
* Harbinger shrinks in size
* His aura weakens
* In Stage 2 :
	* He cannot heal the Boss
	* He will sacrifice himself later to protect the Boss
	* Boss deals reduced damage

	This is the best outcome.

---

		If players destroy only one pillar

* Harbinger partially weakens
* In Stage 2 :
	* He will heal the Boss, but slowly
	* Boss damage is slightly reduced

	This is the medium outcome.

---

	❌ If players destroy no pillars

* Harbinger remains massive and empowered
* In Stage 2 :
	* He actively heals the Boss
	* He spawns additional undead
	* Boss deals maximum damage

	This is the hard mode outcome.

---

		End of Skirmish

	When Harbinger reaches ~6% HP:
	He lifts his staff and slams it into the ground.
	A shockwave knocks all players back.
	The room goes dark for a split second.
	He disappears into black smoke.
	A deep dragon roar shakes the entire chamber.
	A 10-second pause begins.

	Players see the dragoness climb down from her far position…
	And Stage 2 begins.

-------------------------------------------------------------------------------------

			Stage 2 — "When the Dragon Walks"

	The 10-second silence ends with a deafening impact.
	The dragoness drops from the far ledge into the center of the chamber. Stone cracks beneath her weight. Dust rises in a ring around her body.
	At the exact same time, on the opposite side of the room — where she stood during Stage 1 — "Harbinger of Forgotten Roots" reappears, smaller or larger 
depending on the Skirmish outcome.
	They have switched places.
	Players are now caught between the two wings of the imprisoned dragon.
	A deep dungeon message appears:

> <Dungeon Message> : "The prison breaks. The wings reunite."

---

		Immediate Opening Mechanics (first 10 seconds)

	The dragoness performs two unavoidable opening actions to force positioning :
1. She swings her tail in a full circular motion around her.
	* Players must either be outside the radius or jump (only if players have learned the passive ability "Double Jump") to avoid being knocked down.
2. She turns toward a random direction and exhales a wide cone of flaming poison breath.
	* Leaves a burning-toxic ground zone for several seconds.

	This forces the party to split and reposition instantly.

---

		The Required Split — Two Fronts

	From this point forward, the fight cannot be done as a single group.

	The party must split :
* Tank + part of DPS + healer → Dragon
* Remaining DPS → Harbinger

	Because :

> The dungeon cannot be completed while Harbinger lives.

	Harbinger must die first.
	But the dragon cannot be ignored.

---

		Harbinger Mechanics in Stage 2

	Harbinger is weaker than the dragon, but extremely dangerous strategically.
	He is a mana-based entity.

		Mana Sources

	Harbinger gains mana from :
* Corpses of monsters
* Corpses of players
* Players using "Instant Resurrection"

	This is the key mechanic.

---

		Instant Resurrection Mechanic (Very Important)

	When a player dies :
* They may resurrect instantly without penalty at the original teleport location.

	But if they do :

> Their entire mana pool is transferred to Harbinger.

* Player respawns with full mana and 5% HP
* Harbinger receives that mana

	If Harbinger’s mana fills :
* He casts powerful abilities and heals himself.

	This creates a tactical decision :

> Sometimes it is better to wait for a revive than to instantly resurrect.

---

		Harbinger Self-Heal Trigger

	Every time he loses 3% HP*, if he has mana, he heals back that 3%.
	So poor mana management makes him almost unkillable.

---

		Dragon Mechanics During This Time

	While Harbinger is being fought, the dragon :
* Periodically jumps and slams the ground → knockback
* Applies stacking poison burns
* For every 100 monsters killed (from earlier or spawned), she gains :
	* 100,000 damage reduction for 20 seconds
	* Performs a massive ground shake

	This ties Stage 1 performance into Stage 2 difficulty.

---

		The Blue Crystals — Hidden Win Condition

	Around the walls are 8 "Blue Crystals".

	They slowly charge when :
* Monsters die nearby
* Players die nearby

	When fully charged, they emit light blue flames.

	If destroyed while fully charged :
* They deal **5–7% of the Dragon’s total HP** as true damage.

	If destroyed early:
* The dragon absorbs the energy instead.
* This rewards patience and awareness.
* These crystals are the intended way to make the fight manageable.

---

		Priority Logic Players Must Discover

1. Manage deaths and resurrection (don’t feed Harbinger mana)
2. Kill Harbinger first
3. Charge and break crystals at the right time
4. Survive dragon mechanics while split

---

		When Harbinger Dies

	Depending on Skirmish outcome :
* If weakened → he sacrifices himself to shield the dragon briefly
* If medium → he dies normally
* If empowered → he explodes into undead that must be cleared

	Only after Harbinger is dead…
	The final phase of the dragon begins.

------------------------------------------------------------------------------

			inal Phase — "The Poison That Learned to Breathe"

	When "Harbinger of Forgotten Roots" dies, his body does not collapse. It disintegrates into spores and drifting ash that slowly rise toward the ceiling and are
inhaled by the dragoness.
	A deep tremor passes through the room.

> <Dungeon Message> : "She breathes what remains of her wing."

	The dragon does not enrage in rage.
	She becomes focused.

	This phase is less chaotic — but far more lethal if players ignore mechanics.

	All monster spawns stop.
	No more external pressure.
	Only positioning, awareness, and control.

---

		Arena Transformation

	Cracks open across the floor from where Harbinger died toward the dragon.
	Green poisonous vapors begin leaking from these cracks, slowly spreading across parts of the room in irregular shapes.
	Safe zones now change constantly.

	The fight becomes about reading the ground.

---

		Core Mechanic — Rotating Safe Zones

	Every ~25 seconds, the dragon inhales deeply and exhales a thin green mist across the arena.
	This mist does not damage instantly.
	After 3 seconds, every area touched by the mist becomes a toxic field for 15 seconds.

	Players must reposition before it activates.
	This repeats the Darkness/Light awareness theme from earlier floors without explicitly stating it.

---

		Tail Judgment (Reused Skill, Deadlier Now)

	She periodically performs the circular tail sweep.

	But now :
* If a player is hit, they are thrown into a toxic zone.
* This punishes poor positioning harshly.

---

		The Crystal Interaction — Final Use

	Any remaining "Blue Crystals" still intact can be used now.

	But differently :
* When destroyed in this phase, they create a clean zone where poison cannot spread for 20 seconds.

	This becomes crucial for survival and DPS windows.
	Players who saved crystals are rewarded.

---

		Poison Mark Mechanic

	Her bites and breath now apply "Poison Marks".
	Every stack increases damage taken slightly.

	At 10 stacks:
* The player releases a poison burst around them.
* This forces spacing between players.
* Healer awareness becomes critical here.

---

		The Final 15% HP — "Palloc’s Blood Awakens"

	At 15% HP, the true nature of her resurrection appears.
	Her poison turns darker. Almost black.
	She stops using breath.

	She starts using earth-infused attacks :
* Slamming claws into the ground creating shockwaves
* Causing falling rocks from the ceiling
* Breaking parts of the arena into permanent toxic pits

	This is where her resistance to earth and fire lore becomes visible mechanically.
	She is slower — but massively impactful.

---

		The Intended Strategy

	Players now must :
* Stay spread
* Read the ground constantly
* Use crystal safe zones wisely
* Avoid tail knock into poison
* Manage poison stacks
* Burn her down during safe windows

	No more splitting.
	No more adds.
	Just execution.

---

		The Killing Moment

	When she reaches 1% HP, she does not die immediately.
	She tries to crawl toward the far wall — toward where she once stood in Stage 1.
	Players have 10 seconds to finish her.

	If they fail :
* She regains 5% HP and the final phase repeats.

	If they succeed :
* She collapses mid-movement.

---

		Death Scene

	The poison stops flowing.
	Cracks seal.
	The chamber becomes quiet.
	Her massive body slowly petrifies into stone.

> <Dungeon Message> : "The prison holds… one last time."

	A teleport portal appears where Harbinger first died.
	The dungeon is complete.

---

	This final phase ties together :
* Positioning learned on Floor 4
* Awareness learned on Floor 3
* Resource patience from Stage 2
* Environmental reading from the entire dungeon

	And it ends not in chaos…
…but in mastery.
