local drill = table.deepcopy(data.raw['mining-drill']['electric-mining-drill'])
drill.name = "compound-mining-drill-mk1"
drill.minable.result = "compound-mining-drill-mk1"
drill.mining_speed = 4.5
drill.energy_source =
	{
	  type = "electric",
	  emissions_per_minute = 90,
	  usage_priority = "secondary-input"
	}
drill.energy_usage = "810kW"
drill.resource_searching_radius = 7.49
drill.circuit_wire_max_distance = 8
drill.module_specification =
	{
	  module_slots = 3
	}
data:extend({drill})
local drill = table.deepcopy(data.raw['mining-drill']['electric-mining-drill'])
drill.name = "compound-mining-drill-mk2"
drill.minable.result = "compound-mining-drill-mk2"
drill.mining_speed = 40.5
drill.energy_source =
	{
	  type = "electric",
	  emissions_per_minute = 810,
	  usage_priority = "secondary-input"
	}
drill.energy_usage = "7839kW"
drill.resource_searching_radius = 22.49
drill.circuit_wire_max_distance = 8
drill.module_specification =
	{
	  module_slots = 3
	}
data:extend({drill})
local drill = table.deepcopy(data.raw['mining-drill']['electric-mining-drill'])
drill.name = "compound-mining-drill-mk3"
drill.minable.result = "compound-mining-drill-mk3"
drill.mining_speed = 364.5
drill.energy_source =
	{
	  type = "electric",
	  emissions_per_minute = 7290,
	  usage_priority = "secondary-input"
	}
drill.energy_usage = "7839kW"
drill.resource_searching_radius = 67.49
drill.circuit_wire_max_distance = 8
drill.module_specification =
	{
	  module_slots = 3
	}
data:extend({drill})