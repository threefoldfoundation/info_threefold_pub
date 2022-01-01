module tfgrid

struct Node {
pub mut:
	// farmer digital twin
	farmer &Farmer
	// optional to be decided how to be used by user
	description string
	tfgrid_obj  TFGridNode
}

pub fn new(nodeif int, mut farmer Farmer) Node {
	mut node := Node{}
	node.farmer = farmer

	// TODO: get the obj from TFGrid can use our mytwin which is part of the TFGrid

	return node
}

// fn (mut farmer Farmer) todefine_what_we_need() bool{
// 	//
// }
