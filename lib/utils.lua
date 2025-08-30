local utils = {}

-- Return a random position based on distance from spawn
function utils.get_random_position(min_radius, max_radius)
    local angle = math.random() * 2 * math.pi
    local radius = min_radius + math.random() * (max_radius - min_radius)
    local x = radius * math.cos(angle)
    local y = radius * math.sin(angle)
    local position = { x = x, y = y }
    return position
end

function utils.print_members(obj, indent)
    indent = indent or ""
    for k, v in pairs(obj) do
        if type(v) == "table" then
            print(indent .. k .. ": {")
            utils.print_members(v, indent .. "  ")
            print(indent .. "}")
        else
            print(indent .. k .. ": " .. tostring(v))
        end
    end
end

return utils
