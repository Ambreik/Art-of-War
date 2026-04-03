			Sir Valerius Thornbrand

*(Unique Crusader Warrior – Legendary Entity)*

* Category : Unique Undead Crusader
* Location : Tomb of the Great Crusaders - 4rd Area
* Spawn Conditions :
	* Rare spawn on 4rd Area while dense with Undead Crusaders.
	* Rarely, only one per dungeon instance.

---

	Appearance : A tall, once-noble knight clad in decrepit but once-ornate crusader armor. His helm rests under his left arm, revealing a gaunt, sorrowful face 
etched with decades of unresolved purpose. A broken banner of his old regiment hangs from his back, tattered yet still bearing faint colors.
	His once-glistening blade now drips with an eerie green mist — not corrupt, but burdened with remnants of lost honor.
	When idle, he occasionally pauses, glancing at the banner, as if remembering something long forgotten.

---

	Lore : "Sir Valerius Thornbrand" was a captain among the Crusaders — a protector of the innocent and a steadfast leader. When the spirits within the Tomb 
claimed the souls of his comrades during the Second Great War, Valerius resisted longer than most, battling both the undead and his own despair.
	Ultimately he was pulled into the very heart of the spirits’ domain. Though his body returned as an undead echo, fragments of his original soul remain.
	This makes him different from the other Crusaders:
* He remembers who he was
* He retains fleeting glimpses of who he used to be
* He is neither friend nor foe — but something in between

---

	Role : Unique neutral monster with conditional behavior:
* May assist players in battle
* May resist other undead
* Triggers dungeon progression shifts
* Drops a unique "Lore Document"
* Provides a meaningful buff if players aid him

---

	Behavior : 

	Neutrality & Recognition : 
* Does not immediately attack players
* Raises sword in salute, then kneels briefly
* If players approach slowly (no combat), he may speak before hostility

	Combat Trigger : 

	Valerius will become hostile only when:
* Players attack him (provoked)
* Or when Undead Crusaders overwhelm him

	Combat Assistance : 
	
	When surrounded by many undead crusaders and players are engaged:
* Valerius issues a "green protective aura"
* Grants players a temporary "buff"
* Undead Crusaders will change target priority to attack him

	End Phase Behavior : 

	If Valerius is mortally wounded but survives :
* Players receive a special buff (see below)
* He uses his sword to deliver a solemn final act
* Drop: "Scroll of Valerius"

	If Valerius dies from undead onslaught :
* A shockwave kills every monster on the dungeon level
* Automatically opens the next dungeon door
	*(This only happens if he dies without player damage, or if players fail to protect him.)*

---

	Combat Profile : 

*(Narrative flavor — not strict stats)*

* AI Type : Defensive Stalwart
* Aggression : Conditional
* Movement :
	* Calm stride when neutral
	* Spirited charge when buffing players
	* Stays central in a cluster of enemies

	Strengths :
* High resistance to undead damage
* Strong defense modifiers
* Can overshadow nearby enemy AI

	Weaknesses :
* Vulnerable to being overwhelmed if ignored
* Cannot heal himself

---

		Quotes : 

	Upon Encounter (Neutral)

* “At last… someone with eyes open.”
* “Finally I can rest for real now…”
* “The humans survived the Great War… I am so pleased.”
* “Forgive me… I betrayed once, this time I will be subdue to aid my… friends?”

*(Note: slight hesitation in his voice, hinting at fragmented conscience)*

	During Combat Help

* “Stand fast! Let valor guide you!”
* “May this shield your spirit!”
* “Strike true!”
* “I will hold them here!”

	Upon Death (final action)

* “May fire and light set you free…”

---

	Special Mechanics : 

	Protective Aura — "Shield of Thornbrand"

	Triggered when:
* Players and Valerius are surrounded by 12+ undead crusaders
* Valerius enters defensive mode

	Effect :
* Green radius around players (~12m)
* Duration: 3–5 minutes
* Grants:
	* +10% Root Resistance
	* +10% Fear Resistance
	* +10% Taunt Resistance
* The effect stays throughout dungeon progress
	* Not removed on death
	* Only fades once the players exit the dungeon instance

	Reason for Mechanic : Valerius recognizes the suffering in his former brethren, and for a brief moment, his lingering honor shields the living.

---

		Special Drop: Scroll of Valerius

	Item Name : Scroll of Thornbrand’s Testament

	Description : A brittle, blood-smudged piece of parchment, written in a trembling hand. The ink fades at the edges, yet the words still speak of regret,warning,
and knowledge of the Queen Redrose Banshee.

	Content Summary :

	The scroll reveals:
* Every Crusader retains memory — not noise
* They are subjects of "Queen Redrose Banshee" (deep in the dungeon)
* She knows the living are here
* Her weakness is fire and magic damage
* Her healers hide as statue guardians
	* They must be destroyed for protection to drop

	This serves as a soft dungeon guide and foreshadows the boss fight without revealing patterns or trivializing challenge.

	Who Gets It :
* Random player from the group (roll system)
* Only one scroll per dungeon instance
* If nobody picks it up, it vanishes on exit

---

		Dungeon Progression Interaction

	If Valerius Dies Before Player Engagement : 

* His death triggers a shock effect
* Kills all monsters on that dungeon level
* Opens the door forward
* Denies the players the buff & loot, but still advances progress

	If Valerius Is Alive & Players Help Him : 
* Players receive the protective aura
* Possible learning clue through his combat behavior
* Scroll reward if he finishes the act himself

	This creates meaningful strategic choice:
* Save him = buff + lore
* Fail to protect him = dungeon forced clear

---

			Sir Valerius Thornbrand’s Combat Ability Table

---

		Sir Valerius Thornbrand

	Combat Ability Table

	Role Archetype : Defensive Support Stalwart / Martyr Entity
	A unique undead crusader who protects, disrupts enemy formations, and sacrifices himself for progression or aid.

---

		PASSIVE ABILITIES

	Remnant of Honor

* Type : Passive
Valerius retains fragments of his former will.

	Effect :
* Does not attack players unless provoked
* Prioritizes Undead Crusaders as enemies
* Immune to mind control, charm, fear effects
* Cannot be taunted by players or monsters

	Narrative Purpose : He is not fully undead, nor fully alive — he chooses his targets.

---

	Crusader’s Defiance**

* Type : Passive
Valerius takes reduced damage from Undead Crusaders.

	Effect :
* -40% damage taken from Undead Crusaders
* +20% damage dealt to Undead Crusaders

	Narrative Purpose : He was forged to fight them — now he continues that duty beyond death.

---

		ACTIVE ABILITIES

	Banner of Fading Valor

* Type : Defensive Support
* Cooldown : 90 seconds
Valerius plants his broken banner into the ground.

	Effect :
* Creates the green aura zone
* Triggers "Shield of Thornbrand" buff for players
* Undead Crusaders are forced to re-target Valerius for 6 seconds

	Visual : Green spectral light radiates from the banner, forming the protective field.

---

	Thornbrand Cleave

* Type : Melee AoE Attack
* Cooldown : 8 seconds
Valerius sweeps his blade in a wide arc.

	Effect :
* Deals moderate damage to all Undead in front of him
* Applies "Fractured Resolve" debuff:
	* -15% attack speed for 5 seconds (Undead only)

	Narrative Purpose : Not a damage dealer — a crowd controller and disruptor.

---

	Martyr’s Guard

* Type : Reactive Defense
* Trigger : When a player drops below 35% HP nearby
Valerius intercepts the next incoming attack.

	Effect :
* Valerius takes the hit instead of the player
* Grants the player a short 2s damage immunity

	Narrative Purpose : He protects the living instinctively, even at his own cost.

---

	Oathbound Surge

* Type : Support Burst
* Cooldown : Once per encounter
Valerius channels his remaining will into nearby allies.

	Effect :
* Instantly restores:
	* Small HP to players nearby
	* Moderate stamina/mana
* Slightly increases attack speed and cast speed for 10 seconds

	Narrative Purpose : A final rally — not power, but momentum.

---

		CONDITIONAL ABILITIES

	Defiance of the Fallen

* Trigger : When surrounded by 8+ Undead Crusaders
Valerius enters a defensive rage state.

	Effect :
* Armor increased significantly
* Generates threat rapidly
* Automatically activates "Banner of Fading Valor"
* Undead Crusaders prioritize him

	This is the state that leads into:
→ Either his sacrifice
→ Or dungeon-clearing shockwave

---

		DEATH / END PHASE ABILITIES

	Final Absolution

*(If Valerius survives the onslaught)*

	Valerius stabs himself with Thornbrand, kneeling.

	Effect :
* Triggers "Oath of the Last Crusader" buff for players
* Drops "Scroll of Thornbrand’s Testament"
* No enemy spawns during the animation
* His body dissolves into green motes of light

---

	Cataclysm of Remembrance

*(If Valerius is slain by Undead)*

	A violent shockwave erupts from his body.

	Effect :
* Instantly kills all Undead Crusaders on the current level
* Opens the dungeon gate to the next section
* No buffs or scroll are awarded

	Narrative Purpose : His will breaks the battlefield itself — even in death, he clears the path.

---

		AI PRIORITY LOGIC

1. Target Undead Crusaders over all others
2. Move toward highest density of Undead
3. Activate Banner if players are engaged nearby
4. Intercept lethal blows aimed at players
5. Never pursue fleeing players
6. Never chase outside his designated dungeon area

---
