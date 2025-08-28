local tile = data.raw["tile"]["landfill"]
local nuclear_ground = data.raw["tile"]["nuclear-ground"]
if tile then
    -- Make landfill absorb as much pollution as nuclear ground
    tile.absorptions_per_second = nuclear_ground.absorptions_per_second
end
