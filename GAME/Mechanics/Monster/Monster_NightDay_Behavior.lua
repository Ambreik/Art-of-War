			Night / Day Behavior Modifier

	Path : `GAME/Mechanics/Monster/Monster_NightDay_Behavior.md`

---

	1. Definition & Purpose

	The Night/Day Behavior Modifier is a toggleable mechanic that changes monster stats, perception, AI, and spawn behavior depending on the in-game time cycle 
(day vs night). It is intentionally lightweight — only monsters flagged in the DB will use it — and provides designers the ability to create time-sensitive
encounters, ambushes, and rare night-only spawns without a heavy engine overhaul.

	Goals

* Add atmosphere and tactical choice (players choose when to engage).
* Make certain monsters more interesting by varying behavior through time.
* Provide a hook for rare/time-limited content (night-only elites) while limiting global complexity.

---

	2. Core Concepts

* Dormant / Active States : Monsters can be inactive (dormant) during parts of the day and active in others.
* Behavior Modifiers : Stat/perception/ai modifiers applied at dusk/dawn transitions.
* Rare Night-Only Spawns : Optional special spawns that appear only during defined night hours.
* Scoped & Toggleable : Only monsters with the `NightDayBehavior` flag in DB are affected.

---

	3. Attributes & Tunables

	3.1 Global tuning knobs (examples; fully tunable per-zone/monster)

* `day_aggro_radius_mod` : -10% (default)
* `night_aggro_radius_mod` : +20%
* `day_damage_mod` : -10%
* `night_damage_mod` : +15%
* `day_attack_speed_mod` : -5%
* `night_attack_speed_mod` : +10%
* `nocturnal_regen_mod` : +0.05% MaxHP/sec (optional)
* `rare_night_spawn_window`: start/end hour (server time or zone-local time)
* `rare_spawn_respawn`: hours/minutes or per-server-cycle

	3.2 Example default severity by monster class

* Beasts (Nocturnal) : +15% damage, +20% aggro radius at night
* Undead : +20% damage and resistances at night, -10% during day
* Humanoids (Diurnal) : -20% damage at night, +10% during day
* Ambush predators : Dormant by day, active at night with ambush bonuses

---

	4. Tags / DB Flags (per-monster)

	Use these to enable/adjust behavior in DB entries.

```
NightDayBehavior = {
  enabled = true,
  tags = { "nocturnal", "diurnal", "dormant_by_day", "ambush_at_night" },
  day_modifiers = { damage_pct = -10, aggro_radius_pct = -15, regen_pct = 0 },
  night_modifiers = { damage_pct = +20, aggro_radius_pct = +25, regen_pct = +0.05 },
  rare_night_spawn = { enabled = false, spawn_table = "nightRareA", announcement = true, respawn_hours = 24 }
}
```

	Common tags:

* `nocturnal` — stronger at night.
* `diurnal` — stronger at day.
* `dormant_by_day` — sleeps by day, active at night.
* `dormant_by_night` — sleeps by night (rare).
* `ambush_at_night` — uses ambush AI at night.
* `rare_night_spawn` — used for special one-off or limited-time spawns.

---

	5. Behavior Rules & AI Integration

	5.1 State transitions

* At dusk/dawn (zone or server time) run `ApplyTimeModifiers()` for flagged monsters:
	* If tag `dormant_by_day` & `isDay()` → set state `Dormant`
	* If tag `ambush_at_night` & `isNight()` → enable `Ambush AI`
	* Otherwise apply day/night modifiers to stats + perception.

	5.2 Perception changes

* LOS, smell, and magic detection multipliers are applied from `day_modifiers` / `night_modifiers`.
* Example: Night predators get `smell_radius * 1.25` and LOS cone widened by 15°.

	5.3 Combat changes

* During active period monsters switch to the appropriate combat table:
	* Use alternative skill sets (e.g., night-only abilities).
	* Potentially increase or decrease CC resistance while in the time-based state.

	5.4 Patrols & Dormant behavior

* Dormant monsters remain idle (play sleeping animation) and ignore non-proximate noise below a `DormantNoiseThreshold`.
* If noiseSum (from Global Noise System) >= `DormantNoiseThreshold` → monster awakens and transitions to `Alerted` state.

	5.5 Ambush behavior

* `Ambush AI` keeps the monster hidden (stealth/immobile hidden actor) until trigger:
	* triggers: player enters `AmbushTriggerRadius` OR noisy actions OR specific interaction (e.g., plucking a herb in the area).

* On trigger: release ambush attack window(s) with pre-buffed first strike (damage/CC).

---

	6. Rare Night-Only Spawn (WoW-inspired but tailored)

	A compact, safe system for rare night spawns that is compatible with the rest of your world systems.

	6.1 Purpose & design

* Give players high-value, time-limited targets that encourage night-time activity.
* Keep server and gameplay load controlled (limited concurrency and clear respawn rules).

	6.2 Spawn rules (recommended)

* Spawn Window : spawn only between `night_start` and `night_end` (zone-local time).
* Spawn Points : pre-defined anchor nodes with spawn constraints (max 1 rare per anchor).
* Spawn Chance : either deterministic (spawns each night) or probabilistic (e.g., 5–25% per night per anchor).
* Group Limit : limit concurrent night rares globally/regionally to avoid spam (e.g., max 3 active per continent).
* Preconditions (optional): require player actions or environment states (e.g., area not cleared, ritual not interrupted).

	6.3 Announcement & UX

* When a rare spawns, optional server-wide or zone-wide announcement (configurable): `"[Server] A rare has been sighted near Legrand!"`
* Alternatively, hints via NPC dialogue or in-game event logs.

	6.4 Respawn & persistence

* Standard respawn interval configurable (e.g., 24–72 hours) OR tied to server-cycle.
* If despawned due to inactivity or reset, it re-evaluates chance next night.

	6.5 Loot & rewards

* Rare drops: guaranteed unique cosmetic or high-tier material + chance at high-value/unique items.
* Consider a pity system (after N kills on the server or by same player, guarantee a specific drop) to reduce frustration.

	6.6 Performance & safety

* Limit checks to spawn windows only — do not poll constantly.
* Use spawn anchors and quotas; avoid wild, continuous scanning.
* Gracefully handle race conditions (two processes trying to spawn same rare) with atomic reservation on spawn anchor.

---

	7. Integration With Other Systems

	7.1 Global Noise System

* Night modifiers increase sensitivity to `noiseSum`. Dormant monsters should subscribe to noise events in a small radius; `noiseSum` exceeding a threshold awakens 
them.

	7.2 Dormant & Ambush State files

* `Dormant_State` uses the Night/Day tags to decide whether to enable sleeping animations and Dormant thresholds.
* `Ambush_State` uses `ambush_at_night` to tune trigger radii and first-strike bonuses.

	7.3 CC & Regen

* Nighttime buffs may increase regen or temporarily change CC resistance — keep these adjustments in small ranges to avoid trivializing fights.

	7.4 Spawn / World Events / Factions

* Rare night spawns can be gated by faction control, territory ownership, or active world events.

---

	8. Counterplay (player-facing guidance)

* Time choice : players can choose to hunt at day or night depending on risk/reward.
* Preparation : night hunts require torches/consumables, stealth, or party composition (crowd control vs burst).
* Noise control : work quietly to pass dormant contacts.
* Group tactics : coordinate AoE and CC for rare/ambush encounters.

---

	9. Implementation Notes (Developer)

	9.1 Suggested DB schema fields

* `nightday_enabled` (bool)
* `night_tags` (list)
* `day_modifiers` (struct: damage_pct, aggro_pct, regen, LOS_mod, smell_mod)
* `night_modifiers` (struct)
* `rare_night_spawn` (struct: enabled, spawn_table, announce, respawn_hours, anchor_id)
* `dormant_noise_threshold` (float)
* `ambush_trigger_radius` (meters)

	9.2 Example monster DB entry (pseudo-Lua)

```lua
MonsterDB["ShadowStalker"] = {
  level = 70,
  nightday_enabled = true,
  tags = { "nocturnal", "ambush_at_night" },
  day_modifiers = { damage_pct = -10, aggro_radius_pct = -20 },
  night_modifiers = { damage_pct = +20, aggro_radius_pct = +30, regen_pct = 0.02 },
  dormant_noise_threshold = 6.0,
  ambush_trigger_radius = 12,
  rare_night_spawn = { enabled = false }
}
```

	9.3 AI hook pseudo-workflow

1. On time change (dawn/dusk): `ForEachMonster(flagged) -> ApplyModifiers(monster, time_of_day)`
2. Monster perception checks read `monster.currentModifiers` (LOS, smell, magic detect multipliers)
3. `Dormant` monsters subscribe to `NoiseEvents` within `dormant_noise_radius` and compare `noiseSum`
4. Ambush monsters use `StealthState` & `AmbushTriggerRadius`; on trigger run `AmbushRelease()`.

	9.4 Debugging tools

* Night/Day overlay : toggle visual markers in dev build showing which monsters are `nocturnal/diurnal/dormant`.
* Spawn anchor viewer : map of night-rare anchors and current quotas.
* Noise debug : show per-cell `noiseSum` and which Dormant monsters would wake on current noise.
* Analytics : logs for rare spawns, spawn failures, player kill counts for tuning.

---

	10. Design Recommendations & Balancing

* Start conservative: small stat adjustments (+10–20% not +100%).
* Limit the number of night-only rares per region to avoid competition overload.
* Provide telegraphing (visual hints, NPC chatter) for rare spawns to encourage exploration rather than blind camping.
* Use day/night modifiers as a flavor/tactical layer — avoid making entire classes unplayable at certain times.

---

	11. Examples (quick)

* Night Wolf (Nocturnal)
  * Night: +15% damage, +25% aggro radius, smell detection +10%
  * Day: -10% damage, dormancy near den entrances

* Shadow Stalker (Ambush Predator)
  * Tags: `ambush_at_night`
  * At night: stealth + ambush first strike + reduced CC vulnerability for 6s

* Nocturne Drake (Rare Night-Only Spawn)
  * Spawns at pre-set anchor with 12-hour cooldown, announces to zone on spawn, drops rare cosmetic + high-tier crafting shard.

---

	12. Common Pitfalls & How to Avoid

* Over-buffing : avoid huge night bonuses; they break balance fast.
* Server spam : cap rare spawns per region; do not run global spawn checks every tick.
* Player frustration : give players clear signals about night mechanics — stealth-only surprises are fine, invisible, uncounterable wipes are not.
* Conflicting mechanics : ensure NightDay modifiers interact cleanly with Rage/Panic/StoneSkin and do not accidentally grant permanent immunity or infinite regen.

---

## 13. Changelog / Notes

* v1 — baseline day/night modifiers, dormant/ambush integration, and rare night-only spawn subsystem
* v1.1 — added noise integration, sample DB flags, and debugging tooling notes

---