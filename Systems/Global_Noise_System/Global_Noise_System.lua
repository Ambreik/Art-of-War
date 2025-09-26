			Global Noise System

	1. Overview : The "Global Noise System" is a core mechanic that governs how sound is generated, transmitted, and perceived within the world game. It acts as a 
universal awareness system for NPCs, monsters, and even players in certain PvP contexts.

	Noise serves several purposes:
* Immersion : makes the world feel alive (birds fly off, monkeys chatter, guards shout).
* Challenge : careless players can draw unwanted attention, while skilled players can manage noise to gain an advantage.
* Integration : connects with stealth, camouflage, combat, and environmental systems.
* Scalability : applies equally to small-scale encounters (hunting in a jungle) and large-scale events (raiding a fortress, PvP battles).

	The system ensures that every sound-producing action — from footsteps to explosions — has gameplay consequences, shaping both how players interact with the 
environment and how the environment reacts to players.

---

	2. Core Concepts
	The Global Noise System is built around four primary concepts :

	a) Noise Sources
	Any action, entity, or environmental effect that produces sound.

* Players (movement, combat, mounts, crafting, professions).
* NPCs/Monsters (patrol calls, alarms, attacks).
* Environmental events (storms, collapsing ruins, flowing rivers, fauna activity).

	b) Noise Radius
	The effective range within which noise can be heard.

* Scales with intensity of the sound (whisper vs explosion).
* Modified by terrain (dense jungle muffles, caves amplify).
* Can overlap with other sources to create layered noise environments.

	c) Noise Intensity Levels
	Noise is categorized into tiers that define how impactful it is:

* Silent → Loud → Extreme (see later “Noise Tiers”).
* Higher levels travel farther and override ambient sounds.
* Intensity determines the type of response from NPCs/monsters.

	d) Detection Logic
	How NPCs, monsters, and certain players interpret noise.

* Each has a hearing sensitivity range.
* NPC/monster reactions vary: investigate, become alert, or attack.
* Some entities can be immune or resistant (e.g., undead ignoring sound, but not visual triggers).

---

	3. Noise Sources
	Noise can originate from players, NPCs/monsters, and the environment. Each source type contributes differently to gameplay.

	a) Player-Generated Noise

* Movement :
	* Walking (low noise), running (medium noise), sprinting (high noise).
	* Sneaking reduces baseline noise, but terrain type matters (leaves crunch vs soft sand).

* Combat :
	* Weapon swings, spell casting, ranged attacks, shield blocks.
	* Explosive abilities (grenades, fireballs) create large radius alerts.

* Mounts/Pets :
	* Hooves, roars, wing flaps, armor clattering.
	* Larger mounts generate more noise.

* Professions/Interaction :
	* Mining, fishing, blacksmith hammering.
	* Harvesting herbs is near-silent, mining is loud and echoing.

	b) NPC / Monster Noise

* Idle Sounds : chatter, growls, footsteps.
* Combat Sounds : weapon clashes, roars, spell chants.
* Alert Signals : whistles, drums, calls for reinforcements.
* Fleeing Animals : birds taking flight or deer stampeding signal presence to others.

	c) Environmental Noise

* Static Ambient : waterfalls, wind, rain, crackling fires.
* Dynamic Events : collapsing rocks, lightning strikes, erupting geysers.
* Triggered : breaking a branch, opening a creaky door, stepping on brittle bones.
* Fauna Reactions : disturbed monkeys screaming, bats flying from caves, which cascade into *linked aggro*.

	d) Guardian / Baron Noise *(Faction Entities)*
	These unique PvP-oriented entities generate distinct noise signatures to reinforce their identity as living weapons of war.
	Their noise profile is louder and more noticeable than standard NPCs, symbolizing their role as power units.

* Idle Presence
	* Heavy footsteps resonate farther (metallic echo, stone-shaking thuds).
	* Low, breathing growls or mechanical hums depending on faction.
	* Ambient aura noise (ethereal whispers for Barons, holy resonance for Guardians).

* Combat Engagement
	* Weapon clashes echo unnaturally far.
	* Unique vocal shouts/war cries (each Guardian/Baron has a distinct battle voice).
	* Ability sounds:
		* Guardians → shield impacts, light bursts, ground stomps.
		* Barons → dark surges, corrupted steel tearing, abyssal roars.

* Emotional/Interactive Sounds
	* Guardians may mutter righteous phrases or chants.
	* Barons may laugh mockingly or whisper curses.
	* These noises are cosmetic and immersive, not alert-triggering for PvM NPCs (since they are PvP-only), but they remain audible to players in range, enforcing 
their presence.

* Special PvP Utility
	* Noise radius of a Guardian/Baron is intentionally slightly larger than normal, making stealth PvP harder around them.
	* Their sounds carry factional identity → players can recognize who approaches by sound cues alone.

---

	4. Noise Propagation Rules
	Noise doesn’t just exist — it travels and is modified by the world. These rules ensure realism and tactical gameplay.

	a) Terrain Interaction

* Dense Vegetation : muffles and shortens range.
* Water : amplifies certain sounds (explosions), muffles others (footsteps).
* Caves/Structures : echo effects → increases radius but with directional distortion.
* Open Plains/Beaches : sounds carry farther due to lack of obstacles.

	b) Weather Effects

* Rain or wind reduces effective noise radius by a percentage.
* Storms may completely drown out low-tier sounds.

	c) Line of Sight & Directionality

* Noise travels better in open directions (e.g., shouts across a valley).
* Obstacles (walls, cliffs) block or redirect sound.
* Directionality matters → NPCs behind walls may not hear unless sound is very intense.

	d) Intensity Scaling

* Every sound has a base radius and intensity tier.
* Environmental modifiers adjust this (e.g., +20% in caves, -30% in jungle).
* Overlapping sounds can stack to create a “sound cloud” that draws greater attention.

	e) Special Propagation Cases

* Magical Sounds : Some spells may ignore terrain rules (telepathic screams, arcane blasts).
* Stealth Modifiers : Camouflage or silence abilities can lower or cancel sound.
* Chain Reaction Events : Disturbed wildlife generates secondary noise sources (birds screeching → alerts a nearby patrol).

---

	Thanks — I’ll rewrite **Sections 5 & 6** completely, integrating your rank system, NPC roles, and the Guardian/Baron clarification (they are **PvP entities** only and must be treated specially as PvP-flagged noise sources). I’ll make these two sections detailed, self-contained, and ready to drop into the Global Noise System doc.

---

	5) NPC & Monster Responses

	High-level model (states)
	Every sentient world entity (NPC or monster) lives in one of these awareness states:

* Idle — normal behavior (patrol, trade, stand).
* Alerted — has heard a suspicious noise; moves to investigate.
* Investigating — moves toward sound source; short-duration checks for visual confirmation.
* Combat-Ready — has high suspicion (visual confirmation or strong noise); prepares for combat (arms up, calls others).
* Aggro/Combat — engaged in fighting.
	
	Transitions are driven by the Global Noise System’s `noiseSum` checks, line-of-sight checks, and direct visual triggers.

---

	A — NPC responses (civilian & city NPCs)

	Classification (examples & hearing behavior) :

1. Tier 1 — Common Citizens / Villagers
	* HearingRadius : \~10 m (tunables)
	* AlertThreshold : High (react only to loud/explosive noises)
	* Behavior on trigger : Panic/flee, call guards (if nearby), stop interactions; do not fight.
	* Aftermath : May remain unavailable for services for `CITIZEN_FLEE_DURATION` (e.g., 30–90 s).

2. Tier 2 — Merchants / Profession NPCs / Quest Givers
	* HearingRadius : \~12 m
	* AlertThreshold : Medium–High (medium/loud noises)
	* Behavior on trigger : Enter "Scared" state — hide, stop services, clutch goods, call for guards if persistent.
	* Mechanics : If noise continues or a visual threat appears, they move to sheltered zones (stall, building) and unlock again after `MERCHANT_RECOVER_TIME` 
	(e.g., 60–120 s).
	* Gameplay effect : Loud/minor chaotic areas temporarily hinder player access to services — creates tactical consequences for noisy activity near hubs.

3. Tier 3 — Guards / Militia
	* HearingRadius : \~18 m
	* AlertThreshold : Medium (detects sneaking breaks and medium noises)
	* Behavior on trigger : Investigate; if they see the player or confirm threat, escalate to "Combat-Ready" and call reinforcements in a local radius.
	* Alarm : Loud/explosive noises produce immediate alarm calls; guards spawn/route in waves depending on town alarm level.

> Note about Guardians/Barons : they are not NPCs for PvM. They are PvP-summoned entities. Guardians/Barons may *emit* distinct vocal/noise effects (for player immersion) but these sounds are flagged PvP-only (`ignorePVM=true`) — they do not cause NPCs or monsters to react. Treat their noise as cosmetic for PvM; audible to players and PvP systems only.

---

	B — Monster responses (Rank I → V)
	Monsters are grouped into ranks (I–V). Noise affects them differently.

	Shared mechanics (applies to all ranks) :

* Each monster has:
	* `hearingRadius` (meters),
	* `baseAlertThreshold` (noise units),
	* `awareness` stat (modifies threshold),
	* `investigateBehavior` (idle move speed, sends scout?),
	* `fearability` (likelihood to flee).
* Noise events within `hearingRadius` are attenuated by distance and environment, summed into `noiseSum` over a short window (e.g., 6s). If `noiseSum >= baseAlertThreshold → go Alerted`.

	Rank-specific behavior & tunables (suggested default ranges)

* Rank I — Trash / Weak Mobs
	* `hearingRadius`: \~8–12 m
	* `baseAlertThreshold`: high (e.g., 5–7) — requires loud noise to react
	* Behavior : rarely react; do not fear; will not call others; usually only aggro on direct visual/attack contact.
	* Use : filler mobs that are safe to farm if you avoid direct engagement.

* Rank II — Smarter Packs
	* `hearingRadius`: \~12–18 m
	* `baseAlertThreshold`: medium (e.g., 3–5)
	* Behavior : notice medium noises, investigate; may retreat if numerical disadvantage; will chase if they detect the player.
	* Group behavior : simple pack logic — alert one may call nearby pack members (linked aggro propagation applies).

* Rank III — Leaders / Elite (small group leaders)
	* `hearingRadius`: \~18–24 m
	* `baseAlertThreshold`: low–medium (e.g., 2–4)
	* Behavior : sensitive to soft and medium sounds; often send scouts or minions; use basic tactics (flank, call backup).
	* Mechanic : when Alerted, they can change spawn patterns (move minions) and shift to Combat-Ready instead of immediate charge.

* Rank IV — Special Monsters / Elite Bosses
	* `hearingRadius`: \~24–30 m (or more depending on boss)
	* `baseAlertThreshold`: low (e.g., 1–3)
	* Behavior : detect most disturbances at long range; may preemptively move or trigger complex phase mechanics (traps, territorial buffs).
	* Complex reaction : can prepare ambushes, call regional minions, or change arena (move environment).

* Rank V — World Bosses / Notorious Monsters
	* `hearingRadius`: very large (30–80 m, tuned per boss)
	* `baseAlertThreshold`: special rules (often awaken on ANY significant noise)
	* Behavior : unique, scripted reactions — noise may wake, enrage, or teleport the boss. Usually tied to major events and heavily tuned.

	Chain reactions (Linked Aggro integration)

* When a monster becomes Alerted or enters Combat-Ready, it emits an `alertWave` (propagation radius configurable, default \~20m). Nearby monsters perform 
propagation checks (probabilistic) to become Alerted — limited by hop cap and max alerted per source to prevent runaway CPU/XP spikes.

	Fear & morale
* NPCs (Merchants) and some monster types may have `fearability`. If `fearability` triggered (by overwhelming noise or seeing large force), they flee for a time. 
Monster ranks may have different morale: Rank II can flee, Rank III rarely flee, Rank IV/V will never flee but instead call or retaliate.

---

	Example numeric tunables (starting values — all fully tunable)

* `noiseMagnitude` scale: 1..10 (see Player noise table in Section 6)
* NPC hearing radii: Citizens 10m; Merchants 12m; Guards 18m.
* Monster hearing radii: Rank I 8–12m; Rank II 12–18m; Rank III 18–24m; Rank IV 24–30m; Rank V 30–80m.
* baseAlertThreshold examples (lower = more sensitive): Rank I = 6, Rank II = 4, Rank III = 3, Rank IV = 2, Rank V = special.
* AlertDuration = 20s (configurable per mob/NPC).
* PropagationRadius = 20m; PropagationHopCap = 4; MaxAlertedPerSource = 10.

---

	Special rules & exceptions

* Visual confirmation (line-of-sight) immediately escalates to Combat-Ready regardless of noise.
* Magical/arcane sounds may bypass terrain muffling (configurable `ignoreTerrain` flag).
* Civilian NPC immunity window : some critical quest NPCs may temporarily ignore noise to avoid blocking progression (designer flag).
* Guard alarm scaling : in big cities, extreme noise can queue Guardian reinforcement spawns — this is a separate city-defence system 
(tied to game economy & balance) and must be gated to avoid abuse.

---

	6) Player Interaction with Noise
	This section describes how players create and interact with noise, and how that noise affects PvE/PvP gameplay. It maps player actions to noise magnitudes, 
shows aggregation rules for groups, and lists counterplay options.

---

	A — Player-generated noise mapping (suggested default magnitudes — scale 1..10)
	Use these as defaults; make all values tunable per-zone:

* Silent / Stealth
	* Sneak step (inside Vegetation\_Camouflage): 0.2–0.5
	* Quiet inspection/click: 0.5

* Low / Walk
	* Normal walk on soft ground: 1
	* Walk on leaves / gravel: 1.5

* Medium / Activity
	* Run / jog: 2.5
	* Quick sprint: 3–4
	* Light tool usage (herb pick): 1–2
	* Fishing cast (normal): 1.5

* High / Combat & Heavy Work
	* Melee strike (single): 3
	* Spell cast (single, non-AoE): 3.5
	* Mining strike (light): 2–3
	* Mining heavy hit / collapse: 5–6
	* Mount entry / dismount: 2

* Loud / Area / Explosive
	* AoE spells (non-explosive): 5
	* Explosive/siege/large collapse: 8–10
	* World chest opening (if loud): 4–6 (tunable by chest type)

* PvP Entity sounds (Guardian/Baron)
	* Roar/command (PvP-only): 6–8 (flagged PvP-only; monsters/NPCs ignore in PvM)

---

	B — Aggregation & Group rules

* Local noiseSum : the system buckets noise into spatial cells (e.g., 5m grid). For each bucket, `noiseSum = Σ (noiseMagnitude * sourceModifiers * distanceAttenuation)` over an `ALERT_WINDOW` (e.g., 6s).
* Party effects : group actions aggregate — a party of five miners hitting a vein will create a combined noiseSum that is far larger than a single miner. This 
increases linked aggro risk.
* Stacking & capping : to prevent runaway values, clamp `noiseSum` per cell to `MAX_CELL_NOISE` and cap contributions per source per second.

---

	— Interaction with Stealth & Environmental Mechanics

* Vegetation\_Camouflage reduces the player’s noise magnitude by `CAMO_NOISE_MULTIPLIER` (e.g., ×0.2). That makes stealthy actions far less likely to trigger linked
aggro.
* Strong\_Winds can increase ambient noise (masking small sounds) or reduce stealth effectiveness depending on config: `windNoiseMultiplier` modifies noise 
propagation locally.
* Underwater\_Currents : underwater sounds propagate differently — swimming thrash may be muted or amplified by currents; explosions are amplified underwater 
(higher effective radius).

---

	D — Professions & Special Actions

* Mining : heavy hits produce high noise and often cause rock-falls (game-design option). Mining is an intentional noise source — great for emergent gameplay 
(miners attract monsters). Consider longer respawn timers in dangerous zones to avoid camping.
* Herbalism : harvesting usually generates low noise (low risk), but certain herbs (e.g., Shadowmoss) release poisonous spores with noise-like triggers 
(local hazard).
* Archaeology / Clicking Relics : interacting with ancient items may spawn `ARCHAEOLOGY_NOISE` events (medium–high magnitude) — this can awaken nearby monsters or 
trigger latent alarms.

---

	E — PvP-specific rules & Guardians/Barons

* Guardians/Barons produce PvP-only noise events (flagged). They do not trigger NPC/monster reactions in PvM. Their sounds are audible to players in range and may 
be used to intimidate/communicate.
* Player PvP stealth : player stealth over players is governed by same noiseSum logic, but with separate detection thresholds (PvP detection is usually tighter) and
optional faction reveal rules.
* Tactical noise use : players can purposely create distraction noise (throwable rocks, bait devices) to lure monsters or enemy players. These items emit noise 
events with configurable magnitudes and cooldowns.

---

	F — Counterplay & tools to manage noise

* Stealth skills & boots : lower noise output or grant temporary immunity to linked aggro for specified actions.
* Silence consumables / items : reduce noise magnitude of next N actions.
* Decoys / Bait : place an object that emits a timed `noiseEvent` to draw monsters away.
* Communication : in towns, pay small fee or bribe guard to lower local patrol sensitivity for a period (designer option).
* Guild/Party coordination : coordinated pulls avoid overlapping noise sums; assign a single miner/harvester to prevent full group alarm.

---

	G — Example flows

1. Single player mining alone
	* Heavy mining hit (noise 5) → within `hearingRadius` of Rank II packs (threshold 4) → pack becomes Alerted.If Alerted pack’s alertWave reaches Rank III leader,
propagation may cause full pack to join.

2. Party stealth infiltration near market
   * Players in Vegetation\_Camouflage reduce step noise to 0.3 each → combined group noiseSum remains under Merchant/Guard thresholds → stealth succeeds. A single
careless sprint (noise 4) will spike the cell noiseSum and trigger merchant Hide state and guard investigation.

3. Guardian/Baron (PvP) arrival
   * Guardian&Baron roars (PvP-only noise 8) — audible to players but flagged `ignorePVM` so no monsters react. Players hearing the roar may be alerted to incoming 
PvP danger.

---

	H — Tunables & analytics

* Capture `noiseEvent` counts, average `noiseSum` per cell, `alertWavesTriggered`, `merchantHideIncidents`, `playerDeathsFromLinkedAggro`. Use these to tune 
thresholds and node placements.

---

	7) System Variants & Integrations
	The Global Noise System adapts depending on world context and content type. Not every zone or activity uses the same parameters.

	A — Overworld (open world, normal zones)

* Monster Ranks I–V appear naturally.
* Noise detection follows full propagation rules (Sections 3–6).
* Civilian NPCs and Merchants respond to player-generated noise with fear/hide mechanics.
* Guards follow patrol rules and call reinforcements on extreme noise.
* "Linked Aggro" is most active in overworld zones — noise-based chain reactions create emergent encounters.

---

	B — Dungeons

* Rank I monsters are absent — only Ranks II–V populate dungeons.
* Dungeon monsters are noise-aware by default :
	* Base state is "Combat-Ready", not Idle.
	* Monsters can pretend to be Idle in some scripted encounters but are pre-tuned to react instantly.
* Noise thresholds lowered — even soft/medium noises may trigger patrols or scripted ambushes.
* Some dungeon mobs have scripted detection points (noise traps, magical wards, echoing halls) that bypass normal propagation and instantly Alert or spawn waves.
* Integration with dungeon scripts : Noise events can trigger boss mechanics (e.g., an Elite Boss awakens early if noiseSum passes threshold before party is ready).
* Stealth runs possible but dangerous : requires tight control of party noise; 1 mistake can wake entire wings of enemies.

---

	C — Raids

* Monsters are always "Combat-Ready". Noise is used primarily as a mechanic trigger, not a detection system.
* Noise integrates into boss phases :
	* Certain abilities may require keeping noise low (e.g., sneaking past sleeping guardians).
	* Other encounters may require *creating* noise (baiting waves or enraging the boss at the right time).
* Noise is cooperative : in raids, each player contributes to global raid `noiseSum`. If global noise exceeds scripted thresholds, raid-wide events occur 
(adds spawn, phase changes, traps activate).
* World Bosses (Rank V) are almost always scripted to noise — ambient player activity may already “feed” them before direct aggro.

---

	D — PvP zones & battlegrounds

* Guardians/Barons emit PvP-only noise (flagged `ignorePVM`).
* Player noise detection for stealth/ambushes is tuned separately for PvP.
* Overt actions like mount summons, AoE spells, or Guardian roars can reveal players through "Noise Tier" breaches.
* Noise decoys are powerful tactical tools in PvP — throwing rocks, setting traps, or detonating noise bombs can force enemies to check the wrong location.

---

	E — Special integrations

* Professions :
	* Mining/blacksmithing in dungeon zones produces scripted alarms (rather than standard aggro checks).
	* Herbalism in corrupted areas may generate magical “screams” that alert distant mobs.
* Mounts : some mounts (warhorses, mechs, dragons) have innate noise multipliers.
* Environmental hazards :
	* Collapsing bridges, echoing caverns, or resonant crystals amplify noise events by multipliers.
	* Magical silence zones suppress noise, useful for stealth approaches.

---

	8) Noise Tiers
	Noise Tiers are abstract categories of sound that simplify how NPCs, monsters, and players detect one another. 

	Every action falls into one of these 5 Tiers :

	Tier 0 — Silent
* Magnitude : <1
* Examples : Stealth walk in Vegetation\_Camouflage, crouched steps, whispered interactions, passive Guardian idle hum.
* Detection : Only Rank III+ monsters or elite guards may notice (and only at very close range).
* Use case : True stealth, infiltration gameplay.

	Tier 1 — Soft Noise
* Magnitude : 1–2
* Examples : Walking on grass/soil, fishing cast, low-level tool usage.
* Detection :
	* Rank I monsters ignore.
	* Rank II+ may detect within hearing radius.
	* Merchants and Citizens ignore unless repeated.
* Use case : Safe general travel with some risk in high-level zones.

	Tier 2 — Moderate Noise
* Magnitude : 3–4
* Examples : Sprinting, normal melee hits, standard spell casts, mount footsteps.
* Detection :
	* Rank II monsters easily detect.
	* Rank III leaders may react even at distance.
	* Merchants & Citizens hide if persistent.
	* Guards investigate.
* Use case : Everyday combat/travel, safe in open fields but risky in dungeons.

	Tier 3 — Loud Noise
* Magnitude : 5–7
* Examples : Mining strikes, AoE spells, mounted charges, Guardian/Baron roars (PvP-only flagged).
* Detection :
	* Rank II always react.
	* Rank III–IV escalate to Combat-Ready.
	* Guards call reinforcements.
	* Merchants always hide.
	* Raid encounters may trigger scripted adds.
* Use case : Aggressive activity; risky in stealth missions.

	Tier 4 — Extreme Noise
* Magnitude : 8–10
* Examples : Explosions, siege weapons, collapsing caverns, raid-wide AoE.
* Detection :
	* Rank IV–V immediately escalate.
	* World Bosses may awaken/enrage.
	* Civilian NPCs panic and flee.
	* Guards trigger alarm states and city reinforcements.
	* Dungeons/raids often script phase shifts here.
* Use case : Intentional chaos — PvP mass reveals, raid phase pushes, overworld alarm triggers.

---

### Noise Tier → Action Summary Table

| **Tier** | **Magnitude** | **Typical Sources**               | **Detection & Reaction**                                |
| -------- | ------------- | --------------------------------- | ------------------------------------------------------- |
| Tier 0   | <1            | Stealth steps, crouch, vegetation | Only elites notice; stealth gameplay                    |
| Tier 1   | 1–2           | Walk, light tools, fishing        | Rank II+ may notice; merchants ignore                   |
| Tier 2   | 3–4           | Sprint, melee, spells, mounts     | Rank II+ react; merchants hide; guards investigate      |
| Tier 3   | 5–7           | Mining, AoE, Guardian/Baron roars | Rank III–IV escalate; merchants flee; reinforcements    |
| Tier 4   | 8–10          | Explosions, siege, collapse       | Rank IV–V enrage; civilians panic; raid scripts trigger |

---

	9) UI & Feedback

	The "Global Noise System" is designed to remain immersive and not clutter the screen with intrusive UI bars. Instead, feedback is subtle, atmospheric, and tied 
to the player’s situational awareness.

	A — Directional Echo Effects

* Visual Echo Indicator :
	* When a noise is detected nearby, the screen edge pulses in the direction the sound originates.
	* Effect: a faint ripple / distortion resembling a sonar wave or echo line.
	* Tier scaling :
		* *Soft Noise* : Gentle ripple, almost transparent.
		* *Moderate* : Clearer ripple with short pulse.
		* *Loud* : Ripple + faint vibration of the edge.
		* *Extreme* : Strong pulse with distortion, lingering afterimage.
* Layered Signals : Multiple noises from different directions can cause overlapping ripples, helping the player identify relative sound positioning.

---

	B — Minimap Integration

* Major sounds (Tier 3–4) briefly flash on the minimap:
	* Red pulse = enemy noise.
	* Yellow pulse = environmental hazard noise (collapse, explosion).
	* Blue pulse = player/ally noise (loud spell, Guardian roar).
* Smaller noises (Tiers 0–2) do not appear, preserving stealth gameplay.

---

	C — Audio Feedback

* Every noise event has a layered sound design :
	* Player hears not only the noise itself but also its echo intensity, subtly communicating how far it propagates.
	* Distant but loud noises sound muffled but deep; nearby soft noises sound crisp.
	* Optional accessibility setting: “Noise Awareness Mode” → adds a faint "ping" when enemies detect the player via noise.

---

	D — Player Stealth Indicator

* When players are generating noise, a subtle icon appears near their health bar:
	* Ear icon with wave lines → indicates current "Noise Tier" being produced.
	* Icon fades in/out based on actions (sprinting, mining, spellcasting).
	* For stealth classes or stealth zones, this indicator is critical for feedback without breaking immersion.

---

	E — Extreme Feedback Events

* Screen shake/light blur when massive noises occur nearby (e.g., siege engine firing, cave collapse).
* Flash highlight on screen edge if player is detected by noise-sensitive mobs (Rank II+).
* Raid integration : Party-wide noise alerts (a short raid-wide ping and chat text “Your noise has attracted attention!”).

---

	F — Customization & Accessibility

* Players can adjust intensity of ripple effects, minimap flashes, and sound cues.
* Accessibility options for colorblind players (different shapes instead of colors for minimap pings).
* Option to turn off visual ripples and rely purely on audio for hardcore immersion.

---

	10) Technical / Engine Considerations

	The "Global Noise System" must be lightweight yet precise, capable of scaling across multiple regions, dungeons, raids, and open-world PvP encounters.

	A — Noise Event System

* Every noise is registered as an event packet with:
	* Source (Player, NPC, Monster, Environment, Guardian/Baron).
	* Noise Tier (0–4).
	* Propagation Radius (based on tier, environment modifiers, obstacles).
	* Direction Vector (for UI ripple effect).
	* Timestamp (to avoid over-processing repeated events).
* Noise events are temporary (auto-expire after propagation finishes).

---

	B — Propagation Optimization

* Culling system ensures only entities within the noise radius receive the event.
* Occlusion checks (walls, caves, forests) reduce propagation radius dynamically.
* Layered zones (surface vs. underwater, forest vs. open plains) each have different dampening multipliers.

---

	C — NPC & Monster AI Integration

* NPCs/Monsters don’t constantly listen to everything; instead, they check for noise events only when:
	* Within proximity.
	* Idle / patrol state (non-combat).
	* Scripted encounters (dungeons/raids).
* Rank-based AI determines how they interpret noise (already covered in Section 5).

---

	D — Player Integration

* Noise tier is calculated client-side first (to give immediate UI feedback).
* Server-side validation ensures consistency → server determines whether NPCs/monsters actually react.
* Prevents exploits (like modding client to reduce noise output).

---

	E — Network & Performance

* Noise events are lightweight signals:
	* Only position, tier, and direction need to be sent.
	* No heavy audio data is transmitted (sounds are local assets).
* Server clusters can throttle environmental noise if needed (e.g., in massive PvP battles, only Tier 2+ noises propagate globally).

---

	F — Extensibility

* System designed to plug into:
	* Future mechanics (stealth zones, ambush predators, weather-gathering mechanics).
	* Professions (e.g., archaeologists detecting faint whispers in ruins).
	* Raids/dungeons (scripted sound traps, noise-triggered waves).
* Can integrate with PvP mechanics like Guardian/Baron battle presence.

---

	G — Debugging & Tools

* Developers have access to a "Noise Debug Overlay":
	* Visual circles on the ground showing noise propagation radius.
	* Colored markers for tier level.
	* Entity responses logged in console (e.g., “Orc Patrol alerted by Loud Noise \[Tier 3] at X,Y”).

---