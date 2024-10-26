local tech1 = {
    effects = {{recipe = "compound-mining-drill-mk1", type = "unlock-recipe"}},
	icons = {
        {icon = "__base__/graphics/technology/mining-productivity.png", tint = {0.25, 0.25, 0.25}, icon_size = 256, icon_mipmaps = 4}
    },
    name = "compound-mining-1",
    order = "c-a-a",
    prerequisites = {
        "electric-mining-drill"
    },
    type = "technology",
    unit = {
        count = 250,
        ingredients = {
            {"automation-science-pack", 1}
        },
        time = 60
    }
}

local tech2 = {
    effects = {{recipe = "compound-mining-drill-mk2", type = "unlock-recipe"}},
    icons = {
        {icon = "__base__/graphics/technology/mining-productivity.png", tint = {0.25, 0.25, 0.25}, icon_size = 256, icon_mipmaps = 4}
    },
    name = "compound-mining-2",
    order = "c-a-a",
    prerequisites = {
        "advanced-circuit",
        "compound-mining-1"
    },
    type = "technology",
    unit = {
        count = 250,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1}
        },
        time = 60
    }
}

local tech3 = {
    effects = {{recipe = "compound-mining-drill-mk3", type = "unlock-recipe"}},
    icons = {
        {icon = "__base__/graphics/technology/mining-productivity.png", tint = {0.25, 0.25, 0.25}, icon_size = 256, icon_mipmaps = 4}
    },
    name = "compound-mining-3",
    order = "c-a-a",
    prerequisites = {
        "processing-unit",
        "compound-mining-2"
    },
    type = "technology",
    unit = {
        count = 500,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1}
        },
        time = 60
    }
}
local tech4 = {
    effects = {{recipe = "compound-mining-drill-mk4", type = "unlock-recipe"}},
    icons = {
        {icon = "__base__/graphics/technology/mining-productivity.png", tint = {0.25, 0.25, 0.25}, icon_size = 256, icon_mipmaps = 4}
    },
    name = "compound-mining-4",
    order = "c-a-a",
    prerequisites = {
        "compound-mining-3"
    },
    type = "technology",
    unit = {
        count = 1000,
        ingredients = {
            {"automation-science-pack", 1},
			{"logistic-science-pack", 1},
			{"chemical-science-pack", 1},
			{"production-science-pack", 1},
			{"utility-science-pack", 1}
        },
        time = 60
    }
}
local tech5 = {
    effects = {{recipe = "compound-mining-drill-mk5", type = "unlock-recipe"}},
    icons = {
        {icon = "__base__/graphics/technology/mining-productivity.png", tint = {0.25, 0.25, 0.25}, icon_size = 256, icon_mipmaps = 4}
    },
    name = "compound-mining-5",
    order = "c-a-a",
    prerequisites = {
        "compound-mining-4", "space-science-pack"
    },
    type = "technology",
    unit = {
        count = 1000000,
        ingredients = {
            {"automation-science-pack", 1},
			{"logistic-science-pack", 1},
			{"chemical-science-pack", 1},
			{"production-science-pack", 1},
			{"utility-science-pack", 1},
			{"space-science-pack", 1}
        },
        time = 60
    }
}
data:extend({tech1, tech2, tech3, tech4, tech5})
