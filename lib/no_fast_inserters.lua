-- Lock fast inserters behind Aquilo science (or space science if not SA), to
-- avoid Mike researching it by mistake.

-- I wanted to remove them completely, but in SA this is a bit more difficult
-- due to the fact that SA depends on stack inserters which depend on fast
-- inserters, so I opted to just lock them behind Aquilo science.
if data.raw.technology["fast-inserter"] then
    if data.raw.technology["cryogenic-science-pack"] then
        table.insert(data.raw.technology["fast-inserter"].prerequisites, "cryogenic-science-pack")
    else
        table.insert(data.raw.technology["fast-inserter"].prerequisites, "space-science-pack")
    end
end
