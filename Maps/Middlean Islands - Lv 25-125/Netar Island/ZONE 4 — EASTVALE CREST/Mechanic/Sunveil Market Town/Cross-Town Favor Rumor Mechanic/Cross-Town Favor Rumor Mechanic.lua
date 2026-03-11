			Cross-Town Favor Rumor Mechanic (CTFRM) – Full Design

	1. Purpose : 
* Encourage dynamic social interaction in towns.
* Make NPCs feel reactive to player behavior, beyond just quests and shops.
* Create long-term, emergent gameplay: players can influence multiple NPCs indirectly via actions elsewhere in the town.
* Integrate with quests, shops, hidden bonuses, and LCWM systems.

---

	2. Core Concepts : 

	a) Rumor Sources : 
* A rumor starts when a player performs a notable action affecting an NPC:
	* Completing a quest for the NPC
	* Delivering rare items
	* Assisting in emergencies (e.g., defending NPCs from invasion, helping tavern during fights)
	* Special hidden mechanics (e.g., using a firepot creatively or LCWM combos)
* Each rumor has a source NPC and a content type
	* “Helpful/competent” – improves favor
	* “Mischievous/suspicious” – can reduce favor if discovered
	* “Opportunistic/lucrative” – attracts greedy or opportunist NPCs

---

	b) NPC Archetypes and Reaction Logic : 

| Archetype       | Behavior & Trigger                   | Rumor Sensitivity                                                  | Example Reaction
| **Greedy**      | Always evaluates personal profit     | High to “lucrative” rumors, low to “helpful” unless tied to profit | Gives discounts only if profit opportunity is mentioned
| **Cautious**    | Evaluates reliability and competence | High to “helpful” or “honest” rumors, low to “lucrative”           | Unlocks hidden quests, improved crafting services
| **Opportunist** | Evaluates chance for leverage        | High to rumors showing player advantage                            | Offers secret deals, discounts, or under-the-table trades
| **Social**      | Reacts to town gossip and events     | High to social rumors                                              | Initiates dialogue with flavor, may request favors for future rewards

*Each NPC has one primary archetype, and secondary archetype if needed for mixed behavior.*

---

	c) Favor Points (FP) : 

* Each NPC keeps favor points per player, initially 0.
* Rumor propagation adds or subtracts FP based on archetype & rumor content.
* Favor Points influence:
	* Shop discounts
	* Unlockable crafting recipes or items
	* Quest availability
	* Hidden LCWM interactions

	Example FP changes :
* +5 FP for completing a minor delivery
* +10 FP for a high-value task
* -5 FP if the player acts suspiciously while rumor is active
* Rumor decay over 3–5 in-game days if no further interaction

---

	d) Rumor Propagation : 

1. Immediate Zone: NPCs in the same area as source will hear rumor first.
2. Cross-Town : Rumor can propagate to other NPCs with ties to source:
	* Example: Alchemist → Herbalist → Tailor
	* Chance-based propagation per NPC : 50–80% depending on archetype
3. Time-Based Decay : If not reinforced, rumor weakens 10–20% per day.
4. Player Influence : Players can trigger rumor acceleration via visible actions or LCWM combos.

---

	e) Hidden or Emergent Effects : 

* Rumors can unlock secret interactions :
	* Hidden discounts
	* NPC assistance during events (invasion, tavern fights, etc.)
	* Exclusive quests (e.g., “Secret Recipe Quest” or “Hidden Crafting Contract”)
* Negative rumors (player fails, steals, or mismanages delivery) can:
	* Reduce favor
	* Lock certain NPC services temporarily
	* Trigger humorous or punitive flavor dialogue

---
