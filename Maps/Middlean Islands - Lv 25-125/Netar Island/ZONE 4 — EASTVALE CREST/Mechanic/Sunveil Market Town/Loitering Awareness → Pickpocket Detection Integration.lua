			Loitering Awareness → Pickpocket Detection Integration

> Those who watch too long are either curious… or dangerous.

---

		Core Link : 
	Loitering Awareness becomes a contextual sensor for pickpocket-capable entities (players or NPCs).

	This does not auto-detect pickpocketing.
	It raises suspicion probability only when behavior matches risk patterns.

---

		Pickpocket Suspicion Conditions

	Suspicion increases faster if the loitering player:
* Stands behind NPCs repeatedly
* Rotates camera around NPC pockets
* Re-enters the same loiter zone
* Loiters near high-value NPCs (merchants, officers)
* Is present during crowd panic or fog

	Class-agnostic : 
(Rogues are not immune — they are better at managing it)

---

		Pickpocket Detection States

	State 0: Unnoticed :
* Normal loitering rules apply
* Pickpocket success unchanged

---

	State 1: Peripheral Awareness :
Triggered by mild suspicion.

	Effects:
* NPCs subtly shift position
* Pockets harder to access
* Guards pass closer

	Skilled players notice body language.

---

	State 2: Heightened Awareness

	Triggered by:
* Failed pickpocket
* Repeated loitering
* Crowd manipulation

	Effects:
* NPC turns partially
* Pickpocket window reduced
* Nearby guards prioritize pathing

	Still no punishment.

---

	State 3: Intervention

	Only after active pickpocket attempt + suspicion.

	Effects:
* Guardian steps in
* Dialogue:

  > “Hands where I can see them.”

	Resolution:
* Player pushed out of zone
* No REP loss
* No jail
* No combat

---

		Skill Expression

	Good pickpockets:
* Use fog
* Move zones
* Trigger distractions
* Use rumor events (below)

	Bad pickpockets:
* Get gently removed
* Lose opportunity, not progress

---

		Integration: Rumor Chain System

> *Cities talk. If you listen long enough, they tell you things.*

---

		Rumor Trigger Sources

	Rumors can be triggered by:

* Active loitering (non-suspicious)
* NPC proximity during gathering
* Pickpocketing (successful or failed)
* Crafting noise attention
* Guard patrol chatter

---

	Rumor Chain Structure

* Rumors are not quests.
* They are knowledge nodes.

	Rumor Types : 
* Market rumors
* Smuggler routes
* Invasion warnings
* NPC schedules
* Hidden LCWM hints
* Pickpocket targets

---

		Rumor Chain Progression

	Tier 1: Ambient Talk
* Overheard dialogue
* No UI tracking
* Vague hints

	Example:

> “Someone’s been skimming coin near the west stalls…”

---

	Tier 2: Directed Rumors

	Unlocked by:
* Repeated presence
* Trust behavior
* Non-suspicious loitering

	Effects:
* NPC names mentioned
* Time windows hinted
* Locations narrowed

---

	Tier 3: Actionable Intelligence

	Unlocked by:
* Skillful pickpocketing
* Preventing theft
* Assisting guards
* Triggering LCWM combos

	Effects:
* Temporary map pings
* NPC schedules
* Event triggers
* Hidden vendors

---

	Rumor ↔ Pickpocket Feedback Loop

| Player Action           | Rumor Effect             |
| ----------------------- | ------------------------ |
| Pickpocket success      | Criminal rumors increase |
| Pickpocket failure      | Guard rumors increase    |
| Helping during invasion | Hero rumors              |
| Fake alarm abuse        | Suspicious rumors        |
| Crafting noise          | Trade rumors             |

	Rumors shape NPC reactions, not stats.

---

		Hidden Depth: False Rumors

	Some rumors are:
* Incomplete
* Deliberately misleading
* Player-spread

	Smugglers exploit this:
* Plant false leads
* Mask real opportunities

---

		Player Agency

	Players can:
* Spread rumors
* Silence rumors (by behavior)
* Exploit rumor chaos
* Build social invisibility

---

	Anti-Exploit Safety : 
* Rumors decay naturally
* Cannot be farmed
* AFK does not generate rumors
* Bots trigger guard rumors faster

---