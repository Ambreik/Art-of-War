			Bard – Tavern Morale & Buffs

	Overview : The Bard acts as a morale anchor for Stormreach Watch and its inhabitants, subtly influencing NPC behavior and providing ambient buffs to players in 
the tavern. He dynamically reacts to the village morale state and contributes to the tavern’s living, immersive atmosphere.

---

	A. Buff System : 
* "Passive Buffs" triggered by proximity and tavern occupancy.
* Stackable with Beacon Keeper light buffs and other environmental effects.
* Buffs only apply while inside the tavern or within a small radius outside (safe zone).

	Buff Table : 

| Song Name            | Trigger / Condition        | Effect                                                                   | Duration      | Stackable |
| -------------------- | -------------------------- | ------------------------------------------------------------------------ | ------------- | --------- |
| Ode of the Fallen    | Calm / Alert state         | +5% NPC Defense                                                          | Local / 5 min | Yes       |
| March of the Watch   | Alert / Besieged state     | +5% NPC Attack                                                           | Local / 5 min | Yes       |
| Ballad of Stormreach | Any state (ambient flavor) | Slight morale boost for players, +5% XP gain in nearby quests / crafting | Local / 5 min | Yes       |

* Buffs refresh every 5 minutes if the Bard is active and playing.
* Players receive notification icon for each song buff.

---

	B. Dynamic Song Selection : 
* Bard automatically changes song based on village morale state :

| Village Morale | Song Selection                                           |
| -------------- | -------------------------------------------------------- |
| Calm           | Ode of the Fallen                                        |
| Alert          | March of the Watch                                       |
| Besieged       | March of the Watch / Ballad of Stormreach (dual effects) |
| Broken         | Ballad of Stormreach (ambient only)                      |

* Transition between songs is smooth and immersive; ambient sounds fade in/out.

---

	C. Ambient Flavor & Interaction : 
* Bard interacts with Lodge Owner, Guardian, Owner’s Wife, providing dynamic dialogue :
	* E.g., "Ah, another day, another watch to keep alive…"
	* Or jokingly commenting on tipsy players.
* Reacts to player achievements or events :
	* If players successfully defend the village, Bard plays a victory tune.
	* If invasion fails, he changes to a somber tune, affecting ambient morale slightly.

---

	D. Tavern Integration Mechanics : 
* Buffs only apply while Bard is present in tavern.
* If Bard is temporarily removed (e.g., event-based movement outside tavern), buffs fade over 30 seconds.
* Can be challenged to a friendly duel by players in safe mode, purely for emote and amusement; PvP flagged effects do not apply.

---

	E. Visual & Audio Feedback : 
* Players see song-specific icons for each buff.
* Ambient music plays locally, reinforcing tavern immersion.
* Bard animations include:
	* Playing lute, drum, or flute depending on song.
	* Reacting to NPC and player actions (applauding, gesturing, laughing).

---

	F. Integration with Other Mechanics : 
* Buffs stack with Beacon Keeper light buffs and environmental effects from fires, torches, and weather.
* Minor synergy with "Tavern Safe Zone" : boosts NPC passive stats slightly inside.

---
