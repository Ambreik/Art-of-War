			Garrin Muld — Miner Trainer (Rank III)

**Role:** Miner Trainer (Rank III) / Daily Gathering Questgiver / Miner Services
**Location:** Havenstead Plains — near the Grimstone Quarry road entrance (small wooden stand with ore samples)
**Profession Category:** Mining (Rank III trainer)
**Faction:** Order of Restoration (friendly)
**Skillable:** ❌ No (cannot be trained on or killed for skill)
**Reputation Dependency:** Provides small benefits/discounts to players with higher Order rep

---

## 1. Appearance & Personality

* Middle-aged, sturdy build with callused hands and a short, stubbly beard. Wears patchwork miner’s leathers, a worn leather cap, and a belt with rock-hammers and picks.
* Voice is gravelly but warm. He has a pragmatic humor and loves telling short mining tips.
* Keeps a small chalkboard with current node timers and a hanging lantern (cosmetic).

---

## 2. Core Services & Functions

1. **Rank III Mining Training:** Teaches Rank III mining perks (see §5).
2. **Daily Gathering Questline:** Offers a 5-day repeatable gathering quest chain. Quest availability: one chain per account/character at a time. (Details below.)
3. **Miner’s Advice / Routes:** Garrin marks (shares) likely high-yield routes and points on player minimap (waypoints) for a limited time.
4. **Buy/Sell Basic Mining Supplies:** Sells basic picks, toolkits, and low-tier mining consumables. Prices scale with player tier; small discounts for Order rep.
5. **Hidden Refinement Path:** If a player brings specific rare raw ore + a token (see hidden interaction), Garrin will point them to a hidden vein spawn or hand off a small sample (flavor interaction only).

---

## 3. Daily Gathering Quest (structure)

* **Name:** Quarry Days (5-day chain)
* **Availability:** Once daily; quests must be completed in order. After day 5 the chain ends and will reset after a cooldown (configurable).
* **Purpose:** Encourage sustained mining, teach players island mechanics, and reward mining-related consumables / minor materials.
* **Flow (summary):**

  1. **Day 1 — Scout the Veins:** Collect low-tier ore samples from Grimstone Quarry (10).
  2. **Day 2 — Clear Cave Shards:** Break (attack) 6 small cave rock crystals (environmental destructible).
  3. **Day 3 — Protect the Miners:** Escort a mining cart (escort/defend mini-objective) through a short path; minor combat.
  4. **Day 4 — Recover the Lost Lump:** Find a rare vein node (randomized spawn) and mine a special lump.
  5. **Day 5 — Mastery Strike:** Use an “Explosive Charge” (provided) to expose a high-HP vein and deal final hits within time.
* **Repeatability:** Can be started again after a cooldown (set server-side); if player abandons a day they may retry the day twice more before the chain locks for X days (configurable).
* **Rewards:** Mining XP, a small batch of ores, an occasional crafting reagent, and a chance at a rare material (low drop rate). No special currencies.

---

## 4. Hidden / Flavor Mechanics (secret interactions)

1. **Garrin’s Tap (hidden handshake):** If a player mines three specific rocks in precise order (subtle environmental clue), Garrin will greet them with a private line and mark a “Hidden Vein” on their map for 10 minutes (single-use). This is an easter-gesture and does not give overpowered materials—just a small extra node.
2. **Refiner’s Tip:** Players who bring Garrin a tiny sample of two unique island ores together will receive a short tooltip on how to combine them (flavor; no direct recipe). This encourages cooperation with Blacksmith trainers.
3. **Daily Whisper:** Every so often Garrin will hum a short tune; if nearby players tap the same tune via emote sequence, Garrin will grant a one-time temporary buff to mining speed (small, short duration). This is hidden/fun and not exploitable.
4. **Secret Token Exchange:** A rare node in Grimstone Quarry can drop a brittle token. If the player hands it to Garrin, he will reveal a lore line and temporarily increase the spawn timer awareness for Mystic Stones (i.e., he’ll point to likely area). Flavor only.

---

## 5. Rank III Trainer Unlocks & Perks (what Garrin teaches)

When a player reaches **Mining Rank III** and trains with Garrin, he grants these passives (trainer-gated):

1. **1) Vein Focus (passive):** Increases mining damage vs. high-durability veins by +10% (faster depletion).
2. **2) Double-Tap Yield (passive):** Small chance (8%) to yield +1 extra common ore from a node.
3. **3) Stable Extraction (passive):** Reduces chance of node collapse (interrupt) by 15%.
4. **4) Efficient Swing (passive):** Reduces stamina drain while mining by 12%.
5. **5) Shared Route (utility):** Once per hour Garrin can mark a high-yield route for the player for 15 minutes (visible to group). (This is a trainer service, not a permanent skill.)

> These are trainer passives—numbers are placeholders and should be tuned in balancing pass.

---

## 6. NPC Dialogue / Quotes (selection)

### Idle / Work (10)

1. “The stone doesn’t lie — it hums if you listen.”
2. “Careful where you strike — the vein has its temper.”
3. “You’d be surprised how loud a nugget can be when you find it.”
4. “Grimstone’s got attitude today.”
5. “The quarry’s mouth never sleeps.”
6. “If the rock decides to drop on you, it’ll do it politely.”
7. “New to mining? Keep your feet steady and your pick steadier.”
8. “I once chipped a diamond that looked me in the eye.”
9. “Bring bread for the team, and they’ll bring you ores.”
10. “If you find a pulse in the rock, you found a Mystic Stone — run, or mine carefully.”

### Player Greeting / Training

1. “You want Rank III? Then your hands must be stained with honesty.”
2. “Show me your picks, and I’ll show you the rocks that beg to be hit.”
3. “I’ve got a cart with your name on it — mostly because I carved it that way.”
4. “If you want the Quarry map, work a day for it.”
5. “Bring me rare ore samples and I’ll show you where to strike true.”

### On Completing Daily Quest Steps

1. “Good strike — your swing had thought behind it.”
2. “That’s one less loose crystal chewing on the path.”
3. “You kept the cart whole? Consider yourself a journeyman.”

### If Players Spam / Abuse Interaction

1. “One strike at a time — this ain’t a festival drum.”
2. “I’ll take a break until that finger calms down.”

---

## 7. Shop & Item List (small)

* **Basic Pick** (durability)
* **Miner’s Toolkit** (repair + small speed buff)
* **Explosive Charge (quest item)** (used in Day 5 of the chain)
* **Minor Repair Kit**
* **Lantern Oil** (cosmetic)
  (Prices scale; discounts via Order rep.)

---

## 8. AI & Routine

* Garrin stands near the quarry track, inspects miners briefly, and occasionally writes on his chalkboard.
* If monsters approach village perimeter, Garrin cancels non-essential interactions, directs players to safe routes (dialogue hint).
* He will not engage in combat; if attacked or killed by monsters (rare), he respawns after 15 minutes.

---

## 9. Implementation Notes (for scripters/devs)

* **Daily Quest Chain State:** Store per-character progress; allow up to 2 retries per day step before locking chain (tunable).
* **Hidden Interactions:** Make the “tap order” and emote sequence obscure but reproducible; use server-side validation for the mining buff to avoid exploits.
* **Trainer Perks:** Make these account-wide once trained; teachable only at Rank III flag.
* **Route Marking:** Use secure / temporary waypoint system (visible only to marked players/groups) with server cooldowns.

---