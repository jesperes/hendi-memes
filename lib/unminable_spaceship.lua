-- The crashed spaceship should of course also not be minable

local crash_site_containers = {
    "crash-site-chest-1",
    "crash-site-chest-2",
    "crash-site-spaceship",
    "crash-site-spaceship-wreck-big-1",
    "crash-site-spaceship-wreck-big-2",
    "crash-site-spaceship-wreck-medium-1",
    "crash-site-spaceship-wreck-medium-2",
    "crash-site-spaceship-wreck-medium-3",
}

local crash_site_entities = {
    "crash-site-spaceship-wreck-small-1",
    "crash-site-spaceship-wreck-small-2",
    "crash-site-spaceship-wreck-small-3",
    "crash-site-spaceship-wreck-small-4",
    "crash-site-spaceship-wreck-small-5",
    "crash-site-spaceship-wreck-small-6"
}

for _, v in ipairs(crash_site_containers) do
   local entity = data.raw["container"][v]
   if entity then
        entity.minable = nil
   end
end

for _, v in ipairs(crash_site_entities) do
    local entity = data.raw["simple-entity-with-owner"][v]
    if entity then
         entity.minable = nil
    end
 end
