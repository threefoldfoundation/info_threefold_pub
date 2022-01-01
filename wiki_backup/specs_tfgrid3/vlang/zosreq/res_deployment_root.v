module zosreq

import despiegk.crystallib.events
import crypto.md5

// ZOS will execute on a deployment (only for deployment items relevant for that 3node)
// ZOS will report back on items achieved
// need to define if this will be done once per deployment or item per item
// the structure allows both
pub struct Response {
pub mut:
	// unique id on TFGrid level for farmer
	farmer_id int
	// unique id on TFGrid level for node
	node_id int
	// increments for each new interation of this model
	// signature needs to be achieved when version goes up
	version int
	// the twin who is responsible for this response
	originator_twin_id int
	// each request has unique id (in relation to originator)
	originator_request_id int
	// list of all responses
	response_items []ResponseItem
	// md5 hash of the concatenation of the response items (see implementatio)
	// this string will be signed by Zero-OS when returning the response
	signature_hash string
	// bytestr signature ed25519 as done by Zero-OS = 3Node or whoever gives out the reservation
	// used to let the digital twin who receives this message to validate
	signature string
}

// return encoded response
// is the payload for sending over wire or keeping for longer time in e.g. a local db
fn (mut response Response) encode() string {
	return ''
}

fn (mut response Response) signature_hash() {
	mut out := []string{}
	out << '$response.farmer_id'
	out << '$response.node_id'
	out << '$response.version'
	out << '$response.originator_twin_id'
	out << '$response.originator_request_id'
	for item in response.response_items {
		out << '$item.name'
		out << '$item.version'
		out << '$item.category'
		out << item.json_data
	}
	response.signature = md5.hexhash(out.join('\n'))
}

pub struct ResponseItem {
pub mut:
	// unique name per response
	name     string
	category Category
	// the data of the the deployment item we are responding on
	json_data string
	// version can never be higher than the main version
	// the version which has been processed
	version int
	status  ReqDeploymentStatus
	error   events.Event
}

enum ReqDeploymentStatus {
	// waiting for deployment
	pending
	// executed
	ok
	error
	aborted
}

///////SOME HELPER FUNCTIONS, NOT NEEDED NOW

// fn (mut response Response) zdbs_get() []ZDB {
// 	// walk over json\s, fill in ZBD objects
// 	return []ZDB{}
// }

// fn (mut response Response) containers_get() []ReqContainer {
// 	// walk over json\s, fill in Container objects
// 	return []ReqContainer{}
// }

// // fills in all variables and make sure all is good so the object can be submmitted to a Zero-OS
// pub fn (mut response Response) submit() {
// 	response.signature_hash = response.signature_hash()
// }
