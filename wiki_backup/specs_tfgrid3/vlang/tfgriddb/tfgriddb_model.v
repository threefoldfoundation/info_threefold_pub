module tfgriddb

// TFGridEntity represents an entity in the threefold grid database
// an entity is linked to a physical person
pub struct TFGridEntity {
	grid_version u32    [json: gridVersion]
	id           u32    [json: entityId]
	name         string [json: name]
	country_id   u32    [json: countryId]
	city_id      u32    [json: cityId]
	// substrate ed25519 ss58 address
	address      string
}

// TFGridTwin represents a digital copy of a user
pub struct TFGridTwin {
pub:
	grid_version u32    [json: gridVersion]
	id           u32    [json: twinId]
	// ip is where the digital twin is reachable
	// can be ipv4 / ipv6
	ip           string [json: ip]
	// substrate ed25519 ss58 address
	address      string [json: address]
}

// TFGridNode represents a Threefold node in the threefold grid database
pub struct TFGridNode {
	grid_version u32   [json: gridVersion]
	id           u32      [json: nodeId]
	farm_id      u32      [json: farmId]
	twin_id      u32      [json: twinId]
	country_id   u32      [json: countryId]
	city_id      u32      [json: cityId]
	address      string   [json: address]
	location     Location [json: location]
	hru          string
	sru          string
	cru          string
	mru          string
	role 		 string
	public_config PublicConfig [json: publicConfig]
}

pub struct PublicConfig {
	ipv4 string
	ipv6 string
	gw4 string
	gw6 string
}

pub struct Location {
	longitude string
	latitude  string
}

// TFGridFarmer represents a farmer in the threefold grid database
pub struct TFGridFarmer {
	grid_version      u32    [json: gridVersion]
	id                u32    [json: farmId]
	// link to digital twin farmer
	twin_id           u32    [json: twinId]
	name              string
	country_id        u32    [json: countryId]
	city_id           u32    [json: cityId]
	// id of the pricing policy that this farmer has acquired
	pricing_policy_id u32    [json: pricingPolicyId]
	// cerfication type of the farmer
	certification_type string [json: certificationType]
}

// Todo: hook up public ips 
pub struct PublicIP {
	farm_id           u32    [json: farmID]
	ip				  string
	contract_id		  u32
}

pub struct Country {
	pub:
	id string [json: id]
	name string [json: name]
	code string [json: code]
}

pub struct City {
	pub:
	id string [json: id]
	name       string [json: name]
	country_id string [json: countryId]
}

pub struct PricingPolicy {
	grid_version      u32    [json: gridVersion]
	id				  u32	 [json:pricingPolicyID]
	name			  string [json:name]
	currency          string
	su                u32
	cu			      u32
	nu                u32
}

pub struct GeoLocation{
	pub mut:
		city_name string
		country_name string
	}