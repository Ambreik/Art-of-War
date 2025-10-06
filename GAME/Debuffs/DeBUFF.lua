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

- "Shatter Will"
	- Description : A powerful mental debuff that fractures the target’s resolve, leaving them vulnerable to fear and control effects. It weakens the mind’s 
resistance to terror and domination magic, making the victim’s defenses collapse under intense psychological pressure.
	- Triggered by : High-tier monsters and bosses (e.g., Skull-type, God-type, Nightmare-class creatures).
	- Effect : 
		- Reduces target’s Mental Resistance by 20%.
		- Increases Fear Vulnerability by 30%.
		- Slightly reduces Focus regeneration rate (casting interruption more likely).
	- Duration : 10 seconds
	- Countered by :
		- Mental Ward potion
		- "Courage Aura" (Defender/Paladin self-buff)
		- "Bravery Charm" item
	- Stacking : Does not stack with other mental resistance debuffs.
	- Synergy : Combines effectively with "Fear", "Panic Mode", and "Terror Pulse" effects — extending their duration or amplifying their strength.
	- UI : Displays a cracked purple mask icon on the debuff bar; pulse animation when Fear vulnerability is active.
	- Flavor : > "Your courage shatters… and the darkness whispers louder"
	
- "Mind Fracture"
	- Description : A psychic debuff that tears at the victim’s mental focus, shattering concentration and weakening magical defenses. Victims experience distorted 
perception, delayed reactions, and reduced resistance to mind-based or elemental effects.
	- Triggered by : Boss-class or higher monsters (Skull, World Boss, Ancient Entities). Often cast by caster-type or psychic entities.
	- Effect : 
		- Reduces Magic Resistance by 10–25%.
		- Increases damage received from Mind, Shadow, and Arcane attacks.
		- Slightly increases ability cooldown time (mental disruption).
		- May cause short confusion or casting interruption when reapplied rapidly.
	- Duration : 8–12 seconds (depending on monster rank).
	- Countered by :
		- "Clarity Potion" or items that restore focus.
		- Buffs or abilities that grant temporary Mind Resistance or Anti-Magic Shield.
	- Stacking : Can stack up to 2 times, increasing Magic Damage taken per stack.
	- Synergy :
		- Combines with "Shatter Will" (if active) to double resistance reduction.
		- Can enhance other debuffs like "Fear" or "Silence", extending their duration by 1 second.
	- UI : A pulsating purple brain icon appears under the debuff bar, with a faint echo sound every few seconds.
	- Flavor : > "Your thoughts splinter… your will bends. The echo of your mind screams louder than your voice."

---

		Debuffs Applied by Bosses  

- "Shatter Will"
	- Description : A powerful mental debuff that fractures the target’s resolve, leaving them vulnerable to fear and control effects. It weakens the mind’s 
resistance to terror and domination magic, making the victim’s defenses collapse under intense psychological pressure.
	- Triggered by : High-tier monsters and bosses (e.g., Skull-type, God-type, Nightmare-class creatures).
	- Effect : 
		- Reduces target’s Mental Resistance by 20%.
		- Increases Fear Vulnerability by 30%.
		- Slightly reduces Focus regeneration rate (casting interruption more likely).
	- Duration : 10 seconds
	- Countered by :
		- Mental Ward potion
		- "Courage Aura" (Defender/Paladin self-buff)
		- "Bravery Charm" item
	- Stacking : Does not stack with other mental resistance debuffs.
	- Synergy : Combines effectively with "Fear", "Panic Mode", and "Terror Pulse" effects — extending their duration or amplifying their strength.
	- UI : Displays a cracked purple mask icon on the debuff bar; pulse animation when Fear vulnerability is active.
	- Flavor : > "Your courage shatters… and the darkness whispers louder."
	
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
	- Flavor : "Word spreads fast: you’re running out of coin."
	
- "Marked by the Pack"
	- Description : Unsuccessful bribing a NPC, in Zonen continent.
	- Effect : Guards are more suspicious → detection radius increased by 25%.
	- Duration : 20 minutes.
	- UI : Yes.
	- Flavor : "You’ve been pointed out as the shady one."

- "NPC Aggression Penalty"
	- Description : Applied when a player kills a Neutral or Friendly NPC.
	- Effects :
		- Reduced experience gain for a set duration.
		- Vendors may provide fewer goods or worse prices.
		- Quest givers may temporarily disable quests or interrupt main storyline progression.
	- Scaling :
		- Minor NPCs (Rank I) → small XP penalty.
		- Mid-tier NPCs (Rank III) → moderate XP loss, vendor/quest impact.
		- High-tier NPCs (Rank V / Legendary) → severe penalties, long duration, potential bounty triggers.
	- Duration : Configurable (e.g., 30 minutes to 24 hours).
	- Stacking : Multiple kills may increase severity or duration.
	- Faction-Specific Modifiers : Killing NPCs of your own faction results in stronger debuff effects.
	- Notification : Players are informed when the debuff is applied.
	- UI : Yes.
	
---

- "Rumored Corruptor"
	- Description : Unsuccessful bribing a NPC.
	- Effect : -10% lawful reputation gain, +10% outlaw reputation gain.
	- Duration : 1 hour (city-wide).
	- UI : Yes.
	- Flavor : "The streets whisper your name alongside dirty coins"

---

- "Betrayed Bribe"
	- Description : Unsuccessful bribing a NPC.
	- Trigger : On critical bribery failure.
	- Effect : NPC alerts guards immediately, spawning an elite patrol.
	- Duration : Instant event (no buff/debuff duration).
	- UI : Yes.
	- Flavor : "Your coin bought you nothing but betrayal"

---

- "Corruption Heat" (regional mechanic, not per-player)
	- Description : Unsuccessful bribing a NPC.
	- Effect : Costs for all players in the city increase by 10–50% as corruption rises.
	- Duration : Persists until players complete world events (anti-corruption quests).
	- UI : Yes, for all players who are already in that location.
	- Flavor : "The whole city reeks of bribes — and everyone wants their cut"
	
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
