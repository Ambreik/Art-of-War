			Monster Group

	1. Introduction

	Monster groups are a core element of the World Game, designed to increase immersion, tactical diversity, and challenge beyond what single monsters can provide. 
While individual monsters test player skill in isolated encounters, monster groups emphasize coordination, threat management, and situational awareness.

	Groups serve multiple purposes:

* Environmental Immersion : Packs of wolves hunting together, patrols of soldiers guarding roads, or cultists performing rituals make the world feel alive.
* Difficulty Scaling : Groups naturally scale encounter complexity by forcing players to deal with multiple threats at once, balancing focus between damage, crowd
control, and survival.
* Tactical Variety : Monsters in groups often have complementary roles (tank, damage dealer, support), encouraging players to adapt strategies.
* Progression Challenge : As players move into higher-level continents and regions, groups become larger, more synergized, and sometimes require parties rather than
solo play.

	Monster groups bridge the gap between open-world adventuring and dungeon-style encounters, making even outdoor exploration a potential team challenge.

---

	2. Key Differences from Solo Monsters

	AI Differences

* Coordinated Aggro : Monsters in a group react to one another’s triggers. If one engages, nearby group members may also join the fight.
* Assist Propagation : Pulling one mob can “call” others in the group within a defined assist radius, simulating real-world pack behavior.
* Synergy Mechanics : Some groups have role composition (e.g., leader + healer + damage dealers), creating layered difficulty beyond simple numbers.

	Threat Distribution

* Unlike solo monsters that rely only on their personal threat table, group monsters can:
	* Share partial threat data (pack coordination).
	* Focus fire on priority targets like healers or squishy players.
	* Switch targets based on group logic (e.g., when the leader commands a focus shift).

	Group Scaling

* Groups scale differently than solo monsters:
	* Size scaling : Higher-level zones contain larger groups.
	* Rank scaling : Low-level groups are mostly Rank I–II mobs, while higher-level zones may have groups with Rank III leaders and Rank II minions.
	* Synergy scaling : Some late-game groups unlock coordinated abilities, such as buff auras or chain attacks.

	Reset & Leash Differences

* Individual monsters have simple leash rules (return after X distance). Groups introduce:
	* Shared Leash Radius : Groups retreat together if the fight drags too far.
	* Leader-Based Reset : If the leader resets, the entire group follows.
	* Partial Reset : Some members may disengage while others continue, depending on AI role.

---

	Monster groups behave differently from solo monsters in ways that challenge both casual adventurers and organized parties. While solo monsters are predictable 
and straightforward, groups introduce coordination mechanics, layered threats, and punishments for sloppy play.

	2.1. Aggro Propagation (Assist Behavior)

* When one monster in a group is attacked, nearby group members are alerted and will rush to assist.
* Propagation rules can differ by group:
	* Full Propagation (Pack Logic) : animals, beasts, or insect swarms all aggro together if one is attacked.
	* Partial Propagation (Faction Logic) : Human bandits may only pull their immediate allies (e.g., within a campfire circle).
	* Leader-Linked : If the leader is attacked, the entire group joins instantly; if a lesser member is attacked, only nearby allies respond.

*Example:* In the Lagooma Jungle, wolf packs of 5 will always respond as a unit. In contrast, a camp of outlaws may only trigger 3–4 nearby allies unless the “Captain” is provoked.

---

	2.2. Reinforcement & Buff Sharing

* Certain monsters can buff their allies (e.g., shamans healing nearby orcs, commanders increasing damage).
* Group synergy forces players to prioritize targets instead of just “brute-forcing” through.
* Some buffs trigger conditionally:
	* Death Triggers : On death of a leader, nearby mobs enrage for 10 seconds.
	* Support Triggers : Shamans automatically heal allies when they fall below 30% HP.

*Example:* In Tenebress Territory, cultist groups often contain a Warlock that buffs allies with Shadow Shields, forcing players to target them first.

---

	2.3. Reset & Leash Differences

* Solo monsters typically reset quickly when pulled too far. Groups, however, often reset in stages:
	* Soft Reset : Group stops chasing but doesn’t heal instantly, punishing kiting strategies.
	* Staggered Reset : Some group members return earlier while others keep chasing.
	* Leader Leash : As long as the leader hasn’t reset, the rest won’t either.

*Exploit Prevention:*

* No “infinite kiting” — if players drag mobs too far, groups may apply a “leash debuff” (movement speed reduction or damage increase against players) before fully 
resetting.

---

	2.4. Coordination & Target Priorities

* Group AI may assign roles within combat :
	* Tanks pin down players with slows.
	* Ranged units maintain distance.
	* Support units heal/buff.
* Some groups switch targets intelligently (e.g., flanking rogues attacking healers, casters prioritizing ranged DPS).

*Example:* Elite guards in capital sieges can swap aggro between themselves when one is stunned, ensuring players can’t “cheese” them with CC spam.

---

	3. Group Composition

	Monster groups are not random gatherings — they are structured encounters designed to test coordination, tactics, and adaptability. Group compositions vary 
by region, monster type, and intended difficulty.

---

	3.1. Standard Archetypes

1. Pack Hunters (Animal Logic)
	* Typically small groups of 3–6.
	* Every member fights aggressively, with little support logic.
	* Designed for fast-paced combat and overwhelming pressure.
		*Examples:* Wolves, jackals, desert hyenas.
	*Anti-Exploit Mechanics:
		*Packs regroup if a player lures part of the pack away.
		*Pack cohesion applies stacking damage buffs when fighting together.

2. Warbands (Humanoid Logic)
	* Medium groups of 4–10.
	* Contain a mix of melee, ranged, and support units.
	* Often led by a captain or elite that coordinates others.
		*Examples:* Bandits, orc raiding parties, cultist cells.
	*Anti-Exploit Mechanics:
		*The leader will aggro nearby units if threatened.
		*Ranged units reposition when frontliners are killed, preventing simple kiting.

3. Swarms (Insect/Undead Logic)
	* Large groups of 8–20+ weak units.
	* Individually weak, but dangerous when numbers stack.
	* Often paired with a “controller” (e.g., broodmother or necromancer).
		*Examples:* Giant spiders with hatchlings, skeleton hordes.
	*Anti-Exploit Mechanics:
		*Swarm units regenerate if the leader is alive, discouraging single-target farming.
		*Area Denial Mechanics: Swarms may leave hazard zones (poison, webs) to prevent static

4. Elite Patrols (Military Logic)
	* Small but highly coordinated groups (3–5).
	* Each member has a defined combat role (tank, healer, ranged).
	* Designed to punish unprepared adventurers.
		*Examples:* Imperial knights, elite assassins, mage escorts.
	*Behavior: Each unit has a defined role (tank, DPS, support).
	*Anti-Exploit Mechanics:
		*Patrols retreat and regroup if outnumbered by players.
		*Support units prioritize healing or buffing the strongest threat, preventing easy solo kills.

---

	3.2. Role Distribution within Groups

* Leader / Captain : Provides aura buffs or rally abilities. Often the most durable.
* Tanks / Bruisers : Soak damage and pin players with slows/taunts.
* DPS (Melee/Ranged) : Deal consistent pressure damage.
* Casters / Supports : Heal, buff, or summon reinforcements.
* Utility / Specialists : Units with CC, debuffs, or environmental effects.

*Design Note:* Group balance can be tuned. Some groups lean heavy on DPS, while others rely on support units that force tactical play.
*Additional Layer: Roles can dynamically shift based on combat phase (e.g., when leader dies, support units go offensive).

---

	3.3. Dynamic Group Scaling

	Groups can scale depending on world difficulty, party size, or zone context :

* In starter zones, groups are smaller (2–3 mobs).
* In higher-tier areas, groups expand and include support units.
* In dungeons/raids, groups may function like mini-boss encounters with scripted synergies.

*Example:* A spider lair in early levels may spawn a broodmother + 2 hatchlings. In endgame content, the same broodmother comes with 10 hatchlings and web-slingers that trap players.
*Anti-Exploit Feature:
	*Groups have a soft leash / repositioning mechanic to avoid players kiting mobs outside intended areas.
	*Respawn waves for elite encounters prevent infinite farming loops.

---

	3.4. Emergent Synergy

	Certain monsters gain bonus effects when grouped with specific allies:

* Wolves howl together, stacking damage buffs.
* Necromancers empower skeletons, making them harder to kill.
* Orc shamans deal extra damage if accompanied by berserkers.

	This prevents combat from being predictable and forces players to analyze group composition before engaging.

---

	3.5. Rare / Special Group Variants

	Occasionally, monster groups spawn with rare modifiers:

* Champion’s Warband : One elite leader with rare loot.
* Enraged Pack : All members deal 20% extra damage.
* Hardened Patrol : Extra armor and resistances.
* Event-Driven Groups : Seasonal events may spawn themed packs (e.g., “Pumpkin Horde” during harvest).

	*Anti-Exploit Feature:
		*Killing key units in a specific order reduces overall threat, promoting strategic prioritization.
		*Group synergy encourages coordination and tactical awareness.

	3.6. Encounter Variety

*Patrols: Move along a route; encounter players unexpectedly.
*Ambushes: Hidden until player crosses specific trigger; high initial threat.
*Camp Groups: Stationary groups defending resources or objectives; layered defenses.
*Dynamic Waves: Noise-triggered or event-based spawning (dungeons, territory conflict).
*Anti-Exploit Note:
	*Patrols and ambush groups have randomized paths or spawn points to prevent repetitive farming.
	*Camp groups respawn with a cooldown timer and occasional variation in composition.

---

	4. Group Behavior Mechanics (Refined)

	Monster groups are designed not only to challenge players individually but also to create tactical combat situations when encountered as a group. The mechanics 
below govern how monsters interact, coordinate, and respond dynamically in combat.

---

	4.1 Coordinated Aggro Rules

1. Leader-Driven Aggro
	* Groups have a designated leader unit whose target choice influences the behavior of the rest of the group.
	* When the leader aggroes a player, all units within a defined proximity may join the attack based on threat scaling.
	* Anti-exploit: If a leader is killed, remaining units may retarget or disperse, preventing easy “leader-kill” exploitation.

2. Threat Propagation
	* Units share threat awareness : if one unit is attacked, nearby group members may assist based on role and proximity.
	* Certain units (e.g., casters/supports) may only assist once propagation thresholds are met, preventing infinite pull chains.

3. Role-Specific Aggro Behavior
	* Tanks: Prioritize highest damage-dealing players.
	* DPS: Target the closest or weakest player in range.
	* Supports/Casters: Target leader or highest-threat units.

---

	4.2 Assist / Propagation Chain Rules

1. Propagation Limits
	* Each group has a maximum assist count, configurable per encounter.
	* Anti-exploit: Prevents “all monsters pile up” when a single player triggers aggro.

2. Distance-Weighted Assistance
	* The farther a unit is from the triggered player, the lower chance to join combat.
	* This prevents mobs from unnaturally teleporting across the map to assist.

3. Cooldowns on Assistance
	* Units that recently assisted enter a temporary cooldown, preventing chain-assist spam.

---

	4.3 Retreat / Reset Rules

1. Leader-Based Retreat
	* If the leader dies or reaches a desperate health threshold (Rage Mode), subordinate units may retreat, flee, or re-prioritize targets.

2. Group Reset Mechanics
	* If a percentage of the group dies (configurable, e.g., 50–70%), remaining monsters reset to original spawn locations after a grace period.
	* Anti-exploit: Prevents players from baiting groups away from intended spawn areas.

3. Dynamic Panic / Frenzy
	* Certain monsters enter "Panic Mode" when health drops below a threshold, increasing movement or attack speed.
	* Frenzy mechanics: Units may attack indiscriminately, including other monsters (rare) or environmental objects.

---

	4.4 Group Morale Mechanics

1. Panic
	* Low-health units may flee temporarily or become less accurate.
	* Units may drop buffs or defensive auras if morale breaks.

2. Frenzy
	* Triggered by leader death, certain thresholds, or Rage Mode.
	* Increases damage output and attack speed but may reduce defensive capability.

3. Reinforce
	* High-ranking groups may call reinforcements if morale drops below a certain level.
	* Reinforcement probability scales with player level, group size, and zone difficulty.

---

	4.5 Patrols vs Stationary Groups

1. Patrol Groups
	* Move along predefined or randomized paths, reacting to noise or player proximity.
	* Aggro mechanics: Triggered by proximity or player actions, e.g., breaking stealth, attacking environment objects.
	* Anti-exploit: Patrolling monsters cannot be baited excessively; paths adjust if repeatedly triggered.

2. Stationary / Camp Groups
	* Defend a fixed location, often a resource node or quest objective.
	* Aggro mechanics: Triggered by proximity or direct attack.
	* May include aura buffs or trap mechanics to make static farming less effective.

---

	4.6 Additional Refinements

* Environmental Awareness : Groups may react to terrain (narrow corridors, cliffs, water), adjusting formation or movement speed.
* Synergy-Based Behaviors :
	* Packs may use coordinated attacks like flanking, suppressive ranged fire, or staggered skill rotations.
	* Magic casters may shield or heal high-threat units, enhancing survival.
* Soft-Leash Mechanics : Prevents groups from chasing players infinitely, scaling leash distance by rank.

---

	5. Threat & Aggro in Groups (Refined)

	Group combat in World Game relies on coordinated threat management to create dynamic and challenging encounters. This section defines how monsters in a group 
share threat, switch targets, and maintain engagement ranges.

---

	5.1 Shared vs Individual Threat Tables

1. Individual Threat Table
	* Each monster maintains its own threat list, tracking players based on:
		* Damage dealt
		* Healing done
		* Skills used (buffs, debuffs, CC)
	* Threat calculation is influenced by monster rank:
		* Rank I–II : Basic threat scaling, primarily damage-driven.
		* Rank III–V : Includes threat modifiers for abilities, heals, and aggro skills.

2. Shared Threat Table (Group-Aware)
	* Certain monsters, especially leaders or elite mobs, can share threat information with nearby units.
	* Units reference leader threat tables to coordinate attacks and reduce redundant targeting.
	* Propagation limits prevent all monsters from instantly targeting the same player (avoiding exploit chaining).

---

	5.2 Target Switching Rules in Group Fights

1. Role-Based Targeting
	* Monsters can prioritize specific roles:
		* Tanks: Usually maintain highest threat or proximity.
		* Healers: High-priority targets if group includes DPS/healers.
		* DPS/low-HP players: Opportunistic targeting if leader allows.
	* Example: A caster may switch to healers first if the leader signals.

2. Damage-Triggered Switch
	* If a player outside the main threat range deals significant damage, monsters may switch targets.
	* Thresholds vary by rank and monster type:
		* Rank I–II: Rarely switch unless attacked directly.
		* Rank III–V: Can switch dynamically based on damage or healing done.

3. Proximity & Position Awareness
	* Monsters take into account player positioning relative to the group.
	* Mechanics include flanking, spread formation targeting, and distance-based reprioritization.

---

	5.3 Priority Focus Mechanics

1. Healer Prioritization
	* High-threat casters and healers are automatically flagged for focus by elite monsters.
	* Tanks and melee units may temporarily delay attacks in favor of high-priority targets.

2. Low-HP Player Targeting
	* Berserk, deathblow, or vampiric monsters will opportunistically target low-HP players.
	* Encourages players to manage health positioning and use defensive skills.

3. Highest DPS Detection
	* Group AI can identify the most damaging player(s) over a short time window.
	* DPS targeting probability increases with rank and group coordination mechanics.

---

	5.4 Chase Distance as Group Leash Radius

1. Individual vs Group Leash
	* Each monster has a personal leash distance, defining how far it can chase a player.
	* Groups have a shared leash radius centered on the leader or spawn point.
	* If a player moves outside the leash:
		* Non-leader units reset to original positions.
		* Leader or elite monsters may soft-leash, gradually returning while casting ranged skills.

2. Distance Scaling by Rank
	* Rank I: Short leash (~5–10m)
	* Rank II: Medium leash (~15–20m)
	* Rank III: Extended leash (~25–30m)
	* Rank IV–V: Large leash (~40–50m or more), including soft leash flexibility.

3. Environmental Awareness
	* Leash calculations consider terrain, obstacles, and paths to avoid impossible chasing.
	* Patrolling groups have leash radii adjusted based on patrol routes.

---

	5.5 Additional Considerations

* Assist Limit Integration : Leash mechanics interact with propagation to prevent unlimited assistance.
* Rage Mode Influence : Monsters in Rage Mode may temporarily extend leash distance or ignore normal priority rules.
* Team-Based Puzzles : Certain group fights require players to manipulate positioning to avoid triggering mass group aggro.

---

	6. Spawn & Respawn Rules

	6.1 Group Spawn Points

* Clusters :
	Groups spawn naturally in small clusters based on terrain, biome, or faction.
	*Example:* A wolf pack cluster in the forest, or a goblin camp near hills.
* Waves :
	Dungeon or event groups spawn in successive waves to maintain tension and pacing.
	*Scaling:* Later waves can include elites or mini-bosses.
* Ambushes :
	Certain groups remain hidden until a player enters a specific area or triggers an event.
	*Telegraphs:* Environmental cues like movement, sound, or visual hints alert players.

	6.2 Respawn Timers

* Rank-based timers :
	* Trash groups (Rank I–II): ~15–45 seconds
	* Elite groups (Rank III–IV): ~30–60 seconds
	* World Boss / Legendary groups (Rank V): Several hours or scheduled events
* Dynamic respawn :
	Areas heavily farmed by players may have slightly longer respawn timers to prevent farming exploits.

	6.3 Dungeon-Specific Waves

* Event-driven :
	Waves spawn based on:
	
	* Player progression in the dungeon
	* Elapsed time since the last wave
	* Boss health thresholds (some waves appear when boss enters Rage Mode)
* Scaling :
	Wave difficulty, group composition, and abilities scale with party size or average player level.

---

	7. Loot Distribution for Groups

	7.1 Individual vs Group Loot

* Individual loot tables :
	Each monster retains its original drop table from Monster.lua, ensuring consistency with core mechanics.
* Shared loot pool :
	Some group encounters (especially elite or dungeon groups) may generate a shared loot pool, distributed among all players in the group.
	* Loot type can be weighted according to player performance, role, or contribution.
	* Tanks may receive defensive gear, DPS get offensive items, support roles get utility/healing items.

	7.2 Leader vs Minion Loot Differences

* Leader monsters (Rank III–V):
	Drop higher-tier loot, rare crafting components, or unique event items.
* Minions :
	Usually drop common or uncommon loot; however, minions may occasionally drop rare items to reward killing them efficiently.

	7.3 Loot Roll Mechanics

* Randomized roll :
	When multiple players are eligible for the same loot, a roll system can be applied to assign items fairly.
* Priority system :
	Configurable rules for who gets loot first, e.g.,:
	* First-come, first-served
	* Highest damage dealt
	* Lowest current gear score
* Weighted “pity” system :
	Guarantees rare items after a number of group kills or repeated encounters.

	7.4 Pity / Guaranteed Drops

* Progressive loot protection :
	Players who repeatedly participate in clearing groups without receiving rare items gain an increasing chance for better loot.
* Group-wide benefit :
	Entire party may trigger guaranteed loot for the next encounter if a rare or legendary drop didn’t occur in the previous kill.

	7.5 Event or Dungeon Modifiers

* Dungeon-specific loot :
	Certain groups may drop unique event or dungeon loot, tied to progression or storylines.
* Scaling by group size :
	Loot quantity and rarity can scale with the number of players in the party or raid to maintain balance and fairness.

---

	8. Special Group Mechanics

	8.1 Reinforcements

* Signal nearby groups :
	Some elite or scripted groups can call reinforcements when attacked.
	* Triggered by:
		* Player proximity
		* Aggroing the leader
		* Specific thresholds of leader or minion health
* Reinforcement limits :
	* To avoid infinite spawning loops, a cap is applied on reinforcement propagation.
	* Reinforcements may arrive after a short delay, giving players time to react.

	8.2 Linked Death Mechanics

* Leader-minion linkage :
	* Certain minions die automatically if the leader falls (classic “minion leash”).
	* Some groups trigger enrage instead when the leader dies, increasing damage or activating special abilities.
* Death-triggers :
	* Can cause AoE damage, temporary buffs to surviving members, or debuff players.

	8.3 Pack Synergy Abilities

* Buffs & debuffs :
	* Monsters in a group can provide mutual buffs, e.g.,:
		* Increased attack speed or damage
		* Damage reduction
		* Regeneration or rage stacking
	* Debuffs on players include:
    * Stun, slow, or DoT if multiple monsters coordinate attacks
* Combo attacks :
	* Some groups perform special coordinated abilities only available when multiple members are alive.
	* Examples:
		* "Leader initiates charge → minions follow with knockback attacks"
		* "Simultaneous AoE to trap players"

	8.4 Territorial Control

* Spawn scaling by area control :
	* Groups defending an area spawn stronger if the territory is under their faction’s control.
	* Cleared zones can temporarily reduce monster strength until respawn.
* Ambush mechanics :
	* Some groups hide in specific locations until players enter the area, triggering coordinated ambushes.
* Dynamic reinforcement waves :
	* Noise-triggered or event-driven waves can spawn additional monsters in territorial zones.

	8.5 Optional Mechanics

* Phased group behavior :
	* Some elite groups change tactics over time or when HP thresholds are crossed.
	* Visual telegraphs alert players to changes.
* Adaptive difficulty :
	* Groups can scale damage, HP, or abilities based on party size or player average level.

---

	9. Integration with World Systems

	9.1 Scaling by Continent and Region

* Regional difficulty progression :
	* Monsters and groups scale in HP, damage, abilities, and aggro radius based on the player’s progression through continents and regions.
	* Early regions contain Rank I–II soloable groups, while mid-to-late regions feature Rank III–V groups requiring coordinated play.
* Environmental adaptation :
	* Groups gain buffs or debuffs depending on their environment 
	(e.g., desert monsters suffer reduced HP in water zones; forest monsters gain camouflage in dense foliage).

	9.2 Outdoor vs Dungeon Encounters

* Outdoor encounters :
	* Designed for exploration and solo-to-small-group play.
	* Some high-rank outdoor groups require full party coordination, especially in “newly discovered” zones where players’ equipment may be under-leveled.
* Dungeon & raid encounters :
	* Groups in dungeons are scripted and event-driven*, often including mini-bosses or elite monsters with special mechanics.
	* Group roles in dungeons are tightly controlled:
		* Leader performs special mechanics
		* Minions coordinate with leader for combo attacks
		* Environmental hazards tied to group mechanics (traps, AoE effects, terrain interaction)

	9.3 Party Requirements & Challenge

* Soloable vs party-required groups :
	* Rank III+ outdoor groups may require two or more players, especially if players’ gear and level are below region average.
	* World Bosses (Rank V) and Notorious Monsters are explicitly raid content, requiring full group coordination.
* Dynamic challenge scaling :
	* Monster stats, aggro mechanics, and abilities can scale based on party size or player composition 
	(e.g., more healers reduce individual damage taken but may trigger “healer aggro”).

	9.4 Integration with World Events

* Seasonal modifiers :
	* Groups can receive unique buffs, abilities, or cosmetic changes during seasonal events.
* Faction control & territory influence :
	* Faction dominance in certain regions affects spawn density, group strength, and loot rarity.
* Event-driven spawns :
	* Dungeon or outdoor events can trigger temporary elite or rare groups to appear, creating time-sensitive challenges for players.

	9.5 Player Interaction Considerations

* Solo exploration :
	* Groups are designed to allow strategic retreat and safe disengagement where appropriate.
* PvE/PvP overlap :
	* Certain groups can interact with factions or other NPCs, allowing players to exploit conflicts or intervene strategically.

---

	10. Other Mechanics (Optional)

	10.1 Seasonal and Event Group Spawns

* Groups can appear or gain unique traits during seasonal events, festivals, or world occurrences.
* Examples:
	* Winter event: Ice-themed monster groups spawn with frozen AoE attacks.
	* Halloween event: Undead groups with higher respawn rates and rare cosmetic loot.
* These groups may drop exclusive loot or unlock event-specific quests.

	10.2 Elite Roaming Warbands

* Rare, high-rank groups that travel across continents, not tied to fixed spawn points.
* Characteristics:
	* Multiple leaders with synergistic abilities.
	* Can challenge solo players or small groups depending on rank and size.
	* Visible on minimap or via world alerts for players to prepare.

	10.3 Cross-Faction NPC Group Conflicts

* NPC groups from opposing factions may fight each other independently.
* Players can intervene :
	* Assist one faction to gain reputation or loot.
	* Exploit conflicts to farm easier kills or ambush weakened survivors.
* Group behavior includes:
	* Aggro prioritization : Factions attack enemies first, then players.
	* Territory control influence : Contested areas may spawn stronger groups if conflicts are unresolved.

	10.4 Rare/Unique Mechanics for Optional Groups

* Taming or Capture : Some groups include rare monsters that can be tamed or captured for mounts or pets.
* Environmental synergy : Some groups can manipulate the terrain or weather to affect combat, e.g., a water group creating puddles to slow players or a fire group 
igniting terrain.

	10.5 Miscellaneous Enhancements

* Roaming patrol buffs : Certain groups gain buffs if they patrol specific areas without interruption.
* Linked abilities : Optional mechanics for synchronized attacks when multiple group leaders are present.
* Event-triggered enrage : Groups can escalate in difficulty if fights drag on too long.

---
