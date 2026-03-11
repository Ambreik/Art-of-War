			Grimstone Quarry Catapults

**Location:** Veyra’s Reach → Cliffside Drop Zones
**Category:** Environmental Interaction / Hazardous Transport
**Related Resources:** *Tideshade Ore*, *Coralvine Bloom*, *Drowned Explorer’s Cache*
**Author:** GPT-5 (Mechanic Integration Draft)

---

## 1. Overview

The **Grimstone Catapults** are old mining siege engines once used to haul ore across cliffs.
After the quarry’s collapse, adventurers discovered these contraptions can *launch* players toward unreachable underwater coves and cliffsides, containing rare materials and hidden treasures.

They represent a **high-risk, high-reward** exploration mechanic — part environmental hazard, part traversal puzzle.

---

## 2. Player Interaction Flow

**Entry Condition:**

* Player must discover the **Catapult Interaction Point** (`object_catapult_interact`).
* Nearby signpost provides an optional tooltip:

  > *“Warning: Unauthorized launch attempts have resulted in serious injury or death.”*

**Options UI:**

1. *Inspect the Catapult* → Gives lore note about old miners.
2. *Adjust Launch Angle / Power* (3 presets: Low, Medium, High).
3. *Launch!* → triggers animation and trajectory event.

---

## 3. Core Mechanic Logic (Design Breakdown)

| Phase                          | Function               | Description                                                                     |
| ------------------------------ | ---------------------- | ------------------------------------------------------------------------------- |
| **1. Initialization**          | Check player input     | Confirms launch parameters and available stamina.                               |
| **2. Pre-Launch Safety Check** | Performs radius scan   | Cancels launch if obstruction or another player is in launch path.              |
| **3. Launch Sequence**         | Animation & trajectory | Applies velocity vector to player (calculated from Power Level).                |
| **4. Mid-Flight Dynamics**     | Simulated physics      | Player can slightly steer mid-air (limited air control variable).               |
| **5. Landing Detection**       | Environment collision  | Detects surface type: cliffside, shallow water, deep water.                     |
| **6. Outcome Resolution**      | Trigger results        | Determines success/failure → fall damage, water dive event, or fatal collision. |

---

## 4. Environmental & Hazard System

**Landing Zones:**

* **Cliff Surface (Low Power):** Safe landing on ledge, may find mining veins.
* **Shallow Bay (Medium Power):** Minor fall damage; can gather herbs.
* **Deep Trench (High Power):** No damage if landed precisely → triggers underwater exploration zone (Tideshade vein + chance for Drowned Cache).

**Failure States:**

* Overshoot: Player collides with cliff → death or major damage.
* Undershoot: Player lands in rocks or debris → moderate damage, no reward.
* Bad trajectory (from manual adjustments) → ragdoll impact, loss of durability to armor (-5%).

---

## 5. Reward Integration Logic

| Reward Type                  | Trigger                                | Description                                                    |
| ---------------------------- | -------------------------------------- | -------------------------------------------------------------- |
| **Tideshade Ore Node**       | Landing in trench zone                 | Spawns 1–3 minable veins (temporary nodes, despawn 10 min).    |
| **Coralvine Bloom Node**     | Landing near coral shelf               | 30% chance to spawn 2 gatherable nodes.                        |
| **Drowned Explorer’s Cache** | 10% RNG on any successful deep landing | Spawns treasure chest visible only to player who triggered it. |

**Anti-Exploit:**

* Timer: Each catapult can only yield *one reward instance per player* every 45 minutes.
* Water pressure debuff (`pressure_exhaustion`) prevents chain exploitation underwater.

---

## 6. Dynamic Difficulty & Risk Multipliers

* **Launch Power Affects Rewards:**

  * Low → 5% reward chance, 0 fall risk.
  * Medium → 15% reward chance, moderate fall risk.
  * High → 30% reward chance, extreme fall risk (death possible).

* **Environmental Modifier:**

  * *Weather: Storm* → +10% fall risk, +5% reward chance.
  * *Nighttime:* +10% visibility penalty, but +15% rare drop chance.

---

## 7. Lua-ready Logic Snippet (Pseudo-Implementation)

```lua
-- =========================================
-- Grimstone Quarry Catapult Mechanic
-- =========================================

function Interact_Catapult(player, catapultID)
    if player:isInCombat() then
        player:sendMessage("You cannot operate the catapult during combat.")
        return
    end

    local launchPower = player:selectOption({
        "Low Power (Safe Jump)",
        "Medium Power (Standard Arc)",
        "High Power (Long Range)"
    })

    -- Pre-launch safety check
    if isObstructed(catapultID) then
        player:sendMessage("The launch path is blocked.")
        return
    end

    -- Apply trajectory
    local trajectory = calculateTrajectory(launchPower)
    player:launch(trajectory)

    -- Event listener: Landing check
    onLanding(player, function(landingZone)
        if landingZone == "cliff" then
            spawnNode("TideshadeOre", 1, player)
        elseif landingZone == "shallow_water" then
            spawnNode("CoralvineBloom", math.random(1, 2), player)
        elseif landingZone == "deep_trench" then
            spawnNode("TideshadeOre", 3, player)
            if math.random(1, 100) <= 10 then
                spawnObject("DrownedCache", player)
            end
        else
            player:dealDamage(75) -- failed landing
        end
    end)
end

-- Supporting functions
function calculateTrajectory(powerLevel)
    if powerLevel == 1 then
        return {angle = 25, velocity = 25}
    elseif powerLevel == 2 then
        return {angle = 35, velocity = 40}
    else
        return {angle = 45, velocity = 60}
    end
end

function isObstructed(catapultID)
    return world:checkObstruction(catapultID, 15)
end
```

---

## 8. Integration Notes

* **Script Trigger:**

  * Registered under environment event type `catapult_launch`.
  * Uses shared physics behavior with “glider” and “grapple” systems.

* **Audio/Visual FX:**

  * Launch Sound: `snd_catapult_fire.ogg`
  * Landing Splash: `fx_splash_large.vfx`
  * Death Fall: `fx_bonebreak.vfx`

* **Optional Enhancements:**

  * Add a *Catapult Master NPC* near the site who offers a “Safe Launch Training” mini-quest.
  * Random dialogue lines for onlookers (“That’s gonna hurt…”) add flavor.

---