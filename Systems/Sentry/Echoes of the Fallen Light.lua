			Echoes of the Fallen Light
			
---

	1.1. Introduction

	The "Sentry System" is a global world mini-event designed to simulate large-scale settlement sieges across multiple regions of the world. It serves as a dynamic
test of defense, cooperation, and endurance for players and NPCs alike.

	The Sentries represent a mysterious and disciplined military force that periodically emerges from unknown dimensions to test the strength of the world’s 
civilizations. These invasions are not random occurrences but manually initiated by "Game Administrators" to ensure balanced deployment and proper world 
synchronization.

	When a "Sentry Event" begins, an announcement is broadcast globally, alerting all players across the entire world map. This notification provides details about 
the region, settlement name, and ongoing threat, allowing nearby and distant adventurers to mobilize and travel toward the siege location to assist in the defense 
effort.

---

	1.2. Purpose and Role in the World

	The Sentry System is designed to:

* Strengthen world immersion by allowing settlements and NPCs to experience real sieges.
* Encourage large-scale cooperation between players, factions, and local NPC defenders.
* Provide scalable challenge content that can be adapted to any player population or region difficulty.
* Create economic and social impacts through area corruption, NPC shutdowns, and reward systems.
* Offer reputation and progression opportunities by defending specific settlements or saving NPCs during attacks.

	Each invasion has a lasting footprint on the world. Victories inspire hope and bring rewards, while defeats bring corruption and despair — influencing the 
living environment and players’ relations with the world itself.

---

	1.3. Administrative Control and Activation

* Event Type : Manual World Event (Admin-triggered only)
* Activation Method : Admin selects a region, settlement, or neutral area, and initializes the Sentry System via event control panel or command line.
* Warning Message : Global broadcast visible to all players in the world:

  > "⚠ The Sentries have begun their march! <SettlementName> in <RegionName> is under siege! All capable defenders, rally to arms!"

* Event Marker : Once active, the settlement becomes flagged on the world map with a pulsating red "⚔" icon indicating "Active Siege".
* Player Tracking : Players entering the event radius automatically receive a “Defender” tag, linking their participation and contribution to the event log.

---

	1.4. Event Scale and Duration

	Each event is scaled based on the region tier :

* Starting Continents : 3 waves maximum + Boss spawn.
* Capital City (Middlean Islands) : 5 waves of invasion + Boss spawn.
* Outland Territories : Extended and high-difficulty invasion waves.
* For every wave its takes up to 15 minutes for next wave to spawn.

	Duration may vary depending on the resistance of players and local defenses but typically lasts between 45 and 90 minutes before resolution or corruption.

---

	1.5. Event Resolution Summary

* Victory : Players successfully repel all waves before the boss reaches the settlement’s center or defeat the boss in time.
* Defeat : The settlement falls, corruption spreads, and the land becomes unusable for a limited period.

	Every event outcome alters the region’s atmosphere, economy, and reputation. Local NPCs react dynamically based on whether the invasion was repelled or 
succeeded.

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

		2. NPC GROUP STRUCTURE

	Overview : 

	The Sentry invasion is organized in four tactical tiers. Each tier has a clear battlefield role and specific AI behavior. Sentries adapt to defender numbers, 
player levels, local NPC guardians, and regional difficulty. In "Outland Territories" the event can scale up to Cataclysm difficulty; starting-continent settlements
receive weaker variants by design.

---

	Tier I — Sentry Scouts (Recon / Harassment)

	"Sentry Scouts" are light, fast units sent first to probe defenses and sow chaos. They test patrol patterns, bait defenders into poor positions, and mark high-
value targets.

• Combat profile: low health, low single-target damage, very high movement.
• Behavior: use hit-and-run tactics, briefly disable mounted players, harass market stalls and non-combat NPCs.
• Team mechanic: when multiple Scouts operate together they create a temporary "Recon Network", improving their evasion and enabling short stealth bursts for 
repositioning.
• Purpose: force defenders to split attention and reveal strong players or guard placements.

---

	Tier II — Sentry Soldiers (Main Battle Force)

	"Sentry Soldiers" form the bulk of the assault. They come in three archetypes — Melee, Ranged, Mage — each with distinct resources and synergies.

Melee Soldiers
• Role: frontline disruption and soak. Heavy armor, straightforward aggression.
• Group mechanic: when three or more melee soldiers stand together they generate a "Reflective Barrier" that can return up to 25% of received damage back to 
attackers.
• Behavior: press gates and guard positions, focus on clustering defenders to enable Soldier synergies.

Ranged Soldiers
• Role: agile harassment and single-target pressure from distance.
• Resource: have an "Energy bar" (separate from health). Energy fuels special abilities (rapid volleys, poison shots, short teleports). Energy regenerates on a 
short cooldown and is spent to spam abilities.
• Behavior: kite melee threats, prioritize healers/players with high regeneration, use CCs such as stun/knockback.
• Damage types and small DoTs follow the region’s affinity (e.g. poison in jungle, fire in Tenebress).

Mage Soldiers
• Role: area control, elemental pressure and battlefield sustain.
• Resource: have a "Mana bar" used to cast spells, heal allies, and create control zones. Mana is consumed by spells and regenerates over time or via local mana 
conduits.
• Special: mages can heal nearby sentries for small health portions using mana. They can also cast shields that reduce melee damage while making them more 
vulnerable to AoE.
• CCs: blind, root, sleep, fear; rare polymorph attempts.
• Polymorph mechanic: if a player survives more than 2 minutes while polymorphed by a Mage, that player has a chance to gain the "passive skill Polymorph" 
(a permanent passive earned from surviving the effect).
• Behavior: hold strategic positions, protect champions and commanders with heals and defensive wards.

---

	Tier III — Sentry Champions (Elite Sub-Bosses)

	"Champions" are elite sub-bosses that are spawned with the last wave, as major assault wave. They are tougher and have signature mechanics 
(heavy CCs, area effects) and often lead smaller escort groups.
	Champions porpose is to reach the center of the settlement and cast a summoning stone that will be used to open a gate for the Boss and from the same summoning 
stone, all the corruption will spread throughout the settlement.

• Combat profile: high health, powerful abilities, specialized CCs (stun, knockback, daze, slowdown).
• Behavior: execute wave-level mechanics (e.g., summon adds, create corruption pools, interrupt player healing flows).
• Reward/impact: defeating a Champion grants "Emblems of Sentries" and "PvP points" to participants and signals the approach of the Commander if defenders hold long
enough.

	Champions are generic named elites tied to their region (forest guardians, desert brutes, frost lords, sea heralds, etc.). They are not the region Commanders — 
the Commanders are the named bosses listed below.

---

	Tier IV — Sentry Commanders (Bosses)

	"Commanders" are the true invasion leaders — the boss encounters. They spawn only after champion waves are defeated or if the settlement is overrun. Each 
Commander is a unique, named entity. Commanders are the only NPCs in the Sentry script that carry the special legendary boss mechanics and can create a persistent 
"corruption" effect in the settlement if they succeed.

Commander traits and behavior :
• Massive health pools and advanced AI that adapts to defender count.
• High Defence towards melee and magic attacks.
• Can summon reinforcements, deploy corruption zones, or project city-wide debuffs.
• Spawn point: typically the main gate; Capital City’s boss spawns from the sea near the docks.
• If a Commander successfully corrupts a settlement for the required time threshold, a persistent Corruption debuff affects that settlement (see event rules), 
shutting down NPC services and halting spawns until the curse fades or players cleanse it.

---

	Dynamic scaling & special rules

• Outland Territories : invasions here scale far higher — greater NPC counts, higher stats and Cataclysm difficulty possible.
• Starting continents / starter cities : invasions are toned down so starting players can participate without impossibility.
• Capital City : unique sea-boss mechanic (Kraken) — not Cataclysm by default; Outland is the Cataclysm target.
• NPC resources : Mages use Mana (drives heals and spells); Ranged use Energy (burst abilities); both resources are visible under their health bars and managed by 
their combat AI.
• All sentries can be killed. Even those normally flagged as untargetable by other systems can be removed during the event.
• Reward mechanics and corruption / debuff specifics are handled by the event script (Emblems, PvP points, EXP increments as previously defined).

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

	Section 3 — Sentry Commanders (Bosses)

	"Sentry Commanders" are the apex entities of the invasion force — powerful, intelligent leaders who embody the will of the "Sentry Legion".
	Each one manifests differently depending on the invaded region, adapting their form, element, and abilities to the local environment.
	They emerge only after the Sentry Champions are defeated or when the settlement is overrun by the invaders.
	Defeating a Commander marks the successful defense of the settlement; failure results in full Corruption of the area.

---

	3.1 DENDERA CONTINENT

* Dravenhold — "High Cleric Harjunn"

	A once-holy priest corrupted by divine despair. Harjunn now channels sacred energy into destructive light, burning both flesh and spirit.

* Element : Holy 
* Abilities : Radiant Burst, Purge Barrier, Divine Nova, Prayer of Ruin.
* Special Trait : Can resurrect fallen sentries once per battle.

---

	3.2 FANTHE’KAR CONTINENT

* Goldcap Town — "Serq’ath the Sand Empress Scorpion"

	Once a queen of desert, Serq’ath commands venomous minions and stinging winds that flay skin from bone.

* Element : Earth 
* Abilities : Venom Swarm, Sandstorm Veil, Bursting Carapace.
* Special Trait : Creates mirage duplicates that confuse both players and NPCs.

* Southern Abyll Town — Urtokh the Desecrated

	A plague-born warlord forged from corruption itself. His decayed armor drips with unholy blood that burns the ground.

* Element : Decay / Fire
* Abilities : Blighted Smash, Infernal Blood, Unholy Breath.
* Special Trait : Damages the terrain around him, leaving "Burning Zones" that persist for 30 seconds affecting with fire.

---

	3.3 GARLAND CONTINENT

* Bayswick — "Rootborn Protector Vaelthorn"

	A colossal guardian of ancient forests who turned against life itself. His vines ensnare and his roots crush the weak.

* Element : Nature / Earth
* Abilities : Entangling Thorns, Barkskin, Groundquake.
* Special Trait : Absorbs life from nearby plants or summoned creatures to heal himself.
* Special Trait : Absorbs energy from corpses of fallen players to regen his life.

---

	3.4 ZONEN CONTINENT

* Dreadhollow Fortress — "High Cleric Harjunn" (Mirror)

	Twin manifestation of the Dravenhold Commander. Same abilities, but empowered by darkness instead of light.

* Element : Shadow / Light
* Abilities : Shadow Nova, Blessing of Sorrow, Mirror of Faith.
* Special Trait : Gains power when players die near him.

---

	3.5 WASTELANDS CONTINENT

* Tandara City — "Serq’ath the Sand Empress Scorpion" (Mirror)

	Her twin entity rises again, thriving under heat and dust.

* Element : Earth / Fire
* Abilities : Firestorm Lunge, Blazing Mirage, Ashen Venom.
* Special Trait : Regenerates rapidly when standing on scorched ground.

* Strongfield Castle — "Urtokh the Desecrated" (Mirror)

	Returned from the ashes of war, more feral and unstable.

* Element : Fire / Shadow
* Abilities : Burning Maul, Rotwave, Shattered Soul.
* Special Trait : On death, explodes in a massive fiery shockwave.

---

	3.6 ASKANIA CONTINENT

* Fortress of Eldergate — "Vaelthorn the Rootborn" (Mirror)

	The corrupted heart of nature reborn among stone.

* Element : Nature / Poison
* Abilities : Toxic Sap, Thorn Wall, Root Maelstrom.
* Special Trait : Drains stamina from nearby players over time.

---

	3.7 MIDDLEAN ISLANDS : 

* Capital City — "The Abyssal Warden of Tides - Greatus Kraken"

	A colossal kraken emerging from the ocean depths, heralded by the "Nymphs of the Sea" (Sentry Champions).

* Element : Water / Lightning
* Abilities : Maelstrom Vortex, Leviathan’s Grasp, Storm Surge.
* Special Trait : Can drag players underwater, stunning them for 10 seconds.
* Spawn Zone : Harbor area in the water (not inside city center).

---

	3.8 OUTLAND TERRITORIES : 

	Aarong Forest : 
* Ancient City of Sankis — "The Eternal Legion" (Most Complex Script)

	An elite tri-phase event involving multiple Commanders working together — the only multi-boss Sentry invasion.

* Elements : Mixed (Nature / Poison / Shadow)
* Phases :

  1. Scouts & Soldiers : continuous reinforcement waves.
  2. Tri-Champions : rotating leadership switching elemental buffs.
  3. Tri-Commanders : three Commanders spawn simultaneously — one per element.
* Special Trait : If not defeated in 25 minutes, the city becomes permanently corrupted for 4 hours instead of 2.

* Banham — "Ironhoof the Ravager"

	An ancient minotaur forged in molten steel, wielding an obsidian warhammer.

* Element : Wind / Earth
* Abilities : Tremor Slam, Fiery Charge, Earthbreaker Roar.
* Special Trait : Immune to knockbacks; enrages when health falls below 30%.

---

	3.9 FROZEN TERRITORY

* Frozenwall Citadel — "Ser Rhaegor the Crossed Knight"
	A fallen paladin encased in ice, wielding two blades that burn with frostfire.

* Element : Ice / Light
* Abilities : Frostbrand, Judgment of Winter, Blade Cyclone.
* Special Trait : Gains damage reflection shield at 50% HP.

* Arnhold — "Azhira the Frostbinder"
	A master of glacial magic who commands storms and conjures icy clones.

* Element : Frost / Arcane
* Abilities : Frost Nova, Mirror Storm, Ice Prison.
* Special Trait : Can freeze healing effects temporarily.

* Windstorm — "Vyrnax the Frostwyrm"
	A colossal frost dragon whose wings bring blizzards and despair.

* Element : Frost / Wind
* Abilities : Blizzard Breath, Frozen Dive, Arctic Howl.
* Special Trait : Reduces movement speed of all players by 50% during flight phase.

---

	3.10 LAGOOMA JUNGLE

* Silvermoon City — Abalah, the Jungle Matriarch
	A serpentine goddess of rot and renewal. She commands flora and fauna alike in battle.

* Element : Nature / Poison
* Abilities : Spore Burst, Venomous Embrace, Jungle Wrath.
* Special Trait : Summons jungle beasts periodically to aid her.

* Coastal City — "Tanira the Tideblade"
	A warrior spirit infused with oceanic essence. Graceful yet deadly.

* Element : Water / Wind
* Abilities : Wave Crash, Cyclone Dash, Siren’s Echo.
* Special Trait : Evades the first lethal hit automatically every 60 seconds.

---

	3.11 TENEBRESS TERRITORY

* Berlang Fortress — Oozeth the Corruptor
	A sentient sludge made from the remains of fallen sentries.

* Element : Shadow / Fire
* Abilities : Acid Pool, Sludge Explosion, Corrosive Grip.
* Special Trait : Splits into two smaller versions at 50% HP.

* Vanguard Outpost — "Pyrrion the Ashborn"
	A fiery phoenix-like entity, reborn through its own flames.

* Element : Fire / Light
* Abilities : Immolation, Flame Dive, Phoenix Rebirth.
* Special Trait : Revives once per encounter with 30% health.

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

		4. EVENT MECHANICS

	The "Sentry System" operates as a controlled world event initiated manually by administrators. It represents a sudden, coordinated assault by the Sentry Legion 
on a chosen settlement — an event meant to test player cooperation, settlement defenses, and regional readiness.
	Every invasion is localized but globally announced, ensuring that all players in the realm are aware and can join the defense efforts.

---

	4.1 Activation Phase

	The event is started manually by an admin through the console command `/event sentry_start [region] [location]`.
	Once triggered, the following sequence begins:

* Global Alert Message :
  "⚔️ *Sentry Forces have been detected approaching [Settlement Name]! All capable defenders, rally to the city gates!*"

* World Horns :
	A distinctive audio cue echoes across all connected maps, alerting players regardless of distance.

* Spawn Initialization :
	The invasion script automatically loads the correct Sentry composition, Commander identity, and spawn pattern based on:
		* The continent and region tier selected (starting, mid, or advanced zone).
		* The settlement’s difficulty level (scaling by level of that zone).

---

	4.2 Wave Structure

	The Sentry invasion unfolds through progressive waves designed to escalate tension and coordination requirements.

| Location Type              | Wave Count                      | Description                                                                                                                                              |
| ------------------------------ | ----------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| Starting Continents        | Up to 3 waves + Commander spawn | Simplified invasion for new player zones. Wave 1 introduces Scouts, Wave 2 adds Soldiers, Wave 3 includes Champions followed by the regional Commander.      |
| Middlean Islands (Capital)** | 5 waves                         | Massive-scale invasion from multiple entry points. Each wave arrives every 15 minutes**, simultaneously attacking multiple city gates and the harbor.  |
| Outland Territories        | 6+ waves (Cataclysm Difficulty)** | The most complex variant. Multiple spawn camps trigger simultaneously with adaptive AI that scales according to defending player count and total DPS output. |

	Each wave introduces new tactical units or mechanics (e.g., siege engines, ward totems, or healing mages) to force strategic adaptation.

---

	4.3 Wave Stacking

	If defenders fail to clear a wave within its timer window, the next wave stacks on top of the existing one.
	This creates an escalating compound threat effect — overwhelming settlements if coordination breaks down.

* Unfinished waves merge into subsequent spawns, increasing the number of active enemies.
* The Commander will spawn earlier than scheduled if the third wave overlaps with the fourth.
* Each stacked wave increases enemy morale, granting Sentries +10% damage and +5% defense for the remainder of the invasion.

	If three consecutive waves stack, a Settlement Overrun state begins (see below).

---

	4.4 Settlement Neutralization

	When a neutral zone settlement (not belonging to any faction) is chosen for a Sentry assault:

* PvP combat is automatically disabled for the next 60 minutes, ensuring both factions can cooperate.
* Players from all factions receive a temporary alliance flag named "Unified Defense."
* If the invasion is successfully repelled, both factions gain shared Reputation Points with the *Defender’s Union* 
(a future global faction linked to cooperative defense).
* In case of failure, both factions lose 1% of their faction-wide settlement defense rating for the next global event cycle.

---

	4.5 Temporary Mount & Flight Permissions

	During a Sentry siege, the usual mount restrictions are temporarily lifted for the duration of the event.

* Players may summon ground or flying mounts even in areas where such activity is normally prohibited (e.g., city centers, outposts).
* Mount usage is allowed for mobility, scouting, and repositioning, but combat bonuses from mounts are disabled to maintain fairness outside the wilderness.
* A timer automatically revokes flight access 10 minutes after the event ends.

---

	4.6 Settlement Overrun Condition

	If players fail to repel all waves or if the Commander remains undefeated for 20 minutes after spawning:
* The settlement enters a "Corrupted State."
	* All NPCs vanish.
	* City banners and guards are replaced with Sentry flags and corrupted sentinels.
	* A dark weather effect or environmental aura engulfs the area.
* The Corrupted State lasts for:
	* 2 hours for standard regions.
	* 4 hours in Outland Territories (Cataclysm difficulty).

---

	4.7 Defense Rewards (Summary Overview)

	Defenders who participate in the event receive tiered rewards based on contribution and outcome:

| Outcome                                                    | Reward Type                                     | Examples                                                |
| -------------------------------------------------------------- | --------------------------------------------------- | ----------------------------------------------------------- |
| Victory (All Waves Cleared)**                                | Regional Defense Crate + Gold + Faction Reputation  | “Defender’s Token”, “City Guard Emblem”, crafting materials |
| Partial Victory (Commander Defeated, Settlement Corrupted)** | Reduced rewards, bonus XP                           | “Restoration Supplies”, bonus XP, minor rep increase        |
| Failure (Settlement Lost)**                                  | Minimal compensation, access to Counter-Quest chain | “Remnant Cache”, 1 Defense Mark                             |

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

	5. CORRUPTION & CURSE PHASE

	The "Corruption Phase" represents the catastrophic aftermath of a failed Sentry defense — when the invading forces successfully breach the settlement’s heart 
and the Commander establishes a foothold within.
	It is both a mechanical penalty for defenders and a world-state transition that visually and functionally alters the environment.

---

	5.1 Trigger Condition

	If the "Sentry Commander" (Boss) survives and remains within the settlement for 20 minutes after spawning, the "Corruption Rock" ritual begins.

* Upon activation, the Commander channels energy into the ground, summoning a towering Corruption Rock at the settlement’s central point 
(or water surface near the port for coastal/Capital locations).
* The Corruption Rock emits pulsating waves of dark energy, signifying the spread of corruption.
* Any surviving Sentry units in the settlement gain a "Defiler’s Aura", increasing their damage and health regeneration by 15% as they guard the growing corruption 
zone.

	If the Commander is defeated before the 20-minute mark, the corruption ritual is aborted, and the settlement is spared.

---

	5.2 Corruption Spread Dynamics

	Once the Corruption Rock is fully formed, the settlement enters the Corrupted State.

	The corruption expands outward in a circular radius over 2 minutes, engulfing the entire settlement and slightly spilling into adjacent wilderness or roads. 
During this spread:

* The skybox and lighting change to a dim, reddish hue with drifting ash and shadow particles.
* The settlement banners burn or disintegrate, replaced by Sentry insignias and corrupted sigils etched into the ground.
* Background music transitions to a low, ambient hum accompanied by faint whispering sounds.
* The Corruption Rock continues to pulse periodically, visually syncing with the curse debuff timer on players.

---

	5.3 Corruption Effects

	When corruption fully engulfs the settlement, the following gameplay and world effects are applied:

1. NPC Displacement :
	* All functional NPCs (vendors, trainers, guards, bankers, auctioneers, quest givers, etc.) vanish from the map.
	* Attempting to interact with their normal spawn positions yields the message:

     > “The corruption has consumed this soul.”

2. Spawn Suppression :
	* All monsters and NPCs within the affected radius cease spawning**.
	* Defeated monsters in the area do not respawn for 2 hours**, even if new players enter the zone.
	* Patrols and event NPCs outside the corruption radius remain unaffected.

3. Environmental Hostility :
	* Ambient corruption periodically inflicts minor damage-over-time (1% HP every 15 seconds) to all living players in the settlement center.
	* Sentry remnants may continue to spawn in reduced frequency around the Corruption Rock, acting as "Corrupted Defenders".

4. Curse Application — "Curse of the Fallen Light" : 
	All players who were present in the area at the moment the event began are automatically afflicted with a unique, temporary debuff.

	Curse of the Fallen Light
	"The light of hope fades... all efforts yield nothing."

   Effects :
	* ❌ No EXP gain (combat, quest, or exploration)
	* ❌ No gold or item drops from any source
	* ❌ No quest completion rewards
	* ❌ Gathering professions yield no materials
	* ❌ Reputation gains are halted

	This curse persists for the duration of the corruption (2-4 hours) and cannot be cleansed by players, priests, or guild shrines.

---

	5.4 Strategic Consequences

* The settlement becomes non-operational — players cannot use its services, fast-travel points, or teleportation shrines.
* Guilds that had control over the settlement lose 5% of local tax income and 1 Rank of Settlement Reputation.
* Faction presence in the region is marked as "Defeated" on the world map, appearing with a dark, cracked emblem.

---

	5.5 Restoration Phase — Blessing of Renewal

	After 2-4 hours, the corruption gradually subsides through a global cleansing event known as the "Blessing of Renewal".

* The Corruption Rock fractures and collapses into dust.
* A surge of luminous energy radiates across the settlement as vegetation regrows and sky color returns to normal.
* All standard NPCs reappear at their original locations.
* The Curse of the Fallen Light is automatically lifted from all affected players.
* A brief global message appears:

  > "🌿 *Nature’s grace restores what was lost. The corruption fades from [Settlement Name]."

	Once restoration is complete, the settlement resumes normal operation, and all cooldowns for its services are reset.

---

	5.6 Post-Corruption Event Hook

	After the corruption is cleansed, a special NPC Vendor spawns temporarily (for 30 minutes) at the settlement’s central square:

* Named: "Keeper of Renewal"
* Type: Event Vendor
* Offers:
	* Cosmetic rewards symbolizing the battle (titles, emotes, banners)
	* "Remnant of Corruption" crafting materials (used in advanced alchemy or cursed weapon crafting)
	* A short lore dialogue describing the battle’s legacy

	Players who contributed during the original invasion receive discounts and exclusive items.

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

	6. PLAYER REWARDS

	The "Sentry Invasion" rewards players dynamically based on their participation, contribution, and proximity during critical combat moments.
	Every player, regardless of class or level, can contribute to the defense effort and receive fair compensation proportionate to their actions.

	Rewards are distributed instantly upon each qualifying action and are tracked individually, ensuring no player is left unrewarded due to party or raid grouping.

---

	6.1 Reward Table

| Action                     | EXP Gain | Silver | PvP Points | Emblem of Sentries | Notes                                                          |
| -------------------------- | -------- | ------ | ---------- | ------------------ | -------------------------------------------------------------- |
| Kill Sentry Scout          | +0.2%    | 5s     | +1         | +1                 | Basic enemy kill reward. Low risk, early engagement.           |
| Kill Sentry Soldier   	 | +0.2%    | 10s    | +1         | +1                 | Standard wave combatant reward.                                |
| 20k Damage to Champion	 | +0.05%   | 2s     | +2         | +1                 | Scales with contribution. Repeatable per 20k damage dealt.     |
| Champion Kill (Nearby)** 	 | +1%      | 5s     | +2         | +2                 | Granted to all players in a wide radius upon Champion death.   |
| 35k Damage to Boss  	     | +0.1%    | 3s     | +0         | +1                 | Reward per 35k damage dealt. Repeatable.                       |
| 55k Damage to Boss    	 | —        | —      | +2         | —                  | PvP bonus for heavy damage contribution.                       |
| Boss Kill (Nearby)**       | +1%      | +1G    | +10        | +5                 | Only awarded to players dealing ≥25k total damage to the boss. |

---

	6.2 Emblem of Sentries

Item Type : "Event Currency"
Bind : Account-bound
Description :

> “A mark of defiance against the Sentry Legions. Collected from the fallen invaders to prove one’s valor.”

Uses :
* Can be exchanged at the Keeper of Renewal (Event Vendor) once the invasion concludes.
* Purchasable items include:
	* Cosmetic Rewards : event banners, city defense titles, and emotes.
	* Consumables : Sentry Elixirs (temporary stat buffs).
	* Utility Items : repair kits, recall scrolls, or unique crafting materials.

---

	6.3 Participation and Contribution Logic

	To ensure fairness across various player levels and builds:

* Proximity Rewarding :
	Any player within a specific radius of the Champion or Commander upon death receives radius-based completion rewards.
		* Standard radius: 60 meters (Champions)
		* Reduced radius: 40 meters (Boss Commanders)

* Damage Threshold Check :
	Players must deal at least 25,000 total damage to the boss to qualify for death rewards.
	Support classes (Healers, Buffers, Controllers) are rewarded through Support Contribution Points, counted toward PvP Points and EXP bonuses.

* Event Currency Sharing :
	"Emblems of Sentries" are not shared automatically between party members. Each player earns their own tally.

---

	6.4 Special Settlement Victory Bonuses

	If players successfully defend the settlement by defeating the "Sentry Commander" before the 20-minute corruption phase:

* Global Reward Message :

  > "⚔️ *The defenders of [Settlement Name] have triumphed! The Sentry Legions retreat in defeat."

* Victory Buffs (2-hour Duration) :
	* +20% EXP from all sources
	* +15% gold and item drop rate
	* +5% reputation gain with all local NPCs

* Local NPC Reaction :
	* Settlement NPCs unlock special victory dialogue and emotes for players who participated.
	* Guards salute, vendors cheer, and trainers offer minor discounts for 24 hours.

* Titles :
	* "Defender of [Settlement Name]" — earned by all contributors.
	* "Hero of the Walls" — awarded to top 10 contributors in the event ranking.

---

	6.5 Penalties for Cowardice

	Players who refuse to engage in the defense (i.e., deal no damage or provide no support actions during the invasion or traveling outside of the area) receive 
the debuff:

> "Mark of Dishonor" — 12-hour duration
> "Your cowardice is remembered by those who fell in battle."

Effects :
* All settlement services (shops, trainers, vendors) are locked.
* Local reputation decreases by one rank.
* Cannot access the next Sentry defense reward table until the penalty expires.

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

	7. NPC INTERACTION DURING EVENT

	The "Sentry Invasion" does not only affect players — the entire settlement, from guards to merchants, rallies to defend their home. During this event, even the 
most peaceful NPCs take up arms, creating a living battlefield where citizens and soldiers fight side by side.

---

	7.1 Defensive Activation

	Once the invasion is triggered:

* All combat-capable NPCs (guards, sentinels, city watchmen, and defensive constructs) spawn automatically at key points such as city gates, walls, and central 
plazas.

* Civilian NPCs (vendors, trainers, innkeepers, etc.) enter combat mode, using basic attacks or improvised weapons, depending on their lore background.
	* Example: A Blacksmith may hurl heated metal or swing a hammer.
	* Example: A Mage Trainer casts low-tier offensive spells.
	* Example: A Farmer throws rocks or pitchforks with improvised animation.

* Some important NPCs (such as Quest Givers, Trainers, or Legendary Artisans) remain behind barriers or inside protected buildings, but can be targeted and killed 
if the settlement is breached.

---

	7.2 NPC Combat Logic

	NPC Rank determines their power level and behavior :

| NPC Type                    | Behavior                                              | Notes                                                        |
| --------------------------- | ----------------------------------------------------- | ------------------------------------------------------------ |
| Guards / Soldiers     	  | Standard patrol defense, forming frontlines at gates. | Auto-respawn every 3 minutes unless Corruption Phase begins. |
| Trainers / Vendors      	  | Defend with profession-themed abilities.              | Can be killed during siege; respawn after event reset.       |
| Profession Teachers    	  | Use craft tools or element-based support magic.       | Buff nearby players for +2% stats when engaged near them.    |
| Tavern Keeper & Bankers 	  | Provide morale buffs or emergency healing zones.      | Cannot move; heal allies within 20m radius every 30 seconds. |

	During the siege, all NPCs that are found in the settlement will have a spawn timer of 15 seconds.
	Guards will have extra backup that will defend the streets, main buildings or important NPCs in the settlement.
	
---

	7.3 Guard Reinforcements

* Guard reinforcements spawn dynamically depending on the event’s wave stage:
	* Wave 1–2 : Local militia guards.
	* Wave 3 : Veteran Guards and Elite Archers.
	* Commander Stage : Royal Defenders or Sentinel Champions appear near the gates.
* Reinforcements arrive with horns and rally shouts, adding immersion and tension to the siege.

	If all guards are defeated, the Sentry Commander’s forces advance directly toward the city core.

---

	7.4 Banner of Encouragement

	During the event, "Guild Leaders" receive (or have a random chance to receive) the "Banner of Encouragement" — a morale-boosting relic usable only during a 
"Sentry Invasion".

| Item Name                   | Type          | Duration   | Effect                                               | Notes                                          |
| --------------------------- | ------------- | ---------- | ---------------------------------------------------- | ---------------------------------------------- |
| Banner of Encouragement 	  | Event Utility | 10 minutes | +5% to all stats for all players and NPCs within 50m | Can be placed once per guild during the event. |

Additional Details :

* The banner can be destroyed by Sentry units, forcing players to defend it.
* Each banner emits a radiant aura and battle music in proximity.
* When placed, the banner grants all allied NPCs a short morale boost called "Stand United!", increasing their attack speed by +10% for siege duration.
* Guilds can coordinate multiple banners across the settlement for overlapping buffs.

---

	7.5 Victory & Aftermath

	Upon successful defense of the settlement:

* All NPCs return to normal routines after a short cheering phase.
	* Vendors open their stalls again.
	* Guards salute players in the streets.
	* Tavern Keepers offer special celebratory dialogue and discounted drinks.

* A temporary event vendor, the "Sentry War Vendor", spawns in the settlement’s main plaza for 2 hours**.

| NPC Name              | Title             | Role                                                                                | Availability                   |
| --------------------- | ----------------- | ----------------------------------------------------------------------------------- | ------------------------------ |
| Sentry War Vendor 	| Defender of [Settlement Name] | Trades Emblems of Sentries for limited event goods, consumables, and cosmetics.| 2 hours after the event’s end. |

	The War Vendor’s inventory resets after each invasion and may include rare event-exclusive items, encouraging recurring participation.

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

	8. SPECIAL MECHANICS

	Once the "Sentry Invasion" begins, all players currently present within the affected area or settlement boundaries automatically receive a "Battle Supply Pack" 
tailored to the region’s tier and difficulty. These consumables are designed to support extended survival and cooperation — but with limited effectiveness to 
maintain challenge and realism.

---

	8.1 Battle Supply Pack Contents

	Each player receives a package containing modified combat resources and event-only items. Potions and consumables have reduced or conditional effects to 
simulate the harsh, chaotic nature of the siege.

| Item Name                      | Description                                             | Effectiveness / Region Scaling                                                                                                                        |
| ------------------------------ | ------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------- |
| Health Potions           	     | Standard healing flasks issued during the siege.        | Healing effectiveness reduced by 30%** during invasion.                | Mana / Energy Potions     	 | Restores caster or stamina pools for physical fighters. | Restores 50% less resource and has a 30% chance to fail**.
| Potent Blood                   | Red alchemical fluid forged for emergencies.            | Fully restores an NPC’s HP. x5 (Starting Regions) - x7 (Middlean Islands — Capital City) - x20 (Outland Territories)
| Potent Spirit Drink       	 | Ancient tonic restoring magical and physical focus.     | Fully restores Mana/Energy. x5 (Starting Regions) - x7 (Middlean Islands — Capital City) - x20 (Outland Territories)                  |
| Strong Potent Energy Drink 	 | Rare stimulant brew from Outland.                       | Fully restores an NPC’s HP. x5 (Starting Regions) - x7 (Middlean Islands — Capital City) - x20 (Outland Territories)
| Potent Plant Seva         	 | A concentrated herbal vial distilled from sacred flora. | Small AoE Heal for allies within 12m radius. x5 (Starting Regions)  x7 (Middlean Islands — Capital City)  x20 (Outland Territories) |
| Banner of Encouragement    	 | Symbol of unity and valor.                              | +5% all stats boost for players and NPCs in 50m radius. Only Guild Leaders can use and deploy this item (low drop chance).  

>  All consumables  vanish when the siege concludes.

---

	8.2 Mount Permissions

	During a "Sentry Invasion", mobility restrictions are temporarily lifted to allow players to traverse the area and assist other gates more efficiently.

| Mount Type        | Event Status                                                                 |
| ----------------- | ---------------------------------------------------------------------------- |
| Ground Mounts	    | Enabled, even in normally restricted settlements.                            |
| Flying Mounts 	| Enabled only during invasion and disabled again once the event ends.         |

	This flexibility encourages cross-zone cooperation and rapid reinforcement.

---

	8.3 Combat & PvP Rules

* PvP is completely disabled during the "Sentry Invasion" within the affected settlement or neutral area.
* Both factions must stand together against the invaders, fostering cooperation instead of competition. This its only the case in the neutral areas.
* Any attempt to initiate player combat during the event is automatically blocked, and skills targeting friendly players are redirected to enemies.

---

	8.4 Penalty for Refusal

	Players present within the invaded area who refuse to participate — meaning they neither deal nor receive damage for more than 10 minutes after the invasion 
starts or just simply travel outside the area event — receive the debuff:

> "Mark of Dishonor" 
> "You turned your back as the world burned."

	Debuff Effects :
* -5% EXP gain 
* -10% item drop rate.
* -10% silver earned from kills or loot.

The debuff remains active even after leaving the invasion zone and serves as a global reminder of neglecting the call to arms.

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

	9. PENALTIES & REPUTATION

	The aftermath of each "Sentry Invasion" leaves lasting consequences — both honorable and shameful.
	Players’ actions during the event directly influence their local reputation, access to NPC services, and even character recognition within that settlement.

---

	Non-Participants

	Those who ignore the invasion, remain idle, or deliberately avoid combat while present within the affected zone are branded with infamy.

Debuff :

> "Mark of Dishonor"  (12h Duration)
> "You stood still as the banners burned. The people will not forget."

Effects :

* NPC Services Locked (Trainers, Vendors, Bankers, etc. will refuse interaction for 12 hours).
* Reputation Penalty : –1 Rank with the local settlement or region faction.
* Visual Indicator : A faint gray mist surrounds the character to mark their shame until the debuff expires.

> This penalty cannot be cleansed or dispelled by any means.

---

	Victory Rewards

	When defenders successfully repel the Sentry invasion, all participating players receive temporary global and local benefits — a reflection of the settlement’s 
gratitude and renewed morale.

	Global Buffs (1 Hour):
* +20% EXP Gain
* +15% Gold & Item Drop Rate

	Social Rewards :
* Local NPCs gain new quotes, animations, and emotes expressing gratitude and admiration.
* Guards and citizens may salute or bow to victorious players for the next 24 hours.
* Players receive the temporary visual aura "Light of Renewal" symbolizing heroism.

	Unique Title Unlock :

> "Defender of [Settlement Name]"
> "You stood when others fell — your courage saved this land."

*This title is permanent and can be displayed beneath the character’s name.*

---