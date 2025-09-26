			Sailing System  

	The Sailing System governs boat movement, durability, navigation, and environmental interactions for all player-controlled and NPC-operated vessels. This system
ensures immersive sea travel, integrating weather, durability mechanics, and UI for a realistic nautical experience.  

---

		Core Features  

	1. Boat Control & Movement  
- Boats have manual steering, requiring players to adjust speed and direction.  
- Larger boats (Fishing Boats, Transport Ships, Warships) experience momentum delay when turning.  
- Movement is affected by wind speed & direction (affects sailboats only).  
- Speed varies based on boat type & cargo weight  
	- Fishing Boats & Rafts → Light & agile, easier to maneuver.  
	- Merchant Ships → Heavy, slower turns, steady speed.  
	- Warships & Transport Ships → Moderate speed but high stability.  

	2. Durability & Damage System  
- All boats (except Ghost Ships) have a Durability Bar (HP system).  
- Durability UI  
	- A Boat HP Bar appears above the boat UI.  
	- When below 30% HP, UI turns orange → visual warning.  
	- When below 10% HP, UI turns red → imminent sinking.  
- Boats take durability damage from  
	- Collisions (rocks, docks, other boats).  
	- Storms & Rough Waters (weather hazards).  
	- Enemy Attacks (sea creatures, hostile players).  
	- Overuse (Fishing Boats & Rafts degrade over time).  

	3. Boat UI System  
	A. Core UI Components  
- Boat Durability Bar (HP) → Shows current durability.  
- Timer UI (Fishing Boats & Rafts only) → Counts down the time before automatic sinking.  
- Speedometer → Displays current knots per hour.  
- Wind Direction Indicator → Important for sailboats.  

	B. UI Behavior  
- When a boat is sinking, the UI flashes red, with a warning sound.  
- If the boat is destroyed, a “Boat Sinking” message appears, and players must swim.  

	4. Swimming & Survival Mechanics  
- Players need the Swimming Ability to stay afloat after their boat sinks.  
- Players without Swimming will drown if they are too far from shore.  
- LifeboatsRafts can sometimes be used on larger vessels.  

	5. Environmental Effects on Sailing  
- Wind & Weather Conditions  
	- Calm Seas → Standard sailing.  
	- Strong Winds → Boosts sailboat speed but makes steering harder.  
	- Storms → Reduces visibility, damages boats, and slows progress.  
- Water Currents  
	- Some areas have strong ocean currents affecting movement.  
	- Faster currents = boost speed but harder control.  
- Fog & Visibility  
	- Fog makes navigation harder, requiring use of compass & minimap.  

---

	Boat-Specific Mechanics  

	1. Fishing Boats & Rafts  
- Time-limited (UI timer) – auto-sinks when time expires.  
- Takes durability damage over time & from collisions.  
- UI Elements  
  - Durability HP Bar  
  - Timer UI (until boat breaks apart)  
  - Wind & Speed UI  

	2. Ghost Ships  
- Immune to durability loss → does not sink.  
- Always follows a fixed route, cannot be player-controlled.  
- Players can board & disembark at specific points.  
- No durability UI needed.  

	3. Merchant Ships  
- High durability, but can be attacked by sea creatures or players.  
- Cannot be player-controlled, only accessed via ports.  

	4. Transport Ships & Warships  
- Takes combat damage from players, sea monsters, and enemy warships.  
- Warships have reinforced durability but can still sink.  
- UI Includes  
  - HP Bar (Durability Meter)  
  - Damage Indicators (Fire, hull cracks, flooding warning)  

---

	Combat & PvP at Sea  
- PvP Naval Battles Players can attack enemy boats using weapons or ramming.  
- Sea Monsters Some creatures attack boats, damaging durability.  
- Repair System Players can repair boats at docks or use repair kits while sailing.  

---

	Final UI Mockup Concept  

 UI Component    		   						Function 
-------------------------------------------------------------------------------------------------------------------
 Durability Bar (HP)  					Shows remaining boat durability. Turns orange at 30%, red at 10%. 
 Timer (For Fishing Boats & Rafts) 		Countdown before boat auto-sinks. 
 Speedometer (Knots per hour)  			Displays current boat speed. 
 Wind Direction Indicator  				Shows wind strength & direction. 
 Damage Indicators  					Alerts for hull cracks, fire, flooding, etc. 
 Boat Name & Type  						Displays current boat details. 

---

	This Sailing System integrates boats into the world seamlessly, allowing for exploration, fishing, naval combat, and survival mechanics. It also ensures a 
consistent system across different regions & NPCs offering boats.  

---


			Sailing System – Small Boats & Fishing Boats  

	1. Boat Types & Core Mechanics  
This system applies primarily to small boats, fishing boats, and select cargo ships used in quests.  

	Fishing Boats & Rafts (Player-Rented or Owned)  
- Usage :  
	- Used for fishing, short-distance travel, and reaching hidden islands.  
	- Can be rented from NPCs near lakes, ports, and hidden docks.  
- Durability :  
	- Each boat has a 5-hour durability timer before sinking.  
	- Durability decreases faster in harsh weather or if taking damage from sea creatures.  
	- Damage Indicators: The boat’s condition is shown on the UI (green → yellow → red).  
- Termination Mechanic :  
	- Once durability reaches 0%, the boat starts sinking.  
	- Players must have the Swimming Ability to survive or risk drowning.  
	- If close to shore, the boat automatically breaks apart, and the player swims to safety.  

---

	2. Boat Fuel/Stamina System (For Rowboats & Small Boats)  
- Rowboats & manually operated boats use a Stamina System instead of a simple timer.  
- Mechanic :  
	- Players must row manually, consuming stamina over time.  
	- Players can rest or switch rowers (if in a group) to recover stamina.  
	- If stamina reaches 0%, the boat stops moving until the player rests.  

	Stamina Factors :  
- Basic Rowing : Normal stamina drain.  
- Against Strong Currents : Increased stamina consumption.  
- Stormy Weather : Stamina drains twice as fast.  
- Upgrades (for Player-Owned Boats) : Allows slower stamina drain or faster rowing speed.  

---

	3. Boat Upgrades & Customization (NPC-Based Upgrades)  
	Some special NPCs in the world allow players to upgrade their boats. These are rare and expensive but provide useful enhancements.  

	Upgrade Options (For Small Player Boats & Certain Quest Cargo Ships)  
| Upgrade 				|					 Effect 			| 			Available For 						|  
|-----------------------|---------------------------------------|-----------------------------------------------|  
| Reinforced Hull 	| +20% Durability 						| Small Boats, Fishing Boats 					|  
| Lightweight Frame | +10% Speed 							| Small Boats, Rowboats 						|  
| Extra Cargo Space | +50% Storage (for fishing/trade) 		| Fishing Boats, Small Cargo Ships (Quest-Only) |  
| Harpoon Add-on 	| Allows attacking sea creatures 		| Fishing Boats (Special Quest Only) 			|  

---

	4. Environmental Hazards & Survival  

	Tidal Waves & Rogue Waves (New Feature)
- Occasionally, large waves spawn in open water.  
- Small boats and fishing boats can capsize, forcing players into the water.  
- Players must quickly get back onto the boat before it floats away.  

	Cold Water Effect (In Icy Regions)
- Falling into icy water = Hypothermia risk.  
- Players must get to shore quickly or consume a warming item (e.g., hot tea from NPCs).  

---

	5. Exploration & Hidden Content  

	Shipwreck Discovery & Floating Bottles (For Fishing Boats & Small Cargo Ships)  
- Players can find shipwrecks in deep waters, containing loot, rare fish, or secret quest items.  
- Floating Message Bottles :  
	- Occasionally spawn while sailing.  
	- Contain random quests, treasure maps, or lore.  

---

	6. UI Additions (For Small Boats & Fishing Boats)  
- Durability Bar (HP of the Boat)  
- Stamina Meter (For rowboats)  
- Compass & Mini-map Integration :  
	- Shows nearby islands, ports, sea creatures, and weather alerts.  
- Repair UI & Alerts :  
	- Damaged areas glow red on the boat model.  
	- NPC repair stations marked on the map.  

---

	7. Cargo Ships – Quest-Only Mechanics  
- Certain NPC quests require renting a small cargo ship.  
- These boats can take damage from pirates or storms.  
- If the boat is too damaged, the quest fails, and players must get a new cargo ship.  

---