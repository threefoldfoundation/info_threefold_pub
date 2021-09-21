import tfgriddb
import os 
fn get_nodes_by_location(latitude string,longitude string) ? {
	mut tfgrid := tfgriddb.tfgrid_new() ?
	mut nodes_by_location := tfgrid.nodes_by_location(latitude,longitude)?
	println(nodes_by_location)
}
fn main(){
	mut latitude:=""
	mut longitude:=""
	if "--help" in os.args {
		println("This method to get nodes by location including latitude and longitude \n
		--latitude value (required) \n
		--longitude value (required) ")
		return
	}
	if "--latitude" in os.args {
		mut index_val:=os.args.index("--latitude")
		latitude = os.args[index_val+1]

	}else{
		println("--latitude is required")
		return
	}
	if "--longitude" in os.args {
		mut index_val:=os.args.index("--longitude")
		longitude = os.args[index_val+1]

	}else{
		println("--longitude is required")
		return
	}

get_nodes_by_location(latitude,longitude) or {return }
}