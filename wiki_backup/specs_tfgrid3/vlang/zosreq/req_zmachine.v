module zosreq

pub struct ReqZmachine {
pub mut:
	flist             string // if full url means custom flist meant for containers, if just name should be an official vm
	network 		  ZMachineNetwork
	size              u8
	compute_capacity  ComputeCapacity
	mounts  		 []Mount
	entrypoint		  string //how to invoke that in a vm?
	env         	  map[string]string //environment for the zmachine
}

pub struct ZMachineNetwork{
pub mut:
	public_ip		 string
	interfaces       []ZNetworkInterface
	planetary		 bool
}

pub struct ZNetworkInterface{
pub mut:
	network          string
	ip               string
}

enum ZMachineMode {
	container
	vm
}


pub struct Mount {
pub mut:
	name       string
	mountpoint string
}



// response of the deployment
pub struct ResZMachine {
pub mut:
	// name unique per deployment, re-used in request & response
	id      string
	ip      string
}
