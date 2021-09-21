module tfgriddb

// commands which are execute by our digital twin and it serves as proxy to the TFGrid DB
// we do this because we don't have client for parity

struct TFGrid {
mut:
	// gives us connection to our personal twin, which we need as proxy to the TFGrid DB for the write actions
	explorer Explorer
}

// inits grid obj with connection to your own digital twin
// will use personal twin as well as explorer to get info
pub fn tfgrid_new() ?TFGrid {
	mut explorer := explorer_new() ?
	mut grid := TFGrid{
		explorer: explorer
	}
	return grid
}

// GET TO THE OBJECTS OF THE GRID DB (get only for now)

pub fn (mut grid TFGrid) entity_list() ?[]TFGridEntity {
	return grid.explorer.entity_list()
}

pub fn (mut grid TFGrid) entity_get_by_id(entity_id u32) ?TFGridEntity {
	return grid.explorer.entity_by_id(entity_id)
}

pub fn (mut grid TFGrid) twin_list() ?[]TFGridTwin {
	return grid.explorer.twin_list()
}

pub fn (mut grid TFGrid) twin_get_by_id(twin_id u32) ?TFGridTwin {
	return grid.explorer.twin_by_id(twin_id)
}

pub fn (mut grid TFGrid) nodes_list() ?[]TFGridNode {
	return grid.explorer.nodes_list()
}

pub fn (mut grid TFGrid) nodes_get_by_id(node_id u32) ?TFGridNode {
	return grid.explorer.node_by_id(node_id)
}

pub fn (mut grid TFGrid) nodes_list_by_resource(sru u64, cru u64, hru u64, mru u64) ?[]TFGridNode {
	return grid.explorer.nodes_by_resources(sru, cru, hru, mru)
}

pub fn (mut grid TFGrid) farms_list() ?[]TFGridFarmer {
	return grid.explorer.farms_list()
}

pub fn (mut grid TFGrid) farm_get_by_id(farm_id u32) ?TFGridFarmer {
	return grid.explorer.farm_by_id(farm_id)
}

pub fn (mut grid TFGrid) countries_list() ?[]Country {
	return grid.explorer.countries_list()
}

pub fn (mut grid TFGrid) countries_by_name_substring(subtring string) ?[]Country {
	return grid.explorer.countries_by_name_substring(subtring)
}

pub fn (mut grid TFGrid) country_by_id(id u32) ?Country {
	return grid.explorer.country_by_id(id)
}

pub fn (mut grid TFGrid) cities_list() ?[]City {
	return grid.explorer.cities_list()
}

pub fn (mut grid TFGrid) cities_by_name_substring(subtring string) ?[]City {
	return grid.explorer.cities_by_name_substring(subtring)
}

pub fn (mut grid TFGrid) city_by_id(id u32) ?City {
	return grid.explorer.city_by_id(id)
}

pub fn (mut grid TFGrid) cities_by_country_id(id u32) ?[]City {
	return grid.explorer.cities_by_country_id(id)
}
pub fn (mut grid TFGrid) nodes_by_country_city(geoLocation GeoLocation) ?[]TFGridNode{
	return grid.explorer.nodes_by_country_city(geoLocation)
}
pub fn (mut grid TFGrid) nodes_by_location(latitude string, longitude string) ?[]TFGridNode {
	return grid.explorer.nodes_by_location(latitude,longitude)
}

// TODO: arguments to be added
pub fn (mut grid TFGrid) node_register() TFGridNode {
	// use personal digital twin as proxy
	return TFGridNode{}
}

// what did we forget
