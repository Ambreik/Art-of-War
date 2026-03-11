			Fishermen Pack NPC

	General Info : 

* Name / Group Name : Fishermen Pack
* Spawn Type : Time-Based / Location-Specific
* Spawn Time : 06:30 – 08:00
* Group Size : 3
* Zone / Location : East Beach Path, near the Sunwell Basin
* Persistence : Spawns only during this time, despawns afterward

---

	Appearance : 

* Clothing: Tattered brown fishing vests, patched pants, straw hats
* Footwear: Worn leather boots
* Tools: Wooden fishing rods, small woven baskets
* Distinctive Features: One has a bright red scarf; another has a hooked nose; the third has a large belt pouch

---

	Behavior / AI : 

* Movement Route :
	1. Spawn near dock at the beach
	2. Walk along shore to fishing spot
	3. Cast fishing rods, idle for 3–5 minutes
	4. Collect fish, put in baskets
	5. Return to dock, repeat until despawn
* Actions / Animations :
	* Fishing (casting rod, reeling fish)
	* Walking / Roaming
	* Group chatter (talk to each other, laugh)
* Group Interaction : Always stick in 2–3 meters of each other, synchronized idle animations
* Interaction With Player :
	* Player can trade with them (fish, small resources)
	* Player can help them pull in a “rare fish” (triggers hidden interaction)
	* If player disrupts, they may curse or flee temporarily

---

	Mechanics / Triggers

* Interaction Triggers :
	* Player fishing nearby may trigger small bonus fish in their inventory
	* Player helping them can generate “Merchant’s Gratitude Token” with low chance
* Environmental Triggers :
	* Fog or Mist events: slower movement, more chatter
	* High tide: move to higher ground along shore
* Hidden Interactions :
	* Rare chance (~5%) for one NPC to spot a “Sea Crokodil” and yell a warning, spawning a mini-event for the player
	* Player assisting them during fog triggers small LCWM environmental effect (hidden animation, extra fish)

---

	Quotes / Chatter : 

* Ambient Chatter :
	* “The tide’s not in our favor today, lads.”
	* “I swear I saw a bigger fish than this yesterday…”
	* “Careful with that net, don’t scare the fish!”
* Player Interaction Quotes :

* “Ah, a helper! Give me a hand with this catch, will ya?”
	* “You scared them fish off! Watch where you step!”
	* “You’re no fisherman, but you’ve got courage!”
* Fishermen Reacting to Weather :
	* “Fog’s rollin’ in, better reel them in.”
	* “Sun’s high, fish are hiding somewhere.”
* Hidden Interaction Quotes :
	* “By the wind… did you see that?! A Sea Crokodil!”
	* “The beach spirits favor you today…”

---

	Rewards / Loot (Optional)

* Small chance to obtain "Fresh Fish" or "Rare Fish"
* Chance to get "Merchant’s Gratitude Token" (hidden interaction)
* Bonus EXP if helping during Sea Crokodil mini-event

---

	Notes / Misc : 

* Synchronized with town crowd mechanics: if a nearby player starts chaos (combat, firepot, balloon), the fishermen flee to nearest safe point
* Their spawn is controlled by a time-based scheduler mechanic to ensure only 1 instance per morning
* Perfect for integrating into environmental storytelling or chain quests

---