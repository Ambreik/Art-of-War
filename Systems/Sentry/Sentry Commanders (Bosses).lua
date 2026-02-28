			Sentry Commanders (Bosses)

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

---

	1 DENDERA CONTINENT

* Dravenhold — "High Cleric Harjunn"

	A once-holy priest corrupted by divine despair. Harjunn now channels sacred energy into destructive light, burning both flesh and spirit.

* Element : Holy 
* Abilities : Radiant Burst, Purge Barrier, Divine Nova, Prayer of Ruin.
* Special Trait : Can resurrect fallen sentries once per battle.

---

	1.1 FANTHE’KAR CONTINENT

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

	1.2 GARLAND CONTINENT

* Bayswick — "Rootborn Protector Vaelthorn"

	A colossal guardian of ancient forests who turned against life itself. His vines ensnare and his roots crush the weak.

* Element : Nature / Earth
* Abilities : Entangling Thorns, Barkskin, Groundquake.
* Special Trait : Absorbs life from nearby plants or summoned creatures to heal himself.
* Special Trait : Absorbs energy from corpses of fallen players to regen his life.

---

	2. ZONEN CONTINENT

* Dreadhollow Fortress — "High Cleric Harjunn" (Mirror)

	Twin manifestation of the Dravenhold Commander. Same abilities, but empowered by darkness instead of light.

* Element : Shadow / Light
* Abilities : Shadow Nova, Blessing of Sorrow, Mirror of Faith.
* Special Trait : Gains power when players die near him.

---

	2.1 WASTELANDS CONTINENT

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

	2.2 ASKANIA CONTINENT

* Fortress of Eldergate — "Vaelthorn the Rootborn" (Mirror)

	The corrupted heart of nature reborn among stone.

* Element : Nature / Poison
* Abilities : Toxic Sap, Thorn Wall, Root Maelstrom.
* Special Trait : Drains stamina from nearby players over time.

---

	3 MIDDLEAN ISLANDS : 

* Capital City — "The Abyssal Warden of Tides - Greatus Kraken"

	A colossal kraken emerging from the ocean depths, heralded by the "Nymphs of the Sea" (Sentry Champions).

* Element : Water / Lightning
* Abilities : Maelstrom Vortex, Leviathan’s Grasp, Storm Surge.
* Special Trait : Can drag players underwater, stunning them for 10 seconds.
* Spawn Zone : Harbor area in the water (not inside city center).

---

	4. OUTLAND TERRITORIES : 

	4.1 AARONG FOREST : 
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

	4.2 FROZEN TERRITORY

* Frozen Territory, second region : Alaskia (Area I) : Icywoods (subArea I) : Frozenwall Citadel : — "Ser Rhaegor the Crossed Knight"
	A fallen paladin encased in ice, wielding two blades that burn with frostfire.

* Element : Ice / Light
* Abilities : Frostbrand, Judgment of Winter, Blade Cyclone.
* Special Trait : Gains damage reflection shield at 50% HP.

* Frozen Territory, second region : Winterspring Peaks (Area II) : Bloodrock Peak (subArea I) : Arnhold — "Azhira the Frostbinder"
	A master of glacial magic who commands storms and conjures icy clones.

* Element : Frost / Arcane
* Abilities : Frost Nova, Mirror Storm, Ice Prison.
* Special Trait : Can freeze healing effects temporarily.

* Frozen Territory, second region : Highland (Area III) : Snowfall Plains (subArea I) : Windstorm — "Vyrnax the Frostwyrm"
	A colossal frost dragon whose wings bring blizzards and despair.

* Element : Frost / Wind
* Abilities : Blizzard Breath, Frozen Dive, Arctic Howl.
* Special Trait : Reduces movement speed of all players by 50% during flight phase.

---

	4.3 LAGOOMA JUNGLE

* Lagooma Jungle, third region : Riverlands (Area I) : Silvermoon City — Abalah, the Jungle Matriarch
	A serpentine goddess of rot and renewal. She commands flora and fauna alike in battle.

* Element : Nature / Poison
* Abilities : Spore Burst, Venomous Embrace, Jungle Wrath.
* Special Trait : Summons jungle beasts periodically to aid her.

*Lagooma Jungle, third region : Ambra Woods (Area II) : Coastal City — "Tanira the Tideblade"
	A warrior spirit infused with oceanic essence. Graceful yet deadly.

* Element : Water / Wind
* Abilities : Wave Crash, Cyclone Dash, Siren’s Echo.
* Special Trait : Evades the first lethal hit automatically every 60 seconds.

---

	4.5 TENEBRESS TERRITORY

* Tenebress Territory, forth region : Tellanar (Area I) : Osidian Forest (subArea I) : Berlang Fortress — Oozeth the Corruptor
	A sentient sludge made from the remains of fallen sentries.

* Element : Shadow / Fire
* Abilities : Acid Pool, Sludge Explosion, Corrosive Grip.
* Special Trait : Splits into two smaller versions at 50% HP.

* Tenebress Territory, forth region : Ashen Hills (Area II) : Vanguard Outpost — "Pyrrion the Ashborn"
	A fiery phoenix-like entity, reborn through its own flames.

* Element : Fire / Light
* Abilities : Immolation, Flame Dive, Phoenix Rebirth.
* Special Trait : Revives once per encounter with 30% health.