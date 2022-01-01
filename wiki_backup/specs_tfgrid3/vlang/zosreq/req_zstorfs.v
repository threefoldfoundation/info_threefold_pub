// seconary storage mounts under zmachine
// disperses the data over other 3nodes
// zstor process will be running along per each zmachine?

module zosreq

pub struct ReqZstorfs {
pub mut:
	// name unique per deployment, re-used in request & response
	name string
	size u64 //mb	
}

