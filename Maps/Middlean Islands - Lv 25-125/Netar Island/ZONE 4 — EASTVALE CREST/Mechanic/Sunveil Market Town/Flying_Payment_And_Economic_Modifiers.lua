			Flying_Payment_And_Economic_Modifiers

	System Type : Dual-Currency Economic Logic
	(Time, Behavior, Event, and Use-Pressure Driven)

---

		Purpose

	Controls how flying is paid, how prices scale, and how player behavior and world state dynamically affect costs, without tying the system to reputation or 
quests.

	This mechanic:
* Prevents flying spam
* Makes travel a meaningful choice
* Encourages alternative currencies
* Enables smuggler gameplay loops

---

		Accepted Payment Types

	Primary Currency
* "Silver"

	Local Currency
* "Powder of Stinky Pollen"
	* Dropped by monsters on Netar Island and Veyra’s Reach Island.

	Players may choose either currency when initiating flight.

---

		Base Price Scaling

	Silver Cost Formula
* Base at Level 40: 50 Silver
* Scaling: +2 Silver per player level

	Formula :
`Silver Cost = 50 + (PlayerLevel − 40) × 2`

---

	Powder of Stinky Pollen Cost

* Base: 30 Powder
* Scaling:
	* +1 per level (standard)
	* +3 per level (during high-demand states)

	The scaling variant is controlled by "Route Pressure" (see below).

---

		Route Usage Pressure (Daily Spike)

	If a player has already used flying on the same in-game day :

* Price increases apply to both currencies
* Spike range:
	* +5% (low usage)
	* Up to +50% (heavy usage)

	This spike:
* Is personal (per player)
* Resets at daily cycle
* Is invisible numerically, shown as “Increased Demand”

---

		Global Event Modifier

	During major world events :
* Winter Festival
* Easter
* Summer Event
* Halloween
* Nakadamian Event

	Rule :
* Base flying price is always +20%
* Overrides minimum price floor
* Stacks with daily usage spike
* Cannot be reduced below this threshold

	Smuggler discounts apply after this modifier but cannot negate it fully.

---

		Smuggler Influence Window

	Activation Conditions
* Time: Night only
* Guards: Not present near Flying Stall
* Visibility: Low-light state active

Under these conditions, a Smuggler Influence Roll occurs.

---

	Smuggler Discount Levels

| Player Status    | Discount |
| ---------------- | -------- |
| New Smuggler     | −5%      |
| Known Operator   | −15%     |
| Trusted Smuggler | −30%     |
| Famous Smuggler  | −50%     |

	Notes:
* Discount applies to final price
* Only applies to Silver, not Powder
* Powder is considered “untraceable” and already discounted implicitly

---

	Risk / Soft Consequence Layer

* Smuggler discounts never trigger penalties directly
* However:
	* Repeated night usage slightly increases guard suspicion (future NPC mechanic)
	* No REP loss
	* No quest lockouts

	This keeps the system opportunistic, not punitive.

---

	Economic Integrity Rules

* Prices never drop below:
	* 40% of base Silver price
	* 60% of Powder cost
* Prevents extreme exploitation
* Maintains value of walking, mounts, balloons

---

	Hidden Hooks (Inactive for Now)

* Smuggler-exclusive routes
* Powder laundering chains
* Sabotaged flight pricing
* Emergency evacuations

*(These will live in Smuggler / Event folders later.)*

---

	Design Intent

* Flying is convenient, not free
* Night creates opportunity, not safety
* Currency choice reflects playstyle
* Events matter globally
* Smugglers feel clever, not broken

---