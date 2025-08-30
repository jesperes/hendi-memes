local holy_tree_of_wisdom = {}
local utils = require("lib/utils")
local tree_name = "tree-04"

-- Place holy tree of wisdom in the starting area
function holy_tree_of_wisdom.place(surface, min_radius, max_radius)
    local position = utils.get_random_position(min_radius, max_radius)
    local tree = surface.create_entity {
      name = tree_name,
      position = position
    }
    holy_tree_of_wisdom = tree

    game.players[1].force.add_chart_tag(surface, {
        position = position,
        icon = { type = "entity", name = tree_name },
        text = "The Holy Tree of Wisdom"
    })

    -- Make the tree indestructible and unminable
    if tree and tree.valid then
        tree.destructible = false
        tree.minable = false
    end
end

return holy_tree_of_wisdom
