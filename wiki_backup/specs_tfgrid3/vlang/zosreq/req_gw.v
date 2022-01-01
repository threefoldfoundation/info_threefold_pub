module zosreq

pub struct ReqZOSGateway {
	name string // unique per deployment? it will be only one on server
	redis_endpoint: "", // redis master endpoint (note the setup should be a redis cluster) ? or should be relative to the node? ? subdomain pallet over gridb ?
	corefile: "",  // coredns config overriden by our default Corefile, maybe shouldn't be exposed at all	
	wg_enabled: true, // can be used for 4to6?
	managed_domains: "", // domains managed by that gateway (comma separated domains) vdc.devnet.grid.tf ,3bot.devnet.grid.tf
	nameservers: "",  // the managed domains should be configured on external provider (comma separate names)
	stats_endpoint:"", // where to push metrics? can't be empty, needs to have a liveness endpoint
	tid int32  // farmer tid, should it be included or we need to verify the request initiator is a farmer already?
}


// response of the deployment
pub struct ResGateway {
pub mut:
	// name unique per deployment, re-used in request & response
	name         string
    node_id      string
    public_ip    string
}
