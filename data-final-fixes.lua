local mark_mapping = {
    ["1"] = "__base__/graphics/icons/signal/signal_1.png",
    ["2"] = "__base__/graphics/icons/signal/signal_2.png",
    ["3"] = "__base__/graphics/icons/signal/signal_3.png",
    ["4"] = "__base__/graphics/icons/signal/signal_4.png",
    ["5"] = "__base__/graphics/icons/signal/signal_5.png"
}

if settings.startup["specialized-miners"].value then
    local function fix_technology(mark, resource)
        local tech = data.raw.technology["compound-mining-" .. mark]
        if tech then
            local name = "compound-mining-drill-mk" .. mark .. "-" .. resource.name
            if data.raw.recipe[name] then
                table.insert(tech.effects, {recipe = name, type = "unlock-recipe"})
            end
        end
    end

    local function fix_entity(mark, resource)
        local drillentity = util.table.deepcopy(data.raw["mining-drill"]["compound-mining-drill-mk" .. mark])
        drillentity.name = "compound-mining-drill-mk" .. mark .. "-" .. resource.name
        drillentity.localised_name = "Speciallized Compound Mining Drill Mk" .. mark .. " " .. resource.name
        drillentity.resource_categories = {"basic-solid" .. resource.name}
        data:extend({drillentity})
    end

    local function fix_recipe(mark, resource)
        local drillrecipe = util.table.deepcopy(data.raw["recipe"]["compound-mining-drill-mk" .. mark])
        drillrecipe.name = "compound-mining-drill-mk" .. mark .. "-" .. resource.name
        drillrecipe.normal.result = drillrecipe.name
        drillrecipe.normal.ingredients = {{"compound-mining-drill-mk" .. mark, 1}}
        drillrecipe.expensive.result = drillrecipe.name
        drillrecipe.expensive.ingredients = {{"compound-mining-drill-mk" .. mark, 1}}
        drillrecipe.enabled = false
        data:extend({drillrecipe})
    end

    local function fix_icon(mark, resource)
        local drillitem = util.table.deepcopy(data.raw["item"]["compound-mining-drill-mk" .. mark])
        drillitem.name = "compound-mining-drill-mk" .. mark .. "-" .. resource.name
        drillitem.localised_name = "Speciallized Compound Mining Drill Mk" .. mark .. " " .. resource.name
        drillitem.place_result = drillitem.name
		if(resource.icon)
		then
			drillitem.icons = {
				{icon = "__base__/graphics/icons/electric-mining-drill.png", icon_mips = 4, icon_size = 64},
				{icon = resource.icon, icon_mips = resource.icon_mips, icon_size = resource.icon_size, scale = 0.25, shift = {8, 8}},
				{icon = mark_mapping[mark], icon_mips = 4, icon_size = 64, scale = 0.25, shift = {-8, -8}}
			}
		else
			drillitem.icons = {
				{icon = "__base__/graphics/icons/electric-mining-drill.png", icon_mips = 4, icon_size = 64},
				{icon = mark_mapping[mark], icon_mips = 4, icon_size = 64, scale = 0.25, shift = {-8, -8}}
			}
		end
        data:extend({drillitem})
    end

    local function modify_drill(resource)
        if resource.category == "basic-fluid" or resource.category == "water" or resource.category == "angels-fissure" or resource.category == "angels-natural-gas" or resource.category == "oil" then
            return
        else
            local drillcat = util.table.deepcopy(data.raw["resource-category"]["basic-solid"])
            drillcat.name = "basic-solid" .. resource.name
            data:extend({drillcat})
            data.raw["resource"][resource.name].category = "basic-solid" .. resource.name

            for _, mark in pairs({"1", "2", "3", "4", "5"}) do
                fix_icon(mark, resource)
                fix_recipe(mark, resource)
                fix_entity(mark, resource)
                fix_technology(mark, resource)
                table.insert(data.raw["mining-drill"]["compound-mining-drill-mk" .. mark].resource_categories, "basic-solid" .. resource.name)
            end

            table.insert(data.raw["character"]["character"].mining_categories, "basic-solid" .. resource.name)
            table.insert(data.raw["mining-drill"]["burner-mining-drill"].resource_categories, "basic-solid" .. resource.name)
            table.insert(data.raw["mining-drill"]["electric-mining-drill"].resource_categories, "basic-solid" .. resource.name)
        end
    end

    local function process_resource()
        for _, resource in pairs(data.raw["resource"]) do
            modify_drill(resource)
        end
    end
    process_resource()
end
