local function parse_graphics(graphics, scale)
    if graphics.animation then
        for _, direction in pairs({"north", "east", "south", "west"}) do
            for _, layer in pairs(graphics.animation[direction].layers) do
                if layer.filename then
                    layer.scale = scale
                    layer.hr_version.scale = scale / 2
                    layer.shift = {layer.shift[1] * scale, layer.shift[2] * scale}
                    layer.hr_version.shift = {layer.hr_version.shift[1] * scale, layer.hr_version.shift[2] * scale}
                end
            end
        end
    end

    if graphics.working_visualisations then
        for _, working_visualisation in pairs(graphics.working_visualisations) do
            if working_visualisation.animation and working_visualisation.animation.filename then
                working_visualisation.animation.scale = scale
                working_visualisation.animation.hr_version.scale = scale / 2
            end
            for _, direction in pairs({"north", "east", "south", "west"}) do
                if working_visualisation[direction .. "_animation"] then
                    if working_visualisation[direction .. "_animation"].filename then
                        working_visualisation[direction .. "_animation"].scale = scale
                        working_visualisation[direction .. "_animation"].hr_version.scale = scale / 2
                        working_visualisation[direction .. "_animation"].shift = {working_visualisation[direction .. "_animation"].shift[1] * scale, working_visualisation[direction .. "_animation"].shift[2] * scale}
                        working_visualisation[direction .. "_animation"].hr_version.shift = {
                            working_visualisation[direction .. "_animation"].hr_version.shift[1] * scale,
                            working_visualisation[direction .. "_animation"].hr_version.shift[2] * scale
                        }
                    end
                    if working_visualisation[direction .. "_animation"].layers then
                        for _, layer in pairs(working_visualisation[direction .. "_animation"].layers) do
                            if layer.filename then
                                layer.scale = scale
                                layer.hr_version.scale = scale / 2
                                layer.shift = {layer.shift[1] * scale, layer.shift[2] * scale}
                                layer.hr_version.shift = {layer.hr_version.shift[1] * scale, layer.hr_version.shift[2] * scale}
                            end
                        end
                    end
                end
            end
        end
    end

    return graphics
end

local function make_drill(args)
    local drill = table.deepcopy(data.raw["mining-drill"]["electric-mining-drill"])
    drill.name = args.name
    drill.icons = {{icon = drill.icon, icon_size = drill.icon_size, icon_mipmaps = drill.icon_mipmaps}}
    drill.minable.result = drill.name
    drill.max_health = args.max_health
    drill.collision_box = args.collision_box
    drill.selection_box = args.selection_box
    drill.input_fluid_box.pipe_connections = args.pipe_connections

    drill.graphics_set = parse_graphics(drill.graphics_set, args.scale)
    drill.wet_mining_graphics_set = parse_graphics(drill.wet_mining_graphics_set, args.scale)

    drill.mining_speed = args.mining_speed
    drill.energy_source.emissions_per_minute = args.emissions_per_minute
    drill.energy_usage = args.energy_usage
    drill.resource_searching_radius = args.resource_searching_radius
    drill.vector_to_place_result = args.vector_to_place_result
    drill.radius_visualisation_picture.scale = args.scale

    return drill
end

data:extend(
    {
        make_drill(
            {
                name = "compound-mining-drill-mk1",
                max_health = 2700,
                collision_box = {{-4.4, -4.4}, {4.4, 4.4}},
                selection_box = {{-4.5, -4.5}, {4.5, 4.5}},
                pipe_connections = {{position = {-5, 0}}, {position = {5, 0}}, {position = {0, 5}}},
                scale = 3,
                mining_speed = 4.5,
                emissions_per_minute = 90,
                energy_usage = "810kW",
                resource_searching_radius = 7.49,
                vector_to_place_result = {0, -4.55}
            }
        )
    }
)
data:extend(
    {
        make_drill(
            {
                name = "compound-mining-drill-mk2",
                max_health = 24300,
                collision_box = {{-13.4, -13.4}, {13.4, 13.4}},
                selection_box = {{-13.5, -13.5}, {13.5, 13.5}},
                pipe_connections = {{position = {-14, 0}}, {position = {14, 0}}, {position = {0, 14}}},
                scale = 9,
                mining_speed = 40.5,
                emissions_per_minute = 810,
                energy_usage = "7290kW",
                resource_searching_radius = 22.49,
                vector_to_place_result = {0, -13.65}
            }
        )
    }
)
data:extend(
    {
        make_drill(
            {
                name = "compound-mining-drill-mk3",
                max_health = 218700,
                collision_box = {{-40.4, -40.4}, {40.4, 40.4}},
                selection_box = {{-40.5, -40.5}, {40.5, 40.5}},
                pipe_connections = {{position = {-41, 0}}, {position = {41, 0}}, {position = {0, 41}}},
                scale = 27,
                mining_speed = 364.5,
                emissions_per_minute = 7290,
                energy_usage = "65610kW",
                resource_searching_radius = 67.49,
                vector_to_place_result = {0, -40.95}
            }
        )
    }
)
data:extend(
    {
        make_drill(
            {
                name = "compound-mining-drill-mk4",
                max_health = 1968300,
                collision_box = {{-40.4, -40.4}, {40.4, 40.4}},
                selection_box = {{-40.5, -40.5}, {40.5, 40.5}},
                pipe_connections = {{position = {-41, 0}}, {position = {41, 0}}, {position = {0, 41}}},
                scale = 27,
                mining_speed = 3280.5,
                emissions_per_minute = 65610,
                energy_usage = "590490kW",
                resource_searching_radius =  202.49,
                vector_to_place_result = {0, -40.95}
            }
        )
    }
)
data:extend(
    {
        make_drill(
            {
                name = "compound-mining-drill-mk5",
                max_health = 17714700,
                collision_box = {{-40.4, -40.4}, {40.4, 40.4}},
                selection_box = {{-40.5, -40.5}, {40.5, 40.5}},
                pipe_connections = {{position = {-41, 0}}, {position = {41, 0}}, {position = {0, 41}}},
                scale = 27,
                mining_speed = 29524.5,
                emissions_per_minute = 590490,
                energy_usage = "5314410kW",
                resource_searching_radius =  607.49,
                vector_to_place_result = {0, -40.95}
            }
        )
    }
)