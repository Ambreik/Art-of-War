			Autorun_Mechanics
			
	Usage :  
- Activation :  
  The Autorun mechanic is automatically triggered when a player "left-clicks" on a hostile target (monster, NPC, or PvP-flagged player). Once activated,
the character begins moving towards the target as if the forward key is being held down.  
  - If the target is moving, the player will follow the target at the default running speed.  
  - The mechanic continues until one of the termination conditions occurs.  

	Target Pursuit :  
  - Autorun ensures that the character maintains the pursuit of the hostile target, adjusting movement as necessary to keep the target in range.  
  - If the target moves too far away or becomes unreachable (e.g., the terrain obstructs movement), the mechanic will disengage.  
  - The character will attempt to maintain movement in the direction of the target even if the target changes its position, stopping once the character 
reaches it or when the following conditions are met.  

	Termination Conditions :  
	Autorun automatically ceases if any of the following occurs:  
  - Target dies or is out of range : If the target is defeated or moves too far away, the pursuit ends.  
  - Crowd Control Effects : If the character is affected by a CC (crowd control) effect like stun, slow, or immobilize, the mechanic terminates.  
  - Player Input : If the player manually inputs a movement command or stops moving, Autorun will cease.  
  - Character Death : If the character dies, Autorun ends.  
  - Logout : Logging out will end Autorun.