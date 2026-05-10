			Arrival Stabilization System

* POI : "The Sunken Encampment"
* Connected From : "Dock of Solitude"

---

		Purpose

	This system handles the psychological, visual, and gameplay transition from :

> hostile shoreline travel → controlled military safe haven

	It prevents players from :
* abusing travel to escape combat
* arriving in a vulnerable, chaotic state
* instantly re-engaging enemies after maritime movement

	And it sets the tone that this camp is organized, disciplined, and protective.

---

		Core Concept

	When a player enters the encampment boundary within X seconds after arriving from the Dock, they enter a short "Stabilization State".

	This is not a buff.
	This is a state filter.

---

		Trigger Conditions

	Activated when ALL are true :
1. Player used travel/landing from Dock
2. Player crosses Safe Zone boundary within 25 seconds
3. Player is out of combat at the moment of crossing

---

		Effects Applied (6–8 seconds)

	Physiological Reset : 
* Remove movement fatigue from swimming/shore travel
* Small HP and stamina normalization tick (not a heal, a stabilize)
* Remove minor environmental debuffs (wet, cold, winded)

	Visual Transition : 
* Slight screen desaturation → fades to normal
* Subtle camera sway settles
* Breathing sound fades out

> Feels like : catching your breath after reaching safety.

	Combat Lock : 
* Player cannot initiate combat for the duration
* Player cannot be targeted by enemies
* Any aggro from outside boundary is dropped instantly

	Prevents :
* Travel abuse to drop aggro
* Players dragging mobs into camp

---

		Gameplay Intent

	his mechanic teaches the player subconsciously :

> "When you reach this place, you are safe. You can reset here."

	Which is extremely important because later mechanics will :
* Send players repeatedly outside the camp
* Make this their psychological checkpoint

---

		Subtle NPC Flavor (no interaction)

	Nearby NPCs may say ambient lines when a player arrives in this state :

* "Easy now… you’re safe inside the perimeter."
* "Another one made it from the shore."
* "Close the gate line! Let them breathe."

	This ties the mechanic into the future Activity & Life System.

---

		Technical Notes

	This is not :
* A buff
* A heal
* A resting system

	This is a transition state handler tied specifically to Dock → Encampment flow.
	It only triggers from that direction, not when entering from inland.

---

		Player Experience

	Without reading anything, the player feels :
> "That run from the dock was tense… this place is relief."

	Which is exactly what this POI must represent on the island.

---
