			Magic Detection

	`GAME/Mechanics/Monsters/Magic_Detection.lua`

---

	Definition : Magic Detection is a perception mechanic used by certain monsters that allows them to sense magical presence or active spellcasting within a 
certain radius. Unlike vision or scent-based detection, Magic Detection ignores physical obstacles and focuses on auras, spell charges, or ongoing magical effects.
This makes magic-sensitive monsters particularly dangerous for casters and summoners.

---

	Core Attributes

* Detection Radius :
	* Standard magic-sensitive monsters: ~10–15 units.
	* Elite or boss-level monsters: ~20–30 units.

* Detection Types :
	* Active Casting : Detects players currently casting spells.
	* Magical Aura : Detects players with persistent buffs, auras, or magical items.
	* Summons / Constructs : Can sense magical minions or pets summoned by players.

* Detection Modifiers :
	* Magical wards or items can reduce detection chance or mask auras.
	* Certain environmental zones (magical dampening fields) may nullify detection.

---

	Behavior Mechanics

1. Aggro Trigger :
	* Upon detecting magical activity, monsters may prioritize the caster as their primary target.
	* Can ignore non-magical threats temporarily to pursue magical sources.

2. Pursuit Mechanics :
	* Magic-detecting monsters often ignore obstacles that would normally block LOS, moving through open terrain toward magical sources.
	* Some may employ predictive targeting, anticipating spellcasting positions.

3. Group Synergy :
	* Magic-sensitive monsters can alert nearby allies when a spellcaster is detected.
	* Some elite monsters amplify magical detection for the whole group.

4. Environmental Integration :
	* Areas with residual magic (enchanted zones, magical traps) may increase detection radius or sensitivity.
	* Certain spells cast near the monster can provoke instant reactions (counterspells, magic interrupts).

---

	Counterplay for Players

* Magical Stealth / Anti-Magic Gear :
	* Items or consumables that hide magical aura or reduce the effective detection radius.

* Spell Timing & Positioning :
	* Avoid casting in high-density zones with magic-sensitive monsters.
	* Use line-of-sight or terrain obstacles to temporarily block detection if mechanics allow.

* Distraction & Minions :
	* Summon decoy constructs or place magic traps to draw monster focus away from the caster.

---

	Implementation Notes (DB / AI)

* Database Attributes :
	* `MagicDetectionRadius` – Range of magical sensing.
	* `TargetPriority` – Determines preference for casters, summoned units, or magical items.
	* `EnvironmentalModifiers` – Flags for zones that amplify or reduce detection.

* AI Integration :
	* Periodically scans for magical signatures within the radius.
	* Can combine with LOS or scent tracking for hybrid detection.
	* Group alerts configurable to prevent overwhelming mass aggro.

---
