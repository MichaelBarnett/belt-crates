-- ENTITY
local belt_crate = table.deepcopy(data.raw["car"]["car"])

belt_crate.name = "belt-crate"
belt_crate.minable.result = "belt-crate"
belt_crate.icon = "__base__/graphics/icons/steel-chest.png"
belt_crate.icon_size = 64
belt_crate.inventory_size = 5
belt_crate.automated_ammo_count = 0
belt_crate.guns = {}
belt_crate.burner = nil
belt_crate.energy_source = { type = "void" }
belt_crate.turret_rotation_speed = 0
belt_crate.has_belt_immunity = false
belt_crate.collision_box = {{-0.5, -0.5}, {1.5, 1.5}}
belt_crate.selection_box = {{-0.3, -0.3}, {1.3, 1.3}}
belt_crate.rotation_speed = 0  -- no self movement
belt_crate.braking_power = "1W"
belt_crate.effectivity = 0
belt_crate.consumption = "0kW"
belt_crate.weight = 200
belt_crate.flags = {
  "placeable-neutral",
  "player-creation"
}
-- Optional: custom sprite
-- belt_crate.animation.layers[1].filename = "__yourmodname__/graphics/entity/belt-crate.png"

belt_crate.space_buildable = true


data:extend({ belt_crate })

-- ITEM
data:extend({
  {
    type = "item-with-entity-data",
    name = "belt-crate",
    icon = "__base__/graphics/icons/steel-chest.png",
    icon_size = 64,
    subgroup = "transport",
    order = "b[belt-crate]",
    place_result = "belt-crate",
    stack_size = 10
  }
})

data:extend({
  {
    type = "recipe",
    name = "belt-crate",
    enabled = false,
    ingredients = {
      { type = "item", name = "steel-chest", amount = 1 },
      { type = "item", name = "steel-plate", amount = 50 }
    },
    results = {
      { type = "item", name = "belt-crate", amount = 1 }
    }
  }
})