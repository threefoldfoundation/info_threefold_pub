// Represents a contract on chain
pub struct TFGridNodeContract {
pub mut:
	//to define version of schema used
    version int = 1
	// id
	contract_id int
	// twin_id of the twin of the person who created the contract
	twin_id int
	// node id
	node_id int
	// workload data (encrypted by the user)
	//TODO: rename to deployment data, is optional (DYLAN)
	deployment_data string 
	// deployment hash (hash of the deployment data)
	// md5??? TODO:
	deployment_hash string
	// number of public ips
	public_ips int
	// contract status
	state ContractState
	// last updated (last received consumption report)
	// epoch
	last_updated int
	//TODO: previous_nu_reported remove from TFGrid DB (Dylan)
	// list of public ips in use by this contract
	public_ips_list []NodeContractPublicIP
	// amount unbilled saves the amount unbilled for a period of time until the time of billing occurs
	amount_unbilled int
}

//TODO: Dylan, fill in
enum ContractState{

}

pub struct NodeContractPublicIP {
pub mut:
	//212.3.247.26
	ip string
	//212.3.247.1
	gateway string
}


fn example(){
	return TFGridContract{
		version: 1
		contract_id: 999
		twin_id: 5
		node_address: "5FX45JeA5Z1F4fJBJwyWcZvyi7XU51ggqJREjM2e4wYRiuj6"
		data: "some user encrypted data (optional)"
		deployment_hash: "hash"
		public_ips: 0,
		state: ContractCreated
		lastUpdated: 1232131231
		previous_nu_reported: 5000
		public_ips_list: []
		amount_unbilled: 0
	}
}
