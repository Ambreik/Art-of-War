			TRAP SCHEMATICS FILE

	(Design File – Craftable Trap Definitions)

	This file defines what traps exist in the world, independent of who crafts them.

---

		0. Global Trap Rules (Applies to ALL Traps)

	0.1 Trap Categories & Coexistence

* Players may have multiple traps active at once
* BUT :
	* Only 1 active trap per category
	* Different categories may coexist

	Example :
✔ Control Trap + Damage Trap + Utility Trap
✖ Two Control Traps at the same time

---

	0.2 Global Trap Cooldown (GTC)

	After placing any trap:

* "Global Trap Cooldown" is triggered

| Context       | GTC Duration |
| ------------- | ------------ |
| Open world    | 30 seconds   |
| Dungeons      | 18 seconds   |
| Mega-dungeons | 12 seconds   |
| PvP zones     | 35 seconds   |

	Notes :
* GTC shared across all trap categories
* Prevents rapid chaining

---

	0.3 Max Active Traps (Hard Cap)

| Player Status      | Max Active Traps |
| ------------------ | ---------------- |
| Regular Player     | 2                |
| With Trap Training | 3                |
| Outlaw Specialist  | 4                |

	If cap is exceeded :
* Oldest trap despawns

---

	0.4 Trigger Rules (Universal)

* Traps trigger on :
	* Enemy proximity
	* Direct step/contact
	* Some on manual detonation
* Friendly fire :
	* Disabled by default
	* PvP exceptions handled later

---

		1. CONTROL TRAP SCHEMATICS

	1.1 Snare Net Trap

* Category : Control
* Rank : I–V
	Effect :
* Slows enemy movement by :
	* Rank I: 30%
	* Rank III: 50%
	* Rank V: 70%
* Duration: 6–10 seconds (rank-based)

	PvP :
* Duration reduced by 40%

	Materials :
* Common:
	* Perfect Wood Piece
	* Metallic String
* Extra (higher ranks):
	* Treated Leather
	* Resin Fibers

---

	1.2 Frost Clamp Trap

* Category : Control
* Rank : II–V

	Effect :
* Roots target in place
* Applies *Chill* stack
* Rank V has small freeze chance (PvE only)

	Duration :
* 3–6 seconds

	Materials :
* Common:
	* Reinforced Steel Jaw
	* Perfect Wood Piece
* Extra:
	* Frost Essence
	* Ice Crystal Fragment

---

		2. DAMAGE TRAP SCHEMATICS

	2.1 Shrapnel Plate

* Category : Damage
* Rank : I–V

	Effect :
* Physical AoE damage
* Applies minor bleed

	PvP :
* Damage reduced by 35%
* Bleed duration halved

	Materials :
* Common:
	* Scrap Metal Plates
	* Perfect Wood Piece
* Extra:
	* Sharpened Fragments
	* Binding Oil

---

	2.2 Fireburst Rune Trap

* Category : Damage
* Rank : III–V

	Effect :
* Fire explosion
* Burns enemies over time
* Clears frost effects in area

	Materials :
* Common:
	* Rune Slate
	* Ignition Powder
* Extra:
	* Fire Core Shard
	* Ashen Resin

---

		3. DEBUFF TRAP SCHEMATICS

	3.1 Dust Veil Trap

* Category : Debuff
* Rank : I–V

	Effect :
* Reduces hit chance
* Reduces ranged accuracy
* Slight vision blur

	Duration :
* 8–12 seconds

	Materials :
* Common:
	* Powdered Stone
	* Cloth Wrap
* Extra:
	* Wind Residue
	* Fine Ash

---

	3.2 Mana Fracture Sigil

* Category : Debuff
* Rank : III–V

	Effect :
* Increases spell cast time
* Minor mana drain on trigger

	PvP :
* Cast-time increase capped

	Materials :
* Common:
	* Sigil Etching Plate
* Extra:
	* Arcane Residue
	* Cracked Focus Crystal

---

		4. DEFENSIVE / UTILITY TRAP SCHEMATICS

	4.1 Ward Plate Trap

* Category : Utility
* Rank : I–V

	Effect :
* Grants temporary shield to allies in area
* Shield scales with rank

	Materials :
* Common:
  * Hardened Plate
  * Binding Strap
* Extra:
  * Light-infused Core
  * Reinforced Rivets

---

	4.2 Lightflare Beacon Trap

* Category : Utility
* Rank : II–V

	Effect :
* Emits light
* Reveals stealth
* Weakens shadow-based enemies

	Synergy :
* Beacon Keeper buffs amplify effect

	Materials :
* Common:
	* Lantern Core
* Extra:
	* Luminous Dust
	* Sun-touched Glass

---

		5. ENVIRONMENTAL TRAP SCHEMATICS

	5.1 Frostslide Trap
	
* Category : Environmental
* Rank : II–V

	Effect :
* Creates icy surface
* Enemies slide uncontrollably
* Chance to knockdown

	Materials :
* Common:
	* Ice-Coated Plate
* Extra:
	* Frozen Resin
	* Chill Essence

---

	5.2 Gust Anchor Trap

* Category : Environmental
* Rank : III–V

	Effect :
* Wind burst pushes enemies
* Can knock enemies off ledges

	PvP :
* Push distance reduced

	Materials :
* Common:
	* Wind Frame
* Extra:
	* Air Essence
	* Polished Feathers

---

		6. Visibility & Detection (Hook Only)

	Detection chances handled later via :
* Focus Vision Passive
* Assassin class innate chance
* Trap rank vs detector skill

	(No tuning yet — just compatibility ensured)

---
