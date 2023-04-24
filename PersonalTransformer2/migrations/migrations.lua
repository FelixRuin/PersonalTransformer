local my_types = {"car", "spider-vehicle"}
local grid
global.grid_vehicles = global.grid_vehicles or {}
global.grid_draw = global.grid_draw or {}
global.grid_transformer_entities = global.grid_transformer_entities or {}
global.grid_energy_draw = global.grid_energy_draw or {}

log ('migrations starting...')
for s, surface in pairs(game.surfaces) do
	for v, vehicle in pairs(surface.find_entities_filtered{type = my_types}) do
		grid = vehicle.grid
		if grid and grid.valid then
			global.grid_vehicles[grid.unique_id] = vehicle
		end
	end
end
log ('global.grid_vehicles = '.. serpent.dump(global.grid_vehicles))
