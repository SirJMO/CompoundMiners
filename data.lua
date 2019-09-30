require("prototypes.item")
require("prototypes.recipe")
require("prototypes.entity")

local function get_resource(name)
  local items = data.raw["resource"]
  if resources then
    return resources[name]
  end
  return nil
end

local function modify_drill(name, resource)
   if resource.category == "basic-fluid" then else
   
local drillitem = util.table.deepcopy(data.raw["item"]["compound-mining-drill-mk1"])
drillitem.name = "compound-mining-drill-mk1-" .. resource.name
drillitem.localised_name = "Speciallized Compound Mining Drill Mk1 " .. resource.name
drillitem.place_result = "compound-mining-drill-mk1-" .. resource.name
data:extend({drillitem})

local drillitem = util.table.deepcopy(data.raw["item"]["compound-mining-drill-mk2"])
drillitem.name = "compound-mining-drill-mk2-" .. resource.name
drillitem.localised_name = "Speciallized Compound Mining Drill Mk2 " .. resource.name
drillitem.place_result = "compound-mining-drill-mk2-" .. resource.name
data:extend({drillitem})

local drillitem = util.table.deepcopy(data.raw["item"]["compound-mining-drill-mk3"])
drillitem.name = "compound-mining-drill-mk3-" .. resource.name
drillitem.localised_name = "Speciallized Compound Mining Drill Mk3 " .. resource.name
drillitem.place_result = "compound-mining-drill-mk3-" .. resource.name
data:extend({drillitem})

local drillrecipe = util.table.deepcopy(data.raw["recipe"]["compound-mining-drill-mk1"])
drillrecipe.name = "compound-mining-drill-mk1-" .. resource.name
drillrecipe.normal.result = "compound-mining-drill-mk1-" .. resource.name
drillrecipe.normal.ingredients = {{"compound-mining-drill-mk1",1}}
drillrecipe.expensive.result = "compound-mining-drill-mk1-" .. resource.name
drillrecipe.expensive.ingredients = {{"compound-mining-drill-mk1",1}}
data:extend({drillrecipe})

local drillrecipe = util.table.deepcopy(data.raw["recipe"]["compound-mining-drill-mk2"])
drillrecipe.name = "compound-mining-drill-mk2-" .. resource.name
drillrecipe.normal.result = "compound-mining-drill-mk2-" .. resource.name
drillrecipe.normal.ingredients = {{"compound-mining-drill-mk2",1}}
drillrecipe.expensive.result = "compound-mining-drill-mk2-" .. resource.name
drillrecipe.expensive.ingredients = {{"compound-mining-drill-mk2",1}}
data:extend({drillrecipe})

local drillrecipe = util.table.deepcopy(data.raw["recipe"]["compound-mining-drill-mk3"])
drillrecipe.name = "compound-mining-drill-mk3-" .. resource.name
drillrecipe.normal.result = "compound-mining-drill-mk3-" .. resource.name
drillrecipe.normal.ingredients = {{"compound-mining-drill-mk3",1}}
drillrecipe.expensive.result = "compound-mining-drill-mk3-" .. resource.name
drillrecipe.expensive.ingredients = {{"compound-mining-drill-mk3",1}}
data:extend({drillrecipe})
	
local drillcat = util.table.deepcopy(data.raw["resource-category"]["basic-solid"])
drillcat.name = "basic-solid" .. resource.name
data:extend({drillcat})
	
local drillentity = util.table.deepcopy(data.raw["mining-drill"]["compound-mining-drill-mk1"])
drillentity.name = "compound-mining-drill-mk1-" .. resource.name
drillentity.localised_name = "Speciallized Compound Mining Drill Mk1 " .. resource.name
drillentity.resource_categories = {"basic-solid" .. resource.name}

data:extend({drillentity})	

local drillentity = util.table.deepcopy(data.raw["mining-drill"]["compound-mining-drill-mk2"])
drillentity.name = "compound-mining-drill-mk2-" .. resource.name
drillentity.localised_name = "Speciallized Compound Mining Drill Mk2 " .. resource.name
drillentity.resource_categories = {"basic-solid" .. resource.name}

data:extend({drillentity})
	
local drillentity = util.table.deepcopy(data.raw["mining-drill"]["compound-mining-drill-mk3"])
drillentity.name = "compound-mining-drill-mk3-" .. resource.name
drillentity.localised_name = "Speciallized Compound Mining Drill Mk3 " .. resource.name
drillentity.resource_categories = {"basic-solid" .. resource.name}

data:extend({drillentity})
	  
data.raw["resource"][resource.name].category = "basic-solid" .. resource.name

table.insert(data.raw["character"]["character"].mining_categories,"basic-solid" .. resource.name)
table.insert(data.raw["mining-drill"]["compound-mining-drill-mk1"].resource_categories,"basic-solid" .. resource.name)
table.insert(data.raw["mining-drill"]["compound-mining-drill-mk2"].resource_categories,"basic-solid" .. resource.name)
table.insert(data.raw["mining-drill"]["compound-mining-drill-mk3"].resource_categories,"basic-solid" .. resource.name)
   end
   end
   
local function get_zero(name, resource)
  local existing_item = get_resource(name)
  return modify_drill(name, resource) 
end

local function process_resource(resource)
  for name,resource in pairs(resource) do
  local resource_item = get_zero(resource_name, resource)
end 
end
process_resource(data.raw["resource"])