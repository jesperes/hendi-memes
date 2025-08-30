local utils = require("lib/utils")

-- Place a indestructible johnny in in the starting area
script.on_event(defines.events.on_player_created, function(event)
    local surface = game.surfaces['nauvis']
    local position = utils.get_random_position(50, 100)
    local worm = surface.create_entity {
      name = "small-worm-turret",
      position = position,
      force = "enemy"
    }
    if worm and worm.valid then
      worm.destructible = false
    end
  end)
