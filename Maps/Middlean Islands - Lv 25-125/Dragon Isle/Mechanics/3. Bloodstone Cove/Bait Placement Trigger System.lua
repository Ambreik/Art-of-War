			Bait Placement Trigger System

* Type : Core / Interaction / Player-Driven
* Function : Allows players to actively trigger encounters

---

	Player Interaction :
* Place bait in shallow water :
	* Meat
	* Fish

---

	System Behavior :
* Bait creates **attraction zone
* After delay → triggers spawn

---

	Trigger Logic :
* Valid bait → starts spawn timer
* Multiple bait placements:
	* Increase spawn chance
	* Increase spawn tier

---

	Conditions / States :
* No bait → no event
* Active bait → pending trigger
* Consumed bait → event executed

---
