			Facing

	Description : "Facing" describes a player or NPC's orientation relative to another unit or a given direction. It is often represented as a binary 
state, where a unit is either facing the specified target or direction, or it's "facing away." The cutoff for facing is typically defined as a 90° 
arc to either side of the unit’s exact front. This mechanic is crucial for various game features, including determining the ability to attack, the 
effectiveness of abilities, and defensive statistics.

---

	Core Mechanics :

- Player Facing :  
  The player’s exact front is the direction they will move if they press the forward movement key (without using other directional inputs). The front-
facing of a player determines the direction in which most spells, attacks, and abilities are executed.  
  - NPC Facing : NPCs generally face their current target, particularly when attacking. The models are designed so that the unit’s head and eyes are 
oriented toward their target. The facing direction is crucial when determining actions like attack range, spell casting, and ability usage.

- Facing Changes :  
  - NPCs : NPC facing can change direction almost instantaneously, depending on the AI and combat scenario.
  - Players : Player characters have more limited turning speeds, typically governed by mouse sensitivity or turn rate when using keyboard controls. 
  - Abilities : Certain abilities (e.g., [Dash], short-range teleports) automatically adjust the player’s facing to align with their new position or 
target. Some abilities will turn players to face their target during channeling.

---

	Gameplay Mechanics :

- Combat and Facing :
	- Melee Combat : Players and NPCs must be front-facing to dodge, parry, or block attacks. Most attacks and abilities require the target to be 
directly in front of the attacker.
	- Back Attacks : When attacking from behind, melee attackers can avoid parrying and can often bypass certain defensive stats like dodge. This is 
especially important when fighting bosses, as attackers aim to stay behind the enemy to reduce their dodge chances.
	- Facing and Abilities : Many abilities require the player to face the target to execute them. For instance, spells that are cast in melee combat 
often will not initiate if the target is not within the proper facing arc (e.g., "Target needs to be in front of you").

- Exceptions to Facing Requirements :
	- Instant Cast Spells : These spells typically do not require facing. The spell will work regardless of whether the caster is facing the target, 
unless stated otherwise.
	- DoTs and Debuffs : Most damage-over-time abilities and debuffs do not check for facing, allowing players to apply them even while running away 
or looking in another direction.
	- Healing Spells : Spells targeting friendly units generally do not require the caster to be facing the target, making healing easier in dynamic 
combat situations.
	- Ground-targeted Spells : Area-of-effect (AoE) spells that target a specific location (rather than a unit) typically do not have a facing 
requirement.

---

	Player Facing and Game Environment :

- Movement Mechanics :
	Players are always constrained to the facing mechanics when using movement keys or the mouse to adjust their position, which in turn affects 
combat readiness. When a player turns away from the target, most attacks, especially ranged, will be interrupted if facing is not realigned. This is 
more crucial in melee combat, where the front-facing positioning directly correlates with attack success.

- NPC AI and Facing :
	NPCs usually keep their facing aligned with their target, especially when combat is engaged. This includes enemies, who will track the player in 
combat. The turning speed and facing mechanics are typically handled by the NPC's AI, and some NPCs may "flip" around during specific combat 
interactions or after teleportation events.

- Combat Strategy :  
	For players engaging in melee combat, managing facing is a vital aspect of battle. Since some abilities can be interrupted or rendered ineffective
when the target is behind, players must actively manage their positioning. This is more critical during raid encounters or PvP, where attackers need 
to position themselves behind targets for optimal damage output.

---

	Visual Indicators :

- Facing Animations :  
  Units' facing is generally reflected by their model’s head and eye direction. Additionally, a unit's orientation is visible through certain visual effects like the casting animation or the direction in which spells are cast.

- Facing Interface :
	- UI Cues : Some games provide an indicator on the HUD to show when a target is not in front of the player. This may appear as a visual icon 
(e.g., a warning symbol) when attempting to attack without proper alignment.
  - Enemy Targeting : For NPCs, a visual marker (like a red arrow or glowing target) may indicate the unit is currently facing a player.

---

	Limitations :

- Facing is often restricted to specific ranges. The mechanics of facing can sometimes be bypassed with teleporting or other repositioning abilities, 
but normally facing must be manually adjusted through movement or facing-altering abilities.
- Tactical Limitations in Combat :  
	Players must often move carefully to ensure their attacks are not wasted or blocked due to incorrect positioning or failure to face the target 
properly.