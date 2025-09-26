			DeBUFF  

	This file contains all the debuffs implemented in the game for easy reference.  

---

		Debuffs Applied by Monsters  
- "Curse of the Underworld Devour" :  
	- Applied by: Most "Special Monsters" and some "Bosses" in the Underworld.  
	- Effect: Reduces healing effects received by 55%.  

- "Chill of the Abyss" :  
	- Applied by: All "spectral enemies" encountered during the "Quest Series: Moonlit Mysteries."  
	- Effect:  
		- Temporarily slows down movement by 20% until the spectral monster is killed.  
		- Weakens player's stats by 15% for the same duration.  

---

		Debuffs Applied by Bosses  
*(No debuffs listed yet — add details as needed.)*  

---

		Debuffs Applied by Environment  
- "Group Betrayer" :  
	- Triggered by: Leaving a group before one of the bosses is killed.  
	- Effect: Prevents use of the "Group Finder" for the next 60 minutes.  

- "Blazing Heat" :  
	- Triggered by: Being located in the second region of each continent (Dendera in "Fanthe'kar" and Zonen in "WasteLands").  
	- Effect:  
		- Reduces movement speed:  
			- 20% in the first area.  
			- 40% in the second area.  
		- Stamina drains faster.  
	- Countered by: Using specific items, runes, or riding a region-specific mount.  

- "Criminal Charge" : 
	- Triggered by : Being caught by a Bounty Hunter or a Guardian after a bounty was place upon a criminal.
	- Effect : 
		- Loss of service from : 
			- Profession trainers depending of the impact overt the region.  
			- Merchants or vendors for item repairs or purchases.  
			- Quest-givers and certain story-driven NPCs.  
			- Lose their title as "HERO" if they own it.
		- Restriction from entering in major settlements.
		- A fee deducted straight from the inventory that can lead on a negative amount.
		- Instant Teleportation outside the city gates after capture.  
		- Movement Speed Reduction and a temporary stamina penalty (prevents instant return).  
		- Increased hostility from Guards and Bounty Hunters if they try to re-enter too soon.  end
		
---

		Debuffs Applied by NPCs  

- "Branded by the Watch" : Applied when an NPC (guard, investigator, werewolf, vampire) successfully detects or breaks through a disguise.
	- Description : Your cover has been blown, and your scent or trail has been tagged. 
	- Enemies can now recognize you far more easily, and you carry a visible aura of suspicion that others can sense.
	- Effects :
		- Detection Radius Increased : NPC guards and trackers detect you from +40% further away.
		- Suspicion Lock : Disguises cannot be used while under this debuff.
		- Merchant Block : Standard merchants refuse service until debuff expires.
		- Authority Hostility : Guards in major cities or strongholds immediately attempt to apprehend or attack you if you linger.
		- Tracking : Bounty hunter NPCs and hound patrols are more likely to spawn and pursue you while debuff is active.
	- Duration :
		- 2 real-time hours.
	- Can be removed by:
		- Paying fines/bribes to factional authorities.
		- Visiting a special NPC (e.g., outlaw fixer, shaman, or alchemist) who can cleanse your scent/identity.
		- Using a rare consumable like "Moonlit Incense".
	- Stacking : Does not stack, but new applications refresh the duration.
	- Synergy :
		- If the player also carries "Criminal Charge", fines and hostility are doubled.
		- Overrides all disguise effects.

- "Bribery Fatigue"
	- Description : Unsuccessful bribing a NPC.
	- Effect : +20% bribe cost for next attempt. Stacks up to 3 times.
	- Duration : 15 minutes.
	- UI : Yes.
	- Flavor : “Word spreads fast: you’re running out of coin.”
	
- "Marked by the Pack"
	- Description : Unsuccessful bribing a NPC, in Zonen continent.
	- Effect : Guards are more suspicious → detection radius increased by 25%.
	- Duration : 20 minutes.
	- UI : Yes.
	- Flavor : “You’ve been pointed out as the shady one.”

---

- "Rumored Corruptor"
	- Description : Unsuccessful bribing a NPC.
	- Effect : -10% lawful reputation gain, +10% outlaw reputation gain.
	- Duration : 1 hour (city-wide).
	- UI : Yes.
	- Flavor : “The streets whisper your name alongside dirty coins.”

---

- "Betrayed Bribe"
	- Description : Unsuccessful bribing a NPC.
	- Trigger : On critical bribery failure.
	- Effect : NPC alerts guards immediately, spawning an elite patrol.
	- Duration : Instant event (no buff/debuff duration).
	- UI : Yes.
	- Flavor : “Your coin bought you nothing but betrayal.”

---

- "Corruption Heat" (regional mechanic, not per-player)
	- Description : Unsuccessful bribing a NPC.
	- Effect : Costs for all players in the city increase by 10–50% as corruption rises.
	- Duration : Persists until players complete world events (anti-corruption quests).
	- UI : Yes, for all players who are already in that location.
	- Flavor : “The whole city reeks of bribes — and everyone wants their cut.”
	
---

		Unsorted DeBUFFs  
- "Weakened Armor" :  
  - Effect: Reduces armor by X%.  
  - Duration: X seconds.  

- "Physical Vulnerability" :  
  - Effect: Increases physical damage taken by X%.  
  - Duration: X seconds.  

- "Magic Vulnerabilit" :  
  - Effect: Increases magic damage taken by X%.  
  - Duration: X seconds.  

- "Weakened Blows" :  
  - Effect: Reduces physical damage dealt by X%.  
  - Duration: X seconds.  

- "Mortal Wounds" :  
  - Effect: Reduces healing effects received by 50%.  
  - Duration: X seconds.  
  - Shared by: Various abilities.  

- "Disrupt" :  
  - Effect: Interrupts channeled and charged abilities.  
  - Duration: Instantaneous.  
  - Note: Cannot be cured or removed.  

- "Ground" :  
  - Effect: Prevents activation of mobility spells and disallows mounting.  
  - Duration: X seconds.  

- "Nearsight" :  
  - Effect: Reduces sight radius and removes allied vision on the map, radar, or field.  
  - Duration: X seconds.  

- "Banish" :  
  - Effect: Temporarily removes the affected unit from the game.  
  - Notes:  
    - The banished unit cannot be targeted, take actions, or move.  
    - Damage-over-time effects continue to affect the unit during banishment. 