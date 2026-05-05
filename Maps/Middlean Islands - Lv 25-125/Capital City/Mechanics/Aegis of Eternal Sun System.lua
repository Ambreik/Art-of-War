			Aegis of Eternal Sun System

	*(Capital City – Stabilized Celestial Weather Field)*

	This system defines the permanent environmental state of "Capital City", where weather is not dynamic in a traditional sense, but instead governed by a magical 
atmospheric stabilization field.

---

	System Purpose : "Capital City" is protected by an ancient environmental enchantment known as the "Aegis Field".

	It ensures :
* constant visibility
* stable climate
* uninterrupted civic activity
* reduced environmental hazards
* controlled atmospheric anomalies

	This reinforces the city as :

> a “safe-world hub” disconnected from island wilderness chaos

---

	Core Rule : 

```lua id="sun_core"
WeatherState = "Eternal Sun"
IF Time == Night
THEN apply Dock Mist Subsystem ONLY
```

	No storms, rain cycles, or natural weather transitions occur inside city boundaries.

---

		Primary Weather State: Eternal Sun

	Constant Effects : 
* Clear skies
* Warm ambient temperature
* High visibility
* Stable lighting across all districts

	Gameplay Impact : 
* No weather-based combat modifiers
* No visibility reduction outdoors
* Stealth depends on crowd + structures, not weather

---

	Secondary Subsystem: Dock Mist Veil : 
* Activated only in :
	* West Side docks
	* Harbor waterline
	* Night cycle (21:00–05:00)
* Effects :
	* light fog over water
	* reduced long-distance visibility
	* spectral atmosphere layer (supports ghost content)
	* subtle sound distortion on waves
* This directly supports :
	* Ghost Ship system
	* Ghostly Visitors system

---

		Time Interaction Layer

	Even though weather is stable, time still affects atmosphere perception :

| Time    | Atmosphere Tone                 |
| ------- | ------------------------------- |
| Morning | bright, structured, disciplined |
| Midday  | harsh clarity, high activity    |
| Evening | warm golden density             |
| Night   | quiet, mist-enhanced docks      |

	So weather is static, but mood is dynamic.

---

		System Restrictions

	This system explicitly blocks :
* rain storms
* thunder weather events
* natural fog outside docks
* seasonal climate changes

	Except when overridden by :
* major world events (future expansion layer only)

---

		Integration with Existing Systems

	Crowd Flow System : 
* Eternal Sun amplifies visibility during high-density periods
* Shadows are environmental, not weather-based

	NPC Suspicion System : 
* clearer visibility = easier detection in open areas

	Guard Systems : 
* patrol efficiency increases due to stable vision conditions

	Dock Systems : 
* mist subsystem creates partial cover at night

	Social Masking : 
* masking relies on crowds, not weather concealment

---

		Environmental Design Philosophy

	This system defines "Capital City" as:

> "A place where civilization has overridden nature, except where it chooses not to."

---

	System Outputs : 

| System           | Effect                             |
| ---------------- | ---------------------------------- |
| Suspicion System | higher detection accuracy          |
| Crowd System     | stronger visual clarity of density |
| Smuggling System | docks become key stealth zone      |
| Ghost Systems    | enabled via mist subsystem         |
| Guard System     | improved surveillance reliability  |

---

	What This System Achieves : 
* Makes Capital City visually iconic
* Removes randomness from weather gameplay
* Creates predictable but atmospheric environment
* Supports ghost lore at docks without breaking main tone
* Reinforces “civilization vs wild world” contrast

---
