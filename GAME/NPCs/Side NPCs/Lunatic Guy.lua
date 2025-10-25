			Lunatic Guy

---

		1. Overview

	The "Lunatic Guy" is a peculiar, unpredictable NPC who appears to have lost all sense of reality.
	Though seemingly harmless, he possesses a unique ability to destroy items permanently when offered to him.
	Many adventurers avoid him, believing his presence attracts misfortune — yet others visit him deliberately, seeking a way to rid themselves of cursed or 
unwanted objects.

	He is not a shop, questgiver, or vendor — his only function is item deletion, executed through direct player interaction.

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

		2. Location and Presence

* Primary Location : "Capital City" – "Middlean Islands".
* Secondary Location : "Lagooma Jungle Region", specifically on "Isle of Jartier".
* The Lunatic Guy does not move, does not leave his post, and does not appear anywhere else in the game world.
* His presence is permanent in these two regions, though he may occasionally emit random phrases or laughter when idle.

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

		3. Appearance and Behavior

	The Lunatic Guy is a young man with disheveled hair, wearing mismatched clothing and holding a small wooden doll. His eyes shift rapidly, as if following 
invisible patterns in the air.
	Despite his erratic gestures and constant muttering, his tone turns serious when a player attempts to use his service.

	Behavioral Notes :
* Idle animations include random laughing, talking to himself, or spinning in circles.
* He may occasionally shout cryptic lines, such as:
	> "Hehehe... They talk to me through the items... Don’t you hear them too?"
	> "Give it to me... I’ll make it disappear. Forever!"
	> "You shouldn’t have kept it this long... it remembers you."

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

		4. Functionality – Item Deletion Mechanic

	The Lunatic Guy’s special interaction allows players to permanently delete unwanted items from their inventory.
	He is the only NPC in the game capable of performing this function directly via drag-and-drop.

	Mechanics :

1. The player can drag any item from their inventory onto the Lunatic Guy.
2. Upon dropping the item, a confirmation window appears asking for the "Account Security Code" — the same code chosen during account creation.
3. If the code is correct:
	* The item is permanently deleted from the inventory.
	* The player receives an on-screen message:
		> "The item has vanished into nothingness."
	 
4. If the code is incorrect:
	* The item remains in the inventory.
	* The Lunatic Guy responds mockingly with:
		> "Hehehe… wrong words. Wrong mind. Try again later."

	Cooldown :
* After each successful deletion, a 30-second cooldown applies before another item can be deleted.
* The cooldown prevents spam or accidental bulk deletions.
* During cooldown, attempting to interact with him prompts:
	> "My head hurts... come back later."

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

		5. Security System

	The Lunatic Guy’s interaction requires manual code input, ensuring item deletion cannot be triggered accidentally or exploited.

	Security Properties :
* Uses the "Account Creation Code" as confirmation.
* Code validation runs client-side before server authorization of item removal.
* The system logs the item’s unique ID, timestamp, and account ID for audit purposes.
* If multiple failed attempts occur (3 times consecutively), the NPC locks out interaction for 5 minutes.

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

		6. Dialogue and Player Interaction

	When interacted with, the "Lunatic Guy" opens a unique dialogue window rather than a shop interface.
	The interface contains eerie background effects — static noise, faint laughter, and a flickering lantern animation.

	Example Dialogue Options :

* "Who are you?"
	> "No one... someone... depends who’s asking."
	
* "What do you do here?"
	> "I take things that shouldn’t exist anymore. The world breathes easier when they’re gone."
  
* "I want to delete an item."
	> "Then give it to me... but first, speak the code... or they’ll come for you too."

	After selecting “I want to delete an item,” the drag-and-drop mechanic becomes available for a short period (until the deletion window closes).

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

		7. Restrictions and Limitations

* Certain bound or quest-related items cannot be deleted.
* The Lunatic Guy will refuse these with:
	> "No, no, no... that one’s not yours to destroy."
	
* Items currently in trade, mail, or auction windows are also protected.
* Equipment with socketed gems or enhancements will trigger an additional warning confirmation.
* The deletion process cannot be reversed once completed.

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

		8. Gameplay and Lore Function

	In-world, the Lunatic Guy serves both a mechanical and a narrative purpose:

* Mechanically: a safe, player-controlled way to clear unwanted or cursed items.
* Narratively: a mysterious figure tied to dark energies — possibly aware of forbidden forces that most NPCs cannot perceive.

	Lore-wise, some scholars in the Capital City whisper that he may be the last survivor of a forgotten cult that experimented with "Item Memory", a forbidden form
of magical imprinting.
	His ability to dissolve items might be a remnant of that power — though his fractured mind no longer understands it.

--------------------------------------------------------------------------------------------------------------------------------------------------------------------

		9. Technical Integration Notes

* NPC Type : Interactive / Special Utility
* Interaction Type : Drag-and-Drop item interface
* Window Type : Custom dialogue + confirmation prompt
* Security : Account Creation Code
* Cooldown : 30 seconds
* Logging : Server-side tracking of all deletions for moderation and rollback review

---