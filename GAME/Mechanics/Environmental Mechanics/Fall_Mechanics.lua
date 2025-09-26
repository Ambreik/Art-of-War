			Fall_Mechanics  

	Details : The "Fall" mechanic is triggered when a player falls from a significant height or from an environment that causes them to lose their 
footing. The mechanic is designed to assess the height of the fall, the player’s health, and any potential mitigating factors that may reduce or 
nullify fall damage.

	Rules and Calculations :
- Fall Distance : The damage taken is based on the height from which the player falls. A fall from a minor height (e.g., less than 5 meters) will cause minimal to no damage. Falls from higher altitudes (greater than 10 meters) can result in significant damage.
- Fall Speed : The player accelerates during a fall based on gravity, with an increase in speed as the fall height increases.
- Impact Damage : Upon reaching the ground, the player will take damage that is proportional to the distance fallen. For example, a fall from 10 meters may cause minor damage, while a fall from 50 meters or more may result in severe damage or even death.
    - Fall Damage Calculation :  
      Fall Damage = Fall Distance (meters) * Factor (based on environment and player's health)**
		- Light Falls (up to 10 meters) : Low or negligible damage.  
		- Moderate Falls (10-30 meters) : Moderate damage, possibly affecting stamina or movement speed.  
		- Severe Falls (over 30 meters) : High damage, potential for debilitating effects (e.g., broken bones or temporary debuff to movement).