			NPC Core Structure Skeleton



	NPC Name / Title	



	1. Introduction

*Appearance : Detailed description of NPC visuals—clothing, armor, weapons, distinguishing marks, posture, facial features.
*Role & Lore : Short summary of their purpose in the world, history, affiliations, and interactions with players.
*Behavioral Notes : Notes about temperament, aggressiveness, or other traits (calm, vigilant, authoritative, etc.).

---

	2. Core Attributes

* Level / Rank:
* Health Points (HP):
* Resources: Mana / Energy / Stamina / Rage (if applicable):
* Damage Output: Melee / Ranged / Skills (only if combat-capable):
* Defense / Resistances: Physical / Magical / Elemental:
* Movement / Speed: Normal / Fast / Patrol:
* AI Complexity: Basic / Intermediate / Advanced

---

	3. Behavior & AI

* Aggro / Threat Response: How NPC reacts when attacked.
* Awareness Mechanics:

  * Line-of-Sight (LOS)
  * Noise/Global Noise Awareness response (flinching, ignoring, or alerting)
  * Magic Detection (if applicable)
* Combat Behavior: Typical attack patterns, skills, and defensive priorities.
* Patrol / Stationary Behavior: Movement patterns if applicable.
* Day/Night Behavior: Optional modifiers to actions, patrols, or reactions.
* Event Triggering: NPC’s role in quests, storylines, or scripted events.

---

	4. Interaction Mechanics

* Trading / Services Offered: (if applicable)
* Training / Profession Advancement: (if NPC is a trainer)
* Quest Interactions: Dialogue triggers, acceptance, completion.
* Buffs / Debuffs Applied or Received: Only if NPC can use abilities or receive status effects.
* Reputation / Ranking Impact: How interacting affects player standing with NPC or faction.

---

	5. Abilities & Combat Mechanics

* Skills / Abilities: Combat or non-combat abilities used.
* Passive Traits: Defensive or utility mechanics (e.g., flinch resistance, threat management).
* Environmental Awareness Effects: Noise reactions, crowd control immunity, guard reinforcement triggers.
* Combat Scaling: Optional adjustment based on player numbers or strength.

---

	6. System Integration

* Combat System: How NPC actions connect to the combat mechanics.
* Awareness / Global Noise System: Triggers from environmental factors.
* Event Bridge: Integration with scripted events, quests, or world triggers.
* Global Environment System: Day/Night modifiers, area-specific effects.

---

	7. Extensibility

* How to expand NPC with additional skills, dialogue, or AI rules.
* Notes for future encounter or city defense scaling.

---

	8. Debugging & Tools

* Logging / Tracking: Monitoring NPC state, patrols, and combat triggers.
* Test Mode / Adjustable Attributes: Temporary tuning of health, damage, or AI parameters.

---

	9. Implementation Notes

* Database mapping: Core attributes, faction, profession, abilities.
* AI Script references: Path to behavior trees, combat scripts, patrols.
* Hooks for quests, events, and profession systems.

---