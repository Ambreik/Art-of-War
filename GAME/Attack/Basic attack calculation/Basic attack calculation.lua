			Basic attack calculation
			
		Making an attack
	To perform (physical) attacks, simply press Spacebar and the player will perform the attack, 4 hits (6 for daggers) if the Combo Skill is not active, up to 12 (
14 for daggers) if at its highest level. Another way to attack is to press the left mouse button on the target: the player will attack as long as the button is held 
down (obviously up to the maximum number of Combo attacks). You can change this option to attack with the right button. It is also possible to select the option 
"Auto Attack" on the hotkey and the player will continue to attack the selected target even with a single mouse click. end end 

		Attack from a distance
	Some monsters' attacks are neither melee attacks nor magic attacks, but ranged attacks. The most common examples of these attacks are given by monsters that use 
bows and arrows, such as Amazons or some desert monsters, but there are other categories as well, such as attacks from monkeys and Dryads. You can avoid these types 
of attacks with the "chance to dodge arrows" bonus or the Fear ability. It is possible to reduce ranged damage with the Arrow Resistance Bonus (ranged damage is also
reduced by Physical Defense).
	The only player who can deal damage from afar is the Ninja equipped with a bow and arrow.
	
		Physical attack
	Physical attack, also called simply "attack", is the amount of base damage a player or Monster can deal to an enemy target with physical attacks. For a player, 
this means all damage done by the dagger or any weapon. As for the Monster, everyone who attacks with melee attacks or arrows takes physical damage.
	Since Defense, the base of a player's attack consists of a fixed value, determined by the player's power status, dexterity (and intelligence, for the 
Shaman,Warlocks) and level. When equipping a weapon, things change: in the case of Monsters, in fact, the attack of an armed player is not unique, but rather 
consists of a series of values ​​delimited by the minimum attack and the maximum attack; for each attack performed, the base value of the attack is fixed as a random 
value belonging to this range.
	The marked attack of a player equipped with a weapon is NOT equal to the base damage + the marked value on the weapon, but is higher: in fact, given the 
Theoretical Attack Formula (explained below), the increase in attack given is observed. The attack you read on the player window (by pressing "C") takes into account
the base attack calculated with the theoretical attack equation, the enhancement skills and the temporary increases due to the temporary boosts due to potions used 
and the abulities; on the other hand, increases due to percentage bonuses such as average damage are not recorded.
	It can be seen that no weapon, with very rare exceptions, varies its damage range (ie the difference between maximum and minimum attack).

Note: The actual damage from a player's physical attack is calculated slightly differently than the theoretical attack marked on the "C" window; the link between 
the two can be evaluated with the effective attack formula.(shown below)

		Physical attack bonus
	The following bonuses are added to a player's base damage:

*Attack value of equipped weapon (explained above);
*Bonuses "strong against..." (which are shown on window "C" );
*Average Weapon Damage Bonus (shown on window "C" );
*Bonuses given by some skills, which strengthen the attack.
	Instead, the following have the opposite effect:

*Decreased damage taken based on the enemy's DEX.
*Enemy defense
*Any specific enemy defenses (such as Arrow Resistance)
*Any enemy buff that increases stamina (like Blessing)
*If you are in an enemy Kingdom, damage taken is reduced by 10%.
		
		The theoretical attack
	The theoretical attack expression (that is, the one marked on the "C" window in the absence of skill enhancements or bonuses that increase the attack by a fixed 
amount) is summarized in a single formula that depends on status , level and weapon. The formula is as follows:
	(See picture "Formula_Atac_Teoretic")
	
	Where the status depends on the player's class: STR for Warrior, DEX for Ninja, and INT for Shaman and Sura, the attack is, depending on the race, the weapon's 
minimum or maximum attack (0 if no weapons are carried). In this case, it is called the player's Basic Attack.
	Therefore, the specific formulas are:
	(See picture "Formule_specifice")
	
	Remember that the attack calculated with these formulas must always be approximated by default (as indicated by [integer])

Note: The 70 + ⌊ (LV + 2 * DEX) / 9⌋ component can increase up to a maximum of 100: beyond that it remains constant. In theory, it's not convenient to exceed this 
value (since it has no effect), except for Ninja or others where Dexterity continues to increase damage.
	
		Attack boosts
	Attack boosts are bonuses that increase the physical attack value by a fixed number(so there are no percentage bonuses such as strong counters or average damage)
and are simply added to the base attack after calculating them, via the formulas above. Therefore, a +50 attack value upgrade will cause the player to have exactly 
50 (theoretical) attack points more than the same player would have without that bonus (in other words, these 50 attack points would not be reported in the Atk term 
in the formulas above, but are added to the end independently). However, for the purposes of calculating actual damage, attack boosts are added directly to base 
damage and are therefore influenced by the other bonuses.
	
		Effective attack
	The actual damage from an attack follows a different course than the theoretical attack marked on the player's window (notably the actual attack is less than 
the theoretical attack and this difference increases as the player's level increases).

	An effective formula in any situation is almost impossible to achieve, because the final damage depends not only on the player, but also on all the intrinsic 
characteristics of the monster, such as dodge, damage reduction, etc. However, after much study, it was possible to obtain a formula that, while not taking into 
account other factors except the target's Defense, is still effective against targets that do not have high DEX or damage reduction from other factors.

	Effective attack formula:
	(See picture "Formula_Atac_Efectiv")
	
	where:

*Augmentation= weapon augmentation (calculated as weapon's Base Attack at +9/+15 minus Base Attack at +0);
*AtkBase= Weapon base attack at +0
*STAT = status
	Obviously, this formula should be understood as the lower and upper bound of the damage that can be done: since the final damage determination is a random value 
in the damage range, this formula provides the minimum and maximum value by inserting the minimum and maximum base attack of the weapon used (or the average value to
get the average damage that can be done).
	As can be seen, an obvious difference with the theoretical attack formula is that the player's level has a negative coefficient in the main multiplicative term, 
which explains why at higher levels the theoretical and effective attack are different; in addition, unlike the formula for theoretical attack, it is necessary to 
take into account the growth of the weapon, which makes this law more difficult in practical application.
	This formula has yet to be tested on players with specific defense and high DEX, and it seems to work (roughly) against some monsters,especially high level ones,
but it works very well against low level monsters. In practice, this formula (without the Final Difmob) is used as a good approximation of the term "Base Damage" in 
the Final Physical Damage and Penetrating Damage formulas.

		Additional bonus
	Additional bonuses are those present on the player's weapon or equipment (Average Damage, Strong against ... etc). These bonuses are added to the attack 
calculation as described (the result of which will be the actual damage caused by the attack).

		Calculation of final damages
	Final damage is the exact amount of HP that is subtracted from the target as a result of an attack. It should be noted that the final damage will generally be 
different from the theoretical attack calculated with the formulas above, both because the actual attack differs slightly from the theoretical attack and because of 
the influence of all possible bonuses on the attacker and the target. The influence of the bonuses possessed by the attacker on the final damage he will inflict on 
the target appears in the following way:
	
	Damage= [max{0,(Base Damage + Attack Augments) * Bonus I-Physical Defense} * Bonus II] * Bonus III

where Bonus I (Strength Against, Resistances, etc.), Bonus II (Blessing, Fear, etc.), Bonus III (Average Damage, Ability Damage, etc. )
	
