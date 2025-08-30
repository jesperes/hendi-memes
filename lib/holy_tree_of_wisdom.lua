local utils = require("lib/utils")
local holy_tree_of_wisdom = nil

-- Place the "holy tree of wisdom" at a random location close to spawn.
script.on_event(defines.events.on_player_created, function(event)
    local surface = game.surfaces['nauvis']
    local position = utils.get_random_position(50, 100)
    position = { x = 10, y = 10 }
    local tree = surface.create_entity {
      name = "tree-04",
      position = position
    }
    holy_tree_of_wisdom = tree

    -- Make the tree indestructible and unminable
    if tree and tree.valid then
        tree.destructible = false
        tree.minable = false
    end
end)

-- TODO make it immune to pollution
-- script.on_event(defines.events.on_tick, function(event)
--     if math.fmod(event.tick, 60) == 0 then
--         if holy_tree_of_wisdom then
--             -- log("Progress: " .. holy_tree_of_wisdom.progress)
--         end
--     end
-- end)
