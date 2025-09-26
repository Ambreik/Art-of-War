			Spell penetration

	Spell penetration reduces the target's resistance to spells. Spell penetration only works against targets with resistances, and will not reduce resistances below 
zero.
	Spell penetration typically is a PvM stat, intended to help casters against players who wear resistance gear or are buffed with extra resistance. 
	In PvM, targets of a higher level than the caster have a base resistance (2% of mitigation per level difference) which cannot be overcome by spell penetration nor 
by any other stat. Otherwise, very few mobs and raid-level bosses have a substantial amount of resistance to overcome.

	The formula for spell penetration is quite simple. Each point of spell penetration negates one point of a target's resistance. Spell penetration cannot reduce a 
target's resistance below zero. The following equation gives effect of spell penetration on resistance, where P is the caster's spell penetration, and Rb is the 
target's base resistance. Here, the min() function means the minimum of two values - in this case, it shows that spell penetration greater than a target's base 
resistance has no effect.

		R = Rb - min(P, Rb)
		
		Monsters : 
*