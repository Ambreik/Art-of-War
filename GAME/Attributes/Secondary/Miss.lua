			Miss

	A "miss" occurs when an attack fails, dealing no damage and not triggering any mechanics that would normally result from a successful attack.

---

	Base Miss Rate
- Normal Attacks : The Base Miss Rate is calculated by comparing the attacker’s Attack Rating to the defender’s Defense. The Base Miss Rate is 5% if the Attack 
Rating and Defense are equal. 
   - Dual Wielding : Dual-wielding incurs an additional 19% miss chance. This penalty also applies to mobs.
   
- Yellow Attacks : The Base Miss Rate for Yellow Attacks is capped at 5%, not including debuffs. The Dual Wield Penalty does not affect the miss rate for yellow 
attacks.

---

	Player vs Player (PvP)

- Base Miss Rate : The base miss rate when a player or mob attacks another player is 5%.
  
- Defense vs Attack : 
   - For each point of the defender's Defense Skill above the attacker's Attack Rating, the miss rate increases by 0.04%.
   - For each point of the attacker's Attack Rating above the defender's Defense Skill, the miss rate decreases by 0.02%.

---

	Player vs Mob (PvM)

- The miss chance against a mob is determined solely by the difference between the mob's Defense Skill and the player's Weapon Skill. There are two formulas for calculating miss chance against mobs:
  
  - If the difference between the mob's Defense Skill and Weapon Skill is ≤ 10 : 
    - Formula: 5% + (Defense Skill - Weapon Skill) * 0.1%
    
  - If the difference is > 10 : 
    - Formula: 6% + (Defense Skill - Weapon Skill - 10) * 0.4%
    
  - Dual Wielding : If the player is dual-wielding, the miss chance is adjusted to 24% for the first formula and 25% for the second formula.

---

	Additional Miss Factors

- Level Factor : Level is not a factor in miss calculation except when attacking a mob of level 9 or lower. The miss chance against low-level mobs is a percentage based on the mob’s level divided by 10.

---

	Calculating Mob's Defense Skill or Attack Rating**
- Formula: A mob’s Defense Skill or Attack Rating is calculated by multiplying its level by 5.

---

	Other Ways to Miss
- A ranged attack can result in a miss if the target leaves range, breaks line of sight, or uses the "[Stealth]" skill while the attack is in mid-air.