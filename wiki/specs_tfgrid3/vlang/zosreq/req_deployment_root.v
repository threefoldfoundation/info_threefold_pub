module zosreq1

import crypto.md5

// deployment is given to each Zero-OS who needs to deploy something
// the zero-os'es will only take out what is relevant for them
// if signature not done on the main Deployment one, nothing will happen
pub struct ReqDeployment {
pub mut:
	// increments for each new interation of this model
	// signature needs to be achieved when version goes up
	version int = 1
	// the twin who is responsible for this deployment
	twin_id u32
	// each deployment has unique id (in relation to originator)
	contract_id u64
	// when the full workload will stop working
	// default, 0 means no expiration
	expiration i64
	metadata string
	description string

	// list of all worklaods
	workloads []Workload

	signature_requirement SignatureRequirement
}


pub fn (mut deployment ReqDeployment) challange() string {
	mut out := []string{}
	out << '$deployment.version'
	out << '$deployment.twin_id'
	out << '$deployment.metadata'
	out << '$deployment.description'
	out << '$deployment.expiration'
	for workload in deployment.workloads {
		out << workload.challange()
	}
	return out.join('')
}

// fills in all variables and make sure all is good so the object can be submmitted to a Zero-OS
pub fn (mut deployment ReqDeployment) submit() {
	deployment.signature_hash()
}

fn (mut deployment ReqDeployment) signature_hash() {
	mut out := []string{}
	out << '$deployment.expiration'
	for item in deployment.deployment_requests {
		out << '$item.category'
		out << item.json_data
		out << '$item.node_id'
		out << '$item.acl'
	}
	deployment.signature_hash = md5.hexhash(out.join('\n'))
}

pub struct Workload {
pub mut:
	version int
	// unique name per Deployment
	name     string
	type_    WorkloadType  [json:"type"]
	// this should be something like json.RawMessage in golang
	data     WorkloadData // serialize({size: 10}) ---> "data": {size:10},
	metadata string
	description string

	// list of Access Control Entries
	// what can an administrator do
	// not implemented in zos
	acl []ACE

	result Result
}

type WorkloadData = ReqZmount

pub fn (workload Workload) challenge() string{
	out := []string{}
	out << '$workload.version'
	out << '$workload.type_'
	out << '$workload.metadata'
	out << '$workload.description'
	out <<  $workload.data.challenge()

	return out.join('')
}

pub struct Result {
pub mut:
	created i64
	state State
	error string
	data Object // also json.RawMessage
}

pub enum State {
	error
	ok
	deleted
}

pub enum WorkloadType {
	zmachine
	zmount
	network
	zdb
	ipv4
}

pub struct SignatureRequirement {
pub mut:
	// the requests which can allow to get to required quorum
	signature_requests []SignatureRequest
	// minimal weight which needs to be achieved to let this workload become valid
	weight_required int
	signatures      []Signature
}

pub struct SignatureRequest {
pub mut:
	// unique id as used in TFGrid DB
	twin_id int
	// if put on required then this twin_id needs to sign
	required bool
	// signing weight
	weight int
}

pub struct Signature {
pub mut:
	// unique id as used in TFGrid DB
	twin_id int
	// signature (done with private key of the twin_id)
	signature string
}


// Access Control Entry
pub struct ACE {
	// the administrator twin id
	twin_ids []int
	rights   []Right
}

enum Right {
	restart
	delete
	stats
	logs
}

///////SOME HELPER FUNCTIONS, NOT NEEDED NOW

// fn (mut deployment ReqDeployment) zdbs_get() []ZDB {
// 	// walk over json\s, fill in ZBD objects
// 	return []ZDB{}
// }

// fn (mut deployment ReqDeployment) containers_get() []ReqContainer {
// 	// walk over json\s, fill in Container objects
// 	return []ReqContainer{}
// }
