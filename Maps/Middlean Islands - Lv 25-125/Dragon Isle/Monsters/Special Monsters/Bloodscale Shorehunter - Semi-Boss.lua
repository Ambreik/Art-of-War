			Bloodscale Shorehunter

---

		1. Basic Information

* Name : Bloodscale Shorehunter
* Title : Predator of the Receding Tide
* Type : Beast
* Subtype : Coastal Predator
* Rank : Mini-Boss

---

		2. Appearance
		
	A large amphibious predator adapted to both shallow water and shoreline hunting.

	The creature has a low, elongated body similar to a hybrid between a massive lizard and a coastal ambush predator. Its skin is covered in thick, overlapping 
crimson-tinted scales, darkened by constant exposure to saltwater and sand.

	Its back is lined with :
* Jagged, ridge-like spines resembling broken coral
* Hardened plates that glisten when wet

	The head is :
* Wide and flat, built for sudden snapping attacks
* Filled with rows of sharp, uneven teeth
* Eyes positioned forward, glowing faintly with a predatory focus

	Its limbs are :
* Short but extremely muscular
* Equipped with clawed digits for gripping wet terrain and dragging prey

	The tail :
* Long and heavy
* Used for balance and sweeping attacks

	Visual details :
* Sand and water constantly drip from its body
* Leaves shallow drag marks when moving on land
* When enraged, veins beneath scales glow darker red

	Movement :
* Slow, lurking crawl when idle
* Sudden explosive lunges when attacking

---

		3. Location & Habitat

* Area : Dragon Isle – Bloodstone Cove
* Zone : Shallow Waters / Exposed Shoreline (Low Tide Only)
* Habitat Type : Amphibious (Water ↔ Land)

---

		4. Role & Combat Profile

* Role : Mini-Boss (Player-Triggered)
* Combat Style : Ambush / Burst Damage / Zone Control
* Difficulty Level : Medium–High

---

		5. Core Behavior

* Aggro Type : Triggered (Bait System)

---

	Trigger Conditions :
* Player places bait in shallow water
* Valid bait types :
	* Meat
	* Fish

---

	Behavior Logic :
* Emerges from:
	* Shallow water
	* Buried shoreline sand
* Initial state:
	* Hidden → sudden ambush
* During combat:
	* Controls small shoreline area
	* Alternates between:
		* Aggressive lunges
		* Short retreats into water

---

	Leash Range :
* Bound to cove zone

---

	Reset Condition :
* Player leaves shoreline zone
* Tide begins to rise (optional system interaction)

---

		6. Abilities

---

	Ambush Lunge : 
* High-speed forward attack
* Deals heavy physical damage
* Used at fight start or after disengage

---

	Crushing Jaws : 
* Strong bite attack
* Increased damage if target is low HP

---

	Tail Sweep : 
* Wide arc attack
* Knocks player slightly back

---

	Blood Frenzy : 
* Activates below 40% HP
* Increases :
	* Attack speed
	* Aggression

---

		7. Passive Effects

---

	Shoreline Predator : 
* Increased effectiveness on wet terrain

---

	Bait Driven Aggression : 
* Immediately targets player who placed bait

---

	Amphibious Adaptation : 
* No penalties switching between water and land

---

	8. Spawn System

* Type : Player-Triggered (Bait Placement)

---

	Spawn Behavior :
* Delay: 5–10 seconds after bait placement
* Emerges dynamically (not fixed spawn point)

---

	Spawn Conditions :
* Must be :
	* Low tide
	* Valid bait active

---

	Cooldown :

* 1 to 8 hours after defeat

---

	Max Active :

* 1

---

		9. Loot Table

---

	Common : 
* Raw Meat
* Basic Monster Hide

---

	Uncommon : 
* Reinforced Hide
* Coastal Bone Fragments

---

	Rare : 
* Bloodscale Hide
* Predator Fang

---

	Very Rare : 
* Hardened Bloodscale Plate

---

		10. System Connections

* Bait Placement Trigger System
* Tide Access System
* Resource Reward System
* Repeated Bait Escalation System

---

		11. Expansion Hooks

---

	Escalation Interaction : 
* Repeated kills increase :
	* Spawn difficulty
	* Loot quality

---

	Chain System : 
* Killing multiple may :
  * Contribute to triggering "Super Crab"

---
