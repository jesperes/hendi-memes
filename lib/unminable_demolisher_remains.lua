-- Since Mike likes to place demolisher corpses in scenic locations, lets make sure they
-- cannot be accidentally mined.

local demolisher_remains_item_list = {
    "small-demolisher-corpse",
    "medium-demolisher-corpse",
    "big-demolisher-corpse"
}

for i, v in ipairs(demolisher_remains_item_list) do
   local entity = data.raw["simple-entity"][v]
   if entity then
        entity.minable = nil
   end
end
