			Player Interaction System

	Path : `GAME/Systems/Player_Interaction_System.lua`

---

	1. Introduction

	The "Player Interaction System (PIS)" governs all direct and indirect interactions between players within the world.
	It defines the framework for PvP combat, trading, dueling, emotes, group mechanics, and social actions, ensuring that all player actions are validated, 
synchronized, and logged across the server.

	This system acts as the human layer of the world simulation — where social structures (factions, alliances, rivalries) and competitive engagements emerge 
naturally through gameplay.
	PIS ensures all actions follow server rules, faction alignments, and world state logic.

---

	2. Core Mechanics / Functionality

	A. Player-to-Player (P2P) Interaction Types

1. Combat Interaction
	* PvP state governed by faction alignment (e.g., *Dendera vs Zonen*).
	* Controlled zones (e.g., safe cities) disable PvP.
	* World PvP enables spontaneous skirmishes and territory battles.
	* Includes *duel invitations*, *arena fights*, and *bounty hunting mechanics*.

2. Trade Interaction
	* Secure trade window (two-party confirmation system).
	* Currency and item verification before acceptance.
	* Trade logs stored in the Logging / Telemetry System for traceability.
	* Supports:
		* Player-to-player trades.
		* Player-to-NPC trades (via vendor interaction).
		* Black-market mechanics (faction or reputation restricted).

3. Social Interaction
	* Chat, emotes, gestures, and alliance creation.
	* Group invitations and shared quest progress tracking.
	* Friends/enemies list managed per player.

4. Cooperative Systems
	* Group XP sharing.
	* Shared loot rights (based on contribution or group rules).
	* Group-based dungeon/raid instances.

---

	B. Validation Layer

	Every interaction is validated by the server before execution:

* Confirms both players are in the same sync state (via World Sync Layer).
* Checks for *interaction locks* (stunned, silenced, phased out).
* Applies anti-cheat hooks (duplicate items, ghost trade, range checks).

	If validation fails → interaction is cancelled with client-side feedback.

---

	C. PvP Ruleset

| Mode               | Description                                             | Conditions                            |
| ------------------ | ------------------------------------------------------- | ------------------------------------- |
| **Open World PvP** | Active between opposing factions in non-safe zones.     | Faction flag enabled.                 |
| **Arena PvP**      | Structured combat with equalized stats or tiers.        | Arena master NPC.                     |
| **Bounty PvP**     | Targets flagged as “Outlaws” can be attacked by anyone. | Player REP < 0 (Alabam faction rule). |
| **Duel**           | One-on-one challenge with no death penalty.             | Mutual consent only.                  |

---

	D. Trading & Economy Hooks

* Integrates with:
	* Vendor System (for NPC-based trades).
	* Item Database (for validation and unique item tagging).
	* Logging / Telemetry System (for anti-fraud detection).
* Supports Auction Houses and Faction-exclusive markets.
* Items may carry trade cooldowns (e.g., boss loot becomes tradable after 24h).

---

	3. System Integration

| Connected System               | Purpose                                 | Example                                    |
| ------------------------------ | --------------------------------------- | ------------------------------------------ |
| **World Sync Layer**           | Maintains state parity between players  | Both traders see same inventory contents   |
| **Network Replication Layer**  | Transmits interaction data packets      | “TradeAccepted” or “DuelStarted” events    |
| **Event Bridge**               | Connects interactions to event triggers | “PlayerKilledPlayer” → bounty board update |
| **Faction System**             | Determines hostility/friendliness       | Faction-based PvP rules                    |
| **Logging / Telemetry System** | Tracks interactions for moderation      | Trade logs, duel history, combat summaries |

---

	4. Systemic Impact

* Enables emergent gameplay (alliances, betrayal, diplomacy).
* Creates a living player-driven economy.
* Supports PvE and PvP convergence (bounty hunters, outlaws, mercenaries).
* Provides a foundation for community systems like guilds, territory control, and cooperative questlines.

---

	5. Extensibility & Future Development

* Guild & Clan Framework : Integrate group-based reputation and control systems.
* Social Ranking : Track duels won, trades completed, or players saved.
* Faction Warfronts : Enable dynamic PvP objectives that alter world territory control.
* Karma / Alignment System : Regulate outlaw and hero reputations via player choices.

---

	6. Debugging & Administrative Tools

| Command                   | Description                                       |
| ------------------------- | ------------------------------------------------- |
| `/pvp toggle`             | Toggles faction PvP state.                        |
| `/trade inspect [player]` | View last trade log with target player.           |
| `/duel forceend`          | Terminates ongoing duel safely.                   |
| `/interaction trace`      | Monitors live interaction events between players. |

---