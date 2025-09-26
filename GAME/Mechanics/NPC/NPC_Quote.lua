			NPC_Quote

	Description : This file defines the mechanics surrounding "NPC Quotes" in the game, focusing on the system that governs how NPCs deliver unique 
lines of dialogue. These quotes are typically contextual and can be triggered by various in-game events or player actions.

---

	Key Sections :

	1. NPC Quote Mechanics

	Overview : NPC Quotes are lines of dialogue that NPCs speak when certain triggers are met. These quotes are used to enhance immersion, add 
character depth, and provide world-building elements.

- Triggers for NPC Quotes :
	- Random Gossip : NPCs may randomly say quotes to passing players. These are often humorous, lore-related, or related to world events.
	- Quest-based Quotes : NPCs may have specific lines when approached during a quest or after the completion of a quest.
	- Interaction with Items : Some NPCs may comment on specific items the player is holding or showing.
	- Holiday/Event-Based Quotes : Special quotes may be triggered during specific in-game events or holidays.
	- Reputation-based Quotes : Depending on the player’s relationship or reputation with the NPC's faction, different quotes may be triggered.
	- Player Actions : Quotes can also be triggered by the player's actions in proximity to the NPC, such as combat victories or discoveries in the 
world.

	NPC Quote System :
- NPCs are assigned "Quote Pools" containing several quotes they may say, organized by type (e.g., Gossip Quotes, Quest Completion Quotes, etc.).
- Each quote is linked to a "Condition" that must be met for the quote to be triggered.
- Frequency and Randomization : The system randomly selects a quote from the pool based on conditions. For instance, an NPC may not repeat the same 
quote consecutively to maintain immersion.
  
	2. Format of NPC Quotes

- Text Format :
	Quotes will appear in quotation marks (e.g., "Good to see you again, adventurer!") and are often displayed in pink text to make them stand out.
  
- Mood and Context :
	The tone of the quotes varies by NPC type, personality, and current circumstances in the game world.
  
- Examples :
	- Friendly NPC Quote :  
    "You look like you’ve been through a lot, but don’t worry, we’ll get through this together"
	- Vendor Quote :  
    "Only the finest goods for the most daring adventurers. Are you sure you can handle them?"
	- Quest NPC Quote (Upon Quest Completion) :  
    "You’ve done it! I knew I could count on you!"
	- Holiday Quote :  
    "Happy Harvest Day! May your fields be bountiful this season!"

	3. NPC Types and Quote Variations

- Vendors :  
	- Often have quotes related to items or services they offer.
	- May provide special discounts or offer advice based on player reputation or actions.
  
- Quest Givers :  
	- Have quotes related to quest progression, completions, or failure.
	- May express satisfaction or disappointment based on player performance.
  
- Combat NPCs :  
  - May deliver taunts or threats during combat.
  - These quotes often tie to the character’s backstory or current motives.
  
- Lore NPCs :  
  - These NPCs typically offer deeper lore-related quotes.
  - They may share knowledge about the world, history, or other NPCs.

	4. NPC Quote Triggers

- Proximity Triggers :  
	- The NPC quote is activated when a player is within a certain distance of the NPC (e.g., 10 yards).
  
- Action Triggers :  
	- Quotes may be triggered when the player performs specific actions near the NPC, such as using an item, completing an objective, or engaging in 
combat.
  
- Event Triggers :  
  - NPCs may have special quotes for world events or quests that affect large parts of the game world (e.g., a major battle, or world-changing event).

	5. NPC Quote Example and System Message

	Example :
- Trigger : Player completes a quest for an NPC.
- NPC Quote :  
	"The work you’ve done today will echo through the ages. I’ll not forget this!"
  
	System Message (if needed) :
	<System Message>: "NPC has shared a quote: 'The work you’ve done today will echo through the ages. I’ll not forget this!'"