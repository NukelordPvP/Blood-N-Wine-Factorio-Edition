custom_config = 'qol-custom-config',

data:extend{
  {
    type = "bool-setting",
    name = "bnw",
    order = "a",
    setting_type = "startup",
    default_value = true
  },
}

local function force_setting(setting_type, setting_name, value)
  local setting = data.raw[setting_type .. "-setting"][setting_name]
  if setting then
    if setting_type == "bool" then
      setting.forced_value = value
    else
      setting.allowed_values = { value }
    end
    setting.default_value = value
    setting.hidden = true
  end
end

------------------
-- STARTUP TAB
------------------

-- Force Aircraft
force_setting("bool", "aircraft-hardmode", true)
force_setting("bool", "helicopter-tech", true)
force_setting("bool", "heli-equipment-grid", true)

-- Force Aircraft Realism
force_setting("bool", "aircraft-realism-takeoff-health", true)

-- Force Alien Biomes Tweaked
force_setting("double", "alienbiomestweaked_rockcoveragemultiplier", 2)
force_setting("double", "alienbiomestweaked_rockmaxprobmultiplier", 4)

-- Force Armoured Biters
force_setting("string", "ab-behemoth-armoured-biter-health", "75%")
force_setting("string", "ab-behemoth-armoured-biter-resistances", "75%")
force_setting("string", "ab-behemoth-armoured-biter-spawn-probability", "25%")
force_setting("string", "ab-leviathan-armoured-biter-health", "75%")
force_setting("string", "ab-leviathan-armoured-biter-resistances", "75%")
force_setting("string", "ab-leviathan-armoured-biter-spawn-probability", "25%")

-- Force Combat Mechanics Overhaul
force_setting("int", "unit-speed", 100)
force_setting("int", "unit-health", 100)
force_setting("int", "unit-range", 100)
force_setting("int", "worm-health", 100)
force_setting("int", "worm-range", 100)

-- Force Enemy Race Manager
force_setting("string", "enemyracemanager-max-level", "MAX_LEVEL_5")
force_setting("int", "enemyracemanager-enemy-corpse-time", 5)
force_setting("int", "enemyracemanager-level-multipliers", 10)
force_setting("int", "enemyracemanager-max-hitpoint-multipliers", 8)
force_setting("int", "enemyracemanager-damage-multipliers", 3)
force_setting("double", "enemyracemanager-running-speed-multipliers", 1.25)
-- allowed_values = MAP_GEN_DEFAULT, MAP_GEN_2_RACES_SPLIT, MAP_GEN_4_RACES_SPLIT, MAP_GEN_1_RACE_PER_SURFACE
force_setting("string", "enemyracemanager-mapping-method", "MAP_GEN_1_RACE_PER_SURFACE")
force_setting("bool", "enemyracemanager-enhance-defense", false)
force_setting("int", "enemyracemanager-attack-meter-group-interval", 5)

-- Force Enemy Race Manager Asset Pack
-- Change to true if adding Terran as allied Units for consistency.
force_setting("bool", "erm-asset-base-destroyed-alert-replace", false)

-- Force Explosive Biters
force_setting("double", "eb-HealthScaler", 0.5)
force_setting("double", "eb-DamageScaler", 0.8)

-- Nuclear Fuel
force_setting("bool", "nuclear-fuel-geiger-tick", true)

-- Force Quality of Life research
force_setting("string", "qol-custom-config", "1,14,crafting-speed,150*L,automation-science-pack,logistic-science-pack,175*L,chemical-science-pack,225*L,production-science-pack,300*L,inventory-size,utility-science-pack,mining-speed,movement-speed,player-reach,5,1,4,5,20,0,0,2,10,1,1,3,5,10,3,1,4,5,15,2,1,3,1,4,5,5,3,1,6,7,20,3,1,3,1,4,1,6,5,5,3,1,8,9,25,4,1,3,1,4,1,6,1,8,10,4,2,5,0,0,2,10,1,1,3,2,5,1,1,4,5,15,2,1,3,1,4,4,5,1,1,6,7,20,3,1,3,1,4,1,6,4,5,2,1,11,9,25,4,1,3,1,4,1,6,1,11,12,4,5,30,0,0,2,10,1,1,3,5,20,3,1,4,5,15,2,1,3,1,4,5,10,3,1,6,7,20,3,1,3,1,4,1,6,5,10,3,1,8,9,25,4,1,3,1,4,1,6,1,8,13,4,4,5,0,0,2,10,1,1,3,4,5,2,1,4,5,15,2,1,3,1,4,4,5,2,1,6,7,20,3,1,3,1,4,1,6,4,5,2,1,11,9,25,4,1,3,1,4,1,6,1,11,14,4,3,1,0,0,2,10,1,1,3,3,1,2,1,4,5,15,2,1,3,1,4,3,1,2,1,6,7,20,3,1,3,1,4,1,6,3,1,2,1,8,9,25,4,1,3,1,4,1,6,1,8")

-- Rampant Arsenal
force_setting("bool", "rampant-arsenal-useInfiniteTechnologies", false)

-- Rampant Fixed - Disable new enemies and changes to them for compatiblity with ERM.
force_setting("bool", "rampantFixed--newEnemies", false)
force_setting("bool", "rampantFixed--allowLongRangeImmunity", false)
force_setting("int", "rampantFixed--longRangeImmunity_efficiency", 70)
force_setting("bool", "rampantFixed--acidEnemy", false)
force_setting("bool", "rampantFixed--laserEnemy", false)
force_setting("bool", "rampantFixed--electricEnemy", false)
force_setting("bool", "rampantFixed--suicideEnemy", false)
force_setting("bool", "rampantFixed--fastEnemy", false)
force_setting("bool", "rampantFixed--waspEnemy", false)
force_setting("bool", "rampantFixed--spawnerEnemy", false)
force_setting("bool", "rampantFixed--trollEnemy", false)
force_setting("bool", "rampantFixed--energyThiefEnemy", false)
force_setting("bool", "rampantFixed--fireEnemy", false)
force_setting("bool", "rampantFixed--ArachnidsEnemy", false)
force_setting("bool", "rampantFixed--physicalEnemy", false)
force_setting("bool", "rampantFixed--infernoEnemy", false)
force_setting("bool", "rampantFixed--poisonEnemy", false)
force_setting("bool", "rampantFixed--nuclearEnemy", false)
force_setting("bool", "rampantFixed--JuggernautEnemy", false)
force_setting("bool", "rampantFixed--unitSpawnerBreath", false)
-- Disabled doesnt appear to work?
--force_setting("double", "rampantFixed--unitSpawnerSpawnScaler", 0.20)
--force_setting("double", "rampantFixed--unitHiveHealthScaler", 0.25)

-- Squeak Through
force_setting("string", "squeakthrough-mod-compatibility", "opt-in")

---------------
-- MAP TAB
---------------

-- AII Industry
force_setting("bool", "start-with-basic-logistics", false)
force_setting("int", "quick-start-science", 0)

-- AII Programmable Vehicles
force_setting("int", "deadzone-construction-denial-range", 0)

-- Aircraft Realism
force_setting("bool", "aircraft-realism-strict-runway-checking", true)
force_setting("bool", "aircraft-realism-environmental-impact", true)
force_setting("bool", "aircraft-emit-pollution", true)
force_setting("double", "aircraft-pollution-amount", 0.2)

-- Creeper2
force_setting("int", "creep-growth-1_0_2", 3)
force_setting("double", "creep-biter-death", 0)
force_setting("int", "creep-evolution-factor-1_0_2", 0)
force_setting("bool", "creep-evolution-pollution-bonus", false)

-- Death Curses
force_setting("int", "dc_curse_duration", 5)

-- Enemy Race Manager
force_setting("string", "enemyracemanager-build-formation", "BUILDING_FORMATION_RANDOM")
-- Either 80% slower is either 1 to 0.2 or 1 to 5 idk will test
force_setting("double", "enemyracemanager-evolution-point-multipliers", 5)
force_setting("int", "enemyracemanager-flying-squad-chance", 20)
force_setting("int", "enemyracemanager-dropship-squad-chance", 20)
force_setting("int", "enemyracemanager-time-based-points", 3)

-- Helicopter Revival
force_setting("double", "heli-crash-dmg-mult", 2)

-- Space Exploration
force_setting("int", "se-meteor-interval", 40)

----------------
-- Per Player
----------------

-- Factory Planner
force_setting("bool", "fp_prefer_matrix_solver", true)

-- Radioactivity Kills Slowly
force_setting("string", "osm-rks-display-gui", "always-off")
