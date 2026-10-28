-- Clears the templated localised_description that vanilla sets on some prototypes,
-- so the descriptions from this mod's locale files are shown instead.
-- Missing prototypes are skipped, so a mod that removes one cannot break loading.

local function clear_description(prototype_type, name)
  local prototype = data.raw[prototype_type] and data.raw[prototype_type][name]
  if prototype then
    prototype.localised_description = nil
  end
end

-- ==================== BASE GAME ====================

-- Modules
clear_description("module", "speed-module-2")
clear_description("module", "speed-module-3")
clear_description("module", "productivity-module-2")
clear_description("module", "productivity-module-3")
clear_description("module", "efficiency-module-2")
clear_description("module", "efficiency-module-3")

-- Science packs
clear_description("item", "automation-science-pack")
clear_description("item", "logistic-science-pack")
clear_description("item", "military-science-pack")
clear_description("item", "chemical-science-pack")
clear_description("item", "production-science-pack")
clear_description("item", "utility-science-pack")
clear_description("item", "space-science-pack")

-- Tiered equipment: the template sits on the item, not on the equipment prototype
clear_description("item", "energy-shield-mk2-equipment")
clear_description("item", "battery-mk2-equipment")
clear_description("item", "personal-roboport-mk2-equipment")

-- ==================== SPACE AGE ====================

if mods["space-age"] then

  -- Science packs
  clear_description("item", "agricultural-science-pack")
  clear_description("item", "metallurgic-science-pack")
  clear_description("item", "electromagnetic-science-pack")
  clear_description("item", "cryogenic-science-pack")
  clear_description("item", "promethium-science-pack")

  -- Tiered equipment
  clear_description("item", "battery-mk3-equipment")

end

-- ==================== QUALITY ====================

if mods["quality"] then

  -- Modules
  clear_description("module", "quality-module-2")
  clear_description("module", "quality-module-3")

end
