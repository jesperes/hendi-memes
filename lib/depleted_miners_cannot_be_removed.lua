-- Once a resource patch has been depleted, make the miner mining it
-- unminable.
script.on_event(defines.events.on_resource_depleted, function(event)
    local miners = game.surfaces['nauvis'].find_entities_filtered {type = "mining-drill"}
    for _k, v in pairs(miners) do
        if v.mining_target == event.entity then
            v.minable = false
        end
    end
end)
