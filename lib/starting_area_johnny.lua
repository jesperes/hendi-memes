-- Place a indestructible johnny in in the starting area
script.on_event(defines.events.on_player_created, function(event)
    local surface = game.surfaces['nauvis']

    local min_radius = 40
    local max_radius = 100
    local angle = math.random() * 2 * math.pi
    local radius = min_radius + math.random() * (max_radius - min_radius)
    local x = radius * math.cos(angle)
    local y = radius * math.sin(angle)
    local position = { x = x, y = y }

    local worm = surface.create_entity {
      name = "small-worm-turret",
      position = position,
      force = "enemy"
    }

    if worm and worm.valid then
      worm.destructible = false
    end
  end)
