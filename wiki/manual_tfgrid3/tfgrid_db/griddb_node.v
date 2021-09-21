
//3Node registers itself on the TFGrid DB
pub struct TFGridNode {
pub mut:
	//to define version of schema used
    version int = 1
	// incremental ID as given by Substrate, is unique per twin
    id int
	// a node is always owned by a farm
	farm_id int
	//twin who operates on 3Node (accepts zreservations)
	//needed to communicate over RMB
	twin_id int
	// id of the country
    country_id int
	// if of a city
    city_id int
	//what resources are available per 3Node
	//set by the 3node itself
	resources NodeResources
	//latitude & longitude location
	location Location

	//TODO: we removed type of node, no longer needed

}

pub struct NodeResources {
pub mut:
	sru int
	hru int
	cru int
	mru int
}

pub enum Location{
	latitude int
	longitude int
}

//TODO: next probably not needed, need to be removed from object
// "public_config": Optional {
//     "ipv4": "publicIP4",
//     "ipv6": "publicIP6",
//     "gw4": "gatewayip4",
//     "gw6": "gatewayip6"
// }


fn example(){
	return TFGridNode{
		id: 999
	}
	//TODO: complete example
}







```