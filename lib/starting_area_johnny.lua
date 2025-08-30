local starting_area_johnny = {}
local utils = require("lib/utils")
local johnny_name = "small-worm-turret"

-- Place a indestructible johnny in in the starting area
function starting_area_johnny.place(surface, min_radius, max_radius)
    local position = utils.get_random_position(min_radius, max_radius)
    local worm = surface.create_entity {
      name = johnny_name,
      position = position,
      force = "enemy"
    }
    game.players[1].force.add_chart_tag(surface, {
        position = position,
        icon = { type = "entity", name = johnny_name },
        text = "Little Johnny"
    })

    if worm and worm.valid then
      worm.destructible = false
    end
end

return starting_area_johnny
