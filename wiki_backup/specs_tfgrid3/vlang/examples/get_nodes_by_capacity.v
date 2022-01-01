import tfgriddb
import os 
fn get_nodes_by_capacity(sru u64, cru u64, hru u64, mru u64)? {
	mut tfgrid := tfgriddb.tfgrid_new() ?
  	mut nodes_by_capacity := tfgrid.nodes_list_by_resource(sru,cru,hru,mru)?
	println(nodes_by_capacity)
}
fn main(){
	//Default value used in intializing the resources
	mut default_val := '0'.u64()
	mut sru := default_val
	mut cru := default_val
	mut hru := default_val
	mut mru := default_val
	
	if "--help" in os.args {
		println("This method to get nodes by city or country or both \n
		--sru 		nodes selected should have a minumum value of sru (ssd resource unit) equal to this  (optional) \n
		--cru 		nodes selected should have a minumum value of cru (core resource unit) equal to this  (optional) \n
		--hru 		nodes selected should have a minumum value of hru (hd resource unit) equal to this  (optional) \n
		--mru   	nodes selected should have a minumum value of mru (memory resource unit) equal to this (optional) ")
		return
	}
	if "--sru" in os.args {
		mut index_val := os.args.index("--sru")
		sru = os.args[index_val+1].u64()
	}
	
	if "--cru" in os.args {
		mut index_val := os.args.index("--cru")
		cru = os.args[index_val+1].u64()
	}
	
	if "--hru" in os.args {
		mut index_val := os.args.index("--hru")
		hru = os.args[index_val+1].u64()
	}
	
	if "--mru" in os.args {
		mut index_val := os.args.index("--mru")
		mru = os.args[index_val+1].u64()
	}
  	
get_nodes_by_capacity(sru, cru, hru, mru) or { return }
}