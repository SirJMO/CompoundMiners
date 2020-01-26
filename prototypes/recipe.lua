data:extend(
    {
        {
            type = "recipe",
            name = "compound-mining-drill-mk1",
            enabled = false,
            normal = {
                enabled = false,
                energy_required = 2,
                ingredients = {
                    {"electric-mining-drill", 9},
                    {"steel-plate", 12},
                    {"electronic-circuit", 12}
                },
                result = "compound-mining-drill-mk1"
            },
            expensive = {
                enabled = false,
                energy_required = 2,
                ingredients = {
                    {"electric-mining-drill", 18},
                    {"steel-plate", 24},
                    {"electronic-circuit", 24},
                    {"advanced-circuit", 24}
                },
                result = "compound-mining-drill-mk1"
            }
        },
        {
            type = "recipe",
            name = "compound-mining-drill-mk2",
            enabled = false,
            normal = {
                enabled = false,
                energy_required = 2,
                ingredients = {
                    {"compound-mining-drill-mk1", 9},
                    {"steel-plate", 12},
                    {"electronic-circuit", 12},
                    {"advanced-circuit", 12}
                },
                result = "compound-mining-drill-mk2"
            },
            expensive = {
                enabled = false,
                energy_required = 2,
                ingredients = {
                    {"compound-mining-drill-mk1", 18},
                    {"steel-plate", 24},
                    {"electronic-circuit", 24},
                    {"advanced-circuit", 24},
                    {"processing-unit", 24}
                },
                result = "compound-mining-drill-mk2"
            }
        },
        {
            type = "recipe",
            name = "compound-mining-drill-mk3",
            enabled = false,
            normal = {
                enabled = false,
                energy_required = 2,
                ingredients = {
                    {"compound-mining-drill-mk2", 9},
                    {"steel-plate", 12},
                    {"electronic-circuit", 12},
                    {"advanced-circuit", 12},
                    {"processing-unit", 12}
                },
                result = "compound-mining-drill-mk3"
            },
            expensive = {
                enabled = false,
                energy_required = 2,
                ingredients = {
                    {"compound-mining-drill-mk2", 18},
                    {"steel-plate", 24},
                    {"electronic-circuit", 24},
                    {"advanced-circuit", 24},
                    {"processing-unit", 24}
                },
                result = "compound-mining-drill-mk3"
            }
        }
    }
)
