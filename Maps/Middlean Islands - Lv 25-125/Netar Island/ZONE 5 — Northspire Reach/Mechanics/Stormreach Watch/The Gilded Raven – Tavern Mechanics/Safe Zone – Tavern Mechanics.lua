			Safe Zone – Tavern Mechanics

	Overview : "The Gilded Raven" functions as a true safe haven for players during normal times. PvP is restricted, and the tavern acts as a secure environment for
social interaction, lore gathering, and planning. However, when the village comes under invasion or siege, the tavern enforces stricter mechanics to balance safety 
with immersion and gameplay challenge.

---

		Mechanic Details : 

	A. PvP Restrictions
* Players cannot attack each other inside the tavern.
* Friendly duels or skills that cause damage are automatically disabled inside.
* Skills with non-damage utility (buffs, healing, emotes) are allowed.

	B. Hostile NPC Restrictions
* Crusader NPCs or any other hostile creatures cannot enter the tavern under normal conditions.
* Immortal NPCs inside (Guardian, Bard, Lodge Owner, Owner’s Wife) cannot be targeted or killed outside scripted invasion mechanics.
* These NPCs are immune to PvP skills and hostile AI while inside.

	C. Invasion Response – Siege Lockdown

1. Trigger Condition :
	* Village state changes to "Besieged" or "Broken".
	* Triggered by mini-event invasion detection (Crusader waves, large-scale attack).

2. Door Mechanics :
	* Tavern doors automatically lock, preventing entry from outside.
	* Exiting is allowed, but re-entry is blocked until invasion ends or tavern is unlocked by system.

3. Player Prompt Mechanic :
	* Players inside receive a pop-up message every 20 seconds:
		* Message Text :
		"The village is under attack! Do you stay inside for safety, or go outside to defend Stormreach Watch?"
		* Options :
		1. "Stay Inside" – remain safe, cannot participate in outside combat.
		2. "Go Outside" – remove safe zone protection, fully enable PvP and combat mechanics, mark player as participant in the invasion mini-event 
		(used for rewards and REP tracking).

	D. Immortal NPC Behavior Inside Tavern During Siege

* NPCs continue performing ambient actions:
	* Bard plays morale songs.
	* Lodge Owner & Wife offer lore prompts and gossip.
	* Guardian patrols internally and responds to tipsy players (push mechanic).
* Immortal NPCs cannot be harmed, even if a hostile spell or AoE lands in the tavern.
* If a player remains inside, NPCs interact normally, but any combat or trap mechanics from outside do not affect them.

	E. Interaction With Other Tavern Mechanics

* Beacon Keeper can still function outside but may interact with tavern doors if fire or light mechanics require player participation.
* Tavern shop access remains available while the doors are locked.

---
