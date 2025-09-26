			Party System

	A "party" is a core game mechanic enabling groups of players to band together for cooperative gameplay. It enhances social interaction and offers benefits such 
as shared experience (XP), coordinated combat strategies, and efficient loot distribution. Parties also provide a private communication channel for their members.

	Key Features

1. "Private Communication"  
   Members can use the party chat system for seamless coordination. Chat commands allow messages to remain private within the group.

2. "Shared Experience (XP)"  
   Defeating enemies as a party enables experience to be distributed among members, encouraging teamwork.

3. "Loot Management"  
   Parties allow for systematic loot sharing through multiple settings configurable by the leader.

4. "Leadership Role"  
   The leader has control over group settings, member management, and access to special abilities through the "Leadership Skill".

5. "Party Bonuses**  
   Larger groups provide increasing XP bonuses, creating incentives for group play.

---

		Party Controls and Limitations

	"Party Size"
- A party can consist of 2 to 8 members.
- Only 1 leader is assigned at any time.
- For larger groups, a "Raid" setup is required, with reduced XP bonuses and altered mechanics.

	"Leader's Role"
- The leader manages party settings and has the following powers:
	- "Invite or Remove Members" : Add or remove party members at will.
	- "Set Loot Rules" : Control the type of loot system used and set quality thresholds.
	- "Promote Leadership" : Delegate the leadership role to another member.
	- "Activate Leadership Abilities" : Unlock passive bonuses for party members after learning the "Leadership Skill."

	"Level Restrictions"
- Party members must be within a ±30 level range of the leader.
  - Example: A Level 20 leader can invite members between Levels 1–50.

	"Dungeon Finder Parties"
- Parties formed using the Dungeon Finder tool are led by a "Party Guide", who has limited powers:
	- Cannot alter loot settings or thresholds.
	- Cannot grant passive bonuses.

	"Leader Succession"
- If the leader leaves the party:
  - A new leader is automatically assigned, favoring healers or sorcerers if present.

---

		Party Management Commands

	"Inviting Members"
1. Use commands:
   - `/invite <character_name>`
   - `/i` or `/inv`
2. Right-click a player’s portrait and select "Invite".

	"Removing Members"
1. Use commands:
   - `/kick <character_name>`
   - `/uninvite` or `/un`
2. Right-click a member’s portrait and select "Remove from Party".

	"Leaving the Party"
1. Use commands:
   - `/LeaveParty()`
2. Right-click your own portrait and select "Leave Party".

	"Promoting Leadership"
1. Use commands:
   - `/promote <character_name>`
   - `/pr`
2. Right-click the desired member’s portrait and select "Promote to Leader".

---

		Experience Sharing in a Party

	"Mechanics of XP Sharing"
1. "Solo XP" : Players receive 100% of the XP from defeating mobs.
2. "Party XP" : XP is distributed among members based on:
   - Member levels.
   - Mob level.
   - Selected XP split mode.

---

	XP Split Modes
1. "Breakdown of Level"  
   Higher-level members earn more XP proportionally. This mode favors experienced players but allows newer players to catch up.

2. "Equal Division"  
   XP is split equally among all party members.  
   Example: Defeating a mob worth 1,000 XP in a party of 4 members gives each 250 XP.

---

		XP Bonuses for Group Play
	The larger the group, the higher the XP bonus for defeating mobs:

|    Members in Sight   |   XP Bonus   |
|-----------------------|--------------|
| 2                     | 12%          |
| 3                     | 18%          |
| 4                     | 26%          |
| 5                     | 40%          |
| 6                     | 53%          |
| 7                     | 70%          |
| 8                     | 100%         |

	"Raid Groups"
- Raid groups (9–16 members) gain 30% XP due to the high number of participants.

	"Leadership XP Boost"
- Leaders can use the "Book of the Leader" (in-game or from the Item Shop) to increase the party's overall XP gain.

---

		Looting Mechanics

	"Loot Indicators"
- Corpses with **gold sparkles** indicate lootable items.
- The leader can configure loot rules and quality thresholds.

---

		Loot Distribution Types
1. "Free-for-All (FFA)" :  
   Any member can loot items freely from mobs.

2. "Master Looter" :  
   The leader decides who receives loot from mobs.

3. "Group Loot" :  
   Items exceeding the loot quality threshold (e.g., Uncommon, Rare) require members to roll (1–100).  
   Members can:
	- "Roll Need" : Priority roll for items they need.
	- "Roll Greed" : Secondary roll for items they want but don’t need.
	- "Pass" : Decline the item.

---

	Loot Quality Threshold
- Set by the leader to control rolling for higher-quality items:
	- "Common" : Items are always lootable.
	- "Uncommon, Rare, Epic" : Require rolls.

---

	Money Distribution
- Gold is automatically shared among nearby members unless they are:
	- Out of range.
	- Not participating in combat.
	- Dead during loot distribution.

---

		Passive Abilities from Leadership Skill

	Leaders with the "Leadership Skill" can assign "Passive Bonuses" to specific members. Bonuses are unlocked based on the leader's skill level:

	Assigning Bonuses
1. Select a party member in the group pane.
2. Click the bonus icon next to their name.
3. Choose a bonus from the available list.

	Bonus Examples
- Increased Damage: +5% Attack Power.
- Enhanced Healing: +10% Healing Efficiency.
- Defensive Boost: +5% Damage Mitigation.
- Speed Boost: +10% Movement Speed (out of combat).

---

		Communication

	Chat Commands
- "Party Chat" : `/party <message>` or `/p <message>`.
- Messages appear in [#3944bc HEX] for visibility.

---

	Special Features of Parties

1. "Strategic Coordination" :  
	Parties enable synchronized gameplay, allowing for roles like tanking, healing, and damage dealing.

2. "Shared Goals" :  
	Completing quests, defeating bosses, and exploring dungeons are more rewarding in a group setting.

3. "Dungeon Finder Integration" :  
	Parties formed via Dungeon Finder automatically set up group roles and loot rules for efficient dungeon runs.