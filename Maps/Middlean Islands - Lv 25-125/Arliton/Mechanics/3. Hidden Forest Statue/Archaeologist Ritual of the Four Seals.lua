			Archaeologist Ritual of the Four Seals

---

		PHASE 1 — Core System Architecture

	*(Pure mechanics, no lore, no locations yet)*

This defines what the game must track and validate for a "Ritual Run".

---

	1. What is a Ritual Run

	A Ritual Run is a sequence where :
* One Archaeologist leads the ritual
* Party follows through 4 seal interactions
* Players who stay near the Archaeologist during the ritual become "Ritual Marked"
* Completion grants those players a pending dungeon modifier

	This is not a quest, not a buff, not a POI interaction.
	It is a temporary player state.

---

	2. Ritual Run — Start Conditions

	A Ritual Run can start only when :
* Player has Archaeology profession
* Player is in a party
* Party has 2–8 members
* Archaeologist has remaining daily Ritual Charges (max 3/day)
* No other Ritual Run is active for this Archaeologist

	When interacting with the first seal :

```
Create RitualInstanceID
Record ArchaeologistID
Set RitualStep = 1
```

No party snapshot is stored.

---

	3. Ritual Participation Rule (critical)

	During each of the 4 seal interactions :

> Any party member that is :

* In the same party
* Within Archaeologist radar radius

is registered as "RitualParticipant" for this RitualInstance.

	Stored dynamically as :

```
RitualParticipants = [PlayerID1, PlayerID2, PlayerID3, ...]
```

	This list is built progressively during the ritual.
	Players far away are not registered.

---

	4. Ritual Progress Tracking

```
RitualStep = 1 → 2 → 3 → 4 → Completed
```

	Only the Archaeologist can trigger progression.

	Other party members must be :
* In party
* Inside Archaeologist radius during interactions

---

	5. Completion State (very important)

	When Step 4 is completed :

```
RitualState = COMPLETED
Activate 2-hour countdown
For each RitualParticipant:
    Apply PendingDungeonModifier(RitualInstanceID)
Consume 1 Ritual Charge from Archaeologist
```

	Still no buff is active.
	Only a pending state on those players.

---

	6. Entering the Dungeon — Validation Check

	When players enter "Ruined Temple", the dungeon checks per player :
* Does player have PendingDungeonModifier?
* Is Archaeologist of that RitualInstance inside the dungeon?
* Is timer < 2 hours?

	If true for that player :

```
Apply WatcherState to that player
```

	If false :

```
No modifier for that player
```

	This is player-based, not party-based.

---

	7. Party Flexibility Rule (corrected)

	The dungeon party can be :
* Same players
* Fewer players
* With replacements
* Different composition

	Only players who :	
* Participated in ritual
* Enter dungeon with the Archaeologist
* Within 2 hours

receive the modifier.

	New or absent players simply don’t get it.

---

	8. What truly breaks the Ritual before dungeon

	The RitualInstance becomes unusable if :
* 2 hours expire before dungeon entry
* The Archaeologist is not present inside the dungeon

	Nothing else breaks it.
	Party changes do not matter.

---

	9. Daily Charges (per Archaeologist)

```
RitualChargesPerDay = 3
Reset at midnight server time
```

	Charge consumed only at completion.

---

	10. Multiple Archaeologists in Same Party

	If party has multiple Archaeologists :
* Each has independent RitualCharges
* After first Ritual is used, another Archaeologist can perform it again
* Same players can be marked again by second Archaeologist

	Encourages dungeon repetition.

---

	11. No Parallel Rituals by Same Archaeologist

	If Archaeologist has an active RitualInstance not completed :

> Cannot start another.

---

	12. Visibility Rules

	Only Archaeologist sees :
* Interact prompts
* Ritual progression
* Text/journal

	Other players see nothing special.

---

	13. What the System Stores (dev view)

```
RitualInstanceID
ArchaeologistID
RitualParticipants[]
RitualStep
RitualState
CompletionTimestamp
ExpiryTimestamp
```

---

	14. What the Dungeon Checks (dev hook)

	On dungeon entry, per player :

```
If PendingDungeonModifier exists
AND ArchaeologistID is inside dungeon
AND Time < ExpiryTimestamp
    Apply WatcherState
```

---

	15. This is NOT a Buff System

	No icons. No aura. No status.
	Hidden dungeon-state toggle per player.

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

		PHASE 2 — The Four Seal Locations (World Design)

	These are small, subtle ruins/statues scattered across "Arliton Island" that form the physical path of the ritual which prepares players for "Ruined Temple".

They are not marked.
They are not obvious.
They are not existing POIs.

	They are archaeology-only discoveries.

---

	1. Hidden Forest Statue — "Seal of Roots" (Starting Point)

	Visual identity : 
* Half-toppled moss statue, looks like a boulder
* Covered in vines and Shadowmoss
* Faint rune lines only visible at night
* Runestone fragments under loose stone

	Why it’s unnoticed : 
* Looks like terrain clutter
* Deep jungle interior
* No reason for normal players to inspect it

	Archaeology interaction : 
* Night-only rune examination
* First readable fragment
* Mentions :
	> "The Heart beneath the roots"
	> "The seals placed where the island breathes"

	Points to next seal

> Mentions light that binds the Sleeper → hint toward Seal of Light.

---

	2. Small Stone Ruin — "Seal of Light"

	Location feel : 
* Small broken stone pillar in a natural jungle clearing where sunlight pierces heavily
* Always well-lit during day
* At night, faint reflective mineral veins glow on the stone

	Visual identity : 
* Looks like a fallen marker stone
* Covered in pale lichen
* One side polished unnaturally smooth

	Why it’s unnoticed : 
* Looks decorative, not interactive
* Players pass through clearing often without attention

	Archaeology interaction : 
* Player traces polished surface
* Reveals carvings about :

	> "Light restrains what darkness feeds"

	Points to next seal : 

> Mentions silence kept the wardens alive → hint toward "Seal of Silence".

---

	3. Rock Formation Near Cliffs/Caves — "Seal of Silence"

	Location feel : 
* Near sea cliffs or cave entrances where ambient sound drops (wind-muffled area)
* Strange natural acoustics

	Visual identity : 
* Pile of flat stones stacked deliberately
* Spiral symbol carved faintly
* Sand-filled carvings

	Why it’s unnoticed : 
* Looks like natural rockfall
* Blends perfectly with terrain

	Archaeology interaction : 
* Clearing sand reveals symbols meaning :

	> "Noise wakes the bound one"

	Points to next seal : 

> Mentions spores used by wardens to see in the dark → hint toward "Seal of Spores".

---

	4. Overgrown Stone Pile in Damp Jungle — "Seal of Spores"

	Location feel : 
* Humid, darker jungle pocket
* Shadowmoss and fungi abundant
* Slight green mist effect at night

	Visual identity : 
* Low circular stone arrangement
* Cracked center stone with moss-filled engravings

	Why it’s unnoticed : 
* Looks like random stone debris
* Hidden by vegetation

	Archaeology interaction : 
* Cleaning moss reveals final writings :
	> "Four seals weaken the Sleeper"
	> "Return to the Watcher when all are known"

	This line subtly points back to the "Hidden Forest Statue" as the ritual completion point (Step 4).

---

	The Physical Ritual Flow

1. Hidden Forest Statue (Roots) → discover Light
2. Seal of Light → discover Silence
3. Seal of Silence → discover Spores
4. Seal of Spores → instruction to return to Statue
5. Return to Statue → Ritual completes

	This creates a loop, not a line.
	Very important for world believability.

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

		PHASE 3 — Archaeologist Journal & Lore Fragments

	Journal category unlocked after first interaction :

	"Watcher Inscriptions"

	Entries unlock in order as seals are examined.

---

	Entry 1 — Seal of Roots (Hidden Forest Statue)

	Journal Title : "The Watcher Beneath the Canopy"

> "The Heart was placed beneath roots where light seldom walks.
> There the Watcher carved the first warning, that the Sleeper feeds where sight is lost.
> The wardens learned quickly — darkness is not absence, but nourishment."

	What this teaches the player : 
* Darkness empowers the dungeon entity
* Fighting in dark areas is bad

	Journal adds clue tag: "Darkness feeds it"

---

	Entry 2 — Seal of Light

	Journal Title : "What the Wardens Discovered"

> "In their fear, the wardens brought the living light into the deep places.
> Flame, glow, reflection — all made the Sleeper recoil.
> Where light stood, the roots withered and the breath of the dark weakened."

	What this teaches the player : 
* Light mechanics weaken boss/minions
* Torches, glow sources, or light zones will matter

	Clue tag: "Light restrains it"

---

	Entry 3 — Seal of Silence

	Journal Title : "The Sound That Woke the Stone"

> "They wrote that the Sleeper does not see as we do.
> It feels the trembling of stone and the violence of sound.
> When the wardens clashed steel and shattered rock, the dark answered in fury."

	What this teaches the player : 
* Excessive AoE / chaotic fighting triggers bad reactions
* Noise/aggro/pacing matters in dungeon

	Clue tag: "Noise angers it"

---

	Entry 4 — Seal of Spores

	Journal Title : "How the Wardens Walked Unseen"

> "To pass the deep corridors, the wardens burned the moss and carried its smoke.
> The spores revealed what the eye could not, and the dark lost its veil.
> Through this, they saw where it spread its breath."

	What this teaches the player : 
* Spores/poison clouds exist in dungeon
* Fire/cleansing/vision mechanics counter it
* Hidden dangers become visible with correct action

	Clue tag: "Spores reveal its breath"

---

	Final Entry — Returning to the Hidden Forest Statue

	When Archaeologist returns after visiting all 3 seals.

	Journal Title : "Ritual of the Four Seals"

> "Four warnings. Four discoveries. Four seals placed where the island breathes.
> The wardens did not build a prison. They built instructions.
> The Sleeper below the stone temple is not invincible — only misunderstood.
>
> Keep the light near.
> Walk without fury.
> Burn what clouds the air.
> Do not fight where the dark is thick.
>
> Do this, and the Watcher will remember you as ally, not intruder."

	This is the Archaeologist’s dungeon guide
	This text literally tells the player how to behave inside the dungeon.

---

	How the Journal System Fills (UI logic)

	After each seal :

```
Journal Updated: Watcher Inscriptions (1/4)
Journal Updated: Watcher Inscriptions (2/4)
Journal Updated: Watcher Inscriptions (3/4)
Journal Updated: Watcher Inscriptions (4/4)
Journal Updated: Ritual of the Four Seals
```

	Only Archaeologist sees this.

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

		PHASE 4 — Dungeon Modifier Specification

---

		Design Principle

	Watcher’s Insight does not make players stronger.

	It makes the dungeon :

> behave closer to how the wardens originally handled it.

Players without the ritual fight the corrupted version.
Players with the ritual fight the contained version.

---

		Activation Condition (from Phase 1)

	Per player, when entering the dungeon :
* Has PendingDungeonModifier
* Archaeologist is inside dungeon
* Within 2 hours

→ Watcher’s Insight activates invisibly.

---

		What Players Visually Notice (very important)

	These are subtle but noticeable differences.

| Element             | Without Ritual | With Watcher’s Insight       |
| ------------------- | -------------- | ---------------------------- |
| Dark areas          | Very dark      | Faint ambient visibility     |
| Light sources       | Cosmetic       | Emit meaningful safe radius  |
| Spore clouds        | Hard to see    | Slight green outline/shimmer |
| Shadow minions      | Spawn abruptly | Brief shimmer before spawn   |
| Certain floor runes | Invisible      | Faint glow                   |

	Players will feel something is different, but won’t see a buff icon.

---

		Mechanical Effects Inside Dungeon

	Darkness Interaction

| Mechanic                    | Normal          | With Watcher’s Insight |
| --------------------------- | --------------- | ---------------------- |
| Boss heals in darkness      | 100% rate       | 60% rate               |
| Minions gain damage in dark | +30%            | +10%                   |
| Player vision in dark       | Reduced heavily | Slightly reduced       |

	Matches Journal : "Darkness feeds it"

---

	Light Interaction

| Mechanic              | Normal        | With Watcher’s Insight                  |
| --------------------- | ------------- | --------------------------------------- |
| Light zones           | Minor comfort | Reduce boss regen entirely while inside |
| Light vs minions      | No effect     | Minions take 15% more damage in light   |
| Carryable light items | Optional      | Create safe zones                       |

Matches: "Light restrains it"

---

	Noise / Aggro Interaction

| Mechanic                | Normal                    | With Watcher’s Insight     |
| ----------------------- | ------------------------- | -------------------------- |
| Large AoE / heavy pulls | Triggers rapid add spawns | Spawn rate reduced by ~40% |
| Boss enrage from chaos  | Fast buildup              | Slower buildup             |

	Matches: "Noise angers it"

---

	Spores / Poison / Vision

| Mechanic       | Normal               | With Watcher’s Insight |
| -------------- | -------------------- | ---------------------- |
| Spore clouds   | Obscure vision fully | Outlined edges visible |
| Poison buildup | Full strength        | 25% slower buildup     |
| Hidden hazards | Invisible            | Slight shimmer         |

Matches: "Spores reveal its breath"

---

	Effect on Final Boss Behavior (future-proofed)

	The boss (Rootbound Warden concept) behaves differently :

| Behavior                | Normal    | With Insight  |
| ----------------------- | --------- | ------------- |
| Darkness phase duration | Long      | Shorter       |
| Shadow add count        | High      | Reduced       |
| Spore phase             | Frequent  | Less frequent |
| Safe light zones        | Few       | More appear   |
| Audio rage trigger      | Sensitive | Forgiving     |

This does not trivialize the fight.
It makes it readable.

---

		Important: This is Per-Player

	If 3 players have Insight and 2 don’t:

* 3 see clearer spores
* 3 have reduced poison
* 2 suffer full effects

Same dungeon. Different experience.
This is very rare and very powerful design.

---

	What this is NOT

* Not damage buff
* Not defense buff
* Not stat increase

	It is environmental understanding made mechanical.

--------------------------------------------------------------------------------------------------------------------------------------------------------------------


		PHASE 5 — Dungeon Integration Hooks (Ruined Temple)

	Goal :

> The dungeon must not care about seals, statues, or archaeology.
> It only cares whether a player enters with "Watcher’s Insight" eligibility.

---

		Core Principle

	The dungeon never checks :
* Locations visited
* Ritual steps
* Party history

	It checks only :

```
Does this player enter with an active PendingDungeonModifier
AND is the Archaeologist tied to that RitualInstance inside?
AND is the timer valid?
```

	If yes → enable "WatcherState" for that player.

---

	1. Hook Point — On Dungeon Entry (per player)

	When a player crosses the dungeon entrance trigger :

```
OnPlayerEnterDungeon(playerID):

    if player.HasPendingDungeonModifier():

        ritualID = player.RitualInstanceID
        archID   = GetArchaeologistID(ritualID)

        if IsPlayerInsideDungeon(archID)
           AND CurrentTime < ritual.ExpiryTimestamp:

               ApplyWatcherInsight(playerID)
        else:
               DoNothing()
```

	This runs per player, not per party.

---

	2. What `ApplyWatcherInsight(player)` does internally

	This does NOT apply a buff.

	It sets internal dungeon flags :

```
player.WatcherState = TRUE
```

	Dungeon systems reference this flag.

---

	3. Systems Inside Dungeon That Read `WatcherState`

	All these mechanics check the flag :

| Dungeon System           | Reads WatcherState? | Effect                      |
| ------------------------ | ------------------- | --------------------------- |
| Darkness healing system  | ✅                   | Reduced values              |
| Light zone behavior      | ✅                   | Enhanced effect             |
| Spore/poison system      | ✅                   | Slower buildup + visibility |
| Hidden hazard visibility | ✅                   | Enabled                     |
| Add spawn from noise     | ✅                   | Reduced rate                |
| Boss behavior controller | ✅                   | Uses Insight version        |

	This keeps the integration modular.

---

	4. No Global Dungeon Mode

	Very important :

There is no :

> "Dungeon is in ritual mode"

	Different players in the same run can have different experiences.

---

	5. Hook Point — Archaeologist Presence Check

	The dungeon continuously validates :

```
If Archaeologist leaves dungeon:
    For all players with ritualID from that Archaeologist:
        player.WatcherState = FALSE
```

	The knowledge leader must be present.

---

	6. Hook Point — Timer Expiry While Inside

	If 2-hour timer expires while inside dungeon :

* Nothing happens.
* WatcherState remains until dungeon exit.
* The timer only matters before entry.

---

	7. Cleanup Hook — On Dungeon Exit

	When player leaves dungeon :

```
Remove PendingDungeonModifier(playerID)
player.WatcherState = FALSE
```

	Ritual is fully consumed.

---

	8. Edge Case — Player Dies / Respawns Inside

	No change. WatcherState persists.

---

	9. Edge Case — Player Joins Dungeon Late

	If they enter after others :

* If they have PendingModifier and Archaeologist inside → they get Insight
* If not → normal experience

---

	10. Resulting Dungeon Behavior Summary

	The dungeon does not know archaeology exists.

	It only reacts to:

> `player.WatcherState == TRUE`

	That is extremely clean for implementation.

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

	
		PHASE 6 — Time, Daily Limits, Multi-Archaeologist Logic

	This phase defines :
* How often it can be done
* How it encourages dungeon repetition
* Why multiple Archaeologists are valuable
* Why players cannot stockpile rituals

---

	1. Ritual Charges Per Archaeologist

	Each player with Archaeology has :

```
RitualCharges = 3 per day
Reset at midnight server time
```

	A charge is consumed only when Ritual Step 4 is completed.
	Not at start.

---

	2. What a Charge Really Represents

	One charge =

> The ability to prepare a group for one “informed” dungeon run.

	Not a buff. Not a quest. A preparation.

---

	3. The 2-Hour Window (very important intent)

	The 2-hour timer exists to prevent this behavior :

> "Let’s do rituals now and run the dungeon tonight."

	It enforces:

> Ritual → Dungeon soon after.

	Timer rules :
* Starts at Ritual completion
* If players enter dungeon at 1:59, it still works
* If 2:01 passes before entry → all PendingModifiers expire

	Timer only matters outside the dungeon.

---

	4. Same Party Can Run Dungeon Many Times

	Nothing limits dungeon entries.
	What limits the "Watcher’s Insight" state is RitualCharges.

	This means:
* Party can spam dungeon
* But only prepared runs are limited

	Very healthy loop.

---

	5. Multiple Archaeologists = More Prepared Runs

	If party has :
* 1 Archaeologist → 3 prepared runs/day
* 2 Archaeologists → 6 prepared runs/day
* 3 Archaeologists → 9 prepared runs/day

	Because Ritual is tied to Archaeologist charges, not party.
	This creates real profession value.

---

	6. Why This Encourages Dungeon Play

	Players will say :

> "We still have 2 Archaeologist rituals left, let’s run it again."

	This is natural encouragement, not a forced lockout.

---

	7. No Stockpiling Possible

	Because :
* Charges are daily
* Timer is 2 hours
* Modifier consumed on dungeon exit

	Players cannot prepare in advance.

---

	8. What Happens at Midnight Reset

	At midnight server time :

```
For each Archaeologist:
    RitualCharges = 3
```

	Active RitualInstances are not refreshed.
	Only charges.

---

	9. If Archaeologist Disconnects After Completion

	No issue.
	As long as Archaeologist is inside dungeon when others enter, it works.
	If not → no WatcherState for anyone.

---

	10. System Outcome

	This phase guarantees :
* No abuse
* No hoarding
* No frustration
* Strong incentive to bring Archaeologists
* Strong incentive to run dungeon multiple times

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

		PHASE 7 — Edge Cases & Exploit Prevention

	Core principle :

> The Ritual belongs to the "Archaeologist" , not the party.
> The Dungeon bonus applies only if all ritual conditions are true at the moment of dungeon entry.

---

	1. Party Member Leaves After Ritual

	Case : Ritual done → 1 member leaves → new player joins.
	Result : ❌ Ritual invalid for the party.

	Reason: RitualInstance stores exact party member IDs at completion.

	On dungeon entry, the check is :

```
CurrentPartyIDs == RitualPartyIDs
```

	Must be exact match.

---

	2. Party Member Replaced

	Same as above.
	Even if replaced by another Archaeologist.

❌ Invalid.

	This prevents selling ritual service.

---

	3. Archaeologist Leaves the Party After Ritual

	Case : Archaeologist completes ritual → leaves party → others go dungeon.

❌ No Watcher’s Insight.

	Rule :

> Archaeologist who consumed the charge must be inside the dungeon at entry.

---

	4. Archaeologist Disconnects

	Two cases :

	A. Disconnect before dungeon entry

❌ Invalid. Same as leaving.

	B. Disconnect after dungeon entry

✅ Valid. WatcherState already applied.

---

	5. Someone Joins Party Late (after ritual)

❌ Ritual invalid.

	Party must be identical.

---

	6. Someone Enters Dungeon Late

	Case : 4 enter → 5th enters 30 seconds later.

❌ That player does NOT receive Watcher’s Insight effects.

	WatcherState is applied at instance creation, not per player.

---

	7. Two Archaeologists Try Ritual at Same Time

	Allowed. Safe.
	Each Archaeologist creates their own RitualInstance with their own charge.

	On dungeon entry :
* System selects one valid "RitualInstance" randomly or by earliest timestamp.

	Consumes only that one.
	Prevents stacking.

---

	8. Attempt to Stack Ritual Buffs

	Impossible because :
* Only one RitualInstance can activate per dungeon entry
* Others remain pending (until used or expired)

---

	9. Archaeologist Completes Ritual Alone, Then Invites Party

❌ Impossible.

	Ritual requires full party present at all 4 seals.

---

	10. Party Splits Up During Ritual

❌ Ritual step does not progress unless all members are nearby.

---

	11. Party Member Dies During Ritual

	No issue. Can be revived. Ritual continues.
	Death does not invalidate.

---

	12. Enter Dungeon at 1:59:59 of Timer

✅ Valid.

	Timer check occurs at dungeon entry.

---

	13. Abuse Attempt: Sell Ritual Runs

	Impossible because :
* Exact party match required
* Archaeologist must be present
* Cannot replace members

---

	14. Server Crash / Restart

RitualInstance stored server-side with timestamp.

Persists safely.

---

	15. Multiple Parties Doing Ritual Simultaneously

No conflict.

RitualInstances are per Archaeologist.

-------------------------------------------------------------------------------------------------------------------------------------------------------------------

		PHASE 8 — How Players Secretly Discover This

	Core rule you wanted :

> ❌ No NPC mentions it
> ❌ No quest points to it
> ❌ No map markers
> ❌ No achievements
> ❌ No UI hints

	This must feel accidental.

---

	1. Why Nobody Tells the Player

	Because in-world, these are :
* Broken statues
* Half-buried ruins
* Overgrown stone altars

	They are environmental clutter to everyone except Archaeologists.
	Other players see: old decoration.

	Only Archaeologists get a faint interaction prompt when very close :

> "Examine weathered runes"

	Nothing else.

---

	2. Why It Looks Meaningless

	Each seal location from Phase 2 is designed to be :
* Off-road
* Not tied to monsters, loot, or quests
* Not along optimal travel paths
* Visually small compared to real POIs

	A player can pass 100 times and never care.
	This is critical.

---

	3. The First Discovery (how it realistically happens)

	The first Archaeologist who finds the "Seal of Roots" will :
* Interact
* Receive journal text
* See a strange rune reference to another place

	They will think :

> "This must be flavor lore."

	Then they accidentally find the second.

	Now curiosity starts.

	By the third, they realize :

> "This is a chain."

	By the fourth, the journal reveals :

> "Ritual of the Four Seals"

	And explicitly mentions the watchers of the temple (Phase 3 journal text).
	This is the moment of realization.

---

	4. Why Community Knowledge Spreads Organically

	Because the benefit is huge inside the dungeon.

	A group will suddenly clear "Ruined Temple" noticeably easier.

	They will ask:

> "Why was this run easier?"

	The Archaeologist will explain.

	Then :

* Guilds tart requiring Archaeologist
* Players ask in chat
* Reddit/forum/Discord posts appear
* You never needed to teach it

	This becomes player-discovered meta.

---

	5. Why It Cannot Be Datamined Easily

	There is :
* No quest ID
* No achievement
* No map marker
* No item
* No buff icon

	Only :

```
PendingDungeonModifier(RitualInstanceID)
```

	Which looks like backend noise unless someone knows what to search for.

---

	6. Why It Feels Like “Ancient Knowledge”

	Because :
* It requires traveling to 4 meaningless places
* Requires a full party
* Requires time
* Requires Archaeology profession
* Requires going to a specific dungeon after

	This is too weird to be accidental.

	Players will assume :

> "This was hidden intentionally."

	And they will be right.

---

	7. Long-Term Effect on the World

	Months later :
* New players are told by veterans
* Some still don’t believe it exists
* Some Archaeologists specialize in guiding parties
* It becomes part of Arliton’s identity

	Not a feature.

	A "legend".

-------------------------------------------------------------------------------------------------------------------------------------------------------------------

		
		PHASE 9 — Seal Placement & Discovery Flow (Dev + Design)

	This phase tells a level designer :

* Roughly where to put the 3 additional seals on "Arliton Island"
* Why they are there
* *How the Archaeologist understands this is not a single site, but a chain

---

	Seal #1 — Seal of Roots

	Hidden Forest Statue (already defined)

	Terrain guidance : 
* Deep jungle interior
* Very dense canopy
* Off any visible path
* Hard to see unless Archaeology "site sense" highlights it

	This is the first accidental discovery.
	The Archaeologist believes this is just a normal archaeology site.

---

	Seal #2 — Seal of Light

	Jungle Heart Clearing area

	Place it :
* In a natural sunlit clearing inside the jungle
* Between vegetation walls
* Not visible from paths
* Slight elevation or root-covered mound
* Close enough that a player exploring jungle interior for herbs/resources might pass nearby

	Level designer hint :

> Somewhere between the "Main Southern Path" and "Eastern Jungle Trail", inside a canopy break clearing.

---

	Seal #3 — Seal of Silence

	"Western Cliff Path" alcove near sea caves direction

	Place it :
* In a small rock alcove slightly off the cliff path
* Where terrain naturally blocks wind and wave noise
* Players heading toward caves or exploring cliffs may pass within range

	Level designer hint :

> Along the Western Cliff Path, before reaching the sea caves, in a recessed rock pocket not visible from the main trail.

---

	Seal #4 — Seal of Spores

	Northern Stream / Waterfall / Pond route

	Place it :
* Near water roots, humidity, vegetation overgrowth
* Slightly hidden behind bushes or hanging roots
* In the path players take when following the stream north

	Level designer hint : 

> Along the Northern Stream Route, before or near the waterfall/pond zone, inside thick vegetation beside water.

---

		The MOST Important Part — Discovery Logic

	How does the Archaeologist realize this is a chain?

Not from NPC.
Not from map.
Not from UI.

	From the profession mechanic itself.

---

	Step 1 — First Statue (Roots)

	When the Archaeologist analyzes the "Hidden Forest Statue" :
* They receive rune fragments
* Journal updates
* But RitualStep does NOT complete
* UI shows something like:

> "This writing references other markers across the island…"

	This is the only hint.

	The player now knows :

> "There are more of these somewhere."

	But no direction.

---

	Step 2 — Accidental Discovery of Seal #2

	While exploring the island later…
	The Archaeologist’s "Site Detection / Archaeology Sense" reacts again.
	This is the critical moment.

	The player realizes :

> "Wait… this is the SAME type of rune site."

	After interacting :

* Journal updates again, and text references multiple seals.

	Now it is clear :

> This is not random. This is connected.

---

	Step 3 — Discovery of Seal #3

	Same process.
	But now the Archaeologist already expects it.
	The profession sense triggers → player actively searches more jungle/cliff/stream areas.
	This becomes intentional exploration.

---

	Step 4 — Discovery of Seal #4

	When this one is found, the journal entry makes it explicit :

> "The four seals are meant to be read together."

	Now the player understands the system.

---

		What This Achieves (very important)

	The Archaeologist never gets a quest.	
	Never gets coordinates.
	They learn the system by pattern recognition through their profession tool.
	This is exactly the "found by luck" feeling you wanted.

---
