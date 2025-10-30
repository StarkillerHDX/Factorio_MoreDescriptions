-- This script *TRIES* to remove the "templated" descriptions from certain items
-- so that the custom descriptions from the locale files will be used instead.
-- I can't get tiered equipment items to work. They all use the tier 1 description.

----------------------------------------------------
-- BASE GAME FIXES (Always run)
----------------------------------------------------

-- Clear module descriptions - works
data.raw.module["speed-module-2"].localised_description = nil
data.raw.module["speed-module-3"].localised_description = nil
data.raw.module["productivity-module-2"].localised_description = nil
data.raw.module["productivity-module-3"].localised_description = nil
data.raw.module["efficiency-module-2"].localised_description = nil
data.raw.module["efficiency-module-3"].localised_description = nil

-- Clear base science pack descriptions - works
data.raw.tool["automation-science-pack"].localised_description = nil
data.raw.tool["logistic-science-pack"].localised_description = nil
data.raw.tool["military-science-pack"].localised_description = nil
data.raw.tool["chemical-science-pack"].localised_description = nil
data.raw.tool["production-science-pack"].localised_description = nil
data.raw.tool["utility-science-pack"].localised_description = nil
data.raw.tool["space-science-pack"].localised_description = nil

-- Clear base game tiered item descriptions (MK2) - doesn't work :(
data.raw.armor["power-armor-mk2"].localised_description = nil
data.raw["energy-shield-equipment"]["energy-shield-mk2-equipment"].localised_description = nil
data.raw["battery-equipment"]["battery-mk2-equipment"].localised_description = nil
data.raw["roboport-equipment"]["personal-roboport-mk2-equipment"].localised_description = nil


----------------------------------------------------
-- SPACE AGE SPECIFIC FIXES (Only run if Space Age is active)
----------------------------------------------------

-- Check if the "space-age" DLC is loaded before proceeding
if mods["space-age"] then

  -- Clear Space Age science pack descriptions - works
  data.raw.tool["agricultural-science-pack"].localised_description = nil
  data.raw.tool["metallurgic-science-pack"].localised_description = nil
  data.raw.tool["electromagnetic-science-pack"].localised_description = nil
  data.raw.tool["cryogenic-science-pack"].localised_description = nil
  data.raw.tool["promethium-science-pack"].localised_description = nil

  -- Clear Space Age tiered item descriptions (MK3) - doesn't work :(
  data.raw["battery-equipment"]["battery-mk3-equipment"].localised_description = nil

end


----------------------------------------------------
-- QUALITY SPECIFIC FIXES (Only run if Quality is active)
----------------------------------------------------

-- Check if the "quality" DLC is loaded before proceeding
if mods["quality"] then

  -- Clear quality module descriptions - works
  data.raw.module["quality-module-2"].localised_description = nil
  data.raw.module["quality-module-3"].localised_description = nil

end
