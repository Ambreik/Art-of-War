			Hidden Village Pillars

**Location:** Veyra’s Reach → Vicinity of Hidden Village
**Category:** Environmental Puzzle / Nighttime Defense Mechanic
**Related Objects:** *Torch Item*, *Wooden Pillar*, *Village Boundary System*

---

## 1. Overview

Around the outskirts of the **Hidden Village**, dozens of ancient **wooden pillars** stand as silent sentinels.
At night, these pillars serve as part of a community defense ritual — players can throw *Fire Torches* to ignite the tops of the pillars, lighting the perimeter and driving back wandering beasts.

Each successful ignition provides **light**, **safety radius**, and **temporary defense buffs** to villagers and players nearby.
However, each pillar burns slowly until it collapses into ash, requiring coordination and timing among players.

---

## 2. Core Mechanic Concept

| Mechanic Element          | Function                                                                                                                |
| ------------------------- | ----------------------------------------------------------------------------------------------------------------------- |
| **Throwing Torches**      | Players use the item *Fire Torch* to light unlit pillars. Must aim accurately (manual targeting system).                |
| **Nighttime Restriction** | Pillars can only be ignited between **18:00 and 05:00 game time**. During the day, torches fail to ignite.              |
| **Burn Duration**         | Once ignited, a pillar burns for **10–15 real-time minutes**, providing area illumination and repelling hostile spawns. |
| **Safety Aura**           | Within the pillar’s radius (≈ 25 meters), wild beasts and aggressive mobs despawn or ignore players.                    |
| **Decay Event**           | After burn duration ends, pillar collapses with visual ash effect; radius protection fades gradually.                   |

---

## 3. Player Interaction Flow

1. **Acquire Fire Torch** – obtained from the Village Supply Vendor.
2. **Equip Torch** – players must *hold* or *equip* the torch item.
3. **Target Pillar** – a targeting reticle highlights ignitable pillars (green = in range, red = out of range).
4. **Throw Torch** – player uses throw command; if hit accuracy ≥ threshold (distance and angle check), the pillar ignites.
5. **Ignition Event** – pillar glows orange, triggers burning animation, and activates the safety aura.

> **Failure Case:** Missed throws cause torches to extinguish after 2 seconds; no resource refund.

---

## 4. Environmental Interaction Logic

**Day/Night Dependency:**

* If day: pillar remains inert, cannot be lit.
* If night: pillar can ignite.
* Optional message:

  > “The air is too bright for fire to catch. Try again after sunset.”


**Cooperative Effect:**

* If 5 or more pillars are lit simultaneously → “Perimeter Secured” event triggers.

  * Wild beast spawns reduce by 80%.
  * All players in the area receive +5% stamina regeneration for 5 minutes.
  * Village NPCs resume patrol and idle animations (as if feeling safe).

---

## 5. Visual and Audio Design

| Element          | Asset                                      | Description                                 |
| ---------------- | ------------------------------------------ | ------------------------------------------- |
| **Ignition FX**  | `fx_torch_ignite.vfx`                      | Bright orange flame burst at pillar top     |
| **Burn Loop FX** | `fx_firelight_pillar.vfx`                  | Flickering ambient flame, small embers fall |
| **Collapse FX**  | `fx_pillar_collapse.vfx`                   | Smoke burst, ashes fall to ground           |
| **Sound FX**     | `snd_torch_throw.ogg`, `snd_wood_burn.ogg` | Immersive feedback for throw and burning    |

---

## 6. Lua-ready Logic Snippet (Simplified Pseudo-Script)

```lua
-- =========================================
-- Hidden Village Pillars - Environmental Mechanic
-- =========================================

function onTorchThrow(player, pillarID)
    if world:getTimeOfDay() < 18000 or world:getTimeOfDay() > 5000 then
        player:sendMessage("You can only ignite pillars at night.")
        return
    end

    local hitChance = calculateHitChance(player, pillarID)
    if hitChance >= 75 then
        ignitePillar(pillarID, player)
    else
        player:sendMessage("The torch misses the target.")
    end
end

function ignitePillar(pillarID, player)
    if pillarID:isLit() then
        player:sendMessage("This pillar is already burning.")
        return
    end

    pillarID:setLit(true)
    pillarID:playEffect("fx_torch_ignite.vfx")
    pillarID:activateAura("SafeZone", 25)
    pillarID:setTimer("burnDecay", math.random(600, 900)) -- 10–15 min

    player:sendMessage("You light the pillar. The shadows retreat.")
end

function onTimer_burnDecay(pillarID)
    pillarID:deactivateAura("SafeZone")
    pillarID:playEffect("fx_pillar_collapse.vfx")
    pillarID:setLit(false)
    pillarID:removeAfter(60)
end

function calculateHitChance(player, pillarID)
    local distance = player:getDistance(pillarID)
    local baseAccuracy = 90 - (distance * 3)
    return math.max(30, baseAccuracy)
end
```

---

## 7. Gameplay Impact & Integration Notes

* **Tactical Use:** Players can defend the village without combat by maintaining light across the perimeter.
* **Resource Sink:** Encourages use of consumable items (Fire Torch).
* **Social Feature:** Cooperative players lighting all pillars trigger community event.
* **Performance:** Pillars use lightweight trigger spheres to manage aura effects; avoid overstacking.

---