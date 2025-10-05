			Weather & Lighting System

	Path : `GAME/Systems/Global_Environment/Weather_Lighting_System.lua`
	Type : Environmental Subsystem
	Parent System : `Global Environment System`
	Purpose : Simulates dynamic weather and lighting conditions, influencing visibility, perception, combat efficiency, and ambient atmosphere.
	Relation : Feeds directly into *Monster Awareness*, *AI Decision*, and *Night/Day Behavior* systems.

---

	1. Introduction

	The "Weather & Lighting System (WLS)" governs environmental dynamics such as sunlight intensity, precipitation, fog density, and ambient color temperature.
	Its purpose is to ensure that every region in the world feels alive, immersive, and *mechanically reactive* — not merely cosmetic.

	This subsystem doesn’t exist in isolation; it continuously broadcasts environmental modifiers that affect both gameplay and AI systems.
	For example:

* A thunderstorm reduces monster visibility but increases sound propagation.
* A full moon enhances night creature accuracy but weakens stealth.
* Fog thickens during dawn transitions, lowering ranged hit chances.

	Through these systems, WLS links aesthetic realism with mechanical consequence.

---

	2. Core Mechanics / Functionality

	A. Environmental States

	Each region maintains an active environment state, combining lighting and weather components:

```lua
EnvironmentState = {
  lighting = "Overcast",    -- Clear, Cloudy, Night, Dusk, Dawn, Storm
  weather = "Rain",         -- None, Rain, Storm, Snow, Fog, Sandstorm
  intensity = 0.75,         -- 0.0 - 1.0 range
  duration = 480,           -- seconds
}
```

	Transition logic uses probability weights per biome:

* Deserts → high chance of clear or sandstorm.
* Forests → frequent fog and light rain.
* Mountains → higher chance of snow and wind.
* Swamps → persistent mist and humidity effects.

	B. Lighting Controller

	Controls sun/moon intensity and color temperature dynamically:

* Brightness scales with time of day (from Night/Day Behavior System).
* Color Tone shifts through hue gradients (warm → cool → dark blue).
* Shadow Sharpness adjusts with cloud density or fog.

	Lighting intensity directly modifies:

* Player and NPC visibility range.
* Stealth detection thresholds.
* AI reaction delay in perception.

	C. Weather Controller

	Defines precipitation, sound dampening, and movement modifiers:

* Rain : Reduces fire damage output, muffles noise slightly.
* Snow : Slows movement and reduces visibility.
* Fog : Greatly reduces sight radius but increases sound propagation.
* Storms : Periodically emit thunder noise (triggers Awareness spikes).
* Clear : Neutral modifiers, improved ranged accuracy.

	Each active weather condition emits signals through the "Event Bridge", updating:

* Monster Awareness thresholds.
* Combat accuracy calculations.
* Environment visuals and particle systems.

	D. Regional & Local Variability

* Supports *micro-climates* (e.g., fog in valleys, sunlight on ridges).
* Updates per region or biome, not globally — enabling asynchronous weather zones.
* Optional synchronization via "World Sync Layer" for multiplayer consistency.

---

	3. System Integration

| Connected System              | Purpose             | Interaction                                                |
| ----------------------------- | ------------------- | ---------------------------------------------------------- |
| **Global Environment System** | Parent container    | Handles weather/lighting initialization and state saving   |
| **Monster Awareness System**  | Visibility modifier | Adjusts sensory perception values dynamically              |
| **Night/Day Behavior System** | Light input source  | Drives transitions between day/night cycles                |
| **AI Decision Layer**         | Perception modifier | Affects line-of-sight detection and accuracy               |
| **Event Bridge**              | Communication layer | Dispatches weather change or light shift events            |
| **Global Combat System**      | Combat impact       | Affects hit chance, ability range, and elemental strengths |

---

	4. Environmental Impact Modifiers

| Parameter             | Description                                    | Gameplay Effect                      |
| --------------------- | ---------------------------------------------- | ------------------------------------ |
| **Light Intensity**   | Ambient brightness                             | Reduces or improves detection radius |
| **Visibility Range**  | Fog or storm density                           | Impacts AI and ranged accuracy       |
| **Noise Propagation** | Sound travel in air                            | Affects Awareness and Tracking       |
| **Temperature**       | Region-based modifier                          | Influences stamina/regen rates       |
| **Humidity**          | Affects spell visuals and fire damage          |                                      |
| **Wind Direction**    | Impacts projectile accuracy and smell tracking |                                      |

---

	5. Implementation Notes (DB / Runtime)

* Each region stores a weather profile table in the environment DB:

  ```lua
  WeatherProfile = {
      baseChance = { clear=0.5, rain=0.2, storm=0.1, fog=0.15, snow=0.05 },
      durationRange = { min=300, max=900 },
      transitionSpeed = 0.2
  }
  ```
* Weather transitions interpolate smoothly using blend curves.
* Lighting controller references a time-of-day curve for color and intensity.
* Updates broadcast via `EventBridge:Emit("WeatherChanged", data)` every major transition.
* Synchronized through "World Sync Layer" in multiplayer mode.

---

	6. Debugging & Tools

| Tool / Command                    | Function                                            |
| --------------------------------- | --------------------------------------------------- |
| `/weather set [type] [intensity]` | Manually force weather state                        |
| `/weather info`                   | Displays current region weather/lighting parameters |
| `/lighting cycle [speed]`         | Accelerate day-night cycle for testing              |
| `/fog toggle`                     | Enables/disables fog simulation                     |
| `/env reload`                     | Reloads environment profiles for current region     |

---

	7. Extensibility

* Future integrations:
	* Environmental hazards : Lightning strikes, sandstorms, blizzards.
	* Dynamic shadows : Based on cloud cover or torchlight.
	* Event-based weather : Unique patterns during special world events.
	* AI adaptation : Monster pathfinding adjusted for storm or fog.
	* Player buffs : Items granting weather resistance or light amplification.

---