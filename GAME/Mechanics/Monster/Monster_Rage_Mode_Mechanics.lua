			Rage Mode (Desperation Phase) — Full Mechanic Description

	Definition : Rage Mode is a high-stakes combat state that monsters enter when under severe duress(typically low health, leader defeated, or time-based trigger).
It amplifies aggression, damage, and unpredictability—turning what might have been a predictable fight into a riskier, more chaotic encounter.

	Rage Mode is distinct from "Panic Mode" (which is fear / flight oriented). Rage Mode is the monster doubling down—never retreating voluntarily, often ignoring 
defenses, and becoming more dangerous.

---

	1. Triggers / Activation Conditions

Monsters (or groups) enter Rage Mode when one or more of the following conditions are met:

* Health Threshold : Monster’s HP falls below a specified percentage (commonly 20%–35%, configurable per monster).
* Leader Death : In group fights, when a group leader or elite falls, the remaining monsters may enter Rage Mode.
* Time / Duration Based : For prolonged fights (e.g., exceeding a time limit), monsters escalate into Rage Mode.
* Scripted Events : Some bosses or special monsters have scripted triggers (e.g. absorbing a crystal, crossing a phase threshold).

The thresholds or triggers should be configurable per monster or based on rank/type. For example, a Rank I monster might never have a Rage Mode; Rank V or Boss monsters always do.

---

	2. Effects of Rage Mode

Once Rage Mode is active, monsters gain several mechanical changes. These changes should make the fight more intense and require adaptation by players.

	2.1 Offensive Enhancements

* Increased Attack Speed : Monsters strike more frequently (e.g., +10% to +50% attack rate).
* Damage Multiplier : Damage dealt increases (e.g., ×1.2 to ×2 or more, depending on monster rank).
* Critical / Penetration Boosts : Higher chance of critical hits or ignoring portions of player defenses.

	2.2 Defensive / Resistance Changes

* Damage Reduction / Resistance Buffs : Some monsters gain temporary resistances to CC, stun, or damage types to reduce player control.
* Life Leech / Regeneration : In Rage Mode, monsters may heal a fraction of damage dealt to players or regenerate HP passively.
* Shield / Barrier Effects : Some bosses may spawn a barrier or shield for a short time when entering Rage Mode.

	2.3 Behavioral Changes

* Aggressive Target Switching : Monsters more readily switch targets, chasing down low-health players or healers.
* Extended Leash / Pursuit : Monsters may ignore standard leash limits, pursuing players further or into unsafe zones.
* Skill Frequency / Priority Shift : They use special or dangerous skills more often, or switch to more offensive patterns.
* Reduced or Null Panic Chance : In Rage Mode, monsters don’t panic—they resist fear, flee, or hesitation.

	2.4 Visual / Audio Telegraphs

* Visual Cues : Glowing red eyes, aura growth, changes in monster model (e.g., spikes, flames).
* Audio Cues : Roaring sounds, growls escalating, background music-phase shifts.
* Pre-Skill Telegraphs : Some large attacks (AOEs, ground slams) have warning signs (circles, cracks) so players can react.

---

	3. Group Rage Mode Behavior

	In group encounters, Rage Mode can have collective or cascading effects:

* Synchronized Rage : When leader enters Rage Mode, allied monsters may also enter or buff their own stats.
* Shared Aggro Redistribution : Upon Rage activation, threat tables may re-evaluate—monsters may shift focus to the most dangerous player.
* Reinforcement Trigger : Rage-afflicted groups may call backup to intensify pressure.
* Overriding Reset / Retreat Logic : Normal reset or retreat behaviors are suspended; monsters aggressively chase until defeat or timeout.

---

	4. Balancing & Counterplay

	For Rage Mode to feel fair (not just punishing), it needs built-in counterplay and balancing:

* Short Duration / Cooldown : Rage Mode should last a limited time (e.g., 20–60 seconds) before reverting or resetting.
* Vulnerability Windows / Interrupts : During Rage Mode, certain powerful attacks may be interruptible.
* Telegraphed Attacks : Big damage moves should have visible or audible warning, giving players reaction time.
* Resource Cost / Use Limits : Monsters may consume special “Rage Energy” to fuel Rage Mode, so it can’t be sustained indefinitely.
* Escalation Limiting : Only monsters of certain rank/types have Rage Mode—trash mobs should not.
* Grace Reset Conditions : If players manage to control the fight (e.g. strong CC), the monster might exit Rage Mode prematurely or suffer penalties 
(e.g., disabled Rage for next fight).

---

	5. Examples / Sample Tunables

	Here are illustrative examples to help you tune Rage Mode per monster rank:

| Rank / Monster Type    | Trigger HP% | Damage Multiplier | Attack Speed +% | Duration  | Special Resistances  |
| ---------------------- | ----------- | ----------------- | --------------- | --------- | -------------------- |
| Elite (Rank III)       | ≤30%        | ×1.5              | +20%            | 30 sec    | +10% stun resistance |
| Boss / Notorious       | ≤25%        | ×2.0              | +30%            | 45–60 sec | +25% all resistances |
| World Boss / Legendary | ≤20%        | ×2.5              | +40–50%         | 60+ sec   | CC immunity / shield |

	You can adjust these numbers to match your game balance, combat pacing, and player gear progression.

---

	6. Integration Notes with Monster.lua Core

* Respect Core Definitions : Rage Mode should not override core attributes (hearing, perception, attack types) unless explicitly intended.
* Conditional Behavior : Only monsters flagged (e.g., *hasRageMode = true*) can enter Rage Mode.
* Modular Hooks : Use triggers or state machines so Rage Mode is a state layered on top of the core combat logic.
* Compatibility with Mechanics :
	* Should work with Threat/Aggro System, letting monsters re-evaluate targets.
	* Should override Reset / Retreat behaviors during its active window.
	* Should integrate visual/audio telegraphs seamlessly with existing alerts.

---