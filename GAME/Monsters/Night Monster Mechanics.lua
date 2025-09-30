			Night Monster Mechanics

	1. Introduction

	Night monsters are creatures that gain strength, stealth, and special behaviors under the cover of darkness. Their existence enriches the world by creating 
varying threat dynamics across the day-night cycle. In safe daylight hours, some of them stay hidden or dormant; at night, they become active and dangerous.
	This *Night Monster Mechanics* module extends the core Monster.lua rules by layering on nocturnal behaviors without conflicting with the core logic. All 
standard monster systems (perception, combat, movement, loot) remain active; night monsters simply override or augment them under nighttime conditions.

	Key design goals:

* Provide tactical variation so that the same zone feels different at night.
* Encourage stealth, light usage, timing strategies.
* Make certain monsters feel alive and unpredictable rather than always aggressive.
* Integrate seamlessly with the core system so that day / night switching doesn’t break consistency.

---

	2. Categories & Types (Night Variants)

	To differentiate night monsters from standard monsters, we classify night-specific variants using familiar axes (rank, race, type) but with nocturnal qualities.

	2.1 Ranks & Night Exclusivity

* Night-only variants : Some monsters appear only at night (e.g. “Shadow Wolves,” “Moonlight Stalkers”) and do not exist in the daytime.
* Mixed variants : Some monsters exist both day and night but gain additional night traits.
* Rank mapping : Night monsters follow the same rank structure (Rank I–V) defined in Monster.lua. Higher-rank night monsters may be rarer or tied to events.

	2.2 Night Races / Creature Types

	Introduce specialized nocturnal creature categories, for example:

* Shadow-beasts / Nightmares : Formed from darkness; strong in shadows.
* Moonborne / Lunar Spirits : Tied to moon phases, possessing radiant / lunar magic.
* Nocturnals / Dusk-creatures : Ambushers and stealthy types.
* Dreambound / Phantasms : Ethereal creatures that fade during daylight.

	2.3 Role / Type Specialization

	Night monsters may emphasize roles not common in daytime:

* Sleepers / Dormants : Start dormant and only awaken under triggers.
* Stalkers / Ambushers : Use stealth and surprise attacks.
* Shadow Casters : Use dark / shadow magic, silence, fear.
* Night Wardens : Defensive guardians of shadow zones.
* Lunar Guardians : Protectors or bosses tied to moon cycles.

	Each night type may override or add to standard monster types (melee, ranged, caster) with nocturnal flair.

---

	3. Behavior

	This is a core section where night beasts feel different.

	3.1 Dormant / Sleep State

* In shadowed zones (forest canopy, caves, ruins), many night monsters begin dormant, lying motionless.
* Visual cue : A “Zzz” or faint pulsing effect above them indicates their sleep/dormant state.
* No detection while dormant : They ignore player presence unless a trigger awakens them.
* Reduced profile : They generate no noise, movement, or visual cues to easy discovery.

	3.2 Awakening / Trigger Conditions

	Dormant monsters awaken under specific conditions:

* Proximity : Player enters an awaken radius (e.g. 5–10 meters).
* Noise / Disturbance : Spells, footsteps, environmental interactions (opening chests, breaking branches) disturb them.
* Light exposure : Light sources (torches, flares, spells) disturb or force awakening.
* Damage / Attack : Taking any damage immediately forces awakening.

	Upon awakening, monsters enter an Agitated / Ambush State.

	3.3 Active / Ambush Behavior

	Once awake, night monsters behave more aggressively:

* Ambush Bonus : First strike may deal extra damage, or inflict debuffs (silence, fear).
* Shadow movement : May teleport short distances, vanish temporarily, or move via shadows.
* High mobility : Use stealthy pathing, temporarily disappear, reappear behind players.
* Fallback & retreat : They may break off if heavily damaged, return to dormancy later if players flee.

	3.4 Day / Inactive Behavior

* If a night monster finds itself in daylight or a well-lit area:
	* It may retreat to darkness or become passive.
	* Some lose combat buffs or reduce detection range.
	* In transitional zones (twilight), they may behave in hybrid states.

---

	4. Combat Mechanics

	Night monsters excel in asymmetric combat. Their fighting style is designed to punish careless adventurers exploring after dark.

	4.1 Combat Enhancements at Night

* Stat Modifiers : At night, monsters may receive flat buffs (+HP, +damage, +movement speed). Some may weaken in daylight.
* Ambush Damage Bonus : First strike from stealth/dormancy deals bonus critical damage or applies a debuff (Fear, Bleed, Slow).
* Shadow Empowerment : When standing in darkness, monsters may gain lifesteal, faster cooldowns, or extra damage.

	4.2 Special Combat Abilities

* Blindness Effects : Inflict reduced vision range on players.
* Fear & Panic Debuffs : Cause short-duration disoriented movement, simulating terror in the dark.
* Silence & Suppression : Shadow casters may disable skill usage for a few seconds.
* Phase / Fade Mechanics : Some monsters can temporarily fade into shadow, becoming untargetable.

	4.3 Rage Mode (Night Variant)

* Many night bosses (Rank IV/V) enter Rage Mode when low on HP.
* In night encounters, Rage Mode may be enhanced by moon phases : e.g., stronger on full moon nights.
* Rage Mode may also cause *ambient changes* (fog thickens, light sources dim).

---

	5. Environmental Interactions

	Night monsters are heavily tied to their surroundings. Their mechanics create immersive links between world environment and combat.

	5.1 Light & Darkness

* Light-sensitive : Torches, lanterns, or fire spells can repel, weaken, or enrage certain monsters.
* Shadow Empowerment : Conversely, extinguishing lights or fighting in caves/forests makes them stronger.
* Safe Zones : Well-lit villages or shrines serve as safe havens where night monsters will not approach.

	5.2 Terrain & Habitat Effects

* Forest Creatures : Use tree cover to ambush; may retreat by climbing or hiding in underbrush.
* Swamp/Damp Zones : Monsters may cause mist, reducing visibility.
* Ruins & Cemeteries : Undead night monsters gain buff stacks in proximity to graves, crypts, or ruins.

	5.3 Dynamic Environment Interaction

* Weather Tie-ins : Storms or fog make certain monsters more active/aggressive.
* Moon Phase Buffs : Some monsters scale with lunar cycles (e.g., stronger on full moons, weaker on new moons).
* Environmental Hazards : Night bosses may manipulate the environment (summon fog walls, extinguish light sources, shift terrain).

---

	6. Spawn Mechanics

	Night monster appearance adds time-dependent challenges to world exploration.

	6.1 Time-Based Spawning

* Exclusive Night Spawns : Certain monsters only appear during the night cycle.
* Hybrid Spawns : Day monsters despawn or hide; night monsters replace them.
* Twilight Transition : Short overlap phases at dusk and dawn where both may appear simultaneously.

	6.2 Spawn Locations & Density

* Hotspots : Cemeteries, ruins, caves, and dense forests host more night monsters.
* Ambush Spawns : Some appear directly near or behind players, simulating night-time ambushes.
* Wave Spawning : In dungeons, night events may cause wave spawns, overwhelming unprepared groups.

	6.3 Respawn Rules

* Slower Respawn in Daytime : If killed near dawn, they respawn slower.
* Fast Respawn at Night : Spawn timers reduce during peak night hours, keeping pressure high.
* Event-driven Respawn : World events (blood moons, eclipses) can trigger mass respawns of night-themed creatures.

---

	7. Loot and Rewards

	Night monsters should feel rewarding, but also dangerous. Their loot system balances rarity with night-exclusive incentives.

	7.1 Night-Specific Loot Categories

* Common Loot : Herbs, bones, hides, and essences of shadow.
* Uncommon Loot : “Moon-touched” materials (used in crafting gear with night bonuses).
* Rare Loot : Unique reagents like *Essence of Night Fog* or *Black Moon Crystal*.
* Epic/Legendary Loot : From bosses and elite night monsters — weapons or armor with night-based effects (e.g., *Blade of Eclipse*, gear granting stealth or dark resistance).
* Event Loot : On rare events (Blood Moon, Eclipse), night monsters drop unique collectibles or recipes.

	7.2 Functional Rewards

* Night Buff Items : Potions granting temporary night-vision, stealth detection, or anti-fear resistance.
* Crafting Materials : Shadow-infused ores, enchanted wood, cursed essences.
* Pet/Mount Taming : Certain night monsters drop items needed to tame them (collars, soulstones).

	7.3 Loot Rules

* Faction/Quest Items : Some only appear on night monsters (e.g., outlaw insignias at night camps).
* Loot Windows : Some loot is only claimable before sunrise (disappears if not collected).
* Loot Scaling : Higher drop chances in dangerous zones or during special lunar phases.

---

	8. Integration with World Systems

	Night monsters don’t just exist in isolation — they interact with core world loops (progression, factions, dungeons, events).

	8.1 Progression and Scaling

* Monsters grow stronger across continents and regions (per Monster.lua).
* Night monsters force early grouping in low-gear areas.
* Some areas have daytime-soloable mobs, but turn nighttime-party-required.

	8.2 Faction and Territory Influence

* Faction Camps : Outlaw or cultist factions become active only at night, attacking villages.
* Territorial Control : Certain monsters spawn/vanish depending on which faction controls a region.
* NPC Guard Patrols : Villages bolster defenses at night, but can still be overrun if monsters are not contained.

	8.3 Dungeon & Raid Integration

* Night Phase Events : Some dungeons shift to “night mode” at certain server times, unlocking harder variants.
* Boss Mechanics : Certain bosses only reveal hidden abilities at night (rage phases, shadow summons).
* Outdoor Raids : World bosses (e.g., Night Dragons, Demon Lords) spawn exclusively at night.

---

	9. Optional Mechanics

	This section gathers experimental or situational mechanics that may enrich the system further.

	9.1 Seasonal & Event-based Night Monsters

* Blood Moon Events : All night monsters grow stronger and drop unique loot.
* Eclipses : Trigger rare boss spawns with unique mechanics.
* Festivals / Holidays : Cosmetic or rare event monsters (e.g., ghostly apparitions, shadow reindeer).

	9.2 Rare Night Encounters

* Legendary Night Monsters : Extremely rare spawns with unique AI and loot.
* Roaming Packs : Mobile groups of night creatures patrolling wide areas.
* Phantom Spawns : Monsters that only appear when a player is low on HP or light sources are extinguished.

	9.3 Immersion & Visual Flair

* “Zzz” Dormancy Effect : Monsters lying on the ground during day, waking up at night.
* Ambient World Changes : Soundscapes (howls, whispers, screeches), fog thickening, or fireflies scattering when monsters spawn.
* Player Utility : Some items (lanterns, bells, charms) can repel or attract specific night monsters.

---
