-- Make locomotives only accept wood as fuel. This is a reference to the science
-- delivery trains from the 10kSPM playthrough which were fueled by wood.

-- 1. Make a new fuel category called "wood-only", and make "wood" have this category.
local wood_only_category = "wood-only"
data:extend({
    { type = "fuel-category", name = wood_only_category }
})
data.raw.item['wood'].fuel_category = wood_only_category

-- 2. We much patch existing items which use the "chemical" fuel category and
-- add our new wood-only category, and also remove the "chemical" fuel category
-- from the locomotive.
local category = "chemical"
for type_name, prototypes in pairs(data.raw) do
    for name, proto in pairs(prototypes) do
        local changed = false

        if proto.energy_source and proto.energy_source.type == "burner" then
            local already_added = false
            local is_chemical = false

            for _, cat in ipairs(proto.energy_source.fuel_categories) do
                if cat == wood_only_category then
                    already_added = true
                end
                if cat == "chemical" then
                    is_chemical = true
                end
            end

            if is_chemical and not already_added then
                table.insert(proto.energy_source.fuel_categories, wood_only_category)
            end

            if name == "locomotive" then
                proto.energy_source.fuel_categories = { wood_only_category }
            end
        end
    end
end
