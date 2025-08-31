local holy_tree_of_wisdom = require("lib/holy_tree_of_wisdom")
local little_johnny = require("lib/starting_area_johnny")
require("lib/depleted_miners_cannot_be_removed")

script.on_event(defines.events.on_player_created, function(event)
    local surface = game.surfaces['nauvis']
    holy_tree_of_wisdom.place(surface, 50, 80)
    little_johnny.place(surface, 100, 120)
end)
